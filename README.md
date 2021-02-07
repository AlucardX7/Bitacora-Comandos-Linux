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


       update (apt-get(8))
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

     -A, --askpass
                 Normally, if sudo requires a password, it will read it from the user's terminal.  If the -A (askpass) option is specified, a (possibly graphical)
                 helper program is executed to read the user's password and output the password to the standard output.  If the SUDO_ASKPASS environment variable
                 is set, it specifies the path to the helper program.  Otherwise, if sudo.conf(5) contains a line specifying the askpass program, that value will
                 be used.  For example:

                     # Path to askpass helper program
                     Path askpass /usr/X11R6/bin/ssh-askpass

                 If no askpass program is available, sudo will exit with an error.

     -B, --bell  Ring the bell as part of the password promp when a terminal is present.  This option has no effect if an askpass program is used.

     -b, --background
                 Run the given command in the background.  Note that it is not possible to use shell job control to manipulate background processes started by
                 sudo.  Most interactive commands will fail to work properly in background mode.

     -C num, --close-from=num
                 Close all file descriptors greater than or equal to num before executing a command.  Values less than three are not permitted.  By default, sudo
                 will close all open file descriptors other than standard input, standard output and standard error when executing a command.  The security policy
                 may restrict the user's ability to use this option.  The sudoers policy only permits use of the -C option when the administrator has enabled the
                 closefrom_override option.

     -E, --preserve-env
                 Indicates to the security policy that the user wishes to preserve their existing environment variables.  The security policy may return an error
                 if the user does not have permission to preserve the environment.

     --preserve-env=list
                 Indicates to the security policy that the user wishes to add the comma-separated list of environment variables to those preserved from the user's
                 environment.  The security policy may return an error if the user does not have permission to preserve the environment.

     -e, --edit  Edit one or more files instead of running a command.  In lieu of a path name, the string "sudoedit" is used when consulting the security policy.
                 If the user is authorized by the policy, the following steps are taken:

                 1.   Temporary copies are made of the files to be edited with the owner set to the invoking user.

                 2.   The editor specified by the policy is run to edit the temporary files.  The sudoers policy uses the SUDO_EDITOR, VISUAL and EDITOR environ‐
                      ment variables (in that order).  If none of SUDO_EDITOR, VISUAL or EDITOR are set, the first program listed in the editor sudoers(5) option
                      is used.

                 3.   If they have been modified, the temporary files are copied back to their original location and the temporary versions are removed.

                 To help prevent the editing of unauthorized files, the following restrictions are enforced unless explicitly allowed by the security policy:

                 •  Symbolic links may not be edited (version 1.8.15 and higher).

                 •  Symbolic links along the path to be edited are not followed when the parent directory is writable by the invoking user unless that user is root
                    (version 1.8.16 and higher).

                 •  Files located in a directory that is writable by the invoking user may not be edited unless that user is root (version 1.8.16 and higher).

                 Users are never allowed to edit device special files.

                 If the specified file does not exist, it will be created.  Note that unlike most commands run by sudo, the editor is run with the invoking user's

                 environment unmodified.  If, for some reason, sudo is unable to update a file with its edited version, the user will receive a warning and the
                 edited copy will remain in a temporary file.

     -g group, --group=group
                 Run the command with the primary group set to group instead of the primary group specified by the target user's password database entry.  The
                 group may be either a group name or a numeric group-ID (GID) prefixed with the ‘#’ character (e.g., #0 for GID 0).  When running a command as a
                 GID, many shells require that the ‘#’ be escaped with a backslash (‘\’).  If no -u option is specified, the command will be run as the invoking
                 user.  In either case, the primary group will be set to group.  The sudoers policy permits any of the target user's groups to be specified via the
                 -g option as long as the -P option is not in use.


     -H, --set-home
                 Request that the security policy set the HOME environment variable to the home directory specified by the target user's password database entry.
                 Depending on the policy, this may be the default behavior.

     -h, --help  Display a short help message to the standard output and exit.

     -h host, --host=host
                 Run the command on the specified host if the security policy plugin supports remote commands.  Note that the sudoers plugin does not currently
                 support running remote commands.  This may also be used in conjunction with the -l option to list a user's privileges for the remote host.

     -i, --login
                 Run the shell specified by the target user's password database entry as a login shell.  This means that login-specific resource files such as
                 .profile, .bash_profile or .login will be read by the shell.  If a command is specified, it is passed to the shell for execution via the shell's
                 -c option.  If no command is specified, an interactive shell is executed.  sudo attempts to change to that user's home directory before running
                 the shell.  The command is run with an environment similar to the one a user would receive at log in.  Note that most shells behave differently
                 when a command is specified as compared to an interactive session; consult the shell's manual for details.  The Command environment section in the
                 sudoers(5) manual documents how the -i option affects the environment in which a command is run when the sudoers policy is in use.

     -K, --remove-timestamp
                 Similar to the -k option, except that it removes the user's cached credentials entirely and may not be used in conjunction with a command or other
                 option.  This option does not require a password.  Not all security policies support credential caching.

     -k, --reset-timestamp
                 When used without a command, invalidates the user's cached credentials.  In other words, the next time sudo is run a password will be required.
                 This option does not require a password and was added to allow a user to revoke sudo permissions from a .logout file.

                 When used in conjunction with a command or an option that may require a password, this option will cause sudo to ignore the user's cached creden‐
                 tials.  As a result, sudo will prompt for a password (if one is required by the security policy) and will not update the user's cached creden‐
                 tials.

                 Not all security policies support credential caching.

     -l, --list  If no command is specified, list the allowed (and forbidden) commands for the invoking user (or the user specified by the -U option) on the cur‐
                 rent host.  A longer list format is used if this option is specified multiple times and the security policy supports a verbose output format.

                 If a command is specified and is permitted by the security policy, the fully-qualified path to the command is displayed along with any command
                 line arguments.  If a command is specified but not allowed by the policy, sudo will exit with a status value of 1.

     -n, --non-interactive
                 Avoid prompting the user for input of any kind.  If a password is required for the command to run, sudo will display an error message and exit.

     -P, --preserve-groups
                 Preserve the invoking user's group vector unaltered.  By default, the sudoers policy will initialize the group vector to the list of groups the
                 target user is a member of.  The real and effective group-IDs, however, are still set to match the target user.

     -p prompt, --prompt=prompt
                 Use a custom password prompt with optional escape sequences.  The following percent (‘%’) escape sequences are supported by the sudoers policy:

                 %H  expanded to the host name including the domain name (on if the machine's host name is fully qualified or the fqdn option is set in sudoers(5))

                 %h  expanded to the local host name without the domain name

                 %p  expanded to the name of the user whose password is being requested (respects the rootpw, targetpw, and runaspw flags in sudoers(5))

                 %U  expanded to the login name of the user the command will be run as (defaults to root unless the -u option is also specified)

                 %u  expanded to the invoking user's login name

                 %%  two consecutive ‘%’ characters are collapsed into a single ‘%’ character

                 The custom prompt will override the default prompt specified by either the security policy or the SUDO_PROMPT environment variable.  On systems
                 that use PAM, the custom prompt will also override the prompt specified by a PAM module unless the passprompt_override flag is disabled in
                 sudoers.

     -r role, --role=role
                 Run the command with an SELinux security context that includes the specified role.

     -S, --stdin
                 Write the prompt to the standard error and read the password from the standard input instead of using the terminal device.

     -s, --shell
                 Run the shell specified by the SHELL environment variable if it is set or the shell specified by the invoking user's password database entry.  If
                 a command is specified, it is passed to the shell for execution via the shell's -c option.  If no command is specified, an interactive shell is
                 executed.  Note that most shells behave differently when a command is specified as compared to an interactive session; consult the shell's manual
                 for details.

     -t type, --type=type
                 Run the command with an SELinux security context that includes the specified type.  If no type is specified, the default type is derived from the
                 role.

     -U user, --other-user=user
                 Used in conjunction with the -l option to list the privileges for user instead of for the invoking user.  The security policy may restrict listing
                 other users' privileges.  The sudoers policy only allows root or a user with the ALL privilege on the current host to use this option.


     -T timeout, --command-timeout=timeout
                 Used to set a timeout for the command.  If the timeout expires before the command has exited, the command will be terminated.  The security policy
                 may restrict the ability to set command timeouts.  The sudoers policy requires that user-specified timeouts be explicitly enabled.

     -u user, --user=user
                 Run the command as a user other than the default target user (usually root).  The user may be either a user name or a numeric user-ID (UID) pre‐
                 fixed with the ‘#’ character (e.g., #0 for UID 0).  When running commands as a UID, many shells require that the ‘#’ be escaped with a backslash
                 (‘\’).  Some security policies may restrict UIDs to those listed in the password database.  The sudoers policy allows UIDs that are not in the
                 password database as long as the targetpw option is not set.  Other security policies may not support this.

     -V, --version
                 Print the sudo version string as well as the version string of the security policy plugin and any I/O plugins.  If the invoking user is already
                 root the -V option will display the arguments passed to configure when sudo was built and plugins may display more verbose information such as de‐
                 fault options.

     -v, --validate
                 Update the user's cached credentials, authenticating the user if necessary.  For the sudoers plugin, this extends the sudo timeout for another 15
                 minutes by default, but does not run a command.  Not all security policies support cached credentials.

     --          The -- option indicates that sudo should stop processing command line arguments.


EJEMPLOS:

To get a file listing of an unreadable directory:

           $ sudo ls /usr/local/protected

To edit the index.html file as user www:

           $ sudoedit -u www ~www/htdocs/index.html


ls
==

Lista el contenido de un directorio

OPCIONES:

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..

       --author
              with -l, print the author of each file

       -b, --escape
              print C-style escapes for nongraphic characters

       --block-size=SIZE
              with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below

       -B, --ignore-backups
              do not list implied entries ending with ~

       -c     with  -lt:  sort by, and show, ctime (time of last modification of file status information); with -l: show ctime and sort by name; otherwise: sort by
              ctime, newest first

       -C     list entries by columns

       --color[=WHEN]
              colorize the output; WHEN can be 'always' (default if omitted), 'auto', or 'never'; more info below

       -d, --directory
              list directories themselves, not their contents

       -D, --dired
              generate output designed for Emacs' dired mode

       -f     do not sort, enable -aU, disable -ls --color

       -F, --classify
              append indicator (one of */=>@|) to entries

       --file-type
              likewise, except do not append '*'

       --format=WORD
              across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C

       --full-time
              like -l --time-style=full-iso

       -g     like -l, but do not list owner

       --group-directories-first
              group directories before files;

              can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping

       -G, --no-group
              in a long listing, don't print group names

       -h, --human-readable
              with -l and -s, print sizes like 1K 234M 2G etc.

       --si   likewise, but use powers of 1000 not 1024

       -H, --dereference-command-line
              follow symbolic links listed on the command line

       --dereference-command-line-symlink-to-dir
              follow each command line symbolic link

              that points to a directory

       --hide=PATTERN
              do not list implied entries matching shell PATTERN (overridden by -a or -A)

       --hyperlink[=WHEN]
              hyperlink file names; WHEN can be 'always' (default if omitted), 'auto', or 'never'

       --indicator-style=WORD
              append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)

       -i, --inode
              print the index number of each file

       -I, --ignore=PATTERN
              do not list implied entries matching shell PATTERN

       -k, --kibibytes
              default to 1024-byte blocks for disk usage; used only with -s and per directory totals

       -l     use a long listing format

       -L, --dereference
              when showing file information for a symbolic link, show information for the file the link references rather than for the link itself

       -m     fill width with a comma separated list of entries

       -n, --numeric-uid-gid

       -N, --literal
              print entry names without quoting

       -o     like -l, but do not list group information

       -p, --indicator-style=slash
              append / indicator to directories

       -q, --hide-control-chars
              print ? instead of nongraphic characters

       --show-control-chars
              show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)

       -Q, --quote-name
              enclose entry names in double quotes

       --quoting-style=WORD
              use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape  (overrides  QUOTING_STYLE
              environment variable)

       -r, --reverse
              reverse order while sorting

       -R, --recursive
              list subdirectories recursively

        -s, --size
              print the allocated size of each file, in blocks

       -S     sort by file size, largest first

       --sort=WORD
              sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X)

       --time=WORD
              with  -l,  show time as WORD instead of default modification time: atime or access or use (-u); ctime or status (-c); also use specified time as sort
              key if --sort=time (newest first)

       --time-style=TIME_STYLE
              time/date format with -l; see TIME_STYLE below

       -t     sort by modification time, newest first

       -T, --tabsize=COLS
              assume tab stops at each COLS instead of 8

       -u     with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first

       -U     do not sort; list entries in directory order

       -v     natural sort of (version) numbers within text

       -w, --width=COLS
              set output width to COLS.  0 means no limit

       -x     list entries by lines instead of by columns

       -X     sort alphabetically by entry extension

       -Z, --context
              print any security context of each file

       -1     list one file per line.  Avoid '\n' with -q or -b

       --help display this help and exit

       --version
              output version information and exit


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
