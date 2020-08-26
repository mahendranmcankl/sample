=============================================================
             Readme File for System i Access for Windows 	      
              Version 6 Release 1 Modification Level 0    
   (c) Copyright IBM Corporation 1996, 2007.  All rights reserved. 
=============================================================      
  This document is provided "as is" without warranty of any kind.  IBM disclaims 
  all warranties, whether expressed or implied, including without limitation, the 
  implied warranties of fitness for a particular purpose and merchantability 
  with respect to the information in this document. By furnishing this document, 
  IBM grants no licenses to any patents or copyrights. 
  
 
=============================================================
  Beginning in V6R1M0, the IBM iSeries Access for Windows product is renamed 
  to the IBM System i Access for Windows product.  
 =============================================================


  IMPORTANT: 
    1) Be sure to review the Information Authorized Problem Analysis 
        Reports (APARs) for the System i Access for Windows client.  Information 
        APARs contain documentation on available program temporary fixes (PTFs) 
        and service packs, configuration tips, known problems, support statements 
        and more. An archive of System i Access for Windows Information APARs 
        is available from the Web site:
        www.ibm.com/systems/i/software/access/windows/casp.html

    2) For expectations and restrictions in a supported Microsoft Windows Vista 
        environment, refer to Information APAR II14239 and II14247.

    3) To avoid breaking existing .NET applications, runtime requests for 
        the 10.0.0.0 version of the .NET provider must be redirected to the 
        new 12.0.0.0 version.  See the Incompatible changes from previous releases 
        topic in the IBM DB2 for i5/OS .NET Provider Technical Reference.

    4) See the addendum (www.ibm.com/systems/i/software/access/v6r1.html) to 
        this Readme File for information that was not available at the time of 
        publication.

    5) Internet Information is an icon in the System i Access for Windows product 
        folder.  If your PC has an installed and configured Internet browser, this icon 
        allows you to link to all the latest System i Access for Windows information, 
        including the System i Access home page.  

    6) The i5/OS Information Center (www.ibm.com/systems/i/infocenter) provides
        the basic System i Access for Windows product concepts, reference, and 
        tasks information.  The System i Access home page can contain details on 
        V6R1M0 enhancements that are not documented in other places.   


------------------------------------------------------------------- 
TABLE OF CONTENTS 
-------------------------------------------------------------------  

1.0 INSTALLING V6R1M0
  1.1  V6R1M0 version, release, and feature compatibility
  1.2  Important V6R1M0 installation and administration considerations
  1.3  Running the V6R1M0 install
  1.4  Install V6R1M0 using installation images and setup.exe
  1.5 Special V6R1M0 upgrade considerations

2.0 SUPPORT LEVEL INFORMATION
   2.1 Personal Communications 5250 Emulation and PC5250
      2.1.1 Migrated PC5250 support files
      2.1.2 PC5250 file locations
   2.2 .NET Framework
      2.2.1 IBM.Data.DB2.iSeries .NET Data Provider requirements
      2.2.2 PC5250 requirements
   2.3 Microsoft XML Parser or Microsoft XML Core Services
   2.4 System i Access and firewalls 	 

3.0 INSTALLATION NOTES AND KNOWN PROBLEMS
   3.1 Action required for installing printer drivers
   3.2 64-bit hardware installation considerations
   3.3 Installation logs     
   3.4 Files uninstalled during upgrade             
   3.5 Memory requirements     
   3.6 Information not available at time of publication   

4.0 RESTRICTIONS
   4.1 Microsoft provided fixes  
-------------------------------------------------------------------
-------------------------------------------------------------------


-------------------------------------------------------------------
1.0 INSTALLING V6R1M0
-------------------------------------------------------------------

