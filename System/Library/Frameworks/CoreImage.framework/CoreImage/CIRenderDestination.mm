@interface CIRenderDestination
+ (int)_crashed_because_nonaddressable_memory_was_passed_to_initWithBitmapData:(void *)data width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row format:(int)format;
- (BOOL)blendsInDestinationColorSpace;
- (BOOL)isClamped;
- (BOOL)isCompressed;
- (BOOL)isDithered;
- (BOOL)isFlipped;
- (CGColorSpaceRef)colorSpace;
- (CIBlendKernel)blendKernel;
- (CIRenderDestination)init;
- (CIRenderDestination)initWithBitmapData:(void *)data width:(NSUInteger)width height:(NSUInteger)height bytesPerRow:(NSUInteger)bytesPerRow format:(CIFormat)format;
- (CIRenderDestination)initWithGLTexture:(unsigned int)texture target:(unsigned int)target width:(NSUInteger)width height:(NSUInteger)height;
- (CIRenderDestination)initWithIOSurface:(IOSurface *)surface;
- (CIRenderDestination)initWithMTLTexture:(id)texture commandBuffer:(id)commandBuffer;
- (CIRenderDestination)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer;
- (CIRenderDestination)initWithWidth:(NSUInteger)width height:(NSUInteger)height pixelFormat:(MTLPixelFormat)pixelFormat commandBuffer:(id)commandBuffer mtlTextureProvider:(void *)block;
- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space pixelBufferProvider:(id)provider;
- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space surfaceProvider:(id)provider;
- (CIRenderDestinationAlphaMode)alphaMode;
- (NSUInteger)height;
- (NSUInteger)width;
- (id)_initWithInternalRenderDestination:(void *)destination width:(unint64_t)width height:(unint64_t)height format:(int)format colorspace:(CGColorSpace *)colorspace;
- (id)debugDescription;
- (id)description;
- (id)imageRepresentation;
- (id)label;
- (id)surface;
- (int)ditherDepth;
- (int)format;
- (void)_internalRenderDestination;
- (void)_render:(id)_render withContext:(id)context;
- (void)_set_YCC_matrix:(int)c_matrix fullRange:(BOOL)range depth:(int)depth isFloat:(float)float;
- (void)dealloc;
- (void)imageRepresentation;
- (void)init;
- (void)setAlphaMode:(CIRenderDestinationAlphaMode)alphaMode;
- (void)setBlendKernel:(CIBlendKernel *)blendKernel;
- (void)setBlendsInDestinationColorSpace:(BOOL)blendsInDestinationColorSpace;
- (void)setClamped:(BOOL)clamped;
- (void)setColorSpace:(CGColorSpaceRef)colorSpace;
- (void)setCompressed:(BOOL)compressed;
- (void)setDithered:(BOOL)dithered;
- (void)setFlipped:(BOOL)flipped;
- (void)setLabel:(id)label;
@end

@implementation CIRenderDestination

- (CIRenderDestination)init
{
  v3 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderDestination *)v3 init:v4];
  }

  return 0;
}

- (void)_internalRenderDestination
{
  priv = self->_priv;
  if (priv)
  {
    return *priv;
  }

  else
  {
    return 0;
  }
}

- (id)_initWithInternalRenderDestination:(void *)destination width:(unint64_t)width height:(unint64_t)height format:(int)format colorspace:(CGColorSpace *)colorspace
{
  if (destination)
  {
    v8 = *&format;
    v20.receiver = self;
    v20.super_class = CIRenderDestination;
    v12 = [(CIRenderDestination *)&v20 init];
    if (v12)
    {
      v13 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A0040E62546F1uLL);
      v14 = CI::Object::ref(destination);
      *v13 = v14;
      v13[1] = width;
      v13[2] = height;
      *(v13 + 6) = v8;
      CI::RenderDestination::setColorspace(v14, colorspace);
      v16 = CI::format_modernize(v8, "[CIRenderDestination _initWithInternalRenderDestination:width:height:format:colorspace:]", v15);
      v17 = v16;
      if (v16 <= 2568)
      {
        if (!v16)
        {
          v13[15] = 1;
          *(v13 + 136) = 1;
          goto LABEL_14;
        }

        if (v16 == 2567)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v16 == 2569 || v16 == 3081)
        {
LABEL_12:
          v13[15] = 1;
          goto LABEL_13;
        }

        if (v16 == 3079)
        {
LABEL_7:
          v13[15] = 0;
LABEL_13:
          *(v13 + 136) = 0;
LABEL_14:
          *(v13 + 64) = 0;
          *(v13 + 33) = CI::format_bits_per_component(v17);
          *(v13 + 137) = 0;
          v13[18] = 0;
          v12->_priv = v13;
          return v12;
        }
      }

      if (!CI::format_only_alpha(v16))
      {
        if (CI::format_has_unpremul_alpha(v17))
        {
          v13[15] = 2;
          v19 = 1;
        }

        else
        {
          v13[15] = CI::format_has_alpha(v17);
          v19 = CI::format_is_float(v17) ^ 1;
        }

        *(v13 + 136) = v19;
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (*priv)
    {
      CI::Object::unref(*priv);
    }

    v4 = *(priv + 18);
    *(priv + 18) = 0;
    free(self->_priv);
    self->_priv = 0;
  }

  v5.receiver = self;
  v5.super_class = CIRenderDestination;
  [(CIRenderDestination *)&v5 dealloc];
}

