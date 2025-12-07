@interface PLKLegibilityContent
+ (PLKLegibilityContent)noContent;
+ (id)buildLegibilityImageGenerator;
+ (id)defaultLegibilityImageGenerator;
+ (id)labelLegibilityImageGenerator;
+ (id)legibilityContentForAttributedString:(id)string legibilityDescriptor:(id)descriptor;
+ (id)legibilityContentForImage:(id)image legibilityDescriptor:(id)descriptor;
+ (id)legibilityContentForImage:(id)image legibilityDescriptor:(id)descriptor renderer:(id)renderer;
+ (id)legibilityContentForLabel:(id)label legibilityDescriptor:(id)descriptor context:(id)context renderer:(id)renderer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLegibilityContent:(id)content;
- (PLKLegibilityContent)initWithContentImage:(id)image legibilityDescriptor:(id)descriptor;
- (PLKLegibilityContent)initWithContentImage:(id)image legibilityDescriptor:(id)descriptor renderer:(id)renderer;
- (PLKLegibilityContent)initWithContentImageFuture:(id)future legibilityDescriptor:(id)descriptor;
- (PLKLegibilityContent)initWithContentImageFuture:(id)future legibilityDescriptor:(id)descriptor renderer:(id)renderer;
- (PLKLegibilityContent)initWithContentImageFuture:(id)future legibilityImageFuture:(id)imageFuture legibilityDescriptor:(id)descriptor;
- (PLKLegibilityContentDataSource)dataSource;
- (void)dealloc;
@end

@implementation PLKLegibilityContent

- (void)dealloc
{
  [(PLKLegibilityContent *)self cancel];
  v3.receiver = self;
  v3.super_class = PLKLegibilityContent;
  [(PLKLegibilityContent *)&v3 dealloc];
}

+ (id)defaultLegibilityImageGenerator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PLKLegibilityContent_defaultLegibilityImageGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultLegibilityImageGenerator_onceToken != -1)
  {
    dispatch_once(&defaultLegibilityImageGenerator_onceToken, block);
  }

  v2 = defaultLegibilityImageGenerator_defaultLegibilityImageGenerator;

  return v2;
}

uint64_t __55__PLKLegibilityContent_defaultLegibilityImageGenerator__block_invoke(uint64_t a1)
{
  defaultLegibilityImageGenerator_defaultLegibilityImageGenerator = [*(a1 + 32) buildLegibilityImageGenerator];

  return MEMORY[0x2821F96F8]();
}

+ (id)buildLegibilityImageGenerator
{
  v2 = [[PLKImageGenerator alloc] initWithImageGenerator:?];

  return v2;
}

id __53__PLKLegibilityContent_buildLegibilityImageGenerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 size];
  v6 = [v5 plk_alphaMaskImage];

  v7 = [PLKImageRendererFormat formatForContextType:?];
  v8 = [v4 background];
  v9 = [PLKLegibilityImageRenderer alloc];
  v10 = [v4 background];

  [v10 sizeForContentSize:?];
  v11 = [UIGraphicsImageRenderer initWithSize:v9 format:"initWithSize:format:"];

  v15 = v8;
  v12 = v8;
  v13 = [PLKLegibilityImageRenderer renderLegibilityImageDecoratingImage:v11 actions:"renderLegibilityImageDecoratingImage:actions:"];

  return v13;
}

+ (id)legibilityContentForAttributedString:(id)string legibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  stringCopy = string;
  v7 = +[PLKLegibilityContentDataSource attributedStringContentDataSource];
  v8 = [v7 legibilityContentForObject:? legibilityDescriptor:?];

  return v8;
}

+ (id)legibilityContentForImage:(id)image legibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  imageCopy = image;
  v7 = objc_alloc(objc_opt_class());
  v8 = [MEMORY[0x277D3EC50] futureWithResult:?];

  v9 = [v7 initWithContentImageFuture:? legibilityDescriptor:?];

  return v9;
}

+ (id)legibilityContentForImage:(id)image legibilityDescriptor:(id)descriptor renderer:(id)renderer
{
  rendererCopy = renderer;
  descriptorCopy = descriptor;
  imageCopy = image;
  v10 = objc_alloc(objc_opt_class());
  v11 = [MEMORY[0x277D3EC50] futureWithResult:?];

  v12 = [v10 initWithContentImageFuture:? legibilityDescriptor:? renderer:?];

  return v12;
}

+ (PLKLegibilityContent)noContent
{
  if (noContent_onceToken != -1)
  {
    +[PLKLegibilityContent noContent];
  }

  v3 = noContent_noContent;

  return v3;
}

