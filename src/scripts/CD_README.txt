Harlequin MLWorks(TM) 1.0r2 CD-ROM

Copyright (C) 1998 Harlequin Group plc.  All rights reserved.

12 January 1998



MLWORKS VERSIONS AND UPGRADES

On this CD-ROM you will find MLWorks 1.0r2 for the following platforms:

	Windows 95		(in folder Win95)
	Windows NT		(in folder NT)
	Linux (Red Hat 4.x)     (in folder Linux)
	SGI Irix 5.3/6.2	(in tar file Irix.tar)
	SUN Solaris 2.4/2.5	(in tar file Sol2_5.tar)
	SUN SunOS 4.1.x		(in tar file SunOS.tar)

Full documentation for Windows and Linux platforms is included in the above 
installations. Documentation for UNIX platforms is separate, in the tar 
file Unix-Doc.tar.

For up-to-date information on upgrades and supported platforms, please 
visit Harlequin's Web site at:

	http://www.harlequin.com/mlworks/



REPORTING PROBLEMS

If you have any other problems with MLWorks, please contact:

	mlworks-keys@harlequin.com or mlworks-keys@harlequin.co.uk

Further information is available from Harlequin's Web site at:

	http://www.harlequin.com/mlworks/

To submit a question or problem report, please fill out the electronic 
Web form at http://www.harlequin.com/mlworks/bugrep.html or the customer 
support form included in the MLWorks distribution.  Completed forms can 
be sent via e-mail to:

	mlworks-support@harlequin.com or mlworks-support@harlequin.co.uk



SYSTEM REQUIREMENTS

Windows requirements:

To run the Windows 95 version of MLWorks 1.0r2 we recommend at least 20 
MB RAM.  For running on Windows NT, we recommend at least 24 MB RAM. For 
Windows 95 and Windows NT the installed system takes up around 25 MB.

UNIX requirements:

To run the IRIX version of MLWorks 1.0r2, we recommend at least 32 MB 
RAM.  The distribution directory for IRIX is around 13 MB; the installed 
system takes up around 18 MB.  Therefore, during installation you will 
need around 31 MB of free disk space.

For running on SunOS and Solaris, we recommend at least 32 MB RAM.  The 
distribution directory for SunOS and Solaris is around 11 MB; the 
installed system takes up around 18 MB.  Therefore, during installation 
you will need around 30 MB of free disk space.

For running on Linux, we recommend at least 32 MB RAM.  The installed
system takes up around 15 MB without documentation, and 22 MB including
documentation.  



INSTALLING MLWORKS FOR MICROSOFT WINDOWS

To install MLWorks for Windows, go to the folder containing the
MLWorks distribution for your platform, and run the setup.exe program.
The InstallShield(TM) application will now guide you through the
MLWorks installation.

Note: If installing MLWorks on an NTFS file system, please remember to 
set the time zone to GMT and disable the daylight savings option prior
to installation.



INSTALLING MLWORKS FOR LINUX