1.1  V6R1M0 version, release, and feature compatibility
-------------------------------------------------------------------
  - Support for upgrading to System i Access for Windows V6R1M0 is provided
    only when it is installed over V5R4M0 or V5R3M0.  Unpredictable results
    occur when installed over other releases.

  - For detailed information on Microsoft Windows operating systems and the
    System i Access for Windows version and release compatibility, refer to: 
    www.ibm.com/systems/i/software/access/windows/supportedos.html

  - If you currently have the System i Access for Windows product installed on
    your PC and are upgrading your PC to one of the supported Windows 
    operating systems identified below, follow these steps:
        1. Uninstall the iSeries Access for Windows product
        2. Upgrade the Windows operating system
        3. Install the System i Access for Windows product

  - System i Access for Windows V6R1M0 does not install on 
    Microsoft Windows 95, Windows 98, Windows ME, Windows NT.  It does
    install on the following Microsoft operating systems:
        Windows XP Professional
        Windows XP Professional Tablet Edition
        Windows 2000 SP4
        Windows Server 2003
        Windows Server 2003, x64 Editions
        Windows Server 2003 for Itanium-based Systems
        Windows Server 2003 R2
        Windows Vista
    Note: 
        a) See the support page for details on installable, but not supported,
            Windows operating systems.
        b) For expectations and restrictions in a supported Windows Vista
            environment,  refer to Information APAR II14239 and II14247.
        c) See System i Navigator information to identify any limitations to
            System i Navigator support on Itanium hardware.

  - When upgrading, to keep the same list of features that were installed from a
    previous product installation, take the default options throughout the 
    installation wizard.  To change the list of features, select the "Custom" setup 
    type and change the install state for the features you want to add and 
    to remove.

  - Migration is not supported from Client Access for Windows/NT (5763-XD1) 
    to System i Access for Windows V6R1M0.  From 5763-XD1, there are two 
    options to move to V6R1M0:
      1) Uninstall Client Access for Windows/NT (5763-XD1) and then install 
          iSeries Access for Windows V6R1M0.
      2) Migrate from Client Access for Windows/NT (5736-XD1) to
          iSeries Access for Windows V5R2M0, then upgrade to 
          System i Access for Windows V5R4M0, and then upgrade to 
          System i Access for Windows V6R1M0.  Settings are retained when you 
          use this option.

1.2  Important V6R1M0 installation and administration considerations
-------------------------------------------------------------------
  - Administrative authority and privileges are required to run the install.
  - System i Access for Windows only supports a per-machine installation.  It 
    does not support a per-user installation.
  - It is recommended that you use the default destination folder. However, if you
    change the folder:
      a) It is not advisable to select the root directory of a drive.
      b) It is not advisable to select a directory that already contains files not 
          related to the System i Access for Windows product.
      c) You should not select a network drive.  Installing to a network drive is
          not supported.
  - System i Access for Windows does not support Windows Installer
    advertisement feature.
  - Secondary language support is currently not available, however, the client
    installation wizard allows you to select any National Language Version (NLV)
    that is available as your primary language on the PC.  You can install one or
    multiple i5/OS NLVs for the product on the system, which then provides the
    capability to select one of these languages for your PC.   The DVD, that 
    comes with the product, contains all available NLVs.

1.3  Running the V6R1M0 install
-------------------------------------------------------------------
  - Choose a method to start the install of the System i Access for Windows 
    product on your PC:

    1) Run cwblaunch.exe, with the following advantages:
        a) It identifies the architecture of the PC.
        b) It selects and launches the correct setup.exe.
    NOTES:
        a) Run cwblaunch.exe from either the DVD (in the Windows directory) 
            or from the License Program (in QIBM\ProdData\Access\Windows). 
        b) If installing from the License Program(LP), map a drive 
            to \\server-name\QIBM\.

    2) If cwblaunch.exe errors are encountered, identify and use the correct 
        installation image and run setup.exe.  See information below for selecting 
        the correct images and directories, based on your PC architecture.

    3) Use Microsoft Installer (MSI) files
        a) If your deployment method to multiple PCs does not require that you 
            launch MSI files, and you cannot run cwblaunch.exe, it is recommended 
            that you use the setup.exe method, described below, because setup.exe 
            provides the following functions:
                - Installs the correct version of the MSI engine.
                - Automatically starts installation logging.
                - Allows you to select your setup language.
        b) If you decide to use the MSI method, BEFORE running cwbinstall.msi,
            you should see required information that is found in the 
            "Preparing an installation image" topic collection in 
            the i5/OS Information Center (www.ibm.com/systems/i/infocenter).

  - Additional information on modifying the user interface level, using command
    line parameters, and controlling other installation environments and 
    deployment  methods is available in the "Setup the PC" topic collection in 
    the i5/OS Information Center (www.ibm.com/systems/i/infocenter).

