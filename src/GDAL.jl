module GDAL

module C
    const libgdal = "libgdal"

    include("C/misc.jl")
    include("C/common.jl")
    include("C/cpl_error.jl")
    include("C/cpl_minixml.jl")
    include("C/cpl_progress.jl")
    include("C/gdal.jl")
    include("C/gdal_alg.jl")
    include("C/gdalwarper.jl")
    include("C/ogr_api.jl")
    include("C/ogr_core.jl")
    include("C/ogr_srs_api.jl")
end

const libgdal = "libgdal"

include("C/misc.jl")
include("C/common.jl")
include("gdal_h.jl")
include("gdal_alg.jl")
include("ogr_api.jl")
include("ogr_srs_api.jl")

include("error.jl")

function __init__()
    # register custom error handler
    funcptr = cfunction(gdaljl_errorhandler, Ptr{Void}, (UInt32, Cint, Ptr{UInt8}))
    C.CPLSetErrorHandler(funcptr)

    C.GDALAllRegister()
    versionstring = bytestring(C.GDALVersionInfo(pointer("RELEASE_NAME")))
    const GDALVERSION = convert(VersionNumber, versionstring)
    if GDALVERSION < v"2.0.0"
        warn("GDAL.jl is made for GDAL 2.0 and later")
        # deprecated in GDAL 2.0, is covered by GDALRegisterAll
        C.OGRRegisterAll()
    end
end

end
