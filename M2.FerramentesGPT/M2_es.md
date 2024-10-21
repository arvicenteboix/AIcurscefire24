---
# Información general del documento
title: 2. Herramientas GPT
lang: es
page-background: img/bg.png
linkcolor: blue

# Portada
titlepage: true
titlepage-rule-height: 2
titlepage-rule-color: e6e6e6
titlepage-texto-color: e6e6e6
titlepage-background: img/U2c.png

# Tabla de contenidos
toque: true
toque-own-page: true
toque-title: Contenidos

# Cabeceras y pies
header-left: 2. Herramientas GPT
header-right: Curso 2024-2025
footer-left: Red CEFIRE
footer-right: \thepage/\pageref{LastPage}

# Imágenes
float-placement-figuro: H
caption-justification: centering

# Listados de código
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

<!-- IMATGE ![Pregunta inicial](./img/proxi/5b.png) -->

<!-- \textbf{greatest} -->

<!-- \awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{greatest}} -->

\vspace{\fill}

![](img/cc.png){ height=50px }

Este documento está sujeto a una licencia creative commons que permite su difusión y uso comercial reconociendo siempre la autoría de su creador. Este documento se encuentra para ser modificado en el siguiente repositorio de github:
<!-- CANVIAR L'ENLLAÇ -->
[https://github.com/arvicenteboix/AIcurscefire24](https://github.com/arvicenteboix/AIcurscefire24)
\newpage

# Introducción

En esta unidad nos centraremos en aquellas aplicaciones de las que todo el mundo habla. Y, por supuesto, aquellas que pueden facilitarnos más la tarea como docentes. Sin embargo, es importante destacar que el objetivo de este curso no es explorar todo el potencial de las herramientas GPT para los docentes, sino tener un primer contacto con estas herramientas.

Cabe mencionar que nos hemos centrado en la parte gratuita de estas herramientas, pero es importante señalar que la versión de pago ofrece mejores resultados y presenta funcionalidades muy convenientes para nuestra tarea, como la creación de GPTs.


# ¿Qué es GPT?

GPT es una sigla que significa "Generative Pre-trained Transformers". Es una tecnología que ayuda a las máquinas a entender el lenguaje humano y a responder a preguntas de manera parecida a cómo lo haría una persona, es más, podemos interactuar con ella. Esto significa que las máquinas pueden escribir textos, resumir información, hacer traducciones y algunas cosas más que veremos más adelante. Esto es posible gracias a una **red neuronal** que ha aprendido a partir de muchos datos y que puede generar contenido nuevo a partir del que ha aprendido. GPT es una tecnología muy útil para muchas cosas diferentes, es más, cada vez que habláis con ella está aprendiendo de aquello que habla con vosotros, así que cada vez tendrá mejores respuestas.

# MODELOS GPT

Los tres servicios más conocidos, aunque no son los únicos, son ChatGPT, Gemini[^1] y Copilot. Nosotros nos centraremos en estos 3. En esencia, son ventanas de chat, aunque la implementación de cada uno refleja un lenguaje de diseño diferente. **Gemini** es el más minimalista, mientras que **Bing Copilot** es el menos sencillo y se centra más en la funcionalidad.

En cuanto a las capacidades de cada uno, **ChatGPT** es mejor para conversar, mientras que **Bing Copilot** es más adecuado para investigar. Por ejemplo, puede buscar en la web y proporcionar resultados de búsqueda, mientras que **ChatGPT** se centra en responder preguntas y mantener una conversación fluida.

Además, **Bing Copilot** es el más transparente, ya que al final de cada respuesta pone las fuentes de donde ha obtenido la información. Por otro lado, **Google Gemini** tiene una opción para hacer una búsqueda de la pregunta que has hecho, y **ChatGPT** no ofrece ninguna pista de dónde ha sacado la información (ya que no proporciona enlaces web).

[^1]: Antes llamado **Bard**.

:::note
Obviamente, esta información está basada en experiencia personal y en la lectura de algunos artículos que te dan una idea de las características de cada uno. Se trata de diferentes modelos (importante el hecho de ser diferentes) que van creciendo con el tiempo.
(1) [https://www.androidauthority.com/chatgpt-vs-bing-chat-3292126/](https://www.androidauthority.com/chatgpt-vs-bing-chat-3292126/)
(2) [https://zapier.com/blog/chatgpt-vs-bard/](https://zapier.com/blog/chatgpt-vs-bard/)
:::

## ChatGPT

Para poder utilizar chatGPT, en primer lugar debemos registrarnos. Iremos a la página de [ChatGPT](https://chat.openai.com/auth/login)

![Registrarse en ChatGPT](img/1.png){ width=70% }

Podemos empezar directamente haciendo clic en "Start now" y nos aparecerá la siguiente pantalla:

![Chatear con ChatGPT](img/11.png){ width=70% }

Podemos ver que no es necesario registrarse para empezar a chatear, pero si queremos guardar las conversaciones o acceder a más funcionalidades, será necesario registrarse. Hacemos clic en "Crear una cuenta" y nos aparecerá la siguiente pantalla:

![Registrarse en ChatGPT](img/2.png){ width=70% }

:::warning
Como os hemos comentado antes, podéis crear un correo electrónico para este curso, ya que no es necesario que sea vuestro correo electrónico personal. De esta manera podréis utilizarlo para registraros en las diferentes plataformas que vamos a utilizar sin temer que vuestros datos estén en otras plataformas.
:::

:::tip
No vamos a explicar cómo se registra en cada una de las plataformas, pero una vez escojas una de todas ellas, es muy recomendable utilizar un correo habitual ya que guardará las conversaciones y podrás acceder a ellas en cualquier momento.
:::

Una vez ya te hayas registrado podrás acceder directamente a la página de chatGPT para empezar, y ya le podemos plantear una cuestión:

[https://chat.openai.com/](https://chat.openai.com/)

\awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{¿Qué IA es mejor, ChatGPT, Gemini o Copilot (responde en menos de 100 palabras)}\hfill \break
ChatGPT, Gemini y Copilot tienen enfoques diferentes. ChatGPT es versátil y potente para conversaciones, respuestas creativas y conocimiento general. Gemini (de Google) destaca por integrarse con servicios de Google y la búsqueda en tiempo real. Copilot (de Microsoft) está optimizado para productividad en herramientas como Office y programación asistida. La "mejor" depende del uso: ChatGPT para conversaciones abiertas, Gemini para búsqueda integrada, y Copilot para automatización y eficiencia en aplicaciones específicas.}

![Respuesta de ChatGPT](img/3.png){ width=70% }

Podemos ver que debajo de cada respuesta hay 5 iconos que nos permitirán leer la respuesta por los altavoces, valorar la respuesta, copiar el texto para después pegarlo donde nos haga falta o que vuelva a regenerar la respuesta (incluso cambiando de modelo).

Si le pedimos los enlaces de la respuesta, no nos dará los enlaces de la respuesta:

![Enlaces de la respuesta](img/31.png){ width=70% }

## Bing Copilot

Para poder utilizar la herramienta de IA de Microsoft tampoco es necesario registrarse, podemos utilizarla directamente desde el navegador, podemos ir directamente a la página de [Bing](https://www.bing.com/) y ya podremos utilizar directamente la herramienta. Hacemos clic sobre el enlace *chat*":

![Bing Copilot](img/4.png){ width=70% }

Nos aparecerá esta pantalla y ya podemos preguntar directamente:

![Bing Copilot chat](img/5.png){ width=70% }

\awesomebox[violet]{2pt}{\faRobot}{violet}{\textbf{¿Qué IA es mejor, ChatGPT, Gemini o Copilot (responde en menos de 100 palabras)}\hfill \break
Comparar IA es como comparar diferentes tipos de herramientas: cada una tiene puntos fuertes únicos. ChatGPT es conocido por su capacidad de conversación general; Gemini es más especializado en ámbitos concretos. Yo, Copilot, soy tu compañero de conversación y ayuda personalizada creado por Microsoft. ¡Depende de tus necesidades!
}

Para que te dé enlaces a la respuesta, es necesario que le pidas que te dé más información, por ejemplo:

![Bing Copilot chat](img/6.png){ width=70% }

Podemos ver que la respuesta que nos da es bastante diferente a la que nos ha ofrecido ChatGPT, al igual que la anterior también nos permite copiar el texto y valorarlo. Una de las cosas destacables es que nos proporciona información de dónde ha extraído su respuesta y nos aporta los enlaces por si queremos ampliar información, pero es necesario que se lo pidas (es una de las cosas que han cambiado en las últimas actualizaciones).

## Gemini

En este caso tendremos que ir a la página de [Gemini](https://Gemini.google.com/chat). De la misma manera será necesario que te crees una cuenta de google y entres con esta cuenta, si no no la podrás utilizar, esta herramienta no permite el acceso sin registrarse.

![Gemini chat](img/7.png){ width=70% }

Podemos ver que mi historial está guardado a la izquierda y a la derecha podemos ver la conversación con la IA. En este caso le plantearemos la misma cuestión que a los otros dos modelos:

![Gemini chat](img/8.png){ width=70% }

En este caso no vamos a transcribir toda la respuesta porque es más larga que las otras, pero cabe destacar algunas cosas interesantes de esta interfaz (que no modelo).

* Nos permite al igual que las otras valorar la respuesta o regenerarla.
* Pero podemos ver que ya ha diseñado otras versiones
* La respuesta ha sido mucho más rápida que en las otras dos.
* Nos proporciona el icono de Google por si queremos ampliar información.
* Podemos compartir la respuesta e incluso responder con gmail.

En este caso si hacemos clic sobre el icono de Google nos aparecerán los enlaces de la respuesta.

## POE 

**Poe** es otro chatbot de propósito general. Puedes acceder desde aquí: [https://poe.com/login](https://poe.com/login). Presenta una serie de limitaciones por día pero es una herramienta bastante versátil.

POE es una plataforma muy conocida y muy utilizada para la creación de contenido. Esta plataforma ofrece una gran variedad de funciones y herramientas que permiten a los usuarios crear contenido de manera fácil y rápida. POE es una herramienta muy potente que permite a los usuarios crear contenido de manera eficiente y eficaz. Además, POE es una herramienta muy fácil de usar y muy intuitiva, lo que la hace ideal para todo tipo de usuarios, desde principiantes hasta expertos.

Si nos fijamos en la pantalla de chat, podemos ver que nos permite utilizar diferentes tipos de modelos.

![Gemini chat](img/82.png){ width=70% }

Pero una de las características que más me gusta respecto a las otras plataformas es la creación de bots, esto nos permitirá crear nuestro propio modelo de lenguaje y poder utilizarlo en cualquier momento. Esto es una de las cosas que más llama la atención de esta plataforma.

### ¿Qué es un bot?

Un bot es un programa informático que realiza tareas automatizadas. Los bots pueden ser utilizados para una gran variedad de tareas, como responder preguntas, realizar tareas repetitivas, enviar mensajes automáticos, etc. Los bots son muy útiles para automatizar tareas y mejorar la eficiencia de los procesos. Podrías generar un bot que respondiera las cuestiones de tus alumnos, por ejemplo, basándose en los apuntes que vosotros mismos habéis creado. Aunque si vuestros apuntes están basados en material que habéis encontrado en google, el bot probablemente no os será de mucha ayuda.

### Creación de bots

Para poder crear un bot, primero será necesario que nos registremos en la plataforma. Una vez registrados, iremos a la página principal y haremos clic en "Crear bot". Nos aparecerá la siguiente pantalla:

![Crear bot](img/poe1.png){ width=70% }

Como bot-base podemos escoger cualquiera de las opciones que nos presenta. Después en el apartado de Instrucción debemos darle una Introducción al prompt que utilizaremos[^2] y finalmente en Base de conocimiento debemos darle la fuente de donde queremos que extraiga la información, en este caso he utilizado el último BOE, ya que no hay ningún modelo entrenado con el BOE de hoy. Podemos subir todos los documentos que consideremos.

![Crear bot](img/poe3.png){ width=70% }

[^2]: Más adelante nos centraremos en la creación de prompts para poder definir mejor qué es lo que queremos. 

Una vez le damos a crear bot y le planteamos una pregunta nos da una respuesta basándose en los materiales que nosotros le hemos proporcionado:

![Pregunta ejemplo](img/poe4.png){ width=90% }

De esta manera tenemos un bot entrenado para responder lo que nosotros le hemos proporcionado. Esto nos permite crear nuestro modelo de lenguaje concreto según nuestras necesidades. De hecho, cuando hablamos con un bot de una compañía o de una plataforma, estamos hablando de un modelo de lenguaje que ha sido entrenado para responder a las preguntas más frecuentes de los usuarios.

:::caution
Debemos tener en cuenta que esta plataforma es de pago y que la versión gratuita tiene unas limitaciones diarias. Esto significa que si queremos utilizarla de manera continuada, será necesario que nos registremos en la versión de pago. Esto pasará en todas las plataformas. Pero cabe decir que esta es una de las pocas que nos permite crear bots.
En siguientes unidades hablaremos de otras similares como chatpdf que nos da resultados similares. En ChatGPT a los bots se les llama GPTs y se accede a ellos con la cuenta de pago.
:::

## Otros modelos conocidos

Aunque estos son los 3 modelos más conocidos, hay otros modelos de herramientas GPT que se pueden utilizar gratuitamente. A continuación, se presentan algunos ejemplos:

- **TextCortex** es una herramienta basada en GPT-4 que permite generar texto, traducir idiomas, escribir diferentes tipos de contenido creativo y responder preguntas de manera informativa. Ofrece un plan gratuito con un límite de 200 caracteres por generación. Podemos acceder desde [aquí](https://app.textcortex.com)
- **Writesonic** es una herramienta de redacción automatizada que utiliza GPT-3 para generar contenido de alta calidad, como artículos, anuncios, guiones, piezas musicales, correos electrónicos, cartas, etc. Ofrece un plan gratuito con un límite de 10 creaciones por día. Podemos acceder desde [aquí](https://app.writesonic.com/)
- **Copy AI** es una herramienta de creación de contenido que utiliza GPT-3 para generar textos, anuncios, guiones, piezas musicales, correos electrónicos, cartas, etc. Ofrece un plan gratuito con un límite de 2000 palabras. Podemos acceder desde [aquí](https://www.copy.ai/)
- **Rytr** es una herramienta de redacción automatizada que utiliza GPT-3. Ofrece un plan gratuito con un límite de 10000 palabras por mes. Podemos acceder desde [aquí](https://rytr.me/)

Especial mención a **Code llama 2** [https://ai.meta.com/llama/](https://ai.meta.com/llama/) se trata de un modelo de IA que puedes descargar en tu ordenador, pero requiere de conocimientos técnicos un poco avanzados para poder hacerlo funcionar y una máquina muy potente. Pero tendremos nuestro propio modelo de lenguaje en nuestro ordenador. Esta herramienta estará disponible en breve en nuestro país para poder acceder a ella sin necesidad de descargarla.

Como puedes ver, la disponibilidad de herramientas GPT gratuitas es muy grande y cada vez hay más oferta disponible. Esto facilita a los usuarios el acceso a las capacidades de estos modelos de lenguaje sin tener que pagar una suscripción.

## Entonces, qué herramienta tengo que elegir

Aquella que mejor se adapte a tus necesidades y a sus respuestas. Cada una de ellas ha tenido un entrenamiento diferente, por lo tanto a medida que vayas trabajando en cada una de ellas verás que siempre tiendes a utilizar la misma.

En este casa habría que utilizar varías y no centrarse en las 3 principales puesto que aquellas no tan conocidas pueden dar respuestas tan válidas o incluso mejor que las otras.

De todas maneras una cosa es cierta, un persona puede ser muy inteligente y tener una muy buena conversación pero si quien conversa en ella no es un buen conversador no podrá sacar su potencial.

Por eso hay que saber preguntar adecuadamente a la IA qué es lo que queremos y no puedes preguntar como un humano puesto que esta tecnología no sabe presuponer cosas después de hablar contigo, hay que ser claro con lo que preguntamos. Las cuestiones que le hacemos a la IA lo denominamos **prompts**. Si a la IA no le escribes un buen prompt, no funciona bien, y no te dará una buena respuesta.

# Creando prompts

Lo prompts, como ya hemos comentado, son aquellos comandos que vamos a darle a la inteligencia artificial, a partir de una cuestión o prompt esperamos tener la respuesta más parecida a la deseada. Una de las máximas que hay que aplicar en estos casos es que la cuestión tiene que ser tan clara que la IA no tenga que presuponer nada.

Un ejemplo claro lo podemos tener en las tareas del día a día, si en tu casa le pides a alguien "ve a hacer la compra" es posible que ya tenga una idea de lo que tiene que hacer, donde tiene que ir a comprar y en qué ciudad, cuando puedes ir a comprar, donde encontrar la lista de la compra, el presupuesto, los objetos prioritarios, las alternativas si no hay un producto y qué manías tienen los miembros de la familia. Todas estas cosas la IA no las sabe, por lo tanto los prompts no se pueden parecer a las cuestiones que planteamos en nuestro día a día, tenemos que definir más exactamente qué es lo que queremos.

Otra de las cuestiones que hay que tener en cuenta, y es muy importante, es que no es lo mismo preguntar de un tema que desconoces a otro que conoces, siempre podrás plantear mejor el prompt para poder obtener los mejores resultados.

Aquí trataremos de dar una serie de orientaciones para plantear prompts, al final, partiendo de estas orientaciones y en función de lo que vayas a realizar acabarás creándote tu propio esquema mental para sacar los resultados que más se adaptan a tus necesidades, y estos no tienen porque ser aptos para todos.

## Estructuras modulares para la creación de prompts

La estructura de referencia que Microsoft recomienda para la creación de prompts incluye cuatro elementos clave:

- **Objetivo**: El objetivo del prompt, es decir, lo que se quiere conseguir con la respuesta.
- **Contexto**: El contexto en que se hace la pregunta o se pide la respuesta.
- **Ejemplos**: Ejemplos concretos que ilustran lo que se quiere conseguir con la respuesta.
- **Expectativas**: Las expectativas para la respuesta, como por ejemplo la longitud, el contenido y el tono.

Las estructuras modulares son una manera eficaz de crear prompts claros y sencillos para diferentes tareas. Aquí tenemos una breve descripción de estructuras:

- **RTF**: RTF es una estructura modular para crear prompts de Rol, Tarea y Formato. Esta estructura es muy útil para crear prompts claros y sencillos para diferentes tareas. Aquí tenemos un ejemplo de cómo se puede utilizar la estructura RTF para crear un prompt:

    - **Role**: Profesor
    - **Task**: Explica como funciona el sistema solar.
    - **Formato**: Utiliza un lenguaje sencillo y ejemplos visuales.

- **TAG**: La estructura TAG (Task, Action, Goal) es una herramienta que se puede utilizar para definir tareas y objetivos claros y sencillos. La estructura TAG se compone de tres elementos:

    - ***Tarea**: La tarea que se tiene que realizar.
    - **Acción**: La acción que se tiene que llevar a cabo para completar la tarea.
    - **Objetivo**: El objetivo final de la tarea.

    La estructura TAG se puede utilizar para crear prompts que incluyen información sobre la tarea, la acción y el objetivo.

- **GAIDE**: La estructura GAIL (Goal, Actor, Instructions, Details, Examples) es una herramienta que se puede utilizar para crear prompts detallados y sencillos. La estructura GAIL se compone de cinco elementos:

    - **Objetivo**: El objetivo de la tarea.
    - **Usuario**: El usuario que tiene que completar la tarea.
    - **Instrucciones**: Las instrucciones detalladas para completar la tarea.
    - **Detalles**: Detalles adicionales sobre la tarea.
    - **Ejemplos**: Ejemplos de como completar la tarea.

    La estructura GAIL se puede utilizar para crear prompts que incluyen información detallada sobre el objetivo, el usuario, las instrucciones, los detalles y los ejemplos.

## Crea tu propia estructura que te funcione

En el apartado anterior hemos hablado de estructuras modulares que dan buenos resultados, pero al final, cada cual crea la suya y utiliza las guías que mejor le funcionan. Un ejemplo podría ser:

**Rol:** Hay que especificar qué tipo de rol quiere que asuma. Si le decimos a la IA que actúo como un niño de 8 años que va primaria no nos dará la misma respuesta que si le decimos que actúe como un psicólogo especialista en la infancia. 

**Objetivo:** Define con precisión lo que pretende la señal. Si se quiere un texto, indica qué tipo de texto, tema y propósito. Decid también si queréis un artículo o poema, por ejemplo. La audiencia a la cual se dirige, etc.

**Lenguaje:** Un prompt tiene la audiencia objetivo. Para generar un texto, por ejemplo, se especifica si es un artículo, lema, poema, etc., qué temas trata; en qué estilo tiene que estar escrito y para qué audiencia.

**Ejemplos:** Proporciona ejemplos sobre lo que esperas obtener con el prompt. Pueden ser textos que has leído o publicado, fotografías tuyas... parecidos a lo que te gustaría obtener. Los ejemplos permitirán a la IA familiarizarse con los datos y mejorar su rendimiento sin programación explícita.

**Formato:** Decid qué formato tiene que tener la salida de la IA y cuánta información queréis en cada línea. Decid si queréis que sea un poco poético o más prosaico, etc. Si dices que quieres una imagen, indica la medida, la resolución, la gamma de colores... cualquier detalle o requisito para hacer

Teniendo claro estos puntos ya podéis ir creando nuestros prompts. Os dejamos algunos consejos para mejorar vuestros prompts.

## Consejos para crear prompts

* Pregunta de manera clara y concisa. Esto ayudará a evitar posibles desviaciones y garantizar que la IA entienda qué estás preguntando.
* Utiliza un lenguaje específico. Facilita generar respuestas más precisas.
* Evita utilizar un lenguaje ambiguo o vago. Esto puede llevar a que la IA genere respuestas incorrectas o confusas.
* Específica el tipo de respuesta que estás buscando. Cómo quieres recibir la producción de salida para que sea relevante y se ajuste a tus necesidades
* Usa comodines de formato: redacción, tabla, listado, comparativa, diálogo, gráfico…
* Utiliza palabras clave: Actúa como... / Eres un...
* Crea una secuencia de prompts para ir acotando y llevando la IA hacia donde tú quieres.
* Guía la IA para que genere contenido basado en nuestros intereses.
* Si no estás seguro de la respuesta de la IA, pide que lo explique y argumente. Esto ayuda a comprender mejor la respuesta y a identificar cualquier sesgo o error potencial.
* Amenaza o dale una propina a la IA. Parece mentira pero, en alguna casos, amenazándola que tu vida corre peligro o que le vas a hacer un regalo puede dar mejores resultados que si no lo haces.

:::warning
Una de las cosas que debemos tener en cuenta cuando hacemos un prompt es que existe una cosa que se denominan **alucinaciones**. Las alucinaciones son invenciones de la inteligencia artificial que te da como una respuesta certera pero son totalmente falsas. Cómo en este caso en que forzamos a ChatGPT que nos escriba una reseña sin plantearse si es cierta o no.
:::

![Perico de los palotes](img/9.png){ width=70% }

:::warning
Algunos Chatbots no tienen toda la información actualizada a 2024 y pueden darte respuestas que no son ciertas en estos momentos.
:::

![Kamala Harris?](img/10.png){ width=70% }

Teniendo en cuenta que estamos escribiendo esta cuestión el 23 de octubre de 2024, la respuesta que nos ha dado la IA no es correcta. Hay que tener en cuenta que la información de la que dispone el modelo que estamos utilizando puede no estar actualizada.

Y, ciertamente, Copilot no quiere ni oír hablar del tema:

![¿Elecciones?](img/101.png){ width=70% }

# Creando prompts

En la [siguiente página](https://www.iberestudios.como/noticias/21-prompts-o-formas-de-preguntar-a-chatgpt-para-obtener-resultados-asombrosos/) podemos encontrar una serie de ejemplos de como crear buenos prompts:

> Por favor, actúa como un narrador. Inventarás historias entretenidas que sean atractivas, imaginativas y cautivadoras para el público. Pueden ser cuentos de hadas, historias educativas o cualquier otro tipo de historia que tenga el potencial de capturar la atención y la imaginación de las personas. Dependiendo del público objetivo, puedes elegir temas o temas específicos para tu sesión de cuentos. Por ejemplo, si son niños, puedes hablar sobre animales; si son adultos, los cuentos basados en la historia pueden involucrarlos mejor, etc. Mi primera solicitud es «Necesito una historia interesante sobre la perseverancia».

[Ejemplo de prompts](https://www.freepik.com/blog/es/escribir-prompts/) para imágenes:

> Una foto vintage 8K de gran realismo de una torre de reloj entrelazada con hiedra luminosa, cuyas hojas parpadean con luz bioluminiscente al atardecer.
Un intrincado paisaje urbano steampunk al amanecer, con engranajes de latón y vapor surgiendo de calles adoquinadas, todo ello renderizado con una asombrosa claridad 8K.

> Una imagen hiperrealista de un lago cristalino que refleja un cielo lleno de auroras en un prístino bosque 8K a medianoche.
Una ilustración 8K muy detallada de una gran biblioteca cpn estanterías que van del suelo al techo, escaleras ornamentadas y libros antiguos con títulos etéreos que brillan.

> Un mural realista en 8K de una metrópolis futurista, con coches suspendidos y letreros holográficos, reflejados en las superficies brillantes de la arquitectura de la ciudad.

> Una imagen hiperrealista en 8K de un intrincado dragón mecánico con escamas de cobre pulido y zafiro, enroscado alrededor de una torre medieval.

Ejemplo de generación de código, en este caso SQL.

> Mesa departments, columnas = [DepartmentId, DepartmentName]. Mesa students, columnas = [DepartmentId, StudentId, StudentName]. Crea una consulta MySQL para todos los estudiantes del departamento de Ciencias de la Computación.

# Bibliografía

Existe una [página muy interesante](https://www.promptingguide.ai/ca) sobre la creación de prompts que os recomendamos leer.