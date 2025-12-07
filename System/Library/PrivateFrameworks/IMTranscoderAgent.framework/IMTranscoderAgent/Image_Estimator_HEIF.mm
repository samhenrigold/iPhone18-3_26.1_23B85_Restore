@interface Image_Estimator_HEIF
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (Image_Estimator_HEIF)init;
- (Image_Estimator_HEIF)initWithConfiguration:(id)configuration error:(id *)error;
- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l error:(id *)error;
- (Image_Estimator_HEIF)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation Image_Estimator_HEIF

+ (id)URLOfModelInThisBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v8 = objc_msgSend_pathForResource_ofType_(v6, v7, @"Image_Estimator_HEIF", @"mlmodelc");

  if (v8)
  {
    v11 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v9, v8, v10);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831620();
    }

    v11 = 0;
  }

  return v11;
}

- (Image_Estimator_HEIF)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = Image_Estimator_HEIF;
    v6 = [(Image_Estimator_HEIF *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Image_Estimator_HEIF)init
{
  v3 = objc_opt_class();
  v7 = objc_msgSend_URLOfModelInThisBundle(v3, v4, v5, v6);
  v9 = objc_msgSend_initWithContentsOfURL_error_(self, v8, v7, 0);

  return v9;
}

- (Image_Estimator_HEIF)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v7 = objc_opt_class();
  v11 = objc_msgSend_URLOfModelInThisBundle(v7, v8, v9, v10);
  v13 = objc_msgSend_initWithContentsOfURL_configuration_error_(self, v12, v11, configurationCopy, error);

  return v13;
}

- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l error:(id *)error
{
  v7 = objc_msgSend_modelWithContentsOfURL_error_(MEMORY[0x277CBFF20], a2, l, error);
  if (v7)
  {
    self = objc_msgSend_initWithMLModel_(self, v5, v7, v6);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v8 = objc_msgSend_modelWithContentsOfURL_configuration_error_(MEMORY[0x277CBFF20], a2, l, configuration, error);
  if (v8)
  {
    self = objc_msgSend_initWithMLModel_(self, v6, v8, v7);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v12 = objc_msgSend_URLOfModelInThisBundle(self, v8, v9, v10);
  objc_msgSend_loadContentsOfURL_configuration_completionHandler_(self, v11, v12, configurationCopy, handlerCopy);
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277CBFF20];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_254830784;
  v11[3] = &unk_27978B0E8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_loadContentsOfURL_configuration_completionHandler_(v8, v10, l, configuration, v11);
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v10 = objc_msgSend_predictionFromFeatures_options_error_(self, v9, featuresCopy, v8, error);

  return v10;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  v13 = objc_msgSend_model(self, v10, v11, v12);
  v15 = objc_msgSend_predictionFromFeatures_options_error_(v13, v14, featuresCopy, optionsCopy, error);

  if (v15)
  {
    v16 = [Image_Estimator_HEIFOutput alloc];
    v19 = objc_msgSend_featureValueForName_(v15, v17, @"Target Quality Factor", v18);
    objc_msgSend_doubleValue(v19, v20, v21, v22);
    v26 = objc_msgSend_initWithTarget_Quality_Factor_(v16, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  v11 = objc_msgSend_model(self, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_254830A3C;
  v14[3] = &unk_27978B110;
  v15 = handlerCopy;
  v12 = handlerCopy;
  objc_msgSend_predictionFromFeatures_completionHandler_(v11, v13, featuresCopy, v14);
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  v14 = objc_msgSend_model(self, v11, v12, v13);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_254830BFC;
  v17[3] = &unk_27978B110;
  v18 = handlerCopy;
  v15 = handlerCopy;
  objc_msgSend_predictionFromFeatures_options_completionHandler_(v14, v16, featuresCopy, optionsCopy, v17);
}

- (id)predictionFromInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy error:(id *)error
{
  v35 = [Image_Estimator_HEIFInput alloc];
  v37 = objc_msgSend_initWithInput_File_Size_Input_Height_Input_Entropy_Aspect_Ratio_Target_File_Size_Target_Max_Dimension_4032_Target_Max_Dimension_3000_Target_Max_Dimension_2048_Target_Max_Dimension_1600_Target_Max_Dimension_1280_Target_Max_Dimension_1024_Target_Max_Dimension_800_Compression_Ratio_Input_H_x_W__NumOfPixels__Target_Height_Target_Width_Input_log_NumOfPixels__Ratio_of_NumOfPixels_Exponential_Entropy_(v35, v36, dimension_4032, dimension_3000, dimension_2048, dimension_1600, dimension_1280, dimension_1024, size, height, entropy, ratio, file_Size, compression_Ratio, pixels_, target_Height, dimension_800, *&width, *&ofPixels_, *&pixels, *&exponential_Entropy);
  v39 = objc_msgSend_predictionFromFeatures_error_(self, v38, v37, error);

  return v39;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = objc_alloc(MEMORY[0x277CBFEB0]);
  v13 = objc_msgSend_initWithFeatureProviderArray_(v10, v11, inputsCopy, v12);
  v17 = objc_msgSend_model(self, v14, v15, v16);
  v19 = objc_msgSend_predictionsFromBatch_options_error_(v17, v18, v13, optionsCopy, error);

  if (v19)
  {
    v23 = MEMORY[0x277CBEB18];
    v24 = objc_msgSend_count(v19, v20, v21, v22);
    v27 = objc_msgSend_arrayWithCapacity_(v23, v25, v24, v26);
    if (objc_msgSend_count(v19, v28, v29, v30) >= 1)
    {
      v33 = 0;
      do
      {
        v34 = objc_msgSend_featuresAtIndex_(v19, v31, v33, v32);
        v35 = [Image_Estimator_HEIFOutput alloc];
        v38 = objc_msgSend_featureValueForName_(v34, v36, @"Target Quality Factor", v37);
        objc_msgSend_doubleValue(v38, v39, v40, v41);
        v45 = objc_msgSend_initWithTarget_Quality_Factor_(v35, v42, v43, v44);

        objc_msgSend_addObject_(v27, v46, v45, v47);
        ++v33;
      }

      while (v33 < objc_msgSend_count(v19, v48, v49, v50));
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end