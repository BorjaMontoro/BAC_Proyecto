from datetime import datetime
import pymysql

conn = pymysql.connect(host='51.103.33.209',user = 'bac', password='root', db='BAC')

cur = conn.cursor()

def getOpt(textOpts="",inputOptText="",rangeList=[],flag1=""):
    while True:
        try:
            print(textOpts)
            opt =  int(input(inputOptText))
            if opt not in rangeList:
                raise ValueError
            else:
                break
        except ValueError:
                if flag1==True:
                    print('Opcion no valida\n\n')
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
                else:
                    print('Opcion no valida\n\n')
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
    return opt

def getHeader(text):
    num = (105 - len(text))/2
    if num % 2 == 0:
        num = int(num)
        print('-'*105 + '\n' + '='*num + text + '='*num + '\n' + '-'*105 )
    else:
        num = int(num)
        print('-'*105 + '\n' + '='*num + text + '='*(num) + '\n' + '-'*105 )

def checkUser():
    while True:
        try:
            l=0
            x=0
            t=0
            user=input("Introduce your username: ")
            if len(user)<6 or len(user)>10:
                raise ZeroDivisionError   
            for i in user:
                if i.isdigit():
                    l+=1
                if i.isalpha():
                    x+=1
                if not i.isalnum():
                    t+=1
            if (l==0 or x==0):
                raise ValueError
            elif t>0:
                raise ValueError
            else:
                confirmacion=userExists(user)
                if confirmacion==False:
                    break
                else:
                    print("The username already exists")
        except ValueError:
            print("The username has to be alfanumeric")
        except ZeroDivisionError:
            print("The length of username has to be longer than 5 and shorter than 11")
    return user

def checkPassword():
    while True:
        try:
            l=0
            x=0
            v=0
            z=0
            a=0
            b=0
            password=input("Introduce your password: ")
            if len(password)<8 or len(password)>12:
                raise ZeroDivisionError   
            for i in password:
                if i.isdigit():
                    l+=1
                if i.isalpha():
                    x+=1
                if i.isupper():
                    v+=1
                if i.islower():
                    z+=1
                if not i.isalnum():
                    if not i.isspace():
                        a+=1
                    if i.isspace():
                        b+=1

            if l==0:
                raise ValueError
            if v==0 or z==0:
                raise SyntaxError
            if a==0:
                raise NameError
            if b!=0:
                raise TypeError
            if x==0:
                raise RuntimeError
            else:
                break
        except TypeError:
            print("The password cannot contain spaces")
        except NameError:
            print("The password has to contain some special character")
        except SyntaxError:
            print("The password have to include some uppercas and lowercas")
        except ValueError:
            print("The password have to contain some digit")
        except ZeroDivisionError:
            print("The length of password is not correct")
        except RuntimeError:
            print("The password have to contain some letter")
    return password
    
def getHeadeForTableFromTuples(t_name_columns,t_size_columns,title=""):
    num = (105 - len(title))/2
    if num % 2 == 0:
        num = int(num)
        print('='*num + title + '='*num)
        print()
    else:
        num = int(num)
        print('='*num + title + '='*(num+1))
        print()
    if len(t_name_columns)==2:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]))
    elif len(t_name_columns)==3:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]))
    elif len(t_name_columns)==4:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]),t_name_columns[3].ljust(t_size_columns[3]))
    elif len(t_name_columns)==5:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]),t_name_columns[3].ljust(t_size_columns[3]),t_name_columns[4].ljust(t_size_columns[4]))
    print('*'*105)

def formatText(text, lenLine, split):
    if len(text) > lenLine:
        text2=""
        r=0
        i=0
        while r+lenLine<len(text):
            i=r+lenLine
            while text[i]!=' ':
                i-=1
            text2+=text[r:i]+split
            r=i+1

        text2+=text[r:]+split
        return text2
    else:
        return text

def get_adventures_with_chars():
    query="select * from ADVENTURE"

    cur.execute(query)

    rows= cur.fetchall()

    adventures={}
    listagrande=[]
    for i in range(1,len(rows)+1):
        query1="select * from PLAYER l inner join PLAYER_ADVENTURE p on p.id_player=l.id_player where id_adventure="+str(i)
        cur.execute(query1)
        rows1= cur.fetchall() 
        listaindividual=[]
        for i in rows1:
            listaindividual.append(i[0])
        listagrande.append(listaindividual)
    j=0
    for i in rows: 
        adventures[i[0]]={}
        adventures[i[0]]["Name"]=i[1]
        adventures[i[0]]["Description"]=i[2]
        adventures[i[0]]["Characters"]=listagrande[j]
        j+=1
    return adventures