- (void)_render:(id)_render withContext:(id)context
{
  v4 = (MEMORY[0x1EEE9AC00])(self, a2, _render, context);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v72 = *MEMORY[0x1E69E9840];
  _internalContext = [v5 _internalContext];
  _internalRenderDestination = [v9 _internalRenderDestination];
  _internalRepresentation = [v8 _internalRepresentation];
  if (!_internalRenderDestination)
  {
    operator new();
  }

  v13 = _internalRepresentation;
  if (!_internalRepresentation)
  {
    operator new();
  }

  if (!_internalContext)
  {
    operator new();
  }

  [v8 extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if ((*(*_internalContext + 16))(_internalContext) == 83)
  {
    v73.origin.x = v15;
    v73.origin.y = v17;
    v73.size.width = v19;
    v73.size.height = v21;
    v22 = CGRectIsInfinite(v73) ? INFINITY : v19 * v21;
    v23 = v13[112];
    v24 = CI_MAX_CPU_RENDER_SIZE();
    v25 = (v24 * v24);
    if (v23 != 1 || v22 > v25)
    {
      v26 = *(_internalContext + 86);
      if (+[CIContext isOpenCLAvailable])
      {
        _internalContext = [v6 _internalFallbackCL];
        v27 = 0;
        v28 = "OpenCL";
      }

      else if (+[CIContext isMetalAvailable])
      {
        _internalContext = (*(*_internalContext + 120))(_internalContext);
        v27 = 0;
        v28 = "Metal";
      }

      else
      {
        v28 = 0;
        v27 = 1;
      }

      v29 = fmemopen(__buf, 0x4000uLL, "w");
      v30 = CI::Image::print_graph(v13, v29);
      if (v27)
      {
        if ((v23 & 1) == 0)
        {
          v32 = ci_logger_render(v30, v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)__buf _render:v32 withContext:v33, v34, v35, v36, v37, v38];
          }

          operator new();
        }
      }

      else
      {
        snprintf(__str, 0x100uLL, " extent exceeds maximum area of %d x %d", v24, v24);
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v54 = 0u;
        v55 = 0u;
        v39 = "";
        if (v22 > v25)
        {
          v40 = __str;
        }

        else
        {
          v40 = "";
        }

        if ((v22 <= v25) | v23 & 1)
        {
          v41 = "";
        }

        else
        {
          v41 = " and";
        }

        if (!v23)
        {
          v39 = " it uses an incompatible kernel";
        }

        v42 = snprintf(v54, 0x100uLL, "The CIImage %p will be rendered by %s instead of CPU because%s%s%s.", v13, v28, v40, v41, v39);
        v44 = ci_logger_render(v42, v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v51 = v54;
          v52 = 2082;
          v53 = __buf;
          _os_log_impl(&dword_19CC36000, v44, OS_LOG_TYPE_INFO, "%{public}s\n%{public}s", buf, 0x16u);
        }

        *(_internalContext + 86) = v26;
      }
    }
  }

  [v8 extent];
  ++_internalContext[19];
  _internalContext[24] = 0;
  _internalContext[20] = v45;
  _internalContext[21] = v46;
  _internalContext[22] = v47;
  _internalContext[23] = v48;
  (*(*_internalContext + 248))(_internalContext, 0);
  return (*(*_internalRenderDestination + 72))(_internalRenderDestination, v13, _internalContext);
}

- (void)_set_YCC_matrix:(int)c_matrix fullRange:(BOOL)range depth:(int)depth isFloat:(float)float
{
  v24 = *MEMORY[0x1E69E9840];
  if (c_matrix)
  {
    if (float == 0.0)
    {
      depthCopy = depth;
    }

    else
    {
      depthCopy = 0;
    }

    if (get_rgb_to_ycc_matrix(c_matrix, range, depthCopy, &v23, &v21, &v19, &v17))
    {
      v9 = v21;
      v10 = v22;
      v11 = v19;
      v12 = v20;
      v13 = v17;
      v14 = v18;
      v15 = v23;
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
      v12 = 0;
      v14 = 0;
      v11 = 0uLL;
      v13 = 0uLL;
      v15 = 0uLL;
    }

    priv = self->_priv;
    *(priv + 7) = c_matrix;
    *(priv + 2) = v9;
    *(priv + 6) = v10;
    *(priv + 56) = v11;
    *(priv + 9) = v12;
    *(priv + 5) = v13;
    *(priv + 12) = v14;
    *(priv + 104) = v15;
  }
}

