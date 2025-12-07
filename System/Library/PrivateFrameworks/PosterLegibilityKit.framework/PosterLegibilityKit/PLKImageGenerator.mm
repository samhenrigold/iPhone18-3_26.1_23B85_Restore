@interface PLKImageGenerator
- (NSString)description;
- (NSString)label;
- (PFTScheduler)workScheduler;
- (PLKImageGenerator)init;
- (PLKImageGenerator)initWithImageGenerator:(id)generator;
- (double)averageTimeIntervalForGeneration;
- (id)imageForObject:(id)object;
- (id)imageForObject:(id)object context:(id)context;
- (id)imageFutureForObject:(id)object context:(id)context;
- (unint64_t)numberOfBytesGenerated;
- (void)_registerCreatedImage:(id)image startDate:(id)date numberOfBytes:(unint64_t *)bytes userInfo:(id)info;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)setLabel:(id)label;
- (void)setWorkScheduler:(id)scheduler;
@end

@implementation PLKImageGenerator

- (PFTScheduler)workScheduler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  workScheduler = selfCopy->_workScheduler;
  if (!workScheduler)
  {
    defaultWorkScheduler = [objc_opt_class() defaultWorkScheduler];
    v5 = selfCopy->_workScheduler;
    selfCopy->_workScheduler = defaultWorkScheduler;

    workScheduler = selfCopy->_workScheduler;
  }

  v6 = workScheduler;
  objc_sync_exit(selfCopy);

  return v6;
}

- (PLKImageGenerator)init
{
  [(PLKImageGenerator *)self doesNotRecognizeSelector:?];

  return 0;
}

- (PLKImageGenerator)initWithImageGenerator:(id)generator
{
  generatorCopy = generator;
  v17.receiver = self;
  v17.super_class = PLKImageGenerator;
  v5 = [(PLKImageGenerator *)&v17 init];
  if (v5)
  {
    v6 = [generatorCopy copy];
    imageGenerator = v5->_imageGenerator;
    v5->_imageGenerator = v6;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    statisticsMapTable = v5->_statisticsMapTable;
    v5->_statisticsMapTable = weakToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    statisticsOperationQueue = v5->_statisticsOperationQueue;
    v5->_statisticsOperationQueue = v10;

    v12 = v5->_statisticsOperationQueue;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:objc_opt_class()];
    [(NSOperationQueue *)v12 setName:?];

    [(NSOperationQueue *)v5->_statisticsOperationQueue setMaxConcurrentOperationCount:?];
    v14 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithOperationQueue:? qualityOfService:?];
    statisticScheduler = v5->_statisticScheduler;
    v5->_statisticScheduler = v14;

    [(PLKImageGenerator *)v5 setLabel:?];
    [(PLKImageGenerator *)v5 setWorkScheduler:?];
    [(PLKImageGenerator *)v5 setCollectStatistics:?];
  }

  return v5;
}

- (NSString)label
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_label;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!labelCopy)
  {
    v5 = objc_opt_class();
    labelCopy = NSStringFromClass(v5);
  }

  v6 = [labelCopy copy];
  label = selfCopy->_label;
  selfCopy->_label = v6;

  statisticsOperationQueue = selfCopy->_statisticsOperationQueue;
  labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:objc_opt_class(), labelCopy];
  [(NSOperationQueue *)statisticsOperationQueue setName:?];

  objc_sync_exit(selfCopy);
}

- (void)setWorkScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultWorkScheduler = schedulerCopy;
  if (!schedulerCopy)
  {
    defaultWorkScheduler = [objc_opt_class() defaultWorkScheduler];
  }

  v9 = defaultWorkScheduler;
  v6 = [MEMORY[0x277D3EC60] offMainThreadSchedulerWithBackgroundScheduler:?];
  workScheduler = selfCopy->_workScheduler;
  selfCopy->_workScheduler = v6;

  objc_sync_exit(selfCopy);
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = v3;
  v4 = v3;
  [v4 appendProem:v7 block:{3221225472, __32__PLKImageGenerator_description__block_invoke, &unk_27835B920, self}];
  v5 = [v4 description];

  return v5;
}

- (id)imageForObject:(id)object
{
  v3 = [PLKImageGenerator imageFutureForObject:"imageFutureForObject:context:" context:?];
  v4 = [v3 result:?];

  return v4;
}

- (id)imageForObject:(id)object context:(id)context
{
  v4 = [PLKImageGenerator imageFutureForObject:"imageFutureForObject:context:" context:?];
  v5 = [v4 result:?];

  return v5;
}