def get_characters():
    query='select * from PLAYER' 

    cur.execute(query)

    rows=cur.fetchall()

    characters={}

    for i in rows:
        characters[i[0]]=i[1]
    return characters

def get_answers_bystep_adventure(aventura_escogida):
    
    query=f'select * from OPTION_STEP where id_adventure= {str(aventura_escogida)}'

    cur.execute(query)

    rows=cur.fetchall()

    op_step={}
    for i in rows:
        op_step[i[0],i[2]]={"Description":i[5],"Answer":i[4],"NextStep":i[1]}
    return op_step

def getReplayAdventure():
    query='select g.id_game, g.date, u.id_user, u.username, a.id_adventure, a.name_adventure, p.id_player, p.name_player from GAME g inner join ADVENTURE a on a.id_adventure=g.id_adventure inner join PLAYER p on p.id_player=g.id_player inner join USER u on u.id_user=g.id_user;'

    cur.execute(query)

    rows=cur.fetchall()

    replayAdventure={}

    for i in rows:
        replayAdventure[i[0]]={'IdUser':i[2],'Username':i[3],'idAdventure':i[4],'Name':i[5],'date':i[1],'idPlayer':i[6],'PlayerName':i[7]}
    
    return replayAdventure

def get_id_bystep_adventure(aventura_escogida):
    id_step={}

    query=f"select * from STEP where id_adventure= {str(aventura_escogida)}"

    cur.execute(query)

    rows=cur.fetchall()

    listagrandepasos=[]
    if aventura_escogida==1:
        for i in range(1,len(rows)+1):
            query1=f"select s.*,o.id_option_step from STEP s inner join OPTION_STEP o on s.id_step=o.current_step where o.current_step={str(i)} and o.id_adventure={str(aventura_escogida)}"
            cur.execute(query1)
            rows1=cur.fetchall()
            listapasos=[]
            for i in rows1:
                listapasos.append(i[8])
            listagrandepasos.append(listapasos)
    elif aventura_escogida==2:
        for i in range(14,len(rows)+15):
            query1=f"select s.*,o.id_option_step from STEP s inner join OPTION_STEP o on s.id_step=o.current_step where o.current_step={str(i)} and o.id_adventure={str(aventura_escogida)}"
            cur.execute(query1)
            rows1=cur.fetchall()
            listapasos=[]
            for i in rows1:
                listapasos.append(i[8])
            listagrandepasos.append(listapasos)
    elif aventura_escogida==3:
        for i in range(24,len(rows)+25):
            query1=f"select s.*,o.id_option_step from STEP s inner join OPTION_STEP o on s.id_step=o.current_step where o.current_step={str(i)} and o.id_adventure={str(aventura_escogida)}"
            cur.execute(query1)
            rows1=cur.fetchall()
            listapasos=[]
            for i in rows1:
                listapasos.append(i[8])
            listagrandepasos.append(listapasos)
    x=0
    for i in rows: 
        id_step[i[0]]={}
        id_step[i[0]]["Description"]=i[3]
        id_step[i[0]]["Answers_Step"]=tuple(listagrandepasos[x])
        id_step[i[0]]["Final_Step"]=str(i[2])[-2]
        x+=1
    return id_step

def get_first_step_adventure(aventura_escogida):
    query="select id_step from STEP where id_adventure="+str(aventura_escogida)
    cur.execute(query)
    rows=cur.fetchone()
    return rows

def getUsers():
    user={}
    query="select * from USER"
    cur.execute(query)
    rows=cur.fetchall()
    for i in rows:
        user[i[1]]={}
        user[i[1]]["password"]=i[2]
        user[i[1]]["idUser"]=i[0]
    return user

def UserIds():
    name_id = []
    username = []
    ids = []
    username_query = 'select username from USER'
    id_query = 'select id_user from USER'

    cur.execute(username_query)

    rows = cur.fetchall()
    
    for i in rows:
        username.append(i[0])

    cur.execute(id_query)

    rows = cur.fetchall()

    for i in rows:
        ids.append(i[0])
        
    name_id.append(username)
    name_id.append(ids)

    return name_id

