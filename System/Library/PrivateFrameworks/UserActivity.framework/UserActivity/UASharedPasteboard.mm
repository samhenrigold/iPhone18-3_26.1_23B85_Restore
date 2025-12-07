@interface UASharedPasteboard
+ (id)remotePasteboard;
+ (void)clearLocalPasteboardInformation;
+ (void)localPasteboardDidAddData:(id)data toItemAtIndex:(unint64_t)index generation:(unint64_t)generation;
+ (void)localPasteboardDidAddItems:(id)items forGeneration:(unint64_t)generation;
+ (void)localPasteboardDidPasteGeneration:(unint64_t)generation;
+ (void)startPreventingPasteboardSharing;
+ (void)stopPreventingPasteboardSharing;
- (BOOL)returnPasteboardDataBeforeArchives;
- (id)currentRemoteDeviceName;
- (void)prefetchRemotePasteboardTypes:(id)types;
- (void)requestRemotePasteboardDataForProcess:(int)process withCompletion:(id)completion;
- (void)requestRemotePasteboardTypesForProcess:(int)process withCompletion:(id)completion;
@end

@implementation UASharedPasteboard

+ (void)localPasteboardDidAddData:(id)data toItemAtIndex:(unint64_t)index generation:(unint64_t)generation
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    type = [dataCopy type];
    v11 = 134218243;
    indexCopy = index;
    v13 = 2113;
    v14 = type;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "PBOARD CLIENT: add type for index: %lu/%{private}@", &v11, 0x16u);
  }

  v10 = +[UASharedPasteboardManager sharedManager];
  [v10 addData:dataCopy toItemAtIndex:index generation:generation];
}

+ (void)localPasteboardDidAddItems:(id)items forGeneration:(unint64_t)generation
{
  v25 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218243;
    v22 = [itemsCopy count];
    v23 = 2113;
    v24 = itemsCopy;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "PBOARD CLIENT: addItems, %lud items added, items=%{private}@", buf, 0x16u);
  }

  if ([itemsCopy count])
  {
    v7 = 0;
    do
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [itemsCopy objectAtIndexedSubscript:{v7, 0}];
      types = [v8 types];

      v10 = [types countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(types);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            v15 = +[UASharedPasteboardManager sharedManager];
            [v15 addData:v14 toItemAtIndex:v7 generation:generation];

            ++v13;
          }

          while (v11 != v13);
          v11 = [types countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      ++v7;
    }

    while ([itemsCopy count] > v7);
  }
}

+ (void)clearLocalPasteboardInformation
{
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "PBOARD CLIENT: Clear Local Pasteboard Info", v4, 2u);
  }

  v3 = +[UASharedPasteboardManager sharedManager];
  [v3 clearLocalPasteboardInformation];
}

+ (void)localPasteboardDidPasteGeneration:(unint64_t)generation
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    generationCopy = generation;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "PBOARD CLIENT: localPasteboardDidPasteGeneration = %ld", &v5, 0xCu);
  }
}

+ (id)remotePasteboard
{
  if (remotePasteboard_onceToken != -1)
  {
    +[UASharedPasteboard remotePasteboard];
  }

  v3 = remotePasteboard_remotePasteboard;

  return v3;
}

void __38__UASharedPasteboard_remotePasteboard__block_invoke()
{
  v0 = objc_alloc_init(UASharedPasteboard);
  v1 = remotePasteboard_remotePasteboard;
  remotePasteboard_remotePasteboard = v0;

  v2 = +[UASharedPasteboardManager sharedManager];
  [remotePasteboard_remotePasteboard setManager:v2];
}

- (BOOL)returnPasteboardDataBeforeArchives
{
  v2 = +[UASharedPasteboardManager sharedManager];
  requestPasteboardFetchReturnEarly = [v2 requestPasteboardFetchReturnEarly];

  return requestPasteboardFetchReturnEarly;
}

- (void)requestRemotePasteboardTypesForProcess:(int)process withCompletion:(id)completion
{
  v4 = *&process;
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "[UASharedPasteboard requestRemotePasteboardTypesForProcess:withCompletion:]";
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "[PBOARD CLIENT] %{public}s", &v8, 0xCu);
  }

  v7 = +[UASharedPasteboardManager sharedManager];
  [v7 requestRemotePasteboardTypesForProcess:v4 withCompletion:completionCopy];
}

- (void)requestRemotePasteboardDataForProcess:(int)process withCompletion:(id)completion
{
  v4 = *&process;
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "[UASharedPasteboard requestRemotePasteboardDataForProcess:withCompletion:]";
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "[PBOARD CLIENT] %{public}s", &v8, 0xCu);
  }

  v7 = +[UASharedPasteboardManager sharedManager];
  [v7 requestRemotePasteboardDataForProcess:v4 withCompletion:completionCopy];
}

- (void)prefetchRemotePasteboardTypes:(id)types
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "[UASharedPasteboard prefetchRemotePasteboardTypes:]";
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "[PBOARD CLIENT] %{public}s", &v4, 0xCu);
  }
}

- (id)currentRemoteDeviceName
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[UASharedPasteboard currentRemoteDeviceName]";
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "[PBOARD CLIENT] %{public}s", &v6, 0xCu);
  }

  v3 = +[UASharedPasteboardManager sharedManager];
  currentRemoteDeviceName = [v3 currentRemoteDeviceName];

  return currentRemoteDeviceName;
}

+ (void)startPreventingPasteboardSharing
{
  v2 = +[UASharedPasteboardManager sharedManager];
  [v2 startPreventingPasteboardSharing];
}

+ (void)stopPreventingPasteboardSharing
{
  v2 = +[UASharedPasteboardManager sharedManager];
  [v2 stopPreventingPasteboardSharing];
}

@end