On Red Hat Linux MLWorks is provided as a binary RPM which can be
installed in the usual way.  This RPM file does not work with older
versions of RPM, such as the version (2.2.7) which is distributed
with Red Hat 4.0.   We know that it works with version 2.3.11 (which
is distributed with Red Hat 4.2), and we believe it works with all
versions later than 2.3.1.  If you have an old version of RPM, we
suggest upgrading it (see the URL http://www.rpm.org/).  Alternatively,
you can download the tar file instead, and follow the installation
instructions for Unix systems.

We have not tested MLWorks on versions of Linux other than Red Hat 4.x.

Using RPM, installation is most easily done as root, although
installation by non-root users is also possible.  By default MLWorks
is installed in /usr/local/lib/MLWorks, although the RPM file is
relocatable and --prefix can be used to allow MLWorks to be
installed in a user-specified directory.


Installation by Root:

MLWorks can be installed in the usual way, for instance

  rpm -ih mlworks-1.0r2-1.i386.rpm

will install MLWorks in /usr/local/lib/MLWorks, while a command-line 
of the form

  rpm -ih --prefix <installation directory> mlworks-1.0r2-1.i386.rpm

will install MLWorks in <installation directory>.


Installation by Non-root Users:

Non-root users should use the above approach but will also need to 
specify (and create if it does not already exist) a directory into 
which RPM can write its database files.  This is done using the
--dbpath option to rpm.  Such users will probably also need to
use --prefix as above to relocate the package to a suitable
directory.

Thus a typical installation for a non-root user is of the form:

  rpm -ih --prefix <installation directory> --dbpath <rpm database directory> mlworks-1.0r2-1.i386.rpm


Uninstallation:

For root, MLWorks can also be uninstalled in the usual way, for
instance by doing

  rpm -e mlworks-1.0r2-1

Non-root users will again need to use the --dbpath option to ensure
that the local database that was specified when MLWorks was installed
is updated correctly.


Documentation:

Documentation in PostScript, PDF and HTML formats is provided as part
of the distribution and is installed by default in the documentation
sub-directory of the MLWorks installation directory.  Using RPM you can
save space by choosing not to install it, e.g. by doing:

  rpm -ih --excludedocs --prefix <installation directory>  mlworks-1.0r2-1.i386.rpm

Non-root users should also use --dbpath as in previous examples.


See Also:

For more information on RPM see http://www.rpm.org/.



INSTALLING MLWORKS FOR UNIX
1. Mount the CD-ROM on your CD-ROM drive.

2. Extract the MLWorks distribution from the appropriate tar file for 
your platform, using the x and f options to tar, e.g.

	unix> cd installation-dir
	unix> tar xvf <cdrom>/<platform>.tar

where <cdrom> is the mount directory for your CD-ROM drive and
<platform> is the file identifier for your platform, which will be one
of Irix, Sol2_5,or SunOS.

Note: We have created the distribution tar files so that when you unpack 
them, they should create files that you own and that have your default 
umask. This might not work if you unpack the tar file over NFS. If the 
files have the wrong permissions when extracted, try again with the tar 
archive located on a local partition and not NFS-mounted. 

When the distribution has been extracted from it, you can delete the
tar file if you wish.

The next step is to install a version of MLWorks using the
distribution's install-mlworks script. The script is available at top
level in the distribution directory.

By default, the installation script installs MLWorks in the following 
directory:

	/usr/local/lib/MLWorks

You can install MLWorks in a different directory by passing the name of 
the directory to install-mlworks.

Note: Various parts of the MLWorks system are installed in
subdirectories of the main installation directory. The installation
script uses certain subdirectory names by default, but again, you can
change them if you prefer. They are set in variables in the
installation script; the script itself documents them if you should
wish to make any changes. For the vast majority of installations there
should be no need to do so.

3. Run the install-mlworks program from the distribution directory.

If you do not want MLWorks installed under the default directory, (see 
above), pass a suitable directory name to program. This directory name 
must be an absolute path name; relative pathnames, and pathnames 
including shell-expanded characters such as "." and "~" will not work.

For example:

	unix> install-mlworks /usr/local/lib/Harlequin/MLWorks

MLWorks is now fully installed.



NOTE FOR SUN ULTRASPARC USERS
  
Before using MLWorks on Sun UltraSPARC machines, you need to ensure that 
you have installed Solaris 2.5.1 (or above). On Solaris 2.5.1 you will 
also need kernel patch 103640-08 or a later revision, available from Sun 
to all service contract customers. This patch applies to all SPARC based 
machines and has been integrated into future releases of Solaris.



VIEWING MLWORKS DOCUMENTATION

When you have completed the installation of MLWorks on Windows you can
view the user documentation from the documentation folder in the
MLWorks folder. The User Guide and Reference Manual are also available
online as shortcuts from the program group in which you installed
MLWorks.

On Linux the documentation is installed by default in the documentation
sub-directory of the MLWorks installation directory.  You can choose
not to unpack the documentation, as described in the section "INSTALLING
MLWORKS ON LINUX".

The Unix documentation is in the tar file Unix-Doc.tar in the top level 
directory of the CD-ROM.



RUNNING MLWORKS

When you run MLWorks for the first time please enter your Licence 
Name and key as shown on the covering letter.




