---
# Informació general del document
title: 4. Creació de codi. Programes i webs
lang: ca
page-background: img/bg.png

# Portada
titlepage: true
titlepage-rule-height: 2
titlepage-rule-color: AA0000
titlepage-text-color: AA0000
titlepage-background: img/U4v.png

# Taula de continguts
toc: true
toc-own-page: true
toc-title: Continguts

# Capçaleres i peus
header-left: 4. Creació de codi. 
header-right: Curs 2023-2024
footer-left: CEFIRE València
footer-right: \thepage/\pageref{LastPage}

# Imatges
float-placement-figure: H
caption-justification: centering

# Llistats de codi
listings-no-page-break: true
listings-disable-line-numbers: false

header-includes:
- |
  ```{=latex}
  \usepackage{lastpage}
  \usepackage{awesomebox}
  \usepackage{caption}
  \usepackage{array}
  \usepackage{tabularx}
  \usepackage{ragged2e}
  \usepackage{multirow}
  \usepackage{xcolor}
  \setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}

  ```
pandoc-latex-environment:
  noteblock: [note]
  tipblock: [tip]
  warningblock: [warning]
  cautionblock: [caution]
  importantblock: [important]
...

<!-- \awesomebox[violet]{2pt}{\faRocket}{violet}{Lorem ipsum…} -->

<!-- \awesomebox[violet]{2pt}{\faRobot}{violet}{Lorem ipsum…} -->

<!-- IMATGE ![Pregunta inicial](./img/proxi/5b.png){ width=70% } -->

<!-- \textbf{greatest} -->

<!-- \awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{greatest}} -->

\vspace*{\fill}

![](img/cc.png){ width=70% }{ height=50px }

Aquest document està subjecte a una llicència creative commons que permet la seua difusió i ús comercial reconeixent sempre l'autoria del seu creador. Aquest document es troba per a ser modificat al següent repositori de github:
<!-- CANVIAR L'ENLLAÇ -->
[https://github.com/arvicenteboix/AIcurscefire24](https://github.com/arvicenteboix/AIcurscefire24)
\newpage

# Introducció

En aquesta unitat el primer que anem a demanar-vos és que no vos poseu nerviosos ni vos desespereu, però quan parlem d'intel·ligència artificial hem de parlar de una de les seues principals funcions i que veritablement està revolucionant molts aspectes de la vida professional de molts treballadors. 

Estem parlant de la creació de codi. En aquest cas anem a realitzar un aplicació amb un llenguatge de programació molt conegut com és Python, i no, no cal que sapigueu programar, no cal que entengueu el que diu, però seguint les instruccions que ens anirà donant la plataforma farem una aplicació.

# Utilitzant models lliures

## Objectiu

El nostre objectiu va a ser crear una aplicació que active la càmera web del nostre ordinador i active si estem somriguen o estem tristos.

Per a realitzat aquesta aplicació hem de conèixer en quin sistema operatiu anem a crear-lo ja que no només ens farà falta el codi sino com executar-lo. Per a aquest fi utilitzarem únicament Bing Copilot ja que és la que, en principi funciona millor per a programar.

:::important
Cal dir que no obtindrem un resultat que s'ajuste al 100% de allò que nosaltres esperem. Hem de realitzar sempre una comprovació del codi i modificar els aspectes que volem adaptar.
Si no sabem programar hem de conformar-nos amb allò que ens done o, és un bon punt per a aprendre a programar ja que la millor manera d'aprendre és a base d'exemples que ens anirà donant l'IA.
:::

:::tip
Existeix una opció de pagament (gratuïta per a docents) anomenada GitHub Copilot que ens permet modificar codi específic sobre l'editor de text Visual Studio Code. En moltes de les formacions que s'estan oferint s'explica aquesta opció. Però està pensada més per a programadors.
:::

## Realització

Per a crear un programa amb python hem de pegar el codi a una arxiu de text (.txt, no val ni .doc ni .odt) i guardar-lo amb extensió .py.

Plantejarem un prompt com aquest:

\awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{Eres un programador experimentat que li agrada documentar el seu codi i treballa amb linux. La nostra vida depèn de realitzar un programa amb python que obrirà una finestra que ens mostrarà el que hi ha a la càmera web del nostre ordinador. Aquest programa detectarà quan la nostra cara somriu i quan està trista i mostrarà un missatge a la pantalla que anirà refrescant-se cada segon mostrant el text "trist" o "alegre"}}

Copiem i peguen el que ens diu exactament ja que és tracta d'una resposta bastant llarga:

Hola! Com que vols fer un programa que detecti emocions a través de la càmera web del teu ordinador, et recomano que utilitzis la llibreria **OpenCV** per a Python. Aquesta llibreria és una eina de codi obert que es pot utilitzar per a la visió per computador i el processament d'imatges. Per a la detecció d'emocions, pots utilitzar el reconeixement facial en temps real amb **OpenCV**. Això implica la detecció de cares i la identificació de les emocions a través de les expressions facials.