- (id)imageFutureForObject:(id)object context:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contextCopy = context;
  v8 = PLKLogRendering(contextCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v11 = PLKLogCaching(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      label = [(PLKImageGenerator *)self label];
      v26 = label;
      v27 = &stru_282F9B218;
      *buf = 138413058;
      if (label)
      {
        v27 = label;
      }

      v31 = v27;
      v32 = 2048;
      selfCopy = self;
      v34 = 2112;
      v35 = objectCopy;
      v36 = 2112;
      v37 = contextCopy;
      _os_log_debug_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_DEBUG, "[PLKImageGenerator(%@%p) imageFutureForObject:%@]", buf, 0x2Au);
    }
  }

  v12 = MEMORY[0x223D5FAC0](self->_imageGenerator);
  date = [MEMORY[0x277CBEAA8] date];
  v14 = _os_activity_create(&dword_21E5D5000, "-[PLKImageGenerator imageFutureForObject:context:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v15 = [MEMORY[0x277D3EC38] activityWrapping:?];

  track = [v15 track];

  v17 = MEMORY[0x277D3EC50];
  v18 = v12;
  v19 = objectCopy;
  v20 = contextCopy;
  v21 = track;
  workScheduler = [(PLKImageGenerator *)self workScheduler];
  v23 = [v17 futureWithBlock:? scheduler:?];

  if ([(PLKImageGenerator *)self collectStatistics])
  {
    v28 = MEMORY[0x277D85DD0];
    v29 = date;
    [v23 addSuccessBlock:{v28, 3221225472, __50__PLKImageGenerator_imageFutureForObject_context___block_invoke_2, &unk_27835B970, self}];
  }

  return v23;
}

id __50__PLKImageGenerator_imageFutureForObject_context___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 56) + 16))();
  [*(a1 + 48) invalidate];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (unint64_t)numberOfBytesGenerated
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(PLKImageGenerator *)self collectStatistics])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CCA8C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__PLKImageGenerator_numberOfBytesGenerated__block_invoke;
  v12 = &unk_27835B998;
  objc_copyWeak(&v14, &location);
  v13 = &v16;
  v4 = [v3 blockOperationWithBlock:?];
  statisticsOperationQueue = self->_statisticsOperationQueue;
  v20 = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [NSOperationQueue addOperations:"addOperations:waitUntilFinished:" waitUntilFinished:?];

  v7 = v17[3];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);
  return v7;
}

void __43__PLKImageGenerator_numberOfBytesGenerated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [WeakRetained[3] objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          *(*(*(a1 + 32) + 8) + 24) += [*(*(&v9 + 1) + 8 * v8) numberOfBytes];
          v8 = (v8 + 1);
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (double)averageTimeIntervalForGeneration
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = -1.0;
  if ([(PLKImageGenerator *)self collectStatistics])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277CCA8C8];
    v11 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v12, &location);
    v5 = [v4 blockOperationWithBlock:{v11, 3221225472, __53__PLKImageGenerator_averageTimeIntervalForGeneration__block_invoke, &unk_27835B9C0, &v18, &v14}];
    statisticsOperationQueue = self->_statisticsOperationQueue;
    v22 = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [NSOperationQueue addOperations:"addOperations:waitUntilFinished:" waitUntilFinished:?];

    v8 = v15[3];
    v9 = v19[3];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    v3 = v8 / v9;
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  return v3;
}

void __53__PLKImageGenerator_averageTimeIntervalForGeneration__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = [WeakRetained[3] count];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3[3] objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) generationInterval];
          [v9 duration];
          *(*(*(a1 + 40) + 8) + 24) = v10 + *(*(*(a1 + 40) + 8) + 24);

          v8 = (v8 + 1);
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (void)_registerCreatedImage:(id)image startDate:(id)date numberOfBytes:(unint64_t *)bytes userInfo:(id)info
{
  imageCopy = image;
  dateCopy = date;
  infoCopy = info;
  if ([(PLKImageGenerator *)self collectStatistics])
  {
    statisticScheduler = self->_statisticScheduler;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke;
    v17 = &unk_27835BA10;
    bytesCopy = bytes;
    v18 = imageCopy;
    v19 = dateCopy;
    v20 = infoCopy;
    selfCopy = self;
    [(PFTScheduler *)statisticScheduler performBlock:?];
  }
}

void __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke_2;
    v6[3] = &unk_27835B9E8;
    v1 = &v7;
    v7 = *(a1 + 32);
    __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke_2(v6);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [_PLKImageGenerationContext contextWithStartDate:"contextWithStartDate:endDate:numberOfBytes:userInfo:" endDate:? numberOfBytes:? userInfo:?];

  [*(*(a1 + 56) + 24) setObject:? forKey:?];
  if (!v3)
  {
  }
}

size_t __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) CGImage];
  BytesPerRow = CGImageGetBytesPerRow(v1);
  return CGImageGetHeight(v1) * BytesPerRow;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [(PLKImageGenerator *)self numberOfBytesGenerated];
  if (appendDescriptionToFormatter__onceToken != -1)
  {
    [PLKImageGenerator appendDescriptionToFormatter:];
  }

  v4 = [appendDescriptionToFormatter__byteCountFormatter stringFromByteCount:?];
  [formatterCopy appendString:? withName:?];

  [(PLKImageGenerator *)self averageTimeIntervalForGeneration];
  v5 = [formatterCopy appendTimeInterval:? withName:? decomposeUnits:?];
}

void *__50__PLKImageGenerator_appendDescriptionToFormatter___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  v1 = appendDescriptionToFormatter__byteCountFormatter;
  appendDescriptionToFormatter__byteCountFormatter = v0;

  v2 = appendDescriptionToFormatter__byteCountFormatter;

  return [v2 setCountStyle:?];
}

@end