- (CIRenderDestination)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer
{
  v47 = *MEMORY[0x1E69E9840];
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    if (Width - 1 >= 0xF4240 || Height - 1 >= 0xF4240)
    {
      v22 = ci_logger_api(Height, v7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v22 initWithPixelBuffer:v23, v24, v25, v26, v27, v28, v29];
      }
    }

    else
    {
      v8 = CI::format_from_CVPixelBuffer(pixelBuffer, v7);
      v9 = checkFormat(v8);
      if (v9)
      {
        is_ycc_biplanar = CI::format_is_ycc_biplanar(v8);
        PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
        if ((is_ycc_biplanar ^ (PlaneCount < 2)))
        {
          CVImageBufferCopyColorSpace(pixelBuffer);
          if (CVPixelBufferGetIOSurface(pixelBuffer))
          {
            operator new();
          }

          operator new();
        }

        v38 = ci_logger_api(PlaneCount, v13);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v38 initWithPixelBuffer:v39, v40, v41, v42, v43, v44, v45];
        }
      }

      else
      {
        v30 = ci_logger_api(v9, v10);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v30 initWithPixelBuffer:v31, v32, v33, v34, v35, v36, v37];
        }
      }
    }
  }

  else
  {
    v14 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v14 initWithPixelBuffer:v15, v16, v17, v18, v19, v20, v21];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space pixelBufferProvider:(id)provider
{
  selfCopy = self;
  if (!provider)
  {
    v22 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v22 initWithWidth:v23 height:v24 pixelFormat:v25 colorSpace:v26 pixelBufferProvider:v27, v28, v29];
    }

    goto LABEL_18;
  }

  if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
  {
    v30 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v30 initWithWidth:v31 height:v32 pixelFormat:v33 colorSpace:v34 pixelBufferProvider:v35, v36, v37];
    }

    goto LABEL_18;
  }

  v9 = CI::format_from_PixelFormatType(*&format);
  Model = checkFormat(v9);
  if ((Model & 1) == 0)
  {
    v38 = ci_logger_api(Model, v11);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v38 initWithWidth:v39 height:v40 pixelFormat:v41 colorSpace:v42 pixelBufferProvider:v43, v44, v45];
    }

    goto LABEL_18;
  }

  if (!space)
  {
    goto LABEL_21;
  }

  TypeID = CGColorSpaceGetTypeID();
  Model = CFGetTypeID(space);
  if (TypeID != Model || (Model = CGColorSpaceSupportsOutput(space), !Model))
  {
LABEL_10:
    v14 = ci_logger_api(Model, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v14 initWithWidth:v15 height:v16 pixelFormat:v17 colorSpace:v18 pixelBufferProvider:v19, v20, v21];
    }

LABEL_18:

    return 0;
  }

  is_luminance = CI::format_is_luminance(v9);
  Model = CGColorSpaceGetModel(space);
  if (!is_luminance)
  {
    if (Model == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (Model)
  {
    goto LABEL_10;
  }

LABEL_21:
  v47 = ci_logger_api(Model, v11);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderDestination *)v47 initWithWidth:v48 height:v49 pixelFormat:v50 colorSpace:v51 pixelBufferProvider:v52, v53, v54];
  }

  return selfCopy;
}

- (CIRenderDestination)initWithIOSurface:(IOSurface *)surface
{
  v47 = *MEMORY[0x1E69E9840];
  if (surface)
  {
    Width = IOSurfaceGetWidth(surface);
    Height = IOSurfaceGetHeight(surface);
    if (Width - 1 >= 0xF4240 || Height - 1 >= 0xF4240)
    {
      v22 = ci_logger_api(Height, v7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v22 initWithIOSurface:v23, v24, v25, v26, v27, v28, v29];
      }
    }

    else
    {
      v8 = CI::format_from_IOSurface(surface, v7);
      v9 = checkFormat(v8);
      if (v9)
      {
        is_ycc_biplanar = CI::format_is_ycc_biplanar(v8);
        PlaneCount = IOSurfaceGetPlaneCount(surface);
        if ((is_ycc_biplanar ^ (PlaneCount < 2)))
        {
          CopySurfaceColorSpace(surface);
          operator new();
        }

        v38 = ci_logger_api(PlaneCount, v13);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v38 initWithIOSurface:v39, v40, v41, v42, v43, v44, v45];
        }
      }

      else
      {
        v30 = ci_logger_api(v9, v10);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v30 initWithIOSurface:v31, v32, v33, v34, v35, v36, v37];
        }
      }
    }
  }

  else
  {
    v14 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v14 initWithIOSurface:v15, v16, v17, v18, v19, v20, v21];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space surfaceProvider:(id)provider
{
  selfCopy = self;
  if (!provider)
  {
    v22 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v22 initWithWidth:v23 height:v24 pixelFormat:v25 colorSpace:v26 surfaceProvider:v27, v28, v29];
    }

    goto LABEL_18;
  }

  if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
  {
    v30 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v30 initWithWidth:v31 height:v32 pixelFormat:v33 colorSpace:v34 surfaceProvider:v35, v36, v37];
    }

    goto LABEL_18;
  }

  v9 = CI::format_from_PixelFormatType(*&format);
  Model = checkFormat(v9);
  if ((Model & 1) == 0)
  {
    v38 = ci_logger_api(Model, v11);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v38 initWithWidth:v39 height:v40 pixelFormat:v41 colorSpace:v42 surfaceProvider:v43, v44, v45];
    }

    goto LABEL_18;
  }

  if (!space)
  {
    goto LABEL_21;
  }

  TypeID = CGColorSpaceGetTypeID();
  Model = CFGetTypeID(space);
  if (TypeID != Model || (Model = CGColorSpaceSupportsOutput(space), !Model))
  {
LABEL_10:
    v14 = ci_logger_api(Model, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v14 initWithWidth:v15 height:v16 pixelFormat:v17 colorSpace:v18 surfaceProvider:v19, v20, v21];
    }

