@interface ATXHomeScreenLogWidgetAddedFeatures
- (ATXHomeScreenLogWidgetAddedFeatures)initWithHSEvent:(id)event rankOfWidgetInGallery:(unint64_t)gallery galleryItems:(id)items;
- (id)_key:(id)_key byAppendingStringIndicatingIfWidgetWasAdded:(BOOL)added;
- (id)_pickIndexForNegativeExampleFromGalleryItems;
- (void)_pickIndexForNegativeExampleFromGalleryItems;
- (void)_populateFeaturesForAddedWidget;
- (void)_populateFeaturesForNegativeExample;
- (void)_populateHomeScreenConfigFeaturesForWidgetBundleId:(id)id widgetKind:(id)kind parentAppBundleId:(id)bundleId widgetWasAdded:(BOOL)added;
- (void)_populateParentAppFeaturesForParentAppBundleId:(id)id widgetWasAdded:(BOOL)added;
- (void)_sendToCoreAnalytics;
- (void)logWidgetAddedFeaturesInCoreAnalytics;
@end

@implementation ATXHomeScreenLogWidgetAddedFeatures

- (ATXHomeScreenLogWidgetAddedFeatures)initWithHSEvent:(id)event rankOfWidgetInGallery:(unint64_t)gallery galleryItems:(id)items
{
  eventCopy = event;
  itemsCopy = items;
  v15.receiver = self;
  v15.super_class = ATXHomeScreenLogWidgetAddedFeatures;
  v11 = [(ATXHomeScreenLogWidgetAddedFeatures *)&v15 init];
  if (v11)
  {
    v12 = objc_opt_new();
    widgetAddedFeatures = v11->_widgetAddedFeatures;
    v11->_widgetAddedFeatures = v12;

    objc_storeStrong(&v11->_hsEvent, event);
    v11->_rankOfWidgetInGallery = gallery;
    objc_storeStrong(&v11->_galleryItems, items);
  }

  return v11;
}

- (void)_sendToCoreAnalytics
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    widgetAddedFeatures = self->_widgetAddedFeatures;
    v5 = 138412290;
    v6 = widgetAddedFeatures;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXHomeScreenLogWidgetAddedFeatures: Widget added features: %@", &v5, 0xCu);
  }

  AnalyticsSendEvent();
}

- (void)_populateFeaturesForAddedWidget
{
  v3 = MEMORY[0x277CEB9B0];
  widgetBundleId = [(ATXHomeScreenEvent *)self->_hsEvent widgetBundleId];
  widgetKind = [(ATXHomeScreenEvent *)self->_hsEvent widgetKind];
  v6 = [v3 stringRepresentationForExtensionBundleId:widgetBundleId kind:widgetKind];
  widgetAddedFeatures = self->_widgetAddedFeatures;
  v8 = 1;
  v9 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetBundleIdAndKindFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)widgetAddedFeatures setObject:v6 forKeyedSubscript:v9];

  [(ATXHomeScreenEvent *)self->_hsEvent widgetSize];
  v10 = ATXCAStringForStackLayoutSize();
  v11 = self->_widgetAddedFeatures;
  v12 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetSizeFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

  [(ATXHomeScreenEvent *)self->_hsEvent stackKind];
  v13 = ATXStringForStackKind();
  [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:v13 forKeyedSubscript:@"stackKindForAddedWidget"];

  [(ATXHomeScreenEvent *)self->_hsEvent stackLocation];
  v14 = ATXCAStringForStackLocation();
  [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:v14 forKeyedSubscript:@"stackLocationForAddedWidget"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_rankOfWidgetInGallery];
  v16 = self->_widgetAddedFeatures;
  v17 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"rankInGalleryFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

  rankOfWidgetInGallery = self->_rankOfWidgetInGallery;
  if (rankOfWidgetInGallery)
  {
    v27 = [(NSArray *)self->_galleryItems objectAtIndexedSubscript:rankOfWidgetInGallery - 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v27)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v27, "rankType")}];
        v8 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v27 = 0;
  v19 = &unk_283A56030;