Per a la detecció d'emocions, et recomano que utilitzis el model **FER+** (Face Expression Recognition Plus) que és un model de xarxa neuronal que es pot entrenar per a la detecció d'emocions a través de les expressions facials. Aquest model es pot utilitzar amb **OpenCV** per a la detecció d'emocions en temps real.

A continuació, et proporciono un exemple de codi que utilitza **OpenCV** i **FER+** per a la detecció d'emocions a través de la càmera web del teu ordinador:

```python
import cv2
import numpy as np
from fer import FER

cap = cv2.VideoCapture(0)
detector = FER(mtcnn=True)

while True:
    ret, frame = cap.read()
    if not ret:
        break

    # Detect faces in the frame
    faces = detector.detect_emotions(frame)

    # Draw bounding boxes and labels of detected faces
    for face in faces:
        x, y, w, h = face["box"]
        emotions = face["emotions"]
        emotion = max(emotions, key=emotions.get)
        cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
        cv2.putText(frame, emotion, (x, y - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (0, 255, 0), 2)

    # Display the resulting frame
    cv2.imshow("Emotion Detection", frame)

    # Exit if the user presses 'q'
    if cv2.waitKey(1) & 0xFF == ord("q"):
        break

# Release the capture and destroy the window
cap.release()
cv2.destroyAllWindows()
```

Aquest codi obre la càmera web del teu ordinador i detecta les cares en temps real. A continuació, utilitza el model **FER+** per a la detecció d'emocions a través de les expressions facials. El codi dibuixa quadres delimitadors i etiquetes de les cares detectades i mostra el text "alegre" o "trist" a la pantalla, depenent de l'emoció detectada.

Espero que això t'ajudi a començar a desenvolupar el teu programa! Si tens alguna pregunta més, no dubtis a preguntar-me.

Origen: Conversación con Bing, 29/1/2024

(@) Facial Emotion Recognition In Real-Time - LearnOpenCV. https://learnopencv.com/facial-emotion-recognition/.
(@) facial-emotion-recognition · GitHub Topics · GitHub. https://github.com/topics/facial-emotion-recognition?l=python.
(@) Emotion Detection using Python - Geeky Humans. https://geekyhumans.com/emotion-detection-using-python-and-deepface/.
(@) ajitharunai/Facial-Emotion-Recognition-with-OpenCV-and-Deepface. https://github.com/ajitharunai/Facial-Emotion-Recognition-with-OpenCV-and-Deepface/.
(@) Real-time Facial Emotion Recognition using OpenCV and Deepface. https://github.com/SaeedTaghavi/Facial-Emotion-Recognition-with-OpenCV-and-Deepface/blob/main/README.md.

Nosaltres només volem el codi, així que el copiem i peguem en un arxiu de text anomenat camera.py i executem a la terminal:

```
python camera.py
```

Però ens dona un error i no funciona. Així que recorrem a Bing Copilot per veure que ens diu:

![Resposta de Copilot](img/0.png){ width=70% }{ height=50px }

Així, executem el que ens diu la IA i tornem a executar:

```python
python camera.py
```
I aquest és el resultat:

![Aplicació](img/1.png){ width=70% }{ height=50px }

![Aplicació](img/2.png){ width=70% }{ height=50px }

![Aplicació](img/3.png){ width=70% }{ height=50px }

![Aplicació](img/4.png){ width=70% }{ height=50px }

:::info
En el nostre cas hem utilitzat un Sistema Operatiu basat en linux com LliureX, però cada sistema operatiu tindrà la seua complexitat. LliureX destaca perquè simplifica molt les tasques de configuració.
:::

:::caution
Aquest és un exemple del que es pot fer, però no se vos demana en cap moment que realitzeu aquest exemple. Podeu probar i despertar la vostra curiositat per a treballart amb codi. Però no és necessari que ho feu.
Programar pot acabar resultant una tasca veritablement estresant.
:::

# Anem a crear un joc amb python també

Crear un joc no és una tasca senzilla i anem a utilitzar una biblioteca de python anomenada *Pygame* que és molt senzilla d'utilitzar. Personalment no l'he utilitzada mai. Però podrem veure que no només hi ha que realitzar un comandament per a realitzar el joc sinó que hi haurà que anar donant-li instruccions per a que vaja canviant les coses que no entén del que nosaltres volem.

:::caution
La creació d'un videojoc comporta moltes vegades, anys, i jocs senzills potser no anys però mesos dedicats en exclusiva, així que no esperem traure una meravella de joc amb un dia, així i tot els resultats són bastant sorprenents.
:::

