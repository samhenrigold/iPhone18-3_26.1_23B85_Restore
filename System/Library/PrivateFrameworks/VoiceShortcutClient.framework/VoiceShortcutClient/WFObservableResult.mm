@interface WFObservableResult
+ (void)drawGlyphsIntoWorkflowsIfNecessary:(id)necessary glyphSize:(CGSize)size roundedIcon:(BOOL)icon synchronously:(BOOL)synchronously completion:(id)completion;
- (CGSize)glyphSize;
- (WFObservableResult)initWithValueType:(Class)type glyphSize:(CGSize)size;
- (void)addResultObserver:(id)observer;
- (void)databaseDidChange:(id)change;
- (void)dealloc;
- (void)removeResultObserver:(id)observer;
- (void)startConnectionIfNecessary;
- (void)stopConnection;
@end

@implementation WFObservableResult

- (CGSize)glyphSize
{
  width = self->_glyphSize.width;
  height = self->_glyphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)databaseDidChange:(id)change
{
  changeCopy = change;
  v5 = [WFCoreDataChangeNotification alloc];
  userInfo = [changeCopy userInfo];

  v7 = [(WFCoreDataChangeNotification *)v5 initWithDictionaryRepresentation:userInfo];
  [(WFObservableResult *)self handleChangeNotification:v7];
}

- (void)stopConnection
{
  if ([(WFObservableResult *)self observingDistributedNotifications])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self name:@"com.apple.shortcuts.WFCoreDataDatabaseContextDidSaveNotification" object:0];

    [(WFObservableResult *)self setObservingDistributedNotifications:0];
  }
}

- (void)startConnectionIfNecessary
{
  serialQueue = [(WFObservableResult *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if (![(WFObservableResult *)self observingDistributedNotifications])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:self selector:sel_databaseDidChange_ name:@"com.apple.shortcuts.WFCoreDataDatabaseContextDidSaveNotification" object:0 suspensionBehavior:4];

    [(WFObservableResult *)self setObservingDistributedNotifications:1];
  }
}

- (void)removeResultObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = [(WFObservableResult *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__WFObservableResult_removeResultObserver___block_invoke;
  v7[3] = &unk_1E7B02180;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, v7);
}

void __43__WFObservableResult_removeResultObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 stopConnection];
  }
}

- (void)addResultObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = [(WFObservableResult *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__WFObservableResult_addResultObserver___block_invoke;
  v7[3] = &unk_1E7B02180;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, v7);
}

uint64_t __40__WFObservableResult_addResultObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 startConnectionIfNecessary];
}

- (void)dealloc
{
  [(WFObservableResult *)self stopConnection];
  v3.receiver = self;
  v3.super_class = WFObservableResult;
  [(WFObservableResult *)&v3 dealloc];
}

- (WFObservableResult)initWithValueType:(Class)type glyphSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (([(objc_class *)type conformsToProtocol:&unk_1F2933888]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFObservableResult.m" lineNumber:204 description:@"Value type must be secure-codable"];
  }

  v22.receiver = self;
  v22.super_class = WFObservableResult;
  v9 = [(WFObservableResult *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueType, type);
    v10->_glyphSize.width = width;
    v10->_glyphSize.height = height;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.shortcuts.WFObservableResult-private", v11);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.shortcuts.WFObservableResult-observer", v14);
    observerNotificationQueue = v10->_observerNotificationQueue;
    v10->_observerNotificationQueue = v15;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    v19 = v10;
  }

  return v10;
}

+ (void)drawGlyphsIntoWorkflowsIfNecessary:(id)necessary glyphSize:(CGSize)size roundedIcon:(BOOL)icon synchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  iconCopy = icon;
  height = size.height;
  width = size.width;
  v39 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  completionCopy = completion;
  v14 = completionCopy;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v16 = [necessaryCopy if_compactMap:&__block_literal_global_149_12412];
    if ([v16 count])
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = DeviceRGB;
      v18 = _Block_copy(aBlock);
      v19 = -[WFRemoteImageDrawingContext initWithImageCount:singleImageSize:scale:colorSpace:]([WFRemoteImageDrawingContext alloc], "initWithImageCount:singleImageSize:scale:colorSpace:", [v16 count], DeviceRGB, width, height, 0.0);
      if (v19)
      {
        v27 = [v16 valueForKey:@"glyphCharacter"];
        v20 = [v16 if_compactMap:&__block_literal_global_207];
        v21 = [v20 count];
        if (v21 != [v27 count])
        {

          v20 = 0;
        }

        v22 = +[VCVoiceShortcutClient standardClient];
        if (synchronouslyCopy)
        {
          v23 = v33;
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_210;
          v33[3] = &unk_1E7B02940;
          v33[4] = v14;
          v24 = [v22 synchronousRemoteDataStoreWithErrorHandler:v33];
        }

        else
        {
          v23 = v32;
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_212;
          v32[3] = &unk_1E7B02940;
          v32[4] = v14;
          v24 = [v22 asynchronousRemoteDataStoreWithErrorHandler:v32];
        }

        v26 = v24;

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_213;
        v28[3] = &unk_1E7B01F90;
        v29 = v16;
        v30 = v19;
        v31 = v14;
        [v26 drawGlyphs:v27 withBackgroundColorValues:v20 padding:iconCopy rounded:v30 intoContext:v28 completion:0.0];
      }

      else
      {
        v25 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "+[WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:glyphSize:roundedIcon:synchronously:completion:]";
          v37 = 2112;
          v38 = necessaryCopy;
          _os_log_impl(&dword_1B1DE3000, v25, OS_LOG_TYPE_ERROR, "%s Could not create remote image drawing context for drawing icons into workflows: %@", buf, 0x16u);
        }

        v14[2](v14);
      }

      v18[2](v18);
    }

    else
    {
      v14[2](v14);
    }
  }
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_210(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "+[WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:glyphSize:roundedIcon:synchronously:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Error fetching synchronous VCVoiceShortcutClient proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_212(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "+[WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:glyphSize:roundedIcon:synchronously:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Error fetching asynchronous VCVoiceShortcutClient proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_213(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_214;
  v3[3] = &unk_1E7B01988;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
  (*(*(a1 + 48) + 16))();
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_214(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) imageAtIndex:a3];
  [*(a1 + 32) scale];
  [v7 setIconImage:v6 scale:?];
  objc_autoreleasePoolPop(v5);
}

id __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_204(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "backgroundColorValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F2936308])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end