LABEL_18:

    return 0;
  }

  is_luminance = CI::format_is_luminance(v9);
  Model = CGColorSpaceGetModel(space);
  if (!is_luminance)
  {
    if (Model == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (Model)
  {
    goto LABEL_10;
  }

LABEL_21:
  v47 = ci_logger_api(Model, v11);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderDestination *)v47 initWithWidth:v48 height:v49 pixelFormat:v50 colorSpace:v51 surfaceProvider:v52, v53, v54];
  }

  return selfCopy;
}

- (CIRenderDestination)initWithMTLTexture:(id)texture commandBuffer:(id)commandBuffer
{
  if (texture)
  {
    width = [texture width];
    height = [texture height];
    if ((width - 1) >= 0xF4240 || (height - 1) >= 0xF4240)
    {
      v31 = ci_logger_api(height, v8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v31 initWithMTLTexture:v32 commandBuffer:v33, v34, v35, v36, v37, v38];
      }
    }

    else
    {
      depth = [texture depth];
      if (depth == 1)
      {
        textureType = [texture textureType];
        if (textureType == 2)
        {
          usage = [texture usage];
          if ((usage & 2) != 0)
          {
            v67 = 0;
            Format = CIMetalTextureGetFormat(texture);
            v57 = CIFormatFromCIMetalTextureFormat(Format, &v67);
            if (v57)
            {
              default_colorspace_for_format(v57, v67);
              operator new();
            }

            v59 = ci_logger_api(v57, v58);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [(CIRenderDestination *)v59 initWithMTLTexture:v60 commandBuffer:v61, v62, v63, v64, v65, v66];
            }
          }

          else
          {
            v15 = ci_logger_api(usage, v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [(CIRenderDestination *)v15 initWithMTLTexture:v16 commandBuffer:v17, v18, v19, v20, v21, v22];
            }
          }
        }

        else
        {
          v47 = ci_logger_api(textureType, v12);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)v47 initWithMTLTexture:v48 commandBuffer:v49, v50, v51, v52, v53, v54];
          }
        }
      }

      else
      {
        v39 = ci_logger_api(depth, v10);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v39 initWithMTLTexture:v40 commandBuffer:v41, v42, v43, v44, v45, v46];
        }
      }
    }
  }

  else
  {
    v23 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v23 initWithMTLTexture:v24 commandBuffer:v25, v26, v27, v28, v29, v30];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithWidth:(NSUInteger)width height:(NSUInteger)height pixelFormat:(MTLPixelFormat)pixelFormat commandBuffer:(id)commandBuffer mtlTextureProvider:(void *)block
{
  if (block)
  {
    if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
    {
      v18 = ci_logger_api(self, a2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v18 initWithWidth:v19 height:v20 pixelFormat:v21 commandBuffer:v22 mtlTextureProvider:v23, v24, v25];
      }
    }

    else
    {
      v35 = 0;
      v8 = CIFormatFromCIMetalTextureFormat(pixelFormat, &v35);
      if (v8)
      {
        default_colorspace_for_format(v8, v35);
        operator new();
      }

      v26 = ci_logger_api(v8, v9);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v26 initWithWidth:v27 height:v28 pixelFormat:v29 commandBuffer:v30 mtlTextureProvider:v31, v32, v33];
      }
    }
  }

  else
  {
    v10 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v10 initWithWidth:v11 height:v12 pixelFormat:v13 commandBuffer:v14 mtlTextureProvider:v15, v16, v17];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithGLTexture:(unsigned int)texture target:(unsigned int)target width:(NSUInteger)width height:(NSUInteger)height
{
  if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
  {
    v7 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v7 initWithGLTexture:v8 target:v9 width:v10 height:v11, v12, v13, v14];
    }
  }

  else
  {
    if (target == 3553)
    {
      CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      operator new();
    }

    v15 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v15 initWithGLTexture:v16 target:v17 width:v18 height:v19, v20, v21, v22];
    }
  }

  return 0;
}

