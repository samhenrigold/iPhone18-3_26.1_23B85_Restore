@interface CIImageProcessorInput
- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context;
- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds roiTileIndex:(unint64_t)index roiTileCount:(unint64_t)count onlyMetal:(BOOL)self0 context:(void *)self1;
- (MTLTexture)metalTexture;
- (__IOSurface)surface;
- (const)baseAddress;
- (void)baseAddress;
- (void)dealloc;
- (void)metalTexture;
- (void)surface;
@end

@implementation CIImageProcessorInput

- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context
{
  v10.receiver = self;
  v10.super_class = CIImageProcessorInput;
  result = [(CIImageProcessorInOut *)&v10 initWithSurface:surface texture:texture digest:digest allowSRGB:b bounds:metal onlyMetal:context context:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_roiTileIndex = 0;
    result->_roiTileCount = 1;
  }

  return result;
}

- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds roiTileIndex:(unint64_t)index roiTileCount:(unint64_t)count onlyMetal:(BOOL)self0 context:(void *)self1
{
  result = [(CIImageProcessorInput *)self initWithSurface:surface texture:texture digest:digest allowSRGB:b bounds:metal onlyMetal:context context:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_roiTileIndex = index;
    result->_roiTileCount = count;
  }

  return result;
}

- (void)dealloc
{
  if (self->super._surfaceLocked)
  {
    surface = self->super._surface;
    if (surface)
    {
      IOSurfaceUnlock(surface, 1u, 0);
      self->super._surfaceLocked = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = CIImageProcessorInput;
  [(CIImageProcessorInOut *)&v4 dealloc];
}

- (__IOSurface)surface
{
  if (!self->super._onlyMetal)
  {
    return self->super._surface;
  }

  v2 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(CIImageProcessorInput *)v2 surface:v3];
  }

  return 0;
}

- (const)baseAddress
{
  if (CGRectIsEmpty(self->super._region))
  {
    return 0;
  }

  surface = self->super._surface;
  if (!surface)
  {
    return 0;
  }

  PlaneCount = IOSurfaceGetPlaneCount(surface);
  if (PlaneCount >= 2)
  {
    v6 = ci_logger_api(PlaneCount, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v6 baseAddress:v7];
    }

    return 0;
  }

  if (self->super._onlyMetal)
  {
    v14 = ci_logger_api(PlaneCount, v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v14 baseAddress:v15];
    }

    return 0;
  }

  CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
  if (CompressionTypeOfPlane)
  {
    v24 = ci_logger_api(CompressionTypeOfPlane, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v24 baseAddress:v25];
    }

    return 0;
  }

  if (!self->super._surfaceLocked)
  {
    IOSurfaceLock(self->super._surface, 1u, 0);
    self->super._surfaceLocked = 1;
  }

  v33 = self->super._surface;

  return IOSurfaceGetBaseAddress(v33);
}

- (MTLTexture)metalTexture
{
  PlaneCount = IOSurfaceGetPlaneCount(self->super._surface);
  if (PlaneCount < 2)
  {
    CIMetalFormatForFormat([(CIImageProcessorInOut *)self format], 0);
    [(CIImageProcessorInOut *)self device];
    InfoForDevice = MTLPixelFormatGetInfoForDevice();
    v15 = ci_logger_api(InfoForDevice, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CIImageProcessorInput metalTexture];
    }
  }

  else
  {
    v5 = ci_logger_api(PlaneCount, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v5 metalTexture:v6];
    }
  }

  return 0;
}

- (void)surface
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorInput surface]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s a Metal-only CIProcessorInput cannot be accessed via an IOSurface.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)baseAddress
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorInput baseAddress]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s a biplanar CIProcessorInput cannot be accessed via its base address.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)metalTexture
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorInput metalTexture]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s A biplanar CIProcessorInput cannot be accessed via a Metal texture.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end