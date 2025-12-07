@interface PLKLegibilityContentDataSource
+ (id)attributedStringContentDataSource;
+ (id)attributedStringContentDataSourceForScale:(double)scale metricsProvider:(id)provider;
- (PLKLegibilityContentDataSource)initWithContentGenerator:(id)generator legibilityGenerator:(id)legibilityGenerator;
- (id)legibilityContentForObject:(id)object legibilityDescriptor:(id)descriptor;
- (void)invalidate;
@end

@implementation PLKLegibilityContentDataSource

+ (id)attributedStringContentDataSource
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PLKLegibilityContentDataSource_attributedStringContentDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (attributedStringContentDataSource_onceToken != -1)
  {
    dispatch_once(&attributedStringContentDataSource_onceToken, block);
  }

  v2 = attributedStringContentDataSource_attributedStringContentDataSource;

  return v2;
}

uint64_t __67__PLKLegibilityContentDataSource_attributedStringContentDataSource__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  PLKDefaultScreenScale(a1, a2);
  attributedStringContentDataSource_attributedStringContentDataSource = [v2 attributedStringContentDataSourceForScale:? metricsProvider:?];

  return MEMORY[0x2821F96F8]();
}

+ (id)attributedStringContentDataSourceForScale:(double)scale metricsProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    providerCopy = objc_opt_new();
  }

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke;
  v23[3] = &unk_27835B298;
  v24 = weakToStrongObjectsMapTable;
  v25 = providerCopy;
  v6 = providerCopy;
  v7 = weakToStrongObjectsMapTable;
  v8 = MEMORY[0x223D5FAC0](v23);
  v9 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:" scale:?];
  v10 = [PLKImageGenerator alloc];
  v22 = v8;
  v21 = v9;
  v11 = [(PLKImageGenerator *)v10 initWithImageGenerator:?];
  v12 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:" scale:?];
  v13 = [PLKImageGenerator alloc];
  v20 = v12;
  v14 = v12;
  v15 = v21;
  v16 = v22;
  v17 = [(PLKImageGenerator *)v13 initWithImageGenerator:?];
  v18 = [PLKLegibilityContentDataSource initWithContentGenerator:"initWithContentGenerator:legibilityGenerator:" legibilityGenerator:?];

  return v18;
}

double __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) objectForKey:?];
  if (!v5)
  {
    [*(a1 + 40) plk_boundingRectForObject:? maxSize:?];
    v5 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
    [*(a1 + 32) setObject:? forKey:?];
  }

  [v5 CGRectValue];
  v7 = v6;

  objc_sync_exit(v4);
  return v7;
}

id __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  v5 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
  v6 = [(PLKImageRenderer *)v5 imageWithRenderable:?];

  return v6;
}

id __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke_3(void *a1, void *a2, void *a3)
{
  v4 = a1[6];
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = a2;
  v5(v4, v7);
  v8 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
  v9 = [(PLKImageRenderer *)v8 imageWithRenderable:?];

  v10 = [v6 background];
  [v10 sizeForContentSize:?];

  v11 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
  v12 = [PLKLegibilityImageRenderer renderLegibilityImageForImage:v11 legibilityDescriptor:"renderLegibilityImageForImage:legibilityDescriptor:"];

  return v12;
}