+ (int)_crashed_because_nonaddressable_memory_was_passed_to_initWithBitmapData:(void *)data width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row format:(int)format
{
  v11 = CI::format_bits_per_pixel(format);
  rowCopy2 = (v11 * width) >> 3;
  if (v11 == 12)
  {
    rowCopy2 = row;
  }

  if (!v11)
  {
    rowCopy2 = row;
  }

  return *(data + (height - 1) * row + rowCopy2 - 1) + *data;
}

- (CIRenderDestination)initWithBitmapData:(void *)data width:(NSUInteger)width height:(NSUInteger)height bytesPerRow:(NSUInteger)bytesPerRow format:(CIFormat)format
{
  if (data)
  {
    if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
    {
      v27 = ci_logger_api(self, a2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v27 initWithBitmapData:v28 width:v29 height:v30 bytesPerRow:v31 format:v32, v33, v34];
      }
    }

    else if (bytesPerRow < 0x3D0901)
    {
      v37 = CI::format_modernize(*&format, "[CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:]", data);
      is_supported_render_to_bitmap = CI::format_is_supported_render_to_bitmap(v37);
      if (is_supported_render_to_bitmap)
      {
        v40 = CI::format_destination_rowbytes_requirement(v37);
        v41 = CI::format_bytes_per_pixel(v37);
        if (v41 * width <= bytesPerRow)
        {
          if (!(bytesPerRow % v40))
          {
            [CIRenderDestination _crashed_because_nonaddressable_memory_was_passed_to_initWithBitmapData:data width:width height:height bytesPerRow:bytesPerRow format:v37];
            default_colorspace_for_format(v37, 0);
            operator new();
          }

          v52 = ci_logger_api(v41, v42);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:];
          }
        }

        else
        {
          v43 = ci_logger_api(v41, v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)v43 initWithBitmapData:v44 width:v45 height:v46 bytesPerRow:v47 format:v48, v49, v50];
          }
        }
      }

      else
      {
        v51 = ci_logger_api(is_supported_render_to_bitmap, v39);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [CIRenderDestination initWithBitmapData:v37 width:? height:? bytesPerRow:? format:?];
        }
      }
    }

    else
    {
      v11 = ci_logger_api(self, a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v11 initWithBitmapData:v12 width:v13 height:v14 bytesPerRow:v15 format:v16, v17, v18];
      }
    }
  }

  else
  {
    v19 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v19 initWithBitmapData:v20 width:v21 height:v22 bytesPerRow:v23 format:v24, v25, v26];
    }
  }

  return 0;
}

- (NSUInteger)width
{
  priv = self->_priv;
  if (priv)
  {
    return priv[1];
  }

  else
  {
    return 0;
  }
}

- (NSUInteger)height
{
  priv = self->_priv;
  if (priv)
  {
    return priv[2];
  }

  else
  {
    return 0;
  }
}

- (CIRenderDestinationAlphaMode)alphaMode
{
  priv = self->_priv;
  if (priv)
  {
    return *(priv + 15);
  }

  else
  {
    return 0;
  }
}

- (void)setAlphaMode:(CIRenderDestinationAlphaMode)alphaMode
{
  if (alphaMode < 4)
  {
    priv = self->_priv;
    if (priv)
    {
      priv[15] = alphaMode;
    }
  }

  else
  {
    v3 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v3 setAlphaMode:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (BOOL)isFlipped
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[128];
  }

  return priv & 1;
}

- (void)setFlipped:(BOOL)flipped
{
  priv = self->_priv;
  if (priv)
  {
    priv[128] = flipped;
  }
}

- (BOOL)isDithered
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[129];
  }

  return priv & 1;
}

- (void)setDithered:(BOOL)dithered
{
  priv = self->_priv;
  if (priv)
  {
    priv[129] = dithered;
  }
}

- (int)ditherDepth
{
  priv = self->_priv;
  if (priv)
  {
    return priv[33];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isClamped
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[136];
  }

  return priv & 1;
}

- (void)setClamped:(BOOL)clamped
{
  priv = self->_priv;
  if (priv)
  {
    priv[136] = clamped;
  }
}

- (BOOL)isCompressed
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[138];
  }

  return priv & 1;
}

- (void)setCompressed:(BOOL)compressed
{
  priv = self->_priv;
  if (priv)
  {
    priv[138] = compressed;
  }
}

- (int)format
{
  priv = self->_priv;
  if (priv)
  {
    v3 = (priv + 24);
  }

  else
  {
    v3 = &kCIFormatNil;
  }

  return *v3;
}

