# IMPORTS

import functions
from datetime import datetime

# MENUS Y VARIABLES GLOBALES

mainmenu="\n\n1)Login\n2)Create user\n3)Replay Adventure\n4)Reports\n5)Exit"
menu2='\n\n1)Logout\n2)Play\n3)Replay Adventure\n4)Report'
list5=[1,2,3,4,5]
option="\nOption: "

# FLAGS PARA LOS MENUS

flag0 = True
flag2 = False

while True:

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

    opt = functions.getOpt(mainmenu,option,list5)
        
    if opt == 1:
        
    elif opt == 2:
        print('opcion 2')
    elif opt == 3:
        print('opcion 3')
    elif opt == 4:
        print('opcion 4')
    else:
        print("Colorin colorado el programa se ha acabado")
