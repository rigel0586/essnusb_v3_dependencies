#!/bin/bash

# functions
check_lib_exists(){
 if [[ -f "$1" ]]; then
    echo "$1 exists. Build is successful"
 else 
    echo "$1 does not exist. Exiting installation ..."
    exit 1
 fi
}
# end functions
#####################################################


cd ..
dependency_dir=${PWD}
cd ..
base_directory=${PWD}

genie_dir=genie

genie_lhapdf5=lhapdf-5.9.1.tar.gz
genie_lhapdf6=LHAPDF-6.5.4.tar.gz
genie_log4cpp=log4cpp-1.1.4.tar.gz

genie_lhapdf5_dir=${dependency_dir}/${genie_dir}/lhapdf-5.9.1
genie_lhapdf6_dir=${dependency_dir}/${genie_dir}/LHAPDF-6.5.4
genie_log4cpp_dir=${dependency_dir}/${genie_dir}/log4cpp
genie_pythia6_dir=${dependency_dir}/${genie_dir}/pythia6

# lhapdf5
lhapdf5lib=${genie_lhapdf5_dir}/install/lib/libLHAPDF.so
check_lib_exists ${lhapdf5lib}

# lhapdf6
lhapdf6lib=${genie_lhapdf6_dir}/install/lib/libLHAPDF.so
check_lib_exists ${lhapdf6lib}


# log4cpp
log4cpplib=${genie_log4cpp_dir}/install/lib/liblog4cpp.a
check_lib_exists ${log4cpplib}
log4cppsolib=${genie_log4cpp_dir}/install/lib/liblog4cpp.so
check_lib_exists ${log4cppsolib}

# pythia6
pythia6lib=${genie_pythia6_dir}/v6_428/lib/libPythia6.so
check_lib_exists ${pythia6lib}







