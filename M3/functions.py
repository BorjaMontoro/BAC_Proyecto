import pymysql
from datetime import datetime

conn = pymysql.connect(host='51.103.33.209',user = 'bac', password='root', db='BAC')

cur = conn.cursor()

def getOpt(textOpts="",inputOptText="",rangeList=[],dictionary={},exceptions=[]):
   while True:
      try:
         print(textOpts)
         opt =  int(input(inputOptText))
         if opt not in rangeList:
            raise ValueError
         else:
            break
      except ValueError:
         print('opcion no valida\n\n')
   return opt

def getHeader(text):
    num = (105 - len(text))/2
    if num / 2 == 0:
        num = int(num)
        print('-'*105 + '\n' + '='*num + text + '='*num + '\n' + '-'*105 )
    else:
        num = int(num)
        print('-'*105 + '\n' + '='*num + text + '='*(num+1) + '\n' + '-'*105 )

def checkUser(user):
    while True:
        try:
            l=0
            x=0
            user=input("Introduce your username: ")
            if len(user)<6 or len(user)>10:
                raise ZeroDivisionError   
            for i in user:
                if i.isdigit():
                    l+=1
                if i.isalpha():
                    x+=1
            if l==0 or x==0:
                raise ValueError
            else:
                break
        except ValueError:
            print("The username has to be alfanumeric")
        except ZeroDivisionError:
            print("The length of username has to be longer than 5 and shorter than 11")
    return user

def checkPassword(password):
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
            if v==0:
                raise SyntaxError
            if a==0:
                raise NameError
            if b!=0:
                raise TypeError
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
        
    print(t_name_columns[0].ljust(t_size_columns[0]),t_name_columns[1].ljust(t_size_columns[1]),t_name_columns[2].ljust(t_size_columns[2]))
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

def get_adventures_with_chars():
    query="select * from adventure"

    cur.execute(query)

    rows= cur.fetchall()

    adventures={}
    listagrande=[]
    for i in range(1,len(rows)+1):
        query1="select * from player l inner join player_adventure p on p.id_player=l.id_player where id_adventure="+str(i)
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
    query='select * from player' 

    cur.execute(query)

    rows=cur.fetchall()

    characters={}

    for i in rows:
        characters[i[0]]=i[1]
    return characters

def get_answers_bystep_adventure(aventura_escogida):
    
    query=f'select * from option_step where id_adventure= {str(aventura_escogida)}'

    cur.execute(query)

    rows=cur.fetchall()

    op_step={}
    for i in rows:
        op_step[i[0],i[2]]={"Description":i[5],"Answer":i[4],"NextStep":i[1]}
    return op_step

def getReplayAdventure():
    query='select g.id_game, g.date, u.id_user, u.username, a.id_adventure, a.name_adventure, p.id_player, p.name_player from game g inner join adventure a on a.id_adventure=g.id_adventure inner join player p on p.id_player=g.id_player inner join user u on u.id_user=g.id_user;'

    cur.execute(query)

    rows=cur.fetchall()

    replayAdventure={}

    for i in rows:
        replayAdventure[i[0]]={'IdUser':i[2],'Username':i[3],'idAdventure':i[4],'Name':i[5],'date':i[1],'idPlayer':i[6],'PlayerName':i[7]}
    
    return replayAdventure

def get_id_bystep_adventure(aventura_escogida):
    id_step={}

    query=f"select * from step where id_adventure= {str(aventura_escogida)}"


    cur.execute(query)

    rows=cur.fetchall()


    listagrandepasos=[]
    for i in range(1,len(rows)+1):
        query1="select s.*,o.next_step from step s inner join option_step o on s.id_step=o.current_step where o.current_step="+str(i)
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
    query="select * from step where id_adventure="+str(aventura_escogida)
    cur.execute(query)
    rows=cur.fetchone()
    return rows

def getUsers():
    user={}
    query="select * from user"
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
    username_query = 'select username from user'
    id_query = 'select id_user from user'

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

def insertCurrentGame(usuario,player,aventura_escogida, date,date_creation, user_creation):

    query=f"insert into game (id_user,id_player,id_adventure,date,date_creation,user_creation) values ('{usuario}','{player}','{aventura_escogida}','{date}','{date_creation}','{user_creation}')"
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
    query='select id_game from game'
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
    query=f"select current_step, next_step from option_step o inner join saved_from_adventure s on o.id_option_step=s.id_option_step where id_game={str(game)}"
    cur.execute(query)
    row=cur.fetchall()
    return row

def insertCurrentChoice(current_step, aventura_escogida,next_step,date_creation,user_creation):
    if next_step>=1:
        query=f"insert into saved_from_adventure (id_game, id_step, id_adventure, id_option_step, date_creation, user_creation) values ('{getIdGames()[-1][0]}','{current_step}','{aventura_escogida}','{next_step}','{date_creation}','{user_creation}')"
        cur.execute(query)
        conn.commit()
    elif next_step==0:
        query=f"insert into saved_from_adventure (id_game, id_step, id_adventure, id_option_step, date_creation, user_creation) values ('{getIdGames()[-1][0]}','{current_step}','{aventura_escogida}',NULL,'{date_creation}','{user_creation}')"
        cur.execute(query)
        conn.commit()

def Checkbdd(user, password):
    userfail = 0
    passfail = 1
    query = 'select username, password from user'
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
    query=f"insert into game (id_user, id_player, id_adventure, date, date_creation, user_creation) values ('{id_user}','{player}','{aventura_escogida}','{date}','{date}','{user}')"
    cur.execute(query)
    conn.commit()

