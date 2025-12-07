@interface QuickTypePFLTrainerMLP
+ (__CFData)copyToFlatBuffer:(void *)buffer;
+ (id)reportingStringForModelUpdates:(float *)updates count:(unint64_t)count;
+ (void)initialize;
- (BOOL)trainOn:(id)on forNEpochs:(unint64_t)epochs;
- (QuickTypePFLTrainerMLP)initWithSeedModelPath:(id)path andPrivacyIdentifier:(id)identifier;
- (id)getWeightUpdatesAddNoise:(BOOL)noise encryptionKey:(id)key recipe:(id)recipe;
- (void)writeModelToURL:(id)l;
@end

@implementation QuickTypePFLTrainerMLP

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.NLP", "QuickTypePFLTrainerMLP");

    MEMORY[0x2821F96F8]();
  }
}

+ (__CFData)copyToFlatBuffer:(void *)buffer
{
  v3 = NLModelContainerCopySplitContainerData();
  if (CFArrayGetCount(v3) != 2)
  {
    __assert_rtn("+[QuickTypePFLTrainerMLP copyToFlatBuffer:]", "QuickTypePFLTrainerMLP.mm", 64, "CFArrayGetCount(containerDataArray) == 2 && NLModelContainerCopySplitContainerData is expected to return an array of size 2");
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 1);
  Length = CFDataGetLength(ValueAtIndex);
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], Length, ValueAtIndex);
  if (v3)
  {
    CFRelease(v3);
  }

  return MutableCopy;
}

+ (id)reportingStringForModelUpdates:(float *)updates count:(unint64_t)count
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if (count >= 3)
  {
    countCopy = 3;
  }

  else
  {
    countCopy = count;
  }

  if (count)
  {
    updatesCopy = updates;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *updatesCopy];
      [v6 addObject:v9];

      ++updatesCopy;
      --countCopy;
    }

    while (countCopy);
  }

  v10 = [v6 componentsJoinedByString:{@", "}];
  if (count >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ .. %f", v10, updates[count - 1]];

    v10 = v11;
  }

  v19[0] = @"ModelUpdate";
  v19[1] = @"ModelShape";
  v20[0] = v10;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%zu, )", count];
  v20[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v18 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v18];
  v15 = v18;
  if (![v14 length] || v15)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      +[QuickTypePFLTrainerMLP reportingStringForModelUpdates:count:];
    }

    v16 = 0;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
  }

  return v16;
}

- (QuickTypePFLTrainerMLP)initWithSeedModelPath:(id)path andPrivacyIdentifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = QuickTypePFLTrainerMLP;
  v8 = [(QuickTypePFLTrainerMLP *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEBC0]);
    absoluteString = [pathCopy absoluteString];
    v11 = [v9 initWithString:absoluteString];
    seedModelPath = v8->_seedModelPath;
    v8->_seedModelPath = v11;

    nlp::CFScopedPtr<void *>::reset(&v8->_model.m_ref, 0);
    v8->_batchSize = 1;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:5.0];
    clippingNorm = v8->_clippingNorm;
    v8->_clippingNorm = v13;

    v8->_normBinCount = 30;
    v15 = [identifierCopy copy];
    privacyIdentifier = v8->_privacyIdentifier;
    v8->_privacyIdentifier = v15;
  }

  return v8;
}

