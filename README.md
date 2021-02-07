# Bitacora Comandos Linux
 Descripcion, Parametros y Ejemplos


ip addr
=======

Muestra IPs, manipula el routing, dispositivos de red, intercaes y tuneles.

opciones:

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


ejemplos:

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

opciones:


pdate (apt-get(8))
           update is used to download package information from all configured sources. Other commands operate on this data to e.g. perform package upgrades or search in and display details about
           all packages available for installation.

       upgrade (apt-get(8))
           upgrade is used to install available upgrades of all packages currently installed on the system from the sources configured via sources.list(5). New packages will be installed if
           required to satisfy dependencies, but existing packages will never be removed. If an upgrade for a package requires the removal of an installed package the upgrade for this package isn't
           performed.

       full-upgrade (apt-get(8))
           full-upgrade performs the function of upgrade but will remove currently installed packages if this is needed to upgrade the system as a whole.

       install, reinstall, remove, purge (apt-get(8))
           Performs the requested action on one or more packages specified via regex(7), glob(7) or exact match. The requested action can be overridden for specific packages by appending a plus (+)
           to the package name to install this package or a minus (-) to remove it.

           A specific version of a package can be selected for installation by following the package name with an equals (=) and the version of the package to select. Alternatively the version from
           a specific release can be selected by following the package name with a forward slash (/) and codename (buster, bullseye, sid ...) or suite name (stable, testing, unstable). This will
           also select versions from this release for dependencies of this package if needed to satisfy the request.

           Removing a package removes all packaged data, but leaves usually small (modified) user configuration files behind, in case the remove was an accident. Just issuing an installation
           request for the accidentally removed package will restore its function as before in that case. On the other hand you can get rid of these leftovers by calling purge even on already
           removed packages. Note that this does not affect any data or configuration stored in your home directory.

       autoremove (apt-get(8))
           autoremove is used to remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed as dependencies changed or the package(s)
           needing them were removed in the meantime.

           You should check that the list does not include applications you have grown to like even though they were once installed just as a dependency of another package. You can mark such a
           package as manually installed by using apt-mark(8). Packages which you have installed explicitly via install are also never proposed for automatic removal.

       satisfy (apt-get(8))
           satisfy satisfies dependency strings, as used in Build-Depends. It also handles conflicts, by prefixing an argument with "Conflicts: ".

           Example: apt satisfy "foo, bar (>= 1.0)" "Conflicts: baz, fuzz"

       search (apt-cache(8))
           search can be used to search for the given regex(7) term(s) in the list of available packages and display matches. This can e.g. be useful if you are looking for packages having a
           specific feature. If you are looking for a package including a specific file try apt-file(1).

       show (apt-cache(8))
           Show information about the given package(s) including its dependencies, installation and download size, sources the package is available from, the description of the packages content and
           much more. It can e.g. be helpful to look at this information before allowing apt(8) to remove a package or while searching for new packages to install.

       list
           list is somewhat similar to dpkg-query --list in that it can display a list of packages satisfying certain criteria. It supports glob(7) patterns for matching package names as well as
           options to list installed (--installed), upgradeable (--upgradeable) or all available (--all-versions) versions.

edit-sources (work-in-progress)
           edit-sources lets you edit your sources.list(5) files in your preferred text editor while also providing basic sanity checks.man apt


ejemplos:

apt show firefox

Package: firefox
Version: 85.0+build1-0ubuntu0.20.04.1
Priority: optional
Section: web
Origin: Ubuntu

sudo apt update

Obj:1 http://security.ubuntu.com/ubuntu focal-security InRelease
Obj:2 http://cr.archive.ubuntu.com/ubuntu focal InRelease
Obj:3 http://cr.archive.ubuntu.com/ubuntu focal-updates InRelease
Obj:4 http://cr.archive.ubuntu.com/ubuntu focal-backports InRelease
Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
Todos los paquetes están actualizados.


lsb_release 
===========

Imprime informacion especifica de la distribucion

opciones:

PTIONS
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


ejemplos:

lsb_release -d
Description:	Ubuntu 20.04.2 LTS

lsb_release -a

No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 20.04.2 LTS
Release:	20.04
Codename:	focal





