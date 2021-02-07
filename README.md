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

user@computername:~$lsb_release -d

Description:	Ubuntu 20.04.2 LTS

user@computername:~$lsb_release -a

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

user@computername:~$ls

Descargas  Documentos  Escritorio  Imágenes  Música  Plantillas  Público  snap  Vídeos

user@computername:~/Descargas$ls 

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

user@computername:~$pwd

/home/user

user@computername:~/Documentos$pwd

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

user@computername:~$mkdir test

user@computername:~$mkdir test2 -p


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

   cat f - g 

		Muestra los contenidos de f, luego la entrada estándar,
              luego los contenidos de g.

   cat       

		Copia la entrada estándar en la salida estándar.


uname
=====

Muestra cierta informacion del sistema

OPCIONES:

	-a, --all            muestra toda la información, en el siguiente orden,
                         excepto que se omite -p y -i si son desconocidos:
  	-s, --kernel-name    muestra el nombre del núcleo
  	-n, --nodename       muestra el nombre de `host' del nodo de red
  	-r, --kernel-release muestra la versión del núcleo
  	-v, --kernel-version     print the kernel version
  	-m, --machine            print the machine hardware name
  	-p, --processor          print the processor type (non-portable)
  	-i, --hardware-platform  print the hardware platform (non-portable)
  	-o, --operating-system   print the operating system
      	--help     muestra esta ayuda y finaliza
      	--version  informa de la versión y finaliza


EJEMPLOS:

user@computername:~$uname --s

	Linux

user@computername:~$uname -a

	Linux ubuntu-ulacit 5.8.0-41-generic #46~20.04.1-Ubuntu SMP Mon Jan 18 17:52:23 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux


top
===

El programa top proporciona una vision dinamica en tiempo real de un sistema corriendo. Puede mostrar resumen del sistema asi como listar procesos or hilos actualmente manejados por el Linux kernel.


OPCIONES:

       -hv|-bcEHiOSs1 -d secs -n max -u|U user -p pid -o fld -w [cols]

       The typically mandatory switch (`-') and even whitespace are completely optional.

       -h | -v  :Help/Version
            Show library version and the usage prompt, then quit.

       -b  :Batch-mode operation
            Starts top in Batch mode, which could be useful for sending output from top to other programs or to a file.  In this mode, top will  not  accept  input
            and runs until the iterations limit you've set with the `-n' command-line option or until killed.

       -c  :Command-line/Program-name toggle
            Starts  top  with  the last remembered `c' state reversed.  Thus, if top was displaying command lines, now that field will show program names, and vice
            versa.  See the `c' interactive command for additional information.

       -d  :Delay-time interval as:  -d ss.t (secs.tenths)
            Specifies the delay between screen updates, and overrides the corresponding value in one's personal configuration file or the startup  default.   Later
            this can be changed with the `d' or `s' interactive commands.

            Fractional  seconds  are honored, but a negative number is not allowed.  In all cases, however, such changes are prohibited if top is running in Secure
            mode, except for root (unless the `s' command-line option was used).  For additional information on Secure mode see topic 6d. SYSTEM Restrictions File.

       -E  :Extend-Memory-Scaling as:  -E  k | m | g | t | p | e
            Instructs top to force summary area memory to be scaled as:
               k - kibibytes
               m - mebibytes
               g - gibibytes
               t - tebibytes
               p - pebibytes
               e - exbibytes

            Later this can be changed with the `E' command toggle.


	-H  :Threads-mode operation
            Instructs top to display individual threads.  Without this command-line option a summation of all threads in each process is shown.  Later this can  be
            changed with the `H' interactive command.

       -i  :Idle-process toggle
            Starts  top  with  the last remembered `i' state reversed.  When this toggle is Off, tasks that have not used any CPU since the last update will not be
            displayed.  For additional information regarding this toggle see topic 4c. TASK AREA Commands, SIZE.

       -n  :Number-of-iterations limit as:  -n number
            Specifies the maximum number of iterations, or frames, top should produce before ending.

       -o  :Override-sort-field as:  -o fieldname
            Specifies the name of the field on which tasks will be sorted, independent of what is reflected in the configuration file.  You can prepend  a  `+'  or
            `-'  to  the field name to also override the sort direction.  A leading `+' will force sorting high to low, whereas a `-' will ensure a low to high or‐
            dering.

            This option exists primarily to support automated/scripted batch mode operation.

       -O  :Output-field-names
            This option acts as a form of help for the above -o option.  It will cause top to print each of the available field names  on  a  separate  line,  then
            quit.  Such names are subject to NLS (National Language Support) translation.

       -p  :Monitor-PIDs mode as:  -pN1 -pN2 ...  or  -pN1,N2,N3 ...
            Monitor  only  processes  with specified process IDs.  This option can be given up to 20 times, or you can provide a comma delimited list with up to 20
            pids.  Co-mingling both approaches is permitted.

            A pid value of zero will be treated as the process id of the top program itself once it is running.

            This is a command-line option only and should you wish to return to normal operation, it is not necessary to quit and restart top  --  just  issue  any
            of these interactive commands: `=', `u' or `U'.

            The `p', `u' and `U' command-line options are mutually exclusive.


 	-s  :Secure-mode operation
            Starts top with secure mode forced, even for root.  This mode is far better controlled through a system configuration file (see topic 6. FILES).

       -S  :Cumulative-time toggle
            Starts top with the last remembered `S' state reversed.  When Cumulative time mode is On, each process is listed with the cpu time that it and its dead
            children have used.  See the `S' interactive command for additional information regarding this mode.

       -u | -U  :User-filter-mode as:  -u | -U number or name
            Display only processes with a user id or user name matching that given.  The `-u' option matches on  effective user whereas the `-U' option matches  on
            any user (real, effective, saved, or filesystem).

            Prepending an exclamation point (`!') to the user id or name instructs top to display only processes with users not matching the one provided.

            The `p', `u' and `U' command-line options are mutually exclusive.

       -w  :Output-width-override as:  -w [ number ]
            In Batch mode, when used without an argument top will format output using the COLUMNS= and LINES= environment variables, if set.  Otherwise, width will
            be fixed at the maximum 512 columns.  With an argument, output width can be decreased or increased (up to 512) but the number of rows is considered un‐
            limited.

            In  normal  display  mode, when used without an argument top will attempt to format output using the COLUMNS= and LINES= environment variables, if set.
            With an argument, output width can only be decreased, not increased.  Whether using environment variables or an argument with -w,  when  not  in  Batch
            mode actual terminal dimensions can never be exceeded.

            Note: Without the use of this command-line option, output width is always based on the terminal at which top was invoked whether or not in Batch mode.

       -1  :Single/Separate-Cpu-States toggle
            Starts  top with the last remembered Cpu States portion of the summary area reversed.  Either all cpu information will be displayed in a single line or
            each cpu will be displayed separately, depending on the state of the NUMA Node command toggle ('2').



EJEMPLOS:


user@computername:~$top -i

	top - 13:17:56 up  2:24,  1 user,  load average: 0,00, 0,00, 0,00
	Tareas: 172 total,   1 ejecutar,  171 hibernar,    0 detener,    0 zombie
	%Cpu(s):  1,1 usuario,  1,8 sist,  0,0 adecuado, 96,7 inact,  0,0 en espera,  0,0 hardw int,  0,4 softw int,  0,0 robar tiempo
	MiB Mem :   3936,0 total,   1419,8 libre,    766,4 usado,   1749,8 búfer/caché
	MiB Intercambio:   2048,0 total,   2048,0 libre,      0,0 usado.   2873,0 dispon Mem 

    	PID USUARIO   PR  NI    VIRT    RES    SHR S  %CPU  %MEM     HORA+ ORDEN                                                                                            
    	1343 user  20   0  547328  77304  48888 S   4,0   1,9   0:38.13 Xorg                                                                                             
    	1533 user  20   0 3741596 349924 132976 S   2,7   8,7   0:47.97 gnome-shell                                                                                      
    	2029 user  20   0  825036  52160  40088 S   1,0   1,3   0:08.12 gnome-terminal-                                                                                  
    	1678 user  20   0  695788  29416  22260 S   0,3   0,7   0:00.20 gsd-media-keys                                                                                   
    	1681 user  20   0  353860  27676  21024 S   0,3   0,7   0:00.20 gsd-power                                                                                        
    	1826 user  20   0 1100320 199708  46904 S   0,3   5,0   0:05.88 snap-store


user@computername:~$top -d 10


	top - 13:20:09 up  2:26,  1 user,  load average: 0,00, 0,00, 0,00
		Tareas: 172 total,   1 ejecutar,  171 hibernar,    0 detener,    0 zombie
	%Cpu(s):  0,1 usuario,  0,4 sist,  0,0 adecuado, 99,5 inact,  0,0 en espera,  0,0 hardw int,  0,0 softw int,  0,0 robar tiempo
	MiB Mem :   3936,0 total,   1419,8 libre,    766,6 usado,   1749,6 búfer/caché
	MiB Intercambio:   2048,0 total,   2048,0 libre,      0,0 usado.   2873,1 dispon Mem 

    	PID USUARIO   PR  NI    VIRT    RES    SHR S  %CPU  %MEM     HORA+ ORDEN                                                                                            
    	955 user    20   0 1491188  19416  15240 S   0,5   0,5   0:02.24 pulseaudio                                                                                       
    	1533 user    20   0 3741340 349600 132732 S   0,4   8,7   0:48.89 gnome-shell                                                                                      
    	1343 user    20   0  547072  77304  48888 S   0,2   1,9   0:39.02 Xorg        


ps
==

Despliga una foto de los procesos actuales

To see every process on the system using standard syntax:
          ps -e
          ps -ef
          ps -eF
          ps -ely

       To see every process on the system using BSD syntax:
          ps ax
          ps axu

       To print a process tree:
          ps -ejH
          ps axjf

       To get info about threads:
          ps -eLf
          ps axms

       To get security info:
          ps -eo euser,ruser,suser,fuser,f,comm,label
          ps axZ
          ps -eM

       To see every process running as root (real & effective ID) in user format:
          ps -U root -u root u

       To see every process with a user-defined format:
          ps -eo pid,tid,class,rtprio,ni,pri,psr,pcpu,stat,wchan:14,comm
          ps axo stat,euid,ruid,tty,tpgid,sess,pgrp,ppid,pid,pcpu,comm
          ps -Ao pid,tt,user,fname,tmout,f,wchan

       Print only the process IDs of syslogd:
          ps -C syslogd -o pid=

       Print only the name of PID 42:
          ps -q 42 -o comm=

EJEMPLOS:

user@computername:~$ps

    PID TTY          TIME CMD
    2064 pts/0    00:00:00 bash
    4152 pts/0    00:00:00 ps

user@computername:~$ps -aux

	USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
	root           1  0.0  0.2 102100 11756 ?        Ss   10:53   0:02 /sbin/init splash
	root           2  0.0  0.0      0     0 ?        S    10:53   0:00 [kthreadd]
	root           3  0.0  0.0      0     0 ?        I<   10:53   0:00 [rcu_gp]
	root           4  0.0  0.0      0     0 ?        I<   10:53   0:00 [rcu_par_gp]
	root           6  0.0  0.0      0     0 ?        I<   10:53   0:00 [kworker/0:0H-kblockd]
	root           8  0.0  0.0      0     0 ?        I<   10:53   0:00 [mm_percpu_wq]
	root           9  0.0  0.0      0     0 ?        S    10:53   0:00 [ksoftirqd/0]
	root          10  0.0  0.0      0     0 ?        I    10:53   0:00 [rcu_sched]
	root          11  0.0  0.0      0     0 ?        S    10:53   0:00 [migration/0]
	root          12  0.0  0.0      0     0 ?        S    10:53   0:00 [idle_inject/0]

pstree
======

Despliega el arbol de procesos.

OPCIONES:

  	-a, --arguments     show command line arguments
  	-A, --ascii         use ASCII line drawing characters
  	-c, --compact-not   don't compact identical subtrees
  	-C, --color=TYPE    color process by attribute
                      (age)
  	-g, --show-pgids    show process group ids; implies -c
  	-G, --vt100         use VT100 line drawing characters
  	-h, --highlight-all highlight current process and its ancestors
  	-H PID, --highlight-pid=PID
                      highlight this process and its ancestors
  	-l, --long          don't truncate long lines
  	-n, --numeric-sort  sort output by PID
  	-N TYPE, --ns-sort=TYPE
                      sort output by this namespace type
                              (cgroup, ipc, mnt, net, pid, user, uts)
  	-p, --show-pids     show PIDs; implies -c
  	-s, --show-parents  show parents of the selected process
  	-S, --ns-changes    show namespace transitions
  	-t, --thread-names  show full thread names
  	-T, --hide-threads  hide threads, show only processes
  	-u, --uid-changes   show uid transitions
  	-U, --unicode       use UTF-8 (Unicode) line drawing characters
  	-V, --version       display version information
  	-Z, --security-context
                      muestra los contextos de seguridad SELinux

  	PID    start at this PID; default is 1 (init)
  	USER   show only trees rooted at processes of this user


EJEMPLOS:

user@computername:~$pstree -a

	systemd splash
  	├─ModemManager --filter-policy=strict
  	│   	└─2*[{ModemManager}]
  	├─NetworkManager --no-daemon
  	│   └─2*[{NetworkManager}]
  	├─VBoxClient --clipboard
  	│   └─VBoxClient --clipboard
  	│       └─2*[{VBoxClient}]
  	├─VBoxClient --seamless
  	│   └─VBoxClient --seamless


user@computername:~$pstree -g

	systemd(1)─┬─ModemManager(572)─┬─{ModemManager}(572)
           	│                   └─{ModemManager}(572)
           	├─NetworkManager(471)─┬─{NetworkManager}(471)
           	│                     └─{NetworkManager}(471)
          	├─VBoxClient(1429)───VBoxClient(1429)─┬─{VBoxClient}(1429)
           	│                                     └─{VBoxClient}(1429)
           	├─VBoxClient(1441)───VBoxClient(1441)─┬─{VBoxClient}(1441)
           	│                                     └─{VBoxClient}(1441)
          	├─VBoxClient(1448)───VBoxClient(1448)─┬─{VBoxClient}(1448)
           	│                                     ├─{VBoxClient}(1448)
           	│                                     └─{VBoxClient}(1448)
           	├─VBoxClient(1456)───VBoxClient(1456)─┬─{VBoxClient}(1456)
           	│                                     └─{VBoxClient}(1456)


clear
=====

Limpia la terminal

OPCIONES:

	-T TERM     use this instead of $TERM
  	-V          print curses-version
  	-x          do not try to clear scrollback

EJEMPLOS:

user@computername:~$clear -V

	ncurses 6.2.20200212

user@computername:~$clear -x


	user@computername:~$


history
======

Muestra o manipula la lista de la historia.

OPCIONES:

      -c	borra la lista de historia eliminando todas las entradas
      -d despl	borra la entrada de la historia en la posición DESPL. Los
    		desplazamientos negativos se cuentan hacia atrás desde el final de
    		la lista de historia
    
      -a	agrega las líneas de historia de esta sesión al fichero de historia
      -n	lee todas las líneas de historia que no se han leído del fichero
    	de historia
      -r	lee el fichero de historia y agrega el contenido al fichero
    	de historia
      -w	escribe la historia actual en el fichero de historia
    
      -p	hace expansión de historia en cada ARGumento y muestra el
    	resultado, sin guardarlo en la lista de historia
      -s	agrega los ARGumentos a la lista de historia como
    	una sola entrada


EJEMPLO:

user@computername:~$history

    1  sudo apt install htop
    2  pstree
    3  sudo apt install terminator
    4  terminator
    5  htop



locate/mlocate
===============

Busca entradas en una mlocate base de datos. Tambien fuciona para buscar folders.

Importate, cuando hay archivos nuevos locate no encontrara el archivo a menos que se actualize la base de datos con comando <updatedb>

OPCIONES:

	 A, --all              only print entries that match all patterns
  	-b, --basename         match only the base name of path names
  	-c, --count            only print number of found entries
  	-d, --database DBPATH  use DBPATH instead of default database (which is
                         /var/lib/mlocate/mlocate.db)
  	-e, --existing         only print entries for currently existing files
  	-L, --follow           follow trailing symbolic links when checking file
                         existence (default)
  	-h, --help             print this help
  	-i, --ignore-case      ignore case distinctions when matching patterns
  	-p, --ignore-spaces    ignore punctuation and spaces when matching patterns
  	-t, --transliterate    ignore accents using iconv transliteration when
                         matching patterns
  	-l, --limit, -n LIMIT  limit output (or counting) to LIMIT entries
  	-m, --mmap             ignored, for backward compatibility
  	-P, --nofollow, -H     don't follow trailing symbolic links when checking file
                         existence
  	-0, --null             separate entries with NUL on output
  	-S, --statistics       don't search for entries, print statistics about each
                         used database
  	-q, --quiet            report no error messages about reading databases
  	-r, --regexp REGEXP    search for basic regexp REGEXP instead of patterns
      --regex            patterns are extended regexps
  	-s, --stdio            ignored, for backward compatibility
  	-V, --version          print version information
  	-w, --wholename        match whole path name (default)


EJEMPLOS:

user@computername:~$locate archivo1.txt

	/home/user/Documentos/files/archivo1.txt


user@computername:~$locate archivo20.txt

	/home/user/Documentos/files/archivo20.txt


user@computername:~$locate oficina

	/home/user/Documentos/oficina


find
====

Buscar archivos en la herarquia de un directorio


OPCIONES:

		operadores (prioridad decreciente; se supone -and si no hay otros):
      		( EXPR ) ! EXPR -not EXPR EXPR1 -a EXPR2 EXPR1 -and EXPR2
      		EXPR1 -o EXPR2 EXPR1 -or EXPR2 EXPR1 , EXPR2
		opciones de posición (siempre verdaderas): -daystart -follow -regextype

		opciones normales (siempre verdaderas, se ponen después de otras expresiones):
      		-depth --help -maxdepth NIVELES -mindepth NIVELES -mount -noleaf
      		--version -xdev -ignore_readdir_race -noignore_readdir_race
		evaluaciones (N puede ser +N, -N o N): -amin N -anewer FICHERO -atime N
      		-cmin N -cnewer ARCHIVO -ctime N -empty -false -fstype TIPO -gid N
      		-group NOMBRE -ilname EXPR-REG -iname EXPR-REG -inum N
      		-iwholename EXPR-REG -iregex EXPR-REG -links N -lname EXPR-REG
      		-mmin N -mtime N -name EXPR-REG -newer ARCHIVO
      		-nouser -nogroup -path PATTERN -perm [-/]MODE -regex PATTERN
      		-readable -writable -executable
      		-wholename PATTERN -size N[bcwkMG] -true -type [bcdpflsD] -uid N
      		-used N -user NAME -xtype [bcdpfls]      -context CONTEXTO

		actions: -delete -print0 -printf FORMAT -fprintf FILE FORMAT -print 
      		-fprint0 FILE -fprint FILE -ls -fls FILE -prune -quit
      		-exec COMMAND ; -exec COMMAND {} + -ok COMMAND ;
      		-execdir COMMAND ; -execdir COMMAND {} + -okdir COMMAND ;

		Valid arguments for -D:
		exec, opt, rates, search, stat, time, tree, all, help

EJEMPLOS:


user@computername:~$find archivo7.txt

	archivo7.txt

user@computername:~$find --version

	find (GNU findutils) 4.7.0
	Copyright (C) 2019 Free Software Foundation, Inc.
	License GPLv3+: GNU GPL version 3 or later.
	This is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.

htop
====

Aplicacion que muestra los procesos interactivamente

OPCIONES:

	-C --no-color               Use a monochrome color scheme
	-d --delay=DELAY            Set the delay between updates, in tenths of seconds
	-h --help                   Print this help screen
	-s --sort-key=COLUMN        Sort by COLUMN (try --sort-key=help for a list)
	-t --tree                   Show the tree view by default
	-u --user=USERNAME          Show only processes of a given user
	-p --pid=PID,[,PID,PID...]  Show only the given PIDs
	-v --version                Print version info

EJEMPLO:


user@computername:~$htop -v

	htop 2.2.0 - (C) 2004-2019 Hisham Muhammad
	Released under the GNU GPL.


vi
===

Editor de texto

OPCIONES:

		--			Only file names after this
   		-v			Vi mode (like "vi")
   		-e			Ex mode (like "ex")
   		-E			Improved Ex mode
   		-s			Silent (batch) mode (only for "ex")
   		-y			Easy mode (like "evim", modeless)
   		-R			Readonly mode (like "view")
   		-Z			Restricted mode (like "rvim")
   		-m			Modifications (writing files) not allowed
   		-M			Modifications in text not allowed
   		-b			Binary mode
   		-C			Compatible with Vi: 'compatible'
   		-N			Not fully Vi compatible: 'nocompatible'
   		-V[N][fname]		Be verbose [level N] [log messages to fname]
   		-n			No swap file, use memory only
   		-r			List swap files and exit
   		-r (with file name)	Recover crashed session
   		-L			Same as -r
   		-T <terminal>	Set terminal type to <terminal>
   		--not-a-term		Skip warning for input/output not being a terminal
   		--ttyfail		Exit if input or output is not a terminal
   		-u <vimrc>		Use <vimrc> instead of any .vimrc
   		--noplugin		Don't load plugin scripts
   		-p[N]		Open N tab pages (default: one for each file)
   		-o[N]		Open N windows (default: one for each file)
   		-O[N]		Like -o but split vertically
   		+			Start at end of file
   		+<lnum>		Start at line <lnum>
   		--cmd <command>	Execute <command> before loading any vimrc file
   		-c <command>		Execute <command> after loading the first file
   		-S <session>		Source file <session> after loading the first file
   		-s <scriptin>	Read Normal mode commands from file <scriptin>
   		-w <scriptout>	Append all typed commands to file <scriptout>
   		-W <scriptout>	Write all typed commands to file <scriptout>
   		--clean		'nocompatible', Vim defaults, no plugins, no viminfo
   		-h  or  --help	Print Help (this message) and exit
   		--version		Print version information and exit


EJEMPLO:

user@computername:~$vi -h

	VIM - Vi IMproved 8.1 (2018 May 18, compiled Apr 15 2020 06:40:31)

	Usage: vim [arguments] [file ..]       edit specified file(s)
   	or: vim [arguments] -               read text from stdin
   	or: vim [arguments] -t tag          edit file where tag is defined


nano
====

Editor de texto

OPCIONES:


		Opción         Opción larga            Significado
 		-A             --smarthome             Habilitar una tecla de inicio inteligente
 		-B             --backup                Guardar respaldo de los ficheros existentes
 		-C <dir>       --backupdir=<dir>       Directorio donde guardar ficheros de respaldo
 		-D             --boldtext              Usar negrita en lugar de texto inverso
 		-E             --tabstospaces          Convertir tabulaciones a espacios al escribir
 		-F             --multibuffer           Leer fichero dejándolo en un buffer diferente como comportamiento predefinido
 		-G             --locking               Usar ficheros de bloqueo (estilo vim)
 		-H             --historylog            Registrar y leer histórico de cadenas de búsqueda/reemplazo
 		-I             --ignorercfiles         No leer los ficheros nanorc
 		-J <número>    --guidestripe=<número>  Mostrar una barra de guía en esta columna
 		-K             --rawsequences          Arreglar el problema de confusión del teclado numérico
 		-L             --nonewlines            No añadir nueva línea automática
 		-M             --trimblanks            Eliminar espacios finales cuando se aplique ajuste estricto
 		-N             --noconvert             No convertir los ficheros desde el formato DOS/Mac
 		-P             --positionlog           Guardar y restaurar la posición del cursor
 		-Q <regex>     --quotestr=<regex>      Expresión regular para coincidir con cita
 		-R             --restricted            Restringir acceso al sistema de ficheros
 		-T <número>    --tabsize=<número>      Fijar el ancho de tab a <número> columnas
 		-U             --quickblank            Limpiar la barra de estado con la siguiente tecla pulsada
 		-V             --version               Mostrar información sobre la versión y salir
 		-W             --wordbounds            Detectar límite entre palabras con más exactitud
		 -X <cadena>    --wordchars=<cadena>    Qué otros caracteres son partes de palabra
 		-Y <nombre>    --syntax=<nombre>       Definición de sintaxis a usar para coloreado
 		-Z             --zap                   Permitir que Bsp y Del borren una región demarcada
 		-a             --atblanks              Al hacer ajuste de línea suave, hacerlo en espacio en blanco
 		-b             --breaklonglines        Ajuste estricto automático de líneas largas
 		-c             --constantshow          Mostrar constantemente la posición del cursor
 		-d             --rebinddelete          Arreglar el problema de confusión Retroceso/Suprimir
 		-e             --emptyline             Mantener vacía la línea bajo la barra de título
 		-f <fichero>   --rcfile=<fichero>      Utilizar solo este fichero para configurar nano
 		-g             --showcursor            Mostrar cursor en el navegador de ficheros y en el texto de ayuda
 		-h             --help                  Mostrar este texto de ayuda y salir
 		-i             --autoindent            Sangrar automáticamente nuevas líneas
 		-j             --jumpyscrolling        Desplazamiento por medias pantallas, no por línea
 		-k             --cutfromcursor         Cortar desde el cursor al final de línea
 		-l             --linenumbers           Mostrar los números de línea delante del texto
 		-m             --mouse                 Habilitar el uso del ratón
 		-n             --noread                No leer el fichero (sólo escribirlo)
 		-o <dir>       --operatingdir=<dir>    Establecer el directorio de operación
 		-p             --preserve              Conservar teclas XON (^Q) y XOFF (^S)
 		-r <número>    --fill=<número>         Establecer anchura para ajuste estricto y justificación
 		-s <programa>  --speller=<programa>    Habilitar un corrector ortográfico alternativo
 		-t             --tempfile              Guardar automáticamente al salir, sin preguntar
 		-u             --unix                  Guardar fichero en formato Unix por omisión
 		-v             --view                  Modo de visualización (sólo lectura)
 		-w             --nowrap                No ajustar rígidamente líneas largas [comportamiento predefinido]
 		-x             --nohelp                No mostrar las dos líneas de ayuda
 		-y             --afterends             Configurar Ctrl+derecha para que se detenga al final de las palabras
 		-z             --suspend               Habilitar suspensión
 		-$             --softwrap              Habilitar ajuste de línea suave

EJEMPLOS:

user@computername:~$nano -V


 	GNU nano, versión 4.8
 	(C) 1999-2011, 2013-2020 Free Software Foundation, Inc.
 	(C) 2014-2020 los colaboradores de nano
 	Correo: nano@nano-editor.org	Web: https://nano-editor.org/
 	Opciones compiladas: --disable-libmagic --enable-utf8


user@computername:~$nano -h

	nano -h
	Modo de empleo: nano [OPCIONES] [[+LÍNEA[,COLUMNA]] FICHERO]...

	Para situar el cursor en una determinada línea del fichero, indicar el
	número de línea con un '+' delante del nombre del fichero.  También puede
	ponerse el número de columna a continuación de una coma.
	Cuando el nombre de fichero es '-', nano lee datos de la entrada estándar.