- (BOOL)trainOn:(id)on forNEpochs:(unint64_t)epochs
{
  v52[3] = *MEMORY[0x277D85DE8];
  onCopy = on;
  v51[0] = *MEMORY[0x277D2A268];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:epochs];
  v52[0] = v6;
  v51[1] = *MEMORY[0x277D2A238];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_batchSize];
  v51[2] = *MEMORY[0x277D2A240];
  v52[1] = v7;
  v52[2] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v9 = [v8 mutableCopy];

  learningRate = [(QuickTypePFLTrainerMLP *)self learningRate];
  v11 = learningRate == 0;

  if (!v11)
  {
    learningRate2 = [(QuickTypePFLTrainerMLP *)self learningRate];
    [v9 setObject:learningRate2 forKeyedSubscript:*MEMORY[0x277D2A258]];
  }

  gradientClipMax = [(QuickTypePFLTrainerMLP *)self gradientClipMax];
  if (gradientClipMax)
  {
    gradientClipMin = [(QuickTypePFLTrainerMLP *)self gradientClipMin];
    v15 = gradientClipMin == 0;

    if (!v15)
    {
      gradientClipMin2 = [(QuickTypePFLTrainerMLP *)self gradientClipMin];
      [v9 setObject:gradientClipMin2 forKeyedSubscript:*MEMORY[0x277D2A250]];

      gradientClipMax2 = [(QuickTypePFLTrainerMLP *)self gradientClipMax];
      [v9 setObject:gradientClipMax2 forKeyedSubscript:*MEMORY[0x277D2A248]];
    }
  }

  cf = 0;
  v18 = NLModelContainerCreateWithContentsOfURL();
  v47 = v18;
  if (v18 && (v19 = MLPModelTrainerCreateWithModel(), v46 = v19, CFRelease(v18), v47 = 0, v19))
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke;
    v44[3] = &unk_279928BF8;
    v20 = onCopy;
    v45 = v20;
    v21 = MEMORY[0x25F8584E0](v44);
    v22 = MLPModelTrainerEvaluateModel();
    v23 = MEMORY[0x277D2A260];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D2A260]];
    initialLoss = self->_initialLoss;
    self->_initialLoss = v24;

    v26 = sLog;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      [(NSNumber *)self->_initialLoss floatValue];
      *buf = 134217984;
      v50 = v27;
      _os_log_impl(&dword_25AE22000, v26, OS_LOG_TYPE_INFO, "Initial loss: %.2f", buf, 0xCu);
    }

    [v20 rewind];
    v43 = 1;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke_60;
    v40[3] = &unk_279928C20;
    v28 = v20;
    v41 = v28;
    v42 = &v43;
    v29 = MEMORY[0x25F8584E0](v40);
    v30 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25AE22000, v30, OS_LOG_TYPE_INFO, "Started training", buf, 2u);
    }

    v31 = MLPModelTrainerTrainModel();
    nlp::CFScopedPtr<void *>::reset(&self->_model.m_ref, v31);
    [v28 rewind];
    v32 = MLPModelTrainerEvaluateModel();
    v33 = [v32 objectForKeyedSubscript:*v23];
    trainingLoss = self->_trainingLoss;
    self->_trainingLoss = v33;

    v35 = sLog;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      [(NSNumber *)self->_trainingLoss floatValue];
      *buf = 134217984;
      v50 = v36;
      _os_log_impl(&dword_25AE22000, v35, OS_LOG_TYPE_INFO, "Training loss: %.2f", buf, 0xCu);
    }

    v37 = self->_model.m_ref != 0;
    CFRelease(v19);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

uint64_t __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) nextTrainingDataBatch:{a3, a4}];
  if (!result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke_60(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _BYTE *a5)
{
  if (a4)
  {
    [*(a1 + 32) rewind];
  }

  if (*(a1 + 40) != a2)
  {
    return 0;
  }

  result = [*(a1 + 32) nextTrainingDataBatch:a3];
  if (!result)
  {
    *a5 = 1;
  }

  return result;
}

void __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_25AE22000, v3, OS_LOG_TYPE_INFO, "PFL Training %@", &v4, 0xCu);
  }
}

