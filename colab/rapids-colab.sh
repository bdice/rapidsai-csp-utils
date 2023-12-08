echo "PLEASE READ FOR 21.06"
echo "********************************************************************************************************"
echo "Another release, another script change.  We had to revise the script, which now:"
echo "1. Does a more comprehensive install"
echo "2. Includes BlazingSQL"
echo "3. is far easier for everyone to understand and maintain"
echo ""
echo "The script will require you to add these 5 cells to your notebook.  We have also created a new startup template: "
echo "https://colab.research.google.com/drive/1TAAi_szMfWqRfHVfjGSqnGVLr_ztzUM9?usp=sharing"
echo ""
echo "CHANGES T"
echo "CELL 1:"
echo "    # This get the RAPIDS-Colab install files and test check your GPU.  Run cells 1 and 2 only."
echo "    # Please read the output of this cell.  If your Colab Instance is not RAPIDS compatible, it will warn you and give you remediation steps."
echo "    !git clone https://github.com/rapidsai/rapidsai-csp-utils.git"
echo "    !python rapidsai-csp-utils/colab/env-check.py"
echo ""
echo "CELL 2:"
echo "    # This will update the Colab environment and restart the kernel."
echo "    !bash rapidsai-csp-utils/colab/update_gcc.sh"
echo "    import os"
echo "    os._exit(00)"
echo ""
echo "CELL 3:"
echo "    ## Installing CondaColab.  This will restart your kernel again"
echo "    import condacolab"
echo "    condacolab.install()"
echo ""
echo "CELL 4:"
echo "    import condacolab"
echo "    condacolab.check()"
echo ""
echo "CELL 5:"
echo "    # Installing RAPIDS is now 'python rapidsai-csp-utils/colab/install_rapids.py <release> <packages>'"
echo "    # The <release> options are 'stable' and 'nightly'.  Leaving it blank or adding any other words will default to stable."
echo "    # The <packages> option are default blank or 'core'.  By default, we install RAPIDSAI and BlazingSQL.  The 'core' option will install only RAPIDSAI and not include BlazingSQL, "
echo "    !python rapidsai-csp-utils/colab/install_rapids.py nightly"
echo "    import os"
echo "    os.environ['NUMBAPRO_NVVM'] = '/usr/local/cuda/nvvm/lib64/libnvvm.so'"
echo "    os.environ['NUMBAPRO_LIBDEVICE'] = '/usr/local/cuda/nvvm/libdevice/'"
echo "    os.environ['CONDA_PREFIX'] = '/usr/local'"
echo ""
echo "********************************************************************************************************"
echo ""
echo "Enjoy using RAPIDS!  If you have any issues with or suggestions for RAPIDSAI on Colab, please create a issue on https://github.com/rapidsai/rapidsai-csp-utils/issues/new."
