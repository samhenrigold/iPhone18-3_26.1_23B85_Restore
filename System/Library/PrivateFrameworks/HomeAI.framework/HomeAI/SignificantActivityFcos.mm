@interface SignificantActivityFcos
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (SignificantActivityFcos)init;
- (SignificantActivityFcos)initWithConfiguration:(id)configuration error:(id *)error;
- (SignificantActivityFcos)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (SignificantActivityFcos)initWithContentsOfURL:(id)l error:(id *)error;
- (SignificantActivityFcos)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation SignificantActivityFcos

+ (id)URLOfModelInThisBundle
{
  v2 = MEMORY[0x277CCA8D8];
  objc_opt_class();
  v3 = [v2 bundleForClass:?];
  v4 = [v3 pathForResource:? ofType:?];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[SignificantActivityFcos URLOfModelInThisBundle];
    }

    v5 = 0;
  }

  return v5;
}

- (SignificantActivityFcos)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = SignificantActivityFcos;
    v6 = [(SignificantActivityFcos *)&v10 init];
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

- (SignificantActivityFcos)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [SignificantActivityFcos initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];

  return v4;
}

- (SignificantActivityFcos)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v7 = [SignificantActivityFcos initWithContentsOfURL:"initWithContentsOfURL:configuration:error:" configuration:? error:?];

  return v7;
}

- (SignificantActivityFcos)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? error:?];
  if (v5)
  {
    self = [(SignificantActivityFcos *)self initWithMLModel:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SignificantActivityFcos)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? configuration:? error:?];
  if (v6)
  {
    self = [(SignificantActivityFcos *)self initWithMLModel:?];
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
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:? configuration:? completionHandler:?];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277CBFF20];
  v8 = handlerCopy;
  v7 = handlerCopy;
  [v6 loadContentsOfURL:? configuration:? completionHandler:?];
}

void __77__SignificantActivityFcos_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SignificantActivityFcos alloc] initWithMLModel:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v5 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v7 = objc_alloc_init(v5);
  v8 = [SignificantActivityFcos predictionFromFeatures:"predictionFromFeatures:options:error:" options:? error:?];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(SignificantActivityFcos *)self model];
  v10 = [model predictionFromFeatures:? options:? error:?];

  if (v10)
  {
    v36 = [SignificantActivityFcosOutput alloc];
    v46 = [v10 featureValueForName:?];
    multiArrayValue = [v46 multiArrayValue];
    v45 = [v10 featureValueForName:?];
    multiArrayValue2 = [v45 multiArrayValue];
    v44 = [v10 featureValueForName:?];
    multiArrayValue3 = [v44 multiArrayValue];
    v43 = [v10 featureValueForName:?];
    multiArrayValue4 = [v43 multiArrayValue];
    v42 = [v10 featureValueForName:?];
    multiArrayValue5 = [v42 multiArrayValue];
    v41 = [v10 featureValueForName:?];
    multiArrayValue6 = [v41 multiArrayValue];
    v40 = [v10 featureValueForName:?];
    multiArrayValue7 = [v40 multiArrayValue];
    v39 = [v10 featureValueForName:?];
    multiArrayValue8 = [v39 multiArrayValue];
    v38 = [v10 featureValueForName:?];
    multiArrayValue9 = [v38 multiArrayValue];
    v37 = [v10 featureValueForName:?];
    multiArrayValue10 = [v37 multiArrayValue];
    v35 = [v10 featureValueForName:?];
    multiArrayValue11 = [v35 multiArrayValue];
    v34 = [v10 featureValueForName:?];
    multiArrayValue12 = [v34 multiArrayValue];
    v33 = [v10 featureValueForName:?];
    multiArrayValue13 = [v33 multiArrayValue];
    v32 = [v10 featureValueForName:?];
    multiArrayValue14 = [v32 multiArrayValue];
    v31 = [v10 featureValueForName:?];
    multiArrayValue15 = [v31 multiArrayValue];
    v30 = [v10 featureValueForName:?];
    multiArrayValue16 = [v30 multiArrayValue];
    v29 = [v10 featureValueForName:?];
    multiArrayValue17 = [v29 multiArrayValue];
    v28 = [v10 featureValueForName:?];
    multiArrayValue18 = [v28 multiArrayValue];
    v27 = [v10 featureValueForName:?];
    multiArrayValue19 = [v27 multiArrayValue];
    v26 = [v10 featureValueForName:?];
    multiArrayValue20 = [v26 multiArrayValue];
    v25 = [v10 featureValueForName:?];
    multiArrayValue21 = [v25 multiArrayValue];
    v23 = [v10 featureValueForName:?];
    multiArrayValue22 = [v23 multiArrayValue];
    v22 = [v10 featureValueForName:?];
    multiArrayValue23 = [v22 multiArrayValue];
    v14 = [v10 featureValueForName:?];
    multiArrayValue24 = [v14 multiArrayValue];
    v16 = [v10 featureValueForName:?];
    multiArrayValue25 = [v16 multiArrayValue];
    v18 = [SignificantActivityFcosOutput initWithHomeSSD_class_prob0:v36 HomeSSD_box0_offset0:"initWithHomeSSD_class_prob0:HomeSSD_box0_offset0:HomeSSD_box1_offset0:HomeSSD_object_roll0:HomeSSD_object_yaw0:HomeSSD_class_prob1:HomeSSD_box0_offset1:HomeSSD_box1_offset1:HomeSSD_object_roll1:HomeSSD_object_yaw1:HomeSSD_class_prob2:HomeSSD_box0_offset2:HomeSSD_box1_offset2:HomeSSD_object_roll2:HomeSSD_object_yaw2:HomeSSD_class_prob3:HomeSSD_box0_offset3:HomeSSD_box1_offset3:HomeSSD_object_roll3:HomeSSD_object_yaw3:HomeSSD_class_prob4:HomeSSD_box0_offset4:HomeSSD_box1_offset4:HomeSSD_object_roll4:HomeSSD_object_yaw4:" HomeSSD_box1_offset0:multiArrayValue7 HomeSSD_object_roll0:multiArrayValue8 HomeSSD_object_yaw0:multiArrayValue9 HomeSSD_class_prob1:multiArrayValue10 HomeSSD_box0_offset1:multiArrayValue11 HomeSSD_box1_offset1:multiArrayValue12 HomeSSD_object_roll1:multiArrayValue13 HomeSSD_object_yaw1:multiArrayValue14 HomeSSD_class_prob2:multiArrayValue15 HomeSSD_box0_offset2:multiArrayValue16 HomeSSD_box1_offset2:multiArrayValue17 HomeSSD_object_roll2:multiArrayValue18 HomeSSD_object_yaw2:multiArrayValue19 HomeSSD_class_prob3:multiArrayValue20 HomeSSD_box0_offset3:multiArrayValue21 HomeSSD_box1_offset3:multiArrayValue22 HomeSSD_object_roll3:multiArrayValue23 HomeSSD_object_yaw3:multiArrayValue24 HomeSSD_class_prob4:multiArrayValue25 HomeSSD_box0_offset4:? HomeSSD_box1_offset4:? HomeSSD_object_roll4:? HomeSSD_object_yaw4:?];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(SignificantActivityFcos *)self model];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __68__SignificantActivityFcos_predictionFromFeatures_completionHandler___block_invoke;
  v13 = &unk_278755E98;
  v14 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:? completionHandler:?];
}

void __68__SignificantActivityFcos_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = a2;
  if (v62)
  {
    v45 = a1;
    v44 = a3;
    v32 = [SignificantActivityFcosOutput alloc];
    v43 = [v62 featureValueForName:?];
    v61 = [v43 multiArrayValue];
    v42 = [v62 featureValueForName:?];
    v60 = [v42 multiArrayValue];
    v41 = [v62 featureValueForName:?];
    v59 = [v41 multiArrayValue];
    v40 = [v62 featureValueForName:?];
    v58 = [v40 multiArrayValue];
    v39 = [v62 featureValueForName:?];
    v57 = [v39 multiArrayValue];
    v38 = [v62 featureValueForName:?];
    v56 = [v38 multiArrayValue];
    v37 = [v62 featureValueForName:?];
    v55 = [v37 multiArrayValue];
    v36 = [v62 featureValueForName:?];
    v54 = [v36 multiArrayValue];
    v35 = [v62 featureValueForName:?];
    v53 = [v35 multiArrayValue];
    v34 = [v62 featureValueForName:?];
    v52 = [v34 multiArrayValue];
    v31 = [v62 featureValueForName:?];
    v51 = [v31 multiArrayValue];
    v30 = [v62 featureValueForName:?];
    v50 = [v30 multiArrayValue];
    v29 = [v62 featureValueForName:?];
    v48 = [v29 multiArrayValue];
    v28 = [v62 featureValueForName:?];
    v49 = [v28 multiArrayValue];
    v27 = [v62 featureValueForName:?];
    v21 = [v27 multiArrayValue];
    v26 = [v62 featureValueForName:?];
    v47 = [v26 multiArrayValue];
    v25 = [v62 featureValueForName:?];
    v19 = [v25 multiArrayValue];
    v24 = [v62 featureValueForName:?];
    v46 = [v24 multiArrayValue];
    v23 = [v62 featureValueForName:?];
    v17 = [v23 multiArrayValue];
    v22 = [v62 featureValueForName:?];
    v5 = [v22 multiArrayValue];
    v20 = [v62 featureValueForName:?];
    v6 = [v20 multiArrayValue];
    v18 = [v62 featureValueForName:?];
    v16 = [v18 multiArrayValue];
    v7 = [v62 featureValueForName:?];
    v8 = [v7 multiArrayValue];
    v9 = [v62 featureValueForName:?];
    v10 = [v9 multiArrayValue];
    v11 = [v62 featureValueForName:?];
    v12 = [v11 multiArrayValue];
    v33 = [SignificantActivityFcosOutput initWithHomeSSD_class_prob0:v32 HomeSSD_box0_offset0:"initWithHomeSSD_class_prob0:HomeSSD_box0_offset0:HomeSSD_box1_offset0:HomeSSD_object_roll0:HomeSSD_object_yaw0:HomeSSD_class_prob1:HomeSSD_box0_offset1:HomeSSD_box1_offset1:HomeSSD_object_roll1:HomeSSD_object_yaw1:HomeSSD_class_prob2:HomeSSD_box0_offset2:HomeSSD_box1_offset2:HomeSSD_object_roll2:HomeSSD_object_yaw2:HomeSSD_class_prob3:HomeSSD_box0_offset3:HomeSSD_box1_offset3:HomeSSD_object_roll3:HomeSSD_object_yaw3:HomeSSD_class_prob4:HomeSSD_box0_offset4:HomeSSD_box1_offset4:HomeSSD_object_roll4:HomeSSD_object_yaw4:" HomeSSD_box1_offset0:v55 HomeSSD_object_roll0:v54 HomeSSD_object_yaw0:v53 HomeSSD_class_prob1:v52 HomeSSD_box0_offset1:v51 HomeSSD_box1_offset1:v50 HomeSSD_object_roll1:v48 HomeSSD_object_yaw1:v49 HomeSSD_class_prob2:v21 HomeSSD_box0_offset2:v47 HomeSSD_box1_offset2:v19 HomeSSD_object_roll2:v46 HomeSSD_object_yaw2:v17 HomeSSD_class_prob3:v5 HomeSSD_box0_offset3:v6 HomeSSD_box1_offset3:v16 HomeSSD_object_roll3:v8 HomeSSD_object_yaw3:v10 HomeSSD_class_prob4:v12 HomeSSD_box0_offset4:? HomeSSD_box1_offset4:? HomeSSD_object_roll4:? HomeSSD_object_yaw4:?];

    v13 = v33;
    (*(*(v45 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(SignificantActivityFcos *)self model];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __76__SignificantActivityFcos_predictionFromFeatures_options_completionHandler___block_invoke;
  v16 = &unk_278755E98;
  v17 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:? options:? completionHandler:?];
}

void __76__SignificantActivityFcos_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = a2;
  if (v62)
  {
    v45 = a1;
    v44 = a3;
    v32 = [SignificantActivityFcosOutput alloc];
    v43 = [v62 featureValueForName:?];
    v61 = [v43 multiArrayValue];
    v42 = [v62 featureValueForName:?];
    v60 = [v42 multiArrayValue];
    v41 = [v62 featureValueForName:?];
    v59 = [v41 multiArrayValue];
    v40 = [v62 featureValueForName:?];
    v58 = [v40 multiArrayValue];
    v39 = [v62 featureValueForName:?];
    v57 = [v39 multiArrayValue];
    v38 = [v62 featureValueForName:?];
    v56 = [v38 multiArrayValue];
    v37 = [v62 featureValueForName:?];
    v55 = [v37 multiArrayValue];
    v36 = [v62 featureValueForName:?];
    v54 = [v36 multiArrayValue];
    v35 = [v62 featureValueForName:?];
    v53 = [v35 multiArrayValue];
    v34 = [v62 featureValueForName:?];
    v52 = [v34 multiArrayValue];
    v31 = [v62 featureValueForName:?];
    v51 = [v31 multiArrayValue];
    v30 = [v62 featureValueForName:?];
    v50 = [v30 multiArrayValue];
    v29 = [v62 featureValueForName:?];
    v48 = [v29 multiArrayValue];
    v28 = [v62 featureValueForName:?];
    v49 = [v28 multiArrayValue];
    v27 = [v62 featureValueForName:?];
    v21 = [v27 multiArrayValue];
    v26 = [v62 featureValueForName:?];
    v47 = [v26 multiArrayValue];
    v25 = [v62 featureValueForName:?];
    v19 = [v25 multiArrayValue];
    v24 = [v62 featureValueForName:?];
    v46 = [v24 multiArrayValue];
    v23 = [v62 featureValueForName:?];
    v17 = [v23 multiArrayValue];
    v22 = [v62 featureValueForName:?];
    v5 = [v22 multiArrayValue];
    v20 = [v62 featureValueForName:?];
    v6 = [v20 multiArrayValue];
    v18 = [v62 featureValueForName:?];
    v16 = [v18 multiArrayValue];
    v7 = [v62 featureValueForName:?];
    v8 = [v7 multiArrayValue];
    v9 = [v62 featureValueForName:?];
    v10 = [v9 multiArrayValue];
    v11 = [v62 featureValueForName:?];
    v12 = [v11 multiArrayValue];
    v33 = [SignificantActivityFcosOutput initWithHomeSSD_class_prob0:v32 HomeSSD_box0_offset0:"initWithHomeSSD_class_prob0:HomeSSD_box0_offset0:HomeSSD_box1_offset0:HomeSSD_object_roll0:HomeSSD_object_yaw0:HomeSSD_class_prob1:HomeSSD_box0_offset1:HomeSSD_box1_offset1:HomeSSD_object_roll1:HomeSSD_object_yaw1:HomeSSD_class_prob2:HomeSSD_box0_offset2:HomeSSD_box1_offset2:HomeSSD_object_roll2:HomeSSD_object_yaw2:HomeSSD_class_prob3:HomeSSD_box0_offset3:HomeSSD_box1_offset3:HomeSSD_object_roll3:HomeSSD_object_yaw3:HomeSSD_class_prob4:HomeSSD_box0_offset4:HomeSSD_box1_offset4:HomeSSD_object_roll4:HomeSSD_object_yaw4:" HomeSSD_box1_offset0:v55 HomeSSD_object_roll0:v54 HomeSSD_object_yaw0:v53 HomeSSD_class_prob1:v52 HomeSSD_box0_offset1:v51 HomeSSD_box1_offset1:v50 HomeSSD_object_roll1:v48 HomeSSD_object_yaw1:v49 HomeSSD_class_prob2:v21 HomeSSD_box0_offset2:v47 HomeSSD_box1_offset2:v19 HomeSSD_object_roll2:v46 HomeSSD_object_yaw2:v17 HomeSSD_class_prob3:v5 HomeSSD_box0_offset3:v6 HomeSSD_box1_offset3:v16 HomeSSD_object_roll3:v8 HomeSSD_object_yaw3:v10 HomeSSD_class_prob4:v12 HomeSSD_box0_offset4:? HomeSSD_box1_offset4:? HomeSSD_object_roll4:? HomeSSD_object_yaw4:?];

    v13 = v33;
    (*(*(v45 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error
{
  v5 = [[SignificantActivityFcosInput alloc] initWithImage_Placeholder:?];
  v6 = [SignificantActivityFcos predictionFromFeatures:"predictionFromFeatures:error:" error:?];

  return v6;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v9 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:?];
  model = [(SignificantActivityFcos *)self model];
  v11 = [model predictionsFromBatch:? options:? error:?];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB18];
    [v11 count];
    v13 = [v12 arrayWithCapacity:?];
    if ([v11 count] >= 1)
    {
      v26 = v9;
      v27 = optionsCopy;
      v28 = inputsCopy;
      v29 = v13;
      v14 = 0;
      v30 = v11;
      do
      {
        v75 = v14;
        v15 = [v11 featuresAtIndex:?];
        v45 = [SignificantActivityFcosOutput alloc];
        v57 = [v15 featureValueForName:?];
        multiArrayValue = [v57 multiArrayValue];
        v56 = [v15 featureValueForName:?];
        multiArrayValue2 = [v56 multiArrayValue];
        v55 = [v15 featureValueForName:?];
        multiArrayValue3 = [v55 multiArrayValue];
        v54 = [v15 featureValueForName:?];
        multiArrayValue4 = [v54 multiArrayValue];
        v53 = [v15 featureValueForName:?];
        multiArrayValue5 = [v53 multiArrayValue];
        v52 = [v15 featureValueForName:?];
        multiArrayValue6 = [v52 multiArrayValue];
        v51 = [v15 featureValueForName:?];
        multiArrayValue7 = [v51 multiArrayValue];
        v50 = [v15 featureValueForName:?];
        multiArrayValue8 = [v50 multiArrayValue];
        v49 = [v15 featureValueForName:?];
        multiArrayValue9 = [v49 multiArrayValue];
        v48 = [v15 featureValueForName:?];
        multiArrayValue10 = [v48 multiArrayValue];
        v47 = [v15 featureValueForName:?];
        multiArrayValue11 = [v47 multiArrayValue];
        v44 = [v15 featureValueForName:?];
        multiArrayValue12 = [v44 multiArrayValue];
        v43 = [v15 featureValueForName:?];
        multiArrayValue13 = [v43 multiArrayValue];
        v42 = [v15 featureValueForName:?];
        multiArrayValue14 = [v42 multiArrayValue];
        v41 = [v15 featureValueForName:?];
        multiArrayValue15 = [v41 multiArrayValue];
        v40 = [v15 featureValueForName:?];
        multiArrayValue16 = [v40 multiArrayValue];
        v39 = [v15 featureValueForName:?];
        multiArrayValue17 = [v39 multiArrayValue];
        v38 = [v15 featureValueForName:?];
        multiArrayValue18 = [v38 multiArrayValue];
        v37 = [v15 featureValueForName:?];
        multiArrayValue19 = [v37 multiArrayValue];
        v36 = [v15 featureValueForName:?];
        multiArrayValue20 = [v36 multiArrayValue];
        v35 = [v15 featureValueForName:?];
        multiArrayValue21 = [v35 multiArrayValue];
        v34 = [v15 featureValueForName:?];
        multiArrayValue22 = [v34 multiArrayValue];
        v32 = [v15 featureValueForName:?];
        multiArrayValue23 = [v32 multiArrayValue];
        v20 = [v15 featureValueForName:?];
        multiArrayValue24 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:?];
        multiArrayValue25 = [v22 multiArrayValue];
        v46 = [SignificantActivityFcosOutput initWithHomeSSD_class_prob0:v45 HomeSSD_box0_offset0:"initWithHomeSSD_class_prob0:HomeSSD_box0_offset0:HomeSSD_box1_offset0:HomeSSD_object_roll0:HomeSSD_object_yaw0:HomeSSD_class_prob1:HomeSSD_box0_offset1:HomeSSD_box1_offset1:HomeSSD_object_roll1:HomeSSD_object_yaw1:HomeSSD_class_prob2:HomeSSD_box0_offset2:HomeSSD_box1_offset2:HomeSSD_object_roll2:HomeSSD_object_yaw2:HomeSSD_class_prob3:HomeSSD_box0_offset3:HomeSSD_box1_offset3:HomeSSD_object_roll3:HomeSSD_object_yaw3:HomeSSD_class_prob4:HomeSSD_box0_offset4:HomeSSD_box1_offset4:HomeSSD_object_roll4:HomeSSD_object_yaw4:" HomeSSD_box1_offset0:multiArrayValue7 HomeSSD_object_roll0:multiArrayValue8 HomeSSD_object_yaw0:multiArrayValue9 HomeSSD_class_prob1:multiArrayValue10 HomeSSD_box0_offset1:multiArrayValue11 HomeSSD_box1_offset1:multiArrayValue12 HomeSSD_object_roll1:multiArrayValue13 HomeSSD_object_yaw1:multiArrayValue14 HomeSSD_class_prob2:multiArrayValue15 HomeSSD_box0_offset2:multiArrayValue16 HomeSSD_box1_offset2:multiArrayValue17 HomeSSD_object_roll2:multiArrayValue18 HomeSSD_object_yaw2:multiArrayValue19 HomeSSD_class_prob3:multiArrayValue20 HomeSSD_box0_offset3:multiArrayValue21 HomeSSD_box1_offset3:multiArrayValue22 HomeSSD_object_roll3:multiArrayValue23 HomeSSD_object_yaw3:multiArrayValue24 HomeSSD_class_prob4:multiArrayValue25 HomeSSD_box0_offset4:? HomeSSD_box1_offset4:? HomeSSD_object_roll4:? HomeSSD_object_yaw4:?];

        v13 = v29;
        v11 = v30;

        [v29 addObject:?];
        v24 = [v30 count];
        v14 = v75 + 1;
      }

      while (v75 + 1 < v24);
      optionsCopy = v27;
      inputsCopy = v28;
      v9 = v26;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end