- (CGColorSpaceRef)colorSpace
{
  priv = self->_priv;
  if (priv && (v3 = *priv) != 0)
  {
    return *(v3 + 24);
  }

  else
  {
    return 0;
  }
}

- (void)setColorSpace:(CGColorSpaceRef)colorSpace
{
  priv = self->_priv;
  if (priv)
  {
    v4 = *priv;
    if (*priv)
    {
      if (v4[3] != colorSpace)
      {
        if (colorSpace)
        {
          v6 = *(priv + 6);
          TypeID = CGColorSpaceGetTypeID();
          Model = CFGetTypeID(colorSpace);
          if (TypeID != Model)
          {
            goto LABEL_9;
          }

          Model = CGColorSpaceSupportsOutput(colorSpace);
          if (!Model)
          {
            goto LABEL_9;
          }

          is_luminance = CI::format_is_luminance(v6);
          Model = CGColorSpaceGetModel(colorSpace);
          if (is_luminance)
          {
            if (Model)
            {
              goto LABEL_9;
            }
          }

          else if (Model != 1)
          {
LABEL_9:
            v11 = ci_logger_api(Model, v9);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              [(CIRenderDestination *)v11 setColorSpace:v12, v13, v14, v15, v16, v17, v18];
            }

            return;
          }
        }

        CI::RenderDestination::setColorspace(v4, colorSpace);
      }
    }
  }
}

- (CIBlendKernel)blendKernel
{
  priv = self->_priv;
  if (priv)
  {
    return *(priv + 18);
  }

  else
  {
    return 0;
  }
}

- (void)setBlendKernel:(CIBlendKernel *)blendKernel
{
  priv = self->_priv;
  if (priv && priv[18] != blendKernel)
  {
    if (!blendKernel)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if ((*(**priv + 16))() == 93)
      {
        usage = [*(*priv + 9) usage];
        if ((usage & 1) == 0)
        {
          v9 = ci_logger_api(usage, v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)v9 setBlendKernel:v10, v11, v12, v13, v14, v15, v16];
          }

          return;
        }
      }

LABEL_9:
      v17 = priv[18];
      priv[18] = blendKernel;
      return;
    }

    v18 = ci_logger_api(isKindOfClass, v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v18 setBlendKernel:v19, v20, v21, v22, v23, v24, v25];
    }
  }
}

- (BOOL)blendsInDestinationColorSpace
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[137];
  }

  return priv & 1;
}

- (void)setBlendsInDestinationColorSpace:(BOOL)blendsInDestinationColorSpace
{
  priv = self->_priv;
  if (priv)
  {
    priv[137] = blendsInDestinationColorSpace;
  }
}

- (id)label
{
  priv = self->_priv;
  if (priv && (v3 = *priv) != 0)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0;
  }
}

- (void)setLabel:(id)label
{
  priv = self->_priv;
  if (priv)
  {
    if (*priv)
    {
      CI::RenderDestination::setLabel(*priv, label);
    }
  }
}

- (id)surface
{
  priv = self->_priv;
  if (!priv)
  {
    return 0;
  }

  v3 = *priv;
  if (*priv && (*(*v3 + 2))(v3, a2) == 91)
  {
    return v3[6];
  }

  else
  {
    return 0;
  }
}

- (id)imageRepresentation
{
  v30[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v3 = *priv;
  v4 = *(priv + 1);
  v5 = *(priv + 2);
  null = *(*priv + 24);
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v7 = MEMORY[0x1E695DF90];
  v30[0] = null;
  v29[0] = @"CIImageColorSpace";
  v29[1] = @"CIImageFlipped";
  v30[1] = [MEMORY[0x1E696AD98] numberWithBool:priv[128]];
  v8 = [v7 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, v29, 2)}];
  v9 = v8;
  has_alpha = 0;
  v11 = *(priv + 15);
  if (v11 <= 1)
  {
    if (!v11)
    {
      has_alpha = CI::format_has_alpha(*(priv + 6));
      goto LABEL_13;
    }

    if (v11 != 1)
    {
      goto LABEL_13;
    }

    v12 = MEMORY[0x1E695E118];
    goto LABEL_12;
  }

  if (v11 == 2)
  {
    v12 = MEMORY[0x1E695E110];
LABEL_12:
    [v8 setValue:v12 forKey:@"CIImagePremultiplied"];
    has_alpha = 0;
    goto LABEL_13;
  }

  if (v11 == 3)
  {
    return 0;
  }

LABEL_13:
  if (*(priv + 7))
  {
    [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:"), @"kCIImageYCCMatrix"}];
  }

  v13 = v4;
  usage = (*(*v3 + 16))(v3);
  v17 = "";
  if (usage > 91)
  {
    if (usage == 92)
    {
      usage = [CIImage imageWithTexture:*(v3 + 16) size:v9 options:v13, v5];
    }

    else
    {
      if (usage == 93)
      {
        v19 = *(v3 + 9);
        v18 = v19;
      }

      else
      {
        if (usage != 96)
        {
          goto LABEL_35;
        }

        v18 = CI::RenderToMTLTextureProvider::texture(v3);
        v19 = v18;
      }

      usage = [v18 usage];
      if ((usage & 1) == 0)
      {
        v17 = " because the MTLTexture usage does not inlude MTLTextureUsageShaderRead";
        goto LABEL_35;
      }

      usage = [CIImage imageWithMTLTexture:v19 options:v9];
    }
  }

  else
  {
    switch(usage)
    {
      case 'Y':
        usage = +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", [MEMORY[0x1E695DEF0] dataWithBytes:*(*(v3 + 6) + 72) length:(v5 * *(*(v3 + 6) + 96))], *(v16 + 96), *(v16 + 104), v9, v13, v5);
        break;
      case 'Z':
        usage = [CIImage imageWithCVPixelBuffer:(*(*v3 + 64))(v3) options:v9];
        break;
      case '[':
        usage = [CIImage imageWithIOSurface:*(v3 + 6) options:v9];
        break;
      default:
        goto LABEL_35;
    }
  }

  v20 = usage;
  if (!usage)
  {
    v17 = "";
LABEL_35:
    v21 = ci_logger_api(usage, v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v17 imageRepresentation:v21];
    }

    return 0;
  }

  if (has_alpha)
  {
    [(CIImage *)usage extent];
    return [v20 imageBySettingAlphaOneInExtent:?];
  }

  return v20;
}

- (id)description
{
  priv = self->_priv;
  if (priv)
  {
    _internalRenderDestination = [(CIRenderDestination *)self _internalRenderDestination];
    v5 = _internalRenderDestination;
    if (_internalRenderDestination && _internalRenderDestination[2])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", _internalRenderDestination[2]];
    }

    else
    {
      v6 = &stru_1F1040378;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [objc_opt_class() description];
    v9 = [v7 stringWithFormat:@"<%@: %p%@ format: %s size: %ux%u", v8, self, v6, CI::name_for_format(priv[6]), *(priv + 1), *(priv + 2)];
    if (v5)
    {
      v10 = (*(*v5 + 24))(v5);
      v9 = [v9 stringByAppendingFormat:@" %@", v10];
      CFRelease(v10);
    }

    return [v9 stringByAppendingString:@">"];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CIRenderDestination;
    return [(CIRenderDestination *)&v12 description];
  }
}

- (id)debugDescription
{
  priv = self->_priv;
  if (priv && (v3 = *priv) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__CIRenderDestination_debugDescription__block_invoke;
    v5[3] = &unk_1E75C3C80;
    v5[4] = self;
    v5[5] = v3;
    v5[6] = priv;
    return stream_to_string(v5);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CIRenderDestination;
    return [(CIRenderDestination *)&v6 debugDescription];
  }
}

uint64_t __39__CIRenderDestination_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "%s\n", [objc_msgSend(*(a1 + 32) "description")]);
  fwrite("    colorspace: ", 0x10uLL, 1uLL, a2);
  CI::fprintf_cs(a2, *(*(a1 + 40) + 24), 1);
  fputc(10, a2);
  v4 = *(a1 + 48);
  v5 = *(v4 + 120);
  if (!v5)
  {
    fwrite("    alphaMode: None\n", 0x14uLL, 1uLL, a2);
    v4 = *(a1 + 48);
    v5 = *(v4 + 120);
  }

  if (v5 == 1)
  {
    fwrite("    alphaMode: Premultiplied\n", 0x1DuLL, 1uLL, a2);
    v4 = *(a1 + 48);
    v5 = *(v4 + 120);
  }

  if (v5 == 2)
  {
    fwrite("    alphaMode: Unpremultiplied\n", 0x1FuLL, 1uLL, a2);
    v4 = *(a1 + 48);
    v5 = *(v4 + 120);
  }

  if (v5 == 3)
  {
    fwrite("    alphaMode: Unassociated\n", 0x1CuLL, 1uLL, a2);
    v4 = *(a1 + 48);
  }

  v6 = *(v4 + 144);
  if (v6)
  {
    fprintf(a2, "    blendKernel: %s\n", [objc_msgSend(v6 "description")]);
    fprintf(a2, "    blendsInDestinationColorSpace: %d\n", *(*(a1 + 48) + 137));
    v4 = *(a1 + 48);
  }

  fprintf(a2, "    flipped: %d\n", *(v4 + 128));
  fprintf(a2, "    dithered: %d\n", *(*(a1 + 48) + 129));
  return fprintf(a2, "    clamped: %d", *(*(a1 + 48) + 136));
}

