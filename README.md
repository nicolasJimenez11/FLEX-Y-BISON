# FLEX-Y-BISON

**INTRODUCCION**

El análisis léxico y sintáctico es una parte fundamental en el desarrollo de compiladores e intérpretes, ya que permite reconocer y procesar correctamente la estructura de un lenguaje. Las herramientas Flex y Bison facilitan este proceso mediante la generación automática de analizadores léxicos y parsers a partir de reglas y gramáticas definidas por el programador.

En este trabajo se desarrollaron y ejecutaron los ejemplos propuestos en el capítulo 1 del libro *Flex & Bison*, utilizando  Ubuntu y la terminal Linux para la compilación de los programas. A través de estos ejemplos se exploró el reconocimiento de patrones, la creación de tokens, y la construcción de una calculadora básica que demuestra la integración entre Flex y Bison.

Adicionalmente, se resolvieron los ejercicios planteados en el capítulo, incluyendo la implementación manual de un programa en lenguaje C para el conteo de palabras, con el objetivo de comparar la complejidad y eficiencia entre una solución desarrollada con Flex y otra escrita directamente en C.

**INSTALACION**

Las herramientas necesarias para trabajar con analizadores léxicos y sintácticos fueron **Flex**, **Bison** y el compilador **GCC**.

**COMANDO**

sudo apt install flex bison gcc

flex --version

bison --version

gcc --version

**EJECUCION DE LOS 5 EJEMPLOS DEL LIBRO**

Este ejemplo permite contar líneas, palabras y caracteres a partir de reglas definidas mediante expresiones regulares. El resultado mostrado corresponde al número total de coincidencias encontradas durante el análisis del texto ingresado. Se evidencia cómo Flex puede procesar cadenas de entrada de forma automática y eficiente sin necesidad de implementar manualmente el análisis carácter por carácter.


Ejemplo 1:

