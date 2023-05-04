help([[
]])

prepend_path("MODULEPATH", "/work/noaa/epic-ps/role-epic-ps/miniconda3/modulefiles")

local miniconda_ver=os.getenv("miniconda_ver") or "4.12.0"
load(pathJoin("miniconda3", miniconda_ver))

prepend_path("MODULEPATH", "/work/noaa/epic-ps/role-epic-ps/hpc-stack/libs/intel-2022.1.2/modulefiles/stack")

local hpc_ver=os.getenv("hpc_ver") or "1.2.0"
local hpc_intel_ver=os.getenv("hpc_intel_ver") or "2022.1.2"
local hpc_impi_ver=os.getenv("hpc_impi_ver") or "2022.1.2"
local cmake_ver=os.getenv("cmake_ver") or "3.22.1"

load(pathJoin("hpc", hpc_ver))
load(pathJoin("hpc-intel", hpc_intel_ver))
load(pathJoin("hpc-impi", hpc_impi_ver))
load(pathJoin("cmake", cmake_ver))

load("common")

whatis("Description: GSI Monitoring environment on Orion with Intel Compilers")