- (void)init
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination init]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s init is not a valid initializer for CIRenderDestination", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_render:(uint64_t)a3 withContext:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a2, a3, "%{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithPixelBuffer:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithPixelBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a pixelBuffer with valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithPixelBuffer:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithPixelBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported pixelBuffer format.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithPixelBuffer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithPixelBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported pixelBuffer plane count.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithPixelBuffer:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithPixelBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid pixelBuffer argument.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 pixelBufferProvider:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:pixelBufferProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 pixelBufferProvider:(uint64_t)a7 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:pixelBufferProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported pixelBuffer format.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 pixelBufferProvider:(uint64_t)a7 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:pixelBufferProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported colorspace.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 pixelBufferProvider:(uint64_t)a7 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:pixelBufferProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s not supported yet.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 pixelBufferProvider:(uint64_t)a7 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:pixelBufferProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid pixelBuffer provider block.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIOSurface:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithIOSurface:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a surface with valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIOSurface:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithIOSurface:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported surface format.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIOSurface:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithIOSurface:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported surface plane count.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIOSurface:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithIOSurface:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid surface argument.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 surfaceProvider:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:surfaceProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 surfaceProvider:(uint64_t)a7 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:surfaceProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported pixelBuffer format.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 surfaceProvider:(uint64_t)a7 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:surfaceProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported colorspace.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 surfaceProvider:(uint64_t)a7 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:surfaceProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s not supported yet.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 colorSpace:(uint64_t)a6 surfaceProvider:(uint64_t)a7 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:colorSpace:surfaceProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid surface provider block.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMTLTexture:(uint64_t)a3 commandBuffer:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithMTLTexture:commandBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a MTLTexture with valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMTLTexture:(uint64_t)a3 commandBuffer:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithMTLTexture:commandBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a MTLTexture with depth 1.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMTLTexture:(uint64_t)a3 commandBuffer:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithMTLTexture:commandBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s texture type must be MTLTextureType2D.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMTLTexture:(uint64_t)a3 commandBuffer:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithMTLTexture:commandBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported MTLPixelFormat.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMTLTexture:(uint64_t)a3 commandBuffer:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithMTLTexture:commandBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s texture usage must include MTLTextureUsageShaderWrite.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMTLTexture:(uint64_t)a3 commandBuffer:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithMTLTexture:commandBuffer:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid MTLTexture argument.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 commandBuffer:(uint64_t)a6 mtlTextureProvider:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:commandBuffer:mtlTextureProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 commandBuffer:(uint64_t)a6 mtlTextureProvider:(uint64_t)a7 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:commandBuffer:mtlTextureProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported MTLPixelFormat.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithWidth:(uint64_t)a3 height:(uint64_t)a4 pixelFormat:(uint64_t)a5 commandBuffer:(uint64_t)a6 mtlTextureProvider:(uint64_t)a7 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithWidth:height:pixelFormat:commandBuffer:mtlTextureProvider:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid metal texture provider block.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithGLTexture:(uint64_t)a3 target:(uint64_t)a4 width:(uint64_t)a5 height:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithGLTexture:target:width:height:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithGLTexture:(uint64_t)a3 target:(uint64_t)a4 width:(uint64_t)a5 height:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithGLTexture:target:width:height:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s target must be GL_TEXTURE_2D.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithBitmapData:(uint64_t)a3 width:(uint64_t)a4 height:(uint64_t)a5 bytesPerRow:(uint64_t)a6 format:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid width and height.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithBitmapData:(int)a1 width:height:bytesPerRow:format:.cold.2(int a1)
{
  CI::name_for_format(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is unsupported.", v3, v4, v5, v6, v7);
}

- (void)initWithBitmapData:(uint64_t)a3 width:(uint64_t)a4 height:(uint64_t)a5 bytesPerRow:(uint64_t)a6 format:(uint64_t)a7 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s bytesPerRow must be greater than or equal to width times format's bytes per pixel .", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithBitmapData:(uint64_t)a3 width:(uint64_t)a4 height:(uint64_t)a5 bytesPerRow:(uint64_t)a6 format:(uint64_t)a7 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid bytesPerRow.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithBitmapData:(uint64_t)a3 width:(uint64_t)a4 height:(uint64_t)a5 bytesPerRow:(uint64_t)a6 format:(uint64_t)a7 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid data argument.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setAlphaMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination setAlphaMode:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported alpha mode.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setColorSpace:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination setColorSpace:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported colorspace for this destination.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setBlendKernel:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination setBlendKernel:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s blendKernel must be a subclass of CIBlendKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setBlendKernel:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderDestination setBlendKernel:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s destination texture usage must include MTLTextureUsageShaderRead to support blending.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)imageRepresentation
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a2, a3, "Using a blend kernel is not supported for this CIRenderDestination%{public}s.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end