def insertCurrentGame(user,player,aventura_escogida, date,date_creation, user_creation):

    query=f"insert into GAME (id_user,id_player,id_adventure,date,date_creation,user_creation) values ('{user}','{player}','{aventura_escogida}','{date}','{date_creation}','{user_creation}')"
    cur.execute(query)
    conn.commit()

def get_table(query):
    lista=[]
    tuplagrande=[]
    cur.execute(query)
    columnas=cur.description
    filas=cur.fetchall()
    for i in columnas:
        lista.append(i[0])
    tuplagrande.append(tuple(lista))
    tuplagrande.append(filas)
    tuplagrande=tuple(tuplagrande)
    return tuplagrande

def getIdGames():            
    query='select id_game from GAME'
    cur.execute(query)
    rows=cur.fetchall()
    return rows

def userExists(user):
    for i in getUsers():
        if user in getUsers():
            return True
        else:
            return False
            
def getChoices(game):
    query=f"select current_step, o.id_option_step from OPTION_STEP o inner join SAVED_FROM_ADVENTURE s on o.id_option_step=s.id_option_step where id_game={str(game)}"
    cur.execute(query)
    row=cur.fetchall()
    return row

def insertCurrentChoice(current_step, aventura_escogida,answer,date_creation,user_creation):
    if int(answer)>=1:
        query=f"insert into SAVED_FROM_ADVENTURE (id_game, id_step, id_adventure, id_option_step, date_creation, user_creation) values ('{getIdGames()[-1][0]}','{current_step}','{aventura_escogida}','{answer}','{date_creation}','{user_creation}')"
        cur.execute(query)
        conn.commit()
    elif int(answer)==0:
        query=f"insert into SAVED_FROM_ADVENTURE (id_game, id_step, id_adventure, id_option_step, date_creation, user_creation) values ('{getIdGames()[-1][0]}','{current_step}','{aventura_escogida}',NULL,'{date_creation}','{user_creation}')"
        cur.execute(query)
        conn.commit()

def Checkbdd(user, password):
    userfail = 0
    passfail = 1
    query = 'select username, password from USER'
    cur.execute(query)
    login = cur.fetchall()
    data = (user, password)
    if data in login:
        return 1
    else:
        for i in login:
            if i[0] != user:
                userfail += 1
            if i[1] != password:
                passfail += 1
        if userfail == len(login):
            return 0
    return -1  

def setIdGames(user,aventura_escogida, player):
    date=datetime.now()
    id_user=getUsers()[user]['idUser']
    query=f"insert into GAME (id_user, id_player, id_adventure, date, date_creation, user_creation) values ('{id_user}','{player}','{aventura_escogida}','{date}','{date}','{user}')"
    cur.execute(query)
    conn.commit()

def getFormatedBodyColumns(tupla_texts,tupla_sizes,margin=0): #empezamos pasandole una tupla con los textos que necesitamos poner en columna, otra tupla con la distancia que tendra cada columna y el margen entra cada columna
    resultado = "" #creamos un string vacio donde iremos insertando el texto printado correctamente en sus respectivas columnas
    lista_textos = [] #aqui meteremos todo el texto separado cada uno por un caracter para identificar la separacion entre frases
    for i in range(len(tupla_texts)):
        lista_textos.append(formatText(tupla_texts[i],tupla_sizes[i]-margin,"XXX")) #aqui pasaremos a la funcion de formatear el texto para comprobar que no corte ninguna palabra al pasar de frase y para aplicar el caracter que separara cada columna y lo meteremos en una lista
    totalChars = 0
    for i in range(len(lista_textos)):
        totalChars += len(lista_textos[i]) #esto lo utilizamos para que se pueda ir comprobando mas tarde que la lista no este vacia y asi siga funcionando la formatizacion del texto
    
    while totalChars > 0: #utilizamos este while para hacer un bucle hasta que ya no quede mas texto
        for i in range(len(lista_textos)):
            final = lista_textos[i].find("XXX") #creamos esta variable para encontrar la frase que tendremos que ir printando
            if final !=-1: #esta condicion es para que mientras siga habiendo el caracter de separacion continue con el codig
                resultado += (lista_textos[i][0:final]+" "*margin).ljust(tupla_sizes[i]) #esto se utiliza para ir añadiendo el texto printado por columnas 
                lista_textos[i] = lista_textos[i][final+3:] #esta linea se utilza para ir borrando de la lista lo que ya hemos printado
            else: #esta condicion es para cuando ya no encuentra otra separacion y se utiliza para printa la ultima linea del texto
                resultado += (lista_textos[i][0:]+" "*margin).ljust(tupla_sizes[i]) #esto indica que printemos nuestra ultima linea
                lista_textos[i] =""
        resultado += "\n" #aqui le ponemos un \n para que vaya saltando de linea cuando printe una linea entera
        
        totalChars = 0
        for i in range(len(lista_textos)): #aqui volvemos a usar este for para comprobar que nuestra lista no este vacia
            totalChars += len(lista_textos[i])
    return resultado #devolvemos nuestras columnas bien formateadas

