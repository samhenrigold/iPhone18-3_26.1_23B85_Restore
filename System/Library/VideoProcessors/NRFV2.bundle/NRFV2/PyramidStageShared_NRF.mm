@interface PyramidStageShared_NRF
+ (BOOL)isRec709DownsampleSupported;
+ (id)compileShader:(id)shader kernelType:(int)type;
+ (id)compileShader:(id)shader lumaWrite:(BOOL)write chromaWrite:(BOOL)chromaWrite;
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getPipeline:(id)pipeline lumaWrite:(BOOL)write chromaWrite:(BOOL)chromaWrite;
- (id)getRec709DownsamplePipelineState:(id)state kernelType:(int)type;
@end

@implementation PyramidStageShared_NRF

- (id)getPipeline:(id)pipeline lumaWrite:(BOOL)write chromaWrite:(BOOL)chromaWrite
{
  chromaWriteCopy = chromaWrite;
  writeCopy = write;
  pipelineCopy = pipeline;
  v9 = self + 16 * writeCopy + 8 * chromaWriteCopy;
  v11 = *(v9 + 1);
  v10 = (v9 + 8);
  v13 = v11;
  if (!v13)
  {
    v13 = objc_msgSend_compileShader_lumaWrite_chromaWrite_(PyramidStageShared_NRF, v12, pipelineCopy, writeCopy, chromaWriteCopy);
    if (v13)
    {
      objc_storeStrong(v10, v13);
    }

    else
    {
      sub_2958989DC();
    }
  }

  return v13;
}

- (id)getRec709DownsamplePipelineState:(id)state kernelType:(int)type
{
  v4 = *&type;
  stateCopy = state;
  if (v4 >= 0xC)
  {
    sub_295898B3C();
    v11 = 0;
  }

  else
  {
    v7 = &self->super.isa + v4;
    v9 = v7[5];
    v8 = (v7 + 5);
    v11 = v9;
    if (!v11)
    {
      v11 = objc_msgSend_compileShader_kernelType_(PyramidStageShared_NRF, v10, stateCopy, v4);
      if (v11)
      {
        objc_storeStrong(v8, v11);
      }

      else
      {
        sub_295898A8C();
      }
    }
  }

  return v11;
}

+ (BOOL)isRec709DownsampleSupported
{
  v4 = objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], a2, v2, v3);
  v7 = objc_msgSend_supportsFamily_(v4, v5, 1004, v6);

  return v7;
}

+ (id)compileShader:(id)shader lumaWrite:(BOOL)write chromaWrite:(BOOL)chromaWrite
{
  shaderCopy = shader;
  writeCopy = write;
  chromaWriteCopy = chromaWrite;
  v8 = objc_opt_new();
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v8, v9, &writeCopy, 53, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v10, v11, &chromaWriteCopy, 53, 1);
    v13 = objc_msgSend_computePipelineStateFor_constants_(shaderCopy, v12, @"pyramid_downsample", v10);
  }

  else
  {
    sub_295898BB0();
    v13 = 0;
  }

  return v13;
}

+ (id)compileShader:(id)shader kernelType:(int)type
{
  shaderCopy = shader;
  v7 = shaderCopy;
  if (type >= 0xC)
  {
    sub_295898C24();
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_computePipelineStateFor_constants_(shaderCopy, v6, *(&off_29EDDBF58 + type), 0);
  }

  return v8;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C22B0;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C22B0)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(PyramidStageShared_NRF);
    v5 = qword_2A18C22B0;
  }

  qword_2A18C22B0 = v6;

LABEL_6:
  v7 = qword_2A18C22B0;
  objc_sync_exit(v4);

  return v7;
}

@end