LABEL_7:
  v20 = self->_widgetAddedFeatures;
  v21 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"galleryRankTypeFor" byAppendingStringIndicatingIfWidgetWasAdded:1];
  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

  if (v8)
  {
    [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:&unk_283A56030 forKeyedSubscript:@"suggestedSizeInGalleryIsSameForAddedWidget"];
  }

  else
  {

    v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v27, "suggestedSize") == -[ATXHomeScreenEvent widgetSize](self->_hsEvent, "widgetSize")}];
    [(NSMutableDictionary *)self->_widgetAddedFeatures setObject:v22 forKeyedSubscript:@"suggestedSizeInGalleryIsSameForAddedWidget"];
  }

  appBundleId = [(ATXHomeScreenEvent *)self->_hsEvent appBundleId];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateParentAppFeaturesForParentAppBundleId:appBundleId widgetWasAdded:1];

  widgetBundleId2 = [(ATXHomeScreenEvent *)self->_hsEvent widgetBundleId];
  widgetKind2 = [(ATXHomeScreenEvent *)self->_hsEvent widgetKind];
  appBundleId2 = [(ATXHomeScreenEvent *)self->_hsEvent appBundleId];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateHomeScreenConfigFeaturesForWidgetBundleId:widgetBundleId2 widgetKind:widgetKind2 parentAppBundleId:appBundleId2 widgetWasAdded:1];
}

- (void)_populateFeaturesForNegativeExample
{
  _pickIndexForNegativeExampleFromGalleryItems = [(ATXHomeScreenLogWidgetAddedFeatures *)self _pickIndexForNegativeExampleFromGalleryItems];
  if (_pickIndexForNegativeExampleFromGalleryItems)
  {
    v27 = _pickIndexForNegativeExampleFromGalleryItems;
    v4 = -[NSArray objectAtIndexedSubscript:](self->_galleryItems, "objectAtIndexedSubscript:", [_pickIndexForNegativeExampleFromGalleryItems unsignedIntValue]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x277CEB9B0];
      extensionBundleIdForMetrics = [v5 extensionBundleIdForMetrics];
      widgetKind = [v5 widgetKind];
      v9 = [v6 stringRepresentationForExtensionBundleId:extensionBundleIdForMetrics kind:widgetKind];
      widgetAddedFeatures = self->_widgetAddedFeatures;
      v11 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetBundleIdAndKindFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)widgetAddedFeatures setObject:v9 forKeyedSubscript:v11];

      [v5 suggestedSize];
      v12 = ATXCAStringForStackLayoutSize();
      v13 = self->_widgetAddedFeatures;
      v14 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetSizeFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v27, "unsignedIntValue") + 1}];
      v16 = self->_widgetAddedFeatures;
      v17 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"rankInGalleryFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "rankType")}];
      v19 = self->_widgetAddedFeatures;
      v20 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"galleryRankTypeFor" byAppendingStringIndicatingIfWidgetWasAdded:0];
      [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

      appBundleId = [v5 appBundleId];
      [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateParentAppFeaturesForParentAppBundleId:appBundleId widgetWasAdded:0];

      avocadoDescriptor = [v5 avocadoDescriptor];
      extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
      avocadoDescriptor2 = [v5 avocadoDescriptor];
      kind = [avocadoDescriptor2 kind];
      appBundleId2 = [v5 appBundleId];
      [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateHomeScreenConfigFeaturesForWidgetBundleId:extensionBundleIdentifier widgetKind:kind parentAppBundleId:appBundleId2 widgetWasAdded:0];
    }

    else
    {
      v5 = 0;
    }

    _pickIndexForNegativeExampleFromGalleryItems = v27;
  }
}