- (PLKLegibilityContentDataSource)initWithContentGenerator:(id)generator legibilityGenerator:(id)legibilityGenerator
{
  v22 = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  legibilityGeneratorCopy = legibilityGenerator;
  if (!generatorCopy)
  {
    [PLKLegibilityContentDataSource initWithContentGenerator:a2 legibilityGenerator:self];
  }

  v10 = legibilityGeneratorCopy;
  v17.receiver = self;
  v17.super_class = PLKLegibilityContentDataSource;
  v11 = [(PLKLegibilityContentDataSource *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v13 = PLKLogRendering(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v19 = v15;
      v20 = 2048;
      v21 = v12;
      _os_log_impl(&dword_21E5D5000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p initWithContentGenerator:legibilityGenerator:>", buf, 0x16u);
    }

    objc_storeStrong(&v12->_contentGenerator, generator);
    objc_storeStrong(&v12->_legibilityGenerator, legibilityGenerator);
  }

  return v12;
}

- (id)legibilityContentForObject:(id)object legibilityDescriptor:(id)descriptor
{
  v41 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  descriptorCopy = descriptor;
  if (objectCopy && (v8 = [(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled], !v8))
  {
    v10 = PLKLogRendering(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PLKLogRendering(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544130;
        v34 = v27;
        v35 = 2048;
        selfCopy = self;
        v37 = 2112;
        v38 = objectCopy;
        v39 = 2048;
        v40 = descriptorCopy;
        _os_log_debug_impl(&dword_21E5D5000, v13, OS_LOG_TYPE_DEBUG, "<%{public}@:%p legibilityContentForObject:%@ legibilityDescriptor:%p>", buf, 0x2Au);
      }
    }

    legibilityGenerator = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
    v15 = _os_activity_create(&dword_21E5D5000, "<PLKLegibilityContentDataSource legibilityContentForObject:legibilityDescriptor:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = [MEMORY[0x277D3EC38] activityWrapping:?];

    track = [v16 track];

    contentGenerator = [(PLKLegibilityContentDataSource *)self contentGenerator];
    v19 = [contentGenerator imageFutureForObject:? context:?];

    if (!legibilityGenerator || ([legibilityGenerator imageFutureForObject:? context:?], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v30 = legibilityGenerator;
      v31 = objectCopy;
      v32 = descriptorCopy;
      v20 = [v19 flatMap:?];
    }

    v21 = MEMORY[0x277D3EC50];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v23 = [v21 join:?];
    v28 = MEMORY[0x277D85DD0];
    v29 = track;
    v24 = track;
    [v23 addCompletionBlock:{v28, 3221225472, __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke_3, &unk_27835B360}];

    v9 = [PLKLegibilityContent initWithContentImageFuture:"initWithContentImageFuture:legibilityImageFuture:legibilityDescriptor:" legibilityImageFuture:? legibilityDescriptor:?];
    [(PLKLegibilityContent *)v9 setContent:?];
    [(PLKLegibilityContent *)v9 setDataSource:?];
  }

  else
  {
    v9 = +[PLKLegibilityContent noContent];
  }

  return v9;
}

id __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 imageFutureForObject:? context:?];
  }

  else
  {
    v6 = MEMORY[0x277D3EC50];
    v8 = MEMORY[0x277D85DD0];
    v9 = v3;
    v10 = *(a1 + 48);
    v5 = [v6 futureWithBlock:{v8, 3221225472, __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke_2, &unk_27835B310}];
  }

  return v5;
}

id __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) size];
  [*(a1 + 32) scale];
  v2 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:" scale:?];
  v3 = [*(a1 + 40) background];
  [v3 sizeForContentSize:?];

  v4 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
  v5 = [PLKLegibilityImageRenderer renderLegibilityImageForImage:v4 legibilityDescriptor:"renderLegibilityImageForImage:legibilityDescriptor:"];

  return v5;
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  signal = [(BSAtomicSignal *)self->_invalidationSignal signal];
  if (signal)
  {
    v4 = PLKLogRendering(signal);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_21E5D5000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p invalidate>", &v9, 0x16u);
    }

    contentGenerator = self->_contentGenerator;
    self->_contentGenerator = 0;

    legibilityGenerator = self->_legibilityGenerator;
    self->_legibilityGenerator = 0;
  }
}

- (void)initWithContentGenerator:(const char *)a1 legibilityGenerator:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"contentGenerator"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PLKLegibilityContentDataSource.m";
    v16 = 1024;
    v17 = 103;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end