def getFormatedAdventures1(user):
    p=0
    t=0
    getHeadeForTableFromTuples(('ID Adventure','Adventure','Description'),(15,40,50),('Adventures'))
    for i,j in get_adventures_with_chars().items():
        v=0
        t+=1
        if t==6:
            p=5
        while v==0 and p==0:
            v+=1
            tupla=[]
            tupla.append(str(i))
            tupla.append(j['Name'])
            tupla.append(j['Description'])
            print(getFormatedBodyColumns(tuple(tupla),(15,40,50), 2))
    opc=input('What adventure do you wanna play?(0 go back): ')
    
    try:
        if opc=='+':
            return getFormatedAdventures2(user)
        elif opc=='0':
            return 0
        elif opc=='1':
            return getAventura_and_character(1,user)
        elif opc=='2':
            return getAventura_and_character(2,user)
        elif opc=='3':
            return getAventura_and_character(3,user)
        elif opc=='4':
            raise ZeroDivisionError
        elif opc=='5':
            raise ZeroDivisionError
        else:
            raise ValueError
    except ValueError:
        print('Option no valid')
        return getFormatedAdventures1(user)
    except ZeroDivisionError:
        print("This adventure is not functional try another one")
        return getFormatedAdventures1(user)
    
def getFormatedAdventures2(user):
    t=0
    getHeadeForTableFromTuples(('ID Adventure','Adventure','Description'),(15,38,30),('Adventures'))
    for i,j in get_adventures_with_chars().items():
        t+=1
        if t==6:
            tupla=[]
            tupla.append(str(i))
            tupla.append(j['Name'])
            tupla.append(j['Description'])
            print(getFormatedBodyColumns(tuple(tupla),(15,40,50), 2))
    opc=input('What adventure do you wanna play?(0 go back): ')
    
    try:
        if opc=='-':
            return getFormatedAdventures1(user)
        elif opc=='0':
            return 0
        elif opc=='6':
            raise ZeroDivisionError
        else:
            raise ValueError
    except ValueError:
        print('Option no valid')
        return getFormatedAdventures2(user)
    except ZeroDivisionError:
        print("This adventure is not functional try another one")
        return getFormatedAdventures2(user)

def getTableFromDict1():
    p=0
    t=0
    getHeadeForTableFromTuples(("Id","Username","Name","CharacterName","date"),(10,20,30,20,25))
    query="select g.id_game, g.id_user,u.username,g.id_adventure, a.name_adventure,g.date,g.id_player,p.name_player from GAME g inner join USER u on u.id_user=g.id_user inner join ADVENTURE a on a.id_adventure=g.id_adventure inner join PLAYER p on p.id_player=g.id_player order by date desc"
    cur.execute(query)
    rows= cur.fetchall()
    game={}
    j=0
    for i in rows: 
        game[i[0]]={}
        game[i[0]]["idUser"]=i[1]
        game[i[0]]["Username"]=i[2]
        game[i[0]]["idAdventure"]=i[3]
        game[i[0]]["Name"]=i[4]
        game[i[0]]["date"]=i[5]
        game[i[0]]["idCharacter"]=i[6]
        game[i[0]]["CharacterName"]=i[7]
        j+=1
    tuple_keys=("idUser","Username","idAdventure","Name","date","idCharacter","CharacterName")
    for i,j in game.items():
        v=0
        t+=1
        if t==6:
            p=5
        while v==0 and p==0:
            v+=1
            tuplatexto=[]
            tuplatexto.append(str(i))
            tuplatexto.append(j[tuple_keys[1]])
            tuplatexto.append(j[tuple_keys[3]])
            tuplatexto.append(j[tuple_keys[6]])
            tuplatexto.append(str(j[tuple_keys[4]]))
            print(getFormatedBodyColumns(tuple(tuplatexto),(10,20,30,20,25), 2))
    
    opc=input('What adventure do you wanna replay?(0 go back): ')
    q=-1
    for i in game:
        q+=1
        if q==5:
            break
        comprobacion=True
        if opc=='+':
            return getTableFromDict2()
        elif opc.isdigit:
            if opc=='0':
                print("")
            elif opc==str(i):
                comprobacion=True
                replay(i)
                break
            else:
                comprobacion=False
        else:
            comprobacion=False
    if comprobacion==False:
        print('Invalid option')
        return getTableFromDict1()
    