void __33__PLKLegibilityContent_noContent__block_invoke()
{
  v0 = [PLKLegibilityContent alloc];
  v5 = [MEMORY[0x277D3EC50] cancelledFuture];
  v1 = [MEMORY[0x277D3EC50] cancelledFuture];
  v2 = +[PLKLegibilityDescriptor defaultLegibilityDescriptor];
  v3 = [PLKLegibilityContent initWithContentImageFuture:v0 legibilityImageFuture:"initWithContentImageFuture:legibilityImageFuture:legibilityDescriptor:" legibilityDescriptor:?];
  v4 = noContent_noContent;
  noContent_noContent = v3;
}

+ (id)labelLegibilityImageGenerator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PLKLegibilityContent_labelLegibilityImageGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (labelLegibilityImageGenerator_onceToken != -1)
  {
    dispatch_once(&labelLegibilityImageGenerator_onceToken, block);
  }

  v2 = labelLegibilityImageGenerator_labelLegibilityImageGenerator;

  return v2;
}

void __53__PLKLegibilityContent_labelLegibilityImageGenerator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buildLegibilityImageGenerator];
  v2 = labelLegibilityImageGenerator_labelLegibilityImageGenerator;
  labelLegibilityImageGenerator_labelLegibilityImageGenerator = v1;

  v3 = labelLegibilityImageGenerator_labelLegibilityImageGenerator;
  v4 = [MEMORY[0x277D3EC60] inlineScheduler];
  [v3 setWorkScheduler:?];
}

+ (id)legibilityContentForLabel:(id)label legibilityDescriptor:(id)descriptor context:(id)context renderer:(id)renderer
{
  labelCopy = label;
  descriptorCopy = descriptor;
  contextCopy = context;
  rendererCopy = renderer;
  labelLegibilityImageGenerator = rendererCopy;
  if (!labelCopy)
  {
    goto LABEL_11;
  }

  if (!rendererCopy)
  {
    labelLegibilityImageGenerator = [objc_opt_class() labelLegibilityImageGenerator];
  }

  if (legibilityContentForLabel_legibilityDescriptor_context_renderer__onceToken == -1)
  {
    if (contextCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  +[PLKLegibilityContent legibilityContentForLabel:legibilityDescriptor:context:renderer:];
  if (!contextCopy)
  {
LABEL_6:
    contextCopy = +[PLKLegibilityContext defaultContext];
  }

LABEL_7:
  BSDispatchQueueAssertMain();
  if (!descriptorCopy)
  {
LABEL_11:
    v16 = +[PLKLegibilityContent noContent];
    goto LABEL_23;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [_PLKUILabelCacheKey cacheKeyForLabel:?];
  if (v15 && ![legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels containsObject:?])
  {
    v42 = v14;
    v17 = PLKLogLabel([legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels addObject:?]);
    v18 = v17;
    v19 = legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID;
    if ((legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PLK:legibilityContentForLabel:legibilityDescriptor:renderer:", &unk_21E5F550D, buf, 2u);
    }

    stringKey = [v15 stringKey];
    stringKey2 = [v15 stringKey];
    v22 = [stringKey2 stringByAppendingString:?];

    [labelCopy bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [contextCopy displayScale];
    v32 = v31;
    *buf = 0;
    v61 = buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__0;
    v64 = __Block_byref_object_dispose__0;
    v65 = 0;
    v45 = MEMORY[0x277D85DD0];
    v46 = 3221225472;
    v47 = __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_18;
    v48 = &unk_27835B840;
    v54 = buf;
    v49 = contextCopy;
    v39 = stringKey;
    v50 = v39;
    v55 = v24;
    v56 = v26;
    v57 = v28;
    v58 = v30;
    v59 = v32;
    v51 = labelCopy;
    v52 = labelLegibilityImageGenerator;
    v53 = descriptorCopy;
    v41 = v22;
    v43 = [v49 imageForKey:? generatingIfNil:?];
    if (*(v61 + 5))
    {
      [MEMORY[0x277D3EC50] futureWithResult:v39];
    }

    else
    {
      [MEMORY[0x277D3EC50] cancelledFuture];
    }
    v33 = ;
    v34 = [MEMORY[0x277D3EC50] futureWithResult:?];
    v16 = [objc_alloc(objc_opt_class()) initWithContentImageFuture:? legibilityImageFuture:? legibilityDescriptor:?];
    v35 = PLKLogLabel(v16);
    v36 = v35;
    v37 = legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID;
    if ((legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *v44 = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v36, OS_SIGNPOST_INTERVAL_END, v37, "PLK:legibilityContentForLabel:legibilityDescriptor:renderer:", &unk_21E5F550D, v44, 2u);
    }

    [v16 setContent:?];
    [legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels removeObject:?];

    _Block_object_dispose(buf, 8);
    v14 = v42;
  }

  else
  {
    v16 = +[PLKLegibilityContent noContent];
  }

  objc_autoreleasePoolPop(v14);
LABEL_23:

  return v16;
}

void __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels;
  legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels = v0;

  v3 = PLKLogLabel(v2);
  legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID = os_signpost_id_generate(v3);
}

id __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = *(a1 + 48);
  v3 = [v2 imageForKey:v8 generatingIfNil:{3221225472, __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_2, &unk_27835B818}];
  v4 = *(*(a1 + 72) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 56) imageForObject:? context:?];

  return v6;
}

id __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D755B8];
  v4 = *(a1 + 32);
  v2 = [v1 plk_imageFromContextWithSize:? scale:? type:? pool:? drawing:?];

  return v2;
}

- (PLKLegibilityContent)initWithContentImageFuture:(id)future legibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  futureCopy = future;
  defaultLegibilityImageGenerator = [objc_opt_class() defaultLegibilityImageGenerator];
  v9 = [PLKLegibilityContent initWithContentImageFuture:"initWithContentImageFuture:legibilityDescriptor:renderer:" legibilityDescriptor:? renderer:?];

  return v9;
}

- (PLKLegibilityContent)initWithContentImageFuture:(id)future legibilityDescriptor:(id)descriptor renderer:(id)renderer
{
  futureCopy = future;
  descriptorCopy = descriptor;
  rendererCopy = renderer;
  if (!rendererCopy)
  {
    [PLKLegibilityContent initWithContentImageFuture:a2 legibilityDescriptor:self renderer:?];
  }

  if (!descriptorCopy)
  {
    [PLKLegibilityContent initWithContentImageFuture:a2 legibilityDescriptor:self renderer:?];
  }

  if (!futureCopy)
  {
    [PLKLegibilityContent initWithContentImageFuture:a2 legibilityDescriptor:self renderer:?];
  }

  v12 = rendererCopy;
  v18 = MEMORY[0x277D85DD0];
  v19 = rendererCopy;
  v20 = descriptorCopy;
  v13 = descriptorCopy;
  v14 = v12;
  v15 = [futureCopy flatMap:{v18, 3221225472, __81__PLKLegibilityContent_initWithContentImageFuture_legibilityDescriptor_renderer___block_invoke, &unk_27835B868}];
  v16 = [PLKLegibilityContent initWithContentImageFuture:"initWithContentImageFuture:legibilityImageFuture:legibilityDescriptor:" legibilityImageFuture:? legibilityDescriptor:?];

  return v16;
}

- (PLKLegibilityContent)initWithContentImage:(id)image legibilityDescriptor:(id)descriptor
{
  v5 = MEMORY[0x277D3EC50];
  descriptorCopy = descriptor;
  v7 = [v5 futureWithResult:?];
  v8 = [PLKLegibilityContent initWithContentImageFuture:"initWithContentImageFuture:legibilityDescriptor:" legibilityDescriptor:?];

  return v8;
}

- (PLKLegibilityContent)initWithContentImage:(id)image legibilityDescriptor:(id)descriptor renderer:(id)renderer
{
  v7 = MEMORY[0x277D3EC50];
  rendererCopy = renderer;
  descriptorCopy = descriptor;
  v10 = [v7 futureWithResult:?];
  v11 = [PLKLegibilityContent initWithContentImageFuture:"initWithContentImageFuture:legibilityDescriptor:renderer:" legibilityDescriptor:? renderer:?];

  return v11;
}

- (PLKLegibilityContent)initWithContentImageFuture:(id)future legibilityImageFuture:(id)imageFuture legibilityDescriptor:(id)descriptor
{
  futureCopy = future;
  imageFutureCopy = imageFuture;
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = PLKLegibilityContent;
  v12 = [(PLKLegibilityContent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legibilityDescriptor, descriptor);
    objc_storeStrong(&v13->_contentImageFuture, future);
    objc_storeStrong(&v13->_legibilityImageFuture, imageFuture);
  }

  return v13;
}

- (BOOL)isEqualToLegibilityContent:(id)content
{
  contentCopy = content;
  v5 = contentCopy;
  if (contentCopy == self)
  {
    v11 = 1;
  }

  else if (contentCopy && (-[PLKLegibilityContent legibilityDescriptor](self, "legibilityDescriptor"), v6 = objc_claimAutoreleasedReturnValue(), -[PLKLegibilityContent legibilityDescriptor](v5, "legibilityDescriptor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToLegibilityDescriptor:?], v7, v6, v8))
  {
    content = [(PLKLegibilityContent *)v5 content];
    content2 = [(PLKLegibilityContent *)self content];
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PLKLegibilityContent *)self isEqualToLegibilityContent:?];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PLKLegibilityContentDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)initWithContentImageFuture:(const char *)a1 legibilityDescriptor:(uint64_t)a2 renderer:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"contentImageFuture"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentImageFuture:(const char *)a1 legibilityDescriptor:(uint64_t)a2 renderer:.cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"legibilityDescriptor"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentImageFuture:(const char *)a1 legibilityDescriptor:(uint64_t)a2 renderer:.cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"renderer"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end