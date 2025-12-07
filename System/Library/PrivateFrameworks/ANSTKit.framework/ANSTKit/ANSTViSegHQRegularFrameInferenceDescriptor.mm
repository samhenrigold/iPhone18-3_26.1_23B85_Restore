@interface ANSTViSegHQRegularFrameInferenceDescriptor
+ (id)assetURLForConfiguration:(id)configuration;
+ (id)descriptorWithConfiguration:(id)configuration error:(id *)error;
+ (id)e5FunctionNameForConfiguration:(id)configuration;
- (ANSTViSegHQRegularFrameInferenceDescriptor)initWithCoder:(id)coder;
- (ANSTViSegHQRegularFrameInferenceDescriptor)initWithName:(id)name configuration:(id)configuration error:(id *)p_isa;
- (ANSTViSegHQRegularFrameInferenceDescriptor)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors error:(id *)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTViSegHQRegularFrameInferenceDescriptor

- (ANSTViSegHQRegularFrameInferenceDescriptor)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors error:(id *)self0
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

- (ANSTViSegHQRegularFrameInferenceDescriptor)initWithName:(id)name configuration:(id)configuration error:(id *)p_isa
{
  v69[1] = *MEMORY[0x277D85DE8];
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
        goto LABEL_15;
      }

      v20 = objc_msgSend_makeMaskPixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v19, configurationCopy, @"input_matting", p_isa);
      inputMattingDescriptor = self->_inputMattingDescriptor;
      self->_inputMattingDescriptor = v20;

      if (!self->_inputMattingDescriptor)
      {
        goto LABEL_15;
      }

      v23 = objc_msgSend_makeProbTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v22, configurationCopy, @"input_prob");
      inputProbTensorDescriptor = self->_inputProbTensorDescriptor;
      self->_inputProbTensorDescriptor = v23;

      v26 = objc_msgSend_makeHiddenTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v25, configurationCopy, @"input_hidden");
      inputHiddenTensorDescriptor = self->_inputHiddenTensorDescriptor;
      self->_inputHiddenTensorDescriptor = v26;

      v29 = objc_msgSend_makeKeyTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v28, configurationCopy, @"input_key");
      inputKeyTensorDescriptor = self->_inputKeyTensorDescriptor;
      self->_inputKeyTensorDescriptor = v29;

      v32 = objc_msgSend_makeValueTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v31, configurationCopy, @"input_value");
      inputValueTensorDescriptor = self->_inputValueTensorDescriptor;
      self->_inputValueTensorDescriptor = v32;

      v35 = objc_msgSend_makeMaskPixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v34, configurationCopy, @"output_matting", p_isa);
      outputMattingDescriptor = self->_outputMattingDescriptor;
      self->_outputMattingDescriptor = v35;

      if (!self->_outputMattingDescriptor)
      {
        goto LABEL_15;
      }

      v38 = objc_msgSend_makeProbTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v37, configurationCopy, @"output_prob");
      outputProbTensorDescriptor = self->_outputProbTensorDescriptor;
      self->_outputProbTensorDescriptor = v38;

      v41 = objc_msgSend_makeHiddenTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v40, configurationCopy, @"output_hidden");
      outputHiddenTensorDescriptor = self->_outputHiddenTensorDescriptor;
      self->_outputHiddenTensorDescriptor = v41;

      v64 = objc_msgSend_version(configurationCopy, v43, v44);
      v63 = objc_msgSend_assetURLForConfiguration_(ANSTViSegHQRegularFrameInferenceDescriptor, v45, configurationCopy);
      v62 = objc_msgSend_e5FunctionNameForConfiguration_(ANSTViSegHQRegularFrameInferenceDescriptor, v46, configurationCopy);
      v47 = self->_inputMattingDescriptor;
      v67[0] = self->_inputImageDescriptor;
      v67[1] = v47;
      v48 = self->_inputHiddenTensorDescriptor;
      v67[2] = self->_inputProbTensorDescriptor;
      v67[3] = v48;
      v49 = self->_inputValueTensorDescriptor;
      v67[4] = self->_inputKeyTensorDescriptor;
      v67[5] = v49;
      v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, v67, 6);
      v52 = self->_outputProbTensorDescriptor;
      v66[0] = self->_outputMattingDescriptor;
      v66[1] = v52;
      v66[2] = self->_outputHiddenTensorDescriptor;
      v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, v66, 3);
      v65.receiver = self;
      v65.super_class = ANSTViSegHQRegularFrameInferenceDescriptor;
      v55 = [(ANSTInferenceDescriptor *)&v65 initWithName:nameCopy version:v64 assetURL:v63 assetType:0 e5FunctionName:v62 inputDescriptors:v51 outputDescriptors:v54 error:p_isa];

      if (v55)
      {
        objc_storeStrong(&v55->_configuration, configuration);
      }

      self = v55;
      p_isa = &self->super.super.super.isa;
      goto LABEL_16;
    }

    v15 = @"Unsupported model version.";
  }

  v56 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    sub_22E6584D8(v15, v56);
  }

  if (p_isa)
  {
    v58 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA068];
    v69[0] = v15;
    v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v69, &v68, 1);
    *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v58, v60, @"ANSTErrorDomain", 1, v59);

LABEL_15:
    p_isa = 0;
  }

LABEL_16:

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
    v14 = "+[ANSTViSegHQRegularFrameInferenceDescriptor assetURLForConfiguration:]";
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
    v9 = off_27884FAC8[v8];
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
  v10.super_class = ANSTViSegHQRegularFrameInferenceDescriptor;
  coderCopy = coder;
  [(ANSTInferenceDescriptor *)&v10 encodeWithCoder:coderCopy];
  v7 = objc_msgSend_configuration(self, v5, v6, v10.receiver, v10.super_class);
  v8 = NSStringFromSelector(sel_configuration);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);
}

- (ANSTViSegHQRegularFrameInferenceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ANSTViSegHQRegularFrameInferenceDescriptor;
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
    error = objc_msgSend_initWithName_configuration_error_(v8, v9, @"ViSegHQRegularFrameInferenceDescriptor", configurationCopy, error);
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