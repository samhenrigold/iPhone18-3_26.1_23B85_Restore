@interface GEOAPServiceLocal
- (void)flushEvalData;
- (void)flushUploadHistoryWithCompletion:(id)completion;
- (void)reportDailySettings:(id)settings completion:(id)completion;
- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id completion:(id)completion;
- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completion:(id)completion;
- (void)runAggregationTasks;
- (void)setEvalMode:(BOOL)mode;
- (void)showEvalDataWithVisitorBlock:(id)block;
- (void)showHistoryOfAge:(unsigned int)age withVisitorBlock:(id)block completion:(id)completion;
- (void)showInflightUploadsWithVisitorBlock:(id)block completion:(id)completion;
- (void)showUploadCounts:(id)counts;
- (void)streamWithLogMsgBlock:(id)block dailyUsageBlock:(id)usageBlock monthlyUsageBlock:(id)monthlyUsageBlock;
@end

@implementation GEOAPServiceLocal

- (void)showUploadCounts:(id)counts
{
  countsCopy = counts;
  v4 = +[GEOAPDebugPersistence sharedInstance];
  [v4 showUploadCounts:countsCopy];
}

- (void)flushUploadHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[GEOAPDebugPersistence sharedInstance];
  [v4 deleteAllHistory];

  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E34;
  block[3] = &unk_10003C988;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);
}

- (void)showHistoryOfAge:(unsigned int)age withVisitorBlock:(id)block completion:(id)completion
{
  v6 = *&age;
  completionCopy = completion;
  blockCopy = block;
  v9 = +[GEOAPDebugPersistence sharedInstance];
  [v9 showHistoryOfAge:v6 withVisitorBlock:blockCopy completion:completionCopy];
}

- (void)showInflightUploadsWithVisitorBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  v7 = +[GEOAPDebugPersistence sharedInstance];
  [v7 showInflightUploadsWithVisitorBlock:blockCopy completion:completionCopy];
}

- (void)runAggregationTasks
{
  v2 = sub_10000C6AC();
  if (v2)
  {
    v3 = sub_10000AB3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "starting eval mode aggregation", buf, 2u);
    }

    [v2[3] lock];
    v4 = +[NSDate distantPast];
    v5 = +[NSDate distantFuture];
    [v2 aggregateDailyCountsAndReportFrom:v4 until:v5];

    [v2[3] unlock];
    v6 = sub_10000AB3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "finished eval mode aggregation", v8, 2u);
    }
  }

  v7 = +[GEOAPNetEventAggregator sharedAggregator];
  [v7 runAggregation];
}

- (void)streamWithLogMsgBlock:(id)block dailyUsageBlock:(id)usageBlock monthlyUsageBlock:(id)monthlyUsageBlock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: local proxy bypassed", v5, 2u);
  }
}

- (void)showEvalDataWithVisitorBlock:(id)block
{
  blockCopy = block;
  v4 = +[GEOAPDB sharedInstance];
  [v4 showEvalDataWithVisitorBlock:blockCopy];
}

- (void)flushEvalData
{
  v2 = +[GEOAPDB sharedInstance];
  [v2 flushEvalData];
}

- (void)setEvalMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = +[GEOAPDB sharedInstance];
  [v4 setEvalMode:modeCopy];
}

- (void)reportDailySettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  v7 = sub_100001018();
  v8 = dispatch_get_global_queue(21, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000063B4;
  v17[3] = &unk_10003C988;
  v18 = completionCopy;
  v9 = completionCopy;
  if (v7)
  {
    v10 = v17;
    v11 = v8;
    v12 = settingsCopy;
    v13 = sub_100001134();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "storing Daily Settings", buf, 2u);
    }

    v14 = +[GEOReferenceTimeManager sharedManager];
    bestReferenceDate = [v14 bestReferenceDate];

    v16 = [[GEOAPDailySettingsQueueElem alloc] initWithSettings:v12 createTime:bestReferenceDate];
    [v7 _storeQueueElem:v16 completionQueue:v11 completionBlock:v10];
  }
}

- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id completion:(id)completion
{
  v10 = *&type;
  completionCopy = completion;
  idCopy = id;
  boolCopy = bool;
  stringCopy = string;
  v15 = sub_100000FC4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOAPServiceLocal reportDailyUsageCountType:usageString:usageBool:appId:completion:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  v16 = sub_100001018();
  v17 = dispatch_get_global_queue(21, 0);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000074DC;
  v32[3] = &unk_10003C988;
  v33 = completionCopy;
  v18 = completionCopy;
  v31 = stringCopy;
  v19 = boolCopy;
  v20 = idCopy;
  v21 = v20;
  if (v16)
  {
    v30 = v32;
    v22 = v17;
    v23 = sub_100001134();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      if (v10 > 9999)
      {
        if (v10 > 10001)
        {
          if (v10 == 10002)
          {
            v24 = @"ENTER_MAPS_CARPLAY_ACCOUNTING_BOOKEND";
          }

          else if (v10 == 10003)
          {
            v24 = @"EXIT_MAPS_CARPLAY_ACCOUNTING_BOOKEND";
          }

          else
          {
LABEL_288:
            v24 = [NSString stringWithFormat:@"(unknown: %i)", v10];
          }
        }

        else if (v10 == 10000)
        {
          v24 = @"ENTER_MAPS_ACCOUNTING_BOOKEND";
        }

        else
        {
          v24 = @"EXIT_MAPS_ACCOUNTING_BOOKEND";
        }
      }

      else
      {
        v24 = @"UNKNOWN_EVENT";
        switch(v10)
        {
          case 0:
            break;
          case 1:
            v24 = @"ACCIDENT_CONFIRMATION";
            break;
          case 2:
            v24 = @"ACCIDENT_SUBMISSION";
            break;
          case 3:
            v24 = @"ADD_LICENSE_PLATE";
            break;
          case 4:
            v24 = @"ANNOUNCEMENT_DISPLAYED_ENHANCED_DETAIL";
            break;
          case 5:
            v24 = @"ANNOUNCEMENT_DISPLAYED_FLYOVER";
            break;
          case 6:
            v24 = @"ANNOUNCEMENT_DISPLAYED_GENERAL";
            break;
          case 7:
            v24 = @"ANNOUNCEMENT_DISPLAYED_LANE_GUIDANCE";
            break;
          case 8:
            v24 = @"ANNOUNCEMENT_DISPLAYED_LOOK_AROUND";
            break;
          case 9:
            v24 = @"ANNOUNCEMENT_DISPLAYED_TRANSIT";
            break;
          case 10:
            v24 = @"ANNOUNCEMENT_DISPLAYED_UNKNOWN";
            break;
          case 11:
            v24 = @"ANNOUNCEMENT_DISPLAYED_VENUES";
            break;
          case 12:
            v24 = @"ANNOUNCEMENT_TAPPED_ENHANCED_DETAIL";
            break;
          case 13:
            v24 = @"ANNOUNCEMENT_TAPPED_FLYOVER";
            break;
          case 14:
            v24 = @"ANNOUNCEMENT_TAPPED_GENERAL";
            break;
          case 15:
            v24 = @"ANNOUNCEMENT_TAPPED_LANE_GUIDANCE";
            break;
          case 16:
            v24 = @"ANNOUNCEMENT_TAPPED_LOOK_AROUND";
            break;
          case 17:
            v24 = @"ANNOUNCEMENT_TAPPED_TRANSIT";
            break;
          case 18:
            v24 = @"ANNOUNCEMENT_TAPPED_UNKNOWN";
            break;
          case 19:
            v24 = @"ANNOUNCEMENT_TAPPED_VENUES";
            break;
          case 20:
            v24 = @"APP_CLIP_USED";
            break;
          case 21:
            v24 = @"AR_MODE_ENTER";
            break;
          case 22:
            v24 = @"AUTOCOMPLETE_RESULTS_SHOWN";
            break;
          case 23:
            v24 = @"CARPLAY_CONNECTED";
            break;
          case 24:
            v24 = @"COARSE_LOCATION_USED";
            break;
          case 25:
            v24 = @"COLLECTION_CREATED";
            break;
          case 26:
            v24 = @"COLLECTION_ITEM_TAPPED";
            break;
          case 27:
            v24 = @"COLLECTION_SHARED";
            break;
          case 28:
            v24 = @"COLLECTION_SHOWN";
            break;
          case 29:
            v24 = @"CURATED_COLLECTION_ITEM_TAPPED";
            break;
          case 30:
            v24 = @"CURATED_COLLECTION_REMOVED";
            break;
          case 31:
            v24 = @"CURATED_COLLECTION_SAVED";
            break;
          case 32:
            v24 = @"CURATED_COLLECTION_SHARED";
            break;
          case 33:
            v24 = @"CURATED_COLLECTION_SHOWN";
            break;
          case 34:
            v24 = @"DEVICE_CONNECTED";
            break;
          case 35:
            v24 = @"DIRECTIONS";
            break;
          case 36:
            v24 = @"DIRECTIONS_REQUESTED_CYCLING";
            break;
          case 37:
            v24 = @"DIRECTIONS_REQUESTED_DRIVING";
            break;
          case 38:
            v24 = @"DIRECTIONS_REQUESTED_EBIKE";
            break;
          case 39:
            v24 = @"DIRECTIONS_REQUESTED_EV_ROUTING";
            break;
          case 40:
            v24 = @"DIRECTIONS_REQUESTED_TRANSIT";
            break;
          case 41:
            v24 = @"DIRECTIONS_REQUESTED_WALKING";
            break;
          case 42:
            v24 = @"DIRECTIONS_SAFARI";
            break;
          case 43:
            v24 = @"DIRECTIONS_SIRI_PLACECARD";
            break;
          case 44:
            v24 = @"DIRECTIONS_SPOTLIGHT";
            break;
          case 45:
            v24 = @"ENTER_MAPS_CARPLAY";
            break;
          case 46:
            v24 = @"ENTER_VENUE_EXPERIENCE";
            break;
          case 47:
            v24 = @"ETA_RECEIVED";
            break;
          case 48:
            v24 = @"ETA_SHARED";
            break;
          case 49:
            v24 = @"FAVORITE_ADD_PLACE";
            break;
          case 50:
            v24 = @"FAVORITE_TAP_LIST_ITEM";
            break;
          case 51:
            v24 = @"FLYOVER_FOREGROUNDED";
            break;
          case 52:
            v24 = @"INCIDENT_SUBMISSION";
            break;
          case 53:
            v24 = @"LOOK_AROUND_FOREGROUNDED";
            break;
          case 54:
            v24 = @"LOOK_AROUND_SHARED";
            break;
          case 55:
            v24 = @"MAPSHOME_GET_DIRECTIONS";
            break;
          case 56:
            v24 = @"MAPS_HANDOFF_FROM_IPAD";
            break;
          case 57:
            v24 = @"MAPS_HANDOFF_FROM_MAC";
            break;
          case 58:
            v24 = @"MAPS_HANDOFF_FROM_PHONE";
            break;
          case 59:
            v24 = @"MAPS_HANDOFF_FROM_WATCH";
            break;
          case 60:
            v24 = @"MAP_VIEW_FOREGROUNDED";
            break;
          case 61:
            v24 = @"NAV_SESSION_COARSE_LOCATION";
            break;
          case 62:
            v24 = @"NAV_SESSION_PRECISE_LOCATION";
            break;
          case 63:
            v24 = @"NAV_STARTED_CARPLAY";
            break;
          case 64:
            v24 = @"NAV_STARTED_CYCLING";
            break;
          case 65:
            v24 = @"NAV_STARTED_DRIVING";
            break;
          case 66:
            v24 = @"NAV_STARTED_EBIKE";
            break;
          case 67:
            v24 = @"NAV_STARTED_EV_ROUTING";
            break;
          case 68:
            v24 = @"NAV_STARTED_JUNCTION_VIEW";
            break;
          case 69:
            v24 = @"NAV_STARTED_LANE_GUIDANCE";
            break;
          case 70:
            v24 = @"NAV_STARTED_TRANSIT";
            break;
          case 71:
            v24 = @"NAV_STARTED_WALKING";
            break;
          case 72:
            v24 = @"OPEN_INDOOR_MAP";
            break;
          case 73:
            v24 = @"OTHER_GET_DIRECTIONS";
            break;
          case 74:
            v24 = @"PLACECARD_GET_DIRECTIONS";
            break;
          case 75:
            v24 = @"PLACECARD_RICH_DATA_USED";
            break;
          case 76:
            v24 = @"PLACECARD_SHARED";
            break;
          case 77:
            v24 = @"PLACECARD_SHOWN";
            break;
          case 78:
            v24 = @"PLACECARD_SHOWN_SAFARI";
            break;
          case 79:
            v24 = @"PLACECARD_SHOWN_SIRI";
            break;
          case 80:
            v24 = @"PLACECARD_SHOWN_SPOTLIGHT";
            break;
          case 81:
            v24 = @"PLACECARD_START_NAV";
            break;
          case 82:
            v24 = @"PROMINENT_GET_DIRECTIONS";
            break;
          case 83:
            v24 = @"RAP_STARTED";
            break;
          case 84:
            v24 = @"RIDESHARE_REQUESTED";
            break;
          case 85:
            v24 = @"SEARCH_NEARBY_CATEGORY_TAPPED";
            break;
          case 86:
            v24 = @"SEARCH_RECENTLY_VIEWED_TAPPED";
            break;
          case 87:
            v24 = @"SEARCH_RECENT_SEARCHES_TAPPED";
            break;
          case 88:
            v24 = @"SEARCH_RESULTS_SHOWN_MAPS";
            break;
          case 89:
            v24 = @"SEARCH_RESULTS_SHOWN_SAFARI";
            break;
          case 90:
            v24 = @"SEARCH_RESULTS_SHOWN_SIRI";
            break;
          case 91:
            v24 = @"SEARCH_RESULTS_SHOWN_SPOTLIGHT";
            break;
          case 92:
            v24 = @"SEARCH_RESULTS_TAPPED_SAFARI";
            break;
          case 93:
            v24 = @"SEARCH_RESULTS_TAPPED_SIRI";
            break;
          case 94:
            v24 = @"SEARCH_RESULTS_TAPPED_SPOTLIGHT";
            break;
          case 95:
            v24 = @"SEARCH_RESULT_TAPPED_MAPS";
            break;
          case 96:
            v24 = @"SEARCH_SUGGESTION_TAPPED";
            break;
          case 97:
            v24 = @"SHARE_DRIVING_ROUTES";
            break;
          case 98:
            v24 = @"SHARE_FAVORITES";
            break;
          case 99:
            v24 = @"SHARE_MYLOCATION";
            break;
          case 100:
            v24 = @"SHARE_TO_DEVICE";
            break;
          case 101:
            v24 = @"SHARE_TRANSIT_ROUTES";
            break;
          case 102:
            v24 = @"SHARE_WALKING_ROUTES";
            break;
          case 103:
            v24 = @"SHOW_MAPS_SETTINGS";
            break;
          case 104:
            v24 = @"SIRI_START_NAV";
            break;
          case 105:
            v24 = @"SNAPSHOTTER_USED";
            break;
          case 106:
            v24 = @"TAP_COMPASS_MODE";
            break;
          case 107:
            v24 = @"UGC_PHOTO_SUBMISSION";
            break;
          case 108:
            v24 = @"UGC_RATING_SUBMISSION";
            break;
          case 109:
            v24 = @"VLF_CORRECTION_ATTEMPTED";
            break;
          case 110:
            v24 = @"VLF_CORRECTION_FAILED";
            break;
          case 111:
            v24 = @"VLF_CORRECTION_SUCCESS";
            break;
          case 112:
            v24 = @"WIDGET_ENTER";
            break;
          case 113:
            v24 = @"JUNCTION_VIEW_SHOWN";
            break;
          case 114:
            v24 = @"ETA_SHARED_DRIVING";
            break;
          case 115:
            v24 = @"ETA_SHARED_WALKING";
            break;
          case 116:
            v24 = @"ETA_SHARED_CYCLING";
            break;
          case 117:
            v24 = @"MAPS_HANDOFF";
            break;
          case 118:
            v24 = @"AR_WALKING_LOCALIZATION_ATTEMPTED";
            break;
          case 119:
            v24 = @"AR_WALKING_LOCALIZATION_FAILED";
            break;
          case 120:
            v24 = @"AR_WALKING_LOCALIZATION_SUCCESS";
            break;
          case 121:
            v24 = @"CURATED_COLLECTIONS_HOME_SHOWN";
            break;
          case 122:
            v24 = @"CURATED_COLLECTIONS_HOME_CONDENSED_SHOWN";
            break;
          case 123:
            v24 = @"NEARBY_TRANSIT_SHOWN";
            break;
          case 124:
            v24 = @"NEARBY_TRANSIT_TAPPED";
            break;
          case 125:
            v24 = @"SPR_GLOBE_EXPLORED";
            break;
          case 126:
            v24 = @"SPR_METROS_EXPLORED";
            break;
          case 127:
            v24 = @"TRANSIT_DETAILS_USED";
            break;
          case 128:
            v24 = @"USER_ACCOUNT_OPENED_ACCOUNT";
            break;
          case 129:
            v24 = @"USER_ACCOUNT_SHOWN";
            break;
          case 130:
            v24 = @"MAP_MODE_DRIVING_SELECTED";
            break;
          case 131:
            v24 = @"MAP_MODE_EXPLORE_SELECTED";
            break;
          case 132:
            v24 = @"MAP_MODE_TRANSIT_SELECTED";
            break;
          case 133:
            v24 = @"MAP_MODE_SATELLITE_SELECTED";
            break;
          case 134:
            v24 = @"MAP_MODE_DRIVING_USED";
            break;
          case 135:
            v24 = @"MAP_MODE_EXPLORE_USED";
            break;
          case 136:
            v24 = @"MAP_MODE_TRANSIT_USED";
            break;
          case 137:
            v24 = @"MAP_MODE_SATELLITE_USED";
            break;
          case 138:
            v24 = @"WATCH_GET_DIRECTIONS_CYCLING";
            break;
          case 139:
            v24 = @"WATCH_START_NAV_CYCLING";
            break;
          case 140:
            v24 = @"WATCH_GET_DIRECTIONS_WALKING";
            break;
          case 141:
            v24 = @"WATCH_START_NAV_WALKING";
            break;
          case 142:
            v24 = @"WATCH_GET_DIRECTIONS_TRANSIT";
            break;
          case 143:
            v24 = @"WATCH_START_NAV_TRANSIT";
            break;
          case 144:
            v24 = @"WATCH_GET_DIRECTIONS_DRIVING";
            break;
          case 145:
            v24 = @"WATCH_START_NAV_DRIVING";
            break;
          case 146:
            v24 = @"ETA_SHARED_TRANSIT";
            break;
          case 147:
            v24 = @"USER_ACCOUNT_OPENED";
            break;
          case 148:
            v24 = @"VENUE_INTERACTION";
            break;
          case 149:
            v24 = @"ENTER_MAPS";
            break;
          case 150:
            v24 = @"EXIT_MAPS";
            break;
          case 151:
            v24 = @"TOTAL_SECONDS_IN_MAPS_DEVICE";
            break;
          case 152:
            v24 = @"ENTER_MAPS_DEVICE";
            break;
          case 153:
            v24 = @"MAP_VIEW_INSTANTIATED";
            break;
          case 154:
            v24 = @"MAP_VIEW_ACTIVATED";
            break;
          case 155:
            v24 = @"DIRECTIONS_PLACECARD_REVEAL_CARPLAY_UI";
            break;
          case 156:
            v24 = @"DIRECTIONS_LIST_ITEM_CARPLAY_UI";
            break;
          case 157:
            v24 = @"DIRECTIONS_FAVORITE_CARPLAY_UI";
            break;
          case 158:
            v24 = @"GET_DIRECTIONS_CARPLAY_CONNECTED";
            break;
          case 159:
            v24 = @"DIRECTIONS_REQUESTED_DRIVING_CARPLAY_CONNECTED";
            break;
          case 160:
            v24 = @"SIRI_SEARCH_CARPLAY_UI";
            break;
          case 161:
            v24 = @"OPEN_KEYBOARD_CARPLAY_UI";
            break;
          case 162:
            v24 = @"TAP_SEARCH_CARPLAY_UI";
            break;
          case 163:
            v24 = @"OPEN_SEARCH_CARPLAY_UI";
            break;
          case 164:
            v24 = @"MAPS_SEARCH_CARPLAY_CONNECTED";
            break;
          case 165:
            v24 = @"EXIT_MAPS_CARPLAY";
            break;
          case 166:
            v24 = @"TOTAL_SECONDS_IN_MAPS_CARPLAY";
            break;
          case 167:
            v24 = @"NAV_FEEDBACK_DRIVING";
            break;
          case 168:
            v24 = @"TRIP_COMPLETED_DRIVING";
            break;
          case 169:
            v24 = @"HAS_REROUTE_DRIVING";
            break;
          case 170:
            v24 = @"ETA_OVERESTIMATE_DRIVING";
            break;
          case 171:
            v24 = @"EXTREME_ETA_OVERESTIMATE_DRIVING";
            break;
          case 172:
            v24 = @"ETA_UNDERESTIMATE_DRIVING";
            break;
          case 173:
            v24 = @"EXTREME_ETA_UNDERESTIMATE_DRIVING";
            break;
          case 174:
            v24 = @"RAP_GOOD_TRIP";
            break;
          case 175:
            v24 = @"ENRICHED_RESULTS_SHOWN_MAPS";
            break;
          case 176:
            v24 = @"TAP_TRANSIT_TIPKIT";
            break;
          case 177:
            v24 = @"ADD_STOP_CARPLAY";
            break;
          case 178:
            v24 = @"ADD_STOP_CARPLAY_SIRI";
            break;
          case 179:
            v24 = @"ADD_STOP_DEVICE";
            break;
          case 180:
            v24 = @"ADD_STOP_DEVICE_SIRI";
            break;
          case 181:
            v24 = @"SHOWCASE_SHOWN";
            break;
          case 182:
            v24 = @"SHOWCASE_TAPPED";
            break;
          case 183:
            v24 = @"PUNCH_IN_SIRI";
            break;
          case 184:
            v24 = @"PUNCH_IN_SAFARI";
            break;
          case 185:
            v24 = @"PUNCH_IN_SPOTLIGHT";
            break;
          case 186:
            v24 = @"PUNCH_IN_SMS";
            break;
          case 187:
            v24 = @"PUNCH_IN_FINDMY";
            break;
          case 188:
            v24 = @"PUNCH_IN_OTHER_2ND_PARTY";
            break;
          case 189:
            v24 = @"PUNCH_IN_3RD_PARTY";
            break;
          case 191:
            v24 = @"RAP_SUBMITTED";
            break;
          case 192:
            v24 = @"ARP_PHOTO_SUBMISSION";
            break;
          case 193:
            v24 = @"ARP_RATING_SUBMISSION";
            break;
          case 194:
            v24 = @"TRAFFIC_INCIDENT_REPORT";
            break;
          case 195:
            v24 = @"TRAFFIC_INCIDENT_CONFIRM";
            break;
          case 196:
            v24 = @"TRAFFIC_INCIDENT_DISMISS";
            break;
          case 197:
            v24 = @"TRAFFIC_INCIDENT_CLEAR";
            break;
          case 198:
            v24 = @"MODERN_MAP_EXPLORED";
            break;
          case 199:
            v24 = @"CARPLAY_ROUTING_UI_USED";
            break;
          case 200:
            v24 = @"CARPLAY_SEARCH_UI_USED";
            break;
          case 201:
            v24 = @"ANNOUNCEMENT_DISPLAYED";
            break;
          case 202:
            v24 = @"ANNOUNCEMENT_TAPPED";
            break;
          case 203:
            v24 = @"POSITIVE_SEARCH_ENGAGEMENT";
            break;
          case 204:
            v24 = @"PUNCH_OUT_FINDMY";
            break;
          case 205:
            v24 = @"WATCH_START_NAV";
            break;
          case 206:
            v24 = @"HIKING_ENGAGEMENT";
            break;
          case 207:
            v24 = @"HIKING_PLACECARD";
            break;
          case 208:
            v24 = @"NO_SEARCH_RESULTS";
            break;
          case 209:
            v24 = @"PUNCH_IN_SHOWCASE";
            break;
          case 210:
            v24 = @"SHARED_LOCATION_ENGAGEMENT";
            break;
          case 211:
            v24 = @"SHARE_SHOWCASE";
            break;
          case 212:
            v24 = @"WATCH_MAP_VIEW";
            break;
          case 213:
            v24 = @"WATCH_PLACECARD";
            break;
          case 214:
            v24 = @"WATCH_SEARCH";
            break;
          case 215:
            v24 = @"CURATED_HIKE_SAVED";
            break;
          case 216:
            v24 = @"CUSTOM_HIKE_SAVED";
            break;
          case 217:
            v24 = @"CUSTOM_HIKE_CREATION_TRAY_SHOWN";
            break;
          case 218:
            v24 = @"DIRECTIONS_REQUESTED_CURATED_HIKE";
            break;
          case 219:
            v24 = @"DIRECTIONS_REQUESTED_CUSTOM_HIKE";
            break;
          case 220:
            v24 = @"NAV_STARTED_CURATED_HIKE";
            break;
          case 221:
            v24 = @"NAV_STARTED_CUSTOM_HIKE";
            break;
          case 222:
            v24 = @"ROUTING_TRAY_CURATED_HIKE_SHOWN";
            break;
          case 223:
            v24 = @"ROUTING_TRAY_CUSTOM_HIKE_SHOWN";
            break;
          case 224:
            v24 = @"SEARCH_PHOTO_INTERACTION";
            break;
          case 225:
            v24 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 226:
            v24 = @"LIBRARY_INTERACTION";
            break;
          case 227:
            v24 = @"SEARCH_FILTER_INTERACTION";
            break;
          case 228:
            v24 = @"AUTOCOMPLETE_RESULTS_SHOWN_OFFLINE";
            break;
          case 229:
            v24 = @"CARPLAY_CONNECTED_OFFLINE";
            break;
          case 230:
            v24 = @"CATEGORY_SEARCH_MARKET_ONLY_OFFLINE";
            break;
          case 231:
            v24 = @"DIRECTIONS_OFFLINE";
            break;
          case 232:
            v24 = @"ENTER_MAPS_DEVICE_OFFLINE";
            break;
          case 233:
            v24 = @"NO_SEARCH_RESULTS_OFFLINE";
            break;
          case 234:
            v24 = @"SEARCH_NEARBY_CATEGORY_TAPPED_OFFLINE";
            break;
          case 235:
            v24 = @"SEARCH_RESULTS_SHOWN_MAPS_OFFLINE";
            break;
          case 236:
            v24 = @"SEARCH_RESULT_TAPPED_MAPS_OFFLINE";
            break;
          case 237:
            v24 = @"TAP_DOWNLOAD_MAPS_OFFLINE";
            break;
          case 238:
            v24 = @"FIRST_PARTY_MAP_VIEW";
            break;
          case 239:
            v24 = @"SECOND_PARTY_MAP_VIEW";
            break;
          case 240:
            v24 = @"THIRD_PARTY_MAP_VIEW";
            break;
          case 241:
            v24 = @"DAEMON_PARTY_MAP_VIEW";
            break;
          case 242:
            v24 = @"MAPS_APP_DWELL_TIME_3_SEC";
            break;
          case 243:
            v24 = @"MAPS_APP_DWELL_TIME_30_SEC";
            break;
          case 244:
            v24 = @"WATCH_GET_DIRECTIONS";
            break;
          case 245:
            v24 = @"MAP_EXPLORED_HZ";
            break;
          case 246:
            v24 = @"MAP_EXPLORED_LZ";
            break;
          case 247:
            v24 = @"PUNCH_IN_WIDGET";
            break;
          case 248:
            v24 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";
            break;
          case 249:
            v24 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";
            break;
          case 250:
            v24 = @"NEARBY_SUGGESTION_SHARE";
            break;
          case 251:
            v24 = @"NEARBY_SUGGESTION_WRONG_LOCATION";
            break;
          case 252:
            v24 = @"VISITED_PLACES_INTERACTION";
            break;
          case 253:
            v24 = @"VISITED_PLACES_REVEAL";
            break;
          case 254:
            v24 = @"VISITED_PLACES_SHARE";
            break;
          case 255:
            v24 = @"VISITED_PLACES_WRONG_LOCATION";
            break;
          case 256:
            v24 = @"SEARCH_BROWSE_CATEGORY_DEFAULT";
            break;
          case 257:
            v24 = @"SEARCH_BROWSE_CATEGORY_SAR";
            break;
          case 258:
            v24 = @"SEARCH_FROM_AC_ROUTE_PLANNING";
            break;
          case 259:
            v24 = @"SEARCH_FROM_AC_SAR";
            break;
          case 260:
            v24 = @"SEARCH_FROM_CARPLAY";
            break;
          case 261:
            v24 = @"SEARCH_NORMAL_DEFAULT";
            break;
          case 262:
            v24 = @"SEARCH_NORMAL_ROUTE_PLANNING";
            break;
          case 263:
            v24 = @"SEARCH_NORMAL_SAR";
            break;
          case 264:
            v24 = @"DIRECTIONS_REQUESTED_DODGEBALL_OUTSIDE_OF_MAPS";
            break;
          case 265:
            v24 = @"DIRECTIONS_REQUESTED_FAMILIAR_ROUTE";
            break;
          case 266:
            v24 = @"LOC_INTEL_DOOM_NOTIFICATION_DISPLAYED";
            break;
          case 267:
            v24 = @"LOC_INTEL_DOOM_NOTIFICATION_TAPPED";
            break;
          case 268:
            v24 = @"NAV_STARTED_FAMILIAR_ROUTE";
            break;
          case 269:
            v24 = @"SHARE_SUBMIT";
            break;
          case 270:
            v24 = @"ROUTE_PLANNING_CYCLING";
            break;
          case 271:
            v24 = @"ROUTE_PLANNING_CARPLAY";
            break;
          case 272:
            v24 = @"ROUTE_PLANNING_DRIVING";
            break;
          case 273:
            v24 = @"ROUTE_PLANNING_TRANSIT";
            break;
          case 274:
            v24 = @"ROUTE_PLANNING_WALKING";
            break;
          default:
            goto LABEL_288;
        }
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "storing Daily Usage action '%@'", &buf, 0xCu);
    }

    v29 = v18;
    v25 = v17;

    v26 = +[GEOReferenceTimeManager sharedManager];
    bestReferenceDate = [v26 bestReferenceDate];

    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = @"com.unknown._geoapUnspecified";
    }

    v28 = [[GEOAPDailyCountsQueueElem alloc] initWithType:v10 usageString:v31 usageBool:v19 appId:v21 createTime:bestReferenceDate];
    [v16 _storeQueueElem:v28 completionQueue:v22 completionBlock:v30];

    if (v16[57] == 1)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v35 = sub_100020DF4;
      v36 = &unk_10003D630;
      v37 = v16;
      v41 = v10;
      v38 = v31;
      v39 = v19;
      v40 = v21;
      geo_isolate_sync();
    }

    v17 = v25;
    v18 = v29;
  }
}

- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completion:(id)completion
{
  completionCopy = completion;
  msgCopy = msg;
  v9 = sub_100000FC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[GEOAPServiceLocal reportLogMsg:uploadBatchId:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", &v12, 0xCu);
  }

  v10 = sub_100001018();
  v11 = dispatch_get_global_queue(21, 0);
  sub_10001A428(v10, msgCopy, id, v11, completionCopy);
}

@end