Pot semblar una tasca senzilla tal i com vaig a plantejar-vos-ho, però el prompt que he creat per a que la IA em cree el videojoc he tingut que modificant-lo un poc (i després he modificat un poc el codi) per a que em funcione correctament. A més com hem comentat sempre és important conèixer un poc (encara que siga molt poc) de què estem tractant amb la IA per a poder perfilar millor el prompt[^1]. 

[^1] Si preguntem en classe segur que molts saben més que nosaltres.

La plataforma que hem utilitzat és Bing Copilot amb el seu mode més precís i el prompt plantejat ha sigut el següent:

awesomebox[violet]{2pt}{Crea un joc amb la biblioteca Pygame per a python que tinga una pantalla estàtica amb una plataforma del 20% del total de la finestra que puga desplaçar a l'esquerra o la dreta amb el teclat de manera suau i ràpida. La velocitat de la bola serà constant de 1 i que s'actualitze la funció que mou la bola cada 0.3 segons i quan la bola xoque amb els extrems de la pantalla rebotarà amb un angle de 45º en la direcció que du, si la bola xoca contra la plataforma rebotarà, si rebota en la meitat dreta de la plataforma se n'anirà cap a la dreta amb un angle de 45º cap a dalt i si rebota en la meitat esquerra de la plataforma se n'anirà cap a l'esquerre amb un angle de 45º cap a dalt. Al començament hi haurà una bola damunt de la tabla sense moure's i quan es polse la tecla espai la bola començarà a moure's cap a dalt. Escriure-me el codi només, sense comentaris i de la manera més resumida possible. No vull que m'escrigues cap explicació, només vull el codi i sense comentaris.}

La resposta tal cual ha sigut:

![Resposta de Copilot](img/8.png){ width=70% }

Vos transcribim el codi ací

```python
import pygame
import sys

pygame.init()
screen = pygame.display.set_mode((800, 600))
clock = pygame.time.Clock()

ball = pygame.Rect(400, 570, 10, 10)
paddle = pygame.Rect(350, 580, 100, 10)
ball_speed = [3, -3]
paddle_speed = 10
moving = False

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_SPACE:
                moving = True

    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] and paddle.left > 0:
        paddle.move_ip(-paddle_speed, 0)
    if keys[pygame.K_RIGHT] and paddle.right < 800:
        paddle.move_ip(paddle_speed, 0)

    if moving:
        ball.move_ip(ball_speed[0], ball_speed[1])

        if ball.left <= 0 or ball.right >= 800:
            ball_speed[0] = -ball_speed[0]
        if ball.top <= 0:
            ball_speed[1] = -ball_speed[1]
        if ball.colliderect(paddle):
            if ball.centerx < paddle.centerx:
                ball_speed = [-3, -3]
            else:
                ball_speed = [3, -3]

        if ball.bottom >= 600:
            ball.topleft = (400, 570)
            moving = False

    screen.fill((0, 0, 0))
    pygame.draw.ellipse(screen, (255, 255, 255), ball)
    pygame.draw.rect(screen, (255, 255, 255), paddle)
    pygame.display.flip()
    clock.tick(60)
```

Aquest és el codi generat i el resultat ha sigut el següent:

![Joc plantejat](img/7.png){ width=70% }

:::important
Heu d'eliminar les citacions que fa la IA al final del codi, ja que no són part del codi i poden generar errors. En este cas: [_{{{CITATION{{{_1{](https://github.com/henrikots/fly-boy/tree/441b0442733ab0ebc499b5233804db110905a1f1/tutorial.py)
:::

:::tip
El problema que hem detectat és que la bola anava molt lentament, així que li hem demanat que la velocitat fora major. Però li hem preguntat a Copilot i ens ha arreglat el codi.
:::

## Explicació del prompt

Anem a fer una xicoteta explicació del prompt. Com podeu vore els prompts no solen ser "Fes-me un joc tipo *Arkanoid*", cal detallar clarament el que volem. I aquesta exlicació del prompt serveix per a qualsevol altre tipus de matèria.

:::note
És possible que ara ja hi haja una resposta per al prompt de crear un joc tipus Arkanoid ja que està relacionat amb el prompt que he preguntat després i ja ho haja associat. A vosaltres us podria funcionar. La IA va aprenent també del que nosaltres li "ensenyem".
:::

El prompt que hem plantejat és:

>Crea un joc amb la bilioteca pygame per a python que tinga una pantalla estàtica amb una plataforma del 20% del total de la finestra que puga desplaçar a l'esquerra o la dreta amb el teclat de manera suau i ràpida. La velocitat de la bola será constant de 1 i que s'actualitze la funció que mou la bola cada 0.3 segons i quan la bola xoque amb els extrems de la pantalla rebotarà amb un angle de 45º en la direcció que du, si la bola xoca contra la plataforma rebotarà, si rebota en la meitat dreta de la plataforma se n'anirà cap a la dreta amb un angle de 45º cap a dalt i si rebota en la meitat esquerra de la plataforma se n'anirà cap a l'esquerre amb un angle de 45º cap a dalt. Al començament hi haurà una bola damunt de la tabla sense moure's i quan es polse la tecla espai la bola començarà a moure's cap a dalt. Escriure-me el codi només, sense comentaris i de la manera més resumida possible. No vull que m'escrigues cap explicació, només vull el codi i sense comentaris.

