@interface MUPlaceCardAnalyticsController
- (BOOL)instrumentRevealIfNeededWithImpressionsSessionId:(id)id;
- (MUPlaceCardAnalyticsController)initWithAnalyticsProvider:(id)provider;
- (MUPlaceCardAnalyticsProvider)provider;
- (NSArray)analyticModules;
- (_MKPlaceItem)placeItem;
- (void)_infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d feedbackDelegateSelector:(int)selector modules:(id)modules actionRichProviderId:(id)self0 classification:(id)self1 completion:(id)self2;
- (void)_requestHostToLogFeedbackTypeIfNeeded:(int)needed;
- (void)disableDeferLoggingUntilRefinementWithShouldInvokeReveal:(BOOL)reveal;
- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification;
- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector classification:(id)classification;
- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1;
- (void)infoCardAnalyticsPopulateSharedStateWithButtonList:(id)list;
- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0;
- (void)instrumentAction:(int)action forModuleType:(int64_t)type usingFeedbackType:(int)feedbackType;
- (void)instrumentAction:(int)action target:(int)target eventValue:(id)value moduleType:(int64_t)type feedbackType:(int)feedbackType;
- (void)instrumentCloseUsingClientType:(unint64_t)type;
- (void)instrumentConceal;
- (void)instrumentPunchoutActionWithURL:(id)l providerId:(id)id;
- (void)instrumentVerticalScrollWithBeginningPoint:(CGPoint)point targetContentOffset:(CGPoint *)offset velocity:(CGPoint)velocity;
@end

@implementation MUPlaceCardAnalyticsController

- (MUPlaceCardAnalyticsProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)disableDeferLoggingUntilRefinementWithShouldInvokeReveal:(BOOL)reveal
{
  self->_deferLoggingRevealUntilRefinement = 0;
  if (reveal)
  {
    v4 = [(NSUUID *)self->_cachedSessionId copy];
    [(MUPlaceCardAnalyticsController *)self instrumentRevealIfNeededWithImpressionsSessionId:v4];
  }

  cachedSessionId = self->_cachedSessionId;
  self->_cachedSessionId = 0;
}

- (void)instrumentAction:(int)action target:(int)target eventValue:(id)value moduleType:(int64_t)type feedbackType:(int)feedbackType
{
  v7 = *&feedbackType;
  v9 = *&target;
  v10 = *&action;
  valueCopy = value;
  analyticModules = [(MUPlaceCardAnalyticsController *)self analyticModules];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MUPlaceCardAnalyticsController_instrumentAction_target_eventValue_moduleType_feedbackType___block_invoke;
  v15[3] = &__block_descriptor_40_e37_B32__0__GEOAPPlaceCardModule_8Q16_B24l;
  v15[4] = type;
  v14 = MUFindFirst(analyticModules, v15);

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:v10 target:v9 eventValue:valueCopy moduleMetadata:v14 feedbackDelegateSelector:v7 actionRichProviderId:0 classification:0];
}

BOOL __93__MUPlaceCardAnalyticsController_instrumentAction_target_eventValue_moduleType_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32) - 1;
  if (v2 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1C587A048[v2];
  }

  return v3 == [a2 type];
}

- (void)instrumentAction:(int)action forModuleType:(int64_t)type usingFeedbackType:(int)feedbackType
{
  v5 = *&feedbackType;
  v7 = *&action;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  -[MUPlaceCardAnalyticsController instrumentAction:target:eventValue:moduleType:feedbackType:](self, "instrumentAction:target:eventValue:moduleType:feedbackType:", v7, [WeakRetained defaultTargetForPlaceCardAnalytics], 0, type, v5);
}

- (void)_requestHostToLogFeedbackTypeIfNeeded:(int)needed
{
  v8 = *MEMORY[0x1E69E9840];
  if (needed)
  {
    v3 = *&needed;
    v5 = MUGetPlaceCardAnalyticsUILog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "Invoking the delegate and placecard type is %d", v7, 8u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_provider);
    [WeakRetained requestHostToLogFeedbackTypeIfNeeded:v3];
  }
}

- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0
{
  systemCopy = system;
  sequenceCopy = sequence;
  incidentCopy = incident;
  [(MUPlaceCardAnalyticsController *)self _requestHostToLogFeedbackTypeIfNeeded:selector];
  placeItem = [(MUPlaceCardAnalyticsController *)self placeItem];
  mapItem = [placeItem mapItem];

  Current = CFAbsoluteTimeGetCurrent();
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  defaultTargetForPlaceCardAnalytics = [WeakRetained defaultTargetForPlaceCardAnalytics];

  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __198__MUPlaceCardAnalyticsController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke;
  block[3] = &unk_1E8218410;
  actionCopy = action;
  v38 = defaultTargetForPlaceCardAnalytics;
  v34 = Current;
  indexCopy = index;
  dCopy = d;
  categoryCopy = category;
  v30 = mapItem;
  v31 = systemCopy;
  v32 = sequenceCopy;
  v33 = incidentCopy;
  v24 = incidentCopy;
  v25 = sequenceCopy;
  v26 = systemCopy;
  v27 = mapItem;
  dispatch_async(analyticsQueue, block);
}

void __198__MUPlaceCardAnalyticsController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x1E696F298] sharedService];
  v2 = *(a1 + 88);
  v3 = *(a1 + 92);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = [v4 _vendorID];
  LODWORD(v9) = *(a1 + 96);
  [v10 captureTransitPlaceCardUserAction:v2 onTarget:v3 eventValue:0 mapItem:v4 timestamp:v6 resultIndex:v7 targetID:v5 providerID:v8 animationID:-1 transitCardCategory:v9 transitSystem:*(a1 + 40) transitDepartureSequence:*(a1 + 48) transitIncident:*(a1 + 56)];
}

- (void)_infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d feedbackDelegateSelector:(int)selector modules:(id)modules actionRichProviderId:(id)self0 classification:(id)self1 completion:(id)self2
{
  v12 = *&selector;
  v15 = *&target;
  v16 = *&action;
  v96 = *MEMORY[0x1E69E9840];
  queue = value;
  lCopy = l;
  dCopy = d;
  modulesCopy = modules;
  idCopy = id;
  classificationCopy = classification;
  completionCopy = completion;
  [(MUPlaceCardAnalyticsController *)self _requestHostToLogFeedbackTypeIfNeeded:v12];
  selfCopy = self;
  provider = [(MUPlaceCardAnalyticsController *)self provider];
  LODWORD(d) = [provider isFlexiblePlaceCardEnabled];

  if (!d || v15 != 201 && v15 != 30)
  {
    v66 = completionCopy;
    v29 = MUGetPlaceCardAnalyticsUILog();
    v30 = queue;
    v31 = v16;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
LABEL_1996:

      v49 = selfCopy;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_provider);
      generateAvailableActionForAnalytics = [WeakRetained generateAvailableActionForAnalytics];

      v52 = objc_loadWeakRetained(&selfCopy->_provider);
      generateUnactionableUIElementsForAnalytics = [v52 generateUnactionableUIElementsForAnalytics];

      placeItem = [(MUPlaceCardAnalyticsController *)selfCopy placeItem];
      [placeItem mapItem];
      LODWORD(v52) = v31;
      v56 = v55 = v30;

      Current = CFAbsoluteTimeGetCurrent();
      v58 = objc_loadWeakRetained(&v49->_provider);
      getPlaceCardTypeForAnalytics = [v58 getPlaceCardTypeForAnalytics];

      queuea = v49->_analyticsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __184__MUPlaceCardAnalyticsController__infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_feedbackDelegateSelector_modules_actionRichProviderId_classification_completion___block_invoke;
      block[3] = &unk_1E82183E8;
      v85 = v52;
      v86 = v15;
      v74 = v55;
      v75 = v56;
      v84 = Current;
      v33 = lCopy;
      v76 = lCopy;
      v34 = dCopy;
      v87 = getPlaceCardTypeForAnalytics;
      v77 = dCopy;
      v78 = generateAvailableActionForAnalytics;
      v79 = generateUnactionableUIElementsForAnalytics;
      v80 = modulesCopy;
      v23 = idCopy;
      v81 = idCopy;
      v26 = classificationCopy;
      v82 = classificationCopy;
      completionCopy = v66;
      v83 = v66;
      v60 = generateUnactionableUIElementsForAnalytics;
      v61 = generateAvailableActionForAnalytics;
      v62 = v56;
      v24 = v55;
      v22 = v62;
      dispatch_async(queuea, block);

      goto LABEL_1997;
    }

    if (v16 <= 3000)
    {
      if (v16 > 1500)
      {
        if (v16 <= 1503)
        {
          if (v16 == 1501)
          {
            v32 = @"TAP_DIRECTIONS";
          }

          else if (v16 == 1502)
          {
            v32 = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            v32 = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(v16)
          {
            case 2001:
              v32 = @"TAP_SEARCH_FIELD";
              goto LABEL_1425;
            case 2002:
              v32 = @"CLEAR_SEARCH";
              goto LABEL_1425;
            case 2003:
              v32 = @"CANCEL_SEARCH";
              goto LABEL_1425;
            case 2004:
              v32 = @"TAP_BROWSE_TOP_CATEGORY";
              goto LABEL_1425;
            case 2005:
              v32 = @"TAP_BROWSE_SUB_CATEGORY";
              goto LABEL_1425;
            case 2006:
              v32 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";
              goto LABEL_1425;
            case 2007:
              v32 = @"TAP_LIST_ITEM";
              goto LABEL_1425;
            case 2008:
              v32 = @"SHARE_LIST_ITEM";
              goto LABEL_1425;
            case 2009:
              v32 = @"DELETE_LIST_ITEM";
              goto LABEL_1425;
            case 2010:
              v32 = @"EDIT_LIST_ITEM";
              goto LABEL_1425;
            case 2011:
              v32 = @"REFRESH_SEARCH";
              goto LABEL_1425;
            case 2012:
              v32 = @"REVEAL_LIST_ITEM_ACTIONS";
              goto LABEL_1425;
            case 2013:
              v32 = @"HIDE_LIST_ITEM_ACTIONS";
              goto LABEL_1425;
            case 2014:
              v32 = @"TAP_SEARCH_BUTTON";
              goto LABEL_1425;
            case 2015:
              v32 = @"SHOW_SEARCH_RESULTS";
              goto LABEL_1425;
            case 2016:
              v32 = @"SHOW_REFRESH_SEARCH";
              goto LABEL_1425;
            case 2017:
              v32 = @"PASTE_TEXT";
              goto LABEL_1425;
            case 2018:
              v32 = @"TAP_LIST_SUB_ITEM";
              goto LABEL_1425;
            case 2019:
              v32 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1425;
            case 2020:
              v32 = @"TAP_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1425;
            case 2021:
              v32 = @"CLOSE_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1425;
            case 2022:
              v32 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1425;
            case 2023:
              v32 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1425;
            case 2024:
              v32 = @"RETAINED_QUERY";
              goto LABEL_1425;
            case 2025:
              v32 = @"TAP_RECENT_AC_SUGGESTION";
              goto LABEL_1425;
            case 2026:
              v32 = @"CLEAR_RECENT_AC_SUGGESTION";
              goto LABEL_1425;
            case 2027:
              v32 = @"DELETE_RECENT_AC_SUGGESTION";
              goto LABEL_1425;
            case 2028:
            case 2029:
              goto LABEL_215;
            case 2030:
              v32 = @"TAP_BROWSE_NEARBY_CATEGORY";
              goto LABEL_1425;
            case 2031:
              v32 = @"TAP_SUBACTION";
              goto LABEL_1425;
            case 2032:
              v32 = @"TAP_QUERY_BUILDING_ARROW";
              goto LABEL_1425;
            case 2033:
              v32 = @"CLICK_ON_EDIT_SEARCH";
              goto LABEL_1425;
            case 2034:
              v32 = @"REMOVE_CLIENT_AC_SUGGESTION";
              goto LABEL_1425;
            case 2035:
              v32 = @"SHARE_CLIENT_AC_SUGGESTION";
              goto LABEL_1425;
            case 2036:
              v32 = @"TAP_ON_MORE_RESULTS";
              goto LABEL_1425;
            case 2037:
              v32 = @"SHARE_ITEM";
              goto LABEL_1425;
            case 2038:
              v32 = @"HIDE_ITEM";
              goto LABEL_1425;
            case 2039:
              v32 = @"TAP_SUGGESTED_ITEM";
              goto LABEL_1425;
            case 2040:
              v32 = @"SHARE_SUGGESTED_ITEM";
              goto LABEL_1425;
            case 2041:
              v32 = @"HIDE_SUGGESTED_ITEM";
              goto LABEL_1425;
            case 2042:
              v32 = @"ADD_HOME_FAVORITE";
              goto LABEL_1425;
            case 2043:
              v32 = @"ADD_WORK_FAVORITE";
              goto LABEL_1425;
            case 2044:
              v32 = @"ADD_FAVORITE";
              goto LABEL_1425;
            case 2045:
              v32 = @"VIEW_FAVORITES_LIST";
              goto LABEL_1425;
            case 2046:
              v32 = @"TAP_HOME_FAVORITE";
              goto LABEL_1425;
            case 2047:
              v32 = @"TAP_WORK_FAVORITE";
              goto LABEL_1425;
            case 2048:
              v32 = @"TAP_CAR_FAVORITE";
              goto LABEL_1425;
            case 2049:
              v32 = @"TAP_FAVORITE_ITEM";
              goto LABEL_1425;
            case 2050:
              v32 = @"CREATE_HOME_FAVORITE";
              goto LABEL_1425;
            case 2051:
              v32 = @"CREATE_WORK_FAVORITE";
              goto LABEL_1425;
            case 2052:
              v32 = @"CREATE_FAVORITE";
              goto LABEL_1425;
            case 2053:
              v32 = @"SUBMIT_FAVORITE_EDIT";
              goto LABEL_1425;
            case 2054:
              v32 = @"ADD_RECOMMENDED_FAVORITE";
              goto LABEL_1425;
            case 2055:
              v32 = @"EDIT_FAVORITE";
              goto LABEL_1425;
            case 2056:
              v32 = @"REMOVE_FAVORITE";
              goto LABEL_1425;
            case 2057:
              v32 = @"SHARE_FAVORITE";
              goto LABEL_1425;
            case 2058:
              v32 = @"EDIT_FAVORITES";
              goto LABEL_1425;
            case 2059:
              v32 = @"ADD_FAVORITE_PLACE";
              goto LABEL_1425;
            case 2060:
              v32 = @"REMOVE_FAVORITE_PLACE";
              goto LABEL_1425;
            case 2061:
              v32 = @"CHANGE_HOME_ADDRESS";
              goto LABEL_1425;
            case 2062:
              v32 = @"CHANGE_WORK_ADDRESS";
              goto LABEL_1425;
            case 2063:
              v32 = @"REFINE_LOCATION";
              goto LABEL_1425;
            case 2064:
              v32 = @"TAP_RECENTLY_VIEWED_ITEM";
              goto LABEL_1425;
            case 2065:
              v32 = @"SHOW_COLLECTION_LIST";
              goto LABEL_1425;
            case 2066:
              v32 = @"SHOW_FAVORITES_COLLECTION";
              goto LABEL_1425;
            case 2067:
              v32 = @"SHOW_COLLECTION";
              goto LABEL_1425;
            case 2068:
              v32 = @"TAP_COLLECTION_ITEM";
              goto LABEL_1425;
            case 2069:
              v32 = @"SHARE_COLLECTION_ITEM";
              goto LABEL_1425;
            case 2070:
              v32 = @"REMOVE_COLLECTION_ITEM";
              goto LABEL_1425;
            case 2071:
              v32 = @"SAVE_SHARED_COLLECTION";
              goto LABEL_1425;
            case 2072:
              v32 = @"CREATE_NEW_COLLECTION";
              goto LABEL_1425;
            case 2073:
              v32 = @"SAVE_TO_COLLECTION";
              goto LABEL_1425;
            case 2074:
              v32 = @"EDIT_PHOTO";
              goto LABEL_1425;
            case 2075:
              v32 = @"SORT_BY_NAME";
              goto LABEL_1425;
            case 2076:
              v32 = @"SORT_BY_DISTANCE";
              goto LABEL_1425;
            case 2077:
              v32 = @"SORT_BY_RECENT";
              goto LABEL_1425;
            case 2078:
              v32 = @"AUTO_SHARE_ETA";
              goto LABEL_1425;
            case 2079:
              v32 = @"CANCEL_AUTO_SHARE_ETA";
              goto LABEL_1425;
            case 2080:
              v32 = @"MAP_SEARCH";
              goto LABEL_1425;
            case 2081:
              v32 = @"DELETE_COLLECTION";
              goto LABEL_1425;
            case 2082:
              v32 = @"SHARE_COLLECTION";
              goto LABEL_1425;
            case 2083:
              v32 = @"SHOW_TRANSIT_LINES_COLLECTION";
              goto LABEL_1425;
            case 2084:
              v32 = @"SHOW_MY_PLACES";
              goto LABEL_1425;
            case 2085:
              v32 = @"SHOW_ALL_PLACES";
              goto LABEL_1425;
            case 2086:
              v32 = @"TAP_RECENT_QUERY";
              goto LABEL_1425;
            case 2087:
              v32 = @"TAP_QUERY_SUGGESTION";
              goto LABEL_1425;
            case 2088:
              v32 = @"DELETE_CURATED_COLLECTION";
              goto LABEL_1425;
            case 2089:
              v32 = @"FOLLOW";
              goto LABEL_1425;
            case 2090:
              v32 = @"PUNCH_IN";
              goto LABEL_1425;
            case 2091:
              v32 = @"SAVE_CURATED_COLLECTION";
              goto LABEL_1425;
            case 2092:
              v32 = @"SCROLL_LEFT_COLLECTIONS";
              goto LABEL_1425;
            case 2093:
              v32 = @"SCROLL_RIGHT_COLLECTIONS";
              goto LABEL_1425;
            case 2094:
              v32 = @"SEE_ALL_CURATED_COLLECTION";
              goto LABEL_1425;
            case 2095:
              v32 = @"SEE_ALL_PUBLISHERS";
              goto LABEL_1425;
            case 2096:
              v32 = @"SHARE_CURATED_COLLECTION";
              goto LABEL_1425;
            case 2097:
              v32 = @"SHARE_PUBLISHER";
              goto LABEL_1425;
            case 2098:
              v32 = @"SHOW_MORE_COLLECTION";
              goto LABEL_1425;
            case 2099:
              v32 = @"TAP_CURATED_COLLECTION";
              goto LABEL_1425;
            case 2100:
              v32 = @"TAP_FEATURED_COLLECTIONS";
              goto LABEL_1425;
            case 2101:
              v32 = @"TAP_LOCATION";
              goto LABEL_1425;
            case 2102:
              v32 = @"TAP_PUBLISHER";
              goto LABEL_1425;
            case 2103:
              v32 = @"TAP_PUBLISHER_APP";
              goto LABEL_1425;
            case 2104:
              v32 = @"TAP_PUBLISHER_COLLECTIONS";
              goto LABEL_1425;
            case 2105:
              v32 = @"UNFOLLOW";
              goto LABEL_1425;
            case 2106:
              v32 = @"CHANGE_SCHOOL_ADDRESS";
              goto LABEL_1425;
            case 2107:
              v32 = @"ADD_VEHICLE";
              goto LABEL_1425;
            case 2108:
              v32 = @"DISPLAY_VIRTUAL_GARAGE";
              goto LABEL_1425;
            case 2109:
              v32 = @"ENTER_VIRTUAL_GARAGE";
              goto LABEL_1425;
            case 2110:
              v32 = @"PUNCH_OUT_MANUFACTURER_APP";
              goto LABEL_1425;
            case 2111:
              v32 = @"REMOVE_LICENSE_PLATE";
              goto LABEL_1425;
            case 2112:
              v32 = @"REMOVE_VEHICLE";
              goto LABEL_1425;
            case 2113:
              v32 = @"SELECT_VEHICLE";
              goto LABEL_1425;
            case 2114:
              v32 = @"SUBMIT_LICENSE_PLATE";
              goto LABEL_1425;
            case 2115:
              v32 = @"TAP_ADD_LICENSE_PLATE";
              goto LABEL_1425;
            case 2116:
              v32 = @"TAP_ADD_NEW_CAR";
              goto LABEL_1425;
            case 2117:
              v32 = @"TAP_BANNER";
              goto LABEL_1425;
            case 2118:
              v32 = @"TAP_CONNECT";
              goto LABEL_1425;
            case 2119:
              v32 = @"TAP_CONTINUE";
              goto LABEL_1425;
            case 2120:
              v32 = @"TAP_EDIT";
              goto LABEL_1425;
            case 2121:
              v32 = @"TAP_NAME";
              goto LABEL_1425;
            case 2122:
              v32 = @"TAP_NOT_NOW";
              goto LABEL_1425;
            case 2123:
              v32 = @"TAP_OTHER_VEHICLE";
              goto LABEL_1425;
            case 2124:
              v32 = @"TAP_REMOVE_LICENSE_PLATE";
              goto LABEL_1425;
            case 2125:
              v32 = @"TAP_UPDATE_PLATE_NUMBER";
              goto LABEL_1425;
            case 2126:
              v32 = @"TAP_VEHICLE";
              goto LABEL_1425;
            case 2127:
              v32 = @"TAP_VEHICLE_NAME";
              goto LABEL_1425;
            case 2128:
              v32 = @"UPDATE_NAME";
              goto LABEL_1425;
            case 2129:
              v32 = @"DONE_TAKING_PHOTO";
              goto LABEL_1425;
            case 2130:
              v32 = @"ENABLE_SHOW_PHOTO_NAME";
              goto LABEL_1425;
            case 2131:
              v32 = @"SUBMIT_PHOTO";
              goto LABEL_1425;
            case 2132:
              v32 = @"USE_PHOTO";
              goto LABEL_1425;
            case 2133:
              v32 = @"ADD_RECOMMENDATION_TO_MAPS";
              goto LABEL_1425;
            case 2134:
              v32 = @"CANCEL_PHOTO_SUBMISSION";
              goto LABEL_1425;
            case 2135:
              v32 = @"CLOSE_RECOMMENDATION_CARD";
              goto LABEL_1425;
            case 2136:
              v32 = @"EDIT_RATING";
              goto LABEL_1425;
            case 2137:
              v32 = @"PROMPTED_TO_ADD_PHOTO";
              goto LABEL_1425;
            case 2138:
              v32 = @"PROMPTED_TO_ADD_RATING";
              goto LABEL_1425;
            case 2139:
              v32 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";
              goto LABEL_1425;
            case 2140:
              v32 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";
              goto LABEL_1425;
            case 2141:
              v32 = @"RETAKE_PHOTO";
              goto LABEL_1425;
            case 2142:
              v32 = @"REVEAL_RECOMMENDATION_CARD";
              goto LABEL_1425;
            case 2143:
              v32 = @"SUBMIT_NEGATIVE_RATING";
              goto LABEL_1425;
            case 2144:
              v32 = @"SUBMIT_POSITIVE_RATING";
              goto LABEL_1425;
            case 2145:
              v32 = @"TAP_CHOOSING_PHOTO";
              goto LABEL_1425;
            case 2146:
              v32 = @"TAP_TAKE_NEW_PHOTO";
              goto LABEL_1425;
            case 2147:
              v32 = @"TAP_TO_ADD_PHOTO";
              goto LABEL_1425;
            case 2148:
              v32 = @"CANCEL_INCIDENT_REPORT";
              goto LABEL_1425;
            case 2149:
              v32 = @"INCIDENT_REPORT_SUBMITTED";
              goto LABEL_1425;
            case 2150:
              v32 = @"REPORTED_INCIDENT_NOT_RECEIVED";
              goto LABEL_1425;
            case 2151:
              v32 = @"REPORTED_INCIDENT_RECEIVED";
              goto LABEL_1425;
            case 2152:
              v32 = @"REPORT_INCIDENT";
              goto LABEL_1425;
            case 2153:
              v32 = @"SELECT_INCIDENT_TYPE";
              goto LABEL_1425;
            case 2154:
              v32 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";
              goto LABEL_1425;
            case 2155:
              v32 = @"TAP_TO_START_REPORT_INCIDENT";
              goto LABEL_1425;
            case 2156:
              v32 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";
              goto LABEL_1425;
            case 2157:
              v32 = @"ATTEMPT_VLF_CORRECTION";
              goto LABEL_1425;
            case 2158:
              v32 = @"DISMISS_VLF_PROMPT";
              goto LABEL_1425;
            case 2159:
              v32 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";
              goto LABEL_1425;
            case 2160:
              v32 = @"VLF_CORRECTION_FAILED";
              goto LABEL_1425;
            case 2161:
              v32 = @"VLF_CORRECTION_SUCCESSFUL";
              goto LABEL_1425;
            case 2162:
              v32 = @"ENABLE_WIDGET_SUGGESTIONS";
              goto LABEL_1425;
            case 2163:
              v32 = @"DISPLAY_CZ_ADVISORY";
              goto LABEL_1425;
            case 2164:
              v32 = @"PUNCH_OUT_URL_PAY";
              goto LABEL_1425;
            case 2165:
              v32 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";
              goto LABEL_1425;
            case 2166:
              v32 = @"DELETE_ITEM";
              goto LABEL_1425;
            case 2167:
              v32 = @"CANCEL_REMOVE";
              goto LABEL_1425;
            case 2168:
              v32 = @"DELETE_SUGGESTION";
              goto LABEL_1425;
            case 2169:
              v32 = @"ADD_SCHOOL_FAVORITE";
              goto LABEL_1425;
            case 2170:
              v32 = @"GO_TO_WEBSITE";
              goto LABEL_1425;
            case 2171:
              v32 = @"TRY_AGAIN";
              goto LABEL_1425;
            case 2172:
              v32 = @"CHECK_AUTO_RECORD_WORKOUT";
              goto LABEL_1425;
            case 2173:
              v32 = @"CHECK_EBIKE";
              goto LABEL_1425;
            case 2174:
              v32 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";
              goto LABEL_1425;
            case 2175:
              v32 = @"DISPLAY_CYCLING_DEFAULT_OPTION";
              goto LABEL_1425;
            case 2176:
              v32 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";
              goto LABEL_1425;
            case 2177:
              v32 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";
              goto LABEL_1425;
            case 2178:
              v32 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";
              goto LABEL_1425;
            case 2179:
              v32 = @"TAP_AUTOMATIC_WORKOUT_OPTION";
              goto LABEL_1425;
            case 2180:
              v32 = @"TAP_CYCLING_DEFAULT_OPTION";
              goto LABEL_1425;
            case 2181:
              v32 = @"TAP_CYCLING_NO_BIKE_ADVISORY";
              goto LABEL_1425;
            case 2182:
              v32 = @"TAP_CYCLING_STAIRS_ADVISORY";
              goto LABEL_1425;
            case 2183:
              v32 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";
              goto LABEL_1425;
            case 2184:
              v32 = @"UNCHECK_AUTO_RECORD_WORKOUT";
              goto LABEL_1425;
            case 2185:
              v32 = @"UNCHECK_EBIKE";
              goto LABEL_1425;
            case 2186:
              v32 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";
              goto LABEL_1425;
            case 2187:
              v32 = @"DISPLAY_LPR_ADVISORY";
              goto LABEL_1425;
            case 2188:
              v32 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";
              goto LABEL_1425;
            case 2189:
              v32 = @"CREATE_WIDGET";
              goto LABEL_1425;
            case 2190:
              v32 = @"REVEAL_WIDGET_TRAY";
              goto LABEL_1425;
            case 2191:
              v32 = @"LPR_ERROR_CODE";
              goto LABEL_1425;
            case 2192:
              v32 = @"TAP_SEE_ALL_RECENTLY_VIEWED";
              goto LABEL_1425;
            case 2193:
              v32 = @"TAP_CLEAR_RECENTLY_VIEWED";
              goto LABEL_1425;
            case 2194:
              v32 = @"LPR_HARD_STOP";
              goto LABEL_1425;
            case 2195:
              v32 = @"TAP_PUBLISHER_SUBACTION";
              goto LABEL_1425;
            case 2196:
              v32 = @"CARPLAY_DISPLAY_ACTIVATED";
              goto LABEL_1425;
            case 2197:
              v32 = @"CARPLAY_DISPLAY_DEACTIVATED";
              goto LABEL_1425;
            case 2198:
              v32 = @"TAP_FEATURED_COLLECTION";
              goto LABEL_1425;
            case 2199:
              v32 = @"SCROLL_FEATURED_COLLECTION_FORWARD";
              goto LABEL_1425;
            case 2200:
              v32 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";
              goto LABEL_1425;
            default:
              if (v16 == 1504)
              {
                v32 = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (v16 != 1505)
                {
                  goto LABEL_215;
                }

                v32 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        v32 = @"UI_ACTION_UNKNOWN";
        switch(v16)
        {
          case 0:
            goto LABEL_1425;
          case 1:
            v32 = @"PULL_UP";
            break;
          case 2:
            v32 = @"PULL_DOWN";
            break;
          case 3:
            v32 = @"TAP";
            break;
          case 4:
            v32 = @"CLOSE";
            break;
          case 5:
            v32 = @"SWIPE_PREV";
            break;
          case 6:
            v32 = @"SWIPE_NEXT";
            break;
          case 7:
            v32 = @"SCROLL_UP";
            break;
          case 8:
            v32 = @"SCROLL_DOWN";
            break;
          case 9:
          case 23:
          case 24:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 601:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 607:
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
          case 621:
          case 622:
          case 623:
          case 624:
          case 625:
          case 626:
          case 627:
          case 628:
          case 629:
          case 630:
          case 631:
          case 632:
          case 633:
          case 634:
          case 635:
          case 636:
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
          case 642:
          case 643:
          case 644:
          case 645:
          case 646:
          case 647:
          case 648:
          case 649:
          case 650:
          case 651:
          case 652:
          case 653:
          case 654:
          case 655:
          case 656:
          case 657:
          case 658:
          case 659:
          case 660:
          case 661:
          case 662:
          case 663:
          case 664:
          case 665:
          case 666:
          case 667:
          case 668:
          case 669:
          case 670:
          case 671:
          case 672:
          case 673:
          case 674:
          case 675:
          case 676:
          case 677:
          case 678:
          case 679:
          case 680:
          case 681:
          case 682:
          case 683:
          case 684:
          case 685:
          case 686:
          case 687:
          case 688:
          case 689:
          case 690:
          case 691:
          case 692:
          case 693:
          case 694:
          case 695:
          case 696:
          case 697:
          case 698:
          case 699:
          case 700:
          case 701:
          case 702:
          case 703:
          case 704:
          case 705:
          case 706:
          case 707:
          case 708:
          case 709:
          case 710:
          case 711:
          case 712:
          case 713:
          case 714:
          case 715:
          case 716:
          case 717:
          case 718:
          case 719:
          case 720:
          case 721:
          case 722:
          case 723:
          case 724:
          case 725:
          case 726:
          case 727:
          case 728:
          case 729:
          case 730:
          case 731:
          case 732:
          case 733:
          case 734:
          case 735:
          case 736:
          case 737:
          case 738:
          case 739:
          case 740:
          case 741:
          case 742:
          case 743:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
          case 801:
          case 802:
          case 803:
          case 804:
          case 805:
          case 806:
          case 807:
          case 808:
          case 809:
          case 810:
          case 811:
          case 812:
          case 813:
          case 814:
          case 815:
          case 816:
          case 817:
          case 818:
          case 819:
          case 820:
          case 821:
          case 822:
          case 823:
          case 824:
          case 825:
          case 826:
          case 827:
          case 828:
          case 829:
          case 830:
          case 831:
          case 832:
          case 833:
          case 834:
          case 835:
          case 836:
          case 837:
          case 838:
          case 839:
          case 840:
          case 841:
          case 842:
          case 843:
          case 844:
          case 845:
          case 846:
          case 847:
          case 848:
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 856:
          case 857:
          case 858:
          case 859:
          case 860:
          case 861:
          case 862:
          case 863:
          case 864:
          case 865:
          case 866:
          case 867:
          case 868:
          case 869:
          case 870:
          case 871:
          case 872:
          case 873:
          case 874:
          case 875:
          case 876:
          case 877:
          case 878:
          case 879:
          case 880:
          case 881:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 888:
          case 889:
          case 890:
          case 891:
          case 892:
          case 893:
          case 894:
          case 895:
          case 896:
          case 897:
          case 898:
          case 899:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 905:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 915:
          case 916:
          case 917:
          case 918:
          case 919:
          case 920:
          case 921:
          case 922:
          case 923:
          case 924:
          case 925:
          case 926:
          case 927:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 934:
          case 935:
          case 936:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 947:
          case 948:
          case 949:
          case 950:
          case 951:
          case 952:
          case 953:
          case 954:
          case 955:
          case 956:
          case 957:
          case 958:
          case 959:
          case 960:
          case 961:
          case 962:
          case 963:
          case 964:
          case 965:
          case 966:
          case 967:
          case 968:
          case 969:
          case 970:
          case 971:
          case 972:
          case 973:
          case 974:
          case 975:
          case 976:
          case 977:
          case 978:
          case 979:
          case 980:
          case 981:
          case 982:
          case 983:
          case 984:
          case 985:
          case 986:
          case 987:
          case 988:
          case 989:
          case 990:
          case 991:
          case 992:
          case 993:
          case 994:
          case 995:
          case 996:
          case 997:
          case 998:
          case 999:
          case 1000:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1019:
          case 1021:
          case 1022:
          case 1023:
          case 1024:
          case 1025:
          case 1026:
          case 1027:
          case 1028:
          case 1029:
            goto LABEL_215;
          case 10:
            v32 = @"SHOW_MORE";
            break;
          case 11:
            v32 = @"SHOW_LESS";
            break;
          case 12:
            v32 = @"SWIPE_LEFT";
            break;
          case 13:
            v32 = @"SWIPE_RIGHT";
            break;
          case 14:
            v32 = @"MINIMIZE";
            break;
          case 15:
            v32 = @"TAP_PREV";
            break;
          case 16:
            v32 = @"TAP_NEXT";
            break;
          case 17:
            v32 = @"SUBMIT";
            break;
          case 18:
            v32 = @"CANCEL";
            break;
          case 19:
            v32 = @"ENTER_MAPS";
            break;
          case 20:
            v32 = @"EXIT_MAPS";
            break;
          case 21:
            v32 = @"REVEAL";
            break;
          case 22:
            v32 = @"OPEN_NEW_TAB";
            break;
          case 25:
            v32 = @"BACK";
            break;
          case 26:
            v32 = @"ACTIVATE";
            break;
          case 27:
            v32 = @"DEACTIVATE";
            break;
          case 28:
            v32 = @"AGREE";
            break;
          case 29:
            v32 = @"DISAGREE";
            break;
          case 30:
            v32 = @"SKIP_ANSWER";
            break;
          case 31:
            v32 = @"EXPAND";
            break;
          case 32:
            v32 = @"COLLAPSE";
            break;
          case 33:
            v32 = @"ENTER";
            break;
          case 34:
            v32 = @"EXIT";
            break;
          case 35:
            v32 = @"SCROLL_UP_INDEX_BAR";
            break;
          case 36:
            v32 = @"SCROLL_DOWN_INDEX_BAR";
            break;
          case 37:
            v32 = @"TOGGLE_ON";
            break;
          case 38:
            v32 = @"TOGGLE_OFF";
            break;
          case 39:
            v32 = @"LONG_PRESS";
            break;
          case 40:
            v32 = @"CLICK";
            break;
          case 41:
            v32 = @"TAP_DONE";
            break;
          case 42:
            v32 = @"TAP_CLOSE";
            break;
          case 43:
            v32 = @"SCROLL_LEFT";
            break;
          case 44:
            v32 = @"SCROLL_RIGHT";
            break;
          case 45:
            v32 = @"DISPLAY";
            break;
          case 46:
            v32 = @"OPEN_IN_APP";
            break;
          case 47:
            v32 = @"CONCEAL";
            break;
          case 48:
            v32 = @"TAP_DELETE";
            break;
          case 49:
            v32 = @"TAP_FILTER";
            break;
          case 50:
            v32 = @"TAP_SECONDARY_BUTTON";
            break;
          case 51:
            v32 = @"TAP_WIDGET_FOOD";
            break;
          case 52:
            v32 = @"TAP_WIDGET_GAS";
            break;
          case 53:
            v32 = @"TAP_WIDGET_LOADING";
            break;
          case 54:
            v32 = @"TAP_WIDGET_SEARCH";
            break;
          case 55:
            v32 = @"TAP_WIDGET_STORES";
            break;
          case 56:
            v32 = @"DISPLAY_ALLOW_ONCE_PROMPT";
            break;
          case 57:
            v32 = @"SHARE_CURRENT_LOCATION";
            break;
          case 58:
            v32 = @"SHARE_PHOTO";
            break;
          case 59:
            v32 = @"TAP_KEEP_OFF";
            break;
          case 60:
            v32 = @"TAP_PHOTO_CATEGORY";
            break;
          case 61:
            v32 = @"TAP_PRECISE_LOCATION_OFF_BANNER";
            break;
          case 62:
            v32 = @"TAP_TURN_ON";
            break;
          case 63:
            v32 = @"DISPLAY_CYCLING_ANNOTATION";
            break;
          case 64:
            v32 = @"DISPLAY_DRIVING_DEFAULT_OPTION";
            break;
          case 65:
            v32 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";
            break;
          case 66:
            v32 = @"DISPLAY_WALKING_DEFAULT_OPTION";
            break;
          case 67:
            v32 = @"TAP_CYCLING_ANNOTATION";
            break;
          case 68:
            v32 = @"TAP_DRIVING_DEFAULT_OPTION";
            break;
          case 69:
            v32 = @"TAP_TRANSIT_DEFAULT_OPTION";
            break;
          case 70:
            v32 = @"TAP_WALKING_DEFAULT_OPTION";
            break;
          case 71:
            v32 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";
            break;
          case 72:
            v32 = @"TAP_RIDESHARE_DEFAULT_OPTION";
            break;
          case 73:
            v32 = @"TAP_PERSONAL_COLLECTION";
            break;
          case 74:
            v32 = @"RESUME_ROUTE";
            break;
          case 75:
            v32 = @"DISPLAY_OUT_OF_RANGE_ALERT";
            break;
          case 76:
            v32 = @"TAP_ALLOW_ONCE";
            break;
          case 77:
            v32 = @"TAP_DO_NOT_ALLOW";
            break;
          case 78:
            v32 = @"ADD_RECCOMENDED_FAVORITE";
            break;
          case 79:
            v32 = @"ADD_RECOMMENDED_HOME_FAVORITE";
            break;
          case 80:
            v32 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";
            break;
          case 81:
            v32 = @"ADD_RECOMMENDED_WORK_FAVORITE";
            break;
          case 82:
            v32 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";
            break;
          case 83:
            v32 = @"CREATE_SCHOOL_FAVORITE";
            break;
          case 84:
            v32 = @"TAP_SCHOOL_FAVORITE";
            break;
          case 85:
            v32 = @"SELECT_ROUTING_TYPE_CYCLING";
            break;
          case 86:
            v32 = @"REPORT_PHOTO";
            break;
          case 87:
            v32 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";
            break;
          case 88:
            v32 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";
            break;
          case 89:
            v32 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";
            break;
          case 90:
            v32 = @"CREATE_RECOMMENDED_FAVORITE";
            break;
          case 91:
            v32 = @"CREATE_RECOMMENDED_HOME_FAVORITE";
            break;
          case 92:
            v32 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";
            break;
          case 93:
            v32 = @"CREATE_RECOMMENDED_WORK_FAVORITE";
            break;
          case 94:
            v32 = @"TAP_SMALL_WIDGET_ITEM";
            break;
          case 95:
            v32 = @"TAP_MEDIUM_WIDGET_ITEM";
            break;
          case 96:
            v32 = @"TAP_LARGE_WIDGET_ITEM";
            break;
          case 97:
            v32 = @"DISPLAY_ARP_TIPKIT";
            break;
          case 98:
            v32 = @"NEXT";
            break;
          case 99:
            v32 = @"TAP_RATE_AND_ADD_PHOTOS";
            break;
          case 100:
            v32 = @"TAP_TO_ADD_POSITIVE_RATING";
            break;
          case 101:
            v32 = @"TAP_TO_ADD_NEGATIVE_RATING";
            break;
          case 102:
            v32 = @"TAP_ACTIVE_SHARING_NOTIFICATION";
            break;
          case 103:
            v32 = @"INVOKE_SIRI_PROMPT";
            break;
          case 104:
            v32 = @"ETA_SHARED_SUCCESSFULLY";
            break;
          case 105:
            v32 = @"ENDED_ETA_SHARE_SUCCESSFULLY";
            break;
          case 106:
            v32 = @"CLEAR_INCIDENT";
            break;
          case 107:
            v32 = @"CONFIRM_INCIDENT";
            break;
          case 108:
            v32 = @"DISMISS_INCIDENT";
            break;
          case 109:
            v32 = @"INCIDENT_ALERT_TIMEOUT";
            break;
          case 110:
            v32 = @"INCIDENT_ALERT_TRAY_SHOWN";
            break;
          case 111:
            v32 = @"INCIDENT_CARD_SHOWN";
            break;
          case 112:
            v32 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";
            break;
          case 113:
            v32 = @"INCIDENT_REPORT_TRAY_SHOWN";
            break;
          case 114:
            v32 = @"NAV_TRAY_DISCOVERY_SHOWN";
            break;
          case 115:
            v32 = @"TAP_TO_REPORT_INCIDENT";
            break;
          case 116:
            v32 = @"TAP_SHORTCUT";
            break;
          case 117:
            v32 = @"BLOCK_CONTACT";
            break;
          case 118:
            v32 = @"TAP_TO_ADD_RATING";
            break;
          case 119:
            v32 = @"AR_WALKING_LOCALIZATION_FAILED";
            break;
          case 120:
            v32 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";
            break;
          case 121:
            v32 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";
            break;
          case 122:
            v32 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";
            break;
          case 123:
            v32 = @"ATTEMPT_AR_WALKING_LOCALIZATION";
            break;
          case 124:
            v32 = @"RAISE_TO_ENTER_AR_WALKING";
            break;
          case 125:
            v32 = @"TAP_DISMISS";
            break;
          case 126:
            v32 = @"TAP_ENTER_AR_WALKING";
            break;
          case 127:
            v32 = @"TAP_OK";
            break;
          case 128:
            v32 = @"TAP_TRY_AGAIN";
            break;
          case 129:
            v32 = @"TAP_TURN_ON_IN_SETTINGS";
            break;
          case 130:
            v32 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";
            break;
          case 131:
            v32 = @"VLF_CORRECTION_USER_ABANDON";
            break;
          case 132:
            v32 = @"AREA_EVENTS_ALERT";
            break;
          case 133:
            v32 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";
            break;
          case 134:
            v32 = @"ACCEPT_EVENT_REROUTE";
            break;
          case 135:
            v32 = @"DISPLAY_AREA_EVENTS_ADVISORY";
            break;
          case 136:
            v32 = @"DISMISS_EVENT_REROUTE";
            break;
          case 137:
            v32 = @"PUNCH_OUT_EVENTS_LINK";
            break;
          case 138:
            v32 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";
            break;
          case 139:
            v32 = @"ADJUST_GUIDANCE_SETTINGS";
            break;
          case 140:
            v32 = @"HIDE_DETAILS";
            break;
          case 141:
            v32 = @"SELECT_VOICE_GUIDANCE_ON";
            break;
          case 142:
            v32 = @"SELECT_VOICE_GUIDANCE_OFF";
            break;
          case 143:
            v32 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";
            break;
          case 144:
            v32 = @"TAP_TEXT_LABEL";
            break;
          case 145:
            v32 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";
            break;
          case 146:
            v32 = @"TAP_EXIT";
            break;
          case 147:
            v32 = @"TAP_CITY_MENU";
            break;
          case 148:
            v32 = @"CHECK_AVOID_TOLLS";
            break;
          case 149:
            v32 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";
            break;
          case 150:
            v32 = @"TAP_ICLOUD";
            break;
          case 151:
            v32 = @"CHECK_AVOID_HIGHWAYS";
            break;
          case 152:
            v32 = @"TAP_FAVORITES";
            break;
          case 153:
            v32 = @"SELECT_DISTANCE_IN_KM";
            break;
          case 154:
            v32 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";
            break;
          case 155:
            v32 = @"OPEN_FULL_CARD_FILTER";
            break;
          case 156:
            v32 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";
            break;
          case 157:
            v32 = @"OPEN_SINGLE_CARD_FILTER";
            break;
          case 158:
            v32 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";
            break;
          case 159:
            v32 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";
            break;
          case 160:
            v32 = @"SESSIONLESS_REVEAL";
            break;
          case 161:
            v32 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";
            break;
          case 162:
            v32 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";
            break;
          case 163:
            v32 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";
            break;
          case 164:
            v32 = @"ENTER_RAP_REPORT_MENU";
            break;
          case 165:
            v32 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";
            break;
          case 166:
            v32 = @"TAP_MY_VEHICLES";
            break;
          case 167:
            v32 = @"SUBMIT_SINGLE_CARD_FILTER";
            break;
          case 168:
            v32 = @"SUBMIT_FULL_CARD_FILTER";
            break;
          case 169:
            v32 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";
            break;
          case 170:
            v32 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";
            break;
          case 171:
            v32 = @"TAP_EXPLORE_CURATED_COLELCTIONS";
            break;
          case 172:
            v32 = @"TAP_ACCOUNT";
            break;
          case 173:
            v32 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";
            break;
          case 174:
            v32 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";
            break;
          case 175:
            v32 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";
            break;
          case 176:
            v32 = @"RESULT_REFINEMENT_TOGGLE_OFF";
            break;
          case 177:
            v32 = @"TAP_CITY_CURATED_COLLECTIONS";
            break;
          case 178:
            v32 = @"TAP_REPORTS";
            break;
          case 179:
            v32 = @"TAP_RATINGS";
            break;
          case 180:
            v32 = @"TAP_EXPLORE_CURATED_COLLECTIONS";
            break;
          case 181:
            v32 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";
            break;
          case 182:
            v32 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";
            break;
          case 183:
            v32 = @"SELECT_DISTANCE_IN_MILES";
            break;
          case 184:
            v32 = @"TAP_PRIVACY_STATEMENT";
            break;
          case 185:
            v32 = @"TAP_MAPS_SETTINGS";
            break;
          case 186:
            v32 = @"CANCEL_FULL_CARD_FILTER";
            break;
          case 187:
            v32 = @"TAP_LATEST_CURATED_COLLECTION";
            break;
          case 188:
            v32 = @"TAP_TEMPORAL_CURATED_COLLECTION";
            break;
          case 189:
            v32 = @"UNCHECK_AVOID_TOLLS";
            break;
          case 190:
            v32 = @"UNSELECT_SEARCH_REFINEMENT";
            break;
          case 191:
            v32 = @"TAP_RATING";
            break;
          case 192:
            v32 = @"TAP_ICLOUD_SIGN_IN";
            break;
          case 193:
            v32 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";
            break;
          case 194:
            v32 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";
            break;
          case 195:
            v32 = @"UNCHECK_AVOID_HIGHWAYS";
            break;
          case 196:
            v32 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";
            break;
          case 197:
            v32 = @"RESULT_REFINEMENT_TOGGLE_ON";
            break;
          case 198:
            v32 = @"TAP_CONTEXT_LINE_HYPERLINK";
            break;
          case 199:
            v32 = @"TAP_MY_GUIDES";
            break;
          case 200:
            v32 = @"SELECT_SEARCH_REFINEMENT";
            break;
          case 201:
            v32 = @"SESSIONLESS_TAP_ACCOUNT";
            break;
          case 202:
            v32 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";
            break;
          case 203:
            v32 = @"TAP_TRAVEL_PREFERENCES";
            break;
          case 204:
            v32 = @"SHOW_CURATED_COLLECTION_LIST";
            break;
          case 205:
            v32 = @"CANCEL_SINGLE_CARD_FILTER";
            break;
          case 206:
            v32 = @"DISPLAY_HFP_OPTION";
            break;
          case 207:
            v32 = @"SWITCH_OFF_HFP";
            break;
          case 208:
            v32 = @"SWITCH_ON_HFP";
            break;
          case 209:
            v32 = @"TAP_QUICK_ACTION_TRAY";
            break;
          case 210:
            v32 = @"SHOW_ALL_CITIES";
            break;
          case 211:
            v32 = @"TAP_ADD_NEARBY_TRANSIT";
            break;
          case 212:
            v32 = @"RESUME";
            break;
          case 213:
            v32 = @"DISPLAY_TIPKIT_PROMPT";
            break;
          case 214:
            v32 = @"TAP_NEARBY_TRANSIT_FAVORITE";
            break;
          case 215:
            v32 = @"TAP_DRIVING_MODE";
            break;
          case 216:
            v32 = @"SWITCH_ON_VOICE_GUIDANCE";
            break;
          case 217:
            v32 = @"DISMISS_TIPKIT_PROMPT";
            break;
          case 218:
            v32 = @"TAP_EXPAND_EXIT_DETAILS";
            break;
          case 219:
            v32 = @"TAP_NEARBY_TRANSIT_FILTER";
            break;
          case 220:
            v32 = @"TAP_MORE_DEPARTURES";
            break;
          case 221:
            v32 = @"RAP_INDIVIDUAL_PLACE";
            break;
          case 222:
            v32 = @"RAP_ADD_MAP";
            break;
          case 223:
            v32 = @"TAP_SUGGESTED_RAP";
            break;
          case 224:
            v32 = @"RAP_STREET_ISSUE";
            break;
          case 225:
            v32 = @"SWIPE_PIN_REVEAL";
            break;
          case 226:
            v32 = @"TAP_ADD_TIPKIT_FAVORITE";
            break;
          case 227:
            v32 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";
            break;
          case 228:
            v32 = @"RAP_BAD_TRIP";
            break;
          case 229:
            v32 = @"RAP_PLACE_ISSUE";
            break;
          case 230:
            v32 = @"TAP_OPEN_MAPS";
            break;
          case 231:
            v32 = @"TAP_NEARBY_TRANSIT_RESULT";
            break;
          case 232:
            v32 = @"RAP_GUIDE";
            break;
          case 233:
            v32 = @"SWITCH_OFF_VOICE_GUIDANCE";
            break;
          case 234:
            v32 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";
            break;
          case 235:
            v32 = @"SELECT_TRANSIT_STEP";
            break;
          case 236:
            v32 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";
            break;
          case 237:
            v32 = @"TAP_SEE_MORE";
            break;
          case 238:
            v32 = @"RAP_IN_REVIEW";
            break;
          case 239:
            v32 = @"TAP_OPEN_MENU";
            break;
          case 240:
            v32 = @"TAP_NEARBY_TRANSIT";
            break;
          case 241:
            v32 = @"TAP_PIN_LINE";
            break;
          case 242:
            v32 = @"SWITCH_OFF_TRIP_FEEDBACK";
            break;
          case 243:
            v32 = @"RAP_GOOD_TRIP";
            break;
          case 244:
            v32 = @"TAP_FILTERED_CURATED_COLLECTION";
            break;
          case 245:
            v32 = @"SHARE_MY_LOCATION";
            break;
          case 246:
            v32 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";
            break;
          case 247:
            v32 = @"DISPLAY_GENERIC_ADVISORY";
            break;
          case 248:
            v32 = @"ADVISORY_ALERT";
            break;
          case 249:
            v32 = @"PUNCH_OUT_LINK";
            break;
          case 250:
            v32 = @"TAP_GENERIC_ADVISORY";
            break;
          case 251:
            v32 = @"TAP_EXPLORE_MODE";
            break;
          case 252:
            v32 = @"TAP_UNPIN_LINE";
            break;
          case 253:
            v32 = @"MENU_UNPIN";
            break;
          case 254:
            v32 = @"MENU_PIN";
            break;
          case 255:
            v32 = @"SWIPE_PIN";
            break;
          case 256:
            v32 = @"SWIPE_UNPIN";
            break;
          case 257:
            v32 = @"TAP_MEDIA_APP";
            break;
          case 258:
            v32 = @"TAP_GUIDES_SUBACTION";
            break;
          case 259:
            v32 = @"TAP_MEDIA";
            break;
          case 260:
            v32 = @"PUNCH_OUT_MEDIA";
            break;
          case 261:
            v32 = @"SHOW_MEDIA_APP_MENU";
            break;
          case 262:
            v32 = @"SCROLL_RIGHT_RIBBON";
            break;
          case 263:
            v32 = @"SCROLL_LEFT_RIBBON";
            break;
          case 264:
            v32 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";
            break;
          case 265:
            v32 = @"TAP_SHOW_MORE_TEXT";
            break;
          case 266:
            v32 = @"SCROLL_LEFT_RATINGS";
            break;
          case 267:
            v32 = @"SCROLL_LEFT_TEMPLATE_PLACE";
            break;
          case 268:
            v32 = @"SCROLL_RIGHT_TEMPLATE_PLACE";
            break;
          case 269:
            v32 = @"SCROLL_RIGHT_RATINGS";
            break;
          case 270:
            v32 = @"TAP_ALLOW";
            break;
          case 271:
            v32 = @"TAP_GO_TO_SETTING";
            break;
          case 272:
            v32 = @"START_SUBMIT_REPORT";
            break;
          case 273:
            v32 = @"AUTHENTICATION_INFO_FAILURE";
            break;
          case 274:
            v32 = @"SUCCESSFULLY_SUBMIT_REPORT";
            break;
          case 275:
            v32 = @"FAILED_SUBMIT_REPORT";
            break;
          case 276:
            v32 = @"AUTHENTICATION_INFO_SUCCESS";
            break;
          case 277:
            v32 = @"EDIT_WAYPOINT";
            break;
          case 278:
            v32 = @"CLEAR_TEXT";
            break;
          case 279:
            v32 = @"REORDER_WAYPOINT";
            break;
          case 280:
            v32 = @"REMOVE_WAYPOINT";
            break;
          case 281:
            v32 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";
            break;
          case 282:
            v32 = @"TAP_SHOWCASE_MENU";
            break;
          case 283:
            v32 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";
            break;
          case 284:
            v32 = @"TAP_PHOTO_ALBUM";
            break;
          case 285:
            v32 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";
            break;
          case 286:
            v32 = @"RAP_INLINE_ADD";
            break;
          case 287:
            v32 = @"RAP_TAP_EDIT";
            break;
          case 288:
            v32 = @"CLAIM_BUSINESS";
            break;
          case 289:
            v32 = @"RAP_EDIT_OPTIONS";
            break;
          case 290:
            v32 = @"TAP_IN_REVIEW_RAP";
            break;
          case 291:
            v32 = @"ORB_MENU_ADD_STOP";
            break;
          case 292:
            v32 = @"NEXT_STOP";
            break;
          case 293:
            v32 = @"ARRIVE_AT_WAYPOINT";
            break;
          case 294:
            v32 = @"REMOVE_STOP";
            break;
          case 295:
            v32 = @"DISPLAY_PAUSE_BUTTON";
            break;
          case 296:
            v32 = @"DISPLAY_PAUSE_NEXT_BUTTONS";
            break;
          case 297:
            v32 = @"AUTO_ADVANCE_NEXT_STOP";
            break;
          case 298:
            v32 = @"ADD_INLINE_NEGATIVE_RATING";
            break;
          case 299:
            v32 = @"ADD_INLINE_POSITIVE_RATING";
            break;
          case 300:
            v32 = @"TAP_TO_ADD_RATING_AND_PHOTO";
            break;
          case 301:
            v32 = @"SUBMIT_RATINGS_AND_PHOTOS";
            break;
          case 302:
            v32 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";
            break;
          case 303:
            v32 = @"TAP_RECENTLY_VIEWED_ROUTE";
            break;
          case 304:
            v32 = @"SHOW_ALL_RECENTS";
            break;
          case 305:
            v32 = @"RESUME_MULTIPOINT_ROUTE";
            break;
          case 306:
            v32 = @"DISMISS_TRANSIT_TIPKIT";
            break;
          case 307:
            v32 = @"DISPLAY_TRANSIT_TIPKIT";
            break;
          case 308:
            v32 = @"TAP_TRANSIT_TIPKIT";
            break;
          case 309:
            v32 = @"FILTER_EV";
            break;
          case 310:
            v32 = @"FILTER_SURCHARGE";
            break;
          case 311:
            v32 = @"FILTER_PREFER";
            break;
          case 312:
            v32 = @"TAP_WALKING_ANNOTATION";
            break;
          case 313:
            v32 = @"FILTER_AVOID";
            break;
          case 314:
            v32 = @"FILTER_TRANSPORTATION_MODE";
            break;
          case 315:
            v32 = @"FILTER_RECOMMENDED_ROUTES";
            break;
          case 316:
            v32 = @"FILTER_IC_FARES";
            break;
          case 317:
            v32 = @"FILTER_TRANSIT_CARD_FARES";
            break;
          case 318:
            v32 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";
            break;
          case 319:
            v32 = @"TAP_NOTIFICATION_SETTINGS";
            break;
          case 320:
            v32 = @"TAP_ENABLE_NOTIFICATION";
            break;
          case 321:
            v32 = @"ARP_SUGGESTIONS_TURN_OFF";
            break;
          case 322:
            v32 = @"ARP_SUGGESTIONS_TURN_ON";
            break;
          case 323:
            v32 = @"DISMISS_ARP_SUGGESTION";
            break;
          case 324:
            v32 = @"RATINGS_AND_PHOTOS_TURN_ON";
            break;
          case 325:
            v32 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";
            break;
          case 326:
            v32 = @"UNSELECT_SUGGESTED_PHOTOS";
            break;
          case 327:
            v32 = @"SUGGESTED_PHOTOS_SHOWN";
            break;
          case 328:
            v32 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 329:
            v32 = @"TAP_YOUR_PHOTOS_ALBUM";
            break;
          case 330:
            v32 = @"RATINGS_AND_PHOTOS_TURN_OFF";
            break;
          case 331:
            v32 = @"DELETE_PHOTO";
            break;
          case 332:
            v32 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 333:
            v32 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";
            break;
          case 334:
            v32 = @"TAP_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 335:
            v32 = @"DISPLAY_YOUR_PHOTOS_ALBUM";
            break;
          case 336:
            v32 = @"SELECT_SUGGESTED_PHOTOS";
            break;
          case 337:
            v32 = @"ADD_STOP";
            break;
          case 338:
            v32 = @"SHOW_CREDIT_TURN_ON";
            break;
          case 339:
            v32 = @"DISPLAY_ARP_SUGGESTION";
            break;
          case 340:
            v32 = @"TAP_TO_ADD_PHOTO_CREDIT";
            break;
          case 341:
            v32 = @"SHOW_CREDIT_TURN_OFF";
            break;
          case 342:
            v32 = @"TAP_TO_EDIT_NICKNAME";
            break;
          case 343:
            v32 = @"SUBMIT_RATINGS";
            break;
          case 344:
            v32 = @"END_NAV_ON_WATCH";
            break;
          case 345:
            v32 = @"FILTER_EBIKE";
            break;
          case 356:
            v32 = @"ADD_STOP_SIRI";
            break;
          case 357:
            v32 = @"TAP_REVIEWED_RAP";
            break;
          case 358:
            v32 = @"TAP_OUTREACH_RAP";
            break;
          case 359:
            v32 = @"DISPLAY_SUGGESTED_ITEM";
            break;
          case 360:
            v32 = @"DISPLAY_HIKING_TIPKIT";
            break;
          case 361:
            v32 = @"DISMISS_HIKING_TIPKIT";
            break;
          case 362:
            v32 = @"TAP_HIKING_TIPKIT";
            break;
          case 363:
            v32 = @"SCROLL_LEFT_TRAILS";
            break;
          case 364:
            v32 = @"TAP_MORE_TRAILS";
            break;
          case 365:
            v32 = @"TAP_RELATED_TRAIL";
            break;
          case 366:
            v32 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";
            break;
          case 367:
            v32 = @"SCROLL_RIGHT_TRAILS";
            break;
          case 368:
            v32 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            break;
          case 369:
            v32 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";
            break;
          case 370:
            v32 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 371:
            v32 = @"TAP_DOWNLOAD_MAPS_TIPKIT";
            break;
          case 372:
            v32 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 373:
            v32 = @"EXPIRED_MAPS_REMOVED";
            break;
          case 374:
            v32 = @"UPDATE_ALL_DOWNLOAD_MAPS";
            break;
          case 375:
            v32 = @"TAP_EXPIRED_MAPS";
            break;
          case 376:
            v32 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";
            break;
          case 377:
            v32 = @"MOVE_DOWNLOAD_MAPS";
            break;
          case 378:
            v32 = @"SAVE_RENAME_DOWNLOAD_MAPS";
            break;
          case 379:
            v32 = @"TAP_COMPLETE_DOWNLOAD_MAPS";
            break;
          case 380:
            v32 = @"TAP_ENTER_OFFLINE_MAPS";
            break;
          case 381:
            v32 = @"TAP_DOWNLOAD_MAPS";
            break;
          case 382:
            v32 = @"TAP_DOWNLOAD_MAPS_CONTINUE";
            break;
          case 383:
            v32 = @"DELETE_DOWNLOAD_MAPS";
            break;
          case 384:
            v32 = @"SLIDE_CLEAR_EXPIRED_MAPS";
            break;
          case 385:
            v32 = @"RENAME_DOWNLOAD_MAPS";
            break;
          case 386:
            v32 = @"RESIZE_DOWNLOAD_MAPS";
            break;
          case 387:
            v32 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";
            break;
          case 388:
            v32 = @"RESTORE_EXPIRED_MAPS";
            break;
          case 389:
            v32 = @"CLEAR_EXPIRED_MAPS";
            break;
          case 390:
            v32 = @"TAP_USING_OFFLINE_BAR";
            break;
          case 391:
            v32 = @"UPDATE_DOWNLOAD_MAPS";
            break;
          case 392:
            v32 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";
            break;
          case 393:
            v32 = @"DISPLAY_DOWNLOAD_MAPS";
            break;
          case 394:
            v32 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";
            break;
          case 395:
            v32 = @"DISPLAY_EXPIRED_MAPS";
            break;
          case 396:
            v32 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            break;
          case 397:
            v32 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";
            break;
          case 398:
            v32 = @"SLIDE_RESTORE_EXPIRED_MAPS";
            break;
          case 399:
            v32 = @"ETA_SHARE_TRAY_TIMEOUT";
            break;
          case 400:
            v32 = @"START_ETA_SHARING";
            break;
          case 401:
            v32 = @"PERSON_LOCATION_UPDATE";
            break;
          case 402:
            v32 = @"STOP_ETA_SHARING";
            break;
          case 403:
            v32 = @"PUNCH_OUT_TO_FINDMY";
            break;
          case 404:
            v32 = @"TAP_PEOPLE_LOCATION";
            break;
          case 405:
            v32 = @"TAP_TO_REQUEST_LOCATION";
            break;
          case 406:
            v32 = @"ZOOM_OUT_CROWN";
            break;
          case 407:
            v32 = @"TAP_RESIZE_DOWNLOAD_MAPS";
            break;
          case 408:
            v32 = @"TAP_DELETE_DOWNLOAD_MAPS";
            break;
          case 409:
            v32 = @"SELECT_LIST_VIEW";
            break;
          case 410:
            v32 = @"SCROLL_RIGHT_TRAILHEADS";
            break;
          case 411:
            v32 = @"SWITCH_TO_ONLINE_MODE";
            break;
          case 412:
            v32 = @"TAP_RELATED_TRAILHEAD";
            break;
          case 413:
            v32 = @"SELECT_ELEVATION_VIEW";
            break;
          case 414:
            v32 = @"TOGGLE_PROXIMITY_RADIUS_ON";
            break;
          case 415:
            v32 = @"SEE_MORE_RECENTS";
            break;
          case 416:
            v32 = @"SEE_MORE_GUIDES";
            break;
          case 417:
            v32 = @"SELECT_CONTROLS";
            break;
          case 418:
            v32 = @"NO_SEARCH_RESULTS";
            break;
          case 419:
            v32 = @"TAP_VIEW_RESULTS_CAROUSEL";
            break;
          case 420:
            v32 = @"TAP_VIEW_RESULTS_LIST";
            break;
          case 421:
            v32 = @"SELECT_MAP_VIEW";
            break;
          case 422:
            v32 = @"SCROLL_LEFT_TRAILHEADS";
            break;
          case 423:
            v32 = @"SWITCH_TO_OFFLINE_MODE";
            break;
          case 424:
            v32 = @"ZOOM_IN_CROWN";
            break;
          case 425:
            v32 = @"TOGGLE_PROXIMITY_RADIUS_OFF";
            break;
          case 426:
            v32 = @"TAP_MAP";
            break;
          case 427:
            v32 = @"SWIPE_DOWN";
            break;
          case 428:
            v32 = @"TAP_MORE_TRAILHEADS";
            break;
          case 429:
            v32 = @"TAP_ROUTE_OPTIONS";
            break;
          case 430:
            v32 = @"TAP_ROUTE_NAV_MAP";
            break;
          case 431:
            v32 = @"TAP_ROUTE_OVERVIEW_MAP";
            break;
          case 432:
            v32 = @"TAP_AUDIO";
            break;
          case 433:
            v32 = @"TAP_OPEN_PLACECARD";
            break;
          case 434:
            v32 = @"TAP_VIEW_STOPS";
            break;
          case 435:
            v32 = @"TAP_ROUTE_DETAILS";
            break;
          case 436:
            v32 = @"ADD_LPR_VEHICLE";
            break;
          case 437:
            v32 = @"TAP_ADD_VEHICLE";
            break;
          case 438:
            v32 = @"TAP_PLUG_TYPE";
            break;
          case 439:
            v32 = @"UNSELECT_SUGGESTED_NETWORK";
            break;
          case 440:
            v32 = @"TAP_SET_UP_LATER";
            break;
          case 441:
            v32 = @"ADD_EV_VEHICLE";
            break;
          case 442:
            v32 = @"UPDATE_COLOR";
            break;
          case 443:
            v32 = @"SELECT_OTHER_NETWORK";
            break;
          case 444:
            v32 = @"UNSELECT_NETWORK";
            break;
          case 445:
            v32 = @"TAP_BACK";
            break;
          case 446:
            v32 = @"TAP_CANCEL";
            break;
          case 447:
            v32 = @"UNSELECT_VEHICLE";
            break;
          case 448:
            v32 = @"UNSELECT_OTHER_NETWORK";
            break;
          case 449:
            v32 = @"DISPLAY_EV_TIPKIT";
            break;
          case 450:
            v32 = @"SELECT_NETWORK";
            break;
          case 451:
            v32 = @"TAP_EV_TIPKIT";
            break;
          case 452:
            v32 = @"TAP_CHOOSE_NETWORKS";
            break;
          case 453:
            v32 = @"TAP_ADD_NETWORK";
            break;
          case 454:
            v32 = @"FILTER_NETWORK";
            break;
          case 455:
            v32 = @"SELECT_SUGGESTED_NETWORK";
            break;
          case 456:
            v32 = @"TRANSIT_TO_WALKING";
            break;
          case 457:
            v32 = @"TRANSIT_TO_FINDMY";
            break;
          case 458:
            v32 = @"TAP_AC_KEYBOARD";
            break;
          case 459:
            v32 = @"REACH_PHOTO_STRIP_END";
            break;
          case 460:
            v32 = @"SEARCH_HERE_REVEAL";
            break;
          case 461:
            v32 = @"TAP_SEARCH_HERE";
            break;
          case 462:
            v32 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";
            break;
          case 463:
            v32 = @"SAVE";
            break;
          case 464:
            v32 = @"TAP_MORE_CURATED_HIKES";
            break;
          case 465:
            v32 = @"CREATE_CUSTOM_ROUTE";
            break;
          case 466:
            v32 = @"TAP_TRY_NOW";
            break;
          case 467:
            v32 = @"TAP_CURATED_HIKE";
            break;
          case 468:
            v32 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";
            break;
          case 469:
            v32 = @"ADD_TO_LIBRARY";
            break;
          case 470:
            v32 = @"START_HIKING";
            break;
          case 471:
            v32 = @"EDIT_NOTE";
            break;
          case 472:
            v32 = @"CREATE_NOTE";
            break;
          case 473:
            v32 = @"DELETE_PIN";
            break;
          case 474:
            v32 = @"ADD_ROUTE";
            break;
          case 475:
            v32 = @"ADD_PIN";
            break;
          case 476:
            v32 = @"REMOVE_FROM_COLLECTION";
            break;
          case 477:
            v32 = @"REMOVE_FROM_LIBRARY";
            break;
          case 478:
            v32 = @"TAP_ITEM";
            break;
          case 479:
            v32 = @"DELETE_ROUTE";
            break;
          case 480:
            v32 = @"TAP_ROUTE";
            break;
          case 481:
            v32 = @"TAP_DOWNLOAD_WATCH_MAPS";
            break;
          case 482:
            v32 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            break;
          case 483:
            v32 = @"STOP_DOWNLOAD_ONTO_WATCH";
            break;
          case 484:
            v32 = @"TAP_DOWNLOAD_ONTO_WATCH";
            break;
          case 485:
            v32 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            break;
          case 486:
            v32 = @"TAP_DOWNLOAD_NOW_WATCH";
            break;
          case 487:
            v32 = @"REVEAL_DETECTION_LIST";
            break;
          case 488:
            v32 = @"TAP_RECOMMENDATION";
            break;
          case 489:
            v32 = @"TAP_EXPAND";
            break;
          case 490:
            v32 = @"EXPAND_DETECTION_LIST";
            break;
          case 491:
            v32 = @"FIRST_PARTY_MAP_VIEW";
            break;
          case 492:
            v32 = @"SECOND_PARTY_MAP_VIEW";
            break;
          case 493:
            v32 = @"THIRD_PARTY_MAP_VIEW";
            break;
          case 494:
            v32 = @"DAEMON_PARTY_MAP_VIEW";
            break;
          case 495:
            v32 = @"MAPS_APP_DWELL_TIME_3_SEC";
            break;
          case 496:
            v32 = @"MAPS_APP_DWELL_TIME_30_SEC";
            break;
          case 497:
            v32 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";
            break;
          case 498:
            v32 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";
            break;
          case 499:
            v32 = @"DISPLAY_DOOM";
            break;
          case 500:
            v32 = @"TAP_DOOM";
            break;
          case 501:
            v32 = @"TAP_ROUTE_GENIUS";
            break;
          case 502:
            v32 = @"DISPLAY_ROUTE_GENIUS";
            break;
          case 503:
            v32 = @"TAP_WIDGET";
            break;
          case 504:
            v32 = @"ARRIVE_AT_DESTINATION";
            break;
          case 505:
            v32 = @"DISPLAY_WIDGET";
            break;
          case 506:
            v32 = @"CLEAR_HISTORY";
            break;
          case 507:
            v32 = @"TAP_SECTION";
            break;
          case 508:
            v32 = @"APPROVE_LOCATION";
            break;
          case 509:
            v32 = @"DISMISS_VISITED_PLACES_TIPKIT";
            break;
          case 510:
            v32 = @"DISPLAY_VISITED_PLACES_TIPKIT";
            break;
          case 511:
            v32 = @"MORE_OPTIONS";
            break;
          case 512:
            v32 = @"TAP_VISITED_PLACES_AVAILABLE";
            break;
          case 513:
            v32 = @"AUTO_REFRESH_SEARCH";
            break;
          case 514:
            v32 = @"REMOVE_VISIT";
            break;
          case 515:
            v32 = @"WRONG_LOCATION";
            break;
          case 516:
            v32 = @"CONFIRM";
            break;
          case 517:
            v32 = @"KEEP_HISTORY";
            break;
          case 518:
            v32 = @"DISPLAY_VISITED_PLACES_AVAILABLE";
            break;
          case 519:
            v32 = @"REMOVE";
            break;
          case 520:
            v32 = @"ALLOW";
            break;
          case 521:
            v32 = @"DONT_ALLOW";
            break;
          case 522:
            v32 = @"REMOVE_EVERY_VISIT";
            break;
          case 523:
            v32 = @"CONTINUE_VISITED_PLACES_TIPKIT";
            break;
          case 524:
            v32 = @"REMOVE_FROM_FAVORITE_GUIDE";
            break;
          case 525:
            v32 = @"ADD_TO_FAVORITE_GUIDE";
            break;
          case 526:
            v32 = @"FAMILIAR_ROUTE_DISPLAYED";
            break;
          case 527:
            v32 = @"FAMILIAR_ROUTE_NAV_STARTED";
            break;
          case 528:
            v32 = @"SELECT_AUDIO_VOLUME_LOUDER";
            break;
          case 529:
            v32 = @"SELECT_AUDIO_VOLUME_SOFTER";
            break;
          case 1001:
            v32 = @"PAN";
            break;
          case 1002:
            v32 = @"ZOOM_IN";
            break;
          case 1003:
            v32 = @"ZOOM_OUT";
            break;
          case 1004:
            v32 = @"ROTATE";
            break;
          case 1010:
            v32 = @"TAP_POI";
            break;
          case 1011:
            v32 = @"TAP_POI_TRANSIT";
            break;
          case 1017:
            v32 = @"TAP_POI_HIGHLIGHTED";
            break;
          case 1018:
            v32 = @"TAP_POI_CLUSTERED";
            break;
          case 1020:
            v32 = @"TAP_POI_DROPPED_PIN";
            break;
          case 1030:
            v32 = @"DROP_PIN";
            break;
          case 1031:
            v32 = @"TAP_INCIDENT";
            break;
          case 1032:
            v32 = @"TAP_TRANSIT_LINE";
            break;
          case 1033:
            v32 = @"TAP_POI_CALENDAR";
            break;
          case 1034:
            v32 = @"TAP_POI_CURRENT_LOCATION";
            break;
          case 1035:
            v32 = @"TAP_POI_TRANSIT_LINE";
            break;
          case 1036:
            v32 = @"TAP_POI_LANDMARK";
            break;
          case 1037:
            v32 = @"TAP_POI_FLYOVER";
            break;
          case 1038:
            v32 = @"TAP_TO_HIDE_TRAY";
            break;
          case 1039:
            v32 = @"TAP_TO_REVEAL_TRAY";
            break;
          case 1040:
            v32 = @"TAP_COMPASS";
            break;
          case 1041:
            v32 = @"PITCH_AWAY_FROM_GROUND";
            break;
          case 1042:
            v32 = @"PITCH_CLOSER_TO_GROUND";
            break;
          case 1043:
            v32 = @"ZOOM_IN_PINCH";
            break;
          case 1044:
            v32 = @"ZOOM_OUT_PINCH";
            break;
          case 1045:
            v32 = @"ZOOM_IN_DOUBLE_TAP";
            break;
          case 1046:
            v32 = @"ZOOM_OUT_TWO_FINGER_TAP";
            break;
          case 1047:
            v32 = @"ZOOM_IN_ONE_FINGER";
            break;
          case 1048:
            v32 = @"ZOOM_OUT_ONE_FINGER";
            break;
          case 1049:
            v32 = @"ZOOM_IN_BUTTON";
            break;
          case 1050:
            v32 = @"ZOOM_OUT_BUTTON";
            break;
          case 1051:
            v32 = @"TAP_TRAFFIC_CAMERA";
            break;
          case 1052:
            v32 = @"DISPLAY_INDOOR_MAP_BUTTON";
            break;
          case 1053:
            v32 = @"OPEN_INDOOR_MAP";
            break;
          case 1054:
            v32 = @"DISPLAY_VENUE_BROWSE_BUTTON";
            break;
          case 1055:
            v32 = @"TAP_VENUE_BROWSE_BUTTON";
            break;
          case 1056:
            v32 = @"ENTER_VENUE_EXPERIENCE";
            break;
          case 1057:
            v32 = @"EXIT_VENUE_EXPERIENCE";
            break;
          case 1058:
            v32 = @"ZOOM_IN_SCENE_PINCH";
            break;
          case 1059:
            v32 = @"ZOOM_OUT_SCENE_PINCH";
            break;
          case 1060:
            v32 = @"ZOOM_RESET";
            break;
          case 1061:
            v32 = @"TAP_SCENE_UNAVAILABLE_AREA";
            break;
          case 1062:
            v32 = @"TAP_TRANSIT_ACCESS_POINT";
            break;
          case 1063:
            v32 = @"TAP_SPEED_CAMERA";
            break;
          case 1064:
            v32 = @"TAP_RED_LIGHT_CAMERA";
            break;
          case 1065:
            v32 = @"TAP_GEO";
            break;
          default:
            if (v16 != 1500)
            {
              goto LABEL_215;
            }

            v32 = @"TAP_PLAY_SOUND";
            break;
        }
      }

      goto LABEL_1425;
    }

    if (v16 > 9000)
    {
      if (v16 <= 12000)
      {
        switch(v16)
        {
          case 10101:
            v32 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";
            break;
          case 10102:
            v32 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";
            break;
          case 10103:
            v32 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";
            break;
          case 10104:
            v32 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";
            break;
          case 10105:
            v32 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";
            break;
          case 10106:
            v32 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";
            break;
          case 10107:
            v32 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";
            break;
          case 10108:
            v32 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";
            break;
          case 10109:
            v32 = @"RAP_CANCEL";
            break;
          case 10110:
            v32 = @"RAP_NEXT";
            break;
          case 10111:
            v32 = @"RAP_BACK";
            break;
          case 10112:
            v32 = @"RAP_SEND";
            break;
          case 10113:
            v32 = @"RAP_SKIP";
            break;
          case 10114:
            v32 = @"RAP_SHOW_MORE";
            break;
          case 10115:
            v32 = @"RAP_ADD_PHOTO";
            break;
          case 10116:
            v32 = @"RAP_MAP_INCORRECT";
            break;
          case 10117:
            v32 = @"RAP_BAD_DIRECTIONS";
            break;
          case 10118:
            v32 = @"RAP_TRANSIT_INFO_INCORRECT";
            break;
          case 10119:
            v32 = @"RAP_SATELLITE_IMAGE_PROBLEM";
            break;
          case 10120:
            v32 = @"RAP_SEARCH_RESULTS_INCORRECT";
            break;
          case 10121:
            v32 = @"RAP_ADD_A_PLACE";
            break;
          case 10122:
            v32 = @"RAP_HOME";
            break;
          case 10123:
            v32 = @"RAP_WORK";
            break;
          case 10124:
            v32 = @"RAP_OTHER";
            break;
          case 10125:
            v32 = @"RAP_LOCATION";
            break;
          case 10126:
            v32 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";
            break;
          case 10127:
            v32 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";
            break;
          case 10128:
            v32 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";
            break;
          case 10129:
            v32 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";
            break;
          case 10130:
            v32 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";
            break;
          case 10131:
            v32 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";
            break;
          case 10132:
            v32 = @"RAP_TRANSIT_DELAY";
            break;
          case 10133:
            v32 = @"RAP_LOCATION_CLOSED";
            break;
          case 10134:
            v32 = @"RAP_CLOSED_PERMANENTLY";
            break;
          case 10135:
            v32 = @"RAP_CLOSED_TEMPORARILY";
            break;
          case 10136:
            v32 = @"RAP_HOURS_HAVE_CHANGED";
            break;
          case 10137:
            v32 = @"RAP_SELECT_STATION";
            break;
          case 10138:
            v32 = @"RAP_SELECT_LINE";
            break;
          case 10139:
            v32 = @"RAP_SELECT_ACCESS_POINT";
            break;
          case 10140:
            v32 = @"RAP_SELECT_SEARCH";
            break;
          case 10141:
            v32 = @"RAP_PAN_MAP";
            break;
          case 10142:
            v32 = @"RAP_CENTER_MAP_ON_USER";
            break;
          case 10143:
            v32 = @"RAP_SEARCH_UNEXPECTED";
            break;
          case 10144:
            v32 = @"RAP_ADD_POI";
            break;
          case 10145:
            v32 = @"RAP_ADD_STREET_ADDRESS";
            break;
          case 10146:
            v32 = @"RAP_ADD_OTHER";
            break;
          case 10147:
            v32 = @"RAP_SELECT_CATEGORY";
            break;
          case 10148:
            v32 = @"RAP_TAKE_PHOTO";
            break;
          case 10149:
            v32 = @"RAP_RETAKE_PHOTO";
            break;
          case 10150:
            v32 = @"RAP_PLACE_DETAILS";
            break;
          case 10151:
            v32 = @"RAP_SATELLITE_IMAGE_OUTDATED";
            break;
          case 10152:
            v32 = @"RAP_SATELLITE_IMAGE_QUALITY";
            break;
          case 10153:
            v32 = @"RAP_SELECT_LABEL";
            break;
          case 10154:
            v32 = @"RAP_SELECT_ROUTE";
            break;
          case 10155:
            v32 = @"RAP_CLAIM_BUSINESS";
            break;
          case 10156:
            v32 = @"RAP_BRAND_DETAILS";
            break;
          case 10157:
            v32 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";
            break;
          case 10158:
            v32 = @"RAP_LOOK_AROUND_LABELS_STREET";
            break;
          case 10159:
            v32 = @"RAP_LOOK_AROUND_BLURRING";
            break;
          case 10160:
            v32 = @"RAP_LOOK_AROUND_REMOVE_HOME";
            break;
          case 10161:
            v32 = @"RAP_LOOK_AROUND_LABELS_STORE";
            break;
          case 10162:
            v32 = @"RAP_LOOK_AROUND_PRIVACY";
            break;
          case 10163:
            v32 = @"RAP_INCORRECT_HOURS";
            break;
          case 10164:
            v32 = @"RAP_INCORRECT_ADDRESS";
            break;
          case 10165:
            v32 = @"RAP_EDIT_PLACE_DETAILS";
            break;
          case 10166:
            v32 = @"RAP_EDIT_PLACE_NAME";
            break;
          case 10167:
            v32 = @"RAP_EDIT_ADDRESS";
            break;
          case 10168:
            v32 = @"RAP_ADD_CATEGORY";
            break;
          case 10169:
            v32 = @"RAP_REMOVE_CATEGORY";
            break;
          case 10170:
            v32 = @"RAP_DESELECT_CATEGORY";
            break;
          case 10171:
            v32 = @"RAP_ADD_HOURS";
            break;
          case 10172:
            v32 = @"RAP_REMOVE_HOURS";
            break;
          case 10173:
            v32 = @"RAP_TAP_DAY_OF_WEEK";
            break;
          case 10174:
            v32 = @"RAP_TAP_24_HOURS_BUTTON";
            break;
          case 10175:
            v32 = @"RAP_TAP_OPEN_TIME";
            break;
          case 10176:
            v32 = @"RAP_TAP_CLOSED_TIME";
            break;
          case 10177:
            v32 = @"RAP_TAP_TEMPORARY_CLOSURE";
            break;
          case 10178:
            v32 = @"RAP_TAP_PERMANENTLY_CLOSED";
            break;
          case 10179:
            v32 = @"RAP_EDIT_WEBSITE";
            break;
          case 10180:
            v32 = @"RAP_EDIT_PHONE_NUMBER";
            break;
          case 10181:
            v32 = @"RAP_TAP_ACCEPTS_APPLE_PAY";
            break;
          case 10182:
            v32 = @"RAP_ADD_COMMENTS";
            break;
          case 10183:
            v32 = @"RAP_EDIT_LOCATION";
            break;
          case 10184:
            v32 = @"RAP_VIEW_LOCATION";
            break;
          case 10185:
            v32 = @"RAP_ZOOM_IN";
            break;
          case 10186:
            v32 = @"RAP_ZOOM_OUT";
            break;
          case 10187:
            v32 = @"RAP_VIEW_ENTRY_POINTS";
            break;
          case 10188:
            v32 = @"RAP_EDIT_EXISTING_ENTRY_POINT";
            break;
          case 10189:
            v32 = @"RAP_ADD_NEW_ENTRY_POINT";
            break;
          case 10190:
            v32 = @"RAP_REMOVE_ENTRY_POINT";
            break;
          case 10191:
            v32 = @"RAP_SELECT_ENTRY_POINT_TYPE";
            break;
          default:
            switch(v16)
            {
              case 9001:
                v32 = @"TAP_WIDGET_ITEM";
                break;
              case 9002:
                v32 = @"DISPLAY_NOTIFICATION";
                break;
              case 9003:
                v32 = @"TAP_NOTIFICATION";
                break;
              case 9004:
                v32 = @"EXPAND_NOTIFICATION";
                break;
              case 9005:
                v32 = @"DISMISS_NOTIFICATION";
                break;
              case 9006:
                v32 = @"OPEN_SEARCH";
                break;
              case 9007:
                v32 = @"OPEN_PAN_VIEW";
                break;
              case 9008:
                v32 = @"PAN_LEFT";
                break;
              case 9009:
                v32 = @"PAN_UP";
                break;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_215;
              case 9011:
                v32 = @"PAN_DOWN";
                break;
              case 9012:
                v32 = @"TAP_RECENT_DESTINATIONS";
                break;
              case 9013:
                v32 = @"OPEN_DESTINATIONS";
                break;
              case 9014:
                v32 = @"OPEN_FAVORITES";
                break;
              case 9015:
                v32 = @"VIEW_NAV_OPTIONS";
                break;
              case 9016:
                v32 = @"START_NAV_NO_GUIDANCE";
                break;
              case 9017:
                v32 = @"TURN_OFF_GUIDANCE";
                break;
              case 9018:
                v32 = @"TURN_ON_GUIDANCE";
                break;
              case 9019:
                v32 = @"OPEN_KEYBOARD";
                break;
              case 9020:
                v32 = @"SHARE_DESTINATION";
                break;
              case 9021:
                v32 = @"START_NAV_AUTOMATED";
                break;
              case 9022:
                v32 = @"SHARE_ETA";
                break;
              case 9023:
                v32 = @"SELECT_GROUP";
                break;
              case 9024:
                v32 = @"DESELECT_GROUP";
                break;
              case 9025:
                v32 = @"SELECT_CONTACT";
                break;
              case 9026:
                v32 = @"DESELECT_CONTACT";
                break;
              case 9027:
                v32 = @"TAP_VIEW_CONTACTS";
                break;
              case 9028:
                v32 = @"STOP_RECEIVING_ETA";
                break;
              case 9029:
                v32 = @"DISPLAY_ANNOUNCEMENT";
                break;
              case 9030:
                v32 = @"TAP_ANNOUNCEMENT";
                break;
              case 9031:
                v32 = @"DISPLAY_CYCLING_NOTIFICATION";
                break;
              case 9032:
                v32 = @"TAP_CYCLING_NOTIFICATION";
                break;
              case 9033:
                v32 = @"SHARE_CYCLING_ETA";
                break;
              case 9034:
                v32 = @"MANAGE_NOTIFICATIONS";
                break;
              case 9035:
                v32 = @"PUNCH_OUT_PUBLISHER_REVIEW";
                break;
              case 9036:
                v32 = @"SCROLL_FORWARD";
                break;
              case 9037:
                v32 = @"SCROLL_BACKWARD";
                break;
              case 9038:
                v32 = @"SHOW_ALL_CURATED_COLLECTIONS";
                break;
              case 9039:
                v32 = @"TAP_LESS";
                break;
              case 9040:
                v32 = @"TAP_MORE";
                break;
              case 9101:
                v32 = @"DISPLAY_ADD_HOME_AND_WORK";
                break;
              case 9102:
                v32 = @"TAP_ADD_HOME_AND_WORK";
                break;
              case 9103:
                v32 = @"DISPLAY_ALLOW_FREQUENTS";
                break;
              case 9104:
                v32 = @"TAP_ALLOW_FREQUENTS";
                break;
              case 9105:
                v32 = @"DISPLAY_ALLOW_LOCATION";
                break;
              case 9106:
                v32 = @"TAP_ALLOW_LOCATION";
                break;
              default:
                switch(v16)
                {
                  case 11001:
                    v32 = @"EXIT_MAPS_LOWER_WRIST";
                    break;
                  case 11002:
                    v32 = @"TASK_READY";
                    break;
                  case 11003:
                    v32 = @"TAP_SEARCH";
                    break;
                  case 11004:
                    v32 = @"TAP_MY_LOCATION";
                    break;
                  case 11005:
                    v32 = @"SHOW_NEARBY";
                    break;
                  case 11006:
                    v32 = @"TAP_NEARBY";
                    break;
                  case 11007:
                    v32 = @"TAP_PROACTIVE";
                    break;
                  case 11008:
                    v32 = @"FORCE_PRESS";
                    break;
                  case 11009:
                    v32 = @"TAP_CONTACTS";
                    break;
                  case 11010:
                    v32 = @"TAP_TRANSIT";
                    break;
                  case 11011:
                    v32 = @"TAP_DICTATION";
                    break;
                  case 11012:
                    v32 = @"GET_DIRECTIONS_DRIVING";
                    break;
                  case 11013:
                    v32 = @"GET_DIRECTIONS_WALKING";
                    break;
                  case 11014:
                    v32 = @"GET_DIRECTIONS_TRANSIT";
                    break;
                  case 11015:
                    v32 = @"OPEN_STANDARD_MAP";
                    break;
                  case 11016:
                    v32 = @"OPEN_TRANSIT_MAP";
                    break;
                  case 11017:
                    v32 = @"START_NAV_AUTO";
                    break;
                  case 11018:
                    v32 = @"TAP_RECENT";
                    break;
                  case 11019:
                    v32 = @"TAP_FAVORITE";
                    break;
                  case 11020:
                    v32 = @"TAP_SCRIBBLE";
                    break;
                  case 11021:
                    v32 = @"TAP_VIEW_MAP";
                    break;
                  case 11022:
                    v32 = @"TAP_VIEW_TBT";
                    break;
                  case 11023:
                    v32 = @"VIEW_ROUTE_INFO";
                    break;
                  case 11024:
                    v32 = @"NAV_UNMUTE";
                    break;
                  case 11025:
                    v32 = @"NAV_MUTE";
                    break;
                  case 11026:
                    v32 = @"GET_DIRECTIONS_CYCLING";
                    break;
                  case 11027:
                    v32 = @"TAP_SEARCH_HOME";
                    break;
                  case 11028:
                    v32 = @"ROUTE_PAUSED_ON_WATCH";
                    break;
                  case 11029:
                    v32 = @"NEXT_STOP_TAPPED_ON_WATCH";
                    break;
                  default:
                    goto LABEL_215;
                }

                break;
            }

            break;
        }

        goto LABEL_1425;
      }

      if (v16 > 16000)
      {
        switch(v16)
        {
          case 17001:
            v32 = @"START_DRAG";
            goto LABEL_1424;
          case 17002:
            v32 = @"CANCEL_DRAG";
            goto LABEL_1424;
          case 17003:
            v32 = @"COMPLETE_DRAG";
            goto LABEL_1424;
          case 17004:
            v32 = @"START_DROP";
            goto LABEL_1424;
          case 17005:
            v32 = @"CANCEL_DROP";
            goto LABEL_1424;
          case 17006:
            v32 = @"COMPLETE_DROP";
            goto LABEL_1424;
          case 17007:
            v32 = @"ANNOTATION_SELECT";
            goto LABEL_1424;
          case 17008:
            v32 = @"ANNOTATION_SELECT_AUTO";
            goto LABEL_1424;
          case 17009:
            v32 = @"ANNOTATION_SELECT_LIST";
            goto LABEL_1424;
          case 17010:
            v32 = @"BROWSE_TOP_CATEGORY_DISPLAYED";
            goto LABEL_1424;
          case 17011:
            v32 = @"CALLOUT_FLYOVER_TOUR";
            goto LABEL_1424;
          case 17012:
            v32 = @"CALLOUT_INFO";
            goto LABEL_1424;
          case 17013:
            v32 = @"CALLOUT_NAV_TRANSIT";
            goto LABEL_1424;
          case 17014:
            v32 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";
            goto LABEL_1424;
          case 17015:
            v32 = @"CALLOUT_VIEW_TRANSIT_LINE";
            goto LABEL_1424;
          case 17016:
            v32 = @"DIRECTIONS_SELECT";
            goto LABEL_1424;
          case 17017:
            v32 = @"DIRECTIONS_TRANSIT_CUSTOM";
            goto LABEL_1424;
          case 17018:
            v32 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";
            goto LABEL_1424;
          case 17019:
            v32 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";
            goto LABEL_1424;
          case 17020:
            v32 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";
            goto LABEL_1424;
          case 17021:
            v32 = @"DIRECTIONS_TRANSIT_LATER";
            goto LABEL_1424;
          case 17022:
            v32 = @"DIRECTIONS_TRANSIT_NOW";
            goto LABEL_1424;
          case 17023:
            v32 = @"FLYOVER_NOTIFICATION_DISMISS";
            goto LABEL_1424;
          case 17024:
            v32 = @"FLYOVER_NOTIFICATION_START";
            goto LABEL_1424;
          case 17025:
            v32 = @"FLYOVER_TOUR_COMPLETED";
            goto LABEL_1424;
          case 17026:
            v32 = @"FLYOVER_TOUR_END";
            goto LABEL_1424;
          case 17027:
            v32 = @"FLYOVER_TOUR_NOTIFICATION";
            goto LABEL_1424;
          case 17028:
            v32 = @"FLYOVER_TOUR_START";
            goto LABEL_1424;
          case 17029:
            v32 = @"INFO_BOOKMARKS";
            goto LABEL_1424;
          case 17030:
            v32 = @"INFO_CARD_DETACHED";
            goto LABEL_1424;
          case 17031:
            v32 = @"INFO_CONTACTS";
            goto LABEL_1424;
          case 17032:
            v32 = @"INFO_DIRECTIONS";
            goto LABEL_1424;
          case 17033:
            v32 = @"INFO_DIRECTIONS_FROM";
            goto LABEL_1424;
          case 17034:
            v32 = @"INFO_DIRECTIONS_TO";
            goto LABEL_1424;
          case 17035:
            v32 = @"INFO_DISMISS";
            goto LABEL_1424;
          case 17036:
            v32 = @"INFO_INFO";
            goto LABEL_1424;
          case 17037:
            v32 = @"INFO_PHOTOS";
            goto LABEL_1424;
          case 17038:
            v32 = @"INFO_REVIEWS";
            goto LABEL_1424;
          case 17039:
            v32 = @"INFO_SHARE";
            goto LABEL_1424;
          case 17040:
            v32 = @"INFO_SHARE_AIRDROP";
            goto LABEL_1424;
          case 17041:
            v32 = @"INFO_SHARE_FACEBOOK";
            goto LABEL_1424;
          case 17042:
            v32 = @"INFO_SHARE_MAIL";
            goto LABEL_1424;
          case 17043:
            v32 = @"INFO_SHARE_MESSAGE";
            goto LABEL_1424;
          case 17044:
            v32 = @"INFO_SHARE_TENCENTWEIBO";
            goto LABEL_1424;
          case 17045:
            v32 = @"INFO_SHARE_WEIBO";
            goto LABEL_1424;
          case 17046:
            v32 = @"INFO_YELP";
            goto LABEL_1424;
          case 17047:
            v32 = @"MAPS_APP_LAUNCH";
            goto LABEL_1424;
          case 17048:
            v32 = @"MAP_3D_OFF";
            goto LABEL_1424;
          case 17049:
            v32 = @"MAP_3D_ON";
            goto LABEL_1424;
          case 17050:
            v32 = @"MAP_OPTIONS_DROP_PIN";
            goto LABEL_1424;
          case 17051:
            v32 = @"MAP_OPTIONS_HYBRID";
            goto LABEL_1424;
          case 17052:
            v32 = @"MAP_OPTIONS_PRINT";
            goto LABEL_1424;
          case 17053:
            v32 = @"MAP_OPTIONS_REMOVE_PIN";
            goto LABEL_1424;
          case 17054:
            v32 = @"MAP_OPTIONS_SATELLITE";
            goto LABEL_1424;
          case 17055:
            v32 = @"MAP_OPTIONS_STANDARD";
            goto LABEL_1424;
          case 17056:
            v32 = @"MAP_OPTIONS_TRAFFIC_HIDE";
            goto LABEL_1424;
          case 17057:
            v32 = @"MAP_OPTIONS_TRAFFIC_SHOW";
            goto LABEL_1424;
          case 17058:
            v32 = @"MAP_OPTIONS_TRANSIT";
            goto LABEL_1424;
          case 17059:
            v32 = @"MAP_TAP_FLYOVER_CITY";
            goto LABEL_1424;
          case 17060:
            v32 = @"MAP_TAP_LINE";
            goto LABEL_1424;
          case 17061:
            v32 = @"MAP_TAP_POI_TRANSIT";
            goto LABEL_1424;
          case 17062:
            v32 = @"MAP_TAP_TRAFFIC_INCIDENT";
            goto LABEL_1424;
          case 17063:
            v32 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";
            goto LABEL_1424;
          case 17064:
            v32 = @"MAP_USER_TRACKING_OFF";
            goto LABEL_1424;
          case 17065:
            v32 = @"MAP_USER_TRACKING_ON";
            goto LABEL_1424;
          case 17066:
            v32 = @"MAP_USER_TRACKING_WITH_HEADING_ON";
            goto LABEL_1424;
          case 17067:
            v32 = @"NAV_CLEAR";
            goto LABEL_1424;
          case 17068:
            v32 = @"NAV_LIST";
            goto LABEL_1424;
          case 17069:
            v32 = @"NAV_ROUTE_STEP_NEXT";
            goto LABEL_1424;
          case 17070:
            v32 = @"NAV_ROUTE_STEP_PREV";
            goto LABEL_1424;
          case 17071:
            v32 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";
            goto LABEL_1424;
          case 17072:
            v32 = @"ORB_DISPLAY_MENU";
            goto LABEL_1424;
          case 17073:
            v32 = @"ORB_MENU_CALL";
            goto LABEL_1424;
          case 17074:
            v32 = @"ORB_MENU_DIRECTIONS";
            goto LABEL_1424;
          case 17075:
            v32 = @"ORB_MENU_DISMISS";
            goto LABEL_1424;
          case 17076:
            v32 = @"ORB_MENU_SHARE";
            goto LABEL_1424;
          case 17077:
            v32 = @"ORB_MENU_SHOW_PLACECARD";
            goto LABEL_1424;
          case 17078:
            v32 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";
            goto LABEL_1424;
          case 17079:
            v32 = @"ORB_MENU_URL";
            goto LABEL_1424;
          case 17080:
            v32 = @"ORB_PRESS";
            goto LABEL_1424;
          case 17081:
            v32 = @"ORB_SPRINGBOARD_MARK_LOCATION";
            goto LABEL_1424;
          case 17082:
            v32 = @"ORB_SPRINGBOARD_SEARCH";
            goto LABEL_1424;
          case 17083:
            v32 = @"ORB_SPRINGBOARD_SHARE_LOCATION";
            goto LABEL_1424;
          case 17084:
            v32 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";
            goto LABEL_1424;
          case 17085:
            v32 = @"RAP_PERMISSION_CANCEL";
            goto LABEL_1424;
          case 17086:
            v32 = @"RAP_PERMISSION_EMAIL_NA";
            goto LABEL_1424;
          case 17087:
            v32 = @"RAP_PERMISSION_EMAIL_OK";
            goto LABEL_1424;
          case 17088:
            v32 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";
            goto LABEL_1424;
          case 17089:
            v32 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";
            goto LABEL_1424;
          case 17090:
            v32 = @"RAP_PERMISSION_OK";
            goto LABEL_1424;
          case 17091:
            v32 = @"SEARCH_BEGIN";
            goto LABEL_1424;
          case 17092:
            v32 = @"SEARCH_CANCEL";
            goto LABEL_1424;
          case 17093:
            v32 = @"SEARCH_SELECT";
            goto LABEL_1424;
          case 17094:
            v32 = @"TRANSIT_LINE_SELECTION_DISMISS";
            goto LABEL_1424;
          case 17095:
            v32 = @"TRANSIT_LINE_SELECTION_VIEW";
            goto LABEL_1424;
          case 17096:
            v32 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";
            goto LABEL_1424;
          case 17097:
            v32 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";
            goto LABEL_1424;
          case 17098:
            v32 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";
            goto LABEL_1424;
          case 17099:
            v32 = @"UNKNOWN_ACTION";
            goto LABEL_1424;
          case 17100:
            v32 = @"INFO_SHARE_TWITTER";
            goto LABEL_1424;
          case 17101:
            v32 = @"INFO_TAP_POPULAR_APP_NEARBY";
            goto LABEL_1424;
          case 17102:
            v32 = @"INFO_DIRECTIONS_WALK";
            goto LABEL_1424;
          case 17103:
            v32 = @"INFO_DIRECTIONS_TRANSIT";
            goto LABEL_1424;
          case 17104:
            v32 = @"INFO_DIRECTIONS_DRIVE";
            goto LABEL_1424;
          case 17105:
            v32 = @"INFO_REPORT_A_PROBLEM";
            goto LABEL_1424;
          case 17106:
            v32 = @"CALLOUT_NAV";
            goto LABEL_1424;
          case 17107:
            v32 = @"RAP_PERMISSION_EMAIL_CANCEL";
            goto LABEL_1424;
          case 17108:
            v32 = @"MAP_TAP_POI";
LABEL_1424:
            v30 = queue;
            goto LABEL_1425;
          default:
            if (v16 == 16001)
            {
              v32 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (v16 != 90010)
              {
                goto LABEL_215;
              }

              v32 = @"PAN_RIGHT";
            }

            break;
        }

        goto LABEL_1425;
      }

      if (v16 <= 13004)
      {
        if (v16 <= 12007)
        {
          if (v16 <= 12003)
          {
            if (v16 == 12001)
            {
              v32 = @"VIEW_MORE_OPTIONS";
            }

            else if (v16 == 12002)
            {
              v32 = @"SELECT_TIME";
            }

            else
            {
              v32 = @"SHOW_NEXT_AVAILABLE";
            }
          }

          else if (v16 > 12005)
          {
            if (v16 == 12006)
            {
              v32 = @"EDIT_BOOKING";
            }

            else
            {
              v32 = @"EDIT_PHONE";
            }
          }

          else if (v16 == 12004)
          {
            v32 = @"DECREASE_TABLE_SIZE";
          }

          else
          {
            v32 = @"INCREASE_TABLE_SIZE";
          }

          goto LABEL_1425;
        }

        if (v16 > 13000)
        {
          if (v16 > 13002)
          {
            if (v16 == 13003)
            {
              v32 = @"SELECT_LABEL";
            }

            else
            {
              v32 = @"DELETE_ADDRESS";
            }
          }

          else if (v16 == 13001)
          {
            v32 = @"SELECT_ADDRESS";
          }

          else
          {
            v32 = @"ADD_ADDRESS";
          }

          goto LABEL_1425;
        }

        switch(v16)
        {
          case 0x2EE8:
            v32 = @"ADD_SPECIAL_REQUEST";
            goto LABEL_1425;
          case 0x2EE9:
            v32 = @"CHANGE_RESERVATION";
            goto LABEL_1425;
          case 0x2EEA:
            v32 = @"LEARN_MORE";
            goto LABEL_1425;
        }
      }

      else if (v16 <= 14004)
      {
        if (v16 > 14000)
        {
          if (v16 > 14002)
          {
            if (v16 == 14003)
            {
              v32 = @"BOOK_RIDE";
            }

            else
            {
              v32 = @"REQUEST_RIDE";
            }
          }

          else if (v16 == 14001)
          {
            v32 = @"VIEW_APP";
          }

          else
          {
            v32 = @"ENABLE";
          }

          goto LABEL_1425;
        }

        switch(v16)
        {
          case 0x32CD:
            v32 = @"EDIT_ITEMS";
            goto LABEL_1425;
          case 0x32CE:
            v32 = @"RAP_FAVORITES";
            goto LABEL_1425;
          case 0x32CF:
            v32 = @"SORT_LIST_ITEM";
            goto LABEL_1425;
        }
      }

      else
      {
        if (v16 <= 14008)
        {
          if (v16 > 14006)
          {
            if (v16 == 14007)
            {
              v32 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v32 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (v16 == 14005)
          {
            v32 = @"CONTACT_DRIVER";
          }

          else
          {
            v32 = @"CHANGE_PAYMENT";
          }

          goto LABEL_1425;
        }

        if (v16 > 15001)
        {
          if (v16 == 15002)
          {
            v32 = @"ORB_POP";
            goto LABEL_1425;
          }

          if (v16 == 15003)
          {
            v32 = @"ORB_DISMISS";
            goto LABEL_1425;
          }
        }

        else
        {
          if (v16 == 14009)
          {
            v32 = @"SUBMIT_TRIP_FEEDBACK";
            goto LABEL_1425;
          }

          if (v16 == 15001)
          {
            v32 = @"ORB_PEEK";
            goto LABEL_1425;
          }
        }
      }

LABEL_215:
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
      goto LABEL_1425;
    }

    if (v16 <= 6002)
    {
      if (v16 > 4001)
      {
        if (v16 <= 4004)
        {
          if (v16 == 4002)
          {
            v32 = @"TAP_HEADING_ON";
          }

          else if (v16 == 4003)
          {
            v32 = @"TAP_HEADING_OFF";
          }

          else
          {
            v32 = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(v16)
          {
            case 5001:
              v32 = @"SHOW_MAPS_SETTINGS";
              break;
            case 5002:
              v32 = @"TAP_STANDARD_MODE";
              break;
            case 5003:
              v32 = @"TAP_TRANSIT_MODE";
              break;
            case 5004:
              v32 = @"TAP_SATELLITE_MODE";
              break;
            case 5005:
              v32 = @"SWITCH_ON_TRAFFIC";
              break;
            case 5006:
              v32 = @"SWITCH_OFF_TRAFFIC";
              break;
            case 5007:
              v32 = @"SWITCH_ON_LABELS";
              break;
            case 5008:
              v32 = @"SWITCH_OFF_LABELS";
              break;
            case 5009:
              v32 = @"SWITCH_ON_3D_MAP";
              break;
            case 5010:
              v32 = @"SWITCH_OFF_3D_MAP";
              break;
            case 5011:
              v32 = @"SWITCH_ON_WEATHER";
              break;
            case 5012:
              v32 = @"SWITCH_OFF_WEATHER";
              break;
            case 5013:
              v32 = @"REPORT_A_PROBLEM";
              break;
            case 5014:
              v32 = @"ADD_PLACE";
              break;
            case 5015:
              goto LABEL_215;
            case 5016:
              v32 = @"TAP_PREFERENCES";
              break;
            case 5017:
              v32 = @"SWITCH_ON_TOLLS";
              break;
            case 5018:
              v32 = @"SWITCH_OFF_TOLLS";
              break;
            case 5019:
              v32 = @"SWITCH_ON_HIGHWAYS";
              break;
            case 5020:
              v32 = @"SWITCH_OFF_HIGHWAYS";
              break;
            case 5021:
              v32 = @"SWITCH_ON_HEADING";
              break;
            case 5022:
              v32 = @"SWITCH_OFF_HEADING";
              break;
            case 5023:
              v32 = @"SWITCH_ON_SPEED_LIMIT";
              break;
            case 5024:
              v32 = @"SWITCH_OFF_SPEED_LIMIT";
              break;
            case 5025:
              v32 = @"ELECT_DRIVING_MODE";
              break;
            case 5026:
              v32 = @"ELECT_WALKING_MODE";
              break;
            case 5027:
              v32 = @"ELECT_TRANSIT_MODE";
              break;
            case 5028:
              v32 = @"ELECT_RIDESHARE_MODE";
              break;
            case 5029:
              v32 = @"SWITCH_ON_FIND_MY_CAR";
              break;
            case 5030:
              v32 = @"SWITCH_OFF_FIND_MY_CAR";
              break;
            case 5031:
              v32 = @"MARK_MY_LOCATION";
              break;
            case 5032:
              v32 = @"TAP_HYBRID_MODE";
              break;
            case 5033:
              v32 = @"CHECK_AVOID_BUSY_ROADS";
              break;
            case 5034:
              v32 = @"UNCHECK_AVOID_BUSY_ROADS";
              break;
            case 5035:
              v32 = @"CHECK_AVOID_HILLS";
              break;
            case 5036:
              v32 = @"UNCHECK_AVOID_HILLS";
              break;
            case 5037:
              v32 = @"CHECK_AVOID_STAIRS";
              break;
            case 5038:
              v32 = @"UNCHECK_AVOID_STAIRS";
              break;
            case 5039:
              v32 = @"ELECT_CYCLING_MODE";
              break;
            default:
              if (v16 == 4005)
              {
                v32 = @"PUCK_SNAP";
              }

              else
              {
                if (v16 != 4006)
                {
                  goto LABEL_215;
                }

                v32 = @"SELECT_FLOOR";
              }

              break;
          }
        }
      }

      else
      {
        switch(v16)
        {
          case 3001:
            v32 = @"START_NAV";
            break;
          case 3002:
            v32 = @"END_NAV";
            break;
          case 3003:
            v32 = @"OPEN_NAV_AUDIO_SETTINGS";
            break;
          case 3004:
            v32 = @"VIEW_DETAILS";
            break;
          case 3005:
            v32 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";
            break;
          case 3006:
            v32 = @"OPEN_ROUTING_EDITOR";
            break;
          case 3007:
            v32 = @"EDIT_ORIGIN";
            break;
          case 3008:
            v32 = @"EDIT_DESTINATION";
            break;
          case 3009:
            v32 = @"SWAP_ORIGIN_DESTINATION";
            break;
          case 3010:
            v32 = @"OPEN_MORE_ROUTES";
            break;
          case 3011:
            v32 = @"SELECT_ROUTING_TYPE_DRIVING";
            break;
          case 3012:
            v32 = @"SELECT_ROUTING_TYPE_WALKING";
            break;
          case 3013:
            v32 = @"SELECT_ROUTING_TYPE_TRANSIT";
            break;
          case 3014:
            v32 = @"SELECT_ROUTING_TYPE_RIDESHARE";
            break;
          case 3015:
            v32 = @"SELECT_ROUTE";
            break;
          case 3016:
            v32 = @"COLLAPSE_STEP_DETAILS_WALK";
            break;
          case 3017:
            v32 = @"EXPAND_STEP_DETAILS_WALK";
            break;
          case 3018:
            v32 = @"COLLAPSE_STEP_DETAILS_TRANSIT";
            break;
          case 3019:
            v32 = @"EXPAND_STEP_DETAILS_TRANSIT";
            break;
          case 3020:
            v32 = @"UNCHECK_BUS";
            break;
          case 3021:
            v32 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";
            break;
          case 3022:
            v32 = @"UNCHECK_COMMUTER_RAIL";
            break;
          case 3023:
            v32 = @"UNCHECK_FERRY";
            break;
          case 3024:
            v32 = @"CHECK_BUS";
            break;
          case 3025:
            v32 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";
            break;
          case 3026:
            v32 = @"CHECK_COMMUTER_RAIL";
            break;
          case 3027:
            v32 = @"CHECK_FERRY";
            break;
          case 3028:
            v32 = @"SELECT_LEAVE_AT";
            break;
          case 3029:
            v32 = @"SELECT_ARRIVE_BY";
            break;
          case 3030:
            v32 = @"SELECT_LEAVE_NOW";
            break;
          case 3031:
            v32 = @"SELECT_DATE_TIME";
            break;
          case 3032:
            v32 = @"SWITCH_ON_IC_FARES";
            break;
          case 3033:
            v32 = @"SWITCH_OFF_IC_FARES";
            break;
          case 3034:
            v32 = @"OPEN_ROUTE_OPTIONS_DATETIME";
            break;
          case 3035:
            v32 = @"OPEN_ROUTE_OPTIONS_TRANSIT";
            break;
          case 3036:
            v32 = @"OPEN_ROUTE_OPTIONS_DRIVING";
            break;
          case 3037:
            v32 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";
            break;
          case 3038:
            v32 = @"REVEAL_FROM_ROUTING";
            break;
          case 3039:
            v32 = @"DISPLAY_ROUTES";
            break;
          case 3040:
            v32 = @"CHECK_RECOMMENDED_ROUTES";
            break;
          case 3041:
            v32 = @"UNCHECK_RECOMMENDED_ROUTES";
            break;
          case 3042:
            v32 = @"CHECK_FASTER_TRIPS";
            break;
          case 3043:
            v32 = @"UNCHECK_FASTER_TRIPS";
            break;
          case 3044:
            v32 = @"CHECK_FEWER_TRANSFERS";
            break;
          case 3045:
            v32 = @"UNCHECK_FEWER_TRANSFERS";
            break;
          case 3046:
            v32 = @"CHECK_LESS_WALKING";
            break;
          case 3047:
            v32 = @"UNCHECK_LESS_WALKING";
            break;
          case 3048:
            v32 = @"OPEN_ROUTE_OPTIONS_CYCLING";
            break;
          case 3049:
            v32 = @"TAP_MORE_ROUTES";
            break;
          case 3050:
            v32 = @"OPEN_NAV_OVERVIEW";
            break;
          case 3051:
            v32 = @"RESUME_NAV_MANEUVER_VIEW";
            break;
          case 3052:
            v32 = @"SELECT_AUDIO_VOLUME_SILENT";
            break;
          case 3053:
            v32 = @"SELECT_AUDIO_VOLUME_LOW";
            break;
          case 3054:
            v32 = @"SELECT_AUDIO_VOLUME_NORMAL";
            break;
          case 3055:
            v32 = @"SELECT_AUDIO_VOLUME_LOUD";
            break;
          case 3056:
            v32 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";
            break;
          case 3057:
            v32 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";
            break;
          case 3058:
            v32 = @"RESUME_PREV_NAV";
            break;
          case 3059:
            v32 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";
            break;
          case 3060:
            v32 = @"ACCEPT_REROUTE";
            break;
          case 3061:
            v32 = @"DISMISS_REROUTE";
            break;
          case 3062:
            v32 = @"ATTEMPT_END_NAV";
            break;
          case 3063:
            v32 = @"DISPLAY_BANNER";
            break;
          case 3064:
            v32 = @"VIEW_BANNER_DETAILS";
            break;
          case 3065:
            v32 = @"ENTER_GUIDANCE";
            break;
          case 3066:
            v32 = @"AUTO_ADVANCE_GUIDANCE";
            break;
          case 3067:
            v32 = @"TAP_OPEN_WALLET";
            break;
          case 3068:
            v32 = @"SELECT_VOICE_GUIDANCE_ALL";
            break;
          case 3069:
            v32 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";
            break;
          case 3070:
            v32 = @"SELECT_VOICE_GUIDANCE_NONE";
            break;
          case 3071:
            v32 = @"DISPLAY_CARD";
            break;
          case 3072:
            v32 = @"RENDER_ROUTE";
            break;
          case 3073:
            v32 = @"DISPLAY_JUNCTION_VIEW";
            break;
          case 3074:
            v32 = @"SELECT_DEPARTURE";
            break;
          case 3075:
            v32 = @"DISPLAY_AR_VIEW_RAISE_BANNER";
            break;
          case 3076:
            v32 = @"DEVICE_RAISE";
            break;
          case 3077:
            v32 = @"ENTER_AR_NAV_VIEW";
            break;
          case 3078:
            v32 = @"EXIT_AR_NAV_VIEW";
            break;
          case 3079:
            v32 = @"AR_CALIBRATION_START";
            break;
          case 3080:
            v32 = @"AR_CALIBRATION_FAILURE";
            break;
          case 3081:
            v32 = @"AR_CALIBRATION_SUCCESS";
            break;
          case 3082:
            v32 = @"DISPLAY_AR_NAV_ARROW";
            break;
          case 3083:
            v32 = @"DISPLAY_AR_NAV_TURN_AROUND";
            break;
          case 3084:
            v32 = @"DISPLAY_GO_OUTSIDE_BANNER";
            break;
          case 3085:
            v32 = @"DISPLAY_AR_DARKNESS_MESSAGE";
            break;
          case 3086:
            v32 = @"DISPLAY_AR_NAV_ENDPOINT";
            break;
          case 3087:
            v32 = @"DISPLAY_ADVISORY_BANNER";
            break;
          case 3088:
            v32 = @"TAP_SHOW_ADVISORY_DETAILS";
            break;
          default:
            if (v16 != 4001)
            {
              goto LABEL_215;
            }

            v32 = @"RECENTER_CURRENT_LOCATION";
            break;
        }
      }
    }

    else if (v16 > 7000)
    {
      if (v16 > 8000)
      {
        if (v16 <= 8005)
        {
          if (v16 <= 8002)
          {
            if (v16 == 8001)
            {
              v32 = @"INVOKE_SIRI_SNIPPET";
            }

            else
            {
              v32 = @"INVOKE_SIRI_DISAMBIGUATION";
            }
          }

          else if (v16 == 8003)
          {
            v32 = @"SHOW_PLACE_DETAILS";
          }

          else if (v16 == 8004)
          {
            v32 = @"ANSWER_REROUTE_SUGGESTION";
          }

          else
          {
            v32 = @"SUGGEST_NAV_REROUTE";
          }

          goto LABEL_1425;
        }

        if (v16 <= 8008)
        {
          if (v16 == 8006)
          {
            v32 = @"GET_NAV_STATUS";
          }

          else if (v16 == 8007)
          {
            v32 = @"REPEAT_NAV_STATUS";
          }

          else
          {
            v32 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }

          goto LABEL_1425;
        }

        switch(v16)
        {
          case 0x1F49:
            v32 = @"INVOKE_SIRI";
            goto LABEL_1425;
          case 0x1F4A:
            v32 = @"DISPLAY_SIRI_ERROR_MESSAGE";
            goto LABEL_1425;
          case 0x1F4B:
            v32 = @"DISPLAY_NO_RESULTS_MESSAGE";
            goto LABEL_1425;
        }

        goto LABEL_215;
      }

      switch(v16)
      {
        case 7001:
          v32 = @"EXPAND_TRANSIT_SYSTEM";
          break;
        case 7002:
          v32 = @"COLLAPSE_TRANSIT_SYSTEM";
          break;
        case 7003:
          v32 = @"SHOW_MORE_DEPARTURES";
          break;
        case 7004:
          v32 = @"VIEW_TRANSIT_LINE";
          break;
        case 7005:
          v32 = @"CANCEL_VIEW_TRANSIT_LINE";
          break;
        case 7006:
          v32 = @"TAP_TRANSIT_ATTRIBUTION";
          break;
        case 7007:
          v32 = @"TAP_TRANSIT_ADVISORY";
          break;
        case 7008:
          v32 = @"MORE_DETAILS_TRANSIT_ADVISORY";
          break;
        case 7009:
          v32 = @"SUBSCRIBE_LINE_INCIDENT";
          break;
        case 7010:
          v32 = @"UNSUBSCRIBE_LINE_INCIDENT";
          break;
        case 7011:
          v32 = @"TAP_NEAREST_STATION";
          break;
        case 7012:
          v32 = @"TAP_NEAREST_STOP";
          break;
        case 7013:
          v32 = @"TAP_CONNECTION";
          break;
        case 7014:
          v32 = @"GET_TICKETS";
          break;
        case 7015:
          v32 = @"OPEN_SCHEDULECARD_DATETIME";
          break;
        case 7016:
          v32 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";
          break;
        case 7017:
          v32 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";
          break;
        case 7018:
          v32 = @"VIEW_ON_MAP";
          break;
        case 7019:
          v32 = @"FORCE_UPDATE_DEPARTURE_INFO";
          break;
        case 7020:
          v32 = @"TAP_TRANSIT_LINE_INFO";
          break;
        case 7021:
          v32 = @"TAP_ATTRIBUTION_CELL";
          break;
        case 7022:
          v32 = @"TAP_NEXT_DEPARTURES";
          break;
        case 7023:
          v32 = @"VIEW_BANNER";
          break;
        case 7024:
          v32 = @"GET_SHOWTIMES";
          break;
        case 7025:
          v32 = @"MAKE_APPOINTMENT";
          break;
        case 7026:
          v32 = @"RESERVE_PARKING";
          break;
        case 7027:
          v32 = @"RESERVE_ROOM";
          break;
        case 7028:
          v32 = @"WAITLIST";
          break;
        case 7029:
          v32 = @"ORDER_TAKEOUT";
          break;
        case 7030:
          v32 = @"RESERVE";
          break;
        default:
          goto LABEL_215;
      }
    }

    else
    {
      switch(v16)
      {
        case 6003:
          v32 = @"GET_DIRECTIONS";
          break;
        case 6004:
          v32 = @"TAP_FLYOVER_TOUR";
          break;
        case 6005:
          v32 = @"REMOVE_PIN";
          break;
        case 6006:
          v32 = @"TAP_PHOTO";
          break;
        case 6007:
          v32 = @"TAP_MAPS_VIEW";
          break;
        case 6008:
          v32 = @"TAP_ADDRESS";
          break;
        case 6009:
          v32 = @"CALL";
          break;
        case 6010:
          v32 = @"TAP_URL";
          break;
        case 6011:
          v32 = @"SHOW_TODAY_HOURS";
          break;
        case 6012:
          v32 = @"SHOW_ALL_HOURS";
          break;
        case 6013:
          v32 = @"SHARE";
          break;
        case 6015:
          v32 = @"ADD_TO_FAVORITES";
          break;
        case 6016:
          v32 = @"ADD_CONTACT";
          break;
        case 6018:
          v32 = @"PUNCH_OUT_PHOTO";
          break;
        case 6019:
          v32 = @"PUNCH_OUT_USEFUL_TO_KNOW";
          break;
        case 6020:
          v32 = @"PUNCH_OUT_OPEN_APP";
          break;
        case 6021:
          v32 = @"PUNCH_OUT_SINGLE_REVIEW";
          break;
        case 6022:
          v32 = @"PUNCH_OUT_CHECK_IN";
          break;
        case 6023:
          v32 = @"PUNCH_OUT_MORE_INFO";
          break;
        case 6024:
          v32 = @"PUNCH_OUT_WRITE_REVIEW";
          break;
        case 6025:
          v32 = @"PUNCH_OUT_ADD_PHOTO";
          break;
        case 6026:
          v32 = @"TAP_GRID_VIEW";
          break;
        case 6027:
          v32 = @"EDIT_LOCATION";
          break;
        case 6029:
          v32 = @"ADD_PHOTO";
          break;
        case 6031:
          v32 = @"RETAKE";
          break;
        case 6032:
          v32 = @"ADD_NOTE";
          break;
        case 6033:
          v32 = @"REMOVE_CAR";
          break;
        case 6034:
          v32 = @"EDIT_NAME";
          break;
        case 6036:
          v32 = @"RESERVE_TABLE";
          break;
        case 6037:
          v32 = @"ADD_TO_QUEUE";
          break;
        case 6038:
          v32 = @"VIEW_BOOKED_TABLE";
          break;
        case 6039:
          v32 = @"VIEW_QUEUED_TABLE";
          break;
        case 6040:
          v32 = @"PUNCH_OUT_THIRD_PARTY_APP";
          break;
        case 6041:
          v32 = @"PUNCH_OUT_LEGAL_LINK";
          break;
        case 6042:
          v32 = @"TAP_PLACECARD_HEADER";
          break;
        case 6043:
          v32 = @"REMOVE_FROM_FAVORITES";
          break;
        case 6044:
          v32 = @"VIEW_CONTACT";
          break;
        case 6045:
          v32 = @"CHAT";
          break;
        case 6046:
          v32 = @"FIND_STORES";
          break;
        case 6047:
          v32 = @"TAP_PARENT";
          break;
        case 6048:
          v32 = @"SCROLL_LEFT_PHOTOS";
          break;
        case 6049:
          v32 = @"SCROLL_RIGHT_PHOTOS";
          break;
        case 6050:
          v32 = @"PUNCH_OUT";
          break;
        case 6051:
          v32 = @"TAP_ENTER_MUNIN";
          break;
        case 6052:
          v32 = @"TAP_RECOMMENDED_DISHES_PHOTO";
          break;
        case 6053:
          v32 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";
          break;
        case 6054:
          v32 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";
          break;
        case 6055:
          v32 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";
          break;
        case 6056:
          v32 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";
          break;
        case 6057:
          v32 = @"SHOW_LINKED_SERVICE_HOURS";
          break;
        case 6058:
          v32 = @"ENTER_LOOK_AROUND";
          break;
        case 6059:
          v32 = @"EXIT_LOOK_AROUND";
          break;
        case 6060:
          v32 = @"TAP_ENTER_LOOK_AROUND_VIEW";
          break;
        case 6061:
          v32 = @"TAP_ENTER_LOOK_AROUND_PIP";
          break;
        case 6062:
          v32 = @"EXPAND_LOOK_AROUND_VIEW";
          break;
        case 6063:
          v32 = @"CLOSE_LOOK_AROUND";
          break;
        case 6064:
          v32 = @"COLLAPSE_LOOK_AROUND_VIEW";
          break;
        case 6065:
          v32 = @"TAP_SHOW_ACTIONS";
          break;
        case 6066:
          v32 = @"TAP_HIDE_LABELS";
          break;
        case 6067:
          v32 = @"TAP_SHOW_LABELS";
          break;
        case 6068:
          v32 = @"TAP_SHOW_DETAILS";
          break;
        case 6069:
          v32 = @"PAN_LOOK_AROUND";
          break;
        case 6070:
          v32 = @"TAP_LOOK_AROUND_THUMBNAIL";
          break;
        case 6071:
          v32 = @"TAP_LANDMARK";
          break;
        case 6072:
          v32 = @"TAP_SCENE";
          break;
        case 6073:
          v32 = @"SHOW_LINKED_BUSINESS_HOURS";
          break;
        case 6074:
          v32 = @"TAP_PLACECARD_SHORTCUT";
          break;
        case 6075:
          v32 = @"SHOW_ALL_LOCATIONS_INSIDE";
          break;
        case 6076:
          v32 = @"SHOW_ALL_SIMILAR_LOCATIONS";
          break;
        case 6077:
          v32 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";
          break;
        case 6078:
          v32 = @"TAP_PARENT_LOCATION";
          break;
        case 6079:
          v32 = @"TAP_SIMILAR_LOCATION";
          break;
        case 6080:
          v32 = @"TAP_LOCATION_INSIDE";
          break;
        case 6081:
          v32 = @"TAP_LOCATION_AT_ADDRESS";
          break;
        case 6082:
          v32 = @"CLOSE_ROUTE_GENIUS";
          break;
        case 6083:
          v32 = @"LOAD_WEB_CONTENT";
          break;
        case 6084:
          v32 = @"SCROLL_FORWARD_WEB_CONTENT";
          break;
        case 6085:
          v32 = @"SCROLL_BACKWARD_WEB_CONTENT";
          break;
        case 6086:
          v32 = @"TAP_WEB_CONTENT";
          break;
        case 6087:
          v32 = @"SHOW_PHOTO_VIEWER";
          break;
        case 6088:
          v32 = @"SHOW_LAST_PAGE";
          break;
        case 6089:
          v32 = @"TAP_VIEW_APP";
          break;
        case 6090:
          v32 = @"TAP_APP_CLIP";
          break;
        case 6091:
          v32 = @"DEAD_BATTERY";
          break;
        case 6092:
          v32 = @"DISMISS_LOW_BATTERY_ALERT";
          break;
        case 6093:
          v32 = @"DISMISS_OUT_OF_RANGE_ALERT";
          break;
        case 6094:
          v32 = @"FAILED_TO_LOAD_EV_STATUS";
          break;
        case 6095:
          v32 = @"LOW_BATTERY_ALERT";
          break;
        case 6096:
          v32 = @"PAUSE_ROUTE";
          break;
        case 6097:
          v32 = @"TAP_ADD_STOP";
          break;
        case 6098:
          v32 = @"TAP_CHARGE_POINT";
          break;
        case 6099:
          v32 = @"TAP_OUT_OF_RANGE_ALERT";
          break;
        case 6100:
          v32 = @"SCROLL_DOWN_PHOTOS";
          break;
        case 6101:
          v32 = @"SCROLL_UP_PHOTOS";
          break;
        case 6102:
          v32 = @"TAP_MORE_PHOTOS";
          break;
        case 6103:
          v32 = @"TAP_TO_CONFIRM_INCIDENT";
          break;
        case 6104:
          v32 = @"SHOW_INCIDENT";
          break;
        case 6105:
          v32 = @"REVEAL_APP_CLIP";
          break;
        case 6106:
          v32 = @"ORDER_DELIVERY";
          break;
        case 6107:
          v32 = @"VIEW_MENU";
          break;
        case 6108:
          v32 = @"TAP_EDIT_STOPS";
          break;
        case 6109:
          v32 = @"LEARN_MORE_WEB_CONTENT";
          break;
        case 6110:
          v32 = @"MAKE_APPOINTMENT_WEB_CONTENT";
          break;
        case 6111:
          v32 = @"REVEAL_SHOWCASE";
          break;
        case 6112:
          v32 = @"TAP_ACTION_BAR";
          break;
        default:
          goto LABEL_215;
      }
    }

LABEL_1425:
    v47 = v32;
    if (v15 <= 1000)
    {
      v48 = @"UI_TARGET_UNKNOWN";
      switch(v15)
      {
        case 0:
          goto LABEL_1995;
        case 1:
          v48 = @"UI_TARGET_POI";
          break;
        case 2:
          v48 = @"UI_TARGET_SEARCH_RESULT_LIST";
          break;
        case 3:
          v48 = @"UI_TARGET_POPULAR_NEARBY_LIST";
          break;
        case 4:
          v48 = @"UI_TARGET_CALLOUT";
          break;
        case 5:
          v48 = @"UI_TARGET_SEARCH_PIN";
          break;
        case 6:
          v48 = @"UI_TARGET_DROPPED_PIN";
          break;
        case 7:
          v48 = @"UI_TARGET_TRANSIT_LINE";
          break;
        case 8:
          v48 = @"SEARCH_TRAY";
          break;
        case 9:
          v48 = @"SEARCH_TRAY_BROWSE";
          break;
        case 10:
          v48 = @"SEARCH_TRAY_POPULAR_NEARBY";
          break;
        case 11:
          v48 = @"SEARCH_TRAY_AC";
          break;
        case 12:
          v48 = @"SEARCH_TRAY_AC_INTERMEDIATE";
          break;
        case 13:
          v48 = @"SEARCH_TRAY_NO_QUERY";
          break;
        case 14:
          v48 = @"AR_WALKING_LEGAL_TRAY";
          break;
        case 15:
          v48 = @"RAISE_TO_START_AR_TRAY";
          break;
        case 16:
          v48 = @"EVENTS_ADVISORY_DETAILS_PAGE";
          break;
        case 17:
          v48 = @"INCIDENT_REPORT_TRAY_CARPLAY";
          break;
        case 18:
          v48 = @"HIGHLIGHTED_AREA";
          break;
        case 19:
          v48 = @"CURATED_COLLECTIONS_HOME";
          break;
        case 20:
          v48 = @"TRAVEL_PREFERENCES_TRAY";
          break;
        case 21:
          v48 = @"RESULT_TRAY_SEARCH";
          break;
        case 22:
          v48 = @"SINGLE_CARD_FILTER";
          break;
        case 23:
          v48 = @"FULL_CARD_FILTER";
          break;
        case 24:
          v48 = @"ACCOUNT_PRIVACY_TRAY";
          break;
        case 25:
          v48 = @"APPLE_RATINGS_HISTORY_TRAY";
          break;
        case 26:
          v48 = @"CURATED_COLLECTIONS_HOME_FILTERED";
          break;
        case 27:
          v48 = @"CITY_MENU";
          break;
        case 28:
          v48 = @"CURATED_COLLECTIONS_HOME_CONDENSED";
          break;
        case 29:
          v48 = @"ACCOUNT_TRAY";
          break;
        case 30:
          v48 = @"QUICK_ACTION_TRAY";
          break;
        case 31:
          v48 = @"SUBMIT_TRIP_FEEDBACK";
          break;
        case 32:
          v48 = @"RAP_PLACE_ISSUE_DETAILS";
          break;
        case 33:
          v48 = @"RAP_GUIDES_DETAILS";
          break;
        case 34:
          v48 = @"RAP_BAD_DIRECTIONS_DETAILS";
          break;
        case 35:
          v48 = @"RAP_ADD_MAP_DETAILS";
          break;
        case 36:
          v48 = @"WATCH_COMPLICATION";
          break;
        case 37:
          v48 = @"RAP_NAV_MENU";
          break;
        case 38:
          v48 = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
          break;
        case 39:
          v48 = @"RAP_REPORT_MENU";
          break;
        case 40:
          v48 = @"RAP_CURATED_COLLECTION_MENU";
          break;
        case 41:
          v48 = @"RAP_REPORT_CARD_DETAILS";
          break;
        case 42:
          v48 = @"NOTIFICATION_NO_LOCATION_TRANSIT";
          break;
        case 43:
          v48 = @"RAP_STREET_ISSUE_DETAILS";
          break;
        case 44:
          v48 = @"NEARBY_TRANSIT_CARD";
          break;
        case 45:
          v48 = @"WATCH_NAV_MENU";
          break;
        case 46:
          v48 = @"GENERIC_ADVISORY_PAGE";
          break;
        case 47:
          v48 = @"USER_PROFILE_TRAY";
          break;
        case 48:
          v48 = @"MEDIA_APP_MENU";
          break;
        case 49:
          v48 = @"TEMPLATE_PLACE_TRAY";
          break;
        case 50:
          v48 = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
          break;
        case 51:
          v48 = @"ALLOW_NOTIFICATION_DIALOG";
          break;
        case 52:
          v48 = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
          break;
        case 53:
          v48 = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
          break;
        case 54:
          v48 = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
          break;
        case 55:
          v48 = @"NOTIFICATION_CONSENT_PROMPT";
          break;
        case 56:
          v48 = @"QUICK_ACTION_TRAY_VENDORS_MENU";
          break;
        case 57:
          v48 = @"PLACECARD_TRAY_VENDORS_MENU";
          break;
        case 58:
          v48 = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
          break;
        case 59:
          v48 = @"SEARCH_ALONG_ROUTE_TRAY";
          break;
        case 60:
          v48 = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
          break;
        case 61:
          v48 = @"PLACECARD_SHOWCASE_MENU";
          break;
        case 62:
          v48 = @"RAP_INLINE_ADD_DETAILS";
          break;
        case 63:
          v48 = @"RAP_EDIT_MENU_DETAILS";
          break;
        case 64:
          v48 = @"RAP_SUBMISSION_PROMPT";
          break;
        case 65:
          v48 = @"RAP_PLACECARD_EDIT_MENU";
          break;
        case 66:
          v48 = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
          break;
        case 67:
          v48 = @"INCIDENT_REPORT_MENU";
          break;
        case 68:
          v48 = @"RAP_SELECT_BAD_ROUTES_STEPS";
          break;
        case 69:
          v48 = @"RAP_SELECT_BAD_ROUTES";
          break;
        case 70:
          v48 = @"SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 71:
          v48 = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 72:
          v48 = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
          break;
        case 73:
          v48 = @"SPOTLIGHT_BUSINESS_ENTITY";
          break;
        case 74:
          v48 = @"NOTIFICATION_ARP";
          break;
        case 75:
          v48 = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
          break;
        case 76:
          v48 = @"YOUR_PHOTOS_ALBUM";
          break;
        case 77:
          v48 = @"ARP_PHOTO_CREDIT";
          break;
        case 78:
          v48 = @"RAP_OUTREACH_REVIEWED_REPORT";
          break;
        case 79:
          v48 = @"RAP_REPORT_MENU_MORE";
          break;
        case 80:
          v48 = @"WATCH_MAPS_SETTINGS";
          break;
        case 81:
          v48 = @"OFFLINE_FEATURE_PROMPT";
          break;
        case 82:
          v48 = @"EXPIRED_MAPS_DETAILS";
          break;
        case 83:
          v48 = @"MAPS_VIEW";
          break;
        case 84:
          v48 = @"NOTIFICATION_OFFLINE";
          break;
        case 85:
          v48 = @"EXPIRED_MAPS_MANAGEMENT";
          break;
        case 86:
          v48 = @"OFFLINE_NEW_MAPS_MANAGEMENT";
          break;
        case 87:
          v48 = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
          break;
        case 88:
          v48 = @"OFFLINE_MAPS_MANAGEMENT";
          break;
        case 89:
          v48 = @"REGION_SELECTOR";
          break;
        case 90:
          v48 = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
          break;
        case 91:
          v48 = @"FIND_MY_ETA_SHARING_TRAY";
          break;
        case 92:
          v48 = @"WATCH_PLACE";
          break;
        case 93:
          v48 = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
          break;
        case 94:
          v48 = @"WATCH_ROUTE_PLANNING_MAP";
          break;
        case 95:
          v48 = @"WATCH_NAV_WALKING_CONTROLS";
          break;
        case 96:
          v48 = @"WATCH_NAV_CYCLING_CONTROLS";
          break;
        case 97:
          v48 = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
          break;
        case 98:
          v48 = @"WATCH_NAV_TRANSIT_CONTROLS";
          break;
        case 99:
          v48 = @"WATCH_SEARCH_RESULTS_CAROUSEL";
          break;
        case 100:
          v48 = @"WATCH_NAV_DRIVING_CONTROLS";
          break;
        case 101:
          v48 = @"RESULTS_TRAY_SEARCH";
          break;
        case 102:
          v48 = @"RESULTS_TRAY_BROWSE";
          break;
        case 103:
          v48 = @"RESULTS_TRAY_FAVORITES";
          break;
        case 104:
          v48 = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
          break;
        case 105:
          v48 = @"RESULTS_TRAY_CLUSTER";
          break;
        case 106:
          v48 = @"RESULTS_TRAY_VENUE_BROWSE";
          break;
        case 107:
          v48 = @"WATCH_MAP_RESULTS";
          break;
        case 108:
          v48 = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
          break;
        case 109:
          v48 = @"WATCH_PLACES";
          break;
        case 110:
          v48 = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
          break;
        case 111:
          v48 = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
          break;
        case 112:
          v48 = @"DOWNLOADED_MAPS_DETAILS";
          break;
        case 113:
          v48 = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
          break;
        case 114:
          v48 = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
          break;
        case 115:
          v48 = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
          break;
        case 116:
          v48 = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
          break;
        case 117:
          v48 = @"WATCH_ROUTE_OPTIONS";
          break;
        case 118:
          v48 = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
          break;
        case 119:
          v48 = @"WATCH_MORE_GUIDES";
          break;
        case 120:
          v48 = @"WATCH_RECENTLY_VIEWED";
          break;
        case 121:
          v48 = @"EV_SUCCESS_TRAY";
          break;
        case 122:
          v48 = @"PREFERRED_NETWORK_SELECTION_TRAY";
          break;
        case 123:
          v48 = @"PREFERRED_NETWORK_TRAY";
          break;
        case 124:
          v48 = @"WALKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 125:
          v48 = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
          break;
        case 126:
          v48 = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
          break;
        case 127:
          v48 = @"AC_KEYBOARD_TRAY";
          break;
        case 128:
          v48 = @"MORE_RELATED_TRAILS";
          break;
        case 129:
          v48 = @"MORE_RELATED_TRAILHEADS";
          break;
        case 130:
          v48 = @"ROUTING_TRAY_CUSTOM_ROUTE";
          break;
        case 131:
          v48 = @"CUSTOM_ROUTE_CREATION_TRAY";
          break;
        case 132:
          v48 = @"ROUTING_TRAY_CURATED_HIKE";
          break;
        case 133:
          v48 = @"MORE_CURATED_HIKES";
          break;
        case 134:
          v48 = @"CUSTOM_ROUTE_ONBOARDING";
          break;
        case 135:
          v48 = @"LIBRARY_ROUTES";
          break;
        case 136:
          v48 = @"HIKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 137:
          v48 = @"MY_LIBRARY";
          break;
        case 138:
          v48 = @"EDIT_NOTE_TRAY";
          break;
        case 139:
          v48 = @"CREATE_NOTE_TRAY";
          break;
        case 140:
          v48 = @"LIBRARY_PLACES";
          break;
        case 141:
          v48 = @"WATCH_ACCOUNT";
          break;
        case 142:
          v48 = @"WATCH_DOWNLOADED_MAPS";
          break;
        case 143:
          v48 = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
          break;
        case 144:
          v48 = @"VISUAL_INTELLIGENCE_DETECTION";
          break;
        case 145:
          v48 = @"VISUAL_INTELLIGENCE_SNIPPET";
          break;
        case 146:
          v48 = @"FAMILIAR_ROUTE_NOTIFICATION";
          break;
        case 147:
          v48 = @"LIBRARY_VISITED";
          break;
        case 148:
          v48 = @"VISITED_PLACES_ONBOARDING";
          break;
        case 149:
          v48 = @"NOTIFICATION_VISITED_PLACES";
          break;
        case 150:
          v48 = @"LOCATION_CORRECTION_TRAY";
          break;
        case 151:
          v48 = @"MAPS_WIDGET_VISITED_PLACE";
          break;
        case 152:
          v48 = @"REMOVE_VISIT_TRAY";
          break;
        case 153:
          v48 = @"NEARBY_SUGGESTION_TRAY";
          break;
        case 154:
          v48 = @"FAMILIAR_ROUTES_ONBOARDING";
          break;
        case 155:
          v48 = @"ROUTING_TRAY_CARPLAY";
          break;
        case 156:
        case 157:
        case 158:
        case 159:
        case 160:
        case 161:
        case 162:
        case 163:
        case 164:
        case 165:
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
        case 184:
        case 185:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 191:
        case 192:
        case 193:
        case 194:
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
        case 225:
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 238:
        case 239:
        case 240:
        case 241:
        case 242:
        case 243:
        case 244:
        case 245:
        case 246:
        case 247:
        case 248:
        case 249:
        case 269:
        case 270:
        case 271:
        case 272:
        case 273:
        case 274:
        case 275:
        case 276:
        case 277:
        case 278:
        case 279:
        case 280:
        case 281:
        case 282:
        case 283:
        case 284:
        case 285:
        case 286:
        case 287:
        case 288:
        case 289:
        case 290:
        case 291:
        case 292:
        case 293:
        case 294:
        case 295:
        case 296:
        case 297:
        case 298:
        case 299:
        case 300:
        case 307:
        case 308:
        case 309:
        case 310:
        case 311:
        case 312:
        case 313:
        case 314:
        case 315:
        case 316:
        case 317:
        case 318:
        case 319:
        case 320:
        case 321:
        case 322:
        case 323:
        case 324:
        case 325:
        case 326:
        case 327:
        case 328:
        case 329:
        case 330:
        case 331:
        case 332:
        case 333:
        case 334:
        case 335:
        case 336:
        case 337:
        case 338:
        case 339:
        case 340:
        case 341:
        case 342:
        case 343:
        case 344:
        case 345:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 356:
        case 357:
        case 358:
        case 359:
        case 360:
        case 361:
        case 362:
        case 363:
        case 364:
        case 365:
        case 366:
        case 367:
        case 368:
        case 369:
        case 370:
        case 371:
        case 372:
        case 373:
        case 374:
        case 375:
        case 376:
        case 377:
        case 378:
        case 379:
        case 380:
        case 381:
        case 382:
        case 383:
        case 384:
        case 385:
        case 386:
        case 387:
        case 388:
        case 389:
        case 390:
        case 391:
        case 392:
        case 393:
        case 394:
        case 395:
        case 396:
        case 397:
        case 398:
        case 399:
        case 400:
        case 405:
        case 406:
        case 407:
        case 408:
        case 409:
        case 410:
        case 411:
        case 412:
        case 413:
        case 414:
        case 415:
        case 416:
        case 417:
        case 418:
        case 419:
        case 420:
        case 421:
        case 422:
        case 423:
        case 424:
        case 425:
        case 426:
        case 427:
        case 428:
        case 429:
        case 430:
        case 431:
        case 432:
        case 433:
        case 434:
        case 435:
        case 436:
        case 437:
        case 438:
        case 439:
        case 440:
        case 441:
        case 442:
        case 443:
        case 444:
        case 445:
        case 446:
        case 447:
        case 448:
        case 449:
        case 450:
        case 451:
        case 452:
        case 453:
        case 454:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 460:
        case 461:
        case 462:
        case 463:
        case 464:
        case 465:
        case 466:
        case 467:
        case 468:
        case 469:
        case 470:
        case 471:
        case 472:
        case 473:
        case 474:
        case 475:
        case 476:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 482:
        case 483:
        case 484:
        case 485:
        case 486:
        case 487:
        case 488:
        case 489:
        case 490:
        case 491:
        case 492:
        case 493:
        case 494:
        case 495:
        case 496:
        case 497:
        case 498:
        case 499:
        case 500:
        case 512:
        case 513:
        case 514:
        case 515:
        case 516:
        case 517:
        case 518:
        case 519:
        case 520:
        case 521:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 528:
        case 529:
        case 530:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 549:
        case 550:
        case 551:
        case 552:
        case 553:
        case 554:
        case 555:
        case 556:
        case 557:
        case 558:
        case 559:
        case 560:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 700:
        case 744:
        case 745:
        case 746:
        case 747:
        case 748:
        case 749:
        case 750:
        case 751:
        case 752:
        case 753:
        case 754:
        case 755:
        case 756:
        case 757:
        case 758:
        case 759:
        case 760:
        case 761:
        case 762:
        case 763:
        case 764:
        case 765:
        case 766:
        case 767:
        case 768:
        case 769:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 800:
          goto LABEL_1994;
        case 201:
          v48 = @"PLACECARD_TRAY";
          break;
        case 202:
          v48 = @"WEB_MODULE";
          break;
        case 203:
          v48 = @"ACTION_BAR";
          break;
        case 204:
          v48 = @"ACTION_BAR_VENDORS_MENU";
          break;
        case 250:
          v48 = @"ADD_FAVORITE_TRAY";
          break;
        case 251:
          v48 = @"COLLECTION_LIST";
          break;
        case 252:
          v48 = @"COLLECTION_VIEW";
          break;
        case 253:
          v48 = @"FAVORITE_DETAILS";
          break;
        case 254:
          v48 = @"FAVORITES_TRAY";
          break;
        case 255:
          v48 = @"SHARED_COLLECTION";
          break;
        case 256:
          v48 = @"SHARED_COLLECTION_VIEW";
          break;
        case 257:
          v48 = @"RECENTLY_VIEWED";
          break;
        case 258:
          v48 = @"SHARED_WEB_COLLECTION";
          break;
        case 259:
          v48 = @"CURATED_COLLECTION_VIEW";
          break;
        case 260:
          v48 = @"FEATURED_COLLECTIONS";
          break;
        case 261:
          v48 = @"PUBLISHER_TRAY";
          break;
        case 262:
          v48 = @"SHARED_CURATED_COLLECTION_VIEW";
          break;
        case 263:
          v48 = @"CURATED_COLLECTION_NOTIFICATION";
          break;
        case 264:
          v48 = @"CURATED_COLLECTION_LIST";
          break;
        case 265:
          v48 = @"PUBLISHER_LIST";
          break;
        case 266:
          v48 = @"WATCH_CURATED_COLLECTION_VIEW";
          break;
        case 267:
          v48 = @"SIRI_SUGGESTION_SHARED_ETA_SUBLIST";
          break;
        case 268:
          v48 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY_SUBLIST";
          break;
        case 301:
          v48 = @"ROUTING_TRAY_DRIVING";
          break;
        case 302:
          v48 = @"ROUTING_TRAY_WALKING";
          break;
        case 303:
          v48 = @"ROUTING_TRAY_TRANSIT";
          break;
        case 304:
          v48 = @"ROUTING_TRAY_RIDESHARE";
          break;
        case 305:
          v48 = @"ROUTING_TRAY_CYCLING";
          break;
        case 306:
          v48 = @"ROUTING_TRAY_VIRTUAL_GARAGE_VIEW";
          break;
        case 401:
          v48 = @"NAV_TRAY_DRIVING";
          break;
        case 402:
          v48 = @"NAV_TRAY_WALKING";
          break;
        case 403:
          v48 = @"NAV_TRAY_TRANSIT";
          break;
        case 404:
          v48 = @"NAV_TRAY_CYCLING";
          break;
        case 501:
          v48 = @"MAP_PLACECARD";
          break;
        case 502:
          v48 = @"MAP_SEARCH";
          break;
        case 503:
          v48 = @"MAP_RESULTS";
          break;
        case 504:
          v48 = @"MAP_ROUTING";
          break;
        case 505:
          v48 = @"MAP_NAV";
          break;
        case 506:
          v48 = @"MAP_RESULTS_SEARCH_ALONG_ROUTE";
          break;
        case 507:
          v48 = @"MAP_TRAFFIC_INCIDENT";
          break;
        case 508:
          v48 = @"MAP_FULL_SCREEN";
          break;
        case 509:
          v48 = @"MAP_DRIVE";
          break;
        case 510:
          v48 = @"MAP_LAUNCH_AND_GO";
          break;
        case 511:
          v48 = @"MAP_VIEW";
          break;
        case 601:
          v48 = @"MAPS_SETTINGS";
          break;
        case 602:
          v48 = @"MAPS_PREFERENCES";
          break;
        case 603:
          v48 = @"RAP";
          break;
        case 604:
          v48 = @"ROUTING_DRIVING_DETAILS";
          break;
        case 605:
          v48 = @"ROUTING_WALKING_DETAILS";
          break;
        case 606:
          v48 = @"ROUTING_TRANSIT_DETAILS";
          break;
        case 607:
          v48 = @"ROUTING_EDITOR";
          break;
        case 608:
          v48 = @"NAV_DRIVING_DETAILS";
          break;
        case 609:
          v48 = @"NAV_WALKING_DETAILS";
          break;
        case 610:
          v48 = @"NAV_TRANSIT_DETAILS";
          break;
        case 611:
          v48 = @"NAV_AUDIO_SETTINGS";
          break;
        case 612:
          v48 = @"PHOTO_VIEWER_ALL";
          break;
        case 613:
          v48 = @"PHOTO_VIEWER_SINGLE";
          break;
        case 614:
          v48 = @"ROUTE_OPTIONS_TRANSIT";
          break;
        case 615:
          v48 = @"TRAFFIC_INCIDENT_TRAY";
          break;
        case 616:
          v48 = @"NAV_DIRECTIONS_BANNER_DRIVING";
          break;
        case 617:
          v48 = @"NAV_DIRECTIONS_BANNER_WALKING";
          break;
        case 618:
          v48 = @"NAV_DIRECTIONS_BANNER_TRANSIT";
          break;
        case 619:
          v48 = @"REFINE_SEARCH_SUGGESTION_AREA";
          break;
        case 620:
          v48 = @"ADD_PHOTO_SHEET";
          break;
        case 621:
          v48 = @"ADD_PLACE_SHEET";
          break;
        case 622:
          v48 = @"SHARE_SHEET";
          break;
        case 623:
          v48 = @"EDIT_LOCATION_SHEET";
          break;
        case 624:
          v48 = @"ADD_CONTACT_SHEET";
          break;
        case 625:
          v48 = @"EDIT_NAME_SHEET";
          break;
        case 626:
          v48 = @"DRIVING_NAV_SETTINGS";
          break;
        case 627:
          v48 = @"TRANSIT_SETTINGS";
          break;
        case 628:
          v48 = @"TRANSIT_ADVISORY_SHEET";
          break;
        case 629:
          v48 = @"REMOVE_CAR_SHEET";
          break;
        case 630:
          v48 = @"ROUTE_OPTIONS_DRIVING";
          break;
        case 631:
          v48 = @"ROUTE_OPTIONS_DATETIME";
          break;
        case 632:
          v48 = @"TRANSIT_ADVISORY_BANNER";
          break;
        case 633:
          v48 = @"BOOK_TABLE_SELECT_TIME";
          break;
        case 634:
          v48 = @"BOOK_TABLE_MORE_OPTIONS";
          break;
        case 635:
          v48 = @"BOOK_TABLE_READY";
          break;
        case 636:
          v48 = @"BOOK_TABLE_BOOKED";
          break;
        case 637:
          v48 = @"TRANSIT_LINE_CLUSTER_SHEET";
          break;
        case 638:
          v48 = @"TRANSIT_LINE_LIST_SHEET";
          break;
        case 639:
          v48 = @"TRANSIT_BALANCE_BANNER";
          break;
        case 640:
          v48 = @"WEATHER_ICON";
          break;
        case 641:
          v48 = @"HELP_IMPROVE_MAPS_DIALOG";
          break;
        case 642:
          v48 = @"HELP_IMPROVE_COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 643:
          v48 = @"COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 644:
          v48 = @"FLOOR_PICKER";
          break;
        case 645:
          v48 = @"VENUE_LIST";
          break;
        case 646:
          v48 = @"AR_MODE";
          break;
        case 647:
          v48 = @"ROUTING_TRANSIT_TICKETS_SHEET";
          break;
        case 648:
          v48 = @"LINKED_SERVICE_HOURS";
          break;
        case 649:
          v48 = @"SHARE_ETA_TRAY";
          break;
        case 650:
          v48 = @"ETA_UPDATE_TRAY";
          break;
        case 651:
          v48 = @"SCHEDULECARD_TRAY";
          break;
        case 652:
          v48 = @"AR_NAV";
          break;
        case 653:
          v48 = @"TAP_TRANSIT_ACCESS_POINT";
          break;
        case 654:
          v48 = @"LOCATIONS_INSIDE";
          break;
        case 655:
          v48 = @"SIMILAR_LOCATIONS";
          break;
        case 656:
          v48 = @"LOCATIONS_AT_ADDRESS";
          break;
        case 657:
          v48 = @"NAV_DIRECTIONS_BANNER_CYCLING";
          break;
        case 658:
          v48 = @"ROUTE_OPTIONS_CYCLING";
          break;
        case 659:
          v48 = @"EV_CONNECTION_TRAY";
          break;
        case 660:
          v48 = @"VIRTUAL_GARAGE";
          break;
        case 661:
          v48 = @"VIRTUAL_GARAGE_BANNER";
          break;
        case 662:
          v48 = @"VIRTUAL_GARAGE_VEHICLE_VIEW";
          break;
        case 663:
          v48 = @"ADVISORY_DETAILS_PAGE";
          break;
        case 664:
          v48 = @"APP_CLIP_NOTIFICATION";
          break;
        case 665:
          v48 = @"PHOTO_VIEWER_GALLERY";
          break;
        case 666:
          v48 = @"RECOMMENDATION_CARD";
          break;
        case 667:
          v48 = @"INCIDENT_REPORT_TRAY";
          break;
        case 668:
          v48 = @"MAPS_WIDGET_DISPLAY";
          break;
        case 669:
          v48 = @"VISUAL_LOCATION_FRAMEWORK";
          break;
        case 670:
          v48 = @"APP_CLIP_TRAY";
          break;
        case 671:
          v48 = @"LICENSE_PLATE_SUGGESTION_PAGE";
          break;
        case 672:
          v48 = @"NOTIFICATION_ADD_PLATE";
          break;
        case 673:
          v48 = @"MAPS_RESULTS";
          break;
        case 674:
          v48 = @"MAPS_WIDGET_APP_CONNECTION";
          break;
        case 675:
          v48 = @"MAPS_WIDGET_CURRENT_LOCATION";
          break;
        case 676:
          v48 = @"MAPS_WIDGET_CURRENT_NAV";
          break;
        case 677:
          v48 = @"MAPS_WIDGET_ETA";
          break;
        case 678:
          v48 = @"MAPS_WIDGET_TRANSIT";
          break;
        case 679:
          v48 = @"MAPS_WIDGET_UPC_DESTINATION";
          break;
        case 680:
          v48 = @"WIDGET_CREATION_TRAY";
          break;
        case 681:
          v48 = @"MAPS_WIDGET_HOME";
          break;
        case 682:
          v48 = @"MAPS_WIDGET_PARKED_CAR";
          break;
        case 683:
          v48 = @"MAPS_WIDGET_POI";
          break;
        case 684:
          v48 = @"MAPS_WIDGET_SCHOOL";
          break;
        case 685:
          v48 = @"MAPS_WIDGET_WORK";
          break;
        case 686:
          v48 = @"AIRPORT_NOTIFICATION";
          break;
        case 687:
          v48 = @"MAPS_WIDGET_EMPTY";
          break;
        case 688:
          v48 = @"COARSE_LOCATION_OPTIONS_PROMPT";
          break;
        case 689:
          v48 = @"ALLOW_PRECISE_LOCATION_PROMPT";
          break;
        case 690:
          v48 = @"SHARE_MY_LOCATION";
          break;
        case 691:
          v48 = @"MARK_MY_LOCATION";
          break;
        case 692:
          v48 = @"AIRPORT_NOTIFICATION_WATCH";
          break;
        case 693:
          v48 = @"EDIT_FAVORITE";
          break;
        case 694:
          v48 = @"ROUTING_CYCLING_DETAILS";
          break;
        case 695:
          v48 = @"NAV_CYCLING_DETAILS";
          break;
        case 696:
          v48 = @"MAPS_SUGGESTION_WIDGET";
          break;
        case 697:
          v48 = @"ARP_TIPKIT";
          break;
        case 698:
          v48 = @"ARP_PRIVACY";
          break;
        case 699:
          v48 = @"ROUTE_OPTIONS_WALKING";
          break;
        case 701:
          v48 = @"SAFARI_SEARCH";
          break;
        case 702:
          v48 = @"SPOTLIGHT_SEARCH";
          break;
        case 703:
          v48 = @"SAFARI_MAPS_SEARCH_RESULTS";
          break;
        case 704:
          v48 = @"SPOTLIGHT_MAPS_SEARCH_RESULTS";
          break;
        case 705:
          v48 = @"WIDGET_MAPS_DESTINATIONS";
          break;
        case 706:
          v48 = @"WIDGET_MAPS_TRANSIT";
          break;
        case 707:
          v48 = @"WIDGET_MAPS_NEARBY";
          break;
        case 708:
          v48 = @"NOTIFICATION_FIND_MY_CAR";
          break;
        case 709:
          v48 = @"CONTROL_CENTER";
          break;
        case 710:
          v48 = @"NOTIFICATION_CENTER";
          break;
        case 711:
          v48 = @"NOTIFICATION_DOOM";
          break;
        case 712:
          v48 = @"NOTIFICATION_VENUES";
          break;
        case 713:
          v48 = @"NOTIFICATION_RAP_UPDATE";
          break;
        case 714:
          v48 = @"NOTIFICATION_TRIP_CANCELLED";
          break;
        case 715:
          v48 = @"NOTIFICATION_STOP_SKIPPED";
          break;
        case 716:
          v48 = @"NOTIFICATION_TRIP_DELAYED";
          break;
        case 717:
          v48 = @"NOTIFICATION_RAP";
          break;
        case 718:
          v48 = @"NOTIFICATION_PROXY_AUTH";
          break;
        case 719:
          v48 = @"NOTIFICATION_PUSH_TO_DEVICE";
          break;
        case 720:
          v48 = @"NOTIFICATION_LOW_FUEL";
          break;
        case 721:
          v48 = @"NOTIFICATION_FIND_MY_CAR_RESET";
          break;
        case 722:
          v48 = @"NOTIFICATION_TRAFFIC_CONDITIONS";
          break;
        case 723:
          v48 = @"NOTIFICATION_SHARED_ETA";
          break;
        case 724:
          v48 = @"NOTIFICATION_SHARED_ETA_UPDATE";
          break;
        case 725:
          v48 = @"ANNOUNCEMENT_TYPE_UNKNOWN";
          break;
        case 726:
          v48 = @"ANNOUNCEMENT_TYPE_GENERAL";
          break;
        case 727:
          v48 = @"ANNOUNCEMENT_TYPE_FLYOVER";
          break;
        case 728:
          v48 = @"ANNOUNCEMENT_TYPE_TRANSIT";
          break;
        case 729:
          v48 = @"ANNOUNCEMENT_TYPE_VENUES";
          break;
        case 730:
          v48 = @"ANNOUNCEMENT_TYPE_ENHANCED_DETAIL";
          break;
        case 731:
          v48 = @"ANNOUNCEMENT_TYPE_LANE_GUIDANCE";
          break;
        case 732:
          v48 = @"ANNOUNCEMENT_TYPE_LOOK_AROUND";
          break;
        case 733:
          v48 = @"APP_SHEET";
          break;
        case 734:
          v48 = @"CZ_ADVISORY_DETAILS_PAGE";
          break;
        case 735:
          v48 = @"SHARE_ETA_CONTACT_TRAY";
          break;
        case 736:
          v48 = @"SIRI_SHARE_ETA";
          break;
        case 737:
          v48 = @"SIRI_SUGGESTION_SHARED_ETA";
          break;
        case 738:
          v48 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY";
          break;
        case 739:
          v48 = @"INCIDENT_ALERT_TRAY";
          break;
        case 740:
          v48 = @"INCIDENT_REPORT_CONFIRMATION_TRAY";
          break;
        case 741:
          v48 = @"RAP_INCIDENT_REPORT_VIEW";
          break;
        case 742:
          v48 = @"SEARCH_ALONG_ROUTE_CATEGORY_TRAY";
          break;
        case 743:
          v48 = @"TRAFFIC_ADVISORY_SHEET";
          break;
        case 801:
          v48 = @"SIRI_PLUGIN_SNIPPET";
          break;
        case 802:
          v48 = @"SIRI_PLUGIN_COMMAND";
          break;
        case 803:
          v48 = @"SIRI_SEARCH_RESULT_LIST";
          break;
        case 804:
          v48 = @"SIRI_DISAMBIGUATION_LIST";
          break;
        case 805:
          v48 = @"SIRI_PLACE_SNIPPET";
          break;
        default:
          if (v15 != 901)
          {
            goto LABEL_1994;
          }

          v48 = @"CHROME";
          break;
      }

      goto LABEL_1995;
    }

    if (v15 <= 1400)
    {
      switch(v15)
      {
        case 1001:
          v48 = @"CARPLAY_NAV";
          break;
        case 1002:
          v48 = @"CARPLAY_EXPLORE";
          break;
        case 1003:
          v48 = @"CARPLAY_DESTINATIONS";
          break;
        case 1004:
          v48 = @"CARPLAY_TRAFFIC_INCIDENT";
          break;
        case 1005:
          v48 = @"CARPLAY_CONTROL";
          break;
        case 1006:
          v48 = @"CARPLAY_PROACTIVE";
          break;
        case 1007:
          v48 = @"CARPLAY_ROUTING";
          break;
        case 1008:
          v48 = @"CARPLAY_MORE_ROUTES";
          break;
        case 1009:
          v48 = @"CARPLAY_SEARCH_ALONG_ROUTE";
          break;
        case 1010:
          v48 = @"CARPLAY_SEARCH";
          break;
        case 1011:
          v48 = @"CARPLAY_SEARCH_RESULTS";
          break;
        case 1012:
          v48 = @"CARPLAY_FAVORITES";
          break;
        case 1013:
          v48 = @"CARPLAY_NAV_CONFIRMATION";
          break;
        case 1014:
          v48 = @"CARPLAY_DESTINATION_SHARING";
          break;
        case 1015:
          v48 = @"CARPLAY_NOTIFICATION_BATTERY";
          break;
        case 1016:
          v48 = @"CARPLAY_NOTIFICATION_DOOM";
          break;
        case 1017:
          v48 = @"CARPLAY_NOTIFICATION_FUEL";
          break;
        case 1018:
          v48 = @"CARPLAY_NOTIFICATION_HYBRID";
          break;
        case 1019:
          v48 = @"CARPLAY_SHARE_ETA_TRAY";
          break;
        case 1020:
          v48 = @"CARPLAY_ETA_UPDATE_TRAY";
          break;
        case 1021:
          v48 = @"CARPLAY_ACTION_TRAY";
          break;
        case 1022:
          v48 = @"CARPLAY_PLACECARD";
          break;
        case 1023:
          v48 = @"CARPLAY_KEYBOARD";
          break;
        case 1024:
          v48 = @"CARPLAY_UI_TARGET_UNKNOWN";
          break;
        case 1025:
          v48 = @"CARPLAY_EDIT_STOPS";
          break;
        case 1100:
          v48 = @"RAP_DIRECTIONS_MENU";
          break;
        case 1101:
          v48 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_LIST";
          break;
        case 1102:
          v48 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_DETAILS_FORM";
          break;
        case 1103:
          v48 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE_FORM";
          break;
        case 1104:
          v48 = @"RAP_DIRECTIONS_ESTIMATED_TIME_INCORRECT_FORM";
          break;
        case 1105:
          v48 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_FORM";
          break;
        case 1106:
          v48 = @"RAP_TRANSIT_MENU";
          break;
        case 1107:
          v48 = @"RAP_STATION_MAP";
          break;
        case 1108:
          v48 = @"RAP_STATION_MENU";
          break;
        case 1109:
          v48 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_MAP";
          break;
        case 1110:
          v48 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_FORM";
          break;
        case 1111:
          v48 = @"RAP_STATION_CLOSED_FORM";
          break;
        case 1112:
          v48 = @"RAP_LINE_MAP";
          break;
        case 1113:
          v48 = @"RAP_LINE_MENU";
          break;
        case 1114:
          v48 = @"RAP_LINE_NAME_FORM";
          break;
        case 1115:
          v48 = @"RAP_LINE_SHAPE_FORM";
          break;
        case 1116:
          v48 = @"RAP_LINE_SCHEDULE_INCORRECT_FORM";
          break;
        case 1117:
          v48 = @"RAP_ADD_PLACE_MENU";
          break;
        case 1118:
          v48 = @"RAP_ADD_POI_MAP";
          break;
        case 1119:
          v48 = @"RAP_CATEGORY_LIST";
          break;
        case 1120:
          v48 = @"RAP_POI_DETAILS_FORM";
          break;
        case 1121:
          v48 = @"RAP_ADD_STREET_MAP";
          break;
        case 1122:
          v48 = @"RAP_STREET_DETAILS_FORM";
          break;
        case 1123:
          v48 = @"RAP_ADD_OTHER_MAP";
          break;
        case 1124:
          v48 = @"RAP_OTHER_DETAILS_FORM";
          break;
        case 1125:
          v48 = @"RAP_CAMERA";
          break;
        case 1126:
          v48 = @"RAP_LABEL_MAP";
          break;
        case 1127:
          v48 = @"RAP_LABEL_DETAILS_FORM";
          break;
        case 1128:
          v48 = @"RAP_SEARCH_MENU";
          break;
        case 1129:
          v48 = @"RAP_SEARCH_UNEXPECTED_RESULT_FORM";
          break;
        case 1130:
          v48 = @"RAP_SEARCH_ADDRESS_INCORRECT_FORM";
          break;
        case 1131:
          v48 = @"RAP_SEARCH_LOCATION_INCORRECT_MAP";
          break;
        case 1132:
          v48 = @"RAP_SEARCH_LOCATION_INCORRECT_DETAILS_FORM";
          break;
        case 1133:
          v48 = @"RAP_SATELLITE_IMAGE_MAP";
          break;
        case 1134:
          v48 = @"RAP_SATELLITE_IMAGE_DETAILS_FORM";
          break;
        case 1135:
          v48 = @"RAP_OTHER_FORM";
          break;
        case 1136:
          v48 = @"RAP_PRIVACY";
          break;
        case 1137:
          v48 = @"RAP_CONFIRMATION";
          break;
        case 1138:
          v48 = @"RAP_POI_MENU";
          break;
        case 1139:
          v48 = @"RAP_SEARCH_AUTOCOMPLETE_MENU";
          break;
        case 1140:
          v48 = @"RAP_ADD_A_PLACE_MAP";
          break;
        case 1141:
          v48 = @"RAP_POI_LOCATION_MAP";
          break;
        case 1142:
          v48 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_MAP";
          break;
        case 1143:
          v48 = @"RAP_POI_CLOSED_FORM";
          break;
        case 1144:
          v48 = @"RAP_CLAIM_BUSINESS_DIALOG";
          break;
        case 1145:
          v48 = @"RAP_BRAND_MENU";
          break;
        case 1146:
          v48 = @"RAP_BRAND_DETAILS_FORM";
          break;
        case 1147:
          v48 = @"RAP_LOOK_AROUND_IMAGE_QUALITY_FORM";
          break;
        case 1148:
          v48 = @"RAP_LOOK_AROUND_LABELS_STREET_FORM";
          break;
        case 1149:
          v48 = @"RAP_LOOK_AROUND_BLURRING_FORM";
          break;
        case 1150:
          v48 = @"RAP_LOOK_AROUND_REMOVE_HOME_FORM";
          break;
        case 1151:
          v48 = @"RAP_LOOK_AROUND_MENU";
          break;
        case 1152:
          v48 = @"RAP_LOOK_AROUND_LABELS_STORE_FORM";
          break;
        case 1153:
          v48 = @"RAP_LOOK_AROUND_PRIVACY_MENU";
          break;
        case 1154:
          v48 = @"RAP_LIGHTWEIGHT";
          break;
        case 1155:
          v48 = @"RAP_EDIT_PLACE_DETAILS";
          break;
        case 1156:
          v48 = @"RAP_ADD_CATEGORY";
          break;
        case 1157:
          v48 = @"RAP_ADD_HOURS";
          break;
        case 1158:
          v48 = @"RAP_EDIT_LOCATION";
          break;
        case 1159:
          v48 = @"RAP_EDIT_ENTRY_POINT";
          break;
        case 1160:
          v48 = @"RAP_LOOK_AROUND";
          break;
        case 1161:
          v48 = @"RAP_ADD_ENTRY_POINT";
          break;
        case 1201:
          v48 = @"WATCH_MAIN_MENU";
          break;
        case 1202:
          v48 = @"WATCH_MAIN_PRESS_MENU";
          break;
        case 1203:
          v48 = @"WATCH_SEARCH";
          break;
        case 1204:
          v48 = @"WATCH_DICTATION";
          break;
        case 1205:
          v48 = @"WATCH_FAVORITES";
          break;
        case 1206:
          v48 = @"WATCH_SUB_CATEGORY_LIST";
          break;
        case 1207:
          v48 = @"WATCH_SEARCH_RESULTS_LIST";
          break;
        case 1208:
          v48 = @"WATCH_MAP_VIEW";
          break;
        case 1209:
          v48 = @"WATCH_PLACECARD";
          break;
        case 1210:
          v48 = @"WATCH_ROUTE_PLANNING";
          break;
        case 1211:
          v48 = @"WATCH_ROUTE_DETAILS";
          break;
        case 1212:
          v48 = @"WATCH_NAV_TBT";
          break;
        case 1213:
          v48 = @"WATCH_NAV_MAP";
          break;
        case 1214:
          v48 = @"WATCH_NAV_PRESS_MENU";
          break;
        case 1215:
          v48 = @"WATCH_MAP_PRESS_MENU";
          break;
        case 1216:
          v48 = @"WATCH_ROUTING_PRESS_MENU";
          break;
        case 1217:
          v48 = @"WATCH_TRANSIT_MAP_VIEW";
          break;
        case 1218:
          v48 = @"WATCH_SCRIBBLE";
          break;
        case 1219:
          v48 = @"WATCH_COLLECTION_VIEW";
          break;
        case 1220:
          v48 = @"WATCH_ROUTE_PLANNING_WALKING";
          break;
        case 1221:
          v48 = @"WATCH_ROUTE_PLANNING_DRIVING";
          break;
        case 1222:
          v48 = @"WATCH_ROUTE_PLANNING_TRANSIT";
          break;
        case 1223:
          v48 = @"WATCH_PAIRED_DEVICE";
          break;
        case 1224:
          v48 = @"WATCH_NAV_DRIVING_SPLIT";
          break;
        case 1225:
          v48 = @"WATCH_NAV_DRIVING_PLATTER";
          break;
        case 1226:
          v48 = @"WATCH_NAV_DRIVING_MAP";
          break;
        case 1227:
          v48 = @"WATCH_NAV_WALKING_SPLIT";
          break;
        case 1228:
          v48 = @"WATCH_NAV_WALKING_PLATTER";
          break;
        case 1229:
          v48 = @"WATCH_NAV_WALKING_MAP";
          break;
        case 1230:
          v48 = @"WATCH_NAV_TRANSIT_SPLIT";
          break;
        case 1231:
          v48 = @"WATCH_NAV_TRANSIT_PLATTER";
          break;
        case 1232:
          v48 = @"WATCH_NAV_TRANSIT_MAP";
          break;
        case 1233:
          v48 = @"WATCH_ROUTE_INFO";
          break;
        case 1234:
          v48 = @"WATCH_NAV_CYCLING_MAP";
          break;
        case 1235:
          v48 = @"WATCH_NAV_CYCLING_PLATTER";
          break;
        case 1236:
          v48 = @"WATCH_NAV_CYCLING_SPLIT";
          break;
        case 1237:
          v48 = @"WATCH_ROUTE_PLANNING_CYCLING";
          break;
        case 1238:
          v48 = @"WATCH_SEARCH_INPUT";
          break;
        case 1239:
          v48 = @"WATCH_SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 1240:
          v48 = @"WATCH_SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 1301:
          v48 = @"PERSONALIZED_ADDRESS_LIST";
          break;
        case 1302:
          v48 = @"PERSONALIZED_ADDRESS_FORM";
          break;
        case 1303:
          v48 = @"PERSONALIZED_LABEL_FORM";
          break;
        case 1304:
          v48 = @"PERSONALIZED_EDIT_MAP";
          break;
        case 1305:
          v48 = @"PERSONALIZED_CONFIRMATION";
          break;
        case 1306:
          v48 = @"PERSONALIZED_ADDRESS_DELETE_DIALOG";
          break;
        case 1307:
          v48 = @"PERSONALIZED_ADDRESS_INFO";
          break;
        case 1308:
          v48 = @"PERSONALIZED_ADDRESS_SEARCH";
          break;
        case 1309:
          v48 = @"PERSONALIZED_ADDRESS_SEARCH_RESULTS";
          break;
        case 1310:
          v48 = @"FAVORITE_SEARCH";
          break;
        case 1311:
          v48 = @"FAVORITE_LIST";
          break;
        case 1312:
          v48 = @"FAVORITE_INFO";
          break;
        case 1313:
          v48 = @"PERSONALIZED_CONFIRMATION_WITH_PRIVACY";
          break;
        default:
          goto LABEL_1994;
      }

      goto LABEL_1995;
    }

    if (v15 > 1705)
    {
      if (v15 > 1806)
      {
        if (v15 <= 1899)
        {
          if (v15 <= 1808)
          {
            if (v15 == 1807)
            {
              v48 = @"MAPS_WEB_RELATED_PLACES_LIST";
            }

            else
            {
              v48 = @"MAPS_WEB_COLLECTION_LIST";
            }

            goto LABEL_1995;
          }

          if (v15 == 1809)
          {
            v48 = @"MAPS_WEB_DIRECTIONS";
            goto LABEL_1995;
          }

          if (v15 == 1810)
          {
            v48 = @"MAPS_WEB_SIDEBAR";
            goto LABEL_1995;
          }
        }

        else
        {
          if (v15 <= 1901)
          {
            if (v15 == 1900)
            {
              v48 = @"FIND_MY_AIR_TAG_VIEW";
            }

            else
            {
              v48 = @"FIND_MY_AIR_PODS_VIEW";
            }

            goto LABEL_1995;
          }

          switch(v15)
          {
            case 0x76E:
              v48 = @"FIND_MY_ACCESSORY_VIEW";
              goto LABEL_1995;
            case 0x76F:
              v48 = @"FIND_MY_DEVICE_VIEW";
              goto LABEL_1995;
            case 0x770:
              v48 = @"FIND_MY_PERSON_VIEW";
              goto LABEL_1995;
          }
        }
      }

      else
      {
        if (v15 > 1801)
        {
          if (v15 <= 1803)
          {
            if (v15 == 1802)
            {
              v48 = @"MAPS_WEB_SEARCH";
            }

            else
            {
              v48 = @"MAPS_WEB_SEARCH_RESULTS";
            }
          }

          else if (v15 == 1804)
          {
            v48 = @"MAPS_WEB_PUBLISHER";
          }

          else if (v15 == 1805)
          {
            v48 = @"MAPS_WEB_GUIDE";
          }

          else
          {
            v48 = @"MAPS_WEB_GUIDES_HOME";
          }

          goto LABEL_1995;
        }

        if (v15 <= 1707)
        {
          if (v15 == 1706)
          {
            v48 = @"LOOK_AROUND_VIEW_PLACECARD";
          }

          else
          {
            v48 = @"LOOK_AROUND_PIP_PLACECARD";
          }

          goto LABEL_1995;
        }

        if (v15 == 1708)
        {
          v48 = @"OFFLINE_BROWSE_ONLY_SEARCH_TRAY";
          goto LABEL_1995;
        }

        if (v15 == 1801)
        {
          v48 = @"MAPS_WEB_PLACE";
          goto LABEL_1995;
        }
      }
    }

    else if (v15 > 1502)
    {
      if (v15 > 1700)
      {
        if (v15 <= 1702)
        {
          if (v15 == 1701)
          {
            v48 = @"LOOK_AROUND_ACTION_SHEET";
          }

          else
          {
            v48 = @"LOOK_AROUND_VIEW";
          }
        }

        else if (v15 == 1703)
        {
          v48 = @"LOOK_AROUND_PLATTER";
        }

        else if (v15 == 1704)
        {
          v48 = @"LOOK_AROUND_PIP_UNAVAILABLE_ZOOM";
        }

        else
        {
          v48 = @"LOOK_AROUND_PIP_UNAVAILABLE_REGION";
        }

        goto LABEL_1995;
      }

      if (v15 > 1600)
      {
        if (v15 == 1601)
        {
          v48 = @"MENU_ITEM_DARK_MAP";
          goto LABEL_1995;
        }

        if (v15 == 1700)
        {
          v48 = @"LOOK_AROUND_PIP";
          goto LABEL_1995;
        }
      }

      else
      {
        if (v15 == 1503)
        {
          v48 = @"PLACECARD_PHONE";
          goto LABEL_1995;
        }

        if (v15 == 1504)
        {
          v48 = @"PLACECARD_URL";
          goto LABEL_1995;
        }
      }
    }

    else
    {
      if (v15 <= 1404)
      {
        if (v15 > 1402)
        {
          if (v15 == 1403)
          {
            v48 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_REQUESTING";
          }

          else
          {
            v48 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_CONFIRMED";
          }
        }

        else if (v15 == 1401)
        {
          v48 = @"ROUTING_TRAY_RIDESHARE_RIDE_OPTIONS";
        }

        else
        {
          v48 = @"ROUTING_TRAY_RIDESHARE_DETAILS_PICKING";
        }

        goto LABEL_1995;
      }

      if (v15 <= 1406)
      {
        if (v15 == 1405)
        {
          v48 = @"ROUTING_TRAY_RIDESHARE_SURGE_PRICING_DIALOG";
        }

        else
        {
          v48 = @"ROUTING_TRAY_RIDESHARE_FEEDBACK";
        }

        goto LABEL_1995;
      }

      switch(v15)
      {
        case 0x57F:
          v48 = @"ROUTING_TRAY_RIDESHARE_ENABLE_ALL";
          goto LABEL_1995;
        case 0x5DD:
          v48 = @"PLACECARD_HEADER";
          goto LABEL_1995;
        case 0x5DE:
          v48 = @"PLACECARD_ADDRESS";
LABEL_1995:
          *buf = 138413058;
          v89 = v47;
          v90 = 2112;
          v91 = v48;
          v92 = 2112;
          v93 = v30;
          v94 = 2112;
          v95 = modulesCopy;
          _os_log_impl(&dword_1C5620000, v29, OS_LOG_TYPE_DEBUG, "Creating an action %@ with target %@ with value %@ and module metadata %@", buf, 0x2Au);

          goto LABEL_1996;
      }
    }

LABEL_1994:
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
    goto LABEL_1995;
  }

  v22 = MUGetPlaceCardAnalyticsUILog();
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = idCopy;
    v24 = queue;
    v34 = dCopy;
    v33 = lCopy;
    v26 = classificationCopy;
    goto LABEL_1997;
  }

  v23 = idCopy;
  v65 = completionCopy;
  if (v16 > 3000)
  {
    if (v16 <= 9000)
    {
      if (v16 <= 6002)
      {
        if (v16 <= 4001)
        {
          v24 = queue;
          switch(v16)
          {
            case 3001:
              v27 = @"START_NAV";
              v26 = classificationCopy;
              break;
            case 3002:
              v27 = @"END_NAV";
              v26 = classificationCopy;
              break;
            case 3003:
              v27 = @"OPEN_NAV_AUDIO_SETTINGS";
              v26 = classificationCopy;
              break;
            case 3004:
              v27 = @"VIEW_DETAILS";
              v26 = classificationCopy;
              break;
            case 3005:
              v27 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";
              v26 = classificationCopy;
              break;
            case 3006:
              v27 = @"OPEN_ROUTING_EDITOR";
              v26 = classificationCopy;
              break;
            case 3007:
              v27 = @"EDIT_ORIGIN";
              v26 = classificationCopy;
              break;
            case 3008:
              v27 = @"EDIT_DESTINATION";
              v26 = classificationCopy;
              break;
            case 3009:
              v27 = @"SWAP_ORIGIN_DESTINATION";
              v26 = classificationCopy;
              break;
            case 3010:
              v27 = @"OPEN_MORE_ROUTES";
              v26 = classificationCopy;
              break;
            case 3011:
              v27 = @"SELECT_ROUTING_TYPE_DRIVING";
              v26 = classificationCopy;
              break;
            case 3012:
              v27 = @"SELECT_ROUTING_TYPE_WALKING";
              v26 = classificationCopy;
              break;
            case 3013:
              v27 = @"SELECT_ROUTING_TYPE_TRANSIT";
              v26 = classificationCopy;
              break;
            case 3014:
              v27 = @"SELECT_ROUTING_TYPE_RIDESHARE";
              v26 = classificationCopy;
              break;
            case 3015:
              v27 = @"SELECT_ROUTE";
              v26 = classificationCopy;
              break;
            case 3016:
              v27 = @"COLLAPSE_STEP_DETAILS_WALK";
              v26 = classificationCopy;
              break;
            case 3017:
              v27 = @"EXPAND_STEP_DETAILS_WALK";
              v26 = classificationCopy;
              break;
            case 3018:
              v27 = @"COLLAPSE_STEP_DETAILS_TRANSIT";
              v26 = classificationCopy;
              break;
            case 3019:
              v27 = @"EXPAND_STEP_DETAILS_TRANSIT";
              v26 = classificationCopy;
              break;
            case 3020:
              v27 = @"UNCHECK_BUS";
              v26 = classificationCopy;
              break;
            case 3021:
              v27 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";
              v26 = classificationCopy;
              break;
            case 3022:
              v27 = @"UNCHECK_COMMUTER_RAIL";
              v26 = classificationCopy;
              break;
            case 3023:
              v27 = @"UNCHECK_FERRY";
              v26 = classificationCopy;
              break;
            case 3024:
              v27 = @"CHECK_BUS";
              v26 = classificationCopy;
              break;
            case 3025:
              v27 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";
              v26 = classificationCopy;
              break;
            case 3026:
              v27 = @"CHECK_COMMUTER_RAIL";
              v26 = classificationCopy;
              break;
            case 3027:
              v27 = @"CHECK_FERRY";
              v26 = classificationCopy;
              break;
            case 3028:
              v27 = @"SELECT_LEAVE_AT";
              v26 = classificationCopy;
              break;
            case 3029:
              v27 = @"SELECT_ARRIVE_BY";
              v26 = classificationCopy;
              break;
            case 3030:
              v27 = @"SELECT_LEAVE_NOW";
              v26 = classificationCopy;
              break;
            case 3031:
              v27 = @"SELECT_DATE_TIME";
              v26 = classificationCopy;
              break;
            case 3032:
              v27 = @"SWITCH_ON_IC_FARES";
              v26 = classificationCopy;
              break;
            case 3033:
              v27 = @"SWITCH_OFF_IC_FARES";
              v26 = classificationCopy;
              break;
            case 3034:
              v27 = @"OPEN_ROUTE_OPTIONS_DATETIME";
              v26 = classificationCopy;
              break;
            case 3035:
              v27 = @"OPEN_ROUTE_OPTIONS_TRANSIT";
              v26 = classificationCopy;
              break;
            case 3036:
              v27 = @"OPEN_ROUTE_OPTIONS_DRIVING";
              v26 = classificationCopy;
              break;
            case 3037:
              v27 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";
              v26 = classificationCopy;
              break;
            case 3038:
              v27 = @"REVEAL_FROM_ROUTING";
              v26 = classificationCopy;
              break;
            case 3039:
              v27 = @"DISPLAY_ROUTES";
              v26 = classificationCopy;
              break;
            case 3040:
              v27 = @"CHECK_RECOMMENDED_ROUTES";
              v26 = classificationCopy;
              break;
            case 3041:
              v27 = @"UNCHECK_RECOMMENDED_ROUTES";
              v26 = classificationCopy;
              break;
            case 3042:
              v27 = @"CHECK_FASTER_TRIPS";
              v26 = classificationCopy;
              break;
            case 3043:
              v27 = @"UNCHECK_FASTER_TRIPS";
              v26 = classificationCopy;
              break;
            case 3044:
              v27 = @"CHECK_FEWER_TRANSFERS";
              v26 = classificationCopy;
              break;
            case 3045:
              v27 = @"UNCHECK_FEWER_TRANSFERS";
              v26 = classificationCopy;
              break;
            case 3046:
              v27 = @"CHECK_LESS_WALKING";
              v26 = classificationCopy;
              break;
            case 3047:
              v27 = @"UNCHECK_LESS_WALKING";
              v26 = classificationCopy;
              break;
            case 3048:
              v27 = @"OPEN_ROUTE_OPTIONS_CYCLING";
              v26 = classificationCopy;
              break;
            case 3049:
              v27 = @"TAP_MORE_ROUTES";
              v26 = classificationCopy;
              break;
            case 3050:
              v27 = @"OPEN_NAV_OVERVIEW";
              v26 = classificationCopy;
              break;
            case 3051:
              v27 = @"RESUME_NAV_MANEUVER_VIEW";
              v26 = classificationCopy;
              break;
            case 3052:
              v27 = @"SELECT_AUDIO_VOLUME_SILENT";
              v26 = classificationCopy;
              break;
            case 3053:
              v27 = @"SELECT_AUDIO_VOLUME_LOW";
              v26 = classificationCopy;
              break;
            case 3054:
              v27 = @"SELECT_AUDIO_VOLUME_NORMAL";
              v26 = classificationCopy;
              break;
            case 3055:
              v27 = @"SELECT_AUDIO_VOLUME_LOUD";
              v26 = classificationCopy;
              break;
            case 3056:
              v27 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";
              v26 = classificationCopy;
              break;
            case 3057:
              v27 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";
              v26 = classificationCopy;
              break;
            case 3058:
              v27 = @"RESUME_PREV_NAV";
              v26 = classificationCopy;
              break;
            case 3059:
              v27 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";
              v26 = classificationCopy;
              break;
            case 3060:
              v27 = @"ACCEPT_REROUTE";
              v26 = classificationCopy;
              break;
            case 3061:
              v27 = @"DISMISS_REROUTE";
              v26 = classificationCopy;
              break;
            case 3062:
              v27 = @"ATTEMPT_END_NAV";
              v26 = classificationCopy;
              break;
            case 3063:
              v27 = @"DISPLAY_BANNER";
              v26 = classificationCopy;
              break;
            case 3064:
              v27 = @"VIEW_BANNER_DETAILS";
              v26 = classificationCopy;
              break;
            case 3065:
              v27 = @"ENTER_GUIDANCE";
              v26 = classificationCopy;
              break;
            case 3066:
              v27 = @"AUTO_ADVANCE_GUIDANCE";
              v26 = classificationCopy;
              break;
            case 3067:
              v27 = @"TAP_OPEN_WALLET";
              v26 = classificationCopy;
              break;
            case 3068:
              v27 = @"SELECT_VOICE_GUIDANCE_ALL";
              v26 = classificationCopy;
              break;
            case 3069:
              v27 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";
              v26 = classificationCopy;
              break;
            case 3070:
              v27 = @"SELECT_VOICE_GUIDANCE_NONE";
              v26 = classificationCopy;
              break;
            case 3071:
              v27 = @"DISPLAY_CARD";
              v26 = classificationCopy;
              break;
            case 3072:
              v27 = @"RENDER_ROUTE";
              v26 = classificationCopy;
              break;
            case 3073:
              v27 = @"DISPLAY_JUNCTION_VIEW";
              v26 = classificationCopy;
              break;
            case 3074:
              v27 = @"SELECT_DEPARTURE";
              v26 = classificationCopy;
              break;
            case 3075:
              v27 = @"DISPLAY_AR_VIEW_RAISE_BANNER";
              v26 = classificationCopy;
              break;
            case 3076:
              v27 = @"DEVICE_RAISE";
              v26 = classificationCopy;
              break;
            case 3077:
              v27 = @"ENTER_AR_NAV_VIEW";
              v26 = classificationCopy;
              break;
            case 3078:
              v27 = @"EXIT_AR_NAV_VIEW";
              v26 = classificationCopy;
              break;
            case 3079:
              v27 = @"AR_CALIBRATION_START";
              v26 = classificationCopy;
              break;
            case 3080:
              v27 = @"AR_CALIBRATION_FAILURE";
              v26 = classificationCopy;
              break;
            case 3081:
              v27 = @"AR_CALIBRATION_SUCCESS";
              v26 = classificationCopy;
              break;
            case 3082:
              v27 = @"DISPLAY_AR_NAV_ARROW";
              v26 = classificationCopy;
              break;
            case 3083:
              v27 = @"DISPLAY_AR_NAV_TURN_AROUND";
              v26 = classificationCopy;
              break;
            case 3084:
              v27 = @"DISPLAY_GO_OUTSIDE_BANNER";
              v26 = classificationCopy;
              break;
            case 3085:
              v27 = @"DISPLAY_AR_DARKNESS_MESSAGE";
              v26 = classificationCopy;
              break;
            case 3086:
              v27 = @"DISPLAY_AR_NAV_ENDPOINT";
              v26 = classificationCopy;
              break;
            case 3087:
              v27 = @"DISPLAY_ADVISORY_BANNER";
              v26 = classificationCopy;
              break;
            case 3088:
              v27 = @"TAP_SHOW_ADVISORY_DETAILS";
              v26 = classificationCopy;
              break;
            default:
              v28 = v16;
              v46 = v16 == 4001;
              v26 = classificationCopy;
              if (!v46)
              {
                goto LABEL_2136;
              }

              v27 = @"RECENTER_CURRENT_LOCATION";
              break;
          }

          goto LABEL_3321;
        }

        v38 = v16;
        if (v16 > 4004)
        {
          v28 = v16;
          v39 = v16 - 5001;
          v26 = classificationCopy;
          v24 = queue;
          switch(v39)
          {
            case 0:
              v27 = @"SHOW_MAPS_SETTINGS";
              goto LABEL_3321;
            case 1:
              v27 = @"TAP_STANDARD_MODE";
              goto LABEL_3321;
            case 2:
              v27 = @"TAP_TRANSIT_MODE";
              goto LABEL_3321;
            case 3:
              v27 = @"TAP_SATELLITE_MODE";
              goto LABEL_3321;
            case 4:
              v27 = @"SWITCH_ON_TRAFFIC";
              goto LABEL_3321;
            case 5:
              v27 = @"SWITCH_OFF_TRAFFIC";
              goto LABEL_3321;
            case 6:
              v27 = @"SWITCH_ON_LABELS";
              goto LABEL_3321;
            case 7:
              v27 = @"SWITCH_OFF_LABELS";
              goto LABEL_3321;
            case 8:
              v27 = @"SWITCH_ON_3D_MAP";
              goto LABEL_3321;
            case 9:
              v27 = @"SWITCH_OFF_3D_MAP";
              goto LABEL_3321;
            case 10:
              v27 = @"SWITCH_ON_WEATHER";
              goto LABEL_3321;
            case 11:
              v27 = @"SWITCH_OFF_WEATHER";
              goto LABEL_3321;
            case 12:
              v27 = @"REPORT_A_PROBLEM";
              goto LABEL_3321;
            case 13:
              v27 = @"ADD_PLACE";
              goto LABEL_3321;
            case 14:
              goto LABEL_2136;
            case 15:
              v27 = @"TAP_PREFERENCES";
              goto LABEL_3321;
            case 16:
              v27 = @"SWITCH_ON_TOLLS";
              goto LABEL_3321;
            case 17:
              v27 = @"SWITCH_OFF_TOLLS";
              goto LABEL_3321;
            case 18:
              v27 = @"SWITCH_ON_HIGHWAYS";
              goto LABEL_3321;
            case 19:
              v27 = @"SWITCH_OFF_HIGHWAYS";
              goto LABEL_3321;
            case 20:
              v27 = @"SWITCH_ON_HEADING";
              goto LABEL_3321;
            case 21:
              v27 = @"SWITCH_OFF_HEADING";
              goto LABEL_3321;
            case 22:
              v27 = @"SWITCH_ON_SPEED_LIMIT";
              goto LABEL_3321;
            case 23:
              v27 = @"SWITCH_OFF_SPEED_LIMIT";
              goto LABEL_3321;
            case 24:
              v27 = @"ELECT_DRIVING_MODE";
              goto LABEL_3321;
            case 25:
              v27 = @"ELECT_WALKING_MODE";
              goto LABEL_3321;
            case 26:
              v27 = @"ELECT_TRANSIT_MODE";
              goto LABEL_3321;
            case 27:
              v27 = @"ELECT_RIDESHARE_MODE";
              goto LABEL_3321;
            case 28:
              v27 = @"SWITCH_ON_FIND_MY_CAR";
              goto LABEL_3321;
            case 29:
              v27 = @"SWITCH_OFF_FIND_MY_CAR";
              goto LABEL_3321;
            case 30:
              v27 = @"MARK_MY_LOCATION";
              goto LABEL_3321;
            case 31:
              v27 = @"TAP_HYBRID_MODE";
              goto LABEL_3321;
            case 32:
              v27 = @"CHECK_AVOID_BUSY_ROADS";
              goto LABEL_3321;
            case 33:
              v27 = @"UNCHECK_AVOID_BUSY_ROADS";
              goto LABEL_3321;
            case 34:
              v27 = @"CHECK_AVOID_HILLS";
              goto LABEL_3321;
            case 35:
              v27 = @"UNCHECK_AVOID_HILLS";
              goto LABEL_3321;
            case 36:
              v27 = @"CHECK_AVOID_STAIRS";
              goto LABEL_3321;
            case 37:
              v27 = @"UNCHECK_AVOID_STAIRS";
              goto LABEL_3321;
            case 38:
              v27 = @"ELECT_CYCLING_MODE";
              goto LABEL_3321;
            default:
              if (v38 == 4005)
              {
                v27 = @"PUCK_SNAP";
              }

              else
              {
                if (v28 != 4006)
                {
                  goto LABEL_2136;
                }

                v27 = @"SELECT_FLOOR";
              }

              break;
          }

          goto LABEL_3321;
        }

        v26 = classificationCopy;
        v24 = queue;
        if (v38 == 4002)
        {
          v27 = @"TAP_HEADING_ON";
        }

        else if (v38 == 4003)
        {
          v27 = @"TAP_HEADING_OFF";
        }

        else
        {
          v28 = v38;
          if (v38 != 4004)
          {
LABEL_2136:
            v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
            goto LABEL_3321;
          }

          v27 = @"PUCK_DRIFT";
        }
      }

      else
      {
        if (v16 <= 7000)
        {
          v24 = queue;
          v28 = v16;
          v36 = v16 - 6003;
          v26 = classificationCopy;
          switch(v36)
          {
            case 0:
              v27 = @"GET_DIRECTIONS";
              break;
            case 1:
              v27 = @"TAP_FLYOVER_TOUR";
              break;
            case 2:
              v27 = @"REMOVE_PIN";
              break;
            case 3:
              v27 = @"TAP_PHOTO";
              break;
            case 4:
              v27 = @"TAP_MAPS_VIEW";
              break;
            case 5:
              v27 = @"TAP_ADDRESS";
              break;
            case 6:
              v27 = @"CALL";
              break;
            case 7:
              v27 = @"TAP_URL";
              break;
            case 8:
              v27 = @"SHOW_TODAY_HOURS";
              break;
            case 9:
              v27 = @"SHOW_ALL_HOURS";
              break;
            case 10:
              v27 = @"SHARE";
              break;
            case 12:
              v27 = @"ADD_TO_FAVORITES";
              break;
            case 13:
              v27 = @"ADD_CONTACT";
              break;
            case 15:
              v27 = @"PUNCH_OUT_PHOTO";
              break;
            case 16:
              v27 = @"PUNCH_OUT_USEFUL_TO_KNOW";
              break;
            case 17:
              v27 = @"PUNCH_OUT_OPEN_APP";
              break;
            case 18:
              v27 = @"PUNCH_OUT_SINGLE_REVIEW";
              break;
            case 19:
              v27 = @"PUNCH_OUT_CHECK_IN";
              break;
            case 20:
              v27 = @"PUNCH_OUT_MORE_INFO";
              break;
            case 21:
              v27 = @"PUNCH_OUT_WRITE_REVIEW";
              break;
            case 22:
              v27 = @"PUNCH_OUT_ADD_PHOTO";
              break;
            case 23:
              v27 = @"TAP_GRID_VIEW";
              break;
            case 24:
              v27 = @"EDIT_LOCATION";
              break;
            case 26:
              v27 = @"ADD_PHOTO";
              break;
            case 28:
              v27 = @"RETAKE";
              break;
            case 29:
              v27 = @"ADD_NOTE";
              break;
            case 30:
              v27 = @"REMOVE_CAR";
              break;
            case 31:
              v27 = @"EDIT_NAME";
              break;
            case 33:
              v27 = @"RESERVE_TABLE";
              break;
            case 34:
              v27 = @"ADD_TO_QUEUE";
              break;
            case 35:
              v27 = @"VIEW_BOOKED_TABLE";
              break;
            case 36:
              v27 = @"VIEW_QUEUED_TABLE";
              break;
            case 37:
              v27 = @"PUNCH_OUT_THIRD_PARTY_APP";
              break;
            case 38:
              v27 = @"PUNCH_OUT_LEGAL_LINK";
              break;
            case 39:
              v27 = @"TAP_PLACECARD_HEADER";
              break;
            case 40:
              v27 = @"REMOVE_FROM_FAVORITES";
              break;
            case 41:
              v27 = @"VIEW_CONTACT";
              break;
            case 42:
              v27 = @"CHAT";
              break;
            case 43:
              v27 = @"FIND_STORES";
              break;
            case 44:
              v27 = @"TAP_PARENT";
              break;
            case 45:
              v27 = @"SCROLL_LEFT_PHOTOS";
              break;
            case 46:
              v27 = @"SCROLL_RIGHT_PHOTOS";
              break;
            case 47:
              v27 = @"PUNCH_OUT";
              break;
            case 48:
              v27 = @"TAP_ENTER_MUNIN";
              break;
            case 49:
              v27 = @"TAP_RECOMMENDED_DISHES_PHOTO";
              break;
            case 50:
              v27 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";
              break;
            case 51:
              v27 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";
              break;
            case 52:
              v27 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";
              break;
            case 53:
              v27 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";
              break;
            case 54:
              v27 = @"SHOW_LINKED_SERVICE_HOURS";
              break;
            case 55:
              v27 = @"ENTER_LOOK_AROUND";
              break;
            case 56:
              v27 = @"EXIT_LOOK_AROUND";
              break;
            case 57:
              v27 = @"TAP_ENTER_LOOK_AROUND_VIEW";
              break;
            case 58:
              v27 = @"TAP_ENTER_LOOK_AROUND_PIP";
              break;
            case 59:
              v27 = @"EXPAND_LOOK_AROUND_VIEW";
              break;
            case 60:
              v27 = @"CLOSE_LOOK_AROUND";
              break;
            case 61:
              v27 = @"COLLAPSE_LOOK_AROUND_VIEW";
              break;
            case 62:
              v27 = @"TAP_SHOW_ACTIONS";
              break;
            case 63:
              v27 = @"TAP_HIDE_LABELS";
              break;
            case 64:
              v27 = @"TAP_SHOW_LABELS";
              break;
            case 65:
              v27 = @"TAP_SHOW_DETAILS";
              break;
            case 66:
              v27 = @"PAN_LOOK_AROUND";
              break;
            case 67:
              v27 = @"TAP_LOOK_AROUND_THUMBNAIL";
              break;
            case 68:
              v27 = @"TAP_LANDMARK";
              break;
            case 69:
              v27 = @"TAP_SCENE";
              break;
            case 70:
              v27 = @"SHOW_LINKED_BUSINESS_HOURS";
              break;
            case 71:
              v27 = @"TAP_PLACECARD_SHORTCUT";
              break;
            case 72:
              v27 = @"SHOW_ALL_LOCATIONS_INSIDE";
              break;
            case 73:
              v27 = @"SHOW_ALL_SIMILAR_LOCATIONS";
              break;
            case 74:
              v27 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";
              break;
            case 75:
              v27 = @"TAP_PARENT_LOCATION";
              break;
            case 76:
              v27 = @"TAP_SIMILAR_LOCATION";
              break;
            case 77:
              v27 = @"TAP_LOCATION_INSIDE";
              break;
            case 78:
              v27 = @"TAP_LOCATION_AT_ADDRESS";
              break;
            case 79:
              v27 = @"CLOSE_ROUTE_GENIUS";
              break;
            case 80:
              v27 = @"LOAD_WEB_CONTENT";
              break;
            case 81:
              v27 = @"SCROLL_FORWARD_WEB_CONTENT";
              break;
            case 82:
              v27 = @"SCROLL_BACKWARD_WEB_CONTENT";
              break;
            case 83:
              v27 = @"TAP_WEB_CONTENT";
              break;
            case 84:
              v27 = @"SHOW_PHOTO_VIEWER";
              break;
            case 85:
              v27 = @"SHOW_LAST_PAGE";
              break;
            case 86:
              v27 = @"TAP_VIEW_APP";
              break;
            case 87:
              v27 = @"TAP_APP_CLIP";
              break;
            case 88:
              v27 = @"DEAD_BATTERY";
              break;
            case 89:
              v27 = @"DISMISS_LOW_BATTERY_ALERT";
              break;
            case 90:
              v27 = @"DISMISS_OUT_OF_RANGE_ALERT";
              break;
            case 91:
              v27 = @"FAILED_TO_LOAD_EV_STATUS";
              break;
            case 92:
              v27 = @"LOW_BATTERY_ALERT";
              break;
            case 93:
              v27 = @"PAUSE_ROUTE";
              break;
            case 94:
              v27 = @"TAP_ADD_STOP";
              break;
            case 95:
              v27 = @"TAP_CHARGE_POINT";
              break;
            case 96:
              v27 = @"TAP_OUT_OF_RANGE_ALERT";
              break;
            case 97:
              v27 = @"SCROLL_DOWN_PHOTOS";
              break;
            case 98:
              v27 = @"SCROLL_UP_PHOTOS";
              break;
            case 99:
              v27 = @"TAP_MORE_PHOTOS";
              break;
            case 100:
              v27 = @"TAP_TO_CONFIRM_INCIDENT";
              break;
            case 101:
              v27 = @"SHOW_INCIDENT";
              break;
            case 102:
              v27 = @"REVEAL_APP_CLIP";
              break;
            case 103:
              v27 = @"ORDER_DELIVERY";
              break;
            case 104:
              v27 = @"VIEW_MENU";
              break;
            case 105:
              v27 = @"TAP_EDIT_STOPS";
              break;
            case 106:
              v27 = @"LEARN_MORE_WEB_CONTENT";
              break;
            case 107:
              v27 = @"MAKE_APPOINTMENT_WEB_CONTENT";
              break;
            case 108:
              v27 = @"REVEAL_SHOWCASE";
              break;
            case 109:
              v27 = @"TAP_ACTION_BAR";
              break;
            default:
              goto LABEL_2136;
          }

          goto LABEL_3321;
        }

        if (v16 <= 8000)
        {
          v24 = queue;
          v28 = v16;
          v40 = v16 - 7001;
          v26 = classificationCopy;
          switch(v40)
          {
            case 0:
              v27 = @"EXPAND_TRANSIT_SYSTEM";
              break;
            case 1:
              v27 = @"COLLAPSE_TRANSIT_SYSTEM";
              break;
            case 2:
              v27 = @"SHOW_MORE_DEPARTURES";
              break;
            case 3:
              v27 = @"VIEW_TRANSIT_LINE";
              break;
            case 4:
              v27 = @"CANCEL_VIEW_TRANSIT_LINE";
              break;
            case 5:
              v27 = @"TAP_TRANSIT_ATTRIBUTION";
              break;
            case 6:
              v27 = @"TAP_TRANSIT_ADVISORY";
              break;
            case 7:
              v27 = @"MORE_DETAILS_TRANSIT_ADVISORY";
              break;
            case 8:
              v27 = @"SUBSCRIBE_LINE_INCIDENT";
              break;
            case 9:
              v27 = @"UNSUBSCRIBE_LINE_INCIDENT";
              break;
            case 10:
              v27 = @"TAP_NEAREST_STATION";
              break;
            case 11:
              v27 = @"TAP_NEAREST_STOP";
              break;
            case 12:
              v27 = @"TAP_CONNECTION";
              break;
            case 13:
              v27 = @"GET_TICKETS";
              break;
            case 14:
              v27 = @"OPEN_SCHEDULECARD_DATETIME";
              break;
            case 15:
              v27 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";
              break;
            case 16:
              v27 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";
              break;
            case 17:
              v27 = @"VIEW_ON_MAP";
              break;
            case 18:
              v27 = @"FORCE_UPDATE_DEPARTURE_INFO";
              break;
            case 19:
              v27 = @"TAP_TRANSIT_LINE_INFO";
              break;
            case 20:
              v27 = @"TAP_ATTRIBUTION_CELL";
              break;
            case 21:
              v27 = @"TAP_NEXT_DEPARTURES";
              break;
            case 22:
              v27 = @"VIEW_BANNER";
              break;
            case 23:
              v27 = @"GET_SHOWTIMES";
              break;
            case 24:
              v27 = @"MAKE_APPOINTMENT";
              break;
            case 25:
              v27 = @"RESERVE_PARKING";
              break;
            case 26:
              v27 = @"RESERVE_ROOM";
              break;
            case 27:
              v27 = @"WAITLIST";
              break;
            case 28:
              v27 = @"ORDER_TAKEOUT";
              break;
            case 29:
              v27 = @"RESERVE";
              break;
            default:
              goto LABEL_2136;
          }

          goto LABEL_3321;
        }

        v43 = v16;
        if (v16 <= 8005)
        {
          v26 = classificationCopy;
          if (v43 <= 8002)
          {
            v24 = queue;
            if (v43 == 8001)
            {
              v27 = @"INVOKE_SIRI_SNIPPET";
              goto LABEL_3321;
            }

            v28 = v43;
            if (v43 != 8002)
            {
              goto LABEL_2136;
            }

            v27 = @"INVOKE_SIRI_DISAMBIGUATION";
          }

          else
          {
            v24 = queue;
            if (v43 == 8003)
            {
              v27 = @"SHOW_PLACE_DETAILS";
              goto LABEL_3321;
            }

            if (v43 == 8004)
            {
              v27 = @"ANSWER_REROUTE_SUGGESTION";
              goto LABEL_3321;
            }

            v28 = v43;
            if (v43 != 8005)
            {
              goto LABEL_2136;
            }

            v27 = @"SUGGEST_NAV_REROUTE";
          }
        }

        else
        {
          v26 = classificationCopy;
          if (v43 > 8008)
          {
            v24 = queue;
            if (v43 == 8009)
            {
              v27 = @"INVOKE_SIRI";
              goto LABEL_3321;
            }

            if (v43 == 8010)
            {
              v27 = @"DISPLAY_SIRI_ERROR_MESSAGE";
              goto LABEL_3321;
            }

            v28 = v43;
            if (v43 != 8011)
            {
              goto LABEL_2136;
            }

            v27 = @"DISPLAY_NO_RESULTS_MESSAGE";
          }

          else
          {
            v24 = queue;
            if (v43 == 8006)
            {
              v27 = @"GET_NAV_STATUS";
              goto LABEL_3321;
            }

            if (v43 == 8007)
            {
              v27 = @"REPEAT_NAV_STATUS";
              goto LABEL_3321;
            }

            v28 = v43;
            if (v43 != 8008)
            {
              goto LABEL_2136;
            }

            v27 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }
      }
    }

    else
    {
      if (v16 <= 12000)
      {
        v35 = v16 - 10101;
        v24 = queue;
        v26 = classificationCopy;
        switch(v35)
        {
          case 0:
            v27 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";
            break;
          case 1:
            v27 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";
            break;
          case 2:
            v27 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";
            break;
          case 3:
            v27 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";
            break;
          case 4:
            v27 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";
            break;
          case 5:
            v27 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";
            break;
          case 6:
            v27 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";
            break;
          case 7:
            v27 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";
            break;
          case 8:
            v27 = @"RAP_CANCEL";
            break;
          case 9:
            v27 = @"RAP_NEXT";
            break;
          case 10:
            v27 = @"RAP_BACK";
            break;
          case 11:
            v27 = @"RAP_SEND";
            break;
          case 12:
            v27 = @"RAP_SKIP";
            break;
          case 13:
            v27 = @"RAP_SHOW_MORE";
            break;
          case 14:
            v27 = @"RAP_ADD_PHOTO";
            break;
          case 15:
            v27 = @"RAP_MAP_INCORRECT";
            break;
          case 16:
            v27 = @"RAP_BAD_DIRECTIONS";
            break;
          case 17:
            v27 = @"RAP_TRANSIT_INFO_INCORRECT";
            break;
          case 18:
            v27 = @"RAP_SATELLITE_IMAGE_PROBLEM";
            break;
          case 19:
            v27 = @"RAP_SEARCH_RESULTS_INCORRECT";
            break;
          case 20:
            v27 = @"RAP_ADD_A_PLACE";
            break;
          case 21:
            v27 = @"RAP_HOME";
            break;
          case 22:
            v27 = @"RAP_WORK";
            break;
          case 23:
            v27 = @"RAP_OTHER";
            break;
          case 24:
            v27 = @"RAP_LOCATION";
            break;
          case 25:
            v27 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";
            break;
          case 26:
            v27 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";
            break;
          case 27:
            v27 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";
            break;
          case 28:
            v27 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";
            break;
          case 29:
            v27 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";
            break;
          case 30:
            v27 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";
            break;
          case 31:
            v27 = @"RAP_TRANSIT_DELAY";
            break;
          case 32:
            v27 = @"RAP_LOCATION_CLOSED";
            break;
          case 33:
            v27 = @"RAP_CLOSED_PERMANENTLY";
            break;
          case 34:
            v27 = @"RAP_CLOSED_TEMPORARILY";
            break;
          case 35:
            v27 = @"RAP_HOURS_HAVE_CHANGED";
            break;
          case 36:
            v27 = @"RAP_SELECT_STATION";
            break;
          case 37:
            v27 = @"RAP_SELECT_LINE";
            break;
          case 38:
            v27 = @"RAP_SELECT_ACCESS_POINT";
            break;
          case 39:
            v27 = @"RAP_SELECT_SEARCH";
            break;
          case 40:
            v27 = @"RAP_PAN_MAP";
            break;
          case 41:
            v27 = @"RAP_CENTER_MAP_ON_USER";
            break;
          case 42:
            v27 = @"RAP_SEARCH_UNEXPECTED";
            break;
          case 43:
            v27 = @"RAP_ADD_POI";
            break;
          case 44:
            v27 = @"RAP_ADD_STREET_ADDRESS";
            break;
          case 45:
            v27 = @"RAP_ADD_OTHER";
            break;
          case 46:
            v27 = @"RAP_SELECT_CATEGORY";
            break;
          case 47:
            v27 = @"RAP_TAKE_PHOTO";
            break;
          case 48:
            v27 = @"RAP_RETAKE_PHOTO";
            break;
          case 49:
            v27 = @"RAP_PLACE_DETAILS";
            break;
          case 50:
            v27 = @"RAP_SATELLITE_IMAGE_OUTDATED";
            break;
          case 51:
            v27 = @"RAP_SATELLITE_IMAGE_QUALITY";
            break;
          case 52:
            v27 = @"RAP_SELECT_LABEL";
            break;
          case 53:
            v27 = @"RAP_SELECT_ROUTE";
            break;
          case 54:
            v27 = @"RAP_CLAIM_BUSINESS";
            break;
          case 55:
            v27 = @"RAP_BRAND_DETAILS";
            break;
          case 56:
            v27 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";
            break;
          case 57:
            v27 = @"RAP_LOOK_AROUND_LABELS_STREET";
            break;
          case 58:
            v27 = @"RAP_LOOK_AROUND_BLURRING";
            break;
          case 59:
            v27 = @"RAP_LOOK_AROUND_REMOVE_HOME";
            break;
          case 60:
            v27 = @"RAP_LOOK_AROUND_LABELS_STORE";
            break;
          case 61:
            v27 = @"RAP_LOOK_AROUND_PRIVACY";
            break;
          case 62:
            v27 = @"RAP_INCORRECT_HOURS";
            break;
          case 63:
            v27 = @"RAP_INCORRECT_ADDRESS";
            break;
          case 64:
            v27 = @"RAP_EDIT_PLACE_DETAILS";
            break;
          case 65:
            v27 = @"RAP_EDIT_PLACE_NAME";
            break;
          case 66:
            v27 = @"RAP_EDIT_ADDRESS";
            break;
          case 67:
            v27 = @"RAP_ADD_CATEGORY";
            break;
          case 68:
            v27 = @"RAP_REMOVE_CATEGORY";
            break;
          case 69:
            v27 = @"RAP_DESELECT_CATEGORY";
            break;
          case 70:
            v27 = @"RAP_ADD_HOURS";
            break;
          case 71:
            v27 = @"RAP_REMOVE_HOURS";
            break;
          case 72:
            v27 = @"RAP_TAP_DAY_OF_WEEK";
            break;
          case 73:
            v27 = @"RAP_TAP_24_HOURS_BUTTON";
            break;
          case 74:
            v27 = @"RAP_TAP_OPEN_TIME";
            break;
          case 75:
            v27 = @"RAP_TAP_CLOSED_TIME";
            break;
          case 76:
            v27 = @"RAP_TAP_TEMPORARY_CLOSURE";
            break;
          case 77:
            v27 = @"RAP_TAP_PERMANENTLY_CLOSED";
            break;
          case 78:
            v27 = @"RAP_EDIT_WEBSITE";
            break;
          case 79:
            v27 = @"RAP_EDIT_PHONE_NUMBER";
            break;
          case 80:
            v27 = @"RAP_TAP_ACCEPTS_APPLE_PAY";
            break;
          case 81:
            v27 = @"RAP_ADD_COMMENTS";
            break;
          case 82:
            v27 = @"RAP_EDIT_LOCATION";
            break;
          case 83:
            v27 = @"RAP_VIEW_LOCATION";
            break;
          case 84:
            v27 = @"RAP_ZOOM_IN";
            break;
          case 85:
            v27 = @"RAP_ZOOM_OUT";
            break;
          case 86:
            v27 = @"RAP_VIEW_ENTRY_POINTS";
            break;
          case 87:
            v27 = @"RAP_EDIT_EXISTING_ENTRY_POINT";
            break;
          case 88:
            v27 = @"RAP_ADD_NEW_ENTRY_POINT";
            break;
          case 89:
            v27 = @"RAP_REMOVE_ENTRY_POINT";
            break;
          case 90:
            v27 = @"RAP_SELECT_ENTRY_POINT_TYPE";
            break;
          default:
            v26 = classificationCopy;
            v28 = classificationCopy;
            switch(classificationCopy)
            {
              case 9001:
                v27 = @"TAP_WIDGET_ITEM";
                break;
              case 9002:
                v27 = @"DISPLAY_NOTIFICATION";
                break;
              case 9003:
                v27 = @"TAP_NOTIFICATION";
                break;
              case 9004:
                v27 = @"EXPAND_NOTIFICATION";
                break;
              case 9005:
                v27 = @"DISMISS_NOTIFICATION";
                break;
              case 9006:
                v27 = @"OPEN_SEARCH";
                break;
              case 9007:
                v27 = @"OPEN_PAN_VIEW";
                break;
              case 9008:
                v27 = @"PAN_LEFT";
                break;
              case 9009:
                v27 = @"PAN_UP";
                break;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_2136;
              case 9011:
                v27 = @"PAN_DOWN";
                break;
              case 9012:
                v27 = @"TAP_RECENT_DESTINATIONS";
                break;
              case 9013:
                v27 = @"OPEN_DESTINATIONS";
                break;
              case 9014:
                v27 = @"OPEN_FAVORITES";
                break;
              case 9015:
                v27 = @"VIEW_NAV_OPTIONS";
                break;
              case 9016:
                v27 = @"START_NAV_NO_GUIDANCE";
                break;
              case 9017:
                v27 = @"TURN_OFF_GUIDANCE";
                break;
              case 9018:
                v27 = @"TURN_ON_GUIDANCE";
                break;
              case 9019:
                v27 = @"OPEN_KEYBOARD";
                break;
              case 9020:
                v27 = @"SHARE_DESTINATION";
                break;
              case 9021:
                v27 = @"START_NAV_AUTOMATED";
                break;
              case 9022:
                v27 = @"SHARE_ETA";
                break;
              case 9023:
                v27 = @"SELECT_GROUP";
                break;
              case 9024:
                v27 = @"DESELECT_GROUP";
                break;
              case 9025:
                v27 = @"SELECT_CONTACT";
                break;
              case 9026:
                v27 = @"DESELECT_CONTACT";
                break;
              case 9027:
                v27 = @"TAP_VIEW_CONTACTS";
                break;
              case 9028:
                v27 = @"STOP_RECEIVING_ETA";
                break;
              case 9029:
                v27 = @"DISPLAY_ANNOUNCEMENT";
                break;
              case 9030:
                v27 = @"TAP_ANNOUNCEMENT";
                break;
              case 9031:
                v27 = @"DISPLAY_CYCLING_NOTIFICATION";
                break;
              case 9032:
                v27 = @"TAP_CYCLING_NOTIFICATION";
                break;
              case 9033:
                v27 = @"SHARE_CYCLING_ETA";
                break;
              case 9034:
                v27 = @"MANAGE_NOTIFICATIONS";
                break;
              case 9035:
                v27 = @"PUNCH_OUT_PUBLISHER_REVIEW";
                break;
              case 9036:
                v27 = @"SCROLL_FORWARD";
                break;
              case 9037:
                v27 = @"SCROLL_BACKWARD";
                break;
              case 9038:
                v27 = @"SHOW_ALL_CURATED_COLLECTIONS";
                break;
              case 9039:
                v27 = @"TAP_LESS";
                break;
              case 9040:
                v27 = @"TAP_MORE";
                break;
              case 9101:
                v27 = @"DISPLAY_ADD_HOME_AND_WORK";
                break;
              case 9102:
                v27 = @"TAP_ADD_HOME_AND_WORK";
                break;
              case 9103:
                v27 = @"DISPLAY_ALLOW_FREQUENTS";
                break;
              case 9104:
                v27 = @"TAP_ALLOW_FREQUENTS";
                break;
              case 9105:
                v27 = @"DISPLAY_ALLOW_LOCATION";
                break;
              case 9106:
                v27 = @"TAP_ALLOW_LOCATION";
                break;
              default:
                v28 = classificationCopy;
                switch(classificationCopy)
                {
                  case 11001:
                    v27 = @"EXIT_MAPS_LOWER_WRIST";
                    break;
                  case 11002:
                    v27 = @"TASK_READY";
                    break;
                  case 11003:
                    v27 = @"TAP_SEARCH";
                    break;
                  case 11004:
                    v27 = @"TAP_MY_LOCATION";
                    break;
                  case 11005:
                    v27 = @"SHOW_NEARBY";
                    break;
                  case 11006:
                    v27 = @"TAP_NEARBY";
                    break;
                  case 11007:
                    v27 = @"TAP_PROACTIVE";
                    break;
                  case 11008:
                    v27 = @"FORCE_PRESS";
                    break;
                  case 11009:
                    v27 = @"TAP_CONTACTS";
                    break;
                  case 11010:
                    v27 = @"TAP_TRANSIT";
                    break;
                  case 11011:
                    v27 = @"TAP_DICTATION";
                    break;
                  case 11012:
                    v27 = @"GET_DIRECTIONS_DRIVING";
                    break;
                  case 11013:
                    v27 = @"GET_DIRECTIONS_WALKING";
                    break;
                  case 11014:
                    v27 = @"GET_DIRECTIONS_TRANSIT";
                    break;
                  case 11015:
                    v27 = @"OPEN_STANDARD_MAP";
                    break;
                  case 11016:
                    v27 = @"OPEN_TRANSIT_MAP";
                    break;
                  case 11017:
                    v27 = @"START_NAV_AUTO";
                    break;
                  case 11018:
                    v27 = @"TAP_RECENT";
                    break;
                  case 11019:
                    v27 = @"TAP_FAVORITE";
                    break;
                  case 11020:
                    v27 = @"TAP_SCRIBBLE";
                    break;
                  case 11021:
                    v27 = @"TAP_VIEW_MAP";
                    break;
                  case 11022:
                    v27 = @"TAP_VIEW_TBT";
                    break;
                  case 11023:
                    v27 = @"VIEW_ROUTE_INFO";
                    break;
                  case 11024:
                    v27 = @"NAV_UNMUTE";
                    break;
                  case 11025:
                    v27 = @"NAV_MUTE";
                    break;
                  case 11026:
                    v27 = @"GET_DIRECTIONS_CYCLING";
                    break;
                  case 11027:
                    v27 = @"TAP_SEARCH_HOME";
                    break;
                  case 11028:
                    v27 = @"ROUTE_PAUSED_ON_WATCH";
                    break;
                  case 11029:
                    v27 = @"NEXT_STOP_TAPPED_ON_WATCH";
                    break;
                  default:
                    goto LABEL_2136;
                }

                break;
            }

            break;
        }

        goto LABEL_3321;
      }

      if (v16 > 16000)
      {
        switch(v16)
        {
          case 17001:
            v27 = @"START_DRAG";
            goto LABEL_3320;
          case 17002:
            v27 = @"CANCEL_DRAG";
            goto LABEL_3320;
          case 17003:
            v27 = @"COMPLETE_DRAG";
            goto LABEL_3320;
          case 17004:
            v27 = @"START_DROP";
            goto LABEL_3320;
          case 17005:
            v27 = @"CANCEL_DROP";
            goto LABEL_3320;
          case 17006:
            v27 = @"COMPLETE_DROP";
            goto LABEL_3320;
          case 17007:
            v27 = @"ANNOTATION_SELECT";
            goto LABEL_3320;
          case 17008:
            v27 = @"ANNOTATION_SELECT_AUTO";
            goto LABEL_3320;
          case 17009:
            v27 = @"ANNOTATION_SELECT_LIST";
            goto LABEL_3320;
          case 17010:
            v27 = @"BROWSE_TOP_CATEGORY_DISPLAYED";
            goto LABEL_3320;
          case 17011:
            v27 = @"CALLOUT_FLYOVER_TOUR";
            goto LABEL_3320;
          case 17012:
            v27 = @"CALLOUT_INFO";
            goto LABEL_3320;
          case 17013:
            v27 = @"CALLOUT_NAV_TRANSIT";
            goto LABEL_3320;
          case 17014:
            v27 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";
            goto LABEL_3320;
          case 17015:
            v27 = @"CALLOUT_VIEW_TRANSIT_LINE";
            goto LABEL_3320;
          case 17016:
            v27 = @"DIRECTIONS_SELECT";
            goto LABEL_3320;
          case 17017:
            v27 = @"DIRECTIONS_TRANSIT_CUSTOM";
            goto LABEL_3320;
          case 17018:
            v27 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";
            goto LABEL_3320;
          case 17019:
            v27 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";
            goto LABEL_3320;
          case 17020:
            v27 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";
            goto LABEL_3320;
          case 17021:
            v27 = @"DIRECTIONS_TRANSIT_LATER";
            goto LABEL_3320;
          case 17022:
            v27 = @"DIRECTIONS_TRANSIT_NOW";
            goto LABEL_3320;
          case 17023:
            v27 = @"FLYOVER_NOTIFICATION_DISMISS";
            goto LABEL_3320;
          case 17024:
            v27 = @"FLYOVER_NOTIFICATION_START";
            goto LABEL_3320;
          case 17025:
            v27 = @"FLYOVER_TOUR_COMPLETED";
            goto LABEL_3320;
          case 17026:
            v27 = @"FLYOVER_TOUR_END";
            goto LABEL_3320;
          case 17027:
            v27 = @"FLYOVER_TOUR_NOTIFICATION";
            goto LABEL_3320;
          case 17028:
            v27 = @"FLYOVER_TOUR_START";
            goto LABEL_3320;
          case 17029:
            v27 = @"INFO_BOOKMARKS";
            goto LABEL_3320;
          case 17030:
            v27 = @"INFO_CARD_DETACHED";
            goto LABEL_3320;
          case 17031:
            v27 = @"INFO_CONTACTS";
            goto LABEL_3320;
          case 17032:
            v27 = @"INFO_DIRECTIONS";
            goto LABEL_3320;
          case 17033:
            v27 = @"INFO_DIRECTIONS_FROM";
            goto LABEL_3320;
          case 17034:
            v27 = @"INFO_DIRECTIONS_TO";
            goto LABEL_3320;
          case 17035:
            v27 = @"INFO_DISMISS";
            goto LABEL_3320;
          case 17036:
            v27 = @"INFO_INFO";
            goto LABEL_3320;
          case 17037:
            v27 = @"INFO_PHOTOS";
            goto LABEL_3320;
          case 17038:
            v27 = @"INFO_REVIEWS";
            goto LABEL_3320;
          case 17039:
            v27 = @"INFO_SHARE";
            goto LABEL_3320;
          case 17040:
            v27 = @"INFO_SHARE_AIRDROP";
            goto LABEL_3320;
          case 17041:
            v27 = @"INFO_SHARE_FACEBOOK";
            goto LABEL_3320;
          case 17042:
            v27 = @"INFO_SHARE_MAIL";
            goto LABEL_3320;
          case 17043:
            v27 = @"INFO_SHARE_MESSAGE";
            goto LABEL_3320;
          case 17044:
            v27 = @"INFO_SHARE_TENCENTWEIBO";
            goto LABEL_3320;
          case 17045:
            v27 = @"INFO_SHARE_WEIBO";
            goto LABEL_3320;
          case 17046:
            v27 = @"INFO_YELP";
            goto LABEL_3320;
          case 17047:
            v27 = @"MAPS_APP_LAUNCH";
            goto LABEL_3320;
          case 17048:
            v27 = @"MAP_3D_OFF";
            goto LABEL_3320;
          case 17049:
            v27 = @"MAP_3D_ON";
            goto LABEL_3320;
          case 17050:
            v27 = @"MAP_OPTIONS_DROP_PIN";
            goto LABEL_3320;
          case 17051:
            v27 = @"MAP_OPTIONS_HYBRID";
            goto LABEL_3320;
          case 17052:
            v27 = @"MAP_OPTIONS_PRINT";
            goto LABEL_3320;
          case 17053:
            v27 = @"MAP_OPTIONS_REMOVE_PIN";
            goto LABEL_3320;
          case 17054:
            v27 = @"MAP_OPTIONS_SATELLITE";
            goto LABEL_3320;
          case 17055:
            v27 = @"MAP_OPTIONS_STANDARD";
            goto LABEL_3320;
          case 17056:
            v27 = @"MAP_OPTIONS_TRAFFIC_HIDE";
            goto LABEL_3320;
          case 17057:
            v27 = @"MAP_OPTIONS_TRAFFIC_SHOW";
            goto LABEL_3320;
          case 17058:
            v27 = @"MAP_OPTIONS_TRANSIT";
            goto LABEL_3320;
          case 17059:
            v27 = @"MAP_TAP_FLYOVER_CITY";
            goto LABEL_3320;
          case 17060:
            v27 = @"MAP_TAP_LINE";
            goto LABEL_3320;
          case 17061:
            v27 = @"MAP_TAP_POI_TRANSIT";
            goto LABEL_3320;
          case 17062:
            v27 = @"MAP_TAP_TRAFFIC_INCIDENT";
            goto LABEL_3320;
          case 17063:
            v27 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";
            goto LABEL_3320;
          case 17064:
            v27 = @"MAP_USER_TRACKING_OFF";
            goto LABEL_3320;
          case 17065:
            v27 = @"MAP_USER_TRACKING_ON";
            goto LABEL_3320;
          case 17066:
            v27 = @"MAP_USER_TRACKING_WITH_HEADING_ON";
            goto LABEL_3320;
          case 17067:
            v27 = @"NAV_CLEAR";
            goto LABEL_3320;
          case 17068:
            v27 = @"NAV_LIST";
            goto LABEL_3320;
          case 17069:
            v27 = @"NAV_ROUTE_STEP_NEXT";
            goto LABEL_3320;
          case 17070:
            v27 = @"NAV_ROUTE_STEP_PREV";
            goto LABEL_3320;
          case 17071:
            v27 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";
            goto LABEL_3320;
          case 17072:
            v27 = @"ORB_DISPLAY_MENU";
            goto LABEL_3320;
          case 17073:
            v27 = @"ORB_MENU_CALL";
            goto LABEL_3320;
          case 17074:
            v27 = @"ORB_MENU_DIRECTIONS";
            goto LABEL_3320;
          case 17075:
            v27 = @"ORB_MENU_DISMISS";
            goto LABEL_3320;
          case 17076:
            v27 = @"ORB_MENU_SHARE";
            goto LABEL_3320;
          case 17077:
            v27 = @"ORB_MENU_SHOW_PLACECARD";
            goto LABEL_3320;
          case 17078:
            v27 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";
            goto LABEL_3320;
          case 17079:
            v27 = @"ORB_MENU_URL";
            goto LABEL_3320;
          case 17080:
            v27 = @"ORB_PRESS";
            goto LABEL_3320;
          case 17081:
            v27 = @"ORB_SPRINGBOARD_MARK_LOCATION";
            goto LABEL_3320;
          case 17082:
            v27 = @"ORB_SPRINGBOARD_SEARCH";
            goto LABEL_3320;
          case 17083:
            v27 = @"ORB_SPRINGBOARD_SHARE_LOCATION";
            goto LABEL_3320;
          case 17084:
            v27 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";
            goto LABEL_3320;
          case 17085:
            v27 = @"RAP_PERMISSION_CANCEL";
            goto LABEL_3320;
          case 17086:
            v27 = @"RAP_PERMISSION_EMAIL_NA";
            goto LABEL_3320;
          case 17087:
            v27 = @"RAP_PERMISSION_EMAIL_OK";
            goto LABEL_3320;
          case 17088:
            v27 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";
            goto LABEL_3320;
          case 17089:
            v27 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";
            goto LABEL_3320;
          case 17090:
            v27 = @"RAP_PERMISSION_OK";
            goto LABEL_3320;
          case 17091:
            v27 = @"SEARCH_BEGIN";
            goto LABEL_3320;
          case 17092:
            v27 = @"SEARCH_CANCEL";
            goto LABEL_3320;
          case 17093:
            v27 = @"SEARCH_SELECT";
            goto LABEL_3320;
          case 17094:
            v27 = @"TRANSIT_LINE_SELECTION_DISMISS";
            goto LABEL_3320;
          case 17095:
            v27 = @"TRANSIT_LINE_SELECTION_VIEW";
            goto LABEL_3320;
          case 17096:
            v27 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";
            goto LABEL_3320;
          case 17097:
            v27 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";
            goto LABEL_3320;
          case 17098:
            v27 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";
            goto LABEL_3320;
          case 17099:
            v27 = @"UNKNOWN_ACTION";
            goto LABEL_3320;
          case 17100:
            v27 = @"INFO_SHARE_TWITTER";
            goto LABEL_3320;
          case 17101:
            v27 = @"INFO_TAP_POPULAR_APP_NEARBY";
            goto LABEL_3320;
          case 17102:
            v27 = @"INFO_DIRECTIONS_WALK";
            goto LABEL_3320;
          case 17103:
            v27 = @"INFO_DIRECTIONS_TRANSIT";
            goto LABEL_3320;
          case 17104:
            v27 = @"INFO_DIRECTIONS_DRIVE";
            goto LABEL_3320;
          case 17105:
            v27 = @"INFO_REPORT_A_PROBLEM";
            goto LABEL_3320;
          case 17106:
            v27 = @"CALLOUT_NAV";
            goto LABEL_3320;
          case 17107:
            v27 = @"RAP_PERMISSION_EMAIL_CANCEL";
            goto LABEL_3320;
          case 17108:
            v27 = @"MAP_TAP_POI";
LABEL_3320:
            v23 = idCopy;
            v24 = queue;
            v26 = classificationCopy;
            goto LABEL_3321;
          default:
            v24 = queue;
            if (v16 == 16001)
            {
              v27 = @"SEARCH_IN_MAPS";
              v26 = classificationCopy;
            }

            else
            {
              v28 = v16;
              v46 = v16 == 90010;
              v26 = classificationCopy;
              if (!v46)
              {
                goto LABEL_2136;
              }

              v27 = @"PAN_RIGHT";
            }

            break;
        }

        goto LABEL_3321;
      }

      if (v16 <= 13004)
      {
        if (v16 > 12007)
        {
          v44 = v16;
          if (v16 <= 13000)
          {
            v26 = classificationCopy;
            v24 = queue;
            if (v44 == 12008)
            {
              v27 = @"ADD_SPECIAL_REQUEST";
              goto LABEL_3321;
            }

            if (v44 == 12009)
            {
              v27 = @"CHANGE_RESERVATION";
              goto LABEL_3321;
            }

            v28 = v44;
            if (v44 != 12010)
            {
              goto LABEL_2136;
            }

            v27 = @"LEARN_MORE";
          }

          else
          {
            v26 = classificationCopy;
            v24 = queue;
            if (v44 > 13002)
            {
              if (v44 == 13003)
              {
                v27 = @"SELECT_LABEL";
                goto LABEL_3321;
              }

              v28 = v44;
              if (v44 != 13004)
              {
                goto LABEL_2136;
              }

              v27 = @"DELETE_ADDRESS";
            }

            else
            {
              if (v44 == 13001)
              {
                v27 = @"SELECT_ADDRESS";
                goto LABEL_3321;
              }

              v28 = v44;
              if (v44 != 13002)
              {
                goto LABEL_2136;
              }

              v27 = @"ADD_ADDRESS";
            }
          }
        }

        else
        {
          v42 = v16;
          if (v16 <= 12003)
          {
            v26 = classificationCopy;
            v24 = queue;
            if (v42 == 12001)
            {
              v27 = @"VIEW_MORE_OPTIONS";
              goto LABEL_3321;
            }

            if (v42 == 12002)
            {
              v27 = @"SELECT_TIME";
              goto LABEL_3321;
            }

            v28 = v42;
            if (v42 != 12003)
            {
              goto LABEL_2136;
            }

            v27 = @"SHOW_NEXT_AVAILABLE";
          }

          else
          {
            v26 = classificationCopy;
            v24 = queue;
            if (v42 > 12005)
            {
              if (v42 == 12006)
              {
                v27 = @"EDIT_BOOKING";
                goto LABEL_3321;
              }

              v28 = v42;
              if (v42 != 12007)
              {
                goto LABEL_2136;
              }

              v27 = @"EDIT_PHONE";
            }

            else
            {
              if (v42 == 12004)
              {
                v27 = @"DECREASE_TABLE_SIZE";
                goto LABEL_3321;
              }

              v28 = v42;
              if (v42 != 12005)
              {
                goto LABEL_2136;
              }

              v27 = @"INCREASE_TABLE_SIZE";
            }
          }
        }
      }

      else if (v16 <= 14004)
      {
        v45 = v16;
        if (v16 <= 14000)
        {
          v26 = classificationCopy;
          v24 = queue;
          if (v45 == 13005)
          {
            v27 = @"EDIT_ITEMS";
            goto LABEL_3321;
          }

          if (v45 == 13006)
          {
            v27 = @"RAP_FAVORITES";
            goto LABEL_3321;
          }

          v28 = v45;
          if (v45 != 13007)
          {
            goto LABEL_2136;
          }

          v27 = @"SORT_LIST_ITEM";
        }

        else
        {
          v26 = classificationCopy;
          v24 = queue;
          if (v45 > 14002)
          {
            if (v45 == 14003)
            {
              v27 = @"BOOK_RIDE";
              goto LABEL_3321;
            }

            v28 = v45;
            if (v45 != 14004)
            {
              goto LABEL_2136;
            }

            v27 = @"REQUEST_RIDE";
          }

          else
          {
            if (v45 == 14001)
            {
              v27 = @"VIEW_APP";
              goto LABEL_3321;
            }

            v28 = v45;
            if (v45 != 14002)
            {
              goto LABEL_2136;
            }

            v27 = @"ENABLE";
          }
        }
      }

      else
      {
        v41 = v16;
        if (v16 > 14008)
        {
          v26 = classificationCopy;
          v24 = queue;
          if (v41 > 15001)
          {
            if (v41 == 15002)
            {
              v27 = @"ORB_POP";
              goto LABEL_3321;
            }

            v28 = v41;
            if (v41 != 15003)
            {
              goto LABEL_2136;
            }

            v27 = @"ORB_DISMISS";
          }

          else
          {
            if (v41 == 14009)
            {
              v27 = @"SUBMIT_TRIP_FEEDBACK";
              goto LABEL_3321;
            }

            v28 = v41;
            if (v41 != 15001)
            {
              goto LABEL_2136;
            }

            v27 = @"ORB_PEEK";
          }
        }

        else
        {
          v26 = classificationCopy;
          v24 = queue;
          if (v41 > 14006)
          {
            if (v41 == 14007)
            {
              v27 = @"ENABLE_ALL_RIDESHARE_APPS";
              goto LABEL_3321;
            }

            v28 = v41;
            if (v41 != 14008)
            {
              goto LABEL_2136;
            }

            v27 = @"TAP_FOR_MORE_RIDES";
          }

          else
          {
            if (v41 == 14005)
            {
              v27 = @"CONTACT_DRIVER";
              goto LABEL_3321;
            }

            v28 = v41;
            if (v41 != 14006)
            {
              goto LABEL_2136;
            }

            v27 = @"CHANGE_PAYMENT";
          }
        }
      }
    }
  }

  else
  {
    if (v16 <= 1500)
    {
      v24 = queue;
      v25 = v16;
      v26 = classificationCopy;
      v27 = @"UI_ACTION_UNKNOWN";
      v28 = v25;
      switch(v25)
      {
        case 0:
          goto LABEL_3321;
        case 1:
          v27 = @"PULL_UP";
          break;
        case 2:
          v27 = @"PULL_DOWN";
          break;
        case 3:
          v27 = @"TAP";
          break;
        case 4:
          v27 = @"CLOSE";
          break;
        case 5:
          v27 = @"SWIPE_PREV";
          break;
        case 6:
          v27 = @"SWIPE_NEXT";
          break;
        case 7:
          v27 = @"SCROLL_UP";
          break;
        case 8:
          v27 = @"SCROLL_DOWN";
          break;
        case 9:
        case 23:
        case 24:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 530:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 549:
        case 550:
        case 551:
        case 552:
        case 553:
        case 554:
        case 555:
        case 556:
        case 557:
        case 558:
        case 559:
        case 560:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 601:
        case 602:
        case 603:
        case 604:
        case 605:
        case 606:
        case 607:
        case 608:
        case 609:
        case 610:
        case 611:
        case 612:
        case 613:
        case 614:
        case 615:
        case 616:
        case 617:
        case 618:
        case 619:
        case 620:
        case 621:
        case 622:
        case 623:
        case 624:
        case 625:
        case 626:
        case 627:
        case 628:
        case 629:
        case 630:
        case 631:
        case 632:
        case 633:
        case 634:
        case 635:
        case 636:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
        case 642:
        case 643:
        case 644:
        case 645:
        case 646:
        case 647:
        case 648:
        case 649:
        case 650:
        case 651:
        case 652:
        case 653:
        case 654:
        case 655:
        case 656:
        case 657:
        case 658:
        case 659:
        case 660:
        case 661:
        case 662:
        case 663:
        case 664:
        case 665:
        case 666:
        case 667:
        case 668:
        case 669:
        case 670:
        case 671:
        case 672:
        case 673:
        case 674:
        case 675:
        case 676:
        case 677:
        case 678:
        case 679:
        case 680:
        case 681:
        case 682:
        case 683:
        case 684:
        case 685:
        case 686:
        case 687:
        case 688:
        case 689:
        case 690:
        case 691:
        case 692:
        case 693:
        case 694:
        case 695:
        case 696:
        case 697:
        case 698:
        case 699:
        case 700:
        case 701:
        case 702:
        case 703:
        case 704:
        case 705:
        case 706:
        case 707:
        case 708:
        case 709:
        case 710:
        case 711:
        case 712:
        case 713:
        case 714:
        case 715:
        case 716:
        case 717:
        case 718:
        case 719:
        case 720:
        case 721:
        case 722:
        case 723:
        case 724:
        case 725:
        case 726:
        case 727:
        case 728:
        case 729:
        case 730:
        case 731:
        case 732:
        case 733:
        case 734:
        case 735:
        case 736:
        case 737:
        case 738:
        case 739:
        case 740:
        case 741:
        case 742:
        case 743:
        case 744:
        case 745:
        case 746:
        case 747:
        case 748:
        case 749:
        case 750:
        case 751:
        case 752:
        case 753:
        case 754:
        case 755:
        case 756:
        case 757:
        case 758:
        case 759:
        case 760:
        case 761:
        case 762:
        case 763:
        case 764:
        case 765:
        case 766:
        case 767:
        case 768:
        case 769:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 800:
        case 801:
        case 802:
        case 803:
        case 804:
        case 805:
        case 806:
        case 807:
        case 808:
        case 809:
        case 810:
        case 811:
        case 812:
        case 813:
        case 814:
        case 815:
        case 816:
        case 817:
        case 818:
        case 819:
        case 820:
        case 821:
        case 822:
        case 823:
        case 824:
        case 825:
        case 826:
        case 827:
        case 828:
        case 829:
        case 830:
        case 831:
        case 832:
        case 833:
        case 834:
        case 835:
        case 836:
        case 837:
        case 838:
        case 839:
        case 840:
        case 841:
        case 842:
        case 843:
        case 844:
        case 845:
        case 846:
        case 847:
        case 848:
        case 849:
        case 850:
        case 851:
        case 852:
        case 853:
        case 854:
        case 855:
        case 856:
        case 857:
        case 858:
        case 859:
        case 860:
        case 861:
        case 862:
        case 863:
        case 864:
        case 865:
        case 866:
        case 867:
        case 868:
        case 869:
        case 870:
        case 871:
        case 872:
        case 873:
        case 874:
        case 875:
        case 876:
        case 877:
        case 878:
        case 879:
        case 880:
        case 881:
        case 882:
        case 883:
        case 884:
        case 885:
        case 886:
        case 887:
        case 888:
        case 889:
        case 890:
        case 891:
        case 892:
        case 893:
        case 894:
        case 895:
        case 896:
        case 897:
        case 898:
        case 899:
        case 900:
        case 901:
        case 902:
        case 903:
        case 904:
        case 905:
        case 906:
        case 907:
        case 908:
        case 909:
        case 910:
        case 911:
        case 912:
        case 913:
        case 914:
        case 915:
        case 916:
        case 917:
        case 918:
        case 919:
        case 920:
        case 921:
        case 922:
        case 923:
        case 924:
        case 925:
        case 926:
        case 927:
        case 928:
        case 929:
        case 930:
        case 931:
        case 932:
        case 933:
        case 934:
        case 935:
        case 936:
        case 937:
        case 938:
        case 939:
        case 940:
        case 941:
        case 942:
        case 943:
        case 944:
        case 945:
        case 946:
        case 947:
        case 948:
        case 949:
        case 950:
        case 951:
        case 952:
        case 953:
        case 954:
        case 955:
        case 956:
        case 957:
        case 958:
        case 959:
        case 960:
        case 961:
        case 962:
        case 963:
        case 964:
        case 965:
        case 966:
        case 967:
        case 968:
        case 969:
        case 970:
        case 971:
        case 972:
        case 973:
        case 974:
        case 975:
        case 976:
        case 977:
        case 978:
        case 979:
        case 980:
        case 981:
        case 982:
        case 983:
        case 984:
        case 985:
        case 986:
        case 987:
        case 988:
        case 989:
        case 990:
        case 991:
        case 992:
        case 993:
        case 994:
        case 995:
        case 996:
        case 997:
        case 998:
        case 999:
        case 1000:
        case 1005:
        case 1006:
        case 1007:
        case 1008:
        case 1009:
        case 1012:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1019:
        case 1021:
        case 1022:
        case 1023:
        case 1024:
        case 1025:
        case 1026:
        case 1027:
        case 1028:
        case 1029:
          goto LABEL_2136;
        case 10:
          v27 = @"SHOW_MORE";
          break;
        case 11:
          v27 = @"SHOW_LESS";
          break;
        case 12:
          v27 = @"SWIPE_LEFT";
          break;
        case 13:
          v27 = @"SWIPE_RIGHT";
          break;
        case 14:
          v27 = @"MINIMIZE";
          break;
        case 15:
          v27 = @"TAP_PREV";
          break;
        case 16:
          v27 = @"TAP_NEXT";
          break;
        case 17:
          v27 = @"SUBMIT";
          break;
        case 18:
          v27 = @"CANCEL";
          break;
        case 19:
          v27 = @"ENTER_MAPS";
          break;
        case 20:
          v27 = @"EXIT_MAPS";
          break;
        case 21:
          v27 = @"REVEAL";
          break;
        case 22:
          v27 = @"OPEN_NEW_TAB";
          break;
        case 25:
          v27 = @"BACK";
          break;
        case 26:
          v27 = @"ACTIVATE";
          break;
        case 27:
          v27 = @"DEACTIVATE";
          break;
        case 28:
          v27 = @"AGREE";
          break;
        case 29:
          v27 = @"DISAGREE";
          break;
        case 30:
          v27 = @"SKIP_ANSWER";
          break;
        case 31:
          v27 = @"EXPAND";
          break;
        case 32:
          v27 = @"COLLAPSE";
          break;
        case 33:
          v27 = @"ENTER";
          break;
        case 34:
          v27 = @"EXIT";
          break;
        case 35:
          v27 = @"SCROLL_UP_INDEX_BAR";
          break;
        case 36:
          v27 = @"SCROLL_DOWN_INDEX_BAR";
          break;
        case 37:
          v27 = @"TOGGLE_ON";
          break;
        case 38:
          v27 = @"TOGGLE_OFF";
          break;
        case 39:
          v27 = @"LONG_PRESS";
          break;
        case 40:
          v27 = @"CLICK";
          break;
        case 41:
          v27 = @"TAP_DONE";
          break;
        case 42:
          v27 = @"TAP_CLOSE";
          break;
        case 43:
          v27 = @"SCROLL_LEFT";
          break;
        case 44:
          v27 = @"SCROLL_RIGHT";
          break;
        case 45:
          v27 = @"DISPLAY";
          break;
        case 46:
          v27 = @"OPEN_IN_APP";
          break;
        case 47:
          v27 = @"CONCEAL";
          break;
        case 48:
          v27 = @"TAP_DELETE";
          break;
        case 49:
          v27 = @"TAP_FILTER";
          break;
        case 50:
          v27 = @"TAP_SECONDARY_BUTTON";
          break;
        case 51:
          v27 = @"TAP_WIDGET_FOOD";
          break;
        case 52:
          v27 = @"TAP_WIDGET_GAS";
          break;
        case 53:
          v27 = @"TAP_WIDGET_LOADING";
          break;
        case 54:
          v27 = @"TAP_WIDGET_SEARCH";
          break;
        case 55:
          v27 = @"TAP_WIDGET_STORES";
          break;
        case 56:
          v27 = @"DISPLAY_ALLOW_ONCE_PROMPT";
          break;
        case 57:
          v27 = @"SHARE_CURRENT_LOCATION";
          break;
        case 58:
          v27 = @"SHARE_PHOTO";
          break;
        case 59:
          v27 = @"TAP_KEEP_OFF";
          break;
        case 60:
          v27 = @"TAP_PHOTO_CATEGORY";
          break;
        case 61:
          v27 = @"TAP_PRECISE_LOCATION_OFF_BANNER";
          break;
        case 62:
          v27 = @"TAP_TURN_ON";
          break;
        case 63:
          v27 = @"DISPLAY_CYCLING_ANNOTATION";
          break;
        case 64:
          v27 = @"DISPLAY_DRIVING_DEFAULT_OPTION";
          break;
        case 65:
          v27 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";
          break;
        case 66:
          v27 = @"DISPLAY_WALKING_DEFAULT_OPTION";
          break;
        case 67:
          v27 = @"TAP_CYCLING_ANNOTATION";
          break;
        case 68:
          v27 = @"TAP_DRIVING_DEFAULT_OPTION";
          break;
        case 69:
          v27 = @"TAP_TRANSIT_DEFAULT_OPTION";
          break;
        case 70:
          v27 = @"TAP_WALKING_DEFAULT_OPTION";
          break;
        case 71:
          v27 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";
          break;
        case 72:
          v27 = @"TAP_RIDESHARE_DEFAULT_OPTION";
          break;
        case 73:
          v27 = @"TAP_PERSONAL_COLLECTION";
          break;
        case 74:
          v27 = @"RESUME_ROUTE";
          break;
        case 75:
          v27 = @"DISPLAY_OUT_OF_RANGE_ALERT";
          break;
        case 76:
          v27 = @"TAP_ALLOW_ONCE";
          break;
        case 77:
          v27 = @"TAP_DO_NOT_ALLOW";
          break;
        case 78:
          v27 = @"ADD_RECCOMENDED_FAVORITE";
          break;
        case 79:
          v27 = @"ADD_RECOMMENDED_HOME_FAVORITE";
          break;
        case 80:
          v27 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";
          break;
        case 81:
          v27 = @"ADD_RECOMMENDED_WORK_FAVORITE";
          break;
        case 82:
          v27 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";
          break;
        case 83:
          v27 = @"CREATE_SCHOOL_FAVORITE";
          break;
        case 84:
          v27 = @"TAP_SCHOOL_FAVORITE";
          break;
        case 85:
          v27 = @"SELECT_ROUTING_TYPE_CYCLING";
          break;
        case 86:
          v27 = @"REPORT_PHOTO";
          break;
        case 87:
          v27 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";
          break;
        case 88:
          v27 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";
          break;
        case 89:
          v27 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";
          break;
        case 90:
          v27 = @"CREATE_RECOMMENDED_FAVORITE";
          break;
        case 91:
          v27 = @"CREATE_RECOMMENDED_HOME_FAVORITE";
          break;
        case 92:
          v27 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";
          break;
        case 93:
          v27 = @"CREATE_RECOMMENDED_WORK_FAVORITE";
          break;
        case 94:
          v27 = @"TAP_SMALL_WIDGET_ITEM";
          break;
        case 95:
          v27 = @"TAP_MEDIUM_WIDGET_ITEM";
          break;
        case 96:
          v27 = @"TAP_LARGE_WIDGET_ITEM";
          break;
        case 97:
          v27 = @"DISPLAY_ARP_TIPKIT";
          break;
        case 98:
          v27 = @"NEXT";
          break;
        case 99:
          v27 = @"TAP_RATE_AND_ADD_PHOTOS";
          break;
        case 100:
          v27 = @"TAP_TO_ADD_POSITIVE_RATING";
          break;
        case 101:
          v27 = @"TAP_TO_ADD_NEGATIVE_RATING";
          break;
        case 102:
          v27 = @"TAP_ACTIVE_SHARING_NOTIFICATION";
          break;
        case 103:
          v27 = @"INVOKE_SIRI_PROMPT";
          break;
        case 104:
          v27 = @"ETA_SHARED_SUCCESSFULLY";
          break;
        case 105:
          v27 = @"ENDED_ETA_SHARE_SUCCESSFULLY";
          break;
        case 106:
          v27 = @"CLEAR_INCIDENT";
          break;
        case 107:
          v27 = @"CONFIRM_INCIDENT";
          break;
        case 108:
          v27 = @"DISMISS_INCIDENT";
          break;
        case 109:
          v27 = @"INCIDENT_ALERT_TIMEOUT";
          break;
        case 110:
          v27 = @"INCIDENT_ALERT_TRAY_SHOWN";
          break;
        case 111:
          v27 = @"INCIDENT_CARD_SHOWN";
          break;
        case 112:
          v27 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";
          break;
        case 113:
          v27 = @"INCIDENT_REPORT_TRAY_SHOWN";
          break;
        case 114:
          v27 = @"NAV_TRAY_DISCOVERY_SHOWN";
          break;
        case 115:
          v27 = @"TAP_TO_REPORT_INCIDENT";
          break;
        case 116:
          v27 = @"TAP_SHORTCUT";
          break;
        case 117:
          v27 = @"BLOCK_CONTACT";
          break;
        case 118:
          v27 = @"TAP_TO_ADD_RATING";
          break;
        case 119:
          v27 = @"AR_WALKING_LOCALIZATION_FAILED";
          break;
        case 120:
          v27 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";
          break;
        case 121:
          v27 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";
          break;
        case 122:
          v27 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";
          break;
        case 123:
          v27 = @"ATTEMPT_AR_WALKING_LOCALIZATION";
          break;
        case 124:
          v27 = @"RAISE_TO_ENTER_AR_WALKING";
          break;
        case 125:
          v27 = @"TAP_DISMISS";
          break;
        case 126:
          v27 = @"TAP_ENTER_AR_WALKING";
          break;
        case 127:
          v27 = @"TAP_OK";
          break;
        case 128:
          v27 = @"TAP_TRY_AGAIN";
          break;
        case 129:
          v27 = @"TAP_TURN_ON_IN_SETTINGS";
          break;
        case 130:
          v27 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";
          break;
        case 131:
          v27 = @"VLF_CORRECTION_USER_ABANDON";
          break;
        case 132:
          v27 = @"AREA_EVENTS_ALERT";
          break;
        case 133:
          v27 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";
          break;
        case 134:
          v27 = @"ACCEPT_EVENT_REROUTE";
          break;
        case 135:
          v27 = @"DISPLAY_AREA_EVENTS_ADVISORY";
          break;
        case 136:
          v27 = @"DISMISS_EVENT_REROUTE";
          break;
        case 137:
          v27 = @"PUNCH_OUT_EVENTS_LINK";
          break;
        case 138:
          v27 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";
          break;
        case 139:
          v27 = @"ADJUST_GUIDANCE_SETTINGS";
          break;
        case 140:
          v27 = @"HIDE_DETAILS";
          break;
        case 141:
          v27 = @"SELECT_VOICE_GUIDANCE_ON";
          break;
        case 142:
          v27 = @"SELECT_VOICE_GUIDANCE_OFF";
          break;
        case 143:
          v27 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";
          break;
        case 144:
          v27 = @"TAP_TEXT_LABEL";
          break;
        case 145:
          v27 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";
          break;
        case 146:
          v27 = @"TAP_EXIT";
          break;
        case 147:
          v27 = @"TAP_CITY_MENU";
          break;
        case 148:
          v27 = @"CHECK_AVOID_TOLLS";
          break;
        case 149:
          v27 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";
          break;
        case 150:
          v27 = @"TAP_ICLOUD";
          break;
        case 151:
          v27 = @"CHECK_AVOID_HIGHWAYS";
          break;
        case 152:
          v27 = @"TAP_FAVORITES";
          break;
        case 153:
          v27 = @"SELECT_DISTANCE_IN_KM";
          break;
        case 154:
          v27 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";
          break;
        case 155:
          v27 = @"OPEN_FULL_CARD_FILTER";
          break;
        case 156:
          v27 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";
          break;
        case 157:
          v27 = @"OPEN_SINGLE_CARD_FILTER";
          break;
        case 158:
          v27 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";
          break;
        case 159:
          v27 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";
          break;
        case 160:
          v27 = @"SESSIONLESS_REVEAL";
          break;
        case 161:
          v27 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";
          break;
        case 162:
          v27 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";
          break;
        case 163:
          v27 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";
          break;
        case 164:
          v27 = @"ENTER_RAP_REPORT_MENU";
          break;
        case 165:
          v27 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";
          break;
        case 166:
          v27 = @"TAP_MY_VEHICLES";
          break;
        case 167:
          v27 = @"SUBMIT_SINGLE_CARD_FILTER";
          break;
        case 168:
          v27 = @"SUBMIT_FULL_CARD_FILTER";
          break;
        case 169:
          v27 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";
          break;
        case 170:
          v27 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";
          break;
        case 171:
          v27 = @"TAP_EXPLORE_CURATED_COLELCTIONS";
          break;
        case 172:
          v27 = @"TAP_ACCOUNT";
          break;
        case 173:
          v27 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";
          break;
        case 174:
          v27 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";
          break;
        case 175:
          v27 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";
          break;
        case 176:
          v27 = @"RESULT_REFINEMENT_TOGGLE_OFF";
          break;
        case 177:
          v27 = @"TAP_CITY_CURATED_COLLECTIONS";
          break;
        case 178:
          v27 = @"TAP_REPORTS";
          break;
        case 179:
          v27 = @"TAP_RATINGS";
          break;
        case 180:
          v27 = @"TAP_EXPLORE_CURATED_COLLECTIONS";
          break;
        case 181:
          v27 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";
          break;
        case 182:
          v27 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";
          break;
        case 183:
          v27 = @"SELECT_DISTANCE_IN_MILES";
          break;
        case 184:
          v27 = @"TAP_PRIVACY_STATEMENT";
          break;
        case 185:
          v27 = @"TAP_MAPS_SETTINGS";
          break;
        case 186:
          v27 = @"CANCEL_FULL_CARD_FILTER";
          break;
        case 187:
          v27 = @"TAP_LATEST_CURATED_COLLECTION";
          break;
        case 188:
          v27 = @"TAP_TEMPORAL_CURATED_COLLECTION";
          break;
        case 189:
          v27 = @"UNCHECK_AVOID_TOLLS";
          break;
        case 190:
          v27 = @"UNSELECT_SEARCH_REFINEMENT";
          break;
        case 191:
          v27 = @"TAP_RATING";
          break;
        case 192:
          v27 = @"TAP_ICLOUD_SIGN_IN";
          break;
        case 193:
          v27 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";
          break;
        case 194:
          v27 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";
          break;
        case 195:
          v27 = @"UNCHECK_AVOID_HIGHWAYS";
          break;
        case 196:
          v27 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";
          break;
        case 197:
          v27 = @"RESULT_REFINEMENT_TOGGLE_ON";
          break;
        case 198:
          v27 = @"TAP_CONTEXT_LINE_HYPERLINK";
          break;
        case 199:
          v27 = @"TAP_MY_GUIDES";
          break;
        case 200:
          v27 = @"SELECT_SEARCH_REFINEMENT";
          break;
        case 201:
          v27 = @"SESSIONLESS_TAP_ACCOUNT";
          break;
        case 202:
          v27 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";
          break;
        case 203:
          v27 = @"TAP_TRAVEL_PREFERENCES";
          break;
        case 204:
          v27 = @"SHOW_CURATED_COLLECTION_LIST";
          break;
        case 205:
          v27 = @"CANCEL_SINGLE_CARD_FILTER";
          break;
        case 206:
          v27 = @"DISPLAY_HFP_OPTION";
          break;
        case 207:
          v27 = @"SWITCH_OFF_HFP";
          break;
        case 208:
          v27 = @"SWITCH_ON_HFP";
          break;
        case 209:
          v27 = @"TAP_QUICK_ACTION_TRAY";
          break;
        case 210:
          v27 = @"SHOW_ALL_CITIES";
          break;
        case 211:
          v27 = @"TAP_ADD_NEARBY_TRANSIT";
          break;
        case 212:
          v27 = @"RESUME";
          break;
        case 213:
          v27 = @"DISPLAY_TIPKIT_PROMPT";
          break;
        case 214:
          v27 = @"TAP_NEARBY_TRANSIT_FAVORITE";
          break;
        case 215:
          v27 = @"TAP_DRIVING_MODE";
          break;
        case 216:
          v27 = @"SWITCH_ON_VOICE_GUIDANCE";
          break;
        case 217:
          v27 = @"DISMISS_TIPKIT_PROMPT";
          break;
        case 218:
          v27 = @"TAP_EXPAND_EXIT_DETAILS";
          break;
        case 219:
          v27 = @"TAP_NEARBY_TRANSIT_FILTER";
          break;
        case 220:
          v27 = @"TAP_MORE_DEPARTURES";
          break;
        case 221:
          v27 = @"RAP_INDIVIDUAL_PLACE";
          break;
        case 222:
          v27 = @"RAP_ADD_MAP";
          break;
        case 223:
          v27 = @"TAP_SUGGESTED_RAP";
          break;
        case 224:
          v27 = @"RAP_STREET_ISSUE";
          break;
        case 225:
          v27 = @"SWIPE_PIN_REVEAL";
          break;
        case 226:
          v27 = @"TAP_ADD_TIPKIT_FAVORITE";
          break;
        case 227:
          v27 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";
          break;
        case 228:
          v27 = @"RAP_BAD_TRIP";
          break;
        case 229:
          v27 = @"RAP_PLACE_ISSUE";
          break;
        case 230:
          v27 = @"TAP_OPEN_MAPS";
          break;
        case 231:
          v27 = @"TAP_NEARBY_TRANSIT_RESULT";
          break;
        case 232:
          v27 = @"RAP_GUIDE";
          break;
        case 233:
          v27 = @"SWITCH_OFF_VOICE_GUIDANCE";
          break;
        case 234:
          v27 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";
          break;
        case 235:
          v27 = @"SELECT_TRANSIT_STEP";
          break;
        case 236:
          v27 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";
          break;
        case 237:
          v27 = @"TAP_SEE_MORE";
          break;
        case 238:
          v27 = @"RAP_IN_REVIEW";
          break;
        case 239:
          v27 = @"TAP_OPEN_MENU";
          break;
        case 240:
          v27 = @"TAP_NEARBY_TRANSIT";
          break;
        case 241:
          v27 = @"TAP_PIN_LINE";
          break;
        case 242:
          v27 = @"SWITCH_OFF_TRIP_FEEDBACK";
          break;
        case 243:
          v27 = @"RAP_GOOD_TRIP";
          break;
        case 244:
          v27 = @"TAP_FILTERED_CURATED_COLLECTION";
          break;
        case 245:
          v27 = @"SHARE_MY_LOCATION";
          break;
        case 246:
          v27 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";
          break;
        case 247:
          v27 = @"DISPLAY_GENERIC_ADVISORY";
          break;
        case 248:
          v27 = @"ADVISORY_ALERT";
          break;
        case 249:
          v27 = @"PUNCH_OUT_LINK";
          break;
        case 250:
          v27 = @"TAP_GENERIC_ADVISORY";
          break;
        case 251:
          v27 = @"TAP_EXPLORE_MODE";
          break;
        case 252:
          v27 = @"TAP_UNPIN_LINE";
          break;
        case 253:
          v27 = @"MENU_UNPIN";
          break;
        case 254:
          v27 = @"MENU_PIN";
          break;
        case 255:
          v27 = @"SWIPE_PIN";
          break;
        case 256:
          v27 = @"SWIPE_UNPIN";
          break;
        case 257:
          v27 = @"TAP_MEDIA_APP";
          break;
        case 258:
          v27 = @"TAP_GUIDES_SUBACTION";
          break;
        case 259:
          v27 = @"TAP_MEDIA";
          break;
        case 260:
          v27 = @"PUNCH_OUT_MEDIA";
          break;
        case 261:
          v27 = @"SHOW_MEDIA_APP_MENU";
          break;
        case 262:
          v27 = @"SCROLL_RIGHT_RIBBON";
          break;
        case 263:
          v27 = @"SCROLL_LEFT_RIBBON";
          break;
        case 264:
          v27 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";
          break;
        case 265:
          v27 = @"TAP_SHOW_MORE_TEXT";
          break;
        case 266:
          v27 = @"SCROLL_LEFT_RATINGS";
          break;
        case 267:
          v27 = @"SCROLL_LEFT_TEMPLATE_PLACE";
          break;
        case 268:
          v27 = @"SCROLL_RIGHT_TEMPLATE_PLACE";
          break;
        case 269:
          v27 = @"SCROLL_RIGHT_RATINGS";
          break;
        case 270:
          v27 = @"TAP_ALLOW";
          break;
        case 271:
          v27 = @"TAP_GO_TO_SETTING";
          break;
        case 272:
          v27 = @"START_SUBMIT_REPORT";
          break;
        case 273:
          v27 = @"AUTHENTICATION_INFO_FAILURE";
          break;
        case 274:
          v27 = @"SUCCESSFULLY_SUBMIT_REPORT";
          break;
        case 275:
          v27 = @"FAILED_SUBMIT_REPORT";
          break;
        case 276:
          v27 = @"AUTHENTICATION_INFO_SUCCESS";
          break;
        case 277:
          v27 = @"EDIT_WAYPOINT";
          break;
        case 278:
          v27 = @"CLEAR_TEXT";
          break;
        case 279:
          v27 = @"REORDER_WAYPOINT";
          break;
        case 280:
          v27 = @"REMOVE_WAYPOINT";
          break;
        case 281:
          v27 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";
          break;
        case 282:
          v27 = @"TAP_SHOWCASE_MENU";
          break;
        case 283:
          v27 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";
          break;
        case 284:
          v27 = @"TAP_PHOTO_ALBUM";
          break;
        case 285:
          v27 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";
          break;
        case 286:
          v27 = @"RAP_INLINE_ADD";
          break;
        case 287:
          v27 = @"RAP_TAP_EDIT";
          break;
        case 288:
          v27 = @"CLAIM_BUSINESS";
          break;
        case 289:
          v27 = @"RAP_EDIT_OPTIONS";
          break;
        case 290:
          v27 = @"TAP_IN_REVIEW_RAP";
          break;
        case 291:
          v27 = @"ORB_MENU_ADD_STOP";
          break;
        case 292:
          v27 = @"NEXT_STOP";
          break;
        case 293:
          v27 = @"ARRIVE_AT_WAYPOINT";
          break;
        case 294:
          v27 = @"REMOVE_STOP";
          break;
        case 295:
          v27 = @"DISPLAY_PAUSE_BUTTON";
          break;
        case 296:
          v27 = @"DISPLAY_PAUSE_NEXT_BUTTONS";
          break;
        case 297:
          v27 = @"AUTO_ADVANCE_NEXT_STOP";
          break;
        case 298:
          v27 = @"ADD_INLINE_NEGATIVE_RATING";
          break;
        case 299:
          v27 = @"ADD_INLINE_POSITIVE_RATING";
          break;
        case 300:
          v27 = @"TAP_TO_ADD_RATING_AND_PHOTO";
          break;
        case 301:
          v27 = @"SUBMIT_RATINGS_AND_PHOTOS";
          break;
        case 302:
          v27 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";
          break;
        case 303:
          v27 = @"TAP_RECENTLY_VIEWED_ROUTE";
          break;
        case 304:
          v27 = @"SHOW_ALL_RECENTS";
          break;
        case 305:
          v27 = @"RESUME_MULTIPOINT_ROUTE";
          break;
        case 306:
          v27 = @"DISMISS_TRANSIT_TIPKIT";
          break;
        case 307:
          v27 = @"DISPLAY_TRANSIT_TIPKIT";
          break;
        case 308:
          v27 = @"TAP_TRANSIT_TIPKIT";
          break;
        case 309:
          v27 = @"FILTER_EV";
          break;
        case 310:
          v27 = @"FILTER_SURCHARGE";
          break;
        case 311:
          v27 = @"FILTER_PREFER";
          break;
        case 312:
          v27 = @"TAP_WALKING_ANNOTATION";
          break;
        case 313:
          v27 = @"FILTER_AVOID";
          break;
        case 314:
          v27 = @"FILTER_TRANSPORTATION_MODE";
          break;
        case 315:
          v27 = @"FILTER_RECOMMENDED_ROUTES";
          break;
        case 316:
          v27 = @"FILTER_IC_FARES";
          break;
        case 317:
          v27 = @"FILTER_TRANSIT_CARD_FARES";
          break;
        case 318:
          v27 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";
          break;
        case 319:
          v27 = @"TAP_NOTIFICATION_SETTINGS";
          break;
        case 320:
          v27 = @"TAP_ENABLE_NOTIFICATION";
          break;
        case 321:
          v27 = @"ARP_SUGGESTIONS_TURN_OFF";
          break;
        case 322:
          v27 = @"ARP_SUGGESTIONS_TURN_ON";
          break;
        case 323:
          v27 = @"DISMISS_ARP_SUGGESTION";
          break;
        case 324:
          v27 = @"RATINGS_AND_PHOTOS_TURN_ON";
          break;
        case 325:
          v27 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";
          break;
        case 326:
          v27 = @"UNSELECT_SUGGESTED_PHOTOS";
          break;
        case 327:
          v27 = @"SUGGESTED_PHOTOS_SHOWN";
          break;
        case 328:
          v27 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";
          break;
        case 329:
          v27 = @"TAP_YOUR_PHOTOS_ALBUM";
          break;
        case 330:
          v27 = @"RATINGS_AND_PHOTOS_TURN_OFF";
          break;
        case 331:
          v27 = @"DELETE_PHOTO";
          break;
        case 332:
          v27 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";
          break;
        case 333:
          v27 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";
          break;
        case 334:
          v27 = @"TAP_PHOTOS_LIVE_NOTIFICATION";
          break;
        case 335:
          v27 = @"DISPLAY_YOUR_PHOTOS_ALBUM";
          break;
        case 336:
          v27 = @"SELECT_SUGGESTED_PHOTOS";
          break;
        case 337:
          v27 = @"ADD_STOP";
          break;
        case 338:
          v27 = @"SHOW_CREDIT_TURN_ON";
          break;
        case 339:
          v27 = @"DISPLAY_ARP_SUGGESTION";
          break;
        case 340:
          v27 = @"TAP_TO_ADD_PHOTO_CREDIT";
          break;
        case 341:
          v27 = @"SHOW_CREDIT_TURN_OFF";
          break;
        case 342:
          v27 = @"TAP_TO_EDIT_NICKNAME";
          break;
        case 343:
          v27 = @"SUBMIT_RATINGS";
          break;
        case 344:
          v27 = @"END_NAV_ON_WATCH";
          break;
        case 345:
          v27 = @"FILTER_EBIKE";
          break;
        case 356:
          v27 = @"ADD_STOP_SIRI";
          break;
        case 357:
          v27 = @"TAP_REVIEWED_RAP";
          break;
        case 358:
          v27 = @"TAP_OUTREACH_RAP";
          break;
        case 359:
          v27 = @"DISPLAY_SUGGESTED_ITEM";
          break;
        case 360:
          v27 = @"DISPLAY_HIKING_TIPKIT";
          break;
        case 361:
          v27 = @"DISMISS_HIKING_TIPKIT";
          break;
        case 362:
          v27 = @"TAP_HIKING_TIPKIT";
          break;
        case 363:
          v27 = @"SCROLL_LEFT_TRAILS";
          break;
        case 364:
          v27 = @"TAP_MORE_TRAILS";
          break;
        case 365:
          v27 = @"TAP_RELATED_TRAIL";
          break;
        case 366:
          v27 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";
          break;
        case 367:
          v27 = @"SCROLL_RIGHT_TRAILS";
          break;
        case 368:
          v27 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
          break;
        case 369:
          v27 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";
          break;
        case 370:
          v27 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";
          break;
        case 371:
          v27 = @"TAP_DOWNLOAD_MAPS_TIPKIT";
          break;
        case 372:
          v27 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";
          break;
        case 373:
          v27 = @"EXPIRED_MAPS_REMOVED";
          break;
        case 374:
          v27 = @"UPDATE_ALL_DOWNLOAD_MAPS";
          break;
        case 375:
          v27 = @"TAP_EXPIRED_MAPS";
          break;
        case 376:
          v27 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";
          break;
        case 377:
          v27 = @"MOVE_DOWNLOAD_MAPS";
          break;
        case 378:
          v27 = @"SAVE_RENAME_DOWNLOAD_MAPS";
          break;
        case 379:
          v27 = @"TAP_COMPLETE_DOWNLOAD_MAPS";
          break;
        case 380:
          v27 = @"TAP_ENTER_OFFLINE_MAPS";
          break;
        case 381:
          v27 = @"TAP_DOWNLOAD_MAPS";
          break;
        case 382:
          v27 = @"TAP_DOWNLOAD_MAPS_CONTINUE";
          break;
        case 383:
          v27 = @"DELETE_DOWNLOAD_MAPS";
          break;
        case 384:
          v27 = @"SLIDE_CLEAR_EXPIRED_MAPS";
          break;
        case 385:
          v27 = @"RENAME_DOWNLOAD_MAPS";
          break;
        case 386:
          v27 = @"RESIZE_DOWNLOAD_MAPS";
          break;
        case 387:
          v27 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";
          break;
        case 388:
          v27 = @"RESTORE_EXPIRED_MAPS";
          break;
        case 389:
          v27 = @"CLEAR_EXPIRED_MAPS";
          break;
        case 390:
          v27 = @"TAP_USING_OFFLINE_BAR";
          break;
        case 391:
          v27 = @"UPDATE_DOWNLOAD_MAPS";
          break;
        case 392:
          v27 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";
          break;
        case 393:
          v27 = @"DISPLAY_DOWNLOAD_MAPS";
          break;
        case 394:
          v27 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";
          break;
        case 395:
          v27 = @"DISPLAY_EXPIRED_MAPS";
          break;
        case 396:
          v27 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
          break;
        case 397:
          v27 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";
          break;
        case 398:
          v27 = @"SLIDE_RESTORE_EXPIRED_MAPS";
          break;
        case 399:
          v27 = @"ETA_SHARE_TRAY_TIMEOUT";
          break;
        case 400:
          v27 = @"START_ETA_SHARING";
          break;
        case 401:
          v27 = @"PERSON_LOCATION_UPDATE";
          break;
        case 402:
          v27 = @"STOP_ETA_SHARING";
          break;
        case 403:
          v27 = @"PUNCH_OUT_TO_FINDMY";
          break;
        case 404:
          v27 = @"TAP_PEOPLE_LOCATION";
          break;
        case 405:
          v27 = @"TAP_TO_REQUEST_LOCATION";
          break;
        case 406:
          v27 = @"ZOOM_OUT_CROWN";
          break;
        case 407:
          v27 = @"TAP_RESIZE_DOWNLOAD_MAPS";
          break;
        case 408:
          v27 = @"TAP_DELETE_DOWNLOAD_MAPS";
          break;
        case 409:
          v27 = @"SELECT_LIST_VIEW";
          break;
        case 410:
          v27 = @"SCROLL_RIGHT_TRAILHEADS";
          break;
        case 411:
          v27 = @"SWITCH_TO_ONLINE_MODE";
          break;
        case 412:
          v27 = @"TAP_RELATED_TRAILHEAD";
          break;
        case 413:
          v27 = @"SELECT_ELEVATION_VIEW";
          break;
        case 414:
          v27 = @"TOGGLE_PROXIMITY_RADIUS_ON";
          break;
        case 415:
          v27 = @"SEE_MORE_RECENTS";
          break;
        case 416:
          v27 = @"SEE_MORE_GUIDES";
          break;
        case 417:
          v27 = @"SELECT_CONTROLS";
          break;
        case 418:
          v27 = @"NO_SEARCH_RESULTS";
          break;
        case 419:
          v27 = @"TAP_VIEW_RESULTS_CAROUSEL";
          break;
        case 420:
          v27 = @"TAP_VIEW_RESULTS_LIST";
          break;
        case 421:
          v27 = @"SELECT_MAP_VIEW";
          break;
        case 422:
          v27 = @"SCROLL_LEFT_TRAILHEADS";
          break;
        case 423:
          v27 = @"SWITCH_TO_OFFLINE_MODE";
          break;
        case 424:
          v27 = @"ZOOM_IN_CROWN";
          break;
        case 425:
          v27 = @"TOGGLE_PROXIMITY_RADIUS_OFF";
          break;
        case 426:
          v27 = @"TAP_MAP";
          break;
        case 427:
          v27 = @"SWIPE_DOWN";
          break;
        case 428:
          v27 = @"TAP_MORE_TRAILHEADS";
          break;
        case 429:
          v27 = @"TAP_ROUTE_OPTIONS";
          break;
        case 430:
          v27 = @"TAP_ROUTE_NAV_MAP";
          break;
        case 431:
          v27 = @"TAP_ROUTE_OVERVIEW_MAP";
          break;
        case 432:
          v27 = @"TAP_AUDIO";
          break;
        case 433:
          v27 = @"TAP_OPEN_PLACECARD";
          break;
        case 434:
          v27 = @"TAP_VIEW_STOPS";
          break;
        case 435:
          v27 = @"TAP_ROUTE_DETAILS";
          break;
        case 436:
          v27 = @"ADD_LPR_VEHICLE";
          break;
        case 437:
          v27 = @"TAP_ADD_VEHICLE";
          break;
        case 438:
          v27 = @"TAP_PLUG_TYPE";
          break;
        case 439:
          v27 = @"UNSELECT_SUGGESTED_NETWORK";
          break;
        case 440:
          v27 = @"TAP_SET_UP_LATER";
          break;
        case 441:
          v27 = @"ADD_EV_VEHICLE";
          break;
        case 442:
          v27 = @"UPDATE_COLOR";
          break;
        case 443:
          v27 = @"SELECT_OTHER_NETWORK";
          break;
        case 444:
          v27 = @"UNSELECT_NETWORK";
          break;
        case 445:
          v27 = @"TAP_BACK";
          break;
        case 446:
          v27 = @"TAP_CANCEL";
          break;
        case 447:
          v27 = @"UNSELECT_VEHICLE";
          break;
        case 448:
          v27 = @"UNSELECT_OTHER_NETWORK";
          break;
        case 449:
          v27 = @"DISPLAY_EV_TIPKIT";
          break;
        case 450:
          v27 = @"SELECT_NETWORK";
          break;
        case 451:
          v27 = @"TAP_EV_TIPKIT";
          break;
        case 452:
          v27 = @"TAP_CHOOSE_NETWORKS";
          break;
        case 453:
          v27 = @"TAP_ADD_NETWORK";
          break;
        case 454:
          v27 = @"FILTER_NETWORK";
          break;
        case 455:
          v27 = @"SELECT_SUGGESTED_NETWORK";
          break;
        case 456:
          v27 = @"TRANSIT_TO_WALKING";
          break;
        case 457:
          v27 = @"TRANSIT_TO_FINDMY";
          break;
        case 458:
          v27 = @"TAP_AC_KEYBOARD";
          break;
        case 459:
          v27 = @"REACH_PHOTO_STRIP_END";
          break;
        case 460:
          v27 = @"SEARCH_HERE_REVEAL";
          break;
        case 461:
          v27 = @"TAP_SEARCH_HERE";
          break;
        case 462:
          v27 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";
          break;
        case 463:
          v27 = @"SAVE";
          break;
        case 464:
          v27 = @"TAP_MORE_CURATED_HIKES";
          break;
        case 465:
          v27 = @"CREATE_CUSTOM_ROUTE";
          break;
        case 466:
          v27 = @"TAP_TRY_NOW";
          break;
        case 467:
          v27 = @"TAP_CURATED_HIKE";
          break;
        case 468:
          v27 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";
          break;
        case 469:
          v27 = @"ADD_TO_LIBRARY";
          break;
        case 470:
          v27 = @"START_HIKING";
          break;
        case 471:
          v27 = @"EDIT_NOTE";
          break;
        case 472:
          v27 = @"CREATE_NOTE";
          break;
        case 473:
          v27 = @"DELETE_PIN";
          break;
        case 474:
          v27 = @"ADD_ROUTE";
          break;
        case 475:
          v27 = @"ADD_PIN";
          break;
        case 476:
          v27 = @"REMOVE_FROM_COLLECTION";
          break;
        case 477:
          v27 = @"REMOVE_FROM_LIBRARY";
          break;
        case 478:
          v27 = @"TAP_ITEM";
          break;
        case 479:
          v27 = @"DELETE_ROUTE";
          break;
        case 480:
          v27 = @"TAP_ROUTE";
          break;
        case 481:
          v27 = @"TAP_DOWNLOAD_WATCH_MAPS";
          break;
        case 482:
          v27 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
          break;
        case 483:
          v27 = @"STOP_DOWNLOAD_ONTO_WATCH";
          break;
        case 484:
          v27 = @"TAP_DOWNLOAD_ONTO_WATCH";
          break;
        case 485:
          v27 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
          break;
        case 486:
          v27 = @"TAP_DOWNLOAD_NOW_WATCH";
          break;
        case 487:
          v27 = @"REVEAL_DETECTION_LIST";
          break;
        case 488:
          v27 = @"TAP_RECOMMENDATION";
          break;
        case 489:
          v27 = @"TAP_EXPAND";
          break;
        case 490:
          v27 = @"EXPAND_DETECTION_LIST";
          break;
        case 491:
          v27 = @"FIRST_PARTY_MAP_VIEW";
          break;
        case 492:
          v27 = @"SECOND_PARTY_MAP_VIEW";
          break;
        case 493:
          v27 = @"THIRD_PARTY_MAP_VIEW";
          break;
        case 494:
          v27 = @"DAEMON_PARTY_MAP_VIEW";
          break;
        case 495:
          v27 = @"MAPS_APP_DWELL_TIME_3_SEC";
          break;
        case 496:
          v27 = @"MAPS_APP_DWELL_TIME_30_SEC";
          break;
        case 497:
          v27 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";
          break;
        case 498:
          v27 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";
          break;
        case 499:
          v27 = @"DISPLAY_DOOM";
          break;
        case 500:
          v27 = @"TAP_DOOM";
          break;
        case 501:
          v27 = @"TAP_ROUTE_GENIUS";
          break;
        case 502:
          v27 = @"DISPLAY_ROUTE_GENIUS";
          break;
        case 503:
          v27 = @"TAP_WIDGET";
          break;
        case 504:
          v27 = @"ARRIVE_AT_DESTINATION";
          break;
        case 505:
          v27 = @"DISPLAY_WIDGET";
          break;
        case 506:
          v27 = @"CLEAR_HISTORY";
          break;
        case 507:
          v27 = @"TAP_SECTION";
          break;
        case 508:
          v27 = @"APPROVE_LOCATION";
          break;
        case 509:
          v27 = @"DISMISS_VISITED_PLACES_TIPKIT";
          break;
        case 510:
          v27 = @"DISPLAY_VISITED_PLACES_TIPKIT";
          break;
        case 511:
          v27 = @"MORE_OPTIONS";
          break;
        case 512:
          v27 = @"TAP_VISITED_PLACES_AVAILABLE";
          break;
        case 513:
          v27 = @"AUTO_REFRESH_SEARCH";
          break;
        case 514:
          v27 = @"REMOVE_VISIT";
          break;
        case 515:
          v27 = @"WRONG_LOCATION";
          break;
        case 516:
          v27 = @"CONFIRM";
          break;
        case 517:
          v27 = @"KEEP_HISTORY";
          break;
        case 518:
          v27 = @"DISPLAY_VISITED_PLACES_AVAILABLE";
          break;
        case 519:
          v27 = @"REMOVE";
          break;
        case 520:
          v27 = @"ALLOW";
          break;
        case 521:
          v27 = @"DONT_ALLOW";
          break;
        case 522:
          v27 = @"REMOVE_EVERY_VISIT";
          break;
        case 523:
          v27 = @"CONTINUE_VISITED_PLACES_TIPKIT";
          break;
        case 524:
          v27 = @"REMOVE_FROM_FAVORITE_GUIDE";
          break;
        case 525:
          v27 = @"ADD_TO_FAVORITE_GUIDE";
          break;
        case 526:
          v27 = @"FAMILIAR_ROUTE_DISPLAYED";
          break;
        case 527:
          v27 = @"FAMILIAR_ROUTE_NAV_STARTED";
          break;
        case 528:
          v27 = @"SELECT_AUDIO_VOLUME_LOUDER";
          break;
        case 529:
          v27 = @"SELECT_AUDIO_VOLUME_SOFTER";
          break;
        case 1001:
          v27 = @"PAN";
          break;
        case 1002:
          v27 = @"ZOOM_IN";
          break;
        case 1003:
          v27 = @"ZOOM_OUT";
          break;
        case 1004:
          v27 = @"ROTATE";
          break;
        case 1010:
          v27 = @"TAP_POI";
          break;
        case 1011:
          v27 = @"TAP_POI_TRANSIT";
          break;
        case 1017:
          v27 = @"TAP_POI_HIGHLIGHTED";
          break;
        case 1018:
          v27 = @"TAP_POI_CLUSTERED";
          break;
        case 1020:
          v27 = @"TAP_POI_DROPPED_PIN";
          break;
        case 1030:
          v27 = @"DROP_PIN";
          break;
        case 1031:
          v27 = @"TAP_INCIDENT";
          break;
        case 1032:
          v27 = @"TAP_TRANSIT_LINE";
          break;
        case 1033:
          v27 = @"TAP_POI_CALENDAR";
          break;
        case 1034:
          v27 = @"TAP_POI_CURRENT_LOCATION";
          break;
        case 1035:
          v27 = @"TAP_POI_TRANSIT_LINE";
          break;
        case 1036:
          v27 = @"TAP_POI_LANDMARK";
          break;
        case 1037:
          v27 = @"TAP_POI_FLYOVER";
          break;
        case 1038:
          v27 = @"TAP_TO_HIDE_TRAY";
          break;
        case 1039:
          v27 = @"TAP_TO_REVEAL_TRAY";
          break;
        case 1040:
          v27 = @"TAP_COMPASS";
          break;
        case 1041:
          v27 = @"PITCH_AWAY_FROM_GROUND";
          break;
        case 1042:
          v27 = @"PITCH_CLOSER_TO_GROUND";
          break;
        case 1043:
          v27 = @"ZOOM_IN_PINCH";
          break;
        case 1044:
          v27 = @"ZOOM_OUT_PINCH";
          break;
        case 1045:
          v27 = @"ZOOM_IN_DOUBLE_TAP";
          break;
        case 1046:
          v27 = @"ZOOM_OUT_TWO_FINGER_TAP";
          break;
        case 1047:
          v27 = @"ZOOM_IN_ONE_FINGER";
          break;
        case 1048:
          v27 = @"ZOOM_OUT_ONE_FINGER";
          break;
        case 1049:
          v27 = @"ZOOM_IN_BUTTON";
          break;
        case 1050:
          v27 = @"ZOOM_OUT_BUTTON";
          break;
        case 1051:
          v27 = @"TAP_TRAFFIC_CAMERA";
          break;
        case 1052:
          v27 = @"DISPLAY_INDOOR_MAP_BUTTON";
          break;
        case 1053:
          v27 = @"OPEN_INDOOR_MAP";
          break;
        case 1054:
          v27 = @"DISPLAY_VENUE_BROWSE_BUTTON";
          break;
        case 1055:
          v27 = @"TAP_VENUE_BROWSE_BUTTON";
          break;
        case 1056:
          v27 = @"ENTER_VENUE_EXPERIENCE";
          break;
        case 1057:
          v27 = @"EXIT_VENUE_EXPERIENCE";
          break;
        case 1058:
          v27 = @"ZOOM_IN_SCENE_PINCH";
          break;
        case 1059:
          v27 = @"ZOOM_OUT_SCENE_PINCH";
          break;
        case 1060:
          v27 = @"ZOOM_RESET";
          break;
        case 1061:
          v27 = @"TAP_SCENE_UNAVAILABLE_AREA";
          break;
        case 1062:
          v27 = @"TAP_TRANSIT_ACCESS_POINT";
          break;
        case 1063:
          v27 = @"TAP_SPEED_CAMERA";
          break;
        case 1064:
          v27 = @"TAP_RED_LIGHT_CAMERA";
          break;
        case 1065:
          v27 = @"TAP_GEO";
          break;
        default:
          v28 = v25;
          if (v25 != 1500)
          {
            goto LABEL_2136;
          }

          v27 = @"TAP_PLAY_SOUND";
          break;
      }

      goto LABEL_3321;
    }

    if (v16 > 1503)
    {
      v28 = v16;
      v37 = v16 - 2001;
      v24 = queue;
      v26 = classificationCopy;
      switch(v37)
      {
        case 0:
          v27 = @"TAP_SEARCH_FIELD";
          goto LABEL_3321;
        case 1:
          v27 = @"CLEAR_SEARCH";
          goto LABEL_3321;
        case 2:
          v27 = @"CANCEL_SEARCH";
          goto LABEL_3321;
        case 3:
          v27 = @"TAP_BROWSE_TOP_CATEGORY";
          goto LABEL_3321;
        case 4:
          v27 = @"TAP_BROWSE_SUB_CATEGORY";
          goto LABEL_3321;
        case 5:
          v27 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";
          goto LABEL_3321;
        case 6:
          v27 = @"TAP_LIST_ITEM";
          goto LABEL_3321;
        case 7:
          v27 = @"SHARE_LIST_ITEM";
          goto LABEL_3321;
        case 8:
          v27 = @"DELETE_LIST_ITEM";
          goto LABEL_3321;
        case 9:
          v27 = @"EDIT_LIST_ITEM";
          goto LABEL_3321;
        case 10:
          v27 = @"REFRESH_SEARCH";
          goto LABEL_3321;
        case 11:
          v27 = @"REVEAL_LIST_ITEM_ACTIONS";
          goto LABEL_3321;
        case 12:
          v27 = @"HIDE_LIST_ITEM_ACTIONS";
          goto LABEL_3321;
        case 13:
          v27 = @"TAP_SEARCH_BUTTON";
          goto LABEL_3321;
        case 14:
          v27 = @"SHOW_SEARCH_RESULTS";
          goto LABEL_3321;
        case 15:
          v27 = @"SHOW_REFRESH_SEARCH";
          goto LABEL_3321;
        case 16:
          v27 = @"PASTE_TEXT";
          goto LABEL_3321;
        case 17:
          v27 = @"TAP_LIST_SUB_ITEM";
          goto LABEL_3321;
        case 18:
          v27 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";
          goto LABEL_3321;
        case 19:
          v27 = @"TAP_DID_YOU_MEAN_MESSAGE";
          goto LABEL_3321;
        case 20:
          v27 = @"CLOSE_DID_YOU_MEAN_MESSAGE";
          goto LABEL_3321;
        case 21:
          v27 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";
          goto LABEL_3321;
        case 22:
          v27 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";
          goto LABEL_3321;
        case 23:
          v27 = @"RETAINED_QUERY";
          goto LABEL_3321;
        case 24:
          v27 = @"TAP_RECENT_AC_SUGGESTION";
          goto LABEL_3321;
        case 25:
          v27 = @"CLEAR_RECENT_AC_SUGGESTION";
          goto LABEL_3321;
        case 26:
          v27 = @"DELETE_RECENT_AC_SUGGESTION";
          goto LABEL_3321;
        case 27:
        case 28:
          goto LABEL_2136;
        case 29:
          v27 = @"TAP_BROWSE_NEARBY_CATEGORY";
          goto LABEL_3321;
        case 30:
          v27 = @"TAP_SUBACTION";
          goto LABEL_3321;
        case 31:
          v27 = @"TAP_QUERY_BUILDING_ARROW";
          goto LABEL_3321;
        case 32:
          v27 = @"CLICK_ON_EDIT_SEARCH";
          goto LABEL_3321;
        case 33:
          v27 = @"REMOVE_CLIENT_AC_SUGGESTION";
          goto LABEL_3321;
        case 34:
          v27 = @"SHARE_CLIENT_AC_SUGGESTION";
          goto LABEL_3321;
        case 35:
          v27 = @"TAP_ON_MORE_RESULTS";
          goto LABEL_3321;
        case 36:
          v27 = @"SHARE_ITEM";
          goto LABEL_3321;
        case 37:
          v27 = @"HIDE_ITEM";
          goto LABEL_3321;
        case 38:
          v27 = @"TAP_SUGGESTED_ITEM";
          goto LABEL_3321;
        case 39:
          v27 = @"SHARE_SUGGESTED_ITEM";
          goto LABEL_3321;
        case 40:
          v27 = @"HIDE_SUGGESTED_ITEM";
          goto LABEL_3321;
        case 41:
          v27 = @"ADD_HOME_FAVORITE";
          goto LABEL_3321;
        case 42:
          v27 = @"ADD_WORK_FAVORITE";
          goto LABEL_3321;
        case 43:
          v27 = @"ADD_FAVORITE";
          goto LABEL_3321;
        case 44:
          v27 = @"VIEW_FAVORITES_LIST";
          goto LABEL_3321;
        case 45:
          v27 = @"TAP_HOME_FAVORITE";
          goto LABEL_3321;
        case 46:
          v27 = @"TAP_WORK_FAVORITE";
          goto LABEL_3321;
        case 47:
          v27 = @"TAP_CAR_FAVORITE";
          goto LABEL_3321;
        case 48:
          v27 = @"TAP_FAVORITE_ITEM";
          goto LABEL_3321;
        case 49:
          v27 = @"CREATE_HOME_FAVORITE";
          goto LABEL_3321;
        case 50:
          v27 = @"CREATE_WORK_FAVORITE";
          goto LABEL_3321;
        case 51:
          v27 = @"CREATE_FAVORITE";
          goto LABEL_3321;
        case 52:
          v27 = @"SUBMIT_FAVORITE_EDIT";
          goto LABEL_3321;
        case 53:
          v27 = @"ADD_RECOMMENDED_FAVORITE";
          goto LABEL_3321;
        case 54:
          v27 = @"EDIT_FAVORITE";
          goto LABEL_3321;
        case 55:
          v27 = @"REMOVE_FAVORITE";
          goto LABEL_3321;
        case 56:
          v27 = @"SHARE_FAVORITE";
          goto LABEL_3321;
        case 57:
          v27 = @"EDIT_FAVORITES";
          goto LABEL_3321;
        case 58:
          v27 = @"ADD_FAVORITE_PLACE";
          goto LABEL_3321;
        case 59:
          v27 = @"REMOVE_FAVORITE_PLACE";
          goto LABEL_3321;
        case 60:
          v27 = @"CHANGE_HOME_ADDRESS";
          goto LABEL_3321;
        case 61:
          v27 = @"CHANGE_WORK_ADDRESS";
          goto LABEL_3321;
        case 62:
          v27 = @"REFINE_LOCATION";
          goto LABEL_3321;
        case 63:
          v27 = @"TAP_RECENTLY_VIEWED_ITEM";
          goto LABEL_3321;
        case 64:
          v27 = @"SHOW_COLLECTION_LIST";
          goto LABEL_3321;
        case 65:
          v27 = @"SHOW_FAVORITES_COLLECTION";
          goto LABEL_3321;
        case 66:
          v27 = @"SHOW_COLLECTION";
          goto LABEL_3321;
        case 67:
          v27 = @"TAP_COLLECTION_ITEM";
          goto LABEL_3321;
        case 68:
          v27 = @"SHARE_COLLECTION_ITEM";
          goto LABEL_3321;
        case 69:
          v27 = @"REMOVE_COLLECTION_ITEM";
          goto LABEL_3321;
        case 70:
          v27 = @"SAVE_SHARED_COLLECTION";
          goto LABEL_3321;
        case 71:
          v27 = @"CREATE_NEW_COLLECTION";
          goto LABEL_3321;
        case 72:
          v27 = @"SAVE_TO_COLLECTION";
          goto LABEL_3321;
        case 73:
          v27 = @"EDIT_PHOTO";
          goto LABEL_3321;
        case 74:
          v27 = @"SORT_BY_NAME";
          goto LABEL_3321;
        case 75:
          v27 = @"SORT_BY_DISTANCE";
          goto LABEL_3321;
        case 76:
          v27 = @"SORT_BY_RECENT";
          goto LABEL_3321;
        case 77:
          v27 = @"AUTO_SHARE_ETA";
          goto LABEL_3321;
        case 78:
          v27 = @"CANCEL_AUTO_SHARE_ETA";
          goto LABEL_3321;
        case 79:
          v27 = @"MAP_SEARCH";
          goto LABEL_3321;
        case 80:
          v27 = @"DELETE_COLLECTION";
          goto LABEL_3321;
        case 81:
          v27 = @"SHARE_COLLECTION";
          goto LABEL_3321;
        case 82:
          v27 = @"SHOW_TRANSIT_LINES_COLLECTION";
          goto LABEL_3321;
        case 83:
          v27 = @"SHOW_MY_PLACES";
          goto LABEL_3321;
        case 84:
          v27 = @"SHOW_ALL_PLACES";
          goto LABEL_3321;
        case 85:
          v27 = @"TAP_RECENT_QUERY";
          goto LABEL_3321;
        case 86:
          v27 = @"TAP_QUERY_SUGGESTION";
          goto LABEL_3321;
        case 87:
          v27 = @"DELETE_CURATED_COLLECTION";
          goto LABEL_3321;
        case 88:
          v27 = @"FOLLOW";
          goto LABEL_3321;
        case 89:
          v27 = @"PUNCH_IN";
          goto LABEL_3321;
        case 90:
          v27 = @"SAVE_CURATED_COLLECTION";
          goto LABEL_3321;
        case 91:
          v27 = @"SCROLL_LEFT_COLLECTIONS";
          goto LABEL_3321;
        case 92:
          v27 = @"SCROLL_RIGHT_COLLECTIONS";
          goto LABEL_3321;
        case 93:
          v27 = @"SEE_ALL_CURATED_COLLECTION";
          goto LABEL_3321;
        case 94:
          v27 = @"SEE_ALL_PUBLISHERS";
          goto LABEL_3321;
        case 95:
          v27 = @"SHARE_CURATED_COLLECTION";
          goto LABEL_3321;
        case 96:
          v27 = @"SHARE_PUBLISHER";
          goto LABEL_3321;
        case 97:
          v27 = @"SHOW_MORE_COLLECTION";
          goto LABEL_3321;
        case 98:
          v27 = @"TAP_CURATED_COLLECTION";
          goto LABEL_3321;
        case 99:
          v27 = @"TAP_FEATURED_COLLECTIONS";
          goto LABEL_3321;
        case 100:
          v27 = @"TAP_LOCATION";
          goto LABEL_3321;
        case 101:
          v27 = @"TAP_PUBLISHER";
          goto LABEL_3321;
        case 102:
          v27 = @"TAP_PUBLISHER_APP";
          goto LABEL_3321;
        case 103:
          v27 = @"TAP_PUBLISHER_COLLECTIONS";
          goto LABEL_3321;
        case 104:
          v27 = @"UNFOLLOW";
          goto LABEL_3321;
        case 105:
          v27 = @"CHANGE_SCHOOL_ADDRESS";
          goto LABEL_3321;
        case 106:
          v27 = @"ADD_VEHICLE";
          goto LABEL_3321;
        case 107:
          v27 = @"DISPLAY_VIRTUAL_GARAGE";
          goto LABEL_3321;
        case 108:
          v27 = @"ENTER_VIRTUAL_GARAGE";
          goto LABEL_3321;
        case 109:
          v27 = @"PUNCH_OUT_MANUFACTURER_APP";
          goto LABEL_3321;
        case 110:
          v27 = @"REMOVE_LICENSE_PLATE";
          goto LABEL_3321;
        case 111:
          v27 = @"REMOVE_VEHICLE";
          goto LABEL_3321;
        case 112:
          v27 = @"SELECT_VEHICLE";
          goto LABEL_3321;
        case 113:
          v27 = @"SUBMIT_LICENSE_PLATE";
          goto LABEL_3321;
        case 114:
          v27 = @"TAP_ADD_LICENSE_PLATE";
          goto LABEL_3321;
        case 115:
          v27 = @"TAP_ADD_NEW_CAR";
          goto LABEL_3321;
        case 116:
          v27 = @"TAP_BANNER";
          goto LABEL_3321;
        case 117:
          v27 = @"TAP_CONNECT";
          goto LABEL_3321;
        case 118:
          v27 = @"TAP_CONTINUE";
          goto LABEL_3321;
        case 119:
          v27 = @"TAP_EDIT";
          goto LABEL_3321;
        case 120:
          v27 = @"TAP_NAME";
          goto LABEL_3321;
        case 121:
          v27 = @"TAP_NOT_NOW";
          goto LABEL_3321;
        case 122:
          v27 = @"TAP_OTHER_VEHICLE";
          goto LABEL_3321;
        case 123:
          v27 = @"TAP_REMOVE_LICENSE_PLATE";
          goto LABEL_3321;
        case 124:
          v27 = @"TAP_UPDATE_PLATE_NUMBER";
          goto LABEL_3321;
        case 125:
          v27 = @"TAP_VEHICLE";
          goto LABEL_3321;
        case 126:
          v27 = @"TAP_VEHICLE_NAME";
          goto LABEL_3321;
        case 127:
          v27 = @"UPDATE_NAME";
          goto LABEL_3321;
        case 128:
          v27 = @"DONE_TAKING_PHOTO";
          goto LABEL_3321;
        case 129:
          v27 = @"ENABLE_SHOW_PHOTO_NAME";
          goto LABEL_3321;
        case 130:
          v27 = @"SUBMIT_PHOTO";
          goto LABEL_3321;
        case 131:
          v27 = @"USE_PHOTO";
          goto LABEL_3321;
        case 132:
          v27 = @"ADD_RECOMMENDATION_TO_MAPS";
          goto LABEL_3321;
        case 133:
          v27 = @"CANCEL_PHOTO_SUBMISSION";
          goto LABEL_3321;
        case 134:
          v27 = @"CLOSE_RECOMMENDATION_CARD";
          goto LABEL_3321;
        case 135:
          v27 = @"EDIT_RATING";
          goto LABEL_3321;
        case 136:
          v27 = @"PROMPTED_TO_ADD_PHOTO";
          goto LABEL_3321;
        case 137:
          v27 = @"PROMPTED_TO_ADD_RATING";
          goto LABEL_3321;
        case 138:
          v27 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";
          goto LABEL_3321;
        case 139:
          v27 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";
          goto LABEL_3321;
        case 140:
          v27 = @"RETAKE_PHOTO";
          goto LABEL_3321;
        case 141:
          v27 = @"REVEAL_RECOMMENDATION_CARD";
          goto LABEL_3321;
        case 142:
          v27 = @"SUBMIT_NEGATIVE_RATING";
          goto LABEL_3321;
        case 143:
          v27 = @"SUBMIT_POSITIVE_RATING";
          goto LABEL_3321;
        case 144:
          v27 = @"TAP_CHOOSING_PHOTO";
          goto LABEL_3321;
        case 145:
          v27 = @"TAP_TAKE_NEW_PHOTO";
          goto LABEL_3321;
        case 146:
          v27 = @"TAP_TO_ADD_PHOTO";
          goto LABEL_3321;
        case 147:
          v27 = @"CANCEL_INCIDENT_REPORT";
          goto LABEL_3321;
        case 148:
          v27 = @"INCIDENT_REPORT_SUBMITTED";
          goto LABEL_3321;
        case 149:
          v27 = @"REPORTED_INCIDENT_NOT_RECEIVED";
          goto LABEL_3321;
        case 150:
          v27 = @"REPORTED_INCIDENT_RECEIVED";
          goto LABEL_3321;
        case 151:
          v27 = @"REPORT_INCIDENT";
          goto LABEL_3321;
        case 152:
          v27 = @"SELECT_INCIDENT_TYPE";
          goto LABEL_3321;
        case 153:
          v27 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";
          goto LABEL_3321;
        case 154:
          v27 = @"TAP_TO_START_REPORT_INCIDENT";
          goto LABEL_3321;
        case 155:
          v27 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";
          goto LABEL_3321;
        case 156:
          v27 = @"ATTEMPT_VLF_CORRECTION";
          goto LABEL_3321;
        case 157:
          v27 = @"DISMISS_VLF_PROMPT";
          goto LABEL_3321;
        case 158:
          v27 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";
          goto LABEL_3321;
        case 159:
          v27 = @"VLF_CORRECTION_FAILED";
          goto LABEL_3321;
        case 160:
          v27 = @"VLF_CORRECTION_SUCCESSFUL";
          goto LABEL_3321;
        case 161:
          v27 = @"ENABLE_WIDGET_SUGGESTIONS";
          goto LABEL_3321;
        case 162:
          v27 = @"DISPLAY_CZ_ADVISORY";
          goto LABEL_3321;
        case 163:
          v27 = @"PUNCH_OUT_URL_PAY";
          goto LABEL_3321;
        case 164:
          v27 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";
          goto LABEL_3321;
        case 165:
          v27 = @"DELETE_ITEM";
          goto LABEL_3321;
        case 166:
          v27 = @"CANCEL_REMOVE";
          goto LABEL_3321;
        case 167:
          v27 = @"DELETE_SUGGESTION";
          goto LABEL_3321;
        case 168:
          v27 = @"ADD_SCHOOL_FAVORITE";
          goto LABEL_3321;
        case 169:
          v27 = @"GO_TO_WEBSITE";
          goto LABEL_3321;
        case 170:
          v27 = @"TRY_AGAIN";
          goto LABEL_3321;
        case 171:
          v27 = @"CHECK_AUTO_RECORD_WORKOUT";
          goto LABEL_3321;
        case 172:
          v27 = @"CHECK_EBIKE";
          goto LABEL_3321;
        case 173:
          v27 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";
          goto LABEL_3321;
        case 174:
          v27 = @"DISPLAY_CYCLING_DEFAULT_OPTION";
          goto LABEL_3321;
        case 175:
          v27 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";
          goto LABEL_3321;
        case 176:
          v27 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";
          goto LABEL_3321;
        case 177:
          v27 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";
          goto LABEL_3321;
        case 178:
          v27 = @"TAP_AUTOMATIC_WORKOUT_OPTION";
          goto LABEL_3321;
        case 179:
          v27 = @"TAP_CYCLING_DEFAULT_OPTION";
          goto LABEL_3321;
        case 180:
          v27 = @"TAP_CYCLING_NO_BIKE_ADVISORY";
          goto LABEL_3321;
        case 181:
          v27 = @"TAP_CYCLING_STAIRS_ADVISORY";
          goto LABEL_3321;
        case 182:
          v27 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";
          goto LABEL_3321;
        case 183:
          v27 = @"UNCHECK_AUTO_RECORD_WORKOUT";
          goto LABEL_3321;
        case 184:
          v27 = @"UNCHECK_EBIKE";
          goto LABEL_3321;
        case 185:
          v27 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";
          goto LABEL_3321;
        case 186:
          v27 = @"DISPLAY_LPR_ADVISORY";
          goto LABEL_3321;
        case 187:
          v27 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";
          goto LABEL_3321;
        case 188:
          v27 = @"CREATE_WIDGET";
          goto LABEL_3321;
        case 189:
          v27 = @"REVEAL_WIDGET_TRAY";
          goto LABEL_3321;
        case 190:
          v27 = @"LPR_ERROR_CODE";
          goto LABEL_3321;
        case 191:
          v27 = @"TAP_SEE_ALL_RECENTLY_VIEWED";
          goto LABEL_3321;
        case 192:
          v27 = @"TAP_CLEAR_RECENTLY_VIEWED";
          goto LABEL_3321;
        case 193:
          v27 = @"LPR_HARD_STOP";
          goto LABEL_3321;
        case 194:
          v27 = @"TAP_PUBLISHER_SUBACTION";
          goto LABEL_3321;
        case 195:
          v27 = @"CARPLAY_DISPLAY_ACTIVATED";
          goto LABEL_3321;
        case 196:
          v27 = @"CARPLAY_DISPLAY_DEACTIVATED";
          goto LABEL_3321;
        case 197:
          v27 = @"TAP_FEATURED_COLLECTION";
          goto LABEL_3321;
        case 198:
          v27 = @"SCROLL_FEATURED_COLLECTION_FORWARD";
          goto LABEL_3321;
        case 199:
          v27 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";
          goto LABEL_3321;
        default:
          v26 = classificationCopy;
          if (v28 == 1504)
          {
            v27 = @"TAP_ENABLE_LOST_MODE";
          }

          else
          {
            if (v28 != 1505)
            {
              goto LABEL_2136;
            }

            v27 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
          }

          break;
      }

      goto LABEL_3321;
    }

    v24 = queue;
    if (v16 == 1501)
    {
      v27 = @"TAP_DIRECTIONS";
      v26 = classificationCopy;
    }

    else if (v16 == 1502)
    {
      v27 = @"TAP_PROXIMITY_FIND";
      v26 = classificationCopy;
    }

    else
    {
      v28 = v16;
      v46 = v16 == 1503;
      v26 = classificationCopy;
      if (!v46)
      {
        goto LABEL_2136;
      }

      v27 = @"TAP_PRECISION_FIND";
    }
  }

LABEL_3321:
  v63 = v27;
  v64 = @"QUICK_ACTION_TRAY";
  switch(v15)
  {
    case 30:
      break;
    case 31:
      v64 = @"SUBMIT_TRIP_FEEDBACK";
      break;
    case 32:
      v64 = @"RAP_PLACE_ISSUE_DETAILS";
      break;
    case 33:
      v64 = @"RAP_GUIDES_DETAILS";
      break;
    case 34:
      v64 = @"RAP_BAD_DIRECTIONS_DETAILS";
      break;
    case 35:
      v64 = @"RAP_ADD_MAP_DETAILS";
      break;
    case 36:
      v64 = @"WATCH_COMPLICATION";
      break;
    case 37:
      v64 = @"RAP_NAV_MENU";
      break;
    case 38:
      v64 = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
      break;
    case 39:
      v64 = @"RAP_REPORT_MENU";
      break;
    case 40:
      v64 = @"RAP_CURATED_COLLECTION_MENU";
      break;
    case 41:
      v64 = @"RAP_REPORT_CARD_DETAILS";
      break;
    case 42:
      v64 = @"NOTIFICATION_NO_LOCATION_TRANSIT";
      break;
    case 43:
      v64 = @"RAP_STREET_ISSUE_DETAILS";
      break;
    case 44:
      v64 = @"NEARBY_TRANSIT_CARD";
      break;
    case 45:
      v64 = @"WATCH_NAV_MENU";
      break;
    case 46:
      v64 = @"GENERIC_ADVISORY_PAGE";
      break;
    case 47:
      v64 = @"USER_PROFILE_TRAY";
      break;
    case 48:
      v64 = @"MEDIA_APP_MENU";
      break;
    case 49:
      v64 = @"TEMPLATE_PLACE_TRAY";
      break;
    case 50:
      v64 = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
      break;
    case 51:
      v64 = @"ALLOW_NOTIFICATION_DIALOG";
      break;
    case 52:
      v64 = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
      break;
    case 53:
      v64 = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
      break;
    case 54:
      v64 = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
      break;
    case 55:
      v64 = @"NOTIFICATION_CONSENT_PROMPT";
      break;
    case 56:
      v64 = @"QUICK_ACTION_TRAY_VENDORS_MENU";
      break;
    case 57:
      v64 = @"PLACECARD_TRAY_VENDORS_MENU";
      break;
    case 58:
      v64 = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
      break;
    case 59:
      v64 = @"SEARCH_ALONG_ROUTE_TRAY";
      break;
    case 60:
      v64 = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
      break;
    case 61:
      v64 = @"PLACECARD_SHOWCASE_MENU";
      break;
    case 62:
      v64 = @"RAP_INLINE_ADD_DETAILS";
      break;
    case 63:
      v64 = @"RAP_EDIT_MENU_DETAILS";
      break;
    case 64:
      v64 = @"RAP_SUBMISSION_PROMPT";
      break;
    case 65:
      v64 = @"RAP_PLACECARD_EDIT_MENU";
      break;
    case 66:
      v64 = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
      break;
    case 67:
      v64 = @"INCIDENT_REPORT_MENU";
      break;
    case 68:
      v64 = @"RAP_SELECT_BAD_ROUTES_STEPS";
      break;
    case 69:
      v64 = @"RAP_SELECT_BAD_ROUTES";
      break;
    case 70:
      v64 = @"SIRI_SUGGESTION_RESUME_ROUTE";
      break;
    case 71:
      v64 = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
      break;
    case 72:
      v64 = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
      break;
    case 73:
      v64 = @"SPOTLIGHT_BUSINESS_ENTITY";
      break;
    case 74:
      v64 = @"NOTIFICATION_ARP";
      break;
    case 75:
      v64 = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
      break;
    case 76:
      v64 = @"YOUR_PHOTOS_ALBUM";
      break;
    case 77:
      v64 = @"ARP_PHOTO_CREDIT";
      break;
    case 78:
      v64 = @"RAP_OUTREACH_REVIEWED_REPORT";
      break;
    case 79:
      v64 = @"RAP_REPORT_MENU_MORE";
      break;
    case 80:
      v64 = @"WATCH_MAPS_SETTINGS";
      break;
    case 81:
      v64 = @"OFFLINE_FEATURE_PROMPT";
      break;
    case 82:
      v64 = @"EXPIRED_MAPS_DETAILS";
      break;
    case 83:
      v64 = @"MAPS_VIEW";
      break;
    case 84:
      v64 = @"NOTIFICATION_OFFLINE";
      break;
    case 85:
      v64 = @"EXPIRED_MAPS_MANAGEMENT";
      break;
    case 86:
      v64 = @"OFFLINE_NEW_MAPS_MANAGEMENT";
      break;
    case 87:
      v64 = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
      break;
    case 88:
      v64 = @"OFFLINE_MAPS_MANAGEMENT";
      break;
    case 89:
      v64 = @"REGION_SELECTOR";
      break;
    case 90:
      v64 = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
      break;
    case 91:
      v64 = @"FIND_MY_ETA_SHARING_TRAY";
      break;
    case 92:
      v64 = @"WATCH_PLACE";
      break;
    case 93:
      v64 = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
      break;
    case 94:
      v64 = @"WATCH_ROUTE_PLANNING_MAP";
      break;
    case 95:
      v64 = @"WATCH_NAV_WALKING_CONTROLS";
      break;
    case 96:
      v64 = @"WATCH_NAV_CYCLING_CONTROLS";
      break;
    case 97:
      v64 = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
      break;
    case 98:
      v64 = @"WATCH_NAV_TRANSIT_CONTROLS";
      break;
    case 99:
      v64 = @"WATCH_SEARCH_RESULTS_CAROUSEL";
      break;
    case 100:
      v64 = @"WATCH_NAV_DRIVING_CONTROLS";
      break;
    case 101:
      v64 = @"RESULTS_TRAY_SEARCH";
      break;
    case 102:
      v64 = @"RESULTS_TRAY_BROWSE";
      break;
    case 103:
      v64 = @"RESULTS_TRAY_FAVORITES";
      break;
    case 104:
      v64 = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
      break;
    case 105:
      v64 = @"RESULTS_TRAY_CLUSTER";
      break;
    case 106:
      v64 = @"RESULTS_TRAY_VENUE_BROWSE";
      break;
    case 107:
      v64 = @"WATCH_MAP_RESULTS";
      break;
    case 108:
      v64 = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
      break;
    case 109:
      v64 = @"WATCH_PLACES";
      break;
    case 110:
      v64 = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
      break;
    case 111:
      v64 = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
      break;
    case 112:
      v64 = @"DOWNLOADED_MAPS_DETAILS";
      break;
    case 113:
      v64 = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
      break;
    case 114:
      v64 = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
      break;
    case 115:
      v64 = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
      break;
    case 116:
      v64 = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
      break;
    case 117:
      v64 = @"WATCH_ROUTE_OPTIONS";
      break;
    case 118:
      v64 = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
      break;
    case 119:
      v64 = @"WATCH_MORE_GUIDES";
      break;
    case 120:
      v64 = @"WATCH_RECENTLY_VIEWED";
      break;
    case 121:
      v64 = @"EV_SUCCESS_TRAY";
      break;
    case 122:
      v64 = @"PREFERRED_NETWORK_SELECTION_TRAY";
      break;
    case 123:
      v64 = @"PREFERRED_NETWORK_TRAY";
      break;
    case 124:
      v64 = @"WALKING_TRANSITION_SUGGESTION_TRAY";
      break;
    case 125:
      v64 = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
      break;
    case 126:
      v64 = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
      break;
    case 127:
      v64 = @"AC_KEYBOARD_TRAY";
      break;
    case 128:
      v64 = @"MORE_RELATED_TRAILS";
      break;
    case 129:
      v64 = @"MORE_RELATED_TRAILHEADS";
      break;
    case 130:
      v64 = @"ROUTING_TRAY_CUSTOM_ROUTE";
      break;
    case 131:
      v64 = @"CUSTOM_ROUTE_CREATION_TRAY";
      break;
    case 132:
      v64 = @"ROUTING_TRAY_CURATED_HIKE";
      break;
    case 133:
      v64 = @"MORE_CURATED_HIKES";
      break;
    case 134:
      v64 = @"CUSTOM_ROUTE_ONBOARDING";
      break;
    case 135:
      v64 = @"LIBRARY_ROUTES";
      break;
    case 136:
      v64 = @"HIKING_TRANSITION_SUGGESTION_TRAY";
      break;
    case 137:
      v64 = @"MY_LIBRARY";
      break;
    case 138:
      v64 = @"EDIT_NOTE_TRAY";
      break;
    case 139:
      v64 = @"CREATE_NOTE_TRAY";
      break;
    case 140:
      v64 = @"LIBRARY_PLACES";
      break;
    case 141:
      v64 = @"WATCH_ACCOUNT";
      break;
    case 142:
      v64 = @"WATCH_DOWNLOADED_MAPS";
      break;
    case 143:
      v64 = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
      break;
    case 144:
      v64 = @"VISUAL_INTELLIGENCE_DETECTION";
      break;
    case 145:
      v64 = @"VISUAL_INTELLIGENCE_SNIPPET";
      break;
    case 146:
      v64 = @"FAMILIAR_ROUTE_NOTIFICATION";
      break;
    case 147:
      v64 = @"LIBRARY_VISITED";
      break;
    case 148:
      v64 = @"VISITED_PLACES_ONBOARDING";
      break;
    case 149:
      v64 = @"NOTIFICATION_VISITED_PLACES";
      break;
    case 150:
      v64 = @"LOCATION_CORRECTION_TRAY";
      break;
    case 151:
      v64 = @"MAPS_WIDGET_VISITED_PLACE";
      break;
    case 152:
      v64 = @"REMOVE_VISIT_TRAY";
      break;
    case 153:
      v64 = @"NEARBY_SUGGESTION_TRAY";
      break;
    case 154:
      v64 = @"FAMILIAR_ROUTES_ONBOARDING";
      break;
    case 155:
      v64 = @"ROUTING_TRAY_CARPLAY";
      break;
    case 201:
      v64 = @"PLACECARD_TRAY";
      break;
    default:
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
      break;
  }

  *buf = 138413058;
  v89 = v63;
  v90 = 2112;
  v91 = v64;
  v92 = 2112;
  v93 = v24;
  v94 = 2112;
  v95 = modulesCopy;
  _os_log_impl(&dword_1C5620000, v22, OS_LOG_TYPE_DEBUG, "Flexible Placecard is enabled, therefore ignoring analytics action for %@ with target %@ with value %@ and module metadata %@", buf, 0x2Au);

  v34 = dCopy;
  v33 = lCopy;
  completionCopy = v65;
LABEL_1997:
}

void __184__MUPlaceCardAnalyticsController__infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_feedbackDelegateSelector_modules_actionRichProviderId_classification_completion___block_invoke(uint64_t a1)
{
  v23 = [MEMORY[0x1E696F298] sharedService];
  v20 = *(a1 + 120);
  v22 = *(a1 + 124);
  v2 = *(a1 + 40);
  v21 = *(a1 + 32);
  v3 = *(a1 + 112);
  v19 = [v2 _muid];
  v4 = [*(a1 + 40) _vendorID];
  v16 = *(a1 + 128);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v5 = [*(a1 + 40) _firstLocalizedCategoryName];
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 40);
  v10 = [v9 _allPhotoAttributions];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v9 _allPhotoAttributions];
    v13 = MUMap(v12, &__block_literal_global_5730);
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v15) = v16;
  [v23 capturePlaceCardUserAction:v20 onTarget:v22 eventValue:v21 mapItem:v2 timestamp:0xFFFFFFFFLL resultIndex:v19 targetID:v3 providerID:v4 animationID:0 actionURL:v17 photoID:v18 placeCardType:v15 localizedMapItemCategory:v5 availableActions:v6 unactionableUIElements:v7 modules:v8 commingledPhotoProviderIDs:v13 actionRichProviderId:*(a1 + 88) classification:*(a1 + 96)];

  v14 = *(a1 + 104);
  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __184__MUPlaceCardAnalyticsController__infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_feedbackDelegateSelector_modules_actionRichProviderId_classification_completion___block_invoke_2;
    block[3] = &unk_1E821B860;
    v25 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1
{
  v14 = *&action;
  v25[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  lCopy = l;
  dCopy = d;
  idCopy = id;
  classificationCopy = classification;
  if (metadata)
  {
    v25[0] = metadata;
    v21 = MEMORY[0x1E695DEC8];
    metadataCopy = metadata;
    v23 = [v21 arrayWithObjects:v25 count:1];
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  [(MUPlaceCardAnalyticsController *)self _infoCardAnalyticsDidSelectAction:v14 target:target eventValue:valueCopy actionURL:lCopy photoID:dCopy feedbackDelegateSelector:selector modules:v23 actionRichProviderId:idCopy classification:classificationCopy completion:0];
}

- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification
{
  v8 = *&selector;
  v10 = *&action;
  classificationCopy = classification;
  idCopy = id;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  -[MUPlaceCardAnalyticsController infoCardAnalyticsDidSelectAction:target:eventValue:feedbackDelegateSelector:actionRichProviderId:classification:](self, "infoCardAnalyticsDidSelectAction:target:eventValue:feedbackDelegateSelector:actionRichProviderId:classification:", v10, [WeakRetained defaultTargetForPlaceCardAnalytics], valueCopy, v8, idCopy, classificationCopy);
}

- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector classification:(id)classification
{
  v6 = *&selector;
  v8 = *&action;
  classificationCopy = classification;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  -[MUPlaceCardAnalyticsController infoCardAnalyticsDidSelectAction:target:eventValue:feedbackDelegateSelector:actionRichProviderId:classification:](self, "infoCardAnalyticsDidSelectAction:target:eventValue:feedbackDelegateSelector:actionRichProviderId:classification:", v8, [WeakRetained defaultTargetForPlaceCardAnalytics], valueCopy, v6, 0, classificationCopy);
}

- (void)instrumentPunchoutActionWithURL:(id)l providerId:(id)id
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  idCopy = id;
  v8 = MUGetPlaceCardAnalyticsUILog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = lCopy;
    v11 = 2112;
    v12 = idCopy;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "Instrumenting punchout with url %@ and provider id %@", &v9, 0x16u);
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:6050 eventValue:lCopy feedbackDelegateSelector:0 actionRichProviderId:idCopy classification:0];
}

- (void)instrumentCloseUsingClientType:(unint64_t)type
{
  if (type == 3)
  {
    v3 = 701;
  }

  else
  {
    v3 = 0;
  }

  if (type == 2)
  {
    v4 = 702;
  }

  else
  {
    v4 = v3;
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:4 target:v4 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)instrumentVerticalScrollWithBeginningPoint:(CGPoint)point targetContentOffset:(CGPoint *)offset velocity:(CGPoint)velocity
{
  v5 = point.y - offset->y;
  if (v5 <= 0.0)
  {
    if (v5 < 0.0)
    {
      v6 = 7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 8;
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:v6 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)instrumentConceal
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardRevealLoggingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    placeItem = [(MUPlaceCardAnalyticsController *)self placeItem];
    v5 = 138412290;
    v6 = placeItem;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Logging conceal for place item %@", &v5, 0xCu);
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:47 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (BOOL)instrumentRevealIfNeededWithImpressionsSessionId:(id)id
{
  v58 = *MEMORY[0x1E69E9840];
  idCopy = id;
  placeItem = [(MUPlaceCardAnalyticsController *)self placeItem];
  v6 = placeItem;
  if (!placeItem)
  {
    p_super = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v8 = "Place item is nil so not instrumenting reveal";
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if ([placeItem isIntermediateMapItem])
  {
    p_super = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v8 = "Place item is present but it contains an intermediate map item so not instrumenting reveal";
LABEL_7:
      _os_log_impl(&dword_1C5620000, p_super, OS_LOG_TYPE_DEBUG, v8, &buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  deferLoggingRevealUntilRefinement = self->_deferLoggingRevealUntilRefinement;
  v12 = MUGetPlaceCardRevealLoggingLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (deferLoggingRevealUntilRefinement)
  {
    if (v13)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_DEBUG, "Deferring reveal logging until refinement has finished.  Saving session identifier for next reveal.", &buf, 2u);
    }

    v14 = idCopy;
    v9 = 0;
    p_super = &self->_cachedSessionId->super;
    self->_cachedSessionId = v14;
  }

  else
  {
    if (v13)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_DEBUG, "Logging reveal for place item %@", &buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_provider);
    p_super = [WeakRetained revealedModules];

    v16 = [p_super mutableCopy];
    mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0] setPlaceCardRevealedPlaceCardModules:v16];

    v18 = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = p_super;
      _os_log_impl(&dword_1C5620000, v18, OS_LOG_TYPE_DEBUG, "Logging reveal modules %@", &buf, 0xCu);
    }

    mEMORY[0x1E69A15A0]2 = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0]2 populateImpressionObjectId:idCopy];

    mapItem = [v6 mapItem];
    _enrichmentInfo = [mapItem _enrichmentInfo];
    showcaseId = [_enrichmentInfo showcaseId];
    mEMORY[0x1E69A15A0]3 = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0]3 setPlaceCardPlaceActionDetailsShowcaseId:showcaseId];

    v24 = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      mapItem2 = [v6 mapItem];
      _enrichmentInfo2 = [mapItem2 _enrichmentInfo];
      showcaseId2 = [_enrichmentInfo2 showcaseId];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = showcaseId2;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_DEBUG, "Logging showcase id %@", &buf, 0xCu);
    }

    contact = [v6 contact];
    if (contact && MapsFeature_IsEnabled_MapsWally() && [v6 representsPerson])
    {
      postalAddresses = [contact postalAddresses];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v56 = 0x2020000000;
      v57 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke;
      v50[3] = &unk_1E82183C0;
      v50[4] = &buf;
      [postalAddresses enumerateObjectsUsingBlock:v50];
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke_2;
      v45[3] = &unk_1E82183C0;
      v45[4] = &v46;
      [postalAddresses enumerateObjectsUsingBlock:v45];
      mEMORY[0x1E69A15A0]4 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]4 setPlaceCardIsPersonPlacecard:1];

      v31 = *(*(&buf + 1) + 24);
      mEMORY[0x1E69A15A0]5 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]5 setPlaceCardIsPersonLocationShared:v31];

      v33 = *(v47 + 24);
      mEMORY[0x1E69A15A0]6 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]6 setPlaceCardIsPersonAddressAvailable:v33];

      v35 = MUGetPlaceCardRevealLoggingLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(*(&buf + 1) + 24);
        v37 = *(v47 + 24);
        *v51 = 67109376;
        v52 = v36;
        v53 = 1024;
        v54 = v37;
        _os_log_impl(&dword_1C5620000, v35, OS_LOG_TYPE_DEBUG, "Logging person card isLocationShared: %d and isAddressAvailable %d", v51, 0xEu);
      }

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      mEMORY[0x1E69A15A0]7 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]7 setPlaceCardIsPersonPlacecard:0];

      mEMORY[0x1E69A15A0]8 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]8 setPlaceCardIsPersonLocationShared:0];

      mEMORY[0x1E69A15A0]9 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]9 setPlaceCardIsPersonAddressAvailable:0];

      postalAddresses = MUGetPlaceCardRevealLoggingLog();
      if (os_log_type_enabled(postalAddresses, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C5620000, postalAddresses, OS_LOG_TYPE_DEBUG, "Not a person card", &buf, 2u);
      }
    }

    v41 = objc_loadWeakRetained(&self->_provider);
    defaultTargetForPlaceCardAnalytics = [v41 defaultTargetForPlaceCardAnalytics];
    analyticModules = [(MUPlaceCardAnalyticsController *)self analyticModules];
    v44 = [analyticModules copy];
    [(MUPlaceCardAnalyticsController *)self _infoCardAnalyticsDidSelectAction:21 target:defaultTargetForPlaceCardAnalytics eventValue:0 actionURL:0 photoID:0 feedbackDelegateSelector:0 modules:v44 actionRichProviderId:0 classification:0 completion:&__block_literal_global_461];

    v9 = 1;
  }

LABEL_9:

  return v9;
}

void __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke_8()
{
  v0 = [MEMORY[0x1E69A15A0] sharedData];
  [v0 populateImpressionObjectId:0];
}

- (void)infoCardAnalyticsPopulateSharedStateWithButtonList:(id)list
{
  v13 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = MUGetPlaceCardAnalyticsUILog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = listCopy;
    _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "Setting the shared state for button list %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x2020000000;
  v12 = 0;
  mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__MUPlaceCardAnalyticsController_infoCardAnalyticsPopulateSharedStateWithButtonList___block_invoke;
  v7[3] = &unk_1E8218398;
  p_buf = &buf;
  v6 = listCopy;
  v8 = v6;
  [mEMORY[0x1E69A15A0] populateActionButtonDetails:v7];

  _Block_object_dispose(&buf, 8);
}

BOOL __85__MUPlaceCardAnalyticsController_infoCardAnalyticsPopulateSharedStateWithButtonList___block_invoke(uint64_t a1, void *a2, void *a3, unsigned int *a4, _BYTE *a5)
{
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = [*(a1 + 32) count];
  if (v10 < v11)
  {
    v12 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a3 = [v12 vendor];
    *a5 = [v12 isGroup];
    *a2 = [v12 metadata];
    v13 = [v12 linkType];
    if (v13 - 1 >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    *a4 = v14;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v10 < v11;
}

- (MUPlaceCardAnalyticsController)initWithAnalyticsProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = MUPlaceCardAnalyticsController;
  v5 = [(MUPlaceCardAnalyticsController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_provider, providerCopy);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -1);
    v8 = dispatch_queue_create("com.apple.MapsUI.PlaceViewController.Analytics", v7);
    analyticsQueue = v6->_analyticsQueue;
    v6->_analyticsQueue = v8;
  }

  return v6;
}

- (NSArray)analyticModules
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  analyticModules = [WeakRetained analyticModules];

  return analyticModules;
}

- (_MKPlaceItem)placeItem
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  placeItem = [WeakRetained placeItem];

  return placeItem;
}

@end