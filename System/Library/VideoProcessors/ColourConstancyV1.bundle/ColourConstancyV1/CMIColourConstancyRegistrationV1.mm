@interface CMIColourConstancyRegistrationV1
- (CMIColourConstancyRegistrationV1)initWithMetalContext:(id)context;
- (int)prepareToProcess:(int)process;
- (int)purgeResources;
- (int)registerImage:(id)image referenceLumaTexture:(id)texture;
- (int)warpImage:(id)image outputWarpedTexture:(id)texture;
@end

@implementation CMIColourConstancyRegistrationV1

- (CMIColourConstancyRegistrationV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CMIColourConstancyRegistrationV1;
  v6 = [(CMIColourConstancyRegistrationV1 *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    sub_13BA8();
LABEL_7:
    v9 = 0;
    goto LABEL_4;
  }

  if (!contextCopy)
  {
    sub_13B04();
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v7[2].i32[0] = 0;
  v8 = matrix_identity_float3x3.columns[1];
  v7[3] = matrix_identity_float3x3.columns[0];
  v7[4] = v8;
  v7[5] = matrix_identity_float3x3.columns[2];
  v9 = v7;
LABEL_4:

  return v9;
}

- (int)purgeResources
{
  regWarpGPU = self->_regWarpGPU;
  self->_regWarpGPU = 0;

  warpStage = self->_warpStage;
  self->_warpStage = 0;

  return 0;
}

- (int)prepareToProcess:(int)process
{
  self->_registrationProcessingType = process;
  if (process)
  {
    sub_13C4C();
    return 0;
  }

  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  [RegWarpPP getDefaults:v16];
  BYTE12(v17) = 0;
  DWORD1(v17) = 20;
  v4 = [FigRegWarpPPGPU alloc];
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  v6 = [v4 initWithOptionalCommandQueue:commandQueue config:v16];
  regWarpGPU = self->_regWarpGPU;
  self->_regWarpGPU = v6;

  if (self->_regWarpGPU)
  {
    allocator = [(FigMetalContext *)self->_metalContext allocator];

    if (allocator)
    {
      allocator2 = [(FigMetalContext *)self->_metalContext allocator];
      [(FigRegWarpPPGPU *)self->_regWarpGPU setAllocator:allocator2];

      if (!FigGetCFPreferenceNumberWithDefault())
      {
        v10 = [CMIWarpStage alloc];
        commandQueue2 = [(FigMetalContext *)self->_metalContext commandQueue];
        allocator3 = [(FigMetalContext *)self->_metalContext allocator];
        v13 = [v10 initWithOptionalCommandQueue:commandQueue2 allocator:allocator3];
        warpStage = self->_warpStage;
        self->_warpStage = v13;

        if (!self->_warpStage)
        {
          sub_13CC8();
        }
      }

      return 0;
    }

    sub_13D3C(&v18);
  }

  else
  {
    sub_13DE8(&v18);
  }

  return v18;
}

- (int)registerImage:(id)image referenceLumaTexture:(id)texture
{
  imageCopy = image;
  textureCopy = texture;
  v9 = textureCopy;
  v10 = 0;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  if (!self->_registrationProcessingType)
  {
    if (-[FigRegWarpPPGPU allocateResources:imageHeight:imageFormat:externalMemory:externalMemorySize:](self->_regWarpGPU, "allocateResources:imageHeight:imageFormat:externalMemory:externalMemorySize:", [textureCopy width], objc_msgSend(textureCopy, "height"), objc_msgSend(textureCopy, "pixelFormat"), 0, 0))
    {
      sub_13E94();
    }

    else if ([(FigRegWarpPPGPU *)self->_regWarpGPU processReferenceTexture:v9 regionOfInterest:0 numKeypoints:&v23])
    {
      sub_13F74();
    }

    else
    {
      v11 = [(FigRegWarpPPGPU *)self->_regWarpGPU processNonReferenceTexture:imageCopy outputTransform:v24];
      if (v11 == -6 || !v11)
      {
        HIDWORD(v12) = HIDWORD(v24[0]);
        v13 = *(v24 + 12);
        *&self[1].super.isa = v24[0];
        *&self[1]._regWarpGPU = v13;
        *&v12 = *(&v24[1] + 1);
        DWORD2(v12) = v25;
        *&self[1]._registrationProcessingType = v12;
        [(FigRegWarpPPGPU *)self->_regWarpGPU releaseResources];
        v10 = 0;
        goto LABEL_9;
      }

      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v16[0], v16[1], v17, v18, v19, v20);
      v22 = 0;
      v21 = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = -1;
  }

LABEL_9:

  return v10;
}

- (int)warpImage:(id)image outputWarpedTexture:(id)texture
{
  v4 = [(CMIWarpStage *)self->_warpStage runWarpUsingTransform:image inputTex:texture outputTex:*&self[1].super.isa, *&self[1]._regWarpGPU, *&self[1]._registrationProcessingType];
  v5 = v4;
  if (v4)
  {
    sub_14054(v4);
  }

  return v5;
}

@end