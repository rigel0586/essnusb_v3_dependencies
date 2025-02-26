# EssnusbV3
Extension to previous project Essnusb

# 1.Prerequisites (The below are only if you want to build and run the application locally)
The project depends on the following subproject (for each the version used is added after the name): <br />
  a) CERN ROOT 6-32-10 - https://root.cern/releases/release-62804/ <br />
  b) Geant4 geant4-11.1-release - https://geant4-userdoc.web.cern.ch/UsersGuides/InstallationGuide/html/installguide.html <br />
  c) Genie  (tag repoR-3_04_00 from repo) - https://hep.ph.liv.ac.uk/~costasa/genie/get_started.html <br />
<br />
Each of the above project has its own dependencies. The bewow list the procedure to build them on Linux Mint 21.2 <br />

# 2. Package dependencies for all frameworks
**sudo apt-get -y install repo cmake dpkg-dev g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev libssl-dev cmake fastlink gfortran**
**sudo apt-get -y install libtool automake autoconf autotools-dev  python3 build-essential libxmu-dev libxi-dev libgl-dev binutils libglu1-mesa freeglut3-dev**
**sudo apt-get -y install dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev libssl-dev gfortran libpcre3-dev** 
**sudo apt-get -y install xlibmesa-glu-dev libglew-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev** 
**sudo apt-get -y install libldap2-dev libxml2-dev libkrb5-dev libgsl0-dev qtwebengine5-dev**
**sudo apt-get -y install protobuf-compiler python3-dev python3-numpy subversion doxygen clang-format curl libmotif-dev qttools5-dev**
**sudo apt-get -y install libtbb-dev libvdt-dev libgif-dev**
**sudo apt-get -y install libglu1-mesa-dev libgraphviz-dev libgsl-dev  nlohmann-json3-dev libgl2ps-dev liblzma-dev libxxhash-dev liblz4-dev libzstd-dev**
**sudo apt-get -y install qt3d5-dev qt3d5-examples qt3d5-doc libxmuu-dev** 
**sudo apt-get -y install libnsl-dev libnsl2**


## A) CERN ROOT 6-32-10 - git clone is required with tag v6-32-10
- Pythia6 is required to have the Root lib generated, also it is used by Genie <br />
          To build it navigate to **~/genie/dependencies/pythia6** <br />
          Original linkg: * *https://github.com/GENIE-MC/Generator/tree/master/src/scripts/build/ext/build_pythia6.sh* *
          And execute  <br />
             **$source build_pythia6.sh** <br />

- Gsl has to be build, the sources used are located in **~root/dependencies/gsl-2.7.1**<br />
          Open a terminal and type <br />
              #./configure <br />
              #make <br />
              #make install <br />

  Afthere the above have been build and installed, open the root directory **~/<path_to_root_source root_v6.28.04>/source** and type <br />
  **$cmake -S ../source -B . -DCMAKE_INSTALL_PREFIX=<install path> -Dmathmore=mathmore -Dpythia6=pythia6 -DPYTHIA6_INCLUDE_DIR=<path_pythia6_inc> -DPYTHIA6_LIBRARY= <path_Pythia6_lib>** <br />
  **$cmake --build .** <br />
  **$Cmake --install .** <br />

  To have the root detected go to the installation folder and type <br />
  **source /<install_path>/bin/thisroot.sh** <br />
  After which root scripts can be executed. <br />