def getTableFromDict2():
    p=0
    t=0
    getHeadeForTableFromTuples(("Id","Username","Name","CharacterName","date"),(10,20,30,20,25))
    query="select g.id_game, g.id_user,u.username,g.id_adventure, a.name_adventure,g.date,g.id_player,p.name_player from GAME g inner join USER u on u.id_user=g.id_user inner join ADVENTURE a on a.id_adventure=g.id_adventure inner join PLAYER p on p.id_player=g.id_player order by date desc"
    cur.execute(query)
    rows= cur.fetchall()
    game={}
    j=0
    for i in rows: 
        game[i[0]]={}
        game[i[0]]["idUser"]=i[1]
        game[i[0]]["Username"]=i[2]
        game[i[0]]["idAdventure"]=i[3]
        game[i[0]]["Name"]=i[4]
        game[i[0]]["date"]=i[5]
        game[i[0]]["idCharacter"]=i[6]
        game[i[0]]["CharacterName"]=i[7]
        j+=1
    tuple_keys=("idUser","Username","idAdventure","Name","date","idCharacter","CharacterName")
    for i,j in game.items():
        v=0
        t+=1
        if t>=6 and t<=10:
            p=5
        while v==0 and p==5:
            v+=1
            tuplatexto=[]
            tuplatexto.append(str(i))
            tuplatexto.append(j[tuple_keys[1]])
            tuplatexto.append(j[tuple_keys[3]])
            tuplatexto.append(j[tuple_keys[6]])
            tuplatexto.append(str(j[tuple_keys[4]]))
            print(getFormatedBodyColumns(tuple(tuplatexto),(10,20,30,20,25), 2))
    
    opc=input('What adventure do you wanna replay?(0 go back): ')
    q=-1
    for i in game:
        q+=1
        if q==10:
            break
        comprobacion=True
        if q>=5:
            if opc=='-':
                return getTableFromDict1()
            elif opc.isdigit:
                if opc=='0':
                    comprobacion=True
                    print("")
                    break
                elif opc==str(i):
                    comprobacion=True
                    replay(i)
                    break
                else:
                    comprobacion=False
            else:
                comprobacion=False
    if comprobacion==False:
        print('Invalid option')
        return getTableFromDict2()

def getHeadeForTableFromTuples2(t_name_columns,t_size_columns,title=""):
    num = (120 - len(title))/2
    if num % 2 == 0:
        num = int(num)
        print('='*num + title + '='*num)
        print()
    else:
        num = int(num)
        print('='*num + title + '='*(num+1))
        print()
    if len(t_name_columns)==2:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]))
    elif len(t_name_columns)==3:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]))
    elif len(t_name_columns)==4:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]),t_name_columns[3].ljust(t_size_columns[3]))
    elif len(t_name_columns)==5:
        print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]),t_name_columns[3].ljust(t_size_columns[3]),t_name_columns[4].ljust(t_size_columns[4]))
    print('*'*120)