1.4  Install V6R1M0 using installation images and setup.exe
-------------------------------------------------------------------
  - The installation image and directories to use for the three supported PC
    architectures are:
        32-bit architecture
            On the DVD:  Windows\Image32
            On the LP:  QIBM\ProdData\Access\Windows\Install\Image32
        64-bit x64 (AMD64 and EM64T) architecture
            On the DVD:  Windows\Image64a
            On the LP:  QIBM\ProdData\Access\Windows\Install\Image64a
        64-bit Itanium architecture
            On the DVD:  Windows\Image64i
            On the LP:  QIBM\ProdData\Access\Windows\Install\Image64i
  
  - Use the information above to locate the correct directory and then 
    run setup.exe.   

  Note: See System i Navigator information to identify any limitations to
            System i Navigator support on Itanium hardware.

1.5 Special V6R1M0 upgrade considerations
------------------------------------------------------------------- 
  The following V6R1M0 upgrade considerations are applicable ONLY if: 
    1) You are upgrading from V5R3M0 or
    2) You are upgrading from V5R4M0 and did not use the 
        Windows Installer Technical Preview that was available from the 
        Web page for the System i Access family.

    - A dialog is displayed that lists currently installed features that are
      uninstalled as part of the upgrade.  Some of these features are no longer 
      supported, some are features that you have chosen not to install, and 
      some are features that must first be uninstalled before being re-installed 
      as part of a new release.  It is expected behavior that this dialog appears 
      as an empty list, when the only features to be removed during the 
      upgrade are hidden and obsolete.  
    - If you renamed the product folder in a previous installation, this 
      installation creates a new System i Access for Windows product 
      folder on the desktop  and lists System i Access for Windows in 
      "Start->Programs". You should manually delete the renamed folder 
      and program.
    - You can only upgrade to the same primary language that was previously  
      installed.  To change the primary language, uninstall and re-install the 
      product, specifying the new primary language.
    - Secondary languages are removed during an upgrade.
    - Reported disk space requirements for the different features are sometimes 
      inaccurate when the previous product installation was not performed 
      using the Windows Installer technology.



-------------------------------------------------------------------  
2.0  SUPPORT LEVEL INFORMATION 
-------------------------------------------------------------------  