- (void)_populateParentAppFeaturesForParentAppBundleId:(id)id widgetWasAdded:(BOOL)added
{
  addedCopy = added;
  v78[1] = *MEMORY[0x277D85DE8];
  if (id)
  {
    idCopy = id;
    v75 = +[_ATXAppInfoManager sharedInstance];
    v76 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v7 = [v76 histogramForLaunchType:0];
    v74 = [v76 categoricalHistogramForLaunchType:32];
    v8 = [MEMORY[0x277CEB3B8] genreForBundle:idCopy];
    widgetAddedFeatures = self->_widgetAddedFeatures;
    v10 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppGenreIdFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)widgetAddedFeatures setObject:v8 forKeyedSubscript:v10];

    v11 = MEMORY[0x277CCABB0];
    v12 = [v75 lastLaunchDateForBundleId:idCopy];
    [v12 timeIntervalSinceNow];
    v13 = [v11 numberWithDouble:?];
    v14 = self->_widgetAddedFeatures;
    v15 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"secondsSinceLastParentAppLaunchFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

    v16 = MEMORY[0x277CCABB0];
    v78[0] = idCopy;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
    [v7 totalLaunchesForBundleIds:v17];
    v18 = [v16 numberWithDouble:?];
    v19 = self->_widgetAddedFeatures;
    v20 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppTotalDecayedLaunchesFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

    v21 = MEMORY[0x277CCABB0];
    v73 = v7;
    [v7 overallLaunchPopularityForBundleId:idCopy];
    v22 = [v21 numberWithDouble:?];
    v23 = self->_widgetAddedFeatures;
    v24 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppRelativeLaunchPopularityFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

    v25 = MEMORY[0x277CCABB0];
    [v7 entropyForBundleId:idCopy];
    v26 = [v25 numberWithDouble:?];
    v27 = self->_widgetAddedFeatures;
    v28 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppEntropyFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:v28];

    currentNotificationSettingsCenter = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
    v29 = [currentNotificationSettingsCenter notificationSourceWithIdentifier:idCopy];
    v30 = MEMORY[0x277CCABB0];
    sourceSettings = [v29 sourceSettings];
    notificationSettings = [sourceSettings notificationSettings];
    v33 = [v30 numberWithInteger:{objc_msgSend(notificationSettings, "authorizationStatus")}];
    v34 = self->_widgetAddedFeatures;
    v35 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsAreAuthorizedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v34 setObject:v33 forKeyedSubscript:v35];

    v36 = MEMORY[0x277CCABB0];
    [v74 totalLaunchesForBundleId:idCopy category:@"r"];
    v37 = [v36 numberWithDouble:?];
    v38 = self->_widgetAddedFeatures;
    v39 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsReceivedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v38 setObject:v37 forKeyedSubscript:v39];

    v40 = MEMORY[0x277CCABB0];
    [v74 totalLaunchesForBundleId:idCopy category:@"e"];
    v41 = [v40 numberWithDouble:?];
    v42 = self->_widgetAddedFeatures;
    v43 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsEngagedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v42 setObject:v41 forKeyedSubscript:v43];

    v44 = MEMORY[0x277CCABB0];
    [v74 totalLaunchesForBundleId:idCopy category:@"c"];
    v45 = [v44 numberWithDouble:?];
    v46 = self->_widgetAddedFeatures;
    v47 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsClearedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v46 setObject:v45 forKeyedSubscript:v47];

    v48 = MEMORY[0x277CCABB0];
    [v74 totalLaunchesForBundleId:idCopy category:@"i"];
    v49 = [v48 numberWithDouble:?];
    v50 = self->_widgetAddedFeatures;
    v51 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsClearedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v50 setObject:v49 forKeyedSubscript:v51];
  }

  else
  {
    v52 = self->_widgetAddedFeatures;
    v53 = 0;
    v54 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppGenreIdFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v52 setObject:@"Not applicable" forKeyedSubscript:v54];

    v55 = self->_widgetAddedFeatures;
    v56 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"secondsSinceLastParentAppLaunchFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v55 setObject:&unk_283A56030 forKeyedSubscript:v56];

    v57 = self->_widgetAddedFeatures;
    v58 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppTotalDecayedLaunchesFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v57 setObject:&unk_283A56030 forKeyedSubscript:v58];

    v59 = self->_widgetAddedFeatures;
    v60 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppRelativeLaunchPopularityFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v59 setObject:&unk_283A56030 forKeyedSubscript:v60];

    v61 = self->_widgetAddedFeatures;
    v62 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppEntropyFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v61 setObject:&unk_283A56030 forKeyedSubscript:v62];

    v63 = self->_widgetAddedFeatures;
    v64 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsAreAuthorizedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v63 setObject:&unk_283A56030 forKeyedSubscript:v64];

    v65 = self->_widgetAddedFeatures;
    v66 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsReceivedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v65 setObject:&unk_283A56030 forKeyedSubscript:v66];

    v67 = self->_widgetAddedFeatures;
    v68 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsEngagedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v67 setObject:&unk_283A56030 forKeyedSubscript:v68];

    v69 = self->_widgetAddedFeatures;
    v70 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsIgnoredFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v69 setObject:&unk_283A56030 forKeyedSubscript:v70];

    v71 = self->_widgetAddedFeatures;
    v77 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppNotificationsClearedFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
    [(NSMutableDictionary *)v71 setObject:&unk_283A56030 forKeyedSubscript:?];
  }
}