def FormatedTable(queryTable,title=""): #FormatedTable(functions.get_table(query),title) se le llama asi
    tupla=[]
    if len(queryTable[0])==2:
        getHeadeForTableFromTuples2((queryTable[0][0],queryTable[0][1]),(60,60),title)
        print(getFormatedBodyColumns((queryTable[1][0][0],str(queryTable[1][0][1])),(60,60)))
    elif len(queryTable[0])==3:
        getHeadeForTableFromTuples2((queryTable[0][0],queryTable[0][1],queryTable[0][2]),(40,40,40),title)
        for i in range(len(queryTable[1])):
            tupla=[]
            tupla.append(str(queryTable[1][i][0]))
            tupla.append(queryTable[1][i][1])
            tupla.append(str(queryTable[1][i][2]))
            print(getFormatedBodyColumns(tuple(tupla),(40,40,40)))
    elif len(queryTable[0])==4:
        getHeadeForTableFromTuples2((queryTable[0][0],queryTable[0][1],queryTable[0][2],queryTable[0][3]),(30,30,30,30),title)
        for i in range(len(queryTable[1])):
            tupla=[]
            tupla.append(queryTable[1][i][0])
            tupla.append(queryTable[1][i][1])
            tupla.append(queryTable[1][i][2])
            tupla.append(str(queryTable[1][i][3]))
            print(getFormatedBodyColumns(tuple(tupla),(30,30,30,30)))

def getFormatedAnswers(idAnswer,lenLine,leftMargin,aventura_escogida,player,user):
    lista=[]
    lista1=[]
    while True:
        for i,j in get_adventures_with_chars().items():
            if aventura_escogida==i:
                lista.append(j['Name'])
                getHeader(lista[0])
        dicres=get_answers_bystep_adventure(aventura_escogida)
        z=get_id_bystep_adventure(aventura_escogida)
        for i,j in z.items():
            if i==idAnswer:
                print(formatText(z[i]['Description'].replace('%player%',player),105,'\n'))
                step=i
                break

        for k,l in dicres.items():
            if step==k[1]:
                lista1.append(l['Description'])
                lista1.append(str(k[0]))
                lista1.append(l['Answer'].replace('%player%',player))
                lista1.append(l['NextStep'])
        for a,h in  z.items():
            if step==a:
                lista1.append(h['Final_Step'])
        
        if lista1[0]=='1':
            insertCurrentChoice(step, aventura_escogida,0,datetime.now(),user)
            print('''
                    xxxxxxxxxxxxxxxxxx           x           x                  x
                    x                            x           xx                 x
                    x                            x           x x                x
                    x                            x           x  x               x
                    x                            x           x   x              x
                    x                            x           x    x             x
                    x                            x           x     x            x
                    x                            x           x      x           x
                    x                            x           x       x          x
                    xxxxxxxxxxxxxxx              x           x        x         x
                    x                            x           x         x        x
                    x                            x           x          x       x
                    x                            x           x           x      x
                    x                            x           x            x     x
                    x                            x           x             x    x
                    x                            x           x              x   x
                    x                            x           x               x  x 
                    x                            x           x                x x
                    x                            x           x                 xx
                    x                            x           x                  x''')
            print('')
            input('Press enter to continue')
            break
        print(' '*leftMargin,(str(lista1[1])+')'+lista1[0]).ljust(lenLine))
        print(' '*leftMargin,(str(lista1[5])+')'+lista1[4]).ljust(lenLine))
        resp=input('Option: ')
        if resp!=lista1[1] and resp!=lista1[5]:
            print('Invalid option')
        else:
            if lista1[1]==resp:
                print(formatText(lista1[2],105,'\n'))
                insertCurrentChoice(step, aventura_escogida,resp,datetime.now(),user)
                input('Press enter to continue')
                return getFormatedAnswers(lista1[3],105,3,aventura_escogida,player,user)
                
            elif lista1[5]==resp:
                print(formatText(lista1[6],105,'\n'))
                insertCurrentChoice(step, aventura_escogida,resp,datetime.now(),user)
                input('Press enter to continue')
                return getFormatedAnswers(lista1[7],105,3,aventura_escogida,player,user)

