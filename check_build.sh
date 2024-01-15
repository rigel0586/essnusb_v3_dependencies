#!/bin/bash

cd geant4
/bin/bash check_build.sh
cd ..

cd genie
/bin/bash check_build.sh
cd ..

cd root
/bin/bash check_build.sh
cd ..
