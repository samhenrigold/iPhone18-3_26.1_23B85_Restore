@interface VNImageSignatureDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureHashDescriptorFrom:(const void *)from options:(id)options error:(id *)error;
- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureprintDescriptorFromOptions:(id)options error:(id *)error;
@end

@implementation VNImageSignatureDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNImageSignatureDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __65__VNImageSignatureDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNImageSignatureDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType"];
  [v2 addObject:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType"];
  v3 = [v2 copy];
  v4 = +[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNImageSignatureDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureHashDescriptorFrom:(const void *)from options:(id)options error:(id *)error
{
  v9 = v5;
  optionsCopy = options;
  v16 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v16 forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType" inOptions:optionsCopy error:error])
  {
LABEL_7:
    *v9 = 0;
    v9[1] = 0;
    goto LABEL_8;
  }

  v11 = v16;
  if (v11 != [(VNImageSignatureDetector *)self imageSignatureHashType])
  {
    if (error)
    {
      *error = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Mismatch in signature hash type"];
    }

    goto LABEL_7;
  }

  (*(*self->_hyperplaneLSHProcessor.__ptr_ + 64))(&v15);
  v12 = (*(*self->_hyperplaneLSHProcessor.__ptr_ + 160))(self->_hyperplaneLSHProcessor.__ptr_, *from, v15);
  if (v12 == 128)
  {
    *v9 = v15;
  }

  else
  {
    if (error)
    {
      *error = VNErrorForCVMLStatus(v12);
    }

    *v9 = 0;
    v9[1] = 0;
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

LABEL_8:

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)_calculateImageSignatureprintDescriptorFromOptions:(id)options error:(id *)error
{
  v7 = v4;
  optionsCopy = options;
  v16 = 0;
  v9 = [VNValidationUtilities getOptionalObject:&v16 ofClass:objc_opt_class() forKey:@"VNImageSignatureDetectorProcessOption_ImageSignatureprintInput" inOptions:optionsCopy error:error];
  v10 = v16;
  if (v9)
  {
    v15 = 0;
    if ([VNValidationUtilities getNSUIntegerValue:&v15 forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType" inOptions:optionsCopy error:error])
    {
      v11 = v15;
      if (v11 == [(VNImageSignatureDetector *)self imageSignatureprintType])
      {
        if (v15 == 3)
        {
          [v10 descriptorData];
          [objc_claimAutoreleasedReturnValue() bytes];
          [v10 elementCount];
          operator new();
        }

        if (error)
        {
          v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Unknown signature print type"];
          goto LABEL_10;
        }
      }

      else if (error)
      {
        v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Mismatch in signature print type"];
LABEL_10:
        *error = v12;
      }
    }
  }

  *v7 = 0;
  v7[1] = 0;

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v15 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v15)
  {
    v16 = [(VNDetector *)self computeDeviceForComputeStage:@"VNComputeStageMain" processingOptions:optionsCopy error:error];
    if (v16)
    {
      objc_msgSend__calculateImageSignatureprintDescriptorFromOptions_error_(self);
      if (v27)
      {
        v17 = (*(*v27 + 104))();
        v18 = [[VN6Ac6Cyl5O5oK19HboyMBR alloc] initWithData:v27[7] elementCount:v17 >> 2 elementType:1 lengthInBytes:v17 imageSignatureprintType:[(VNImageSignatureDetector *)self imageSignatureprintType] originatingRequestSpecifier:v15];
        objc_msgSend__calculateImageSignatureHashDescriptorFrom_options_error_(self);
        if (v25)
        {
          v19 = (*(*v25 + 104))();
          v20 = [[VN6B8mkraBUpwUqskMYPtS3 alloc] initWithData:v25[7] elementCount:v19 >> 2 elementType:1 lengthInBytes:v19 imageSignatureHashType:[(VNImageSignatureDetector *)self imageSignatureHashType] requestRevision:1];
          v21 = [[VN3XKGTKNBvy6h4RFtpxLyW alloc] initWithOriginatingRequestSpecifier:v15 imageSignatureprint:v18 imageSignatureHash:v20];
          v22 = v21;
          if (v21)
          {
            v29[0] = v21;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
          }

          else if (error)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unknown error creating VNObservation object"];
            *error = v23 = 0;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }

      else
      {
        v23 = 0;
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v11.receiver = self;
  v11.super_class = VNImageSignatureDetector;
  if ([(VNDetector *)&v11 completeInitializationForSession:session error:?])
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    if ([VNValidationUtilities getNSUIntegerValue:&self->_imageSignatureprintType forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType" inOptions:configurationOptions error:error]&& [VNValidationUtilities getNSUIntegerValue:&self->_imageSignatureHashType forKey:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType" inOptions:configurationOptions error:error])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__VNImageSignatureDetector_completeInitializationForSession_error___block_invoke;
      aBlock[3] = &unk_1E77B6320;
      aBlock[4] = self;
      v7 = _Block_copy(aBlock);
      if ([(VNImageSignatureDetector *)self imageSignatureprintType]== 3)
      {
        LOBYTE(error) = v7[2](v7, @"neuralhash_128x96_seed1", error);
      }

      else if (error)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown signature print type: %lu", -[VNImageSignatureDetector imageSignatureprintType](self, "imageSignatureprintType")];
        *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v8];

        LOBYTE(error) = 0;
      }
    }

    else
    {
      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  return error;
}

BOOL __67__VNImageSignatureDetector_completeInitializationForSession_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 32) + 72);
  if (v7 == 1)
  {
    v8 = v5;
    v9 = VNFrameworkBundle();
    v10 = [v9 pathForResource:v8 ofType:@"dat"];
    if (v10)
    {

      [v10 UTF8String];
      operator new();
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Model file %@.dat is missing", v8];
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"Loading Resource Error" reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  if (a3)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown signature hash type: %lu", objc_msgSend(*(a1 + 32), "imageSignatureHashType")];
    *a3 = [VNError errorForInvalidArgumentWithLocalizedDescription:v11];
  }

  return v7 == 1;
}

@end