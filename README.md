# Bitacora Comandos Linux
 Descripcion, Opciones y Ejemplos


ip addr
=======


Muestra IPs, manipula el routing, dispositivos de red, intercaes y tuneles.

OPCIONES:

-V, -Version
              Print the version of the ip utility and exit.

       -h, -human, -human-readable
              output statistics with human readable values followed by suffix.

       -b, -batch <FILENAME>
              Read commands from provided file or standard input and invoke them.  First
              failure will cause termination of ip.

       -force Don't terminate ip on errors in batch mode.  If there were any errors during
              execution of the commands, the application return code will be non zero.

       -s, -stats, -statistics
              Output more information. If the option appears twice or more, the amount of
              information increases.  As a rule, the information is statistics or some time
              values.

       -d, -details
              Output more detailed information.

       -l, -loops <COUNT>
              Specify maximum number of loops the 'ip address flush' logic will attempt be‐
              fore giving up. The default is 10.  Zero (0) means loop until all addresses
              are removed.

       -f, -family <FAMILY>
              Specifies the protocol family to use. The protocol family identifier can be
              one of inet, inet6, bridge, mpls or link.  If this option is not present, the
              protocol family is guessed from other arguments. If the rest of the command
              line does not give enough information to guess the family, ip falls back to
              the default one, usually inet or any.  link is a special family identifier
              meaning that no networking protocol is involved.

       -4     shortcut for -family inet.

       -6     shortcut for -family inet6.

       -B     shortcut for -family bridge.

       -M     shortcut for -family mpls.

       -0     shortcut for -family link.

       -o, -oneline
              output each record on a single line, replacing line feeds with the '\' charac‐
              ter. This is convenient when you want to count records with wc(1) or to
              grep(1) the output.

       -r, -resolve
              use the system's name resolver to print DNS names instead of host addresses.

       -n, -netns <NETNS>
              switches ip to the specified network namespace NETNS.  Actually it just sim‐
              plifies executing of:

              ip netns exec NETNS ip [ OPTIONS ] OBJECT { COMMAND | help }

              to

              ip -n[etns] NETNS [ OPTIONS ] OBJECT { COMMAND | help }

       -N, -Numeric
              Print the number of protocol, scope, dsfield, etc directly instead of convert‐
              ing it to human readable name.

       -a, -all
              executes specified command over all objects, it depends if command supports
              this option.

       -c[color][={always|auto|never}
              Configure color output. If parameter is omitted or always, color output is en‐
              abled regardless of stdout state. If parameter is auto, stdout is checked to
              be a terminal before enabling color output. If parameter is never, color out‐
              put is disabled. If specified multiple times, the last one takes precedence.
              This flag is ignored if -json is also given.

               Used color palette can be influenced by COLORFGBG environment variable (see
              ENVIRONMENT).

       -t, -timestamp
              display current time when using monitor option.

       -ts, -tshort
              Like -timestamp, but use shorter format.

       -rc, -rcvbuf<SIZE>
              Set the netlink socket receive buffer size, defaults to 1MB.

       -iec   print human readable rates in IEC units (e.g. 1Ki = 1024).

       -br, -brief
              Print only basic information in a tabular format for better readability. This
              option is currently only supported by ip addr show and ip link show commands.

       -j, -json
              Output results in JavaScript Object Notation (JSON).

       -p, -pretty
              The default JSON format is compact and more efficient to parse but hard for
              most users to read.  This flag adds indentation for readability.


EJEMPLOS:

       ip addr
           Shows addresses assigned to all network interfaces.

       ip neigh
           Shows the current neighbour table in kernel.

       ip link set x up
           Bring up interface x.

       ip link set x down
           Bring down interface x.

       ip route
           Show table routes.


apt 
====

apt es una interface para el manejo del sistema de paquetes. Esta diseñada para el usuario final y permite algunas opciones mejores para uso interactivo.

OPCIONES:


       list - lista los paquetes según los nombres
       search - busca en las descripciones de los paquetes
       show - muestra detalles del paquete
       install - instala paquetes
       reinstall - reinstalar paquetes
       remove - elimina paquetes
       autoremove - Elimina automáticamente todos los paquetes sin utilizar
       update - actualiza la lista de paquetes disponibles
       upgrade - actualiza el sistema instalando/actualizando paquetes
       full-upgrade - actualiza el sistema eliminando/instalando/actualizando paquetes
       edit-sources - edita el fichero de información de fuentes
       satisfy - satisfacer cadenas de dependencias


EJEMPLOS:

apt show firefox

Package: firefox
Version: 85.0+build1-0ubuntu0.20.04.1
Priority: optional
Section: web
Origin: Ubuntu

apt list thunderbird

Listando... Hecho
thunderbird/focal-updates,focal-security,now 1:68.10.0+build1-0ubuntu0.20.04.1 amd64 [instalado]
N: Hay 1 versión adicional. Utilice la opción «-a» para verla



lsb_release 
===========

Imprime informacion especifica de la distribucion

OPCIONES:


       The program follows the usual GNU command line syntax, with long options starting with two dashes (`--').  A summary of options are included below.

       -v, --version
              Show  the  version of the LSB against which your current installation is compliant.  The version is expressed as a colon separated list of LSB module
              descriptions.

       -i, --id
              Display the distributor's ID.

       -d, --description
              Display a description of the currently installed distribution.

       -r, --release
              Display the release number of the currently installed distribution.

       -c, --codename
              Display the code name of the currently installed distribution.

       -a, --all
              Display all of the above information.

       -s, --short
              Use the short output format for any information displayed.  This format omits the leading header(s).

       -h, --help
              Show summary of options.


EJEMPLOS:

lsb_release -d

Description:	Ubuntu 20.04.2 LTS

lsb_release -a

No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 20.04.2 LTS
Release:	20.04
Codename:	focal


sudo
====

Sudo permite a otro usuario ejecutar un comando como super usuario o como otro usuario, como especificado por la politica de seguridad. 

OPCIONES:

  	-A, --askpass                 utilizar un programa auxiliar para la solicitud de contraseña
  	-b, --background              ejecutar comando en segundo plano
 	-B, --bell                    ring bell when prompting
  	-C, --close-from=num          cerrar todos los descriptores de archivo >= num
  -E, --preserve-env            conservar entorno del usuario al ejecutar el comando
      --preserve-env=list       conservar las variables de entorno específicas
  -e, --edit                    editar archivos en lugar de ejecutar un comando
  -g, --group=group             ejecutar comandos según el nombre o ID de grupo especificado
  -H, --set-home                asignar la variable HOME al directorio de inicio del usuario
  -h, --help                    mostrar mensaje de ayuda y salir
  -h, --host=host               ejecutar comando en host (si lo admite el complemento)
  -i, --login                   ejecutar consola de sesión como usuario de destino; también se puede especificar un comando
  -K, --remove-timestamp        eliminar archivo de marca de tiempo por completo
  -k, --reset-timestamp         invalidar archivo de marca de tiempo
  -l, --list                    enumerar privilegios del usuario o comprobar un comando específico; utilizar dos veces para un formato más largo
  -n, --non-interactive         modo no interactivo, no se utiliza ninguna solicitud
  -P, --preserve-groups         conservar vector de grupos en vez de establecer de objetivo
  -p, --prompt=prompt           utilizar la solicitud de contraseña especificada
  -r, --role=role               crear contexto de seguridad SELinux con el rol especificado
  -S, --stdin                   leer contraseña de entrada estándar
  -s, --shell                   ejecutar consola como el usuario de destino; también se puede especificar un comando
  -t, --type=type               crear contexto de seguridad SELinux con el tipo especificado
  -T, --command-timeout=timeout orden de finalizar después del tiempo límite especificado
  -U, --other-user=user         en modo de lista, mostrar privilegios del usuario
  -u, --user=user               ejecutar comando (o editar archivo) como el nombre o ID de usuario especificado
  -V, --version                 mostrar información de la versión y salir
  -v, --validate                actualizar marca de tiempo del usuario sin ejecutar un comando
  --                            detener procesamiento de argumentos de línea de comando



EJEMPLOS:

To get a file listing of an unreadable directory:

           $ sudo ls /usr/local/protected

To edit the index.html file as user www:

           $ sudoedit -u www ~www/htdocs/index.html


ls
==

Lista el contenido de un directorio

OPCIONES:

  -a, --all                  no oculta las entradas que comienzan con .
  -A, --almost-all           no muestra las entradas . y .. implícitas
      --author               con -l, imprime el autor de cada fichero
  -b, --escape               imprime escapes en estilo C para los caracteres no
                             gráficos
      --block-size=SIZE      with -l, scale sizes by SIZE when printing them;
                               e.g., '--block-size=M'; see SIZE format below
  -B, --ignore-backups       do not list implied entries ending with ~
  -c                         with -lt: sort by, and show, ctime (time of last
                               modification of file status information);
                               with -l: show ctime and sort by name;
                               otherwise: sort by ctime, newest first
  -C                         list entries by columns
      --color[=WHEN]         colorize the output; WHEN can be 'always' (default
                               if omitted), 'auto', or 'never'; more info below
  -d, --directory            list directories themselves, not their contents
  -D, --dired                generate output designed for Emacs' dired mode
  -f                         no ordena, utiliza -aU, no utiliza -ls --color
  -F, --classify             añade un indicador (uno de */=@|) a las entradas
      --file-type            similar, pero no añade '*'
      --format=PALABRA       across -x, commas -m, horizontal -x, long -l,
                               single-column -1, verbose -l, vertical -C
      --full-time            como -l --time-style=full-iso
  -g                         como -l, pero no lista el propietario
      --group-directories-first
                             agrupa directorios antes que los ficheros;
                               se puede añadir una opción --sort, pero cualquier
                               uso de --sort=none (-U) desactiva la agrupación
  -G, --no-group             in a long listing, don't print group names
  -h, --human-readable       with -l and -s, print sizes like 1K 234M 2G etc.
      --si                   likewise, but use powers of 1000 not 1024
  -H, --dereference-command-line
                             sigue los enlaces simbólicos en la línea de
                             órdenes
      --dereference-command-line-symlink-to-dir
                             sigue cada enlace simbólico en la línea de
                               órdenes que apunte a un directorio
      --hide=PATRÓN          no lista las entradas implícitas que coinciden
                               con el patrón de shell PATRÓN
                               (las opciones -a o -A tienen prioridad)
      --hyperlink[=WHEN]     hyperlink file names; WHEN can be 'always'
                               (default if omitted), 'auto', or 'never'
      --indicator-style=WORD  append indicator with style WORD to entry names:
                               none (default), slash (-p),
                               file-type (--file-type), classify (-F)
  -i, --inode                print the index number of each file
  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN
  -k, --kibibytes            default to 1024-byte blocks for disk usage;
                               used only with -s and per directory totals
  -l                         utiliza un formato de listado largo
  -L, --dereference          al mostrar la información de un fichero para un
                               enlace simbólico, muestra la información del
                               fichero al que apunta el enlace en lugar de la
                               del propio enlace
  -m                         rellena el ancho con una lista de entradas
                             separadas por comas
  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs
  -N, --literal              print entry names without quoting
  -o                         like -l, but do not list group information
  -p, --indicator-style=slash
                             append / indicator to directories
  -q, --hide-control-chars   print ? instead of nongraphic characters
      --show-control-chars   show nongraphic characters as-is (the default,
                               unless program is 'ls' and output is a terminal)
  -Q, --quote-name           enclose entry names in double quotes
      --quoting-style=WORD   use quoting style WORD for entry names:
                               literal, locale, shell, shell-always,
                               shell-escape, shell-escape-always, c, escape
                               (overrides QUOTING_STYLE environment variable)
  -r, --reverse              invierte el orden, en su caso
  -R, --recursive            muestra los subdirectorios recursivamente
  -s, --size                 muestra el tamaño de cada fichero, en bloques
  -S                         sort by file size, largest first
      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),
                               time (-t), version (-v), extension (-X)
      --time=WORD            with -l, show time as WORD instead of default
                               modification time: atime or access or use (-u);
                               ctime or status (-c); also use specified time
                               as sort key if --sort=time (newest first)
      --time-style=TIME_STYLE  time/date format with -l; see TIME_STYLE below
  -t                         ordena por la fecha de modificación, el más
                               reciente primero
  -T, --tabsize=COLS         establece los topes de tabulación a cada COLS
                             en lugar de 8
  -u                         with -lt: sort by, and show, access time;
                               with -l: show access time and sort by name;
                               otherwise: sort by access time, newest first
  -U                         do not sort; list entries in directory order
  -v                         natural sort of (version) numbers within text
  -w, --width=COLS           set output width to COLS.  0 means no limit
  -x                         list entries by lines instead of by columns
  -X                         sort alphabetically by entry extension
  -Z, --context              print any security context of each file
  -1                         list one file per line.  Avoid '\n' with -q or -b
      --help     muestra esta ayuda y finaliza
      --version  informa de la versión y finaliza



EJEMPLOS:

ls

Descargas  Documentos  Escritorio  Imágenes  Música  Plantillas  Público  snap  Vídeos

ls 

Descargas/
250d3f5f571b8aeb3a8fa9b42be116925faa83db.jpeg

pwd
===

Imprime el nombre del actual folder donde se encuentra

OPCIONES:


       -L, --logical
              use PWD from environment, even if it contains symlinks

       -P, --physical
              avoid all symlinks

       --help display this help and exit

       --version
              output version information and exit

       If no option is specified, -P is assumed.

       NOTE:  your  shell may have its own version of pwd, which usually supersedes the version described here.  Please refer to your shell's documentation for de‐
       tails about the options it supports.

EJEMPLOS:

pwd

/home/user

pwd

/home/user/Documentos

mkdir
====

Crea directorio

OPCIONES:

       -m, --mode=MODE
              set file mode (as in chmod), not a=rwx - umask

       -p, --parents
              no error if existing, make parent directories as needed

       -v, --verbose
              print a message for each created directory

       -Z     set SELinux security context of each created directory to the default type

       --context[=CTX]
              like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX

       --help display this help and exit

       --version
              output version information and exit

EJEMPLOS:

mkdir test

mkdir test2 -p


cd
===

Cambia el directorio actual de trabajo

OPCIONES:

      -L	fuerza a seguir los enlaces simbólicos: resuelve los enlaces
    		simbólicos en DIR después de procesar las instancias de `..'
      -P	usa la estructura física de directorios sin seguir los enlaces
    		simbólicos: resuelve los enlaces simbólicos en DIR antes de procesar
    		las instancias de `..'
      -e	si se da la opción -P y el directorio actual de trabajo no se
    		puede determinar con éxito, termina con un estado diferente de cero.

      La acción por defecto es seguir los enlaces simbólicos, como si se
      especificara `-L'.
      `..' se procesa quitando la componente del nombre de la ruta inmediatamente
      anterior hasta una barra inclinada o el comienzo de DIR.

EJEMPLOS:

user@computername:~$cd ..

user@computername:~$/home$

user@computername:~$ cd Documentos/test

user@computername:~/Documentos/test$


touch
=====

Actualiza la fecha de acceso y modificación de cada FICHERO a la hora actual.

Tambien se puede utilizar para crear archivos.

OPCIONES:

  -a                     cambia solamente la fecha de acceso
  -c, --no-create        no crea ningún fichero
  -d, --date=CADENA      examina y utiliza CADENA en lugar de la fecha actual
  -f                     (no tiene efecto)
  -h, --no-dereference   afecta a cada enlace simbólico en lugar de a los
                         ficheros referidos (solamente es útil en sistemas
                         que pueden cambiar el propietario de un enlace
                         simbólico)
  -m                     cambia solamente la fecha de modificación
  -r, --reference=FICHERO utiliza la fecha de este FICHERO en lugar de la fecha
                          actual
  -t FECHA                utiliza [[SS]AA]MMDDhhmm[.ss] en lugar de la fecha
                          actual
      --time=PALABRA      establece la fecha dada por PALABRA:
                            PALABRA es access, atime o use: equivale a -a
                            PALABRA es modify o mtime: equivale a -m
      --help     muestra esta ayuda y finaliza
      --version  informa de la versión y finaliza

Tenga en cuenta que las opciones -d y -t aceptan formatos de
hora-fecha distintos.


EJEMPLOS:


user@computername:~$touch test

user@computername:~$touch -a test

cat
===

Concatena archivos e imprime en la salida estandar

OPCIONES:

-A, --show-all           equivalent to -vET
  -b, --number-nonblank    number nonempty output lines, overrides -n
  -e                       equivalent to -vE
  -E, --show-ends          display $ at end of each line
  -n, --number             number all output lines
  -s, --squeeze-blank      suppress repeated empty output lines
  -t                       equivalente a -vT
  -T, --show-tabs          muestra los caracteres de tabulación como ^I
  -u                       (sin efecto)
  -v, --show-nonprinting   utiliza la notación ^ y M-, salvo para LFD y TAB
      --help     muestra esta ayuda y finaliza
      --version  informa de la versión y finaliza

EJEMPLOS:

   cat f - g Muestra los contenidos de f, luego la entrada estándar,
              luego los contenidos de g.
   cat       Copia la entrada estándar en la salida estándar.