## B) Geant4 - git clone is required with tag v11.3.0
  - CLHEP dependency -> go to **/geant4/dependencies** and exctract in a clhep folder the clhep-2.4.6.4.tgz  <br />
    create a new folder named **build** and enter it <br />
    open the build folder and type:  <br />
    $cmake -S \<extracted CLHEP folder\> -B . -DCMAKE_INSTALL_PREFIX=\<install path\> <br />
    $cmake --build . <br />
    $cmake --install . <br />

  - Expat dependency -> go to **/geant4/dependencies** and exctract in a clhep folder the expat-2.6.4.tar.gz  <br />
    create a new folder named **build** and enter it <br />
    open the build folder and type:  <br />
    $cmake -S \<extracted Expat folder\> -B . -DCMAKE_INSTALL_PREFIX=\<install path\> <br />
    $cmake --build . <br />
    $cmake --install . <br />

  - Zlib dependency -> go to **/geant4/dependencies** and exctract in a clhep folder the zlib-1.2.13.tar.gz  <br />
    create a new folder named **build** and enter it <br />
    open the build folder and type:  <br />
    $cmake -S \<extracted Zlib folder\> -B . -DCMAKE_INSTALL_PREFIX=\<install path\> <br />
    $cmake --build . <br />
    $cmake --install . <br />

  - Geant4  -> The geant4 git repo has to be cloned.Then go to **~/<path_to_source of geant4>/** <br />
    create a new folder named **build**, and enter it <br />
    open the build folder and type:  <br />
    $cmake -S \<path to geant sources \> -B . -DCMAKE_INSTALL_PREFIX=\<install path\> <br />
    $cmake --build . <br />
    $cmake --install . <br />

## C) Genie - git clone is required of the genie repo with tag R-3_06_00
 - log4cpp has to be build, the sources used are located in **~genie/dependencies/log4cpp/log4cpp-1.1.4**<br />
          Create a build folder, enter and a terminal, type <br />
              $cmake -S \<Path to ~/genie/dependencies/log4cpp/log4cpp-1.1.4 \> -B . -DCMAKE_INSTALL_PREFIX=\<install path\> <br />
              $cmake --build . <br />
              $cmake --install . <br />


Before following the installation instructions given above and and/or before running GENIE, make sure that:
-> You have defined $GENIE to point at your top level GENIE directory
-> You have defined $ROOTSYS to point at your ROOT installation
-> All your library paths ($ROOTSYS/lib, $GENIE/lib, /path/to/pyhia6, /path/to/libxml2/lib, /path/to/log4cpp/lib, ...) are listed in $LD_LIBRARY_PATH (of $DYLD_LIBRARY_PATH on Mac OS X)
-> All your binary paths ($ROOTSYS/bin, $GENIE/bin) are listed in $PATH

-Navigate to Genie folder, type in terminal <br />
    $export GENIE=\< path to genie source **~genie/repoR-3_06_00** \>  <br />
    $export ROOTSYS=\< path to root installation folder \>  <br />
    $export PATH=$PATH:\< path to root installation folder \>/bin  <br />
    $./configure --prefix=/some/installation/path <br />
               --disable-profiler <br />
               --disable-validation-tools <br />
               --enable-cernlib <br />
               --disable-lhapdf <br />
               --enable-flux-drivers <br />
               --enable-geom-drivers <br />
               --disable-doxygen <br />
               --enable-test <br />
               --enable-mueloss <br />
               --enable-dylibversion <br />
               --enable-t2k <br />
               --enable-fnal <br />
               --enable-atmo <br />
               --enable-nucleon-decay <br />
               --disable-masterclass <br />
               --disable-debug <br />
               --with-optimiz-level=O2 <br />
               --with-pythia6-lib=/full/path/to/my/libPythia6/ <br />
               --with-libxml2-inc=/full/path/to/my/libml2/includes/ <br />
               --with-libxml2-lib=/full/path/to/my/libxml2/library/ <br />
               --with-log4cpp-inc=/full/path/to/my/log4cpp/includes/ <br />
               --with-log4cpp-lib=/full/path/to/my/log4cpp/library/ <br />

    To run genie binaries the following evironmental variables have to be set: 
    $export PATH=$PATH:$ROOTSYS/bin:$GENIE/bin -> ROOTSYS and GENIE are set above
    $export LD_LIBRARY_PATH=$LD_LIBRARY_PATH: ~/third_party/genie/dependencies/pythia6/v6_428/lib:~/third_party/genie/dependencies/log4cpp/install/lib:/usr/local/lib:\<root install folder\>/lib:\<genie install folder\>/lib
               
  

    
