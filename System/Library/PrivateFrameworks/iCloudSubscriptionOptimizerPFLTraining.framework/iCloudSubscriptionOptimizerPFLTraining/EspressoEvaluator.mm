@interface EspressoEvaluator
+ (void)initialize;
- (float)averageLossEvaluation:(id)evaluation dataWrapper:(id)wrapper batchSize:(int)size;
- (id)evaluateWithModelURL:(id)l dataSource:(id)source error:(id *)error;
- (id)evaluationMetrics:(id)metrics dataWrapper:(id)wrapper outputName:(id)name;
@end

@implementation EspressoEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin", "EspressoEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)evaluationMetrics:(id)metrics dataWrapper:(id)wrapper outputName:(id)name
{
  v24[2] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  wrapperCopy = wrapper;
  nameCopy = name;
  array = [MEMORY[0x277CBEB18] array];
  v11 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_275B9B000, v11, OS_LOG_TYPE_INFO, "Started model evaluation", buf, 2u);
  }

  v24[0] = @"cross_entropy";
  v24[1] = nameCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__EspressoEvaluator_evaluationMetrics_dataWrapper_outputName___block_invoke;
  v19[3] = &unk_27A66D648;
  v13 = nameCopy;
  v20 = v13;
  v14 = wrapperCopy;
  v21 = v14;
  v15 = array;
  v22 = v15;
  [metricsCopy runInference:v14 outputNames:v12 batchCallback:v19];

  v16 = v22;
  v17 = v15;

  return v15;
}

uint64_t __62__EspressoEvaluator_evaluationMetrics_dataWrapper_outputName___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sLog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109376;
    v19[1] = a2;
    v20 = 1024;
    v21 = [v5 numberOfDataPoints];
    _os_log_impl(&dword_275B9B000, v6, OS_LOG_TYPE_INFO, "fit: iter=%d outputs.numberOfDataPoints=%d", v19, 0xEu);
  }

  for (i = 0; i < [v5 numberOfDataPoints]; i = (i + 1))
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v5 dataPointAtIndex:i];
    v10 = [v9 bufferWithKey:*(a1 + 32)];

    v11 = expf(v10[1]);
    *&v12 = v11 / (v11 + expf(*v10));
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v8 setValue:v13 forKey:@"probability"];

    v14 = [*(a1 + 40) dataPointAtIndex:i];
    v15 = [v14 bufferWithKey:@"label"];

    LODWORD(v16) = *v15;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{*v15 > 0.0, v16}];
    [v8 setValue:v17 forKey:@"label"];

    [*(a1 + 48) addObject:v8];
  }

  return 0;
}

- (float)averageLossEvaluation:(id)evaluation dataWrapper:(id)wrapper batchSize:(int)size
{
  evaluationCopy = evaluation;
  wrapperCopy = wrapper;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  numberOfDataPoints = [wrapperCopy numberOfDataPoints];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__EspressoEvaluator_averageLossEvaluation_dataWrapper_batchSize___block_invoke;
  v12[3] = &unk_27A66D670;
  v12[4] = &v13;
  v12[5] = numberOfDataPoints / size;
  [evaluationCopy runInference:wrapperCopy outputNames:&unk_2884B2318 batchCallback:v12];
  v10 = v14[6];
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __65__EspressoEvaluator_averageLossEvaluation_dataWrapper_batchSize___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 dataPointAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = (*[v5 bufferWithKey:@"cross_entropy"] / *(a1 + 40)) + *(*(*(a1 + 32) + 8) + 24);

  return 0;
}