- (void)_populateHomeScreenConfigFeaturesForWidgetBundleId:(id)id widgetKind:(id)kind parentAppBundleId:(id)bundleId widgetWasAdded:(BOOL)added
{
  addedCopy = added;
  v57 = *MEMORY[0x277D85DE8];
  idCopy = id;
  kindCopy = kind;
  widgetAddedFeatures = self->_widgetAddedFeatures;
  v12 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetIsAlreadyAddedOnTodayPageFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
  [(NSMutableDictionary *)widgetAddedFeatures setObject:&unk_283A56030 forKeyedSubscript:v12];

  v13 = self->_widgetAddedFeatures;
  v14 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetIsAlreadyAddedOnHomeScreenFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
  [(NSMutableDictionary *)v13 setObject:&unk_283A56030 forKeyedSubscript:v14];

  v15 = self->_widgetAddedFeatures;
  v16 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetFromParentAppBundleIdIsAlreadyAddedOnTodayPageFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
  [(NSMutableDictionary *)v15 setObject:&unk_283A56030 forKeyedSubscript:v16];

  v17 = self->_widgetAddedFeatures;
  v18 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"widgetFromParentAppBundleIdIsAlreadyAddedOnHomeScreenFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
  [(NSMutableDictionary *)v17 setObject:&unk_283A56030 forKeyedSubscript:v18];

  v19 = self->_widgetAddedFeatures;
  v20 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppIsOnDockFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
  [(NSMutableDictionary *)v19 setObject:&unk_283A56030 forKeyedSubscript:v20];

  v21 = objc_opt_new();
  v53 = 0;
  v22 = [v21 loadHomeScreenAndTodayPageConfigurationsWithError:&v53];
  v23 = v53;
  v24 = v23;
  if (v22)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __134__ATXHomeScreenLogWidgetAddedFeatures__populateHomeScreenConfigFeaturesForWidgetBundleId_widgetKind_parentAppBundleId_widgetWasAdded___block_invoke;
    v49[3] = &unk_27859C0A0;
    v49[4] = self;
    v50 = idCopy;
    v51 = kindCopy;
    v52 = addedCopy;
    [v22 enumerateObjectsUsingBlock:v49];
    v48 = v24;
    v25 = [v21 loadDockAppListWithError:&v48];
    v26 = v48;

    if (v25)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = v25;
      v28 = v25;
      v29 = [v28 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v29)
      {
        v30 = v29;
        v38 = v26;
        v39 = v22;
        v40 = v21;
        v41 = kindCopy;
        v42 = idCopy;
        v31 = *v45;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v44 + 1) + 8 * i);
            v34 = [(ATXHomeScreenEvent *)self->_hsEvent appBundleId:v38];
            LODWORD(v33) = [v33 isEqualToString:v34];

            if (v33)
            {
              v35 = self->_widgetAddedFeatures;
              v36 = [(ATXHomeScreenLogWidgetAddedFeatures *)self _key:@"parentAppIsOnDockFor" byAppendingStringIndicatingIfWidgetWasAdded:addedCopy];
              [(NSMutableDictionary *)v35 setObject:&unk_283A56048 forKeyedSubscript:v36];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v44 objects:v54 count:16];
        }

        while (v30);
        kindCopy = v41;
        idCopy = v42;
        v22 = v39;
        v21 = v40;
        v26 = v38;
      }

      v25 = v43;
    }

    else
    {
      v28 = __atxlog_handle_home_screen(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v26;
        _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogWidgetAddedFeatures: failed to fetch apps on dock with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v37 = __atxlog_handle_home_screen(v23);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v24;
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogWidgetAddedFeatures: failed to fetch home screen config with error: %@", buf, 0xCu);
    }

    v26 = v24;
  }
}