2.1 Personal Communications 5250 Emulation and PC5250 
-------------------------------------------------------------------
  PC5250 is the display and printer emulation feature that is optionally installed 
  as part the of the System i Access for Windows (XE1) product.  The 
  XE1 PC5250 feature and the IBM Personal Communications (PCOMM) 
  product cannot co-exist on the same PC because the PCOMM product also 
  provides a 5250 emulation feature.
  
  Both the XE1 product and the PCOMM product use the Windows Installer 
  technology that supports only one product installation at a time.  Therefore, 
  you should consider the following before installing them: 
    - If the PCOMM product is already installed on your PC, the XE1 PC5250 feature 
      is not displayed as one of the selectable choices during your XE1 installation. 
    - If the XE1 PC520 feature is installed on your PC, you must remove the feature 
      BEFORE installing the PCOMM product to avoid unpredictable results.  (See 
      notes below for removal information.)
    - For versions prior to PCOMM 5.9 CSD1, if the XE1 PC5250 feature is installed, 
      the XE1 installation wizard stops the PCOMM installation and displays a 
      WARNING message. To avoid unpredictable results, click OK to respond to 
      the message, immediately go to Task Manager and cancel the PCOMM install, 
      remove the XE1 PC5250 feature (see notes below for removal information), 
      uninstall PCOMM, and then restart the PCOMM installation. It is important 
      to respond to this warning message with these steps, even if you are 
      performing a silent install.
    - Starting with PCOMM 5.9 CSD1, if the XE1 PC5250 feature is installed, the
      PCOMM installation wizard displays an error message and stops the PCOMM 
      installation. You should then remove the XE1 PC5250 feature (see notes below 
      for removal information) and then restart the PCOMM installation.
    - When the PCOMM product is installed, the XE1 installation does not support 
      the installation of its PC5250 feature, however, the product folder is populated 
      with the PC5250 icons so that you can optionally perform PCOMM emulation
      using the XE1 PC5250 icons.  When the XE1 product is installed before the 
      PCOMM product, you can manually create and use these PC5250 icons in the
      same way by running the following (assuming that the product is installed in 
      its default destination path):  
      c:\Program Files\IBM\Client Access\Emulator\cwbemcup.exe 

    NOTES:  
        1) Personal Communications version 5.6, and later versions, allow you to 
            launch the Personal Communications 5250 emulator from the
            System i Access for Windows product while earlier versions do not.         
        2) To remove the PC5250 feature, follow the steps documented in the 
            "Install or remove a System i Access for Windows feature" topic in the 
            User's Guide or use the change option from 
            Start>Control panel>Add/Remove Programs.

2.1.1 Migrated PC5250 support files
-------------------------------------------------------------------
  The version of PC5250 that is included with the XE1 product requires that 
  certain supporting files (such as .ws files) are migrated to a new version level.  
  This migration happens automatically at first touch of the individual files,
  unless certain steps are taken to prevent it.  Migrating files can result in 
  unusable files for users with earlier versions of PC5250 (which are in 
  earlier versions of the XE1 product).   This can happen, for example, if multiple 
  users use the same files from a shared location.  Not migrating a file can result 
  in that file being unusable to PC5250. 

  Use one of the following paths to control the migration of supporting files: 
  1) System i Access for Windows Properties > PC5250
  2) Application Administration > Central Settings > Client Applications >
      Advanced Settings > PC5250

  Note: When files are automatically migrated, the original file is saved with a 
              slightly modified extension (for example, abc.ws is saved as abc.ows).

2.1.2 PC5250 file locations
-------------------------------------------------------------------
  In V6R1, the two predefined folders in which the workstation profile (.ws)
  files, and all other PC5250 data files are stored, have changed locations.
  The old location that was based on the System i Access for Windows
  install path is now based on the common (all users) Application Data folder.
  The old location that was based on My Documents is now based on the 
  user-specific Application Data folder.  Within the base location, the folder 
  "IBM\Client Access\Emulator\private" is created to store the PC5250 files.

  At the first logon after an install, for each user who has configured one 
  of the predefined folders that are identified above, settings are automatically 
  changed and files are automatically copied to the new location, however, 
  shortcut icons are not re-configured.   For example, a shortcut icon that refers, 
  by full path, to a .ws file to launch a PC5250 session is not changed.  The old 
  folder icon is still usable to start a PC5250 session, however, configuration 
  changes from that session are not saved to the new folder.  It is strongly 
  recommended that such shortcut icons are deleted and re-created, or 
  modified, to specify the new folder location.

  The full paths of these new locations are not the same for all versions of the 
  Windows operating systems, however, all versions do provide two 
  environment variables that you can use to refer to or find these locations.  
  The user-specific Application Data folder name is stored in the 
  environment variable APPDATA, and the common Application Data folder 
  name in the environment variable ALLUSERSPROFILE.  Environment variable 
  values are obtained by enclosing them with percent signs (%).  You can 
  modify PC5250 shortcut icons by replacing the part of the path that 
  refers to your My Documents folder with %APPDATA%, and by 
  replacing the part of the path that refers to the System i Access for Windows 
  install path with %ALLUSERSAPPDATA%.  For example, change the 
  shortcut icon that refers to "C:\Documents and Settings\user5\
  My Documents\IBM\Client Access\Emulator\private\System1.ws", to 
  "%APPDATA%\IBM\Client Access\Emulator\private\System1.ws", and it 
  should access the .ws file in the new folder location.  Consider making backup 
  copies of shortcut icons before changing them.

  The PC5250 store and search folder is configured from the PC5250 tab of 
  System i Access for Windows Properties.  An administrator can also set this 
  value for all users of the PC at one time by running the cwbcfg.exe utility. See 
  the System i Access for Windows User's Guide for more information.