- (id)evaluateWithModelURL:(id)l dataSource:(id)source error:(id *)error
{
  v118 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sourceCopy = source;
  v7 = sLog;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    [sourceCopy learningRate];
    v9 = v8;
    freezeComponents = [sourceCopy freezeComponents];
    gradNormType = [sourceCopy gradNormType];
    [sourceCopy gradNormFactor];
    v13 = v12;
    batchSize = [sourceCopy batchSize];
    objectiveFunction = [sourceCopy objectiveFunction];
    modelOutputName = [sourceCopy modelOutputName];
    *buf = 134219522;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = freezeComponents;
    *&buf[22] = 2112;
    v112 = gradNormType;
    LOWORD(v113) = 2048;
    *(&v113 + 2) = v13;
    WORD5(v113) = 1024;
    HIDWORD(v113) = batchSize;
    v114 = 2112;
    v115 = objectiveFunction;
    v116 = 2112;
    v117 = modelOutputName;
    _os_log_impl(&dword_275B9B000, v7, OS_LOG_TYPE_INFO, "Evaluation using Espresso with learning rate %f, freezing components %@ , gradient normtype %@ , gradient norm factor %f , batch size %d , objective function %@, model output name %@", buf, 0x44u);
  }

  v101 = 0;
  v17 = [MEMORY[0x277CBFF20] compileModelAtURL:lCopy error:&v101];
  v76 = v17;
  v77 = v101;
  if (v17)
  {
    v75 = [v17 URLByAppendingPathComponent:@"model.espresso.net"];
    v18 = sLog;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v18, OS_LOG_TYPE_INFO, "Setup espresso network", buf, 2u);
    }

    v19 = objc_alloc(MEMORY[0x277D07768]);
    path = [v75 path];
    v88 = [v19 initWithNetwork:path];

    layersToTrain = [sourceCopy layersToTrain];
    LOBYTE(v19) = [layersToTrain count] == 0;

    if ((v19 & 1) == 0)
    {
      layersToTrain2 = [sourceCopy layersToTrain];
      [v88 configureLayersToTrain:layersToTrain2 reinitializeVariables:0];
    }

    v23 = sLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v23, OS_LOG_TYPE_INFO, "Create optimizer", buf, 2u);
    }

    v82 = objc_alloc_init(MEMORY[0x277D07778]);
    [v82 setBatch_size:{objc_msgSend(sourceCopy, "batchSize")}];
    [sourceCopy learningRate];
    [v82 setLr:?];
    [sourceCopy learningRateDecay];
    [v82 setLr_decay_epoch:?];
    v24 = sLog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v24, OS_LOG_TYPE_INFO, "Create classifier task", buf, 2u);
    }

    v81 = [objc_alloc(MEMORY[0x277D07788]) initWithModelDef:v88 optimizerDef:v82 extractor:0 needWeightsInitialization:0];
    v100[0] = 0;
    v100[1] = 0;
    v98[1] = 0;
    v99 = v100;
    v97 = v98;
    v98[0] = 0;
    v25 = sLog;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      layersToTrain3 = [sourceCopy layersToTrain];
      *buf = 138412290;
      *&buf[4] = layersToTrain3;
      _os_log_impl(&dword_275B9B000, v25, OS_LOG_TYPE_INFO, "Layers to train: %@", buf, 0xCu);
    }

    memset(v96, 0, sizeof(v96));
    layersToTrain4 = [sourceCopy layersToTrain];
    if ([layersToTrain4 countByEnumeratingWithState:v96 objects:v110 count:16])
    {
      objc_msgSend_weightsForLayer_(v88, v75, v76);
      v28 = *(*__p + 12);
      *buf = *(*__p + 8);
      LODWORD(v104) = v28;
      v103 = 1;
      v102 = 1;
      std::allocate_shared[abi:ne200100]<Espresso::blob<float,2>,std::allocator<Espresso::blob<float,2>>,int &,int &,int &,int &,0>();
    }

    v80 = [[EvaluationDataSourceEspressoWrapper alloc] initWithEvaluatorDataSource:sourceCopy];
    -[EspressoEvaluator averageLossEvaluation:dataWrapper:batchSize:](self, "averageLossEvaluation:dataWrapper:batchSize:", v81, v80, [sourceCopy batchSize]);
    v30 = v29;
    v31 = sLog;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v30;
      _os_log_impl(&dword_275B9B000, v31, OS_LOG_TYPE_INFO, "loss before training: %f", buf, 0xCu);
    }

    v32 = sLog;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v32, OS_LOG_TYPE_INFO, "Start training espresso network", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v112 = __Block_byref_object_copy_;
    *&v113 = __Block_byref_object_dispose_;
    *(&v113 + 1) = MEMORY[0x277CBEC10];
    numLocalIterations = [sourceCopy numLocalIterations];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __59__EspressoEvaluator_evaluateWithModelURL_dataSource_error___block_invoke;
    v93[3] = &unk_27A66D698;
    v93[4] = buf;
    [v81 fit:v80 numberOfEpochs:numLocalIterations withProgress:v93];
    v35 = v34;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    layersToTrain5 = [sourceCopy layersToTrain];
    obj = layersToTrain5;
    v37 = [layersToTrain5 countByEnumeratingWithState:&v89 objects:v109 count:16];
    if (v37)
    {
      v85 = *v90;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v90 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v89 + 1) + 8 * i);
          array3 = [MEMORY[0x277CBEB18] array];
          if (v88)
          {
            objc_msgSend_weightsForLayer_(v88);
          }

          else
          {
            v94 = 0;
            v95 = 0;
          }

          v41 = v39;
          std::string::basic_string[abi:ne200100]<0>(__p, [v39 UTF8String]);
          v104 = __p;
          v42 = std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v99, __p, &std::piecewise_construct, &v104);
          v44 = *(v42 + 56);
          v45 = *(v42 + 64);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v108 < 0)
          {
            operator delete(*__p);
          }

          v46 = v94;
          if (*(v94 + 12) * *(v94 + 8))
          {
            v47 = 0;
            do
            {
              *&v43 = *(*(v46 + 16) + 4 * v47) - *(*(v44 + 16) + 4 * v47);
              v48 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
              [array3 addObject:v48];

              ++v47;
              v46 = v94;
            }

            while (v47 < *(v94 + 12) * *(v94 + 8));
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          if (v95)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v95);
          }

          if (v88)
          {
            objc_msgSend_biasesForLayer_(v88);
          }

          else
          {
            v94 = 0;
            v95 = 0;
          }

          v49 = v39;
          std::string::basic_string[abi:ne200100]<0>(__p, [v39 UTF8String]);
          v104 = __p;
          v50 = std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v97, __p, &std::piecewise_construct, &v104);
          v52 = *(v50 + 56);
          v53 = *(v50 + 64);
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v108 < 0)
          {
            operator delete(*__p);
          }

          v54 = v94;
          if (*(v94 + 8))
          {
            v55 = 0;
            do
            {
              *&v51 = *(*(v54 + 16) + 4 * v55) - *(*(v52 + 16) + 4 * v55);
              v56 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
              [array3 addObject:v56];

              ++v55;
              v54 = v94;
            }

            while (v55 < *(v94 + 8));
          }

          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          if (v95)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v95);
          }

          [array addObject:array3];
          [array2 addObject:v39];
        }

        layersToTrain5 = obj;
        v37 = [obj countByEnumeratingWithState:&v89 objects:v109 count:16];
      }

      while (v37);
    }

    v57 = sLog;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&dword_275B9B000, v57, OS_LOG_TYPE_INFO, "Finished training espresso network", __p, 2u);
    }

    modelOutputName2 = [sourceCopy modelOutputName];
    v59 = [(EspressoEvaluator *)self evaluationMetrics:v81 dataWrapper:v80 outputName:modelOutputName2];
    v60 = sLog;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *__p = 138412290;
      *&__p[4] = v59;
      _os_log_impl(&dword_275B9B000, v60, OS_LOG_TYPE_INFO, "Print out probs: %@", __p, 0xCu);
    }

    -[EspressoEvaluator averageLossEvaluation:dataWrapper:batchSize:](self, "averageLossEvaluation:dataWrapper:batchSize:", v81, v80, [sourceCopy batchSize]);
    v62 = v61;
    v63 = sLog;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *__p = 134217984;
      *&__p[4] = v62;
      _os_log_impl(&dword_275B9B000, v63, OS_LOG_TYPE_INFO, "loss after training: %f", __p, 0xCu);
    }

    v105[0] = @"LossBeforeTraining";
    *&v64 = v30;
    v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
    v106[0] = v65;
    v105[1] = @"LossAfterTraining";
    *&v66 = v62;
    v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
    v106[1] = v67;
    v105[2] = @"TrainingLoss";
    LODWORD(v68) = v35;
    v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
    v105[3] = @"UpdatedModelIndices";
    v105[4] = @"ModelDeltas";
    v106[2] = v69;
    v106[3] = array2;
    v105[5] = @"TrainingLosses";
    v70 = *(*&buf[8] + 40);
    v106[4] = array;
    v106[5] = v70;
    v105[6] = @"OtherEvaluationMetric";
    v106[6] = v59;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:7];

    _Block_object_dispose(buf, 8);
    std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::destroy(&v97, v98[0]);
    std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::destroy(&v99, v100[0]);
  }

  else
  {
    v72 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EspressoEvaluator evaluateWithModelURL:v72 dataSource:? error:?];
    }

    if (error)
    {
      v73 = v77;
      v71 = 0;
      *error = v77;
    }

    else
    {
      v71 = 0;
    }
  }

  return v71;
}

void __59__EspressoEvaluator_evaluateWithModelURL_dataSource_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_275B9B000, v7, OS_LOG_TYPE_INFO, "fit: iter=%d metrics=%@", v8, 0x12u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

@end