@interface PTMSRResizeAdditionalOutput
- (PTMSRResizeAdditionalOutput)initWithSize:(id *)size colorSpace:(CGColorSpace *)space pixelFormat:(unsigned int)format allowCompressed:(BOOL)compressed metalDevice:(id)device;
- (void)dealloc;
@end

@implementation PTMSRResizeAdditionalOutput

- (PTMSRResizeAdditionalOutput)initWithSize:(id *)size colorSpace:(CGColorSpace *)space pixelFormat:(unsigned int)format allowCompressed:(BOOL)compressed metalDevice:(id)device
{
  compressedCopy = compressed;
  v8 = *&format;
  v31[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = PTMSRResizeAdditionalOutput;
  v13 = [(PTMSRResizeAdditionalOutput *)&v29 init];
  if (!v13)
  {
LABEL_8:
    v20 = 0;
    goto LABEL_16;
  }

  v14 = *MEMORY[0x277CBECE8];
  var0 = size->var0;
  var1 = size->var1;
  if (compressedCopy)
  {
    LODWORD(v8) = [PTPixelBufferUtil compressedPixelFormat:v8];
  }

  v17 = *MEMORY[0x277CC4D60];
  v30[0] = *MEMORY[0x277CC4DE8];
  v30[1] = v17;
  v31[0] = MEMORY[0x277CBEC10];
  v31[1] = &unk_2837F3100;
  v18 = CVPixelBufferCreate(v14, var0, var1, v8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2], &v13->_pixelbuffer);
  if (v18)
  {
    v19 = _PTLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PTMSRResizeAdditionalOutput initWithSize:colorSpace:pixelFormat:allowCompressed:metalDevice:];
    }

    goto LABEL_8;
  }

  v13->_ioSurface = CVPixelBufferGetIOSurface(v13->_pixelbuffer);
  v21 = [PTPixelBufferUtil isRGB:v13->_pixelbuffer];
  pixelbuffer = v13->_pixelbuffer;
  if (v21)
  {
    [PTPixelBufferUtil getMTLTextureFromPixelBuffer:pixelbuffer device:deviceCopy];
  }

  else
  {
    [PTPixelBufferUtil createTextureFromPixelBuffer:pixelbuffer device:deviceCopy textureCache:0 sRGB:0 metalYCBCRConversion:1];
  }
  v23 = ;
  texture = v13->_texture;
  v13->_texture = v23;

  if (space)
  {
    ioSurface = v13->_ioSurface;
    v26 = CGColorSpaceCopyPropertyList(space);
    if (v26)
    {
      v27 = v26;
      IOSurfaceSetValue(ioSurface, *MEMORY[0x277CD29C0], v26);
      CFRelease(v27);
    }
  }

  v13->_allowCompressed = compressedCopy;
  v13->_enabled = 1;
  v20 = v13;
LABEL_16:

  return v20;
}

- (void)dealloc
{
  pixelbuffer = self->_pixelbuffer;
  if (pixelbuffer)
  {
    CVPixelBufferRelease(pixelbuffer);
  }

  v4.receiver = self;
  v4.super_class = PTMSRResizeAdditionalOutput;
  [(PTMSRResizeAdditionalOutput *)&v4 dealloc];
}

- (void)initWithSize:colorSpace:pixelFormat:allowCompressed:metalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end