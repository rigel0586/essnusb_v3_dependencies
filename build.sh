#!/bin/bash

source packages.sh

cd geant4
/bin/bash build.sh
cd ..

cd genie
/bin/bash build.sh
cd ..

cd root
/bin/bash build.sh
cd ..
