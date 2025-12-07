@interface CSUCLIPImageEncoderV3
- (BOOL)loadResources:(id *)resources;
- (BOOL)resampleImage:(__CVBuffer *)image intoInputImage:(__CVBuffer *)inputImage error:(id *)error;
- (CSUCLIPImageEncoderV3)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (void)_unsafeRunOnInputImage:(__CVBuffer *)image completion:(id)completion;
- (void)runOnInputImage:(__CVBuffer *)image completion:(id)completion;
@end

@implementation CSUCLIPImageEncoderV3

- (CSUCLIPImageEncoderV3)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUCLIPImageEncoderV3;
  v6 = [(CSUCLIPImageEncoderV3 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_net.__ptr_)
  {
    v7 = objc_msgSend_espressoNetworkPath(self->_configuration, a2, resources, v3, v4);
    objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
    objc_msgSend_espressoExecutionEngine(self->_configuration, v12, v13, v14, v15);
    sub_1AC063040();
  }

  return 1;
}

- (BOOL)resampleImage:(__CVBuffer *)image intoInputImage:(__CVBuffer *)inputImage error:(id *)error
{
  ptr = self->_transferSession.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  v6 = VTPixelTransferSessionTransferImage(**ptr, image, inputImage);
  sub_1AC0A8CB8(v6, "Image Transfer");
  return 1;
}

- (void)runOnInputImage:(__CVBuffer *)image completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInputImage_completion_(self, v7, image, completionCopy, v8);
}

- (void)_unsafeRunOnInputImage:(__CVBuffer *)image completion:(id)completion
{
  v23[23] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v23[0] = 0;
  Resources = objc_msgSend_loadResources_(self, v7, v23, v8, v9);
  v15 = v23[0];
  if (Resources)
  {
    v16 = objc_msgSend_inputImageTensorName(self->_configuration, v11, v12, v13, v14);
    v17 = v16;
    v22[7] = objc_msgSend_UTF8String(v16, v18, v19, v20, v21);
    sub_1AC06B064(v22, image);
  }

  completionCopy[2](completionCopy, 0, v15);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end