2.2 .NET Framework 
------------------------------------------------------------------  

2.2.1 IBM.Data.DB2.iSeries .NET Data Provider requirements 
-------------------------------------------------------------------    
  - System i Access for Windows .NET Data Provider (IBM.Data.DB2.iSeries) 
    requires that Microsoft .NET Framework Version 2.0 is installed on your 
    system.  The .NET Framework is downloaded from the following 
    Microsoft Web site: http://www.microsoft.com/net 

  - To avoid breaking existing .NET applications, runtime requests for the 10.0.0.0 
    version of the .NET provider must be redirected to the new 12.0.0.0 version.
    See the "Incompatible changes from previous releases" topic in the 
    IBM DB2 for i5/OS .NET Provider Technical Reference for instructions on using 
    an app.config file, a web.config file, or a machine.config file and for information
    on selecting an appropripiate compiler for redirecting existing applications. 

  - For complete information and a list of incompatible changes, install the 
    System i Access for Windows Toolkit, Headers, Libraries, and Documentation 
    feature, and then display the .NET Provider Technical Reference.   

  - Also visit www.ibm.com/systems/i/software/access/v6r1.html for additional 
    .NET information that was not available at the time of publication.

 2.2.2 PC5250 requirements 
-------------------------------------------------------------------    
  Beginning with V5R4, System i Access for Windows PC5250 supports 
  a .NET programming interface. The PC5250 .NET support is installable if 
  the Microsoft .NET Framework is not installed, but to use the PC5250 .NET 
  support, the framework must be installed on your personal computer.

  You can download the .NET Framework from the Microsoft Web site:
  http://www.microsoft.com/net     

2.3 Microsoft XML Parser or Microsoft XML Core Services  
-------------------------------------------------------------------
  Beginning in V5R4M0, the System i Access for Windows Data Transfer 
  provides support for transferring XML files to and from Microsoft Excel 2003 
  and Microsoft Excel XP. This support requires that the Microsoft XML Parser 3.0 
  or above, also known as the Microsoft XML Core Services, is installed on your 
  personal computer. To determine if the XML Parser support is installed, 
  check for the existence of msxml3.dll or msxml4.dll. If neither is found, you will 
  need to access www.microsoft.com for instructions on downloading and installing 
  the XML Parser before you can use the Data Transfer XML support.

2.4 System i Access and firewalls  
-------------------------------------------------------------------
  For information on firewalls, see the 
  Information on System i Access for Windows and Firewalls topic 
  (www.ibm.com/systems/i/software/access/windows/toolkit/firewallknowbase.html)
  You call also search the IBM website (www.ibm.com) for documents containing 
  both the keywords "cwbrxd" and "firewall".



3.0  INSTALLATION NOTES AND KNOWN PROBLEMS 
-------------------------------------------------------------------

3.1 Action required for installing printer drivers 
-------------------------------------------------------------------
  If you install a printer driver, you must take action before using the printer 
  driver because the printer drivers are not digitally signed by Microsoft and 
  cannot be automatically added or updated during installation.  The printer 
  driver files are copied to a subdirectory under the destination path that is 
  chosen during the installation wizard and you are required to add or update 
  your Printer Driver using Microsoft's directions in their help text. As prompted, 
  specify one of the following directory locations (assuming that you installed to 
  the default destination path) for your printer driver:  
    For AFP: c:\Program Files\IBM\Client Access\CWBAFP directory 
    For SCS: c:\Program Files\IBM\Client Access\CWBSCS directory 

  On 64-bit Windows operating systems, only the AFP printer driver is available 
  for installation.

  If you are installing on a PC that has upgraded the 
  System i Access for Windows product over multiple release, some old 
  information is possibly displayed when you configure a printer driver. To 
  remove the obsolete information from .inf files, do the following after you 
  have completed the install:
    a) Open a command prompt window.
    b) Change the directory to your installation directory. The default 
        installation directory is c:\Program Files\IBM\Client Access.
    c) Type "cwbrminf" and press Enter. 