def getAventura_and_character(aventura_escogida,user):
    valor=-1
    a=UserIds()
    comprobacion=True
    lista=[]
    r=get_adventures_with_chars()
    for i,j in r.items():
        if aventura_escogida==i:
            getHeader(j['Name'])
            print(getFormatedBodyColumns(('Adventure:',j['Name']),(20,85)))
            print(getFormatedBodyColumns(('Description:',j['Description']),(20,85)))
            break
    print("")
    print("")
    num = (74 - len(j['Name']))/2
    if num % 2 == 0:
        num = int(num)
        print('='*num + j['Name'] + '='*num)
    else:
        num = int(num)
        print('='*num + j['Name'] + '='*(num))
    t=get_characters()
    for k,p in t.items():
        for s in j['Characters']:
            if k==s:
                print(' '*2,s,')',p)
                lista.append('Description')
    opc=input("Select character (0 go back): ")
    for y in j['Characters']:
        if opc==str(y):
            query="select id_player,name_player, description from PLAYER"
            cur.execute(query)

            row=cur.fetchall()
            for i in row:
                if opc==str(i[0]):
                    player=i[1]
                    print("El personaje escogido es: ",player)
                    print(i[2])
                    input('Press enter to continue')
                    for i in get_first_step_adventure(aventura_escogida):
                        for h in a:
                            for w in range(len(a[0])):
                                if h[w]==user:
                                    valor=w
                                    break
                            if valor!=-1:
                                break
                        insertCurrentGame(a[1][valor],opc,aventura_escogida, datetime.now(),datetime.now(), user)
                        return getFormatedAnswers(i,105,3,aventura_escogida,player,user)
        elif opc=='0':
            return getFormatedAdventures1(user)
        else:
            comprobacion=False
    if comprobacion==False:
        print("Invalid option")
        return getAventura_and_character(aventura_escogida,user)

def replay(choice):
    dicc=getReplayAdventure()
    lista=[]
    for i,j in dicc.items():
        if i==choice:
            lista.append(j['Name'])
            lista.append(j['PlayerName'])
            lista.append(j['idAdventure'])
            break
    options=getChoices(choice)
    options=list(options)
    query=f"select o.next_step from OPTION_STEP o inner join SAVED_FROM_ADVENTURE s on o.id_option_step=s.id_option_step where id_game={str(choice)}"
    cur.execute(query)
    row=cur.fetchall()
    options.append(row[len(row)-1])
    options=tuple(options)
    dicres=get_answers_bystep_adventure(lista[2])
    z=get_id_bystep_adventure(lista[2])
    for s in options:
        lista1=[]
        getHeader(lista[0])
        for i,j in z.items():
            if i==s[0]:
                print(formatText(z[i]['Description'].replace('%player%',lista[1]),105,'\n'))
                step=i
                break
        for k,l in dicres.items():
            if step==k[1]:
                lista1.append(l['Description'])
                lista1.append(str(k[0]))
                lista1.append(l['Answer'].replace('%player%',lista[1]))
                lista1.append(l['NextStep'])
        for a,h in  z.items():
            if step==a:
                lista1.append(h['Final_Step'])
        
        if lista1[0]=='1':
            print('''
                    xxxxxxxxxxxxxxxxxx           x           x                  x
                    x                            x           xx                 x
                    x                            x           x x                x
                    x                            x           x  x               x
                    x                            x           x   x              x
                    x                            x           x    x             x
                    x                            x           x     x            x
                    x                            x           x      x           x
                    x                            x           x       x          x
                    xxxxxxxxxxxxxxx              x           x        x         x
                    x                            x           x         x        x
                    x                            x           x          x       x
                    x                            x           x           x      x
                    x                            x           x            x     x
                    x                            x           x             x    x
                    x                            x           x              x   x
                    x                            x           x               x  x 
                    x                            x           x                x x
                    x                            x           x                 xx
                    x                            x           x                  x''')
            print('')
            input('Press enter to continue')
            break
        print(' '*3,(str(lista1[1])+')'+lista1[0]).ljust(105))
        print(' '*3,(str(lista1[5])+')'+lista1[4]).ljust(105))

        input('Press enter to continue')
        print('Option',s[1],'selected')
        if lista1[1]==str(s[1]):
            print(formatText(lista1[2],105,'\n'))
            input('Press enter to continue')
        elif lista1[5]==str(s[1]):
            print(formatText(lista1[6],105,'\n'))
            input('Press enter to continue')

def insertUser(user,password,date_creation, user_creation):
    query=f"insert into USER (username,password,date_creation,user_creation) values ('{user}','{password}','{date_creation}','{user_creation}')"
    cur.execute(query)
    conn.commit()