> Crea un joc amb la bilioteca pygame per a python

Hem de detallar la tecnlogia que volem utiltizar, ací estem plantejant un context en el nostre prompt

> que tinga una pantalla estàtica amb una plataforma del 20% del total de la finestra 

En aquest cas continuem detallant el context, podríem haver demanat una pantalla més xicoteta però ha supossat una pantalla de 800x600, si que li indiquem que la finestra tinga un tamany determinat i volem una plataforma que és on rebotaran les boles. Vegeu que li done ja un valor, com que no li he donat un valor a la pantalla li parle en percentatges.

> que puga desplaçar a l'esquerra o la dreta amb el teclat de manera suau i ràpida. 

Li deixem clar que volem manejar la plataforma amb el teclat i no amb el ratolí, especifiquem suau i ràpida per a que entenga que si mantenim polsat la tecla volem que continue, en aquest cas m'ha funcionat però amb altres models GPT no entén *suau i ràpida* 

> La velocitat de la bola será constant de 1 i que s'actualitze la funció que mou la bola cada 0.3 segons 

Aquesta part pot costar d'entendre un poc més, el FPS és la velocitat amb la que vull que es refresque la pantalla i li ho he dit en segons que la IA a interpretat 60 fps, i al velocitat 1 perquè pygame només permet valors majors de 1.

> i quan la bola xoque amb els extrems de la pantalla rebotarà amb un angle de 45º en la direcció que du

És important delimitar com rebota, ací és quan li donem exemples a la IA per a que entenga que ha de rebotar en una direcció diferent, sino podria quedar-se rebotant d'un costat a altre sense canviar. Cal pensar en la dinàmica del joc.

>si la bola xoca contra la plataforma rebotarà, si rebota en la meitat dreta de la plataforma se n'anirà cap a la dreta amb un angle de 45º cap a dalt i si rebota en la meitat esquerra de la plataforma se n'anirà cap a l'esquerre amb un angle de 45º cap a dalt. 

Continuem amb els exemples que ajuden a entendre què és el que desitgem.

> Al començament hi haurà una bola damunt de la tabla sense moure's i quan es polse la tecla espai la bola començarà a moure's cap a dalt. 

Cal definir una situació inicial ja que, com ja hem comentat, la IA no pressuposa com un humà, sino especifiquem alguna cosa s'ho inventarà i podria ser que no fos el que desitgem. Les presuposacions que fa no són humanes.

> Escriure-me el codi només, sense comentaris i de la manera més resumida possible. No vull que m'escrigues cap explicació, només vull el codi i sense comentaris.

Per últim insistim que només volem el codi sense cap tipus d'explicació i sense cap tipus de comentari al codi. Els comentaris ens poden ajudar a entendre millor el codi, però la plataforma té limitat el número de caràcters que ens dona com a resposta, d'aquesta manera estaviem quantitat de caràcters que volem que ens done.

:::important
Insistim que la plataforma té limitat el nombre de caràcters que ens dóna com a resposta, per això insistim que no ens done comentaris addicionals, perquè es centre únicament en el codi que és el que volem
:::

:::warning
Creant aquest prompt, en una de les proves la IA em va contestar:

![La IA fent amics](img/10.png){ width=70% }

Així que no sempre obtindrem els resultats esperats i caldrà anar modificant variables fins que ens done el resultat esperat.
:::

No penseu que aquest prompt ha sorgit màgicament del meu cap, cal anar analitzant les respostes qucrea una divisió en html un titul que diga "La cèl·lula" i la font siga de color blanc i que tinga un fons amb les esquines redondejades que ocupe el 100% de la seua secció i el fons siga a múltiples bandes alternes inclinades 45 graus amb els colors #4C4B16  i un color un poc menys obscur. És important que el estil estiga tot contingut dins de la mateixa divisió. Vull que mostres només la part del cos.e va donant per anar creant el prompt, són diversos intents modificant l'ordre de les frases del prompt i preguntant per separat per analitzar les respostes i poder perfilar més el resultat.

# Replit

