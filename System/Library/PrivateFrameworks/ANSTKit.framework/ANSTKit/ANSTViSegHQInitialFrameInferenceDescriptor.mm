@interface ANSTViSegHQInitialFrameInferenceDescriptor
+ (id)assetURLForConfiguration:(id)configuration;
+ (id)descriptorWithConfiguration:(id)configuration error:(id *)error;
+ (id)e5FunctionNameForConfiguration:(id)configuration;
- (ANSTViSegHQInitialFrameInferenceDescriptor)initWithCoder:(id)coder;
- (ANSTViSegHQInitialFrameInferenceDescriptor)initWithName:(id)name configuration:(id)configuration error:(id *)p_isa;
- (ANSTViSegHQInitialFrameInferenceDescriptor)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors error:(id *)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTViSegHQInitialFrameInferenceDescriptor

- (ANSTViSegHQInitialFrameInferenceDescriptor)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors error:(id *)self0
{
  nameCopy = name;
  lCopy = l;
  functionNameCopy = functionName;
  descriptorsCopy = descriptors;
  outputDescriptorsCopy = outputDescriptors;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v20, a2);
  __break(1u);
  return result;
}

- (ANSTViSegHQInitialFrameInferenceDescriptor)initWithName:(id)name configuration:(id)configuration error:(id *)p_isa
{
  v58[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  v12 = objc_msgSend_version(configurationCopy, v10, v11);
  if (v12 == 0x20000)
  {
    v15 = @"Unsupported model version. ViSegHQ currently only supports ANSTViSegHQInferenceVersion2E5ML config on this platform.";
  }

  else
  {
    v12 = objc_msgSend_version(configurationCopy, v13, v14);
    if (v12 == 131073)
    {
      v17 = objc_msgSend_makeInputImagePixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v16, configurationCopy, @"input_image", p_isa);
      inputImageDescriptor = self->_inputImageDescriptor;
      self->_inputImageDescriptor = v17;

      if (!self->_inputImageDescriptor)
      {
        goto LABEL_14;
      }

      v20 = objc_msgSend_makeMaskPixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v19, configurationCopy, @"input_matting", p_isa);
      inputMaskDescriptor = self->_inputMaskDescriptor;
      self->_inputMaskDescriptor = v20;

      if (!self->_inputMaskDescriptor)
      {
        goto LABEL_14;
      }

      v23 = objc_msgSend_makeHiddenTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v22, configurationCopy, @"input_hidden");
      inputHiddenTensorDescriptor = self->_inputHiddenTensorDescriptor;
      self->_inputHiddenTensorDescriptor = v23;

      v26 = objc_msgSend_makeHiddenTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v25, configurationCopy, @"output_hidden");
      outputHiddenTensorDescriptor = self->_outputHiddenTensorDescriptor;
      self->_outputHiddenTensorDescriptor = v26;

      v29 = objc_msgSend_makeKeyTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v28, configurationCopy, @"output_key");
      outputKeyTensorDescriptor = self->_outputKeyTensorDescriptor;
      self->_outputKeyTensorDescriptor = v29;

      v32 = objc_msgSend_makeValueTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v31, configurationCopy, @"output_value");
      outputValueTensorDescriptor = self->_outputValueTensorDescriptor;
      self->_outputValueTensorDescriptor = v32;

      v53 = objc_msgSend_version(configurationCopy, v34, v35);
      v52 = objc_msgSend_assetURLForConfiguration_(ANSTViSegHQInitialFrameInferenceDescriptor, v36, configurationCopy);
      v51 = objc_msgSend_e5FunctionNameForConfiguration_(ANSTViSegHQInitialFrameInferenceDescriptor, v37, configurationCopy);
      v38 = self->_inputMaskDescriptor;
      v56[0] = self->_inputImageDescriptor;
      v56[1] = v38;
      v56[2] = self->_inputHiddenTensorDescriptor;
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v56, 3);
      v41 = self->_outputKeyTensorDescriptor;
      v55[0] = self->_outputHiddenTensorDescriptor;
      v55[1] = v41;
      v55[2] = self->_outputValueTensorDescriptor;
      v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v55, 3);
      v54.receiver = self;
      v54.super_class = ANSTViSegHQInitialFrameInferenceDescriptor;
      v44 = [(ANSTInferenceDescriptor *)&v54 initWithName:nameCopy version:v53 assetURL:v52 assetType:0 e5FunctionName:v51 inputDescriptors:v40 outputDescriptors:v43 error:p_isa];

      if (v44)
      {
        objc_storeStrong(&v44->_configuration, configuration);
      }

      self = v44;
      p_isa = &self->super.super.super.isa;
      goto LABEL_15;
    }

    v15 = @"Unsupported model version.";
  }

  v45 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    sub_22E65966C(v15, v45);
  }

  if (p_isa)
  {
    v47 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA068];
    v58[0] = v15;
    v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v58, &v57, 1);
    *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v47, v49, @"ANSTErrorDomain", 1, v48);

LABEL_14:
    p_isa = 0;
  }

LABEL_15:

  return p_isa;
}

+ (id)assetURLForConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_version(configuration, a2, configuration);
  if (v4 == 131073)
  {
    v6 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], v5, self);
    v8 = objc_msgSend_URLForResource_withExtension_subdirectory_(v6, v7, @"visegHQ_e5", @"mlmodelc", @"Models");

    v10 = objc_msgSend_URLByAppendingPathComponent_(v8, v9, @"model.bundle");
  }

  else
  {
    v10 = 0;
  }

  v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    v14 = "+[ANSTViSegHQInitialFrameInferenceDescriptor assetURLForConfiguration:]";
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_22E5D5000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: returning %{public}@", &v13, 0x16u);
  }

  return v10;
}

+ (id)e5FunctionNameForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_msgSend_version(configurationCopy, v4, v5) == 131073 && (v8 = objc_msgSend_resolution(configurationCopy, v6, v7), v8 <= 3))
  {
    v9 = off_27884FBB8[v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = ANSTViSegHQInitialFrameInferenceDescriptor;
  coderCopy = coder;
  [(ANSTInferenceDescriptor *)&v10 encodeWithCoder:coderCopy];
  v7 = objc_msgSend_configuration(self, v5, v6, v10.receiver, v10.super_class);
  v8 = NSStringFromSelector(sel_configuration);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);
}

- (ANSTViSegHQInitialFrameInferenceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ANSTViSegHQInitialFrameInferenceDescriptor;
  v5 = [(ANSTInferenceDescriptor *)&v13 initWithCoder:coderCopy];
  if (v5 && (v6 = objc_opt_class(), NSStringFromSelector(sel_configuration), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), configuration = v5->_configuration, v5->_configuration = v9, configuration, v7, !v5->_configuration))
  {
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

+ (id)descriptorWithConfiguration:(id)configuration error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v8 = [self alloc];
    error = objc_msgSend_initWithName_configuration_error_(v8, v9, @"ViSegHQInitialFrameInferenceDescriptor", configurationCopy, error);
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Configuration cannot be nil.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v15, &v14, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 2, v11);

    error = 0;
  }

  return error;
}

@end