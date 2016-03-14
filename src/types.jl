# http://www.gdal.org/classGDALMajorObject.html

abstract GDALMajorObjectH

abstract GDALDatasetH <: GDALMajorObjectH
abstract GDALDriverH <: GDALMajorObjectH
abstract GDALRasterBandH <: GDALMajorObjectH
abstract OGRLayerH <: GDALMajorObjectH

abstract OGRDataSourceH <: GDALDatasetH
abstract OGRSFDriverH <: GDALDriverH

abstract GDALAsyncReaderH
abstract GDALColorTableH
abstract GDALContourGeneratorH
abstract GDALContourWriter
abstract GDALDerivedPixelFunc
abstract GDALMaskFunc
abstract GDALProgressFunc
abstract GDALRasterAttributeTableH
abstract GDALTransformerFunc
abstract GDALWarpOperationH

abstract OGRCoordinateTransformationH
abstract OGRFeatureDefnH
abstract OGRFeatureH
abstract OGRFieldDefnH
abstract OGRGeometryH
abstract OGRSpatialReferenceH
abstract OGRStyleMgrH
abstract OGRStyleTableH
abstract OGRStyleToolH

abstract CPLErrorHandler
abstract FilterFunc4ValuesType
abstract FilterFuncType