[Replit](https://replit.com) és una plataforma que ens permet crear codi de manera senzilla i ràpida. Podem crear codi en diferents llenguatges de programació i ens permet compartir-lo amb altres persones. A més, ens permet executar el codi en línia i veure el resultat en temps real. de manera que no anem a demanar-vos que executeu el codi al vostre ordinador, en canvi podem fer-ho en aquesta plataforma.

![Replit](img/21.png){ width=70% }

Replit és una plataforma molt potent i molt utilitzada, en aquest cas quan ens loguem i li diem a tot que sí ens apareixerà una pantalla com aquesta:

![Replit](img/22.png){ width=70% }

I Donem a create Repl:

![Create Repl](img/23.png){ width=70% }

Ens farà un breu tutotial, i al final ens apareixerà una pantalla com aquesta:

![Pantalla de Replit](img/24.png){ width=70% }

Polsem la tecla Ctrl+I i veurem que ens aapreix un diàleg on podem escriure el nostre prompt:

![Prompt](img/25.png){ width=70% }

I ens dona un resultat diferent a la nostra proposta:

![Resultat](img/26.png){ width=70% }

Lodonem a Accept i polsem el botó Run vert que hi ha dalt de tot. Ens apareixerà una pantalla com aquesta, on polsarem la següent tecla per a fer-la més gran:

![Pantalla principal](img/27.png){ width=70% }

I ja vegem la pantalla en gran, és important que polsem ací per a que detecte el teclat:

![Pantalla principal](img/28.png){ width=70% }

:::warning
El codi generat per Copilot ha funcionat molt millor, a Replit hem canviat els següents valors per a que funcionara molt més ràpidament. Però podem copiar el codi de Copilot i pegar-lo ací per a que funcione correctament.
ball_speed = 20
platform_speed = 20
time.sleep(0.1)
:::

Replit és una plataforma molt potent i pot servir-nos per a introduïr als alumnes a la programació començant amb coses molt més senzilles com:

\awesomebox[violet]{2pt}{\faRobot}{violet}{Crea un programa que òbriga una finestra i em pregunte el meu nom, després tanca eixa finestra i òbriga altra finestra que diga Hola + el meu nom i espere fins que jo tanque eixa finestra.}

![Programa](img/29.png){ width=70% }

Podeu veure el resultat [ací](https://replit.com/join/eowcmbuxe-alviboigva)

:::tip
No cal saber programar per a utilitzar la plataforma sinó saber escriure prompts correctament, podem pensar que aquesta plataforma servix només per a programadors, però no és així. Ja que fixeu-vos la estructura del prompt, cal saber explicar bé el que volem. I això ajuda a desenvolupar el pensament computacional
:::

\awesomebox[black]{2pt}{\faCode}{black}{Com a docents podem fer ús de github Copilot que tindreu que sol·licitar a la plataforma de GitHub i que us permetrà modificar codi en temps real i s'integra molt bé dins de Visual Studio Code.}

# Creem una unitat en Aules

En aquest apartat anem a crear una unitat des de 0, ja vos hem comentat que sempre és important tindre unes nocions bàsiques sobre el que s'està preguntant. Anem a fer la nostra prova en el nostre [Aules docent](https://aules.edu.gva.es/docent/my/).

:::tip
Teniu opcions gratuïtes de moodle com [milaulas](https://www.milaulas.com/)
per a poder fer proves si no voleu utilitzar el Aules docent.
:::

## Disseny estètic

Existeixen pàgines com [Colorhunt](https://colorhunt.co/) per a poder utilitzar colors que combinen entre sí. Nosaltres hem agafat [esta paleta de colors](https://colorhunt.co/palette/4c4b16898121e6c767f87a53) per a poder fer la nostra unitat.

El disseny que anem a utilitzar és més o menys el que hem utilitzat es este mateix curs, encara que canviarem algunes coses ja que hem utilitzat ferramentes com [pandoc](https://pandoc.org/) per a poder crear aquest document.

En primer lloc creem el nostre curs:

![Curs](img/30.png){ width=70% }

![Nom del curs](img/31.png){ width=70% }

:::caution
El curs tarda un poc en crea-se. Així que no vos preocupeu.
:::

![Entrem en mode edició](img/32.png){ width=70% }

I afegim una secció.

\awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{crea una divisió en html un titul que diga "La cèl·lula" i la font siga de color blanc i que tinga un fons amb les esquines redondejades que ocupe el 100% de la seua secció i el fons siga a múltiples bandes alternes inclinades 45 graus amb els colors #4C4B16  i un color un poc menys obscur. És important que el estil estiga tot contingut dins de la mateixa divisió. Vull que mostres només la part del cos.}}

El resultat ha sigut el següent:

  ```html
  <body>
      <div style="background: repeating-linear-gradient(45deg, #4C4B16, #4C4B16 10px, #6C6B29 10px, #6C6B29 20px); border-radius: 15px; width: 100%; padding: 20px; text-align: center; color: white;">
          <h1 style="color: white;">La cèl·lula</h1>
      </div>
  </body>
  ```

En Afig una activitat o recurs busquem "Àrea de text i multimèdia" i copiem el codi sense la part de body i ens apareixerà així:

![Codi](img/33.png){ width=70% }

:::caution
Hem de copiar-ho fent clic en el botó de codi (amb roig a la imatge).
:::

El reusultat es veuria d'aquesta manera:

![Resultat](img/34.png){ width=70% }

Podem crear títols més petits modificant un poc el prompt:

\awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{Crea una divisió en html un títol xicotet que diga "Continguts" i estiga lineat a l'esquerra, la font del títol siga de color blanc i que tinga un fons amb les esquines redondejades que ocupe el 100% de la seua secció i el fons siga a múltiples bandes alternes inclinades 45 graus amb els colors #898121  i un color un poc menys obscur, l'altura de tot el contingut no ha de ser massa gran. És important que el estil estiga tot contingut dins de la mateixa divisió. Vull que mostres només la part del cos.}}

El resultat ha sigut el següent:

```html
<div style="font-family: 'Verdana', sans-serif; color: #fff; text-align: left; font-size: 1.2em; padding: 20px; width: 100%; height: auto; background: repeating-linear-gradient(45deg, #898121, #898121 10px, #6d6b16 10px, #6d6b16 20px); border-radius: 15px; margin: auto;">
    <h2 style="color: #fff; margin: 0;">Continguts</h2>
</div>

```

Crec que recordareu que crearem un curs sobre la cèl·lula en el mòdul 3, així que anem a aprofitar-lo. Afegim una activitat o recurs URL que quedaria de la següent manera:

![URL](img/35.png){ width=70% }

El moguem a la dreta per a donar-li un bon format:

![A la dreta](img/36.png){ width=70% }

I així se'ns obri com en una finestra emergent el contingut:

![Contingut](img/37.png){ width=70% }

## Activitats

Anem a crear una activitat de tipus qüestionari. Però anem a fer ús de les ferramentes que hem après a utilitzar.

Anirem a [magischool](https://app.magicschool.ai/tools) i crearem un qüestionari. En aquest cas farem un qüestionari de 5 preguntes sobre la cèl·lula.

![Magischool](img/38.png){ width=70% }

Creem el qüestinari:

![Qüestionari](img/39.png){ width=70% }

I el resultat que tenim és el següent:

![Qüestionari](img/40.png){ width=70% }

:::caution
En aquest cas no podem pujar la web que hem creat amb mindsmith per les característiques de la plataforma, però podem pujar els nostres propis apunts.
:::

Però a nosaltres ens interesa que estes qüestions estiguen en Aules... Així que copiarem el resultat i utilitzarem Copilot:

\awesomebox[violet]{2pt}{\faRobot}{violet}{Crea un codi xml per a poder importar com a qüestionari de moodle utilizant les següents qüestions: 
La cèl·lula i les seues parts
1. Quina és la funció principal del nucli cel·lular?  
a. Controlar les activitats cel·lulars  
b. Proporcionar energia a la cèl·lula  
c. Sintetitzar proteïnes  
d. Emmagatzemar lípids  
2. Quina estructura cel·lular està involucrada principalment en la producció d'energia?  
a. Nucli  
b. Mitocòndria  
c. Ribosoma  
d. Reticle endoplasmàtic  
3. Quina part de la cèl·lula conté enzims que ajuden a la digestió de material cel·lular?  
a. Aparell de Golgi  
b. Lisosoma  
c. Cloroplast  
d. Centríol  
4. Quin és el paper principal de la membrana plasmàtica?  
a. Sintetitzar lípids  
b. Mantenir l'equilibri osmòtic  
c. Controlar el que entra i surt de la cèl·lula  
d. Produir glucosa  
5. Quin orgànul és responsable de la síntesi de proteïnes?  
a. Nucli  
b. Ribosoma  
c. Lisosoma  
d. Vacúol  
Answer Key (Always review AI generated answers for accuracy - Math is more likely to be inaccurate)

a  
b  
b  
c  
b  }

I el resultat ha sigut el següent:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<quiz>
  <question type="multichoice">
    <name>
      <text>Quina és la funció principal del nucli cel·lular?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quina és la funció principal del nucli cel·lular?</p>]]></text>
    </questiontext>
    <answer fraction="100">
      <text>Controlar les activitats cel·lulars</text>
    </answer>
    <answer fraction="0">
      <text>Proporcionar energia a la cèl·lula</text>
    </answer>
    <answer fraction="0">
      <text>Sintetitzar proteïnes</text>
    </answer>
    <answer fraction="0">
      <text>Emmagatzemar lípids</text>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quina estructura cel·lular està involucrada principalment en la producció d'energia?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quina estructura cel·lular està involucrada principalment en la producció d'energia?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Nucli</text>
    </answer>
    <answer fraction="100">
      <text>Mitocòndria</text>
    </answer>
    <answer fraction="0">
      <text>Ribosoma</text>
    </answer>
    <answer fraction="0">
      <text>Reticle endoplasmàtic</text>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quina part de la cèl·lula conté enzims que ajuden a la digestió de material cel·lular?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quina part de la cèl·lula conté enzims que ajuden a la digestió de material cel·lular?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Aparell de Golgi</text>
    </answer>
    <answer fraction="100">
      <text>Lisosoma</text>
    </answer>
    <answer fraction="0">
      <text>Cloroplast</text>
    </answer>
    <answer fraction="0">
      <text>Centríol</text>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quin és el paper principal de la membrana plasmàtica?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quin és el paper principal de la membrana plasmàtica?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Sintetitzar lípids</text>
    </answer>
    <answer fraction="0">
      <text>Mantenir l'equilibri osmòtic</text>
    </answer>
    <answer fraction="100">
      <text>Controlar el que entra i surt de la cèl·lula</text>
    </answer>
    <answer fraction="0">
      <text>Produir glucosa</text>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quin orgànul és responsable de la síntesi de proteïnes?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quin orgànul és responsable de la síntesi de proteïnes?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Nucli</text>
    </answer>
    <answer fraction="100">
      <text>Ribosoma</text>
    </answer>
    <answer fraction="0">
      <text>Lisosoma</text>
    </answer>
    <answer fraction="0">
      <text>Vacúol</text>
    </answer>
  </question>
</quiz>
```

Aquest text el copiem en un fitxer (creat amb el notepad de windows) i el guardem com a **questions.xml**.

Al nostre Aules afegirem un Qüestionari en "Afig una activitat o recurs":

![Qüestionari d'Aules](img/41.png){ width=70% }

No hi ha que modificar res més, simplement li donem a "Guarda els canvis i torna al curs" i ja tindrem el nostre qüestionari creat.

I entrarem al nostre qüestionari i anirem a Banc Banc de preguntes:

![Banc de preguntes](img/42.png){ width=70% }

Una vegada ací li donem a "Importa":

![Importa](img/43.png){ width=70% }

Hem d'escollir les següents opcions:

* Format XML de Moodle
* Arrastrar i soltar el fitxer o navegar per a pujar-lo

![Opcions](img/44.png){ width=70% }

Ara podrem veure les preguntes que hem creat:

![Preguntes](img/45.png){ width=70% }

:::tip
A partir d'ara us recomane estos passos per a tindre les qüestions un poc més organitzades al vostre curs.
:::

Seleccionem totes les qüestions i despleguem el menú de baix i li donem a "Mou a...":

![Mou a](img/46.png){ width=70% }

Si este al Qüestionari 1 escollim per defecte en Qüestionari 1 i li donem a "Mou a":

![Mou a](img/47.png){ width=70% }

Una vegada hem fet això tenim les nostres preguntes al nostre banc de preguntes, però no això no significa que estiguen al qüestionari, per a posar-les al qüestionari hem de fer el següent:

1. Anem al nostre qüestionari i li donem a "Afig una pregunta":

![Qüestionari](img/48.png){ width=70% }

2. Després anem al menú Afig i diem del Banc de preguntes:
  
![Afegir pregunta](img/49.png){ width=70% }

Finalment escollim l'opció "Per defecte en Qüestionari 1" i fem clic en Aplica Filtres:

![Filtres](img/50.png){ width=70% }

Quan apliquem filtres Seleccionem totes les preguntes i li donem a "Afeg les preguntes seleccionades al qüestionari":

![Afegir preguntes](img/51.png){ width=70% }

I ja tindrem les nostres preguntes afegides al qüestionari:

![Preguntes](img/52.png){ width=70% }

:::tip
Hem fet este procés molt detalladament ja que molta gent es lia als qüestinaris del Moodle. Per a molts de vosaltres serà una tasca senzilla. També és cert que estem parlant de 5 qüestions, però si volem fer un qüestionari de 20 preguntes pot estalviar-nos molta feina.
:::

També podem afegir:

\awesomebox[violet]{2pt}{\faRobot}{violet}{Crea un feedback del següent qüestionari de moodle: (Aquí añadimos el código de las preguntas de Moodle)
}

I la resposta serà esta amb un feedback de cada qüestió:

Fixeu-vos com ens ha afegit este camp:

```xml
      <feedback>
        <text>Correcte! El nucli cel·lular és el centre de control de la cèl·lula.</text>
      </feedback>
```

Ací tindriem la resposta, però té un problema:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<quiz>
  <question type="multichoice">
    <name>
      <text>Quina és la funció principal del nucli cel·lular?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quina és la funció principal del nucli cel·lular?</p>]]></text>
    </questiontext>
    <answer fraction="100">
      <text>Controlar les activitats cel·lulars</text>
      <feedback>
        <text>Correcte! El nucli cel·lular és el centre de control de la cèl·lula.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Proporcionar energia a la cèl·lula</text>
      <feedback>
        <text>No és correcte. La principal funció del nucli cel·lular és controlar les activitats cel·lulars.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Sintetitzar proteïnes</text>
      <feedback>
        <text>Incorrecte. El nucli controla les activitats cel·lulars, no sintetitza proteïnes directament.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Emmagatzemar lípids</text>
      <feedback>
        <text>No, el nucli cel·lular no emmagatzema lípids, controla les activitats cel·lulars.</text>
      </feedback>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quina estructura cel·lular està involucrada principalment en la producció d'energia?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quina estructura cel·lular està involucrada principalment en la producció d'energia?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Nucli</text>
      <feedback>
        <text>No és correcte. El nucli no està involucrat principalment en la producció d'energia.</text>
      </feedback>
    </answer>
    <answer fraction="100">
      <text>Mitocòndria</text>
      <feedback>
        <text>Correcte! La mitocòndria és la font principal de producció d'energia en la cèl·lula.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Ribosoma</text>
      <feedback>
        <text>Incorrecte. Els ribosomes són responsables de la síntesi de proteïnes, no de la producció d'energia.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Reticle endoplasmàtic</text>
      <feedback>
        <text>No, el reticle endoplasmàtic no és principalment responsable de la producció d'energia.</text>
      </feedback>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quina part de la cèl·lula conté enzims que ajuden a la digestió de material cel·lular?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quina part de la cèl·lula conté enzims que ajuden a la digestió de material cel·lular?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Aparell de Golgi</text>
      <feedback>
        <text>No és correcte. L'Aparell de Golgi no conté enzims de digestió de material cel·lular.</text>
      </feedback>
    </answer>
    <answer fraction="100">
      <text>Lisosoma</text>
      <feedback>
        <text>Correcte! Els lisosomes contenen enzims que ajuden a la digestió de material cel·lular.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Cloroplast</text>
      <feedback>
        <text>Incorrecte. Els cloroplasts no contenen enzims de digestió de material cel·lular.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Centríol</text>
      <feedback>
        <text>No, els centríols no estan involucrats en la digestió de material cel·lular.</text>
      </feedback>
    </answer>
  </question>
  
  <question type="multichoice">
    <name>
      <text>Quin és el paper principal de la membrana plasmàtica?</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>Quin és el paper principal de la membrana plasmàtica?</p>]]></text>
    </questiontext>
    <answer fraction="0">
      <text>Sintetitzar lípids</text>
      <feedback>
        <text>Incorrecte. La membrana plasmàtica no és responsable de sintetitzar lípids.</text>
      </feedback>
    </answer>
    <answer fraction="0">
      <text>Mantenir l'equilibri osmòtic</text>
      <feedback>
        <text>No és correcte. La principal funció de la membrana plasmàtica no és mantenir l'equilibri osmòtic.</text>
      </feedback>
    </answer>
    <answer fraction="100">
      <text>Controlar el que entra i surt de la cèl·lula</text>
      <feedback>
        <text>Correcte! La funció principal de la membrana plasmàtica és controlar el que entra i surt de la cèl·lula.</text>
      </feedback>
    </answer>
    ...
```

En aquest cas Copilot té un limit de tamany de resposta, si volguerem fer feedback de totes les qüestions deuriem anar de dos en dos o de tres en tres, depenent de la llargària de les qüestions.

:::warning
En cap moment he revisat que les respostes siguen correctes, perfectament podrien ser incorrectes. Així que és important revisar-les.
:::

Finalment per a donarl-li un últim toc al nostre curs crearíem un vídeo.

## Vídeo

Per a crear un vídeo podríem utilitzar la ferramenta https://simpleshow.com/ que ens permet crear vídeos de manera senzilla i ràpida. En aquest cas farem un vídeo de sobre la cèl·lula.

![Simpleshow](img/53.png){ width=70% }

HEm de donar un títol a la història i crear el nostre guió del vídeo:

![Guió](img/56.png){ width=70% }

:::tip
Per a fer el guió hem utiltizat Copilot que el resultat era molt millor.
:::

Finalment pots editar el vídeo i canviar les imatges que utilitza, la qual cosa és molt recomanable en aquest cas ja que el seu banc d'imatges no és massa gran. Però podem comprobar el resultat ací:

[https://videos.simpleshow.com/jeqomMgovT](https://videos.simpleshow.com/jeqomMgovT)

Podríem afegir el vídeo al nostre curs i ja tindríem la nostra unitat completada.

![Vídeo](img/58.png){ width=70% }

## Conclusió

La intel·ligència artificial no ens proporciona tota la feina feta, sinó que actua com una eina poderosa per facilitar i agilitzar les nostres tasques. Ens permet automatitzar processos repetitius, generar contingut de manera eficient i oferir solucions ràpides a problemes complexos. No obstant això, és essencial que els usuaris mantinguem un paper actiu en la supervisió i validació dels resultats generats per la IA. Així, podem assegurar-nos que les solucions proposades s'ajusten a les nostres necessitats específiques i mantenen un alt nivell de qualitat. En resum, la IA és una aliada que ens ajuda a ser més productius i creatius, però la nostra intervenció i criteri continuen sent fonamentals per obtenir els millors resultats.