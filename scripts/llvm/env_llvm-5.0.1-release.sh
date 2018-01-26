
 #
 # LLVM (RELEASE) environment settings
 #
 # Fri Jan 12 13:55:17 EST 2018
 #

LLVM_VERSION="5.0.1"
LLVM_TYPE=release

# XXX: Edit here
llvmdevel_basedir="$HOME/projects/ompi-ecp/source/llvm-vanilla/$LLVM_VERSION/install/$LLVM_TYPE"

llvmdevel_lib_path="${llvmdevel_basedir}/lib"
llvmdevel_bin_path="${llvmdevel_basedir}/bin"

#### END CONFIG ####

if ! `echo $PATH | grep -q ${llvmdevel_bin_path}` ; then
    export PATH="${llvmdevel_bin_path}:$PATH"
fi

if [ "x$LD_LIBRARY_PATH" == "x" ] ; then
    export LD_LIBRARY_PATH="${llvmdevel_lib_path}"
else
    if ! `echo $LD_LIBRARY_PATH | grep -q ${llvmdevel_lib_path}` ; then
        export LD_LIBRARY_PATH="${llvmdevel_lib_path}:$LD_LIBRARY_PATH"
    fi
fi