3.2 64-bit hardware installation considerations
-------------------------------------------------------------------
  The XE1 product supports 64-bit versions of ODBC, OLE DB, and 
  Secure Sockets Layer (SSL) features when these features are installed on 
  a 64-bit edition of the Windows operating system.  The 64-bit versions do not
  appear as separate XE1 features, but are installed with the 32-bit versions of 
  these features.   If you uninstall the 32-bit versions, the 64-bit versions are 
  also uninstalled. 
  
  The System i Access for Windows .NET provider runs from both 32-bit and
  from 64-bit applications, dependent upon the application calling the provider.

  XE1 supports a 32-bit and 64-bit version of the AFP Printer Driver, with 
  these considerations:
    - The 32-bit version does not install on a 64-bit edition of the Windows 
      operating system.
    - Currently, the 64-bit version only installs on a 64-bit IA64 (Itanium family)
      edition of the Windows operating system.

  The SCS Printer Driver does not install on 64-bit editions of the Windows 
  operating system.

  Note: See System i Navigator information to identify any limitations to
            System i Navigator support on Itanium hardware.

3.3 Installation logs 
-------------------------------------------------------------------
  Two logs are created during the installation of the 
  System i Access for Windows (XE1) product.  One of the logs is specific to 
  XE1 and contains the product's custom action information.  This XE1 log is 
  named "xe1instlog.txt" and is always created in the temp directory.

  The other log is the Microsoft's MSI log that contains information about 
  MSI events, sequences, and properties.  By default, this log is named 
  "xe1instlogmsi.txt" and is created in the temp directory.   You can change this 
  log by editing setup.ini in the installation image.  Go to the [Startup] keyword, 
  find, and edit this entry: CmdLine=/l* "%temp%\xe1instlogmsi.txt"
    - To prevent the creation of the log, remove the entry
    - To change the location and name of the log, change the path and file name 
    - To change the content of the log, change the /l* to a different option(s) as 
      described by Microsoft's MSDN Windows Installer Command Line Options
      at this location http://msdn.microsoft.com/default.aspx   


3.4 Files uninstalled during upgrade
-------------------------------------------------------------------
  The following features are no longer included with the 
  System i Access for Windows product.  If you currently have these features 
  installed from a previous release of 5761-XE1, they are uninstalled during the 
  upgrade:
    - Visual Basic ADO/OLE DB Wizards
    -  Ez-Setup

3.5  Memory requirements
-------------------------------------------------------------------
  System i Navigator requires a minimum of 128 MB of memory, however, 256 MB
  or greater is recommended.  Refer to System i Access for Windows -  Install and 
  Setup, for a list of requirements you need to run System i Access for Windows 
  on your PC.  You can access this information through the Information Center 
  using this path:
    Connecting to the System i > System i Access > 
        System i Access for Windows > Install and Setup > Set up the PC

3.6 Information not available at time of publication 
-------------------------------------------------------------------
  See the addendum to this Readme File for information that was not available at 
  the time of publication:  www.ibm.com/systems/i/software/access/v6r1.html



4.0  RESTRICTIONS
-------------------------------------------------------------------

4.1 Microsoft provided fixes 
-------------------------------------------------------------------
  Fixes provided by Microsoft for Microsoft Windows should be reviewed and 
  downloaded from the Microsoft Web site (www.microsoft.com).  If there are 
  any critical Microsoft fixes that the System i Access for Windows product 
  needs, they are listed at the following Web site: 
  www.ibm.com/systems/i/software/access/v6r1.html     


[END OF DOCUMENT]
