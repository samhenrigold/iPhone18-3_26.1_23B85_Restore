@interface ATXSuggestedPagesHomeScreenModificationsMetricsLogger
- (ATXSuggestedPagesHomeScreenModificationsMetricsLogger)init;
- (ATXSuggestedPagesHomeScreenModificationsMetricsLogger)initWithStream:(id)stream bookmarkURLPath:(id)path;
- (ATXUniversalBiomeUIStream)stream;
- (id)generateBookmark;
- (id)generateBookmarkURLPath;
- (int64_t)logMetrics;
- (void)writeBookmarkToFile:(id)file;
@end

@implementation ATXSuggestedPagesHomeScreenModificationsMetricsLogger

- (ATXSuggestedPagesHomeScreenModificationsMetricsLogger)initWithStream:(id)stream bookmarkURLPath:(id)path
{
  streamCopy = stream;
  pathCopy = path;
  v9 = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stream, stream);
    objc_storeStrong(&v10->_bookmarkURLPath, path);
  }

  return v10;
}

- (ATXSuggestedPagesHomeScreenModificationsMetricsLogger)init
{
  v9[6] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ATXSuggestedPagesHomeScreenModificationsMetricsLogger;
  v2 = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)&v8 init];
  if (v2)
  {
    v9[0] = @"StackDeleted";
    v9[1] = @"StackCreated";
    v9[2] = @"AppRemoved";
    v9[3] = @"AppAdded";
    v9[4] = @"PinnedWidgetAdded";
    v9[5] = @"PinnedWidgetDeleted";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
    acceptedEventTypes = v2->_acceptedEventTypes;
    v2->_acceptedEventTypes = v3;

    generateBookmark = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)v2 generateBookmark];
    atxBookmark = v2->_atxBookmark;
    v2->_atxBookmark = generateBookmark;
  }

  return v2;
}

- (ATXUniversalBiomeUIStream)stream
{
  stream = self->_stream;
  if (!stream)
  {
    v4 = objc_alloc_init(MEMORY[0x277D42108]);
    v5 = self->_stream;
    self->_stream = v4;

    stream = self->_stream;
  }

  return stream;
}

- (id)generateBookmarkURLPath
{
  bookmarkURLPath = self->_bookmarkURLPath;
  if (bookmarkURLPath)
  {
    v3 = bookmarkURLPath;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    metricsRootDirectory = [MEMORY[0x277CEBCB0] metricsRootDirectory];
    v7 = objc_alloc(MEMORY[0x277CBEBC0]);
    v8 = [metricsRootDirectory stringByAppendingPathComponent:v5];
    v3 = [v7 initFileURLWithPath:v8];
  }

  return v3;
}

- (id)generateBookmark
{
  v3 = MEMORY[0x277CEBBF8];
  generateBookmarkURLPath = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)self generateBookmarkURLPath];
  v5 = [v3 bookmarkFromURLPath:generateBookmarkURLPath maxFileSize:3000000 versionNumber:&unk_283A558E0];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    generateBookmarkURLPath2 = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)self generateBookmarkURLPath];
    v5 = [v6 initWithURLPath:generateBookmarkURLPath2 versionNumber:&unk_283A558E0 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)writeBookmarkToFile:(id)file
{
  v6 = 0;
  [file saveBookmarkWithError:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    v5 = __atxlog_handle_modes(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)v4 writeBookmarkToFile:v5];
    }
  }
}

- (int64_t)logMetrics
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  stream = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)self stream];
  v4 = [stream genericEventPublisherFromStartTime:0.0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke;
  v13[3] = &unk_27859A798;
  v13[4] = self;
  v5 = [v4 filterWithIsIncluded:v13];
  atxBookmark = [(ATXSuggestedPagesHomeScreenModificationsMetricsLogger *)self atxBookmark];
  bookmark = [atxBookmark bookmark];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke_2;
  v12[3] = &unk_278596E58;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke_24;
  v11[3] = &unk_278597E00;
  v11[4] = &v14;
  v8 = [v5 drivableSinkWithBookmark:bookmark completion:v12 shouldContinue:v11];

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = [v3 eventBody];
  v7 = [v6 homeScreenEvent];
  v8 = [v7 metadata];
  v9 = v8;
  if (!v8 || ![v8 suggestedPageType])
  {

    goto LABEL_7;
  }

  v10 = [*(a1 + 32) acceptedEventTypes];
  v11 = [v7 eventTypeString];
  v12 = [v10 containsObject:v11];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

void __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 state] == 1)
  {
    v6 = __atxlog_handle_modes(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke_2_cold_1(v6);
    }
  }

  v7 = [*(a1 + 32) atxBookmark];
  [v7 setBookmark:v5];

  v8 = *(a1 + 32);
  v9 = [v8 atxBookmark];
  [v8 writeBookmarkToFile:v9];
}

uint64_t __67__ATXSuggestedPagesHomeScreenModificationsMetricsLogger_logMetrics__block_invoke_24(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = [a2 eventBody];
  v3 = [v2 homeScreenEvent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 metadata];
    v6 = [v5 widgetsInStack];

    v7 = [v4 metadata];
    v8 = [v7 bundleIds];

    if ([v6 count])
    {
      v41 = v8;
      v42 = v6;
      v43 = v2;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v50;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v50 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v49 + 1) + 8 * i);
            v15 = objc_opt_new();
            [v15 setSource:1];
            v16 = [v4 metadata];
            [v16 suggestedPageType];
            v17 = NSStringFromATXSuggestedPageType();
            [v15 setSuggestedPageType:v17];

            v18 = [v4 eventTypeString];
            [v15 setEventType:v18];

            v19 = [v4 widgetBundleId];
            [v15 setWidgetBundleId:v19];

            v20 = [v14 widgetKind];
            [v15 setWidgetKind:v20];

            v21 = [v14 appBundleId];
            [v15 setAppBundleId:v21];

            [v4 widgetSize];
            v22 = ATXStringForStackLayoutSize();
            [v15 setWidgetSize:v22];

            [v15 setIsSuggestedWidget:{objc_msgSend(v14, "isSuggestedWidget")}];
            [v15 logToCoreAnalytics];
            ++*(*(*(a1 + 32) + 8) + 24);
          }

          v11 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v11);
      }
    }

    else
    {
      if (![v8 count])
      {
        v33 = objc_opt_new();
        [v33 setSource:1];
        v34 = [v4 metadata];
        [v34 suggestedPageType];
        v35 = NSStringFromATXSuggestedPageType();
        [v33 setSuggestedPageType:v35];

        v36 = [v4 eventTypeString];
        [v33 setEventType:v36];

        v37 = [v4 widgetBundleId];
        [v33 setWidgetBundleId:v37];

        v38 = [v4 widgetKind];
        [v33 setWidgetKind:v38];

        v39 = [v4 appBundleId];
        [v33 setAppBundleId:v39];

        [v4 widgetSize];
        v40 = ATXStringForStackLayoutSize();
        [v33 setWidgetSize:v40];

        [v33 setIsSuggestedWidget:{objc_msgSend(v4, "isSuggestedWidget")}];
        [v33 logToCoreAnalytics];
        ++*(*(*(a1 + 32) + 8) + 24);

        goto LABEL_20;
      }

      v42 = v6;
      v43 = v2;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v41 = v8;
      v9 = v8;
      v23 = [v9 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v46;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v9);
            }

            v27 = *(*(&v45 + 1) + 8 * j);
            v28 = objc_opt_new();
            [v28 setSource:1];
            v29 = [v4 metadata];
            [v29 suggestedPageType];
            v30 = NSStringFromATXSuggestedPageType();
            [v28 setSuggestedPageType:v30];

            v31 = [v4 eventTypeString];
            [v28 setEventType:v31];

            [v28 setAppBundleId:v27];
            [v28 logToCoreAnalytics];
            ++*(*(*(a1 + 32) + 8) + 24);
          }

          v24 = [v9 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v24);
      }
    }

    v6 = v42;
    v2 = v43;
    v8 = v41;
LABEL_20:
  }

  return 1;
}

- (void)writeBookmarkToFile:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesHomeScreenModificationsMetricsLogger: Unable to save bookmark due to : %@", &v2, 0xCu);
}

@end