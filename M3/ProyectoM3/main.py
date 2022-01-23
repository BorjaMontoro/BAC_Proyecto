# IMPORTS
import functions
from datetime import datetime

# MENUS Y VARIABLES GLOBALES

mainmenu="\n\n1)Login\n2)Create user\n3)Replay Adventure\n4)Reports\n5)Exit"
menu2='\n\n1)Logout\n2)Play\n3)Replay Adventure\n4)Report\n5)Exit'
list5=[1,2,3,4,5]

menu1='\n\n1)Most used answer\n2)Player with more games played\n3)Games played by user\n4)Back'
list4=[1,2,3,4]

option="\nOption: "

# FLAGS PARA LOS MENUS

flag0 = True
flag1 = False
flag2 = False

while True:
    if not flag0 and not flag1 and not flag2:
        print("Programa finalizado!!!")
        break
    while flag0:
        print('''
    *********   *           *   **********   *********                            *********     *       *
    *           *           *   *            *                                        *         *       *
    *           *           *   *            *                                        *         *       *
    *           *           *   *            *                                        *         *       *
    *********   *           *   *            *********                                *         *       *
    *           *           *   *    *****   *                                        *         *       *
    *           *           *   *        *   *                                        *         *       *
    *           *           *   *        *   *                                        *         *       *
    *********   **********  *   **********   *********                                *         *********





                    *********   *********   *********   *********   *   *********
                    *       *   *       *   *       *   *       *   *   *       *
                    *       *   *       *   *       *   *       *   *   *       *
                    *********   *  ******   *       *   *********   *   *       *
                    *           *   *       *       *   *           *   *********
                    *           *    *      *       *   *           *   *       *
                    *           *     *     *       *   *           *   *       *
                    *           *      *    *       *   *           *   *       *
                    *           *       *   *********   *           *   *       *





    *********   *               *   *********   *       *   *********   *       *   *********   *********
    *       *    *             *    *           **      *       *       *       *   *       *   *       *
    *       *     *           *     *           * *     *       *       *       *   *       *   *       *
    *       *      *         *      *           *  *    *       *       *       *   *  ******   *       *
    *********       *       *       *********   *   *   *       *       *       *   *   *       *********
    *       *        *     *        *           *    *  *       *       *       *   *    *      *       *
    *       *         *   *         *           *     * *       *       *       *   *     *     *       *
    *       *          * *          *           *      **       *       *       *   *      *    *       *
    *       *           *           *********   *       *       *       *********   *       *   *       *''')
        opt = functions.getOpt(mainmenu,option,list5,flag1)
        break
    if opt == 1:
        user=input("Username: ")
        password=input('Password: ')
        if functions.Checkbdd(user,password)==1:
            print("Hello",user,'!!')
            functions.getFormatedAdventures1(user)
            flag2 = True
            flag0 = False
            flag1 = False
        else:
            print('User not exists')
        
    elif opt == 2:
        user=functions.checkUser()
        password=functions.checkPassword()
        functions.insertUser(user,password,datetime.now(),user)
        print("USER CREATED")
        flag2 = True
        flag0 = False
        flag1 = False
    elif opt == 3:
        functions.getTableFromDict1()
    elif opt == 4:
        flag1 = True
    else:
        flag1 = False
        flag2 = False
        flag0 = False
        


    while flag1:
        opt = 0
        print('''



x    x             x    xxxxxxxxxxxx   xxxxxxxxxxxxx   xxxxxxxxxxxxx   x               x   xxxxxxxxxxx    xxxxxxxxx
x    xx            x    x              x           x   x           x   xx             xx   x              x
x    x x           x    x              x           x   x           x   x x           x x   x              x
x    x  x          x    x              x           x   x           x   x  x         x  x   x              x
x    x   x         x    x              x           x   x           x   x   x       x   x   x              x
x    x    x        x    x              x           x   xxxxxxxxxxxxx   x    x     x    x   x              x
x    x     x       x    xxxxxxxx       x           x   xx              x     x   x     x   x              x
x    x      x      x    x              x           x   x x             x      x x      x   xxxxxxxxxxx    xxxxxxxxx
x    x       x     x    x              x           x   x  x            x       x       x   x                      x
x    x        x    x    x              x           x   x   x           x               x   x                      x
x    x         x   x    x              x           x   x    x          x               x   x                      x
x    x          x  x    x              x           x   x     x         x               x   x                      x
x    x           x x    x              x           x   x      x        x               x   x                      x
x    x            xx    x              x           x   x       x       x               x   x                      x
x    x             x    x              xxxxxxxxxxxxx   x        x      x               x   xxxxxxxxxxx    xxxxxxxxx''')
        while flag1:
            opt = functions.getOpt(menu1,option,list4,flag1)
            break
        if opt == 1:
            query="select concat(a.id_adventure,' - ', a.name_adventure) as 'ID AVENTURA - NOMBRE' , concat(s.id_step,' - ',s.description) as 'ID PASO - DESCRIPCION', concat(o.id_option_step,' - ',o.description) as 'ID RESPUESTA - DESCRIPCION'  from ADVENTURE a inner join STEP s on  a.id_adventure =s.id_adventure inner join OPTION_STEP o on s.id_step=o.current_step limit 8"
            title='Most used answer'
            functions.FormatedTable(functions.get_table(query),title)
            input("Press enter")
        elif opt == 2:
            query="select u.username AS 'NOMBRE USUARIO', count(g.id_user) as PARTIDAS_JUGADAS from GAME g inner join USER u on g.id_user=u.id_user group by u.username order by PARTIDAS_JUGADAS desc limit 1"
            title='Player with more games played'
            functions.FormatedTable(functions.get_table(query),title)
            input("Press enter")
        elif opt == 3:
            user=input('What user do you want to see? ')
            query=("select g.id_adventure, a.name_adventure, g.date from GAME g inner join ADVENTURE a on a.id_adventure=g.id_adventure inner join USER u on u.id_user=g.id_user where username= '%s' order by date desc;" %user)
            title='Games played by user'
            functions.FormatedTable(functions.get_table(query),title)
            input("Press enter")
        else:
            if flag0==True:
                flag0 = True
                flag1 = False
                flag2 = False
            elif flag0==False:
                flag0 = False
                flag1 = False
                flag2 = True


    while flag2:
        print('''
    *********   *           *   **********   *********                            *********     *       *
    *           *           *   *            *                                        *         *       *
    *           *           *   *            *                                        *         *       *
    *           *           *   *            *                                        *         *       *
    *********   *           *   *            *********                                *         *       *
    *           *           *   *    *****   *                                        *         *       *
    *           *           *   *        *   *                                        *         *       *
    *           *           *   *        *   *                                        *         *       *
    *********   **********  *   **********   *********                                *         *********





                    *********   *********   *********   *********   *   *********
                    *       *   *       *   *       *   *       *   *   *       *
                    *       *   *       *   *       *   *       *   *   *       *
                    *********   *  ******   *       *   *********   *   *       *
                    *           *   *       *       *   *           *   *********
                    *           *    *      *       *   *           *   *       *
                    *           *     *     *       *   *           *   *       *
                    *           *      *    *       *   *           *   *       *
                    *           *       *   *********   *           *   *       *





    *********   *               *   *********   *       *   *********   *       *   *********   *********
    *       *    *             *    *           **      *       *       *       *   *       *   *       *
    *       *     *           *     *           * *     *       *       *       *   *       *   *       *
    *       *      *         *      *           *  *    *       *       *       *   *  ******   *       *
    *********       *       *       *********   *   *   *       *       *       *   *   *       *********
    *       *        *     *        *           *    *  *       *       *       *   *    *      *       *
    *       *         *   *         *           *     * *       *       *       *   *     *     *       *
    *       *          * *          *           *      **       *       *       *   *      *    *       *
    *       *           *           *********   *       *       *       *********   *       *   *       *''')
        opt = 0
        while flag2:
            opt = functions.getOpt(menu2,option,list5,flag1)
            break
        if opt == 1:
            print('Bye',user,'!!')
            flag0 = True
            flag1 = False
            flag2 = False
        elif opt == 2:
            functions.getFormatedAdventures1(user)
        elif opt == 3:
            functions.getTableFromDict1()
        elif opt == 4:
            flag1 = True
            break
        else:
            flag0 = False
            flag1 = False
            flag2 = False
            
            