void __134__ATXHomeScreenLogWidgetAddedFeatures__populateHomeScreenConfigFeaturesForWidgetBundleId_widgetKind_parentAppBundleId_widgetWasAdded___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ATXStackLocationForPageAndIndex();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = [v3 stacks];
  v36 = v3;
  v5 = [v3 panels];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  obj = v6;
  v39 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v39)
  {
    v38 = *v46;
    do
    {
      v7 = 0;
      do
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v7;
        v8 = *(*(&v45 + 1) + 8 * v7);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v9 = [v8 widgets];
        v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v42;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v42 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v41 + 1) + 8 * i);
              v15 = [v14 widgetUniqueId];
              v16 = [*(*(a1 + 32) + 16) widgetUniqueId];
              v17 = [v15 isEqualToString:v16];

              if ((v17 & 1) == 0)
              {
                if ([v14 isSameWidgetAsWidgetBundleId:*(a1 + 40) widgetKind:*(a1 + 48)])
                {
                  IsTodayPage = ATXStackLocationIsTodayPage();
                  v18 = @"widgetIsAlreadyAddedOnTodayPageFor";
                  if ((IsTodayPage & 1) != 0 || (IsHomeScreen = ATXStackLocationIsHomeScreen(), v18 = @"widgetIsAlreadyAddedOnHomeScreenFor", IsHomeScreen))
                  {
                    v21 = *(a1 + 32);
                    v22 = v21[1];
                    v23 = [v21 _key:v18 byAppendingStringIndicatingIfWidgetWasAdded:*(a1 + 56)];
                    [v22 setObject:&unk_283A56048 forKeyedSubscript:v23];
                  }
                }

                v24 = [*(*(a1 + 32) + 16) appBundleId];
                if (v24)
                {
                  v25 = v24;
                  v26 = [v14 appBundleId];
                  if (!v26)
                  {
                    goto LABEL_22;
                  }

                  v27 = v26;
                  v28 = [*(*(a1 + 32) + 16) appBundleId];
                  v29 = [v14 appBundleId];
                  v30 = [v28 isEqualToString:v29];

                  if (v30)
                  {
                    v31 = ATXStackLocationIsTodayPage();
                    v32 = @"widgetFromParentAppBundleIdIsAlreadyAddedOnTodayPageFor";
                    if ((v31 & 1) != 0 || (v33 = ATXStackLocationIsHomeScreen(), v32 = @"widgetFromParentAppBundleIdIsAlreadyAddedOnHomeScreenFor", v33))
                    {
                      v34 = *(a1 + 32);
                      v35 = v34[1];
                      v25 = [v34 _key:v32 byAppendingStringIndicatingIfWidgetWasAdded:*(a1 + 56)];
                      [v35 setObject:&unk_283A56048 forKeyedSubscript:v25];
LABEL_22:

                      continue;
                    }
                  }
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v11);
        }

        v7 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v39);
  }
}

- (id)_pickIndexForNegativeExampleFromGalleryItems
{
  v3 = [(NSArray *)self->_galleryItems count];
  if (v3)
  {
    v4 = v3;
    v5 = 20;
    do
    {
      v6 = arc4random_uniform(v4);
      v7 = [(NSArray *)self->_galleryItems objectAtIndexedSubscript:v6];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_rankOfWidgetInGallery - 1 != v6)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];

        goto LABEL_14;
      }

      --v5;
    }

    while (v5);
    v9 = __atxlog_handle_home_screen(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenLogWidgetAddedFeatures *)v4 _pickIndexForNegativeExampleFromGalleryItems];
    }
  }

  else
  {
    v10 = __atxlog_handle_home_screen(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenLogWidgetAddedFeatures *)v10 _pickIndexForNegativeExampleFromGalleryItems];
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_key:(id)_key byAppendingStringIndicatingIfWidgetWasAdded:(BOOL)added
{
  addedCopy = added;
  v5 = MEMORY[0x277CCACA8];
  _keyCopy = _key;
  v7 = [v5 alloc];
  v8 = @"NegativeExample";
  if (addedCopy)
  {
    v8 = @"WidgetAdded";
  }

  v9 = [v7 initWithFormat:@"%@%@", _keyCopy, v8];

  return v9;
}

- (void)logWidgetAddedFeaturesInCoreAnalytics
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    widgetBundleId = [(ATXHomeScreenEvent *)self->_hsEvent widgetBundleId];
    rankOfWidgetInGallery = self->_rankOfWidgetInGallery;
    v6 = 138412546;
    v7 = widgetBundleId;
    v8 = 2048;
    v9 = rankOfWidgetInGallery;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogWidgetAddedFeatures: logging new widget added: %@, rank in gallery: %lu", &v6, 0x16u);
  }

  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateFeaturesForAddedWidget];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _populateFeaturesForNegativeExample];
  [(ATXHomeScreenLogWidgetAddedFeatures *)self _sendToCoreAnalytics];
}

- (void)_pickIndexForNegativeExampleFromGalleryItems
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXHomeScreenLogWidgetAddedFeatures: Unable to find a negative example with negExampleIndexUpperBound: %lu", &v2, 0xCu);
}

@end