- (id)getWeightUpdatesAddNoise:(BOOL)noise encryptionKey:(id)key recipe:(id)recipe
{
  noiseCopy = noise;
  v57 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  recipeCopy = recipe;
  if (!self->_model.m_ref)
  {
    v48 = keyCopy;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:];
    }

    goto LABEL_50;
  }

  if ((!keyCopy || !noiseCopy) && !+[NLPLearnerUtils isInternalInstall])
  {
    v48 = keyCopy;
LABEL_50:
    v35 = 0;
    goto LABEL_55;
  }

  v47 = objc_alloc_init(QuickTypeWeightUpdates);
  v9 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25AE22000, v9, OS_LOG_TYPE_INFO, "Dumping updated model weights", buf, 2u);
  }

  if ([recipeCopy pluginShouldAddNoiseAndEncryptResult])
  {
    v10 = sLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:noiseCopy];
      [(QuickTypePFLTrainerMLP *)v11 getWeightUpdatesAddNoise:keyCopy encryptionKey:buf recipe:v10];
    }

    v12 = keyCopy;
  }

  else
  {

    if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
    {
      [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:];
    }

    v12 = 0;
    LODWORD(noiseCopy) = 0;
  }

  v48 = v12;
  v13 = NLModelContainerCreateWithContentsOfURL();
  v53 = v13;
  v14 = [objc_opt_class() copyToFlatBuffer:v13];
  v52 = v14;
  if (v13)
  {
    CFRelease(v13);
  }

  v53 = 0;
  BytePtr = CFDataGetBytePtr(v14);
  v16 = [objc_opt_class() copyToFlatBuffer:self->_model.m_ref];
  v51 = v16;
  MutableBytePtr = CFDataGetMutableBytePtr(v16);
  Length = CFDataGetLength(v14);
  v19 = Length >> 2;
  if (Length >> 2 != CFDataGetLength(v16) >> 2)
  {
    __assert_rtn("[QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:]", "QuickTypePFLTrainerMLP.mm", 220, "weightCount == (CFDataGetLength(updatedModelData) / sizeof(float)) && Mismatching buffer lengths for seed model and updated model");
  }

  v45 = [objc_alloc(MEMORY[0x277D05610]) initWithRecipe:recipeCopy];
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
  {
    [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:];
  }

  v20 = 0.0;
  v21 = 0.0;
  if (Length >= 4)
  {
    v22 = MutableBytePtr;
    v23 = Length >> 2;
    do
    {
      v24 = *BytePtr;
      BytePtr += 4;
      v25 = *v22;
      v26 = *v22 - v24;
      *v22++ = v26;
      v21 = v26 * v26 + *&v21;
      *&v21 = v21;
      v27 = vabds_f32(v25, v24);
      if (v27 > v20)
      {
        v20 = v27;
      }

      --v23;
    }

    while (v23);
  }

  *&v21 = sqrtf(*&v21);
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:{v21, v45}];
  [(QuickTypeWeightUpdates *)v47 setL2Norm:v28];

  *&v29 = v20;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  [(QuickTypeWeightUpdates *)v47 setMaxNorm:v30];

  if (v14)
  {
    CFRelease(v14);
  }

  v52 = 0;
  nlp::CFScopedPtr<void *>::reset(&self->_model.m_ref, 0);
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
  {
    [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:];
  }

  if (noiseCopy)
  {
    v31 = sLog;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      clippingNorm = [(QuickTypePFLTrainerMLP *)self clippingNorm];
      [(QuickTypePFLTrainerMLP *)clippingNorm getWeightUpdatesAddNoise:v55 encryptionKey:[(QuickTypePFLTrainerMLP *)self normBinCount] recipe:v31];
    }

    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:];
    }

    v33 = 0;
    v34 = 0;
  }

  else
  {
    v36 = [objc_opt_class() reportingStringForModelUpdates:MutableBytePtr count:v19];
    [(QuickTypeWeightUpdates *)v47 setWeightUpdatesDiagnosticReport:v36];

    v37 = sLog;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      weightUpdatesDiagnosticReport = [(QuickTypeWeightUpdates *)v47 weightUpdatesDiagnosticReport];
      [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:weightUpdatesDiagnosticReport encryptionKey:v55 recipe:v37];
    }

    if (!v48)
    {
      v42 = objc_alloc_init(MEMORY[0x277D05618]);
      [v42 setVersion:1];
      [v42 setData32s:MutableBytePtr count:v19];
      data = [v42 data];
      [(QuickTypeWeightUpdates *)v47 setWeightUpdates:data];

      v35 = v47;
      v33 = 0;
      v34 = 0;
      goto LABEL_52;
    }

    v50 = 0;
    v34 = [v46 encryptedDataWithPublicKey:v48 inPlaceDataFloatNumbers:MutableBytePtr count:v19 error:&v50];
    v39 = v50;
    v33 = v39;
    if (v34 && !v39)
    {
      if (v16)
      {
        CFRelease(v16);
      }

      v51 = 0;
      v40 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *v54 = 0;
        _os_log_impl(&dword_25AE22000, v40, OS_LOG_TYPE_INFO, "Privatization and encryption completed", v54, 2u);
      }

      v41 = sLog;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        -[QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:].cold.6(v54, [v34 length], v41);
      }

      [(QuickTypeWeightUpdates *)v47 setWeightUpdates:v34];
      v35 = v47;
      v16 = 0;
      v33 = 0;
      goto LABEL_52;
    }

    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [QuickTypePFLTrainerMLP getWeightUpdatesAddNoise:encryptionKey:recipe:];
    }
  }

  v35 = 0;
LABEL_52:

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_55:

  return v35;
}

- (void)writeModelToURL:(id)l
{
  v8 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (self->_model.m_ref)
  {
    if (NLModelContainerWriteToURL())
    {
      v5 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v7 = lCopy;
        _os_log_impl(&dword_25AE22000, v5, OS_LOG_TYPE_INFO, "Saved PFL model at %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [QuickTypePFLTrainerMLP writeModelToURL:];
      }
    }
  }

  else if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [QuickTypePFLTrainerMLP writeModelToURL:];
  }
}

- (void)getWeightUpdatesAddNoise:(uint8_t *)buf encryptionKey:(os_log_t)log recipe:.cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Privatization : %@. Encryption : %@", buf, 0x16u);
}

- (void)getWeightUpdatesAddNoise:(void *)a1 encryptionKey:(uint8_t *)buf recipe:(os_log_t)log .cold.5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Added model diagnostic report: %@", buf, 0xCu);
}

- (void)getWeightUpdatesAddNoise:(uint8_t *)buf encryptionKey:(uint64_t)a2 recipe:(os_log_t)log .cold.6(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Encrypted data size is : %{bytes}zu", buf, 0xCu);
}

- (void)getWeightUpdatesAddNoise:(uint64_t)a3 encryptionKey:(os_log_t)log recipe:.cold.8(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Privacy parameters: norm = %@, binCount = %lu", buf, 0x16u);
}

- (void)getWeightUpdatesAddNoise:encryptionKey:recipe:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getWeightUpdatesAddNoise:encryptionKey:recipe:.cold.10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeModelToURL:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end