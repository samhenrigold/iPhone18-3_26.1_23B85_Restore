@interface GEOAPSequenceWaitState
- (GEOAPSequenceWaitState)initWithName:(id)name waitTime:(double)time;
- (unint64_t)processUserAction:(int)action target:(int)target atTime:(double)time;
@end

@implementation GEOAPSequenceWaitState

- (unint64_t)processUserAction:(int)action target:(int)target atTime:(double)time
{
  v6 = *&target;
  v7 = *&action;
  v39 = *MEMORY[0x1E69E9840];
  v9 = GEOGetGEOAPSequenceStateAnalyticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    name = self->super._name;
    if (v7 <= 3000)
    {
      if (v7 > 1500)
      {
        if (v7 <= 1503)
        {
          if (v7 == 1501)
          {
            v12 = @"TAP_DIRECTIONS";
          }

          else if (v7 == 1502)
          {
            v12 = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            v12 = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(v7)
          {
            case 2001:
              v12 = @"TAP_SEARCH_FIELD";
              goto LABEL_1426;
            case 2002:
              v12 = @"CLEAR_SEARCH";
              goto LABEL_1426;
            case 2003:
              v12 = @"CANCEL_SEARCH";
              goto LABEL_1426;
            case 2004:
              v12 = @"TAP_BROWSE_TOP_CATEGORY";
              goto LABEL_1426;
            case 2005:
              v12 = @"TAP_BROWSE_SUB_CATEGORY";
              goto LABEL_1426;
            case 2006:
              v12 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";
              goto LABEL_1426;
            case 2007:
              v12 = @"TAP_LIST_ITEM";
              goto LABEL_1426;
            case 2008:
              v12 = @"SHARE_LIST_ITEM";
              goto LABEL_1426;
            case 2009:
              v12 = @"DELETE_LIST_ITEM";
              goto LABEL_1426;
            case 2010:
              v12 = @"EDIT_LIST_ITEM";
              goto LABEL_1426;
            case 2011:
              v12 = @"REFRESH_SEARCH";
              goto LABEL_1426;
            case 2012:
              v12 = @"REVEAL_LIST_ITEM_ACTIONS";
              goto LABEL_1426;
            case 2013:
              v12 = @"HIDE_LIST_ITEM_ACTIONS";
              goto LABEL_1426;
            case 2014:
              v12 = @"TAP_SEARCH_BUTTON";
              goto LABEL_1426;
            case 2015:
              v12 = @"SHOW_SEARCH_RESULTS";
              goto LABEL_1426;
            case 2016:
              v12 = @"SHOW_REFRESH_SEARCH";
              goto LABEL_1426;
            case 2017:
              v12 = @"PASTE_TEXT";
              goto LABEL_1426;
            case 2018:
              v12 = @"TAP_LIST_SUB_ITEM";
              goto LABEL_1426;
            case 2019:
              v12 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1426;
            case 2020:
              v12 = @"TAP_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1426;
            case 2021:
              v12 = @"CLOSE_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1426;
            case 2022:
              v12 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1426;
            case 2023:
              v12 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1426;
            case 2024:
              v12 = @"RETAINED_QUERY";
              goto LABEL_1426;
            case 2025:
              v12 = @"TAP_RECENT_AC_SUGGESTION";
              goto LABEL_1426;
            case 2026:
              v12 = @"CLEAR_RECENT_AC_SUGGESTION";
              goto LABEL_1426;
            case 2027:
              v12 = @"DELETE_RECENT_AC_SUGGESTION";
              goto LABEL_1426;
            case 2028:
            case 2029:
              goto LABEL_116;
            case 2030:
              v12 = @"TAP_BROWSE_NEARBY_CATEGORY";
              goto LABEL_1426;
            case 2031:
              v12 = @"TAP_SUBACTION";
              goto LABEL_1426;
            case 2032:
              v12 = @"TAP_QUERY_BUILDING_ARROW";
              goto LABEL_1426;
            case 2033:
              v12 = @"CLICK_ON_EDIT_SEARCH";
              goto LABEL_1426;
            case 2034:
              v12 = @"REMOVE_CLIENT_AC_SUGGESTION";
              goto LABEL_1426;
            case 2035:
              v12 = @"SHARE_CLIENT_AC_SUGGESTION";
              goto LABEL_1426;
            case 2036:
              v12 = @"TAP_ON_MORE_RESULTS";
              goto LABEL_1426;
            case 2037:
              v12 = @"SHARE_ITEM";
              goto LABEL_1426;
            case 2038:
              v12 = @"HIDE_ITEM";
              goto LABEL_1426;
            case 2039:
              v12 = @"TAP_SUGGESTED_ITEM";
              goto LABEL_1426;
            case 2040:
              v12 = @"SHARE_SUGGESTED_ITEM";
              goto LABEL_1426;
            case 2041:
              v12 = @"HIDE_SUGGESTED_ITEM";
              goto LABEL_1426;
            case 2042:
              v12 = @"ADD_HOME_FAVORITE";
              goto LABEL_1426;
            case 2043:
              v12 = @"ADD_WORK_FAVORITE";
              goto LABEL_1426;
            case 2044:
              v12 = @"ADD_FAVORITE";
              goto LABEL_1426;
            case 2045:
              v12 = @"VIEW_FAVORITES_LIST";
              goto LABEL_1426;
            case 2046:
              v12 = @"TAP_HOME_FAVORITE";
              goto LABEL_1426;
            case 2047:
              v12 = @"TAP_WORK_FAVORITE";
              goto LABEL_1426;
            case 2048:
              v12 = @"TAP_CAR_FAVORITE";
              goto LABEL_1426;
            case 2049:
              v12 = @"TAP_FAVORITE_ITEM";
              goto LABEL_1426;
            case 2050:
              v12 = @"CREATE_HOME_FAVORITE";
              goto LABEL_1426;
            case 2051:
              v12 = @"CREATE_WORK_FAVORITE";
              goto LABEL_1426;
            case 2052:
              v12 = @"CREATE_FAVORITE";
              goto LABEL_1426;
            case 2053:
              v12 = @"SUBMIT_FAVORITE_EDIT";
              goto LABEL_1426;
            case 2054:
              v12 = @"ADD_RECOMMENDED_FAVORITE";
              goto LABEL_1426;
            case 2055:
              v12 = @"EDIT_FAVORITE";
              goto LABEL_1426;
            case 2056:
              v12 = @"REMOVE_FAVORITE";
              goto LABEL_1426;
            case 2057:
              v12 = @"SHARE_FAVORITE";
              goto LABEL_1426;
            case 2058:
              v12 = @"EDIT_FAVORITES";
              goto LABEL_1426;
            case 2059:
              v12 = @"ADD_FAVORITE_PLACE";
              goto LABEL_1426;
            case 2060:
              v12 = @"REMOVE_FAVORITE_PLACE";
              goto LABEL_1426;
            case 2061:
              v12 = @"CHANGE_HOME_ADDRESS";
              goto LABEL_1426;
            case 2062:
              v12 = @"CHANGE_WORK_ADDRESS";
              goto LABEL_1426;
            case 2063:
              v12 = @"REFINE_LOCATION";
              goto LABEL_1426;
            case 2064:
              v12 = @"TAP_RECENTLY_VIEWED_ITEM";
              goto LABEL_1426;
            case 2065:
              v12 = @"SHOW_COLLECTION_LIST";
              goto LABEL_1426;
            case 2066:
              v12 = @"SHOW_FAVORITES_COLLECTION";
              goto LABEL_1426;
            case 2067:
              v12 = @"SHOW_COLLECTION";
              goto LABEL_1426;
            case 2068:
              v12 = @"TAP_COLLECTION_ITEM";
              goto LABEL_1426;
            case 2069:
              v12 = @"SHARE_COLLECTION_ITEM";
              goto LABEL_1426;
            case 2070:
              v12 = @"REMOVE_COLLECTION_ITEM";
              goto LABEL_1426;
            case 2071:
              v12 = @"SAVE_SHARED_COLLECTION";
              goto LABEL_1426;
            case 2072:
              v12 = @"CREATE_NEW_COLLECTION";
              goto LABEL_1426;
            case 2073:
              v12 = @"SAVE_TO_COLLECTION";
              goto LABEL_1426;
            case 2074:
              v12 = @"EDIT_PHOTO";
              goto LABEL_1426;
            case 2075:
              v12 = @"SORT_BY_NAME";
              goto LABEL_1426;
            case 2076:
              v12 = @"SORT_BY_DISTANCE";
              goto LABEL_1426;
            case 2077:
              v12 = @"SORT_BY_RECENT";
              goto LABEL_1426;
            case 2078:
              v12 = @"AUTO_SHARE_ETA";
              goto LABEL_1426;
            case 2079:
              v12 = @"CANCEL_AUTO_SHARE_ETA";
              goto LABEL_1426;
            case 2080:
              v12 = @"MAP_SEARCH";
              goto LABEL_1426;
            case 2081:
              v12 = @"DELETE_COLLECTION";
              goto LABEL_1426;
            case 2082:
              v12 = @"SHARE_COLLECTION";
              goto LABEL_1426;
            case 2083:
              v12 = @"SHOW_TRANSIT_LINES_COLLECTION";
              goto LABEL_1426;
            case 2084:
              v12 = @"SHOW_MY_PLACES";
              goto LABEL_1426;
            case 2085:
              v12 = @"SHOW_ALL_PLACES";
              goto LABEL_1426;
            case 2086:
              v12 = @"TAP_RECENT_QUERY";
              goto LABEL_1426;
            case 2087:
              v12 = @"TAP_QUERY_SUGGESTION";
              goto LABEL_1426;
            case 2088:
              v12 = @"DELETE_CURATED_COLLECTION";
              goto LABEL_1426;
            case 2089:
              v12 = @"FOLLOW";
              goto LABEL_1426;
            case 2090:
              v12 = @"PUNCH_IN";
              goto LABEL_1426;
            case 2091:
              v12 = @"SAVE_CURATED_COLLECTION";
              goto LABEL_1426;
            case 2092:
              v12 = @"SCROLL_LEFT_COLLECTIONS";
              goto LABEL_1426;
            case 2093:
              v12 = @"SCROLL_RIGHT_COLLECTIONS";
              goto LABEL_1426;
            case 2094:
              v12 = @"SEE_ALL_CURATED_COLLECTION";
              goto LABEL_1426;
            case 2095:
              v12 = @"SEE_ALL_PUBLISHERS";
              goto LABEL_1426;
            case 2096:
              v12 = @"SHARE_CURATED_COLLECTION";
              goto LABEL_1426;
            case 2097:
              v12 = @"SHARE_PUBLISHER";
              goto LABEL_1426;
            case 2098:
              v12 = @"SHOW_MORE_COLLECTION";
              goto LABEL_1426;
            case 2099:
              v12 = @"TAP_CURATED_COLLECTION";
              goto LABEL_1426;
            case 2100:
              v12 = @"TAP_FEATURED_COLLECTIONS";
              goto LABEL_1426;
            case 2101:
              v12 = @"TAP_LOCATION";
              goto LABEL_1426;
            case 2102:
              v12 = @"TAP_PUBLISHER";
              goto LABEL_1426;
            case 2103:
              v12 = @"TAP_PUBLISHER_APP";
              goto LABEL_1426;
            case 2104:
              v12 = @"TAP_PUBLISHER_COLLECTIONS";
              goto LABEL_1426;
            case 2105:
              v12 = @"UNFOLLOW";
              goto LABEL_1426;
            case 2106:
              v12 = @"CHANGE_SCHOOL_ADDRESS";
              goto LABEL_1426;
            case 2107:
              v12 = @"ADD_VEHICLE";
              goto LABEL_1426;
            case 2108:
              v12 = @"DISPLAY_VIRTUAL_GARAGE";
              goto LABEL_1426;
            case 2109:
              v12 = @"ENTER_VIRTUAL_GARAGE";
              goto LABEL_1426;
            case 2110:
              v12 = @"PUNCH_OUT_MANUFACTURER_APP";
              goto LABEL_1426;
            case 2111:
              v12 = @"REMOVE_LICENSE_PLATE";
              goto LABEL_1426;
            case 2112:
              v12 = @"REMOVE_VEHICLE";
              goto LABEL_1426;
            case 2113:
              v12 = @"SELECT_VEHICLE";
              goto LABEL_1426;
            case 2114:
              v12 = @"SUBMIT_LICENSE_PLATE";
              goto LABEL_1426;
            case 2115:
              v12 = @"TAP_ADD_LICENSE_PLATE";
              goto LABEL_1426;
            case 2116:
              v12 = @"TAP_ADD_NEW_CAR";
              goto LABEL_1426;
            case 2117:
              v12 = @"TAP_BANNER";
              goto LABEL_1426;
            case 2118:
              v12 = @"TAP_CONNECT";
              goto LABEL_1426;
            case 2119:
              v12 = @"TAP_CONTINUE";
              goto LABEL_1426;
            case 2120:
              v12 = @"TAP_EDIT";
              goto LABEL_1426;
            case 2121:
              v12 = @"TAP_NAME";
              goto LABEL_1426;
            case 2122:
              v12 = @"TAP_NOT_NOW";
              goto LABEL_1426;
            case 2123:
              v12 = @"TAP_OTHER_VEHICLE";
              goto LABEL_1426;
            case 2124:
              v12 = @"TAP_REMOVE_LICENSE_PLATE";
              goto LABEL_1426;
            case 2125:
              v12 = @"TAP_UPDATE_PLATE_NUMBER";
              goto LABEL_1426;
            case 2126:
              v12 = @"TAP_VEHICLE";
              goto LABEL_1426;
            case 2127:
              v12 = @"TAP_VEHICLE_NAME";
              goto LABEL_1426;
            case 2128:
              v12 = @"UPDATE_NAME";
              goto LABEL_1426;
            case 2129:
              v12 = @"DONE_TAKING_PHOTO";
              goto LABEL_1426;
            case 2130:
              v12 = @"ENABLE_SHOW_PHOTO_NAME";
              goto LABEL_1426;
            case 2131:
              v12 = @"SUBMIT_PHOTO";
              goto LABEL_1426;
            case 2132:
              v12 = @"USE_PHOTO";
              goto LABEL_1426;
            case 2133:
              v12 = @"ADD_RECOMMENDATION_TO_MAPS";
              goto LABEL_1426;
            case 2134:
              v12 = @"CANCEL_PHOTO_SUBMISSION";
              goto LABEL_1426;
            case 2135:
              v12 = @"CLOSE_RECOMMENDATION_CARD";
              goto LABEL_1426;
            case 2136:
              v12 = @"EDIT_RATING";
              goto LABEL_1426;
            case 2137:
              v12 = @"PROMPTED_TO_ADD_PHOTO";
              goto LABEL_1426;
            case 2138:
              v12 = @"PROMPTED_TO_ADD_RATING";
              goto LABEL_1426;
            case 2139:
              v12 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";
              goto LABEL_1426;
            case 2140:
              v12 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";
              goto LABEL_1426;
            case 2141:
              v12 = @"RETAKE_PHOTO";
              goto LABEL_1426;
            case 2142:
              v12 = @"REVEAL_RECOMMENDATION_CARD";
              goto LABEL_1426;
            case 2143:
              v12 = @"SUBMIT_NEGATIVE_RATING";
              goto LABEL_1426;
            case 2144:
              v12 = @"SUBMIT_POSITIVE_RATING";
              goto LABEL_1426;
            case 2145:
              v12 = @"TAP_CHOOSING_PHOTO";
              goto LABEL_1426;
            case 2146:
              v12 = @"TAP_TAKE_NEW_PHOTO";
              goto LABEL_1426;
            case 2147:
              v12 = @"TAP_TO_ADD_PHOTO";
              goto LABEL_1426;
            case 2148:
              v12 = @"CANCEL_INCIDENT_REPORT";
              goto LABEL_1426;
            case 2149:
              v12 = @"INCIDENT_REPORT_SUBMITTED";
              goto LABEL_1426;
            case 2150:
              v12 = @"REPORTED_INCIDENT_NOT_RECEIVED";
              goto LABEL_1426;
            case 2151:
              v12 = @"REPORTED_INCIDENT_RECEIVED";
              goto LABEL_1426;
            case 2152:
              v12 = @"REPORT_INCIDENT";
              goto LABEL_1426;
            case 2153:
              v12 = @"SELECT_INCIDENT_TYPE";
              goto LABEL_1426;
            case 2154:
              v12 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";
              goto LABEL_1426;
            case 2155:
              v12 = @"TAP_TO_START_REPORT_INCIDENT";
              goto LABEL_1426;
            case 2156:
              v12 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";
              goto LABEL_1426;
            case 2157:
              v12 = @"ATTEMPT_VLF_CORRECTION";
              goto LABEL_1426;
            case 2158:
              v12 = @"DISMISS_VLF_PROMPT";
              goto LABEL_1426;
            case 2159:
              v12 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";
              goto LABEL_1426;
            case 2160:
              v12 = @"VLF_CORRECTION_FAILED";
              goto LABEL_1426;
            case 2161:
              v12 = @"VLF_CORRECTION_SUCCESSFUL";
              goto LABEL_1426;
            case 2162:
              v12 = @"ENABLE_WIDGET_SUGGESTIONS";
              goto LABEL_1426;
            case 2163:
              v12 = @"DISPLAY_CZ_ADVISORY";
              goto LABEL_1426;
            case 2164:
              v12 = @"PUNCH_OUT_URL_PAY";
              goto LABEL_1426;
            case 2165:
              v12 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";
              goto LABEL_1426;
            case 2166:
              v12 = @"DELETE_ITEM";
              goto LABEL_1426;
            case 2167:
              v12 = @"CANCEL_REMOVE";
              goto LABEL_1426;
            case 2168:
              v12 = @"DELETE_SUGGESTION";
              goto LABEL_1426;
            case 2169:
              v12 = @"ADD_SCHOOL_FAVORITE";
              goto LABEL_1426;
            case 2170:
              v12 = @"GO_TO_WEBSITE";
              goto LABEL_1426;
            case 2171:
              v12 = @"TRY_AGAIN";
              goto LABEL_1426;
            case 2172:
              v12 = @"CHECK_AUTO_RECORD_WORKOUT";
              goto LABEL_1426;
            case 2173:
              v12 = @"CHECK_EBIKE";
              goto LABEL_1426;
            case 2174:
              v12 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";
              goto LABEL_1426;
            case 2175:
              v12 = @"DISPLAY_CYCLING_DEFAULT_OPTION";
              goto LABEL_1426;
            case 2176:
              v12 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";
              goto LABEL_1426;
            case 2177:
              v12 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";
              goto LABEL_1426;
            case 2178:
              v12 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";
              goto LABEL_1426;
            case 2179:
              v12 = @"TAP_AUTOMATIC_WORKOUT_OPTION";
              goto LABEL_1426;
            case 2180:
              v12 = @"TAP_CYCLING_DEFAULT_OPTION";
              goto LABEL_1426;
            case 2181:
              v12 = @"TAP_CYCLING_NO_BIKE_ADVISORY";
              goto LABEL_1426;
            case 2182:
              v12 = @"TAP_CYCLING_STAIRS_ADVISORY";
              goto LABEL_1426;
            case 2183:
              v12 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";
              goto LABEL_1426;
            case 2184:
              v12 = @"UNCHECK_AUTO_RECORD_WORKOUT";
              goto LABEL_1426;
            case 2185:
              v12 = @"UNCHECK_EBIKE";
              goto LABEL_1426;
            case 2186:
              v12 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";
              goto LABEL_1426;
            case 2187:
              v12 = @"DISPLAY_LPR_ADVISORY";
              goto LABEL_1426;
            case 2188:
              v12 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";
              goto LABEL_1426;
            case 2189:
              v12 = @"CREATE_WIDGET";
              goto LABEL_1426;
            case 2190:
              v12 = @"REVEAL_WIDGET_TRAY";
              goto LABEL_1426;
            case 2191:
              v12 = @"LPR_ERROR_CODE";
              goto LABEL_1426;
            case 2192:
              v12 = @"TAP_SEE_ALL_RECENTLY_VIEWED";
              goto LABEL_1426;
            case 2193:
              v12 = @"TAP_CLEAR_RECENTLY_VIEWED";
              goto LABEL_1426;
            case 2194:
              v12 = @"LPR_HARD_STOP";
              goto LABEL_1426;
            case 2195:
              v12 = @"TAP_PUBLISHER_SUBACTION";
              goto LABEL_1426;
            case 2196:
              v12 = @"CARPLAY_DISPLAY_ACTIVATED";
              goto LABEL_1426;
            case 2197:
              v12 = @"CARPLAY_DISPLAY_DEACTIVATED";
              goto LABEL_1426;
            case 2198:
              v12 = @"TAP_FEATURED_COLLECTION";
              goto LABEL_1426;
            case 2199:
              v12 = @"SCROLL_FEATURED_COLLECTION_FORWARD";
              goto LABEL_1426;
            case 2200:
              v12 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";
              goto LABEL_1426;
            default:
              if (v7 == 1504)
              {
                v12 = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (v7 != 1505)
                {
                  goto LABEL_116;
                }

                v12 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        v12 = @"UI_ACTION_UNKNOWN";
        switch(v7)
        {
          case 0:
            goto LABEL_1426;
          case 1:
            v12 = @"PULL_UP";
            break;
          case 2:
            v12 = @"PULL_DOWN";
            break;
          case 3:
            v12 = @"TAP";
            break;
          case 4:
            v12 = @"CLOSE";
            break;
          case 5:
            v12 = @"SWIPE_PREV";
            break;
          case 6:
            v12 = @"SWIPE_NEXT";
            break;
          case 7:
            v12 = @"SCROLL_UP";
            break;
          case 8:
            v12 = @"SCROLL_DOWN";
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
            goto LABEL_116;
          case 10:
            v12 = @"SHOW_MORE";
            break;
          case 11:
            v12 = @"SHOW_LESS";
            break;
          case 12:
            v12 = @"SWIPE_LEFT";
            break;
          case 13:
            v12 = @"SWIPE_RIGHT";
            break;
          case 14:
            v12 = @"MINIMIZE";
            break;
          case 15:
            v12 = @"TAP_PREV";
            break;
          case 16:
            v12 = @"TAP_NEXT";
            break;
          case 17:
            v12 = @"SUBMIT";
            break;
          case 18:
            v12 = @"CANCEL";
            break;
          case 19:
            v12 = @"ENTER_MAPS";
            break;
          case 20:
            v12 = @"EXIT_MAPS";
            break;
          case 21:
            v12 = @"REVEAL";
            break;
          case 22:
            v12 = @"OPEN_NEW_TAB";
            break;
          case 25:
            v12 = @"BACK";
            break;
          case 26:
            v12 = @"ACTIVATE";
            break;
          case 27:
            v12 = @"DEACTIVATE";
            break;
          case 28:
            v12 = @"AGREE";
            break;
          case 29:
            v12 = @"DISAGREE";
            break;
          case 30:
            v12 = @"SKIP_ANSWER";
            break;
          case 31:
            v12 = @"EXPAND";
            break;
          case 32:
            v12 = @"COLLAPSE";
            break;
          case 33:
            v12 = @"ENTER";
            break;
          case 34:
            v12 = @"EXIT";
            break;
          case 35:
            v12 = @"SCROLL_UP_INDEX_BAR";
            break;
          case 36:
            v12 = @"SCROLL_DOWN_INDEX_BAR";
            break;
          case 37:
            v12 = @"TOGGLE_ON";
            break;
          case 38:
            v12 = @"TOGGLE_OFF";
            break;
          case 39:
            v12 = @"LONG_PRESS";
            break;
          case 40:
            v12 = @"CLICK";
            break;
          case 41:
            v12 = @"TAP_DONE";
            break;
          case 42:
            v12 = @"TAP_CLOSE";
            break;
          case 43:
            v12 = @"SCROLL_LEFT";
            break;
          case 44:
            v12 = @"SCROLL_RIGHT";
            break;
          case 45:
            v12 = @"DISPLAY";
            break;
          case 46:
            v12 = @"OPEN_IN_APP";
            break;
          case 47:
            v12 = @"CONCEAL";
            break;
          case 48:
            v12 = @"TAP_DELETE";
            break;
          case 49:
            v12 = @"TAP_FILTER";
            break;
          case 50:
            v12 = @"TAP_SECONDARY_BUTTON";
            break;
          case 51:
            v12 = @"TAP_WIDGET_FOOD";
            break;
          case 52:
            v12 = @"TAP_WIDGET_GAS";
            break;
          case 53:
            v12 = @"TAP_WIDGET_LOADING";
            break;
          case 54:
            v12 = @"TAP_WIDGET_SEARCH";
            break;
          case 55:
            v12 = @"TAP_WIDGET_STORES";
            break;
          case 56:
            v12 = @"DISPLAY_ALLOW_ONCE_PROMPT";
            break;
          case 57:
            v12 = @"SHARE_CURRENT_LOCATION";
            break;
          case 58:
            v12 = @"SHARE_PHOTO";
            break;
          case 59:
            v12 = @"TAP_KEEP_OFF";
            break;
          case 60:
            v12 = @"TAP_PHOTO_CATEGORY";
            break;
          case 61:
            v12 = @"TAP_PRECISE_LOCATION_OFF_BANNER";
            break;
          case 62:
            v12 = @"TAP_TURN_ON";
            break;
          case 63:
            v12 = @"DISPLAY_CYCLING_ANNOTATION";
            break;
          case 64:
            v12 = @"DISPLAY_DRIVING_DEFAULT_OPTION";
            break;
          case 65:
            v12 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";
            break;
          case 66:
            v12 = @"DISPLAY_WALKING_DEFAULT_OPTION";
            break;
          case 67:
            v12 = @"TAP_CYCLING_ANNOTATION";
            break;
          case 68:
            v12 = @"TAP_DRIVING_DEFAULT_OPTION";
            break;
          case 69:
            v12 = @"TAP_TRANSIT_DEFAULT_OPTION";
            break;
          case 70:
            v12 = @"TAP_WALKING_DEFAULT_OPTION";
            break;
          case 71:
            v12 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";
            break;
          case 72:
            v12 = @"TAP_RIDESHARE_DEFAULT_OPTION";
            break;
          case 73:
            v12 = @"TAP_PERSONAL_COLLECTION";
            break;
          case 74:
            v12 = @"RESUME_ROUTE";
            break;
          case 75:
            v12 = @"DISPLAY_OUT_OF_RANGE_ALERT";
            break;
          case 76:
            v12 = @"TAP_ALLOW_ONCE";
            break;
          case 77:
            v12 = @"TAP_DO_NOT_ALLOW";
            break;
          case 78:
            v12 = @"ADD_RECCOMENDED_FAVORITE";
            break;
          case 79:
            v12 = @"ADD_RECOMMENDED_HOME_FAVORITE";
            break;
          case 80:
            v12 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";
            break;
          case 81:
            v12 = @"ADD_RECOMMENDED_WORK_FAVORITE";
            break;
          case 82:
            v12 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";
            break;
          case 83:
            v12 = @"CREATE_SCHOOL_FAVORITE";
            break;
          case 84:
            v12 = @"TAP_SCHOOL_FAVORITE";
            break;
          case 85:
            v12 = @"SELECT_ROUTING_TYPE_CYCLING";
            break;
          case 86:
            v12 = @"REPORT_PHOTO";
            break;
          case 87:
            v12 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";
            break;
          case 88:
            v12 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";
            break;
          case 89:
            v12 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";
            break;
          case 90:
            v12 = @"CREATE_RECOMMENDED_FAVORITE";
            break;
          case 91:
            v12 = @"CREATE_RECOMMENDED_HOME_FAVORITE";
            break;
          case 92:
            v12 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";
            break;
          case 93:
            v12 = @"CREATE_RECOMMENDED_WORK_FAVORITE";
            break;
          case 94:
            v12 = @"TAP_SMALL_WIDGET_ITEM";
            break;
          case 95:
            v12 = @"TAP_MEDIUM_WIDGET_ITEM";
            break;
          case 96:
            v12 = @"TAP_LARGE_WIDGET_ITEM";
            break;
          case 97:
            v12 = @"DISPLAY_ARP_TIPKIT";
            break;
          case 98:
            v12 = @"NEXT";
            break;
          case 99:
            v12 = @"TAP_RATE_AND_ADD_PHOTOS";
            break;
          case 100:
            v12 = @"TAP_TO_ADD_POSITIVE_RATING";
            break;
          case 101:
            v12 = @"TAP_TO_ADD_NEGATIVE_RATING";
            break;
          case 102:
            v12 = @"TAP_ACTIVE_SHARING_NOTIFICATION";
            break;
          case 103:
            v12 = @"INVOKE_SIRI_PROMPT";
            break;
          case 104:
            v12 = @"ETA_SHARED_SUCCESSFULLY";
            break;
          case 105:
            v12 = @"ENDED_ETA_SHARE_SUCCESSFULLY";
            break;
          case 106:
            v12 = @"CLEAR_INCIDENT";
            break;
          case 107:
            v12 = @"CONFIRM_INCIDENT";
            break;
          case 108:
            v12 = @"DISMISS_INCIDENT";
            break;
          case 109:
            v12 = @"INCIDENT_ALERT_TIMEOUT";
            break;
          case 110:
            v12 = @"INCIDENT_ALERT_TRAY_SHOWN";
            break;
          case 111:
            v12 = @"INCIDENT_CARD_SHOWN";
            break;
          case 112:
            v12 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";
            break;
          case 113:
            v12 = @"INCIDENT_REPORT_TRAY_SHOWN";
            break;
          case 114:
            v12 = @"NAV_TRAY_DISCOVERY_SHOWN";
            break;
          case 115:
            v12 = @"TAP_TO_REPORT_INCIDENT";
            break;
          case 116:
            v12 = @"TAP_SHORTCUT";
            break;
          case 117:
            v12 = @"BLOCK_CONTACT";
            break;
          case 118:
            v12 = @"TAP_TO_ADD_RATING";
            break;
          case 119:
            v12 = @"AR_WALKING_LOCALIZATION_FAILED";
            break;
          case 120:
            v12 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";
            break;
          case 121:
            v12 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";
            break;
          case 122:
            v12 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";
            break;
          case 123:
            v12 = @"ATTEMPT_AR_WALKING_LOCALIZATION";
            break;
          case 124:
            v12 = @"RAISE_TO_ENTER_AR_WALKING";
            break;
          case 125:
            v12 = @"TAP_DISMISS";
            break;
          case 126:
            v12 = @"TAP_ENTER_AR_WALKING";
            break;
          case 127:
            v12 = @"TAP_OK";
            break;
          case 128:
            v12 = @"TAP_TRY_AGAIN";
            break;
          case 129:
            v12 = @"TAP_TURN_ON_IN_SETTINGS";
            break;
          case 130:
            v12 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";
            break;
          case 131:
            v12 = @"VLF_CORRECTION_USER_ABANDON";
            break;
          case 132:
            v12 = @"AREA_EVENTS_ALERT";
            break;
          case 133:
            v12 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";
            break;
          case 134:
            v12 = @"ACCEPT_EVENT_REROUTE";
            break;
          case 135:
            v12 = @"DISPLAY_AREA_EVENTS_ADVISORY";
            break;
          case 136:
            v12 = @"DISMISS_EVENT_REROUTE";
            break;
          case 137:
            v12 = @"PUNCH_OUT_EVENTS_LINK";
            break;
          case 138:
            v12 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";
            break;
          case 139:
            v12 = @"ADJUST_GUIDANCE_SETTINGS";
            break;
          case 140:
            v12 = @"HIDE_DETAILS";
            break;
          case 141:
            v12 = @"SELECT_VOICE_GUIDANCE_ON";
            break;
          case 142:
            v12 = @"SELECT_VOICE_GUIDANCE_OFF";
            break;
          case 143:
            v12 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";
            break;
          case 144:
            v12 = @"TAP_TEXT_LABEL";
            break;
          case 145:
            v12 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";
            break;
          case 146:
            v12 = @"TAP_EXIT";
            break;
          case 147:
            v12 = @"TAP_CITY_MENU";
            break;
          case 148:
            v12 = @"CHECK_AVOID_TOLLS";
            break;
          case 149:
            v12 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";
            break;
          case 150:
            v12 = @"TAP_ICLOUD";
            break;
          case 151:
            v12 = @"CHECK_AVOID_HIGHWAYS";
            break;
          case 152:
            v12 = @"TAP_FAVORITES";
            break;
          case 153:
            v12 = @"SELECT_DISTANCE_IN_KM";
            break;
          case 154:
            v12 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";
            break;
          case 155:
            v12 = @"OPEN_FULL_CARD_FILTER";
            break;
          case 156:
            v12 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";
            break;
          case 157:
            v12 = @"OPEN_SINGLE_CARD_FILTER";
            break;
          case 158:
            v12 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";
            break;
          case 159:
            v12 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";
            break;
          case 160:
            v12 = @"SESSIONLESS_REVEAL";
            break;
          case 161:
            v12 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";
            break;
          case 162:
            v12 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";
            break;
          case 163:
            v12 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";
            break;
          case 164:
            v12 = @"ENTER_RAP_REPORT_MENU";
            break;
          case 165:
            v12 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";
            break;
          case 166:
            v12 = @"TAP_MY_VEHICLES";
            break;
          case 167:
            v12 = @"SUBMIT_SINGLE_CARD_FILTER";
            break;
          case 168:
            v12 = @"SUBMIT_FULL_CARD_FILTER";
            break;
          case 169:
            v12 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";
            break;
          case 170:
            v12 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";
            break;
          case 171:
            v12 = @"TAP_EXPLORE_CURATED_COLELCTIONS";
            break;
          case 172:
            v12 = @"TAP_ACCOUNT";
            break;
          case 173:
            v12 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";
            break;
          case 174:
            v12 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";
            break;
          case 175:
            v12 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";
            break;
          case 176:
            v12 = @"RESULT_REFINEMENT_TOGGLE_OFF";
            break;
          case 177:
            v12 = @"TAP_CITY_CURATED_COLLECTIONS";
            break;
          case 178:
            v12 = @"TAP_REPORTS";
            break;
          case 179:
            v12 = @"TAP_RATINGS";
            break;
          case 180:
            v12 = @"TAP_EXPLORE_CURATED_COLLECTIONS";
            break;
          case 181:
            v12 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";
            break;
          case 182:
            v12 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";
            break;
          case 183:
            v12 = @"SELECT_DISTANCE_IN_MILES";
            break;
          case 184:
            v12 = @"TAP_PRIVACY_STATEMENT";
            break;
          case 185:
            v12 = @"TAP_MAPS_SETTINGS";
            break;
          case 186:
            v12 = @"CANCEL_FULL_CARD_FILTER";
            break;
          case 187:
            v12 = @"TAP_LATEST_CURATED_COLLECTION";
            break;
          case 188:
            v12 = @"TAP_TEMPORAL_CURATED_COLLECTION";
            break;
          case 189:
            v12 = @"UNCHECK_AVOID_TOLLS";
            break;
          case 190:
            v12 = @"UNSELECT_SEARCH_REFINEMENT";
            break;
          case 191:
            v12 = @"TAP_RATING";
            break;
          case 192:
            v12 = @"TAP_ICLOUD_SIGN_IN";
            break;
          case 193:
            v12 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";
            break;
          case 194:
            v12 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";
            break;
          case 195:
            v12 = @"UNCHECK_AVOID_HIGHWAYS";
            break;
          case 196:
            v12 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";
            break;
          case 197:
            v12 = @"RESULT_REFINEMENT_TOGGLE_ON";
            break;
          case 198:
            v12 = @"TAP_CONTEXT_LINE_HYPERLINK";
            break;
          case 199:
            v12 = @"TAP_MY_GUIDES";
            break;
          case 200:
            v12 = @"SELECT_SEARCH_REFINEMENT";
            break;
          case 201:
            v12 = @"SESSIONLESS_TAP_ACCOUNT";
            break;
          case 202:
            v12 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";
            break;
          case 203:
            v12 = @"TAP_TRAVEL_PREFERENCES";
            break;
          case 204:
            v12 = @"SHOW_CURATED_COLLECTION_LIST";
            break;
          case 205:
            v12 = @"CANCEL_SINGLE_CARD_FILTER";
            break;
          case 206:
            v12 = @"DISPLAY_HFP_OPTION";
            break;
          case 207:
            v12 = @"SWITCH_OFF_HFP";
            break;
          case 208:
            v12 = @"SWITCH_ON_HFP";
            break;
          case 209:
            v12 = @"TAP_QUICK_ACTION_TRAY";
            break;
          case 210:
            v12 = @"SHOW_ALL_CITIES";
            break;
          case 211:
            v12 = @"TAP_ADD_NEARBY_TRANSIT";
            break;
          case 212:
            v12 = @"RESUME";
            break;
          case 213:
            v12 = @"DISPLAY_TIPKIT_PROMPT";
            break;
          case 214:
            v12 = @"TAP_NEARBY_TRANSIT_FAVORITE";
            break;
          case 215:
            v12 = @"TAP_DRIVING_MODE";
            break;
          case 216:
            v12 = @"SWITCH_ON_VOICE_GUIDANCE";
            break;
          case 217:
            v12 = @"DISMISS_TIPKIT_PROMPT";
            break;
          case 218:
            v12 = @"TAP_EXPAND_EXIT_DETAILS";
            break;
          case 219:
            v12 = @"TAP_NEARBY_TRANSIT_FILTER";
            break;
          case 220:
            v12 = @"TAP_MORE_DEPARTURES";
            break;
          case 221:
            v12 = @"RAP_INDIVIDUAL_PLACE";
            break;
          case 222:
            v12 = @"RAP_ADD_MAP";
            break;
          case 223:
            v12 = @"TAP_SUGGESTED_RAP";
            break;
          case 224:
            v12 = @"RAP_STREET_ISSUE";
            break;
          case 225:
            v12 = @"SWIPE_PIN_REVEAL";
            break;
          case 226:
            v12 = @"TAP_ADD_TIPKIT_FAVORITE";
            break;
          case 227:
            v12 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";
            break;
          case 228:
            v12 = @"RAP_BAD_TRIP";
            break;
          case 229:
            v12 = @"RAP_PLACE_ISSUE";
            break;
          case 230:
            v12 = @"TAP_OPEN_MAPS";
            break;
          case 231:
            v12 = @"TAP_NEARBY_TRANSIT_RESULT";
            break;
          case 232:
            v12 = @"RAP_GUIDE";
            break;
          case 233:
            v12 = @"SWITCH_OFF_VOICE_GUIDANCE";
            break;
          case 234:
            v12 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";
            break;
          case 235:
            v12 = @"SELECT_TRANSIT_STEP";
            break;
          case 236:
            v12 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";
            break;
          case 237:
            v12 = @"TAP_SEE_MORE";
            break;
          case 238:
            v12 = @"RAP_IN_REVIEW";
            break;
          case 239:
            v12 = @"TAP_OPEN_MENU";
            break;
          case 240:
            v12 = @"TAP_NEARBY_TRANSIT";
            break;
          case 241:
            v12 = @"TAP_PIN_LINE";
            break;
          case 242:
            v12 = @"SWITCH_OFF_TRIP_FEEDBACK";
            break;
          case 243:
            v12 = @"RAP_GOOD_TRIP";
            break;
          case 244:
            v12 = @"TAP_FILTERED_CURATED_COLLECTION";
            break;
          case 245:
            v12 = @"SHARE_MY_LOCATION";
            break;
          case 246:
            v12 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";
            break;
          case 247:
            v12 = @"DISPLAY_GENERIC_ADVISORY";
            break;
          case 248:
            v12 = @"ADVISORY_ALERT";
            break;
          case 249:
            v12 = @"PUNCH_OUT_LINK";
            break;
          case 250:
            v12 = @"TAP_GENERIC_ADVISORY";
            break;
          case 251:
            v12 = @"TAP_EXPLORE_MODE";
            break;
          case 252:
            v12 = @"TAP_UNPIN_LINE";
            break;
          case 253:
            v12 = @"MENU_UNPIN";
            break;
          case 254:
            v12 = @"MENU_PIN";
            break;
          case 255:
            v12 = @"SWIPE_PIN";
            break;
          case 256:
            v12 = @"SWIPE_UNPIN";
            break;
          case 257:
            v12 = @"TAP_MEDIA_APP";
            break;
          case 258:
            v12 = @"TAP_GUIDES_SUBACTION";
            break;
          case 259:
            v12 = @"TAP_MEDIA";
            break;
          case 260:
            v12 = @"PUNCH_OUT_MEDIA";
            break;
          case 261:
            v12 = @"SHOW_MEDIA_APP_MENU";
            break;
          case 262:
            v12 = @"SCROLL_RIGHT_RIBBON";
            break;
          case 263:
            v12 = @"SCROLL_LEFT_RIBBON";
            break;
          case 264:
            v12 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";
            break;
          case 265:
            v12 = @"TAP_SHOW_MORE_TEXT";
            break;
          case 266:
            v12 = @"SCROLL_LEFT_RATINGS";
            break;
          case 267:
            v12 = @"SCROLL_LEFT_TEMPLATE_PLACE";
            break;
          case 268:
            v12 = @"SCROLL_RIGHT_TEMPLATE_PLACE";
            break;
          case 269:
            v12 = @"SCROLL_RIGHT_RATINGS";
            break;
          case 270:
            v12 = @"TAP_ALLOW";
            break;
          case 271:
            v12 = @"TAP_GO_TO_SETTING";
            break;
          case 272:
            v12 = @"START_SUBMIT_REPORT";
            break;
          case 273:
            v12 = @"AUTHENTICATION_INFO_FAILURE";
            break;
          case 274:
            v12 = @"SUCCESSFULLY_SUBMIT_REPORT";
            break;
          case 275:
            v12 = @"FAILED_SUBMIT_REPORT";
            break;
          case 276:
            v12 = @"AUTHENTICATION_INFO_SUCCESS";
            break;
          case 277:
            v12 = @"EDIT_WAYPOINT";
            break;
          case 278:
            v12 = @"CLEAR_TEXT";
            break;
          case 279:
            v12 = @"REORDER_WAYPOINT";
            break;
          case 280:
            v12 = @"REMOVE_WAYPOINT";
            break;
          case 281:
            v12 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";
            break;
          case 282:
            v12 = @"TAP_SHOWCASE_MENU";
            break;
          case 283:
            v12 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";
            break;
          case 284:
            v12 = @"TAP_PHOTO_ALBUM";
            break;
          case 285:
            v12 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";
            break;
          case 286:
            v12 = @"RAP_INLINE_ADD";
            break;
          case 287:
            v12 = @"RAP_TAP_EDIT";
            break;
          case 288:
            v12 = @"CLAIM_BUSINESS";
            break;
          case 289:
            v12 = @"RAP_EDIT_OPTIONS";
            break;
          case 290:
            v12 = @"TAP_IN_REVIEW_RAP";
            break;
          case 291:
            v12 = @"ORB_MENU_ADD_STOP";
            break;
          case 292:
            v12 = @"NEXT_STOP";
            break;
          case 293:
            v12 = @"ARRIVE_AT_WAYPOINT";
            break;
          case 294:
            v12 = @"REMOVE_STOP";
            break;
          case 295:
            v12 = @"DISPLAY_PAUSE_BUTTON";
            break;
          case 296:
            v12 = @"DISPLAY_PAUSE_NEXT_BUTTONS";
            break;
          case 297:
            v12 = @"AUTO_ADVANCE_NEXT_STOP";
            break;
          case 298:
            v12 = @"ADD_INLINE_NEGATIVE_RATING";
            break;
          case 299:
            v12 = @"ADD_INLINE_POSITIVE_RATING";
            break;
          case 300:
            v12 = @"TAP_TO_ADD_RATING_AND_PHOTO";
            break;
          case 301:
            v12 = @"SUBMIT_RATINGS_AND_PHOTOS";
            break;
          case 302:
            v12 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";
            break;
          case 303:
            v12 = @"TAP_RECENTLY_VIEWED_ROUTE";
            break;
          case 304:
            v12 = @"SHOW_ALL_RECENTS";
            break;
          case 305:
            v12 = @"RESUME_MULTIPOINT_ROUTE";
            break;
          case 306:
            v12 = @"DISMISS_TRANSIT_TIPKIT";
            break;
          case 307:
            v12 = @"DISPLAY_TRANSIT_TIPKIT";
            break;
          case 308:
            v12 = @"TAP_TRANSIT_TIPKIT";
            break;
          case 309:
            v12 = @"FILTER_EV";
            break;
          case 310:
            v12 = @"FILTER_SURCHARGE";
            break;
          case 311:
            v12 = @"FILTER_PREFER";
            break;
          case 312:
            v12 = @"TAP_WALKING_ANNOTATION";
            break;
          case 313:
            v12 = @"FILTER_AVOID";
            break;
          case 314:
            v12 = @"FILTER_TRANSPORTATION_MODE";
            break;
          case 315:
            v12 = @"FILTER_RECOMMENDED_ROUTES";
            break;
          case 316:
            v12 = @"FILTER_IC_FARES";
            break;
          case 317:
            v12 = @"FILTER_TRANSIT_CARD_FARES";
            break;
          case 318:
            v12 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";
            break;
          case 319:
            v12 = @"TAP_NOTIFICATION_SETTINGS";
            break;
          case 320:
            v12 = @"TAP_ENABLE_NOTIFICATION";
            break;
          case 321:
            v12 = @"ARP_SUGGESTIONS_TURN_OFF";
            break;
          case 322:
            v12 = @"ARP_SUGGESTIONS_TURN_ON";
            break;
          case 323:
            v12 = @"DISMISS_ARP_SUGGESTION";
            break;
          case 324:
            v12 = @"RATINGS_AND_PHOTOS_TURN_ON";
            break;
          case 325:
            v12 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";
            break;
          case 326:
            v12 = @"UNSELECT_SUGGESTED_PHOTOS";
            break;
          case 327:
            v12 = @"SUGGESTED_PHOTOS_SHOWN";
            break;
          case 328:
            v12 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 329:
            v12 = @"TAP_YOUR_PHOTOS_ALBUM";
            break;
          case 330:
            v12 = @"RATINGS_AND_PHOTOS_TURN_OFF";
            break;
          case 331:
            v12 = @"DELETE_PHOTO";
            break;
          case 332:
            v12 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 333:
            v12 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";
            break;
          case 334:
            v12 = @"TAP_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 335:
            v12 = @"DISPLAY_YOUR_PHOTOS_ALBUM";
            break;
          case 336:
            v12 = @"SELECT_SUGGESTED_PHOTOS";
            break;
          case 337:
            v12 = @"ADD_STOP";
            break;
          case 338:
            v12 = @"SHOW_CREDIT_TURN_ON";
            break;
          case 339:
            v12 = @"DISPLAY_ARP_SUGGESTION";
            break;
          case 340:
            v12 = @"TAP_TO_ADD_PHOTO_CREDIT";
            break;
          case 341:
            v12 = @"SHOW_CREDIT_TURN_OFF";
            break;
          case 342:
            v12 = @"TAP_TO_EDIT_NICKNAME";
            break;
          case 343:
            v12 = @"SUBMIT_RATINGS";
            break;
          case 344:
            v12 = @"END_NAV_ON_WATCH";
            break;
          case 345:
            v12 = @"FILTER_EBIKE";
            break;
          case 356:
            v12 = @"ADD_STOP_SIRI";
            break;
          case 357:
            v12 = @"TAP_REVIEWED_RAP";
            break;
          case 358:
            v12 = @"TAP_OUTREACH_RAP";
            break;
          case 359:
            v12 = @"DISPLAY_SUGGESTED_ITEM";
            break;
          case 360:
            v12 = @"DISPLAY_HIKING_TIPKIT";
            break;
          case 361:
            v12 = @"DISMISS_HIKING_TIPKIT";
            break;
          case 362:
            v12 = @"TAP_HIKING_TIPKIT";
            break;
          case 363:
            v12 = @"SCROLL_LEFT_TRAILS";
            break;
          case 364:
            v12 = @"TAP_MORE_TRAILS";
            break;
          case 365:
            v12 = @"TAP_RELATED_TRAIL";
            break;
          case 366:
            v12 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";
            break;
          case 367:
            v12 = @"SCROLL_RIGHT_TRAILS";
            break;
          case 368:
            v12 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            break;
          case 369:
            v12 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";
            break;
          case 370:
            v12 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 371:
            v12 = @"TAP_DOWNLOAD_MAPS_TIPKIT";
            break;
          case 372:
            v12 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 373:
            v12 = @"EXPIRED_MAPS_REMOVED";
            break;
          case 374:
            v12 = @"UPDATE_ALL_DOWNLOAD_MAPS";
            break;
          case 375:
            v12 = @"TAP_EXPIRED_MAPS";
            break;
          case 376:
            v12 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";
            break;
          case 377:
            v12 = @"MOVE_DOWNLOAD_MAPS";
            break;
          case 378:
            v12 = @"SAVE_RENAME_DOWNLOAD_MAPS";
            break;
          case 379:
            v12 = @"TAP_COMPLETE_DOWNLOAD_MAPS";
            break;
          case 380:
            v12 = @"TAP_ENTER_OFFLINE_MAPS";
            break;
          case 381:
            v12 = @"TAP_DOWNLOAD_MAPS";
            break;
          case 382:
            v12 = @"TAP_DOWNLOAD_MAPS_CONTINUE";
            break;
          case 383:
            v12 = @"DELETE_DOWNLOAD_MAPS";
            break;
          case 384:
            v12 = @"SLIDE_CLEAR_EXPIRED_MAPS";
            break;
          case 385:
            v12 = @"RENAME_DOWNLOAD_MAPS";
            break;
          case 386:
            v12 = @"RESIZE_DOWNLOAD_MAPS";
            break;
          case 387:
            v12 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";
            break;
          case 388:
            v12 = @"RESTORE_EXPIRED_MAPS";
            break;
          case 389:
            v12 = @"CLEAR_EXPIRED_MAPS";
            break;
          case 390:
            v12 = @"TAP_USING_OFFLINE_BAR";
            break;
          case 391:
            v12 = @"UPDATE_DOWNLOAD_MAPS";
            break;
          case 392:
            v12 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";
            break;
          case 393:
            v12 = @"DISPLAY_DOWNLOAD_MAPS";
            break;
          case 394:
            v12 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";
            break;
          case 395:
            v12 = @"DISPLAY_EXPIRED_MAPS";
            break;
          case 396:
            v12 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            break;
          case 397:
            v12 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";
            break;
          case 398:
            v12 = @"SLIDE_RESTORE_EXPIRED_MAPS";
            break;
          case 399:
            v12 = @"ETA_SHARE_TRAY_TIMEOUT";
            break;
          case 400:
            v12 = @"START_ETA_SHARING";
            break;
          case 401:
            v12 = @"PERSON_LOCATION_UPDATE";
            break;
          case 402:
            v12 = @"STOP_ETA_SHARING";
            break;
          case 403:
            v12 = @"PUNCH_OUT_TO_FINDMY";
            break;
          case 404:
            v12 = @"TAP_PEOPLE_LOCATION";
            break;
          case 405:
            v12 = @"TAP_TO_REQUEST_LOCATION";
            break;
          case 406:
            v12 = @"ZOOM_OUT_CROWN";
            break;
          case 407:
            v12 = @"TAP_RESIZE_DOWNLOAD_MAPS";
            break;
          case 408:
            v12 = @"TAP_DELETE_DOWNLOAD_MAPS";
            break;
          case 409:
            v12 = @"SELECT_LIST_VIEW";
            break;
          case 410:
            v12 = @"SCROLL_RIGHT_TRAILHEADS";
            break;
          case 411:
            v12 = @"SWITCH_TO_ONLINE_MODE";
            break;
          case 412:
            v12 = @"TAP_RELATED_TRAILHEAD";
            break;
          case 413:
            v12 = @"SELECT_ELEVATION_VIEW";
            break;
          case 414:
            v12 = @"TOGGLE_PROXIMITY_RADIUS_ON";
            break;
          case 415:
            v12 = @"SEE_MORE_RECENTS";
            break;
          case 416:
            v12 = @"SEE_MORE_GUIDES";
            break;
          case 417:
            v12 = @"SELECT_CONTROLS";
            break;
          case 418:
            v12 = @"NO_SEARCH_RESULTS";
            break;
          case 419:
            v12 = @"TAP_VIEW_RESULTS_CAROUSEL";
            break;
          case 420:
            v12 = @"TAP_VIEW_RESULTS_LIST";
            break;
          case 421:
            v12 = @"SELECT_MAP_VIEW";
            break;
          case 422:
            v12 = @"SCROLL_LEFT_TRAILHEADS";
            break;
          case 423:
            v12 = @"SWITCH_TO_OFFLINE_MODE";
            break;
          case 424:
            v12 = @"ZOOM_IN_CROWN";
            break;
          case 425:
            v12 = @"TOGGLE_PROXIMITY_RADIUS_OFF";
            break;
          case 426:
            v12 = @"TAP_MAP";
            break;
          case 427:
            v12 = @"SWIPE_DOWN";
            break;
          case 428:
            v12 = @"TAP_MORE_TRAILHEADS";
            break;
          case 429:
            v12 = @"TAP_ROUTE_OPTIONS";
            break;
          case 430:
            v12 = @"TAP_ROUTE_NAV_MAP";
            break;
          case 431:
            v12 = @"TAP_ROUTE_OVERVIEW_MAP";
            break;
          case 432:
            v12 = @"TAP_AUDIO";
            break;
          case 433:
            v12 = @"TAP_OPEN_PLACECARD";
            break;
          case 434:
            v12 = @"TAP_VIEW_STOPS";
            break;
          case 435:
            v12 = @"TAP_ROUTE_DETAILS";
            break;
          case 436:
            v12 = @"ADD_LPR_VEHICLE";
            break;
          case 437:
            v12 = @"TAP_ADD_VEHICLE";
            break;
          case 438:
            v12 = @"TAP_PLUG_TYPE";
            break;
          case 439:
            v12 = @"UNSELECT_SUGGESTED_NETWORK";
            break;
          case 440:
            v12 = @"TAP_SET_UP_LATER";
            break;
          case 441:
            v12 = @"ADD_EV_VEHICLE";
            break;
          case 442:
            v12 = @"UPDATE_COLOR";
            break;
          case 443:
            v12 = @"SELECT_OTHER_NETWORK";
            break;
          case 444:
            v12 = @"UNSELECT_NETWORK";
            break;
          case 445:
            v12 = @"TAP_BACK";
            break;
          case 446:
            v12 = @"TAP_CANCEL";
            break;
          case 447:
            v12 = @"UNSELECT_VEHICLE";
            break;
          case 448:
            v12 = @"UNSELECT_OTHER_NETWORK";
            break;
          case 449:
            v12 = @"DISPLAY_EV_TIPKIT";
            break;
          case 450:
            v12 = @"SELECT_NETWORK";
            break;
          case 451:
            v12 = @"TAP_EV_TIPKIT";
            break;
          case 452:
            v12 = @"TAP_CHOOSE_NETWORKS";
            break;
          case 453:
            v12 = @"TAP_ADD_NETWORK";
            break;
          case 454:
            v12 = @"FILTER_NETWORK";
            break;
          case 455:
            v12 = @"SELECT_SUGGESTED_NETWORK";
            break;
          case 456:
            v12 = @"TRANSIT_TO_WALKING";
            break;
          case 457:
            v12 = @"TRANSIT_TO_FINDMY";
            break;
          case 458:
            v12 = @"TAP_AC_KEYBOARD";
            break;
          case 459:
            v12 = @"REACH_PHOTO_STRIP_END";
            break;
          case 460:
            v12 = @"SEARCH_HERE_REVEAL";
            break;
          case 461:
            v12 = @"TAP_SEARCH_HERE";
            break;
          case 462:
            v12 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";
            break;
          case 463:
            v12 = @"SAVE";
            break;
          case 464:
            v12 = @"TAP_MORE_CURATED_HIKES";
            break;
          case 465:
            v12 = @"CREATE_CUSTOM_ROUTE";
            break;
          case 466:
            v12 = @"TAP_TRY_NOW";
            break;
          case 467:
            v12 = @"TAP_CURATED_HIKE";
            break;
          case 468:
            v12 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";
            break;
          case 469:
            v12 = @"ADD_TO_LIBRARY";
            break;
          case 470:
            v12 = @"START_HIKING";
            break;
          case 471:
            v12 = @"EDIT_NOTE";
            break;
          case 472:
            v12 = @"CREATE_NOTE";
            break;
          case 473:
            v12 = @"DELETE_PIN";
            break;
          case 474:
            v12 = @"ADD_ROUTE";
            break;
          case 475:
            v12 = @"ADD_PIN";
            break;
          case 476:
            v12 = @"REMOVE_FROM_COLLECTION";
            break;
          case 477:
            v12 = @"REMOVE_FROM_LIBRARY";
            break;
          case 478:
            v12 = @"TAP_ITEM";
            break;
          case 479:
            v12 = @"DELETE_ROUTE";
            break;
          case 480:
            v12 = @"TAP_ROUTE";
            break;
          case 481:
            v12 = @"TAP_DOWNLOAD_WATCH_MAPS";
            break;
          case 482:
            v12 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            break;
          case 483:
            v12 = @"STOP_DOWNLOAD_ONTO_WATCH";
            break;
          case 484:
            v12 = @"TAP_DOWNLOAD_ONTO_WATCH";
            break;
          case 485:
            v12 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            break;
          case 486:
            v12 = @"TAP_DOWNLOAD_NOW_WATCH";
            break;
          case 487:
            v12 = @"REVEAL_DETECTION_LIST";
            break;
          case 488:
            v12 = @"TAP_RECOMMENDATION";
            break;
          case 489:
            v12 = @"TAP_EXPAND";
            break;
          case 490:
            v12 = @"EXPAND_DETECTION_LIST";
            break;
          case 491:
            v12 = @"FIRST_PARTY_MAP_VIEW";
            break;
          case 492:
            v12 = @"SECOND_PARTY_MAP_VIEW";
            break;
          case 493:
            v12 = @"THIRD_PARTY_MAP_VIEW";
            break;
          case 494:
            v12 = @"DAEMON_PARTY_MAP_VIEW";
            break;
          case 495:
            v12 = @"MAPS_APP_DWELL_TIME_3_SEC";
            break;
          case 496:
            v12 = @"MAPS_APP_DWELL_TIME_30_SEC";
            break;
          case 497:
            v12 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";
            break;
          case 498:
            v12 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";
            break;
          case 499:
            v12 = @"DISPLAY_DOOM";
            break;
          case 500:
            v12 = @"TAP_DOOM";
            break;
          case 501:
            v12 = @"TAP_ROUTE_GENIUS";
            break;
          case 502:
            v12 = @"DISPLAY_ROUTE_GENIUS";
            break;
          case 503:
            v12 = @"TAP_WIDGET";
            break;
          case 504:
            v12 = @"ARRIVE_AT_DESTINATION";
            break;
          case 505:
            v12 = @"DISPLAY_WIDGET";
            break;
          case 506:
            v12 = @"CLEAR_HISTORY";
            break;
          case 507:
            v12 = @"TAP_SECTION";
            break;
          case 508:
            v12 = @"APPROVE_LOCATION";
            break;
          case 509:
            v12 = @"DISMISS_VISITED_PLACES_TIPKIT";
            break;
          case 510:
            v12 = @"DISPLAY_VISITED_PLACES_TIPKIT";
            break;
          case 511:
            v12 = @"MORE_OPTIONS";
            break;
          case 512:
            v12 = @"TAP_VISITED_PLACES_AVAILABLE";
            break;
          case 513:
            v12 = @"AUTO_REFRESH_SEARCH";
            break;
          case 514:
            v12 = @"REMOVE_VISIT";
            break;
          case 515:
            v12 = @"WRONG_LOCATION";
            break;
          case 516:
            v12 = @"CONFIRM";
            break;
          case 517:
            v12 = @"KEEP_HISTORY";
            break;
          case 518:
            v12 = @"DISPLAY_VISITED_PLACES_AVAILABLE";
            break;
          case 519:
            v12 = @"REMOVE";
            break;
          case 520:
            v12 = @"ALLOW";
            break;
          case 521:
            v12 = @"DONT_ALLOW";
            break;
          case 522:
            v12 = @"REMOVE_EVERY_VISIT";
            break;
          case 523:
            v12 = @"CONTINUE_VISITED_PLACES_TIPKIT";
            break;
          case 524:
            v12 = @"REMOVE_FROM_FAVORITE_GUIDE";
            break;
          case 525:
            v12 = @"ADD_TO_FAVORITE_GUIDE";
            break;
          case 526:
            v12 = @"FAMILIAR_ROUTE_DISPLAYED";
            break;
          case 527:
            v12 = @"FAMILIAR_ROUTE_NAV_STARTED";
            break;
          case 528:
            v12 = @"SELECT_AUDIO_VOLUME_LOUDER";
            break;
          case 529:
            v12 = @"SELECT_AUDIO_VOLUME_SOFTER";
            break;
          case 1001:
            v12 = @"PAN";
            break;
          case 1002:
            v12 = @"ZOOM_IN";
            break;
          case 1003:
            v12 = @"ZOOM_OUT";
            break;
          case 1004:
            v12 = @"ROTATE";
            break;
          case 1010:
            v12 = @"TAP_POI";
            break;
          case 1011:
            v12 = @"TAP_POI_TRANSIT";
            break;
          case 1017:
            v12 = @"TAP_POI_HIGHLIGHTED";
            break;
          case 1018:
            v12 = @"TAP_POI_CLUSTERED";
            break;
          case 1020:
            v12 = @"TAP_POI_DROPPED_PIN";
            break;
          case 1030:
            v12 = @"DROP_PIN";
            break;
          case 1031:
            v12 = @"TAP_INCIDENT";
            break;
          case 1032:
            v12 = @"TAP_TRANSIT_LINE";
            break;
          case 1033:
            v12 = @"TAP_POI_CALENDAR";
            break;
          case 1034:
            v12 = @"TAP_POI_CURRENT_LOCATION";
            break;
          case 1035:
            v12 = @"TAP_POI_TRANSIT_LINE";
            break;
          case 1036:
            v12 = @"TAP_POI_LANDMARK";
            break;
          case 1037:
            v12 = @"TAP_POI_FLYOVER";
            break;
          case 1038:
            v12 = @"TAP_TO_HIDE_TRAY";
            break;
          case 1039:
            v12 = @"TAP_TO_REVEAL_TRAY";
            break;
          case 1040:
            v12 = @"TAP_COMPASS";
            break;
          case 1041:
            v12 = @"PITCH_AWAY_FROM_GROUND";
            break;
          case 1042:
            v12 = @"PITCH_CLOSER_TO_GROUND";
            break;
          case 1043:
            v12 = @"ZOOM_IN_PINCH";
            break;
          case 1044:
            v12 = @"ZOOM_OUT_PINCH";
            break;
          case 1045:
            v12 = @"ZOOM_IN_DOUBLE_TAP";
            break;
          case 1046:
            v12 = @"ZOOM_OUT_TWO_FINGER_TAP";
            break;
          case 1047:
            v12 = @"ZOOM_IN_ONE_FINGER";
            break;
          case 1048:
            v12 = @"ZOOM_OUT_ONE_FINGER";
            break;
          case 1049:
            v12 = @"ZOOM_IN_BUTTON";
            break;
          case 1050:
            v12 = @"ZOOM_OUT_BUTTON";
            break;
          case 1051:
            v12 = @"TAP_TRAFFIC_CAMERA";
            break;
          case 1052:
            v12 = @"DISPLAY_INDOOR_MAP_BUTTON";
            break;
          case 1053:
            v12 = @"OPEN_INDOOR_MAP";
            break;
          case 1054:
            v12 = @"DISPLAY_VENUE_BROWSE_BUTTON";
            break;
          case 1055:
            v12 = @"TAP_VENUE_BROWSE_BUTTON";
            break;
          case 1056:
            v12 = @"ENTER_VENUE_EXPERIENCE";
            break;
          case 1057:
            v12 = @"EXIT_VENUE_EXPERIENCE";
            break;
          case 1058:
            v12 = @"ZOOM_IN_SCENE_PINCH";
            break;
          case 1059:
            v12 = @"ZOOM_OUT_SCENE_PINCH";
            break;
          case 1060:
            v12 = @"ZOOM_RESET";
            break;
          case 1061:
            v12 = @"TAP_SCENE_UNAVAILABLE_AREA";
            break;
          case 1062:
            v12 = @"TAP_TRANSIT_ACCESS_POINT";
            break;
          case 1063:
            v12 = @"TAP_SPEED_CAMERA";
            break;
          case 1064:
            v12 = @"TAP_RED_LIGHT_CAMERA";
            break;
          case 1065:
            v12 = @"TAP_GEO";
            break;
          default:
            if (v7 != 1500)
            {
              goto LABEL_116;
            }

            v12 = @"TAP_PLAY_SOUND";
            break;
        }
      }

      goto LABEL_1426;
    }

    if (v7 > 9000)
    {
      if (v7 <= 12000)
      {
        switch(v7)
        {
          case 10101:
            v12 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";
            break;
          case 10102:
            v12 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";
            break;
          case 10103:
            v12 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";
            break;
          case 10104:
            v12 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";
            break;
          case 10105:
            v12 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";
            break;
          case 10106:
            v12 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";
            break;
          case 10107:
            v12 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";
            break;
          case 10108:
            v12 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";
            break;
          case 10109:
            v12 = @"RAP_CANCEL";
            break;
          case 10110:
            v12 = @"RAP_NEXT";
            break;
          case 10111:
            v12 = @"RAP_BACK";
            break;
          case 10112:
            v12 = @"RAP_SEND";
            break;
          case 10113:
            v12 = @"RAP_SKIP";
            break;
          case 10114:
            v12 = @"RAP_SHOW_MORE";
            break;
          case 10115:
            v12 = @"RAP_ADD_PHOTO";
            break;
          case 10116:
            v12 = @"RAP_MAP_INCORRECT";
            break;
          case 10117:
            v12 = @"RAP_BAD_DIRECTIONS";
            break;
          case 10118:
            v12 = @"RAP_TRANSIT_INFO_INCORRECT";
            break;
          case 10119:
            v12 = @"RAP_SATELLITE_IMAGE_PROBLEM";
            break;
          case 10120:
            v12 = @"RAP_SEARCH_RESULTS_INCORRECT";
            break;
          case 10121:
            v12 = @"RAP_ADD_A_PLACE";
            break;
          case 10122:
            v12 = @"RAP_HOME";
            break;
          case 10123:
            v12 = @"RAP_WORK";
            break;
          case 10124:
            v12 = @"RAP_OTHER";
            break;
          case 10125:
            v12 = @"RAP_LOCATION";
            break;
          case 10126:
            v12 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";
            break;
          case 10127:
            v12 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";
            break;
          case 10128:
            v12 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";
            break;
          case 10129:
            v12 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";
            break;
          case 10130:
            v12 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";
            break;
          case 10131:
            v12 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";
            break;
          case 10132:
            v12 = @"RAP_TRANSIT_DELAY";
            break;
          case 10133:
            v12 = @"RAP_LOCATION_CLOSED";
            break;
          case 10134:
            v12 = @"RAP_CLOSED_PERMANENTLY";
            break;
          case 10135:
            v12 = @"RAP_CLOSED_TEMPORARILY";
            break;
          case 10136:
            v12 = @"RAP_HOURS_HAVE_CHANGED";
            break;
          case 10137:
            v12 = @"RAP_SELECT_STATION";
            break;
          case 10138:
            v12 = @"RAP_SELECT_LINE";
            break;
          case 10139:
            v12 = @"RAP_SELECT_ACCESS_POINT";
            break;
          case 10140:
            v12 = @"RAP_SELECT_SEARCH";
            break;
          case 10141:
            v12 = @"RAP_PAN_MAP";
            break;
          case 10142:
            v12 = @"RAP_CENTER_MAP_ON_USER";
            break;
          case 10143:
            v12 = @"RAP_SEARCH_UNEXPECTED";
            break;
          case 10144:
            v12 = @"RAP_ADD_POI";
            break;
          case 10145:
            v12 = @"RAP_ADD_STREET_ADDRESS";
            break;
          case 10146:
            v12 = @"RAP_ADD_OTHER";
            break;
          case 10147:
            v12 = @"RAP_SELECT_CATEGORY";
            break;
          case 10148:
            v12 = @"RAP_TAKE_PHOTO";
            break;
          case 10149:
            v12 = @"RAP_RETAKE_PHOTO";
            break;
          case 10150:
            v12 = @"RAP_PLACE_DETAILS";
            break;
          case 10151:
            v12 = @"RAP_SATELLITE_IMAGE_OUTDATED";
            break;
          case 10152:
            v12 = @"RAP_SATELLITE_IMAGE_QUALITY";
            break;
          case 10153:
            v12 = @"RAP_SELECT_LABEL";
            break;
          case 10154:
            v12 = @"RAP_SELECT_ROUTE";
            break;
          case 10155:
            v12 = @"RAP_CLAIM_BUSINESS";
            break;
          case 10156:
            v12 = @"RAP_BRAND_DETAILS";
            break;
          case 10157:
            v12 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";
            break;
          case 10158:
            v12 = @"RAP_LOOK_AROUND_LABELS_STREET";
            break;
          case 10159:
            v12 = @"RAP_LOOK_AROUND_BLURRING";
            break;
          case 10160:
            v12 = @"RAP_LOOK_AROUND_REMOVE_HOME";
            break;
          case 10161:
            v12 = @"RAP_LOOK_AROUND_LABELS_STORE";
            break;
          case 10162:
            v12 = @"RAP_LOOK_AROUND_PRIVACY";
            break;
          case 10163:
            v12 = @"RAP_INCORRECT_HOURS";
            break;
          case 10164:
            v12 = @"RAP_INCORRECT_ADDRESS";
            break;
          case 10165:
            v12 = @"RAP_EDIT_PLACE_DETAILS";
            break;
          case 10166:
            v12 = @"RAP_EDIT_PLACE_NAME";
            break;
          case 10167:
            v12 = @"RAP_EDIT_ADDRESS";
            break;
          case 10168:
            v12 = @"RAP_ADD_CATEGORY";
            break;
          case 10169:
            v12 = @"RAP_REMOVE_CATEGORY";
            break;
          case 10170:
            v12 = @"RAP_DESELECT_CATEGORY";
            break;
          case 10171:
            v12 = @"RAP_ADD_HOURS";
            break;
          case 10172:
            v12 = @"RAP_REMOVE_HOURS";
            break;
          case 10173:
            v12 = @"RAP_TAP_DAY_OF_WEEK";
            break;
          case 10174:
            v12 = @"RAP_TAP_24_HOURS_BUTTON";
            break;
          case 10175:
            v12 = @"RAP_TAP_OPEN_TIME";
            break;
          case 10176:
            v12 = @"RAP_TAP_CLOSED_TIME";
            break;
          case 10177:
            v12 = @"RAP_TAP_TEMPORARY_CLOSURE";
            break;
          case 10178:
            v12 = @"RAP_TAP_PERMANENTLY_CLOSED";
            break;
          case 10179:
            v12 = @"RAP_EDIT_WEBSITE";
            break;
          case 10180:
            v12 = @"RAP_EDIT_PHONE_NUMBER";
            break;
          case 10181:
            v12 = @"RAP_TAP_ACCEPTS_APPLE_PAY";
            break;
          case 10182:
            v12 = @"RAP_ADD_COMMENTS";
            break;
          case 10183:
            v12 = @"RAP_EDIT_LOCATION";
            break;
          case 10184:
            v12 = @"RAP_VIEW_LOCATION";
            break;
          case 10185:
            v12 = @"RAP_ZOOM_IN";
            break;
          case 10186:
            v12 = @"RAP_ZOOM_OUT";
            break;
          case 10187:
            v12 = @"RAP_VIEW_ENTRY_POINTS";
            break;
          case 10188:
            v12 = @"RAP_EDIT_EXISTING_ENTRY_POINT";
            break;
          case 10189:
            v12 = @"RAP_ADD_NEW_ENTRY_POINT";
            break;
          case 10190:
            v12 = @"RAP_REMOVE_ENTRY_POINT";
            break;
          case 10191:
            v12 = @"RAP_SELECT_ENTRY_POINT_TYPE";
            break;
          default:
            switch(v7)
            {
              case 9001:
                v12 = @"TAP_WIDGET_ITEM";
                break;
              case 9002:
                v12 = @"DISPLAY_NOTIFICATION";
                break;
              case 9003:
                v12 = @"TAP_NOTIFICATION";
                break;
              case 9004:
                v12 = @"EXPAND_NOTIFICATION";
                break;
              case 9005:
                v12 = @"DISMISS_NOTIFICATION";
                break;
              case 9006:
                v12 = @"OPEN_SEARCH";
                break;
              case 9007:
                v12 = @"OPEN_PAN_VIEW";
                break;
              case 9008:
                v12 = @"PAN_LEFT";
                break;
              case 9009:
                v12 = @"PAN_UP";
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
                goto LABEL_116;
              case 9011:
                v12 = @"PAN_DOWN";
                break;
              case 9012:
                v12 = @"TAP_RECENT_DESTINATIONS";
                break;
              case 9013:
                v12 = @"OPEN_DESTINATIONS";
                break;
              case 9014:
                v12 = @"OPEN_FAVORITES";
                break;
              case 9015:
                v12 = @"VIEW_NAV_OPTIONS";
                break;
              case 9016:
                v12 = @"START_NAV_NO_GUIDANCE";
                break;
              case 9017:
                v12 = @"TURN_OFF_GUIDANCE";
                break;
              case 9018:
                v12 = @"TURN_ON_GUIDANCE";
                break;
              case 9019:
                v12 = @"OPEN_KEYBOARD";
                break;
              case 9020:
                v12 = @"SHARE_DESTINATION";
                break;
              case 9021:
                v12 = @"START_NAV_AUTOMATED";
                break;
              case 9022:
                v12 = @"SHARE_ETA";
                break;
              case 9023:
                v12 = @"SELECT_GROUP";
                break;
              case 9024:
                v12 = @"DESELECT_GROUP";
                break;
              case 9025:
                v12 = @"SELECT_CONTACT";
                break;
              case 9026:
                v12 = @"DESELECT_CONTACT";
                break;
              case 9027:
                v12 = @"TAP_VIEW_CONTACTS";
                break;
              case 9028:
                v12 = @"STOP_RECEIVING_ETA";
                break;
              case 9029:
                v12 = @"DISPLAY_ANNOUNCEMENT";
                break;
              case 9030:
                v12 = @"TAP_ANNOUNCEMENT";
                break;
              case 9031:
                v12 = @"DISPLAY_CYCLING_NOTIFICATION";
                break;
              case 9032:
                v12 = @"TAP_CYCLING_NOTIFICATION";
                break;
              case 9033:
                v12 = @"SHARE_CYCLING_ETA";
                break;
              case 9034:
                v12 = @"MANAGE_NOTIFICATIONS";
                break;
              case 9035:
                v12 = @"PUNCH_OUT_PUBLISHER_REVIEW";
                break;
              case 9036:
                v12 = @"SCROLL_FORWARD";
                break;
              case 9037:
                v12 = @"SCROLL_BACKWARD";
                break;
              case 9038:
                v12 = @"SHOW_ALL_CURATED_COLLECTIONS";
                break;
              case 9039:
                v12 = @"TAP_LESS";
                break;
              case 9040:
                v12 = @"TAP_MORE";
                break;
              case 9101:
                v12 = @"DISPLAY_ADD_HOME_AND_WORK";
                break;
              case 9102:
                v12 = @"TAP_ADD_HOME_AND_WORK";
                break;
              case 9103:
                v12 = @"DISPLAY_ALLOW_FREQUENTS";
                break;
              case 9104:
                v12 = @"TAP_ALLOW_FREQUENTS";
                break;
              case 9105:
                v12 = @"DISPLAY_ALLOW_LOCATION";
                break;
              case 9106:
                v12 = @"TAP_ALLOW_LOCATION";
                break;
              default:
                switch(v7)
                {
                  case 11001:
                    v12 = @"EXIT_MAPS_LOWER_WRIST";
                    break;
                  case 11002:
                    v12 = @"TASK_READY";
                    break;
                  case 11003:
                    v12 = @"TAP_SEARCH";
                    break;
                  case 11004:
                    v12 = @"TAP_MY_LOCATION";
                    break;
                  case 11005:
                    v12 = @"SHOW_NEARBY";
                    break;
                  case 11006:
                    v12 = @"TAP_NEARBY";
                    break;
                  case 11007:
                    v12 = @"TAP_PROACTIVE";
                    break;
                  case 11008:
                    v12 = @"FORCE_PRESS";
                    break;
                  case 11009:
                    v12 = @"TAP_CONTACTS";
                    break;
                  case 11010:
                    v12 = @"TAP_TRANSIT";
                    break;
                  case 11011:
                    v12 = @"TAP_DICTATION";
                    break;
                  case 11012:
                    v12 = @"GET_DIRECTIONS_DRIVING";
                    break;
                  case 11013:
                    v12 = @"GET_DIRECTIONS_WALKING";
                    break;
                  case 11014:
                    v12 = @"GET_DIRECTIONS_TRANSIT";
                    break;
                  case 11015:
                    v12 = @"OPEN_STANDARD_MAP";
                    break;
                  case 11016:
                    v12 = @"OPEN_TRANSIT_MAP";
                    break;
                  case 11017:
                    v12 = @"START_NAV_AUTO";
                    break;
                  case 11018:
                    v12 = @"TAP_RECENT";
                    break;
                  case 11019:
                    v12 = @"TAP_FAVORITE";
                    break;
                  case 11020:
                    v12 = @"TAP_SCRIBBLE";
                    break;
                  case 11021:
                    v12 = @"TAP_VIEW_MAP";
                    break;
                  case 11022:
                    v12 = @"TAP_VIEW_TBT";
                    break;
                  case 11023:
                    v12 = @"VIEW_ROUTE_INFO";
                    break;
                  case 11024:
                    v12 = @"NAV_UNMUTE";
                    break;
                  case 11025:
                    v12 = @"NAV_MUTE";
                    break;
                  case 11026:
                    v12 = @"GET_DIRECTIONS_CYCLING";
                    break;
                  case 11027:
                    v12 = @"TAP_SEARCH_HOME";
                    break;
                  case 11028:
                    v12 = @"ROUTE_PAUSED_ON_WATCH";
                    break;
                  case 11029:
                    v12 = @"NEXT_STOP_TAPPED_ON_WATCH";
                    break;
                  default:
                    goto LABEL_116;
                }

                break;
            }

            break;
        }

        goto LABEL_1426;
      }

      if (v7 > 16000)
      {
        switch(v7)
        {
          case 17001:
            v12 = @"START_DRAG";
            break;
          case 17002:
            v12 = @"CANCEL_DRAG";
            break;
          case 17003:
            v12 = @"COMPLETE_DRAG";
            break;
          case 17004:
            v12 = @"START_DROP";
            break;
          case 17005:
            v12 = @"CANCEL_DROP";
            break;
          case 17006:
            v12 = @"COMPLETE_DROP";
            break;
          case 17007:
            v12 = @"ANNOTATION_SELECT";
            break;
          case 17008:
            v12 = @"ANNOTATION_SELECT_AUTO";
            break;
          case 17009:
            v12 = @"ANNOTATION_SELECT_LIST";
            break;
          case 17010:
            v12 = @"BROWSE_TOP_CATEGORY_DISPLAYED";
            break;
          case 17011:
            v12 = @"CALLOUT_FLYOVER_TOUR";
            break;
          case 17012:
            v12 = @"CALLOUT_INFO";
            break;
          case 17013:
            v12 = @"CALLOUT_NAV_TRANSIT";
            break;
          case 17014:
            v12 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";
            break;
          case 17015:
            v12 = @"CALLOUT_VIEW_TRANSIT_LINE";
            break;
          case 17016:
            v12 = @"DIRECTIONS_SELECT";
            break;
          case 17017:
            v12 = @"DIRECTIONS_TRANSIT_CUSTOM";
            break;
          case 17018:
            v12 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";
            break;
          case 17019:
            v12 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";
            break;
          case 17020:
            v12 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";
            break;
          case 17021:
            v12 = @"DIRECTIONS_TRANSIT_LATER";
            break;
          case 17022:
            v12 = @"DIRECTIONS_TRANSIT_NOW";
            break;
          case 17023:
            v12 = @"FLYOVER_NOTIFICATION_DISMISS";
            break;
          case 17024:
            v12 = @"FLYOVER_NOTIFICATION_START";
            break;
          case 17025:
            v12 = @"FLYOVER_TOUR_COMPLETED";
            break;
          case 17026:
            v12 = @"FLYOVER_TOUR_END";
            break;
          case 17027:
            v12 = @"FLYOVER_TOUR_NOTIFICATION";
            break;
          case 17028:
            v12 = @"FLYOVER_TOUR_START";
            break;
          case 17029:
            v12 = @"INFO_BOOKMARKS";
            break;
          case 17030:
            v12 = @"INFO_CARD_DETACHED";
            break;
          case 17031:
            v12 = @"INFO_CONTACTS";
            break;
          case 17032:
            v12 = @"INFO_DIRECTIONS";
            break;
          case 17033:
            v12 = @"INFO_DIRECTIONS_FROM";
            break;
          case 17034:
            v12 = @"INFO_DIRECTIONS_TO";
            break;
          case 17035:
            v12 = @"INFO_DISMISS";
            break;
          case 17036:
            v12 = @"INFO_INFO";
            break;
          case 17037:
            v12 = @"INFO_PHOTOS";
            break;
          case 17038:
            v12 = @"INFO_REVIEWS";
            break;
          case 17039:
            v12 = @"INFO_SHARE";
            break;
          case 17040:
            v12 = @"INFO_SHARE_AIRDROP";
            break;
          case 17041:
            v12 = @"INFO_SHARE_FACEBOOK";
            break;
          case 17042:
            v12 = @"INFO_SHARE_MAIL";
            break;
          case 17043:
            v12 = @"INFO_SHARE_MESSAGE";
            break;
          case 17044:
            v12 = @"INFO_SHARE_TENCENTWEIBO";
            break;
          case 17045:
            v12 = @"INFO_SHARE_WEIBO";
            break;
          case 17046:
            v12 = @"INFO_YELP";
            break;
          case 17047:
            v12 = @"MAPS_APP_LAUNCH";
            break;
          case 17048:
            v12 = @"MAP_3D_OFF";
            break;
          case 17049:
            v12 = @"MAP_3D_ON";
            break;
          case 17050:
            v12 = @"MAP_OPTIONS_DROP_PIN";
            break;
          case 17051:
            v12 = @"MAP_OPTIONS_HYBRID";
            break;
          case 17052:
            v12 = @"MAP_OPTIONS_PRINT";
            break;
          case 17053:
            v12 = @"MAP_OPTIONS_REMOVE_PIN";
            break;
          case 17054:
            v12 = @"MAP_OPTIONS_SATELLITE";
            break;
          case 17055:
            v12 = @"MAP_OPTIONS_STANDARD";
            break;
          case 17056:
            v12 = @"MAP_OPTIONS_TRAFFIC_HIDE";
            break;
          case 17057:
            v12 = @"MAP_OPTIONS_TRAFFIC_SHOW";
            break;
          case 17058:
            v12 = @"MAP_OPTIONS_TRANSIT";
            break;
          case 17059:
            v12 = @"MAP_TAP_FLYOVER_CITY";
            break;
          case 17060:
            v12 = @"MAP_TAP_LINE";
            break;
          case 17061:
            v12 = @"MAP_TAP_POI_TRANSIT";
            break;
          case 17062:
            v12 = @"MAP_TAP_TRAFFIC_INCIDENT";
            break;
          case 17063:
            v12 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";
            break;
          case 17064:
            v12 = @"MAP_USER_TRACKING_OFF";
            break;
          case 17065:
            v12 = @"MAP_USER_TRACKING_ON";
            break;
          case 17066:
            v12 = @"MAP_USER_TRACKING_WITH_HEADING_ON";
            break;
          case 17067:
            v12 = @"NAV_CLEAR";
            break;
          case 17068:
            v12 = @"NAV_LIST";
            break;
          case 17069:
            v12 = @"NAV_ROUTE_STEP_NEXT";
            break;
          case 17070:
            v12 = @"NAV_ROUTE_STEP_PREV";
            break;
          case 17071:
            v12 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";
            break;
          case 17072:
            v12 = @"ORB_DISPLAY_MENU";
            break;
          case 17073:
            v12 = @"ORB_MENU_CALL";
            break;
          case 17074:
            v12 = @"ORB_MENU_DIRECTIONS";
            break;
          case 17075:
            v12 = @"ORB_MENU_DISMISS";
            break;
          case 17076:
            v12 = @"ORB_MENU_SHARE";
            break;
          case 17077:
            v12 = @"ORB_MENU_SHOW_PLACECARD";
            break;
          case 17078:
            v12 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";
            break;
          case 17079:
            v12 = @"ORB_MENU_URL";
            break;
          case 17080:
            v12 = @"ORB_PRESS";
            break;
          case 17081:
            v12 = @"ORB_SPRINGBOARD_MARK_LOCATION";
            break;
          case 17082:
            v12 = @"ORB_SPRINGBOARD_SEARCH";
            break;
          case 17083:
            v12 = @"ORB_SPRINGBOARD_SHARE_LOCATION";
            break;
          case 17084:
            v12 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";
            break;
          case 17085:
            v12 = @"RAP_PERMISSION_CANCEL";
            break;
          case 17086:
            v12 = @"RAP_PERMISSION_EMAIL_NA";
            break;
          case 17087:
            v12 = @"RAP_PERMISSION_EMAIL_OK";
            break;
          case 17088:
            v12 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";
            break;
          case 17089:
            v12 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";
            break;
          case 17090:
            v12 = @"RAP_PERMISSION_OK";
            break;
          case 17091:
            v12 = @"SEARCH_BEGIN";
            break;
          case 17092:
            v12 = @"SEARCH_CANCEL";
            break;
          case 17093:
            v12 = @"SEARCH_SELECT";
            break;
          case 17094:
            v12 = @"TRANSIT_LINE_SELECTION_DISMISS";
            break;
          case 17095:
            v12 = @"TRANSIT_LINE_SELECTION_VIEW";
            break;
          case 17096:
            v12 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";
            break;
          case 17097:
            v12 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";
            break;
          case 17098:
            v12 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";
            break;
          case 17099:
            v12 = @"UNKNOWN_ACTION";
            break;
          case 17100:
            v12 = @"INFO_SHARE_TWITTER";
            break;
          case 17101:
            v12 = @"INFO_TAP_POPULAR_APP_NEARBY";
            break;
          case 17102:
            v12 = @"INFO_DIRECTIONS_WALK";
            break;
          case 17103:
            v12 = @"INFO_DIRECTIONS_TRANSIT";
            break;
          case 17104:
            v12 = @"INFO_DIRECTIONS_DRIVE";
            break;
          case 17105:
            v12 = @"INFO_REPORT_A_PROBLEM";
            break;
          case 17106:
            v12 = @"CALLOUT_NAV";
            break;
          case 17107:
            v12 = @"RAP_PERMISSION_EMAIL_CANCEL";
            break;
          case 17108:
            v12 = @"MAP_TAP_POI";
            break;
          default:
            if (v7 == 16001)
            {
              v12 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (v7 != 90010)
              {
                goto LABEL_116;
              }

              v12 = @"PAN_RIGHT";
            }

            break;
        }

        goto LABEL_1426;
      }

      if (v7 <= 13004)
      {
        if (v7 <= 12007)
        {
          if (v7 <= 12003)
          {
            if (v7 == 12001)
            {
              v12 = @"VIEW_MORE_OPTIONS";
            }

            else if (v7 == 12002)
            {
              v12 = @"SELECT_TIME";
            }

            else
            {
              v12 = @"SHOW_NEXT_AVAILABLE";
            }
          }

          else if (v7 > 12005)
          {
            if (v7 == 12006)
            {
              v12 = @"EDIT_BOOKING";
            }

            else
            {
              v12 = @"EDIT_PHONE";
            }
          }

          else if (v7 == 12004)
          {
            v12 = @"DECREASE_TABLE_SIZE";
          }

          else
          {
            v12 = @"INCREASE_TABLE_SIZE";
          }

          goto LABEL_1426;
        }

        if (v7 > 13000)
        {
          if (v7 > 13002)
          {
            if (v7 == 13003)
            {
              v12 = @"SELECT_LABEL";
            }

            else
            {
              v12 = @"DELETE_ADDRESS";
            }
          }

          else if (v7 == 13001)
          {
            v12 = @"SELECT_ADDRESS";
          }

          else
          {
            v12 = @"ADD_ADDRESS";
          }

          goto LABEL_1426;
        }

        switch(v7)
        {
          case 0x2EE8:
            v12 = @"ADD_SPECIAL_REQUEST";
            goto LABEL_1426;
          case 0x2EE9:
            v12 = @"CHANGE_RESERVATION";
            goto LABEL_1426;
          case 0x2EEA:
            v12 = @"LEARN_MORE";
            goto LABEL_1426;
        }
      }

      else if (v7 <= 14004)
      {
        if (v7 > 14000)
        {
          if (v7 > 14002)
          {
            if (v7 == 14003)
            {
              v12 = @"BOOK_RIDE";
            }

            else
            {
              v12 = @"REQUEST_RIDE";
            }
          }

          else if (v7 == 14001)
          {
            v12 = @"VIEW_APP";
          }

          else
          {
            v12 = @"ENABLE";
          }

          goto LABEL_1426;
        }

        switch(v7)
        {
          case 0x32CD:
            v12 = @"EDIT_ITEMS";
            goto LABEL_1426;
          case 0x32CE:
            v12 = @"RAP_FAVORITES";
            goto LABEL_1426;
          case 0x32CF:
            v12 = @"SORT_LIST_ITEM";
            goto LABEL_1426;
        }
      }

      else
      {
        if (v7 <= 14008)
        {
          if (v7 > 14006)
          {
            if (v7 == 14007)
            {
              v12 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v12 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (v7 == 14005)
          {
            v12 = @"CONTACT_DRIVER";
          }

          else
          {
            v12 = @"CHANGE_PAYMENT";
          }

          goto LABEL_1426;
        }

        if (v7 > 15001)
        {
          if (v7 == 15002)
          {
            v12 = @"ORB_POP";
            goto LABEL_1426;
          }

          if (v7 == 15003)
          {
            v12 = @"ORB_DISMISS";
            goto LABEL_1426;
          }
        }

        else
        {
          if (v7 == 14009)
          {
            v12 = @"SUBMIT_TRIP_FEEDBACK";
            goto LABEL_1426;
          }

          if (v7 == 15001)
          {
            v12 = @"ORB_PEEK";
            goto LABEL_1426;
          }
        }
      }

LABEL_116:
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
      goto LABEL_1426;
    }

    if (v7 <= 6002)
    {
      if (v7 > 4001)
      {
        if (v7 <= 4004)
        {
          if (v7 == 4002)
          {
            v12 = @"TAP_HEADING_ON";
          }

          else if (v7 == 4003)
          {
            v12 = @"TAP_HEADING_OFF";
          }

          else
          {
            v12 = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(v7)
          {
            case 5001:
              v12 = @"SHOW_MAPS_SETTINGS";
              break;
            case 5002:
              v12 = @"TAP_STANDARD_MODE";
              break;
            case 5003:
              v12 = @"TAP_TRANSIT_MODE";
              break;
            case 5004:
              v12 = @"TAP_SATELLITE_MODE";
              break;
            case 5005:
              v12 = @"SWITCH_ON_TRAFFIC";
              break;
            case 5006:
              v12 = @"SWITCH_OFF_TRAFFIC";
              break;
            case 5007:
              v12 = @"SWITCH_ON_LABELS";
              break;
            case 5008:
              v12 = @"SWITCH_OFF_LABELS";
              break;
            case 5009:
              v12 = @"SWITCH_ON_3D_MAP";
              break;
            case 5010:
              v12 = @"SWITCH_OFF_3D_MAP";
              break;
            case 5011:
              v12 = @"SWITCH_ON_WEATHER";
              break;
            case 5012:
              v12 = @"SWITCH_OFF_WEATHER";
              break;
            case 5013:
              v12 = @"REPORT_A_PROBLEM";
              break;
            case 5014:
              v12 = @"ADD_PLACE";
              break;
            case 5015:
              goto LABEL_116;
            case 5016:
              v12 = @"TAP_PREFERENCES";
              break;
            case 5017:
              v12 = @"SWITCH_ON_TOLLS";
              break;
            case 5018:
              v12 = @"SWITCH_OFF_TOLLS";
              break;
            case 5019:
              v12 = @"SWITCH_ON_HIGHWAYS";
              break;
            case 5020:
              v12 = @"SWITCH_OFF_HIGHWAYS";
              break;
            case 5021:
              v12 = @"SWITCH_ON_HEADING";
              break;
            case 5022:
              v12 = @"SWITCH_OFF_HEADING";
              break;
            case 5023:
              v12 = @"SWITCH_ON_SPEED_LIMIT";
              break;
            case 5024:
              v12 = @"SWITCH_OFF_SPEED_LIMIT";
              break;
            case 5025:
              v12 = @"ELECT_DRIVING_MODE";
              break;
            case 5026:
              v12 = @"ELECT_WALKING_MODE";
              break;
            case 5027:
              v12 = @"ELECT_TRANSIT_MODE";
              break;
            case 5028:
              v12 = @"ELECT_RIDESHARE_MODE";
              break;
            case 5029:
              v12 = @"SWITCH_ON_FIND_MY_CAR";
              break;
            case 5030:
              v12 = @"SWITCH_OFF_FIND_MY_CAR";
              break;
            case 5031:
              v12 = @"MARK_MY_LOCATION";
              break;
            case 5032:
              v12 = @"TAP_HYBRID_MODE";
              break;
            case 5033:
              v12 = @"CHECK_AVOID_BUSY_ROADS";
              break;
            case 5034:
              v12 = @"UNCHECK_AVOID_BUSY_ROADS";
              break;
            case 5035:
              v12 = @"CHECK_AVOID_HILLS";
              break;
            case 5036:
              v12 = @"UNCHECK_AVOID_HILLS";
              break;
            case 5037:
              v12 = @"CHECK_AVOID_STAIRS";
              break;
            case 5038:
              v12 = @"UNCHECK_AVOID_STAIRS";
              break;
            case 5039:
              v12 = @"ELECT_CYCLING_MODE";
              break;
            default:
              if (v7 == 4005)
              {
                v12 = @"PUCK_SNAP";
              }

              else
              {
                if (v7 != 4006)
                {
                  goto LABEL_116;
                }

                v12 = @"SELECT_FLOOR";
              }

              break;
          }
        }
      }

      else
      {
        switch(v7)
        {
          case 3001:
            v12 = @"START_NAV";
            break;
          case 3002:
            v12 = @"END_NAV";
            break;
          case 3003:
            v12 = @"OPEN_NAV_AUDIO_SETTINGS";
            break;
          case 3004:
            v12 = @"VIEW_DETAILS";
            break;
          case 3005:
            v12 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";
            break;
          case 3006:
            v12 = @"OPEN_ROUTING_EDITOR";
            break;
          case 3007:
            v12 = @"EDIT_ORIGIN";
            break;
          case 3008:
            v12 = @"EDIT_DESTINATION";
            break;
          case 3009:
            v12 = @"SWAP_ORIGIN_DESTINATION";
            break;
          case 3010:
            v12 = @"OPEN_MORE_ROUTES";
            break;
          case 3011:
            v12 = @"SELECT_ROUTING_TYPE_DRIVING";
            break;
          case 3012:
            v12 = @"SELECT_ROUTING_TYPE_WALKING";
            break;
          case 3013:
            v12 = @"SELECT_ROUTING_TYPE_TRANSIT";
            break;
          case 3014:
            v12 = @"SELECT_ROUTING_TYPE_RIDESHARE";
            break;
          case 3015:
            v12 = @"SELECT_ROUTE";
            break;
          case 3016:
            v12 = @"COLLAPSE_STEP_DETAILS_WALK";
            break;
          case 3017:
            v12 = @"EXPAND_STEP_DETAILS_WALK";
            break;
          case 3018:
            v12 = @"COLLAPSE_STEP_DETAILS_TRANSIT";
            break;
          case 3019:
            v12 = @"EXPAND_STEP_DETAILS_TRANSIT";
            break;
          case 3020:
            v12 = @"UNCHECK_BUS";
            break;
          case 3021:
            v12 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";
            break;
          case 3022:
            v12 = @"UNCHECK_COMMUTER_RAIL";
            break;
          case 3023:
            v12 = @"UNCHECK_FERRY";
            break;
          case 3024:
            v12 = @"CHECK_BUS";
            break;
          case 3025:
            v12 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";
            break;
          case 3026:
            v12 = @"CHECK_COMMUTER_RAIL";
            break;
          case 3027:
            v12 = @"CHECK_FERRY";
            break;
          case 3028:
            v12 = @"SELECT_LEAVE_AT";
            break;
          case 3029:
            v12 = @"SELECT_ARRIVE_BY";
            break;
          case 3030:
            v12 = @"SELECT_LEAVE_NOW";
            break;
          case 3031:
            v12 = @"SELECT_DATE_TIME";
            break;
          case 3032:
            v12 = @"SWITCH_ON_IC_FARES";
            break;
          case 3033:
            v12 = @"SWITCH_OFF_IC_FARES";
            break;
          case 3034:
            v12 = @"OPEN_ROUTE_OPTIONS_DATETIME";
            break;
          case 3035:
            v12 = @"OPEN_ROUTE_OPTIONS_TRANSIT";
            break;
          case 3036:
            v12 = @"OPEN_ROUTE_OPTIONS_DRIVING";
            break;
          case 3037:
            v12 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";
            break;
          case 3038:
            v12 = @"REVEAL_FROM_ROUTING";
            break;
          case 3039:
            v12 = @"DISPLAY_ROUTES";
            break;
          case 3040:
            v12 = @"CHECK_RECOMMENDED_ROUTES";
            break;
          case 3041:
            v12 = @"UNCHECK_RECOMMENDED_ROUTES";
            break;
          case 3042:
            v12 = @"CHECK_FASTER_TRIPS";
            break;
          case 3043:
            v12 = @"UNCHECK_FASTER_TRIPS";
            break;
          case 3044:
            v12 = @"CHECK_FEWER_TRANSFERS";
            break;
          case 3045:
            v12 = @"UNCHECK_FEWER_TRANSFERS";
            break;
          case 3046:
            v12 = @"CHECK_LESS_WALKING";
            break;
          case 3047:
            v12 = @"UNCHECK_LESS_WALKING";
            break;
          case 3048:
            v12 = @"OPEN_ROUTE_OPTIONS_CYCLING";
            break;
          case 3049:
            v12 = @"TAP_MORE_ROUTES";
            break;
          case 3050:
            v12 = @"OPEN_NAV_OVERVIEW";
            break;
          case 3051:
            v12 = @"RESUME_NAV_MANEUVER_VIEW";
            break;
          case 3052:
            v12 = @"SELECT_AUDIO_VOLUME_SILENT";
            break;
          case 3053:
            v12 = @"SELECT_AUDIO_VOLUME_LOW";
            break;
          case 3054:
            v12 = @"SELECT_AUDIO_VOLUME_NORMAL";
            break;
          case 3055:
            v12 = @"SELECT_AUDIO_VOLUME_LOUD";
            break;
          case 3056:
            v12 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";
            break;
          case 3057:
            v12 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";
            break;
          case 3058:
            v12 = @"RESUME_PREV_NAV";
            break;
          case 3059:
            v12 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";
            break;
          case 3060:
            v12 = @"ACCEPT_REROUTE";
            break;
          case 3061:
            v12 = @"DISMISS_REROUTE";
            break;
          case 3062:
            v12 = @"ATTEMPT_END_NAV";
            break;
          case 3063:
            v12 = @"DISPLAY_BANNER";
            break;
          case 3064:
            v12 = @"VIEW_BANNER_DETAILS";
            break;
          case 3065:
            v12 = @"ENTER_GUIDANCE";
            break;
          case 3066:
            v12 = @"AUTO_ADVANCE_GUIDANCE";
            break;
          case 3067:
            v12 = @"TAP_OPEN_WALLET";
            break;
          case 3068:
            v12 = @"SELECT_VOICE_GUIDANCE_ALL";
            break;
          case 3069:
            v12 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";
            break;
          case 3070:
            v12 = @"SELECT_VOICE_GUIDANCE_NONE";
            break;
          case 3071:
            v12 = @"DISPLAY_CARD";
            break;
          case 3072:
            v12 = @"RENDER_ROUTE";
            break;
          case 3073:
            v12 = @"DISPLAY_JUNCTION_VIEW";
            break;
          case 3074:
            v12 = @"SELECT_DEPARTURE";
            break;
          case 3075:
            v12 = @"DISPLAY_AR_VIEW_RAISE_BANNER";
            break;
          case 3076:
            v12 = @"DEVICE_RAISE";
            break;
          case 3077:
            v12 = @"ENTER_AR_NAV_VIEW";
            break;
          case 3078:
            v12 = @"EXIT_AR_NAV_VIEW";
            break;
          case 3079:
            v12 = @"AR_CALIBRATION_START";
            break;
          case 3080:
            v12 = @"AR_CALIBRATION_FAILURE";
            break;
          case 3081:
            v12 = @"AR_CALIBRATION_SUCCESS";
            break;
          case 3082:
            v12 = @"DISPLAY_AR_NAV_ARROW";
            break;
          case 3083:
            v12 = @"DISPLAY_AR_NAV_TURN_AROUND";
            break;
          case 3084:
            v12 = @"DISPLAY_GO_OUTSIDE_BANNER";
            break;
          case 3085:
            v12 = @"DISPLAY_AR_DARKNESS_MESSAGE";
            break;
          case 3086:
            v12 = @"DISPLAY_AR_NAV_ENDPOINT";
            break;
          case 3087:
            v12 = @"DISPLAY_ADVISORY_BANNER";
            break;
          case 3088:
            v12 = @"TAP_SHOW_ADVISORY_DETAILS";
            break;
          default:
            if (v7 != 4001)
            {
              goto LABEL_116;
            }

            v12 = @"RECENTER_CURRENT_LOCATION";
            break;
        }
      }
    }

    else if (v7 > 7000)
    {
      if (v7 > 8000)
      {
        if (v7 <= 8005)
        {
          if (v7 <= 8002)
          {
            if (v7 == 8001)
            {
              v12 = @"INVOKE_SIRI_SNIPPET";
            }

            else
            {
              v12 = @"INVOKE_SIRI_DISAMBIGUATION";
            }
          }

          else if (v7 == 8003)
          {
            v12 = @"SHOW_PLACE_DETAILS";
          }

          else if (v7 == 8004)
          {
            v12 = @"ANSWER_REROUTE_SUGGESTION";
          }

          else
          {
            v12 = @"SUGGEST_NAV_REROUTE";
          }

          goto LABEL_1426;
        }

        if (v7 <= 8008)
        {
          if (v7 == 8006)
          {
            v12 = @"GET_NAV_STATUS";
          }

          else if (v7 == 8007)
          {
            v12 = @"REPEAT_NAV_STATUS";
          }

          else
          {
            v12 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }

          goto LABEL_1426;
        }

        switch(v7)
        {
          case 0x1F49:
            v12 = @"INVOKE_SIRI";
            goto LABEL_1426;
          case 0x1F4A:
            v12 = @"DISPLAY_SIRI_ERROR_MESSAGE";
            goto LABEL_1426;
          case 0x1F4B:
            v12 = @"DISPLAY_NO_RESULTS_MESSAGE";
            goto LABEL_1426;
        }

        goto LABEL_116;
      }

      switch(v7)
      {
        case 7001:
          v12 = @"EXPAND_TRANSIT_SYSTEM";
          break;
        case 7002:
          v12 = @"COLLAPSE_TRANSIT_SYSTEM";
          break;
        case 7003:
          v12 = @"SHOW_MORE_DEPARTURES";
          break;
        case 7004:
          v12 = @"VIEW_TRANSIT_LINE";
          break;
        case 7005:
          v12 = @"CANCEL_VIEW_TRANSIT_LINE";
          break;
        case 7006:
          v12 = @"TAP_TRANSIT_ATTRIBUTION";
          break;
        case 7007:
          v12 = @"TAP_TRANSIT_ADVISORY";
          break;
        case 7008:
          v12 = @"MORE_DETAILS_TRANSIT_ADVISORY";
          break;
        case 7009:
          v12 = @"SUBSCRIBE_LINE_INCIDENT";
          break;
        case 7010:
          v12 = @"UNSUBSCRIBE_LINE_INCIDENT";
          break;
        case 7011:
          v12 = @"TAP_NEAREST_STATION";
          break;
        case 7012:
          v12 = @"TAP_NEAREST_STOP";
          break;
        case 7013:
          v12 = @"TAP_CONNECTION";
          break;
        case 7014:
          v12 = @"GET_TICKETS";
          break;
        case 7015:
          v12 = @"OPEN_SCHEDULECARD_DATETIME";
          break;
        case 7016:
          v12 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";
          break;
        case 7017:
          v12 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";
          break;
        case 7018:
          v12 = @"VIEW_ON_MAP";
          break;
        case 7019:
          v12 = @"FORCE_UPDATE_DEPARTURE_INFO";
          break;
        case 7020:
          v12 = @"TAP_TRANSIT_LINE_INFO";
          break;
        case 7021:
          v12 = @"TAP_ATTRIBUTION_CELL";
          break;
        case 7022:
          v12 = @"TAP_NEXT_DEPARTURES";
          break;
        case 7023:
          v12 = @"VIEW_BANNER";
          break;
        case 7024:
          v12 = @"GET_SHOWTIMES";
          break;
        case 7025:
          v12 = @"MAKE_APPOINTMENT";
          break;
        case 7026:
          v12 = @"RESERVE_PARKING";
          break;
        case 7027:
          v12 = @"RESERVE_ROOM";
          break;
        case 7028:
          v12 = @"WAITLIST";
          break;
        case 7029:
          v12 = @"ORDER_TAKEOUT";
          break;
        case 7030:
          v12 = @"RESERVE";
          break;
        default:
          goto LABEL_116;
      }
    }

    else
    {
      switch(v7)
      {
        case 6003:
          v12 = @"GET_DIRECTIONS";
          break;
        case 6004:
          v12 = @"TAP_FLYOVER_TOUR";
          break;
        case 6005:
          v12 = @"REMOVE_PIN";
          break;
        case 6006:
          v12 = @"TAP_PHOTO";
          break;
        case 6007:
          v12 = @"TAP_MAPS_VIEW";
          break;
        case 6008:
          v12 = @"TAP_ADDRESS";
          break;
        case 6009:
          v12 = @"CALL";
          break;
        case 6010:
          v12 = @"TAP_URL";
          break;
        case 6011:
          v12 = @"SHOW_TODAY_HOURS";
          break;
        case 6012:
          v12 = @"SHOW_ALL_HOURS";
          break;
        case 6013:
          v12 = @"SHARE";
          break;
        case 6015:
          v12 = @"ADD_TO_FAVORITES";
          break;
        case 6016:
          v12 = @"ADD_CONTACT";
          break;
        case 6018:
          v12 = @"PUNCH_OUT_PHOTO";
          break;
        case 6019:
          v12 = @"PUNCH_OUT_USEFUL_TO_KNOW";
          break;
        case 6020:
          v12 = @"PUNCH_OUT_OPEN_APP";
          break;
        case 6021:
          v12 = @"PUNCH_OUT_SINGLE_REVIEW";
          break;
        case 6022:
          v12 = @"PUNCH_OUT_CHECK_IN";
          break;
        case 6023:
          v12 = @"PUNCH_OUT_MORE_INFO";
          break;
        case 6024:
          v12 = @"PUNCH_OUT_WRITE_REVIEW";
          break;
        case 6025:
          v12 = @"PUNCH_OUT_ADD_PHOTO";
          break;
        case 6026:
          v12 = @"TAP_GRID_VIEW";
          break;
        case 6027:
          v12 = @"EDIT_LOCATION";
          break;
        case 6029:
          v12 = @"ADD_PHOTO";
          break;
        case 6031:
          v12 = @"RETAKE";
          break;
        case 6032:
          v12 = @"ADD_NOTE";
          break;
        case 6033:
          v12 = @"REMOVE_CAR";
          break;
        case 6034:
          v12 = @"EDIT_NAME";
          break;
        case 6036:
          v12 = @"RESERVE_TABLE";
          break;
        case 6037:
          v12 = @"ADD_TO_QUEUE";
          break;
        case 6038:
          v12 = @"VIEW_BOOKED_TABLE";
          break;
        case 6039:
          v12 = @"VIEW_QUEUED_TABLE";
          break;
        case 6040:
          v12 = @"PUNCH_OUT_THIRD_PARTY_APP";
          break;
        case 6041:
          v12 = @"PUNCH_OUT_LEGAL_LINK";
          break;
        case 6042:
          v12 = @"TAP_PLACECARD_HEADER";
          break;
        case 6043:
          v12 = @"REMOVE_FROM_FAVORITES";
          break;
        case 6044:
          v12 = @"VIEW_CONTACT";
          break;
        case 6045:
          v12 = @"CHAT";
          break;
        case 6046:
          v12 = @"FIND_STORES";
          break;
        case 6047:
          v12 = @"TAP_PARENT";
          break;
        case 6048:
          v12 = @"SCROLL_LEFT_PHOTOS";
          break;
        case 6049:
          v12 = @"SCROLL_RIGHT_PHOTOS";
          break;
        case 6050:
          v12 = @"PUNCH_OUT";
          break;
        case 6051:
          v12 = @"TAP_ENTER_MUNIN";
          break;
        case 6052:
          v12 = @"TAP_RECOMMENDED_DISHES_PHOTO";
          break;
        case 6053:
          v12 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";
          break;
        case 6054:
          v12 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";
          break;
        case 6055:
          v12 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";
          break;
        case 6056:
          v12 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";
          break;
        case 6057:
          v12 = @"SHOW_LINKED_SERVICE_HOURS";
          break;
        case 6058:
          v12 = @"ENTER_LOOK_AROUND";
          break;
        case 6059:
          v12 = @"EXIT_LOOK_AROUND";
          break;
        case 6060:
          v12 = @"TAP_ENTER_LOOK_AROUND_VIEW";
          break;
        case 6061:
          v12 = @"TAP_ENTER_LOOK_AROUND_PIP";
          break;
        case 6062:
          v12 = @"EXPAND_LOOK_AROUND_VIEW";
          break;
        case 6063:
          v12 = @"CLOSE_LOOK_AROUND";
          break;
        case 6064:
          v12 = @"COLLAPSE_LOOK_AROUND_VIEW";
          break;
        case 6065:
          v12 = @"TAP_SHOW_ACTIONS";
          break;
        case 6066:
          v12 = @"TAP_HIDE_LABELS";
          break;
        case 6067:
          v12 = @"TAP_SHOW_LABELS";
          break;
        case 6068:
          v12 = @"TAP_SHOW_DETAILS";
          break;
        case 6069:
          v12 = @"PAN_LOOK_AROUND";
          break;
        case 6070:
          v12 = @"TAP_LOOK_AROUND_THUMBNAIL";
          break;
        case 6071:
          v12 = @"TAP_LANDMARK";
          break;
        case 6072:
          v12 = @"TAP_SCENE";
          break;
        case 6073:
          v12 = @"SHOW_LINKED_BUSINESS_HOURS";
          break;
        case 6074:
          v12 = @"TAP_PLACECARD_SHORTCUT";
          break;
        case 6075:
          v12 = @"SHOW_ALL_LOCATIONS_INSIDE";
          break;
        case 6076:
          v12 = @"SHOW_ALL_SIMILAR_LOCATIONS";
          break;
        case 6077:
          v12 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";
          break;
        case 6078:
          v12 = @"TAP_PARENT_LOCATION";
          break;
        case 6079:
          v12 = @"TAP_SIMILAR_LOCATION";
          break;
        case 6080:
          v12 = @"TAP_LOCATION_INSIDE";
          break;
        case 6081:
          v12 = @"TAP_LOCATION_AT_ADDRESS";
          break;
        case 6082:
          v12 = @"CLOSE_ROUTE_GENIUS";
          break;
        case 6083:
          v12 = @"LOAD_WEB_CONTENT";
          break;
        case 6084:
          v12 = @"SCROLL_FORWARD_WEB_CONTENT";
          break;
        case 6085:
          v12 = @"SCROLL_BACKWARD_WEB_CONTENT";
          break;
        case 6086:
          v12 = @"TAP_WEB_CONTENT";
          break;
        case 6087:
          v12 = @"SHOW_PHOTO_VIEWER";
          break;
        case 6088:
          v12 = @"SHOW_LAST_PAGE";
          break;
        case 6089:
          v12 = @"TAP_VIEW_APP";
          break;
        case 6090:
          v12 = @"TAP_APP_CLIP";
          break;
        case 6091:
          v12 = @"DEAD_BATTERY";
          break;
        case 6092:
          v12 = @"DISMISS_LOW_BATTERY_ALERT";
          break;
        case 6093:
          v12 = @"DISMISS_OUT_OF_RANGE_ALERT";
          break;
        case 6094:
          v12 = @"FAILED_TO_LOAD_EV_STATUS";
          break;
        case 6095:
          v12 = @"LOW_BATTERY_ALERT";
          break;
        case 6096:
          v12 = @"PAUSE_ROUTE";
          break;
        case 6097:
          v12 = @"TAP_ADD_STOP";
          break;
        case 6098:
          v12 = @"TAP_CHARGE_POINT";
          break;
        case 6099:
          v12 = @"TAP_OUT_OF_RANGE_ALERT";
          break;
        case 6100:
          v12 = @"SCROLL_DOWN_PHOTOS";
          break;
        case 6101:
          v12 = @"SCROLL_UP_PHOTOS";
          break;
        case 6102:
          v12 = @"TAP_MORE_PHOTOS";
          break;
        case 6103:
          v12 = @"TAP_TO_CONFIRM_INCIDENT";
          break;
        case 6104:
          v12 = @"SHOW_INCIDENT";
          break;
        case 6105:
          v12 = @"REVEAL_APP_CLIP";
          break;
        case 6106:
          v12 = @"ORDER_DELIVERY";
          break;
        case 6107:
          v12 = @"VIEW_MENU";
          break;
        case 6108:
          v12 = @"TAP_EDIT_STOPS";
          break;
        case 6109:
          v12 = @"LEARN_MORE_WEB_CONTENT";
          break;
        case 6110:
          v12 = @"MAKE_APPOINTMENT_WEB_CONTENT";
          break;
        case 6111:
          v12 = @"REVEAL_SHOWCASE";
          break;
        case 6112:
          v12 = @"TAP_ACTION_BAR";
          break;
        default:
          goto LABEL_116;
      }
    }

LABEL_1426:
    v13 = v12;
    if (v6 <= 1000)
    {
      v14 = @"UI_TARGET_UNKNOWN";
      switch(v6)
      {
        case 0:
          goto LABEL_1996;
        case 1:
          v14 = @"UI_TARGET_POI";
          break;
        case 2:
          v14 = @"UI_TARGET_SEARCH_RESULT_LIST";
          break;
        case 3:
          v14 = @"UI_TARGET_POPULAR_NEARBY_LIST";
          break;
        case 4:
          v14 = @"UI_TARGET_CALLOUT";
          break;
        case 5:
          v14 = @"UI_TARGET_SEARCH_PIN";
          break;
        case 6:
          v14 = @"UI_TARGET_DROPPED_PIN";
          break;
        case 7:
          v14 = @"UI_TARGET_TRANSIT_LINE";
          break;
        case 8:
          v14 = @"SEARCH_TRAY";
          break;
        case 9:
          v14 = @"SEARCH_TRAY_BROWSE";
          break;
        case 10:
          v14 = @"SEARCH_TRAY_POPULAR_NEARBY";
          break;
        case 11:
          v14 = @"SEARCH_TRAY_AC";
          break;
        case 12:
          v14 = @"SEARCH_TRAY_AC_INTERMEDIATE";
          break;
        case 13:
          v14 = @"SEARCH_TRAY_NO_QUERY";
          break;
        case 14:
          v14 = @"AR_WALKING_LEGAL_TRAY";
          break;
        case 15:
          v14 = @"RAISE_TO_START_AR_TRAY";
          break;
        case 16:
          v14 = @"EVENTS_ADVISORY_DETAILS_PAGE";
          break;
        case 17:
          v14 = @"INCIDENT_REPORT_TRAY_CARPLAY";
          break;
        case 18:
          v14 = @"HIGHLIGHTED_AREA";
          break;
        case 19:
          v14 = @"CURATED_COLLECTIONS_HOME";
          break;
        case 20:
          v14 = @"TRAVEL_PREFERENCES_TRAY";
          break;
        case 21:
          v14 = @"RESULT_TRAY_SEARCH";
          break;
        case 22:
          v14 = @"SINGLE_CARD_FILTER";
          break;
        case 23:
          v14 = @"FULL_CARD_FILTER";
          break;
        case 24:
          v14 = @"ACCOUNT_PRIVACY_TRAY";
          break;
        case 25:
          v14 = @"APPLE_RATINGS_HISTORY_TRAY";
          break;
        case 26:
          v14 = @"CURATED_COLLECTIONS_HOME_FILTERED";
          break;
        case 27:
          v14 = @"CITY_MENU";
          break;
        case 28:
          v14 = @"CURATED_COLLECTIONS_HOME_CONDENSED";
          break;
        case 29:
          v14 = @"ACCOUNT_TRAY";
          break;
        case 30:
          v14 = @"QUICK_ACTION_TRAY";
          break;
        case 31:
          v14 = @"SUBMIT_TRIP_FEEDBACK";
          break;
        case 32:
          v14 = @"RAP_PLACE_ISSUE_DETAILS";
          break;
        case 33:
          v14 = @"RAP_GUIDES_DETAILS";
          break;
        case 34:
          v14 = @"RAP_BAD_DIRECTIONS_DETAILS";
          break;
        case 35:
          v14 = @"RAP_ADD_MAP_DETAILS";
          break;
        case 36:
          v14 = @"WATCH_COMPLICATION";
          break;
        case 37:
          v14 = @"RAP_NAV_MENU";
          break;
        case 38:
          v14 = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
          break;
        case 39:
          v14 = @"RAP_REPORT_MENU";
          break;
        case 40:
          v14 = @"RAP_CURATED_COLLECTION_MENU";
          break;
        case 41:
          v14 = @"RAP_REPORT_CARD_DETAILS";
          break;
        case 42:
          v14 = @"NOTIFICATION_NO_LOCATION_TRANSIT";
          break;
        case 43:
          v14 = @"RAP_STREET_ISSUE_DETAILS";
          break;
        case 44:
          v14 = @"NEARBY_TRANSIT_CARD";
          break;
        case 45:
          v14 = @"WATCH_NAV_MENU";
          break;
        case 46:
          v14 = @"GENERIC_ADVISORY_PAGE";
          break;
        case 47:
          v14 = @"USER_PROFILE_TRAY";
          break;
        case 48:
          v14 = @"MEDIA_APP_MENU";
          break;
        case 49:
          v14 = @"TEMPLATE_PLACE_TRAY";
          break;
        case 50:
          v14 = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
          break;
        case 51:
          v14 = @"ALLOW_NOTIFICATION_DIALOG";
          break;
        case 52:
          v14 = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
          break;
        case 53:
          v14 = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
          break;
        case 54:
          v14 = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
          break;
        case 55:
          v14 = @"NOTIFICATION_CONSENT_PROMPT";
          break;
        case 56:
          v14 = @"QUICK_ACTION_TRAY_VENDORS_MENU";
          break;
        case 57:
          v14 = @"PLACECARD_TRAY_VENDORS_MENU";
          break;
        case 58:
          v14 = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
          break;
        case 59:
          v14 = @"SEARCH_ALONG_ROUTE_TRAY";
          break;
        case 60:
          v14 = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
          break;
        case 61:
          v14 = @"PLACECARD_SHOWCASE_MENU";
          break;
        case 62:
          v14 = @"RAP_INLINE_ADD_DETAILS";
          break;
        case 63:
          v14 = @"RAP_EDIT_MENU_DETAILS";
          break;
        case 64:
          v14 = @"RAP_SUBMISSION_PROMPT";
          break;
        case 65:
          v14 = @"RAP_PLACECARD_EDIT_MENU";
          break;
        case 66:
          v14 = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
          break;
        case 67:
          v14 = @"INCIDENT_REPORT_MENU";
          break;
        case 68:
          v14 = @"RAP_SELECT_BAD_ROUTES_STEPS";
          break;
        case 69:
          v14 = @"RAP_SELECT_BAD_ROUTES";
          break;
        case 70:
          v14 = @"SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 71:
          v14 = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 72:
          v14 = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
          break;
        case 73:
          v14 = @"SPOTLIGHT_BUSINESS_ENTITY";
          break;
        case 74:
          v14 = @"NOTIFICATION_ARP";
          break;
        case 75:
          v14 = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
          break;
        case 76:
          v14 = @"YOUR_PHOTOS_ALBUM";
          break;
        case 77:
          v14 = @"ARP_PHOTO_CREDIT";
          break;
        case 78:
          v14 = @"RAP_OUTREACH_REVIEWED_REPORT";
          break;
        case 79:
          v14 = @"RAP_REPORT_MENU_MORE";
          break;
        case 80:
          v14 = @"WATCH_MAPS_SETTINGS";
          break;
        case 81:
          v14 = @"OFFLINE_FEATURE_PROMPT";
          break;
        case 82:
          v14 = @"EXPIRED_MAPS_DETAILS";
          break;
        case 83:
          v14 = @"MAPS_VIEW";
          break;
        case 84:
          v14 = @"NOTIFICATION_OFFLINE";
          break;
        case 85:
          v14 = @"EXPIRED_MAPS_MANAGEMENT";
          break;
        case 86:
          v14 = @"OFFLINE_NEW_MAPS_MANAGEMENT";
          break;
        case 87:
          v14 = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
          break;
        case 88:
          v14 = @"OFFLINE_MAPS_MANAGEMENT";
          break;
        case 89:
          v14 = @"REGION_SELECTOR";
          break;
        case 90:
          v14 = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
          break;
        case 91:
          v14 = @"FIND_MY_ETA_SHARING_TRAY";
          break;
        case 92:
          v14 = @"WATCH_PLACE";
          break;
        case 93:
          v14 = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
          break;
        case 94:
          v14 = @"WATCH_ROUTE_PLANNING_MAP";
          break;
        case 95:
          v14 = @"WATCH_NAV_WALKING_CONTROLS";
          break;
        case 96:
          v14 = @"WATCH_NAV_CYCLING_CONTROLS";
          break;
        case 97:
          v14 = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
          break;
        case 98:
          v14 = @"WATCH_NAV_TRANSIT_CONTROLS";
          break;
        case 99:
          v14 = @"WATCH_SEARCH_RESULTS_CAROUSEL";
          break;
        case 100:
          v14 = @"WATCH_NAV_DRIVING_CONTROLS";
          break;
        case 101:
          v14 = @"RESULTS_TRAY_SEARCH";
          break;
        case 102:
          v14 = @"RESULTS_TRAY_BROWSE";
          break;
        case 103:
          v14 = @"RESULTS_TRAY_FAVORITES";
          break;
        case 104:
          v14 = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
          break;
        case 105:
          v14 = @"RESULTS_TRAY_CLUSTER";
          break;
        case 106:
          v14 = @"RESULTS_TRAY_VENUE_BROWSE";
          break;
        case 107:
          v14 = @"WATCH_MAP_RESULTS";
          break;
        case 108:
          v14 = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
          break;
        case 109:
          v14 = @"WATCH_PLACES";
          break;
        case 110:
          v14 = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
          break;
        case 111:
          v14 = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
          break;
        case 112:
          v14 = @"DOWNLOADED_MAPS_DETAILS";
          break;
        case 113:
          v14 = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
          break;
        case 114:
          v14 = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
          break;
        case 115:
          v14 = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
          break;
        case 116:
          v14 = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
          break;
        case 117:
          v14 = @"WATCH_ROUTE_OPTIONS";
          break;
        case 118:
          v14 = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
          break;
        case 119:
          v14 = @"WATCH_MORE_GUIDES";
          break;
        case 120:
          v14 = @"WATCH_RECENTLY_VIEWED";
          break;
        case 121:
          v14 = @"EV_SUCCESS_TRAY";
          break;
        case 122:
          v14 = @"PREFERRED_NETWORK_SELECTION_TRAY";
          break;
        case 123:
          v14 = @"PREFERRED_NETWORK_TRAY";
          break;
        case 124:
          v14 = @"WALKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 125:
          v14 = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
          break;
        case 126:
          v14 = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
          break;
        case 127:
          v14 = @"AC_KEYBOARD_TRAY";
          break;
        case 128:
          v14 = @"MORE_RELATED_TRAILS";
          break;
        case 129:
          v14 = @"MORE_RELATED_TRAILHEADS";
          break;
        case 130:
          v14 = @"ROUTING_TRAY_CUSTOM_ROUTE";
          break;
        case 131:
          v14 = @"CUSTOM_ROUTE_CREATION_TRAY";
          break;
        case 132:
          v14 = @"ROUTING_TRAY_CURATED_HIKE";
          break;
        case 133:
          v14 = @"MORE_CURATED_HIKES";
          break;
        case 134:
          v14 = @"CUSTOM_ROUTE_ONBOARDING";
          break;
        case 135:
          v14 = @"LIBRARY_ROUTES";
          break;
        case 136:
          v14 = @"HIKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 137:
          v14 = @"MY_LIBRARY";
          break;
        case 138:
          v14 = @"EDIT_NOTE_TRAY";
          break;
        case 139:
          v14 = @"CREATE_NOTE_TRAY";
          break;
        case 140:
          v14 = @"LIBRARY_PLACES";
          break;
        case 141:
          v14 = @"WATCH_ACCOUNT";
          break;
        case 142:
          v14 = @"WATCH_DOWNLOADED_MAPS";
          break;
        case 143:
          v14 = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
          break;
        case 144:
          v14 = @"VISUAL_INTELLIGENCE_DETECTION";
          break;
        case 145:
          v14 = @"VISUAL_INTELLIGENCE_SNIPPET";
          break;
        case 146:
          v14 = @"FAMILIAR_ROUTE_NOTIFICATION";
          break;
        case 147:
          v14 = @"LIBRARY_VISITED";
          break;
        case 148:
          v14 = @"VISITED_PLACES_ONBOARDING";
          break;
        case 149:
          v14 = @"NOTIFICATION_VISITED_PLACES";
          break;
        case 150:
          v14 = @"LOCATION_CORRECTION_TRAY";
          break;
        case 151:
          v14 = @"MAPS_WIDGET_VISITED_PLACE";
          break;
        case 152:
          v14 = @"REMOVE_VISIT_TRAY";
          break;
        case 153:
          v14 = @"NEARBY_SUGGESTION_TRAY";
          break;
        case 154:
          v14 = @"FAMILIAR_ROUTES_ONBOARDING";
          break;
        case 155:
          v14 = @"ROUTING_TRAY_CARPLAY";
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
          goto LABEL_1995;
        case 201:
          v14 = @"PLACECARD_TRAY";
          break;
        case 202:
          v14 = @"WEB_MODULE";
          break;
        case 203:
          v14 = @"ACTION_BAR";
          break;
        case 204:
          v14 = @"ACTION_BAR_VENDORS_MENU";
          break;
        case 250:
          v14 = @"ADD_FAVORITE_TRAY";
          break;
        case 251:
          v14 = @"COLLECTION_LIST";
          break;
        case 252:
          v14 = @"COLLECTION_VIEW";
          break;
        case 253:
          v14 = @"FAVORITE_DETAILS";
          break;
        case 254:
          v14 = @"FAVORITES_TRAY";
          break;
        case 255:
          v14 = @"SHARED_COLLECTION";
          break;
        case 256:
          v14 = @"SHARED_COLLECTION_VIEW";
          break;
        case 257:
          v14 = @"RECENTLY_VIEWED";
          break;
        case 258:
          v14 = @"SHARED_WEB_COLLECTION";
          break;
        case 259:
          v14 = @"CURATED_COLLECTION_VIEW";
          break;
        case 260:
          v14 = @"FEATURED_COLLECTIONS";
          break;
        case 261:
          v14 = @"PUBLISHER_TRAY";
          break;
        case 262:
          v14 = @"SHARED_CURATED_COLLECTION_VIEW";
          break;
        case 263:
          v14 = @"CURATED_COLLECTION_NOTIFICATION";
          break;
        case 264:
          v14 = @"CURATED_COLLECTION_LIST";
          break;
        case 265:
          v14 = @"PUBLISHER_LIST";
          break;
        case 266:
          v14 = @"WATCH_CURATED_COLLECTION_VIEW";
          break;
        case 267:
          v14 = @"SIRI_SUGGESTION_SHARED_ETA_SUBLIST";
          break;
        case 268:
          v14 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY_SUBLIST";
          break;
        case 301:
          v14 = @"ROUTING_TRAY_DRIVING";
          break;
        case 302:
          v14 = @"ROUTING_TRAY_WALKING";
          break;
        case 303:
          v14 = @"ROUTING_TRAY_TRANSIT";
          break;
        case 304:
          v14 = @"ROUTING_TRAY_RIDESHARE";
          break;
        case 305:
          v14 = @"ROUTING_TRAY_CYCLING";
          break;
        case 306:
          v14 = @"ROUTING_TRAY_VIRTUAL_GARAGE_VIEW";
          break;
        case 401:
          v14 = @"NAV_TRAY_DRIVING";
          break;
        case 402:
          v14 = @"NAV_TRAY_WALKING";
          break;
        case 403:
          v14 = @"NAV_TRAY_TRANSIT";
          break;
        case 404:
          v14 = @"NAV_TRAY_CYCLING";
          break;
        case 501:
          v14 = @"MAP_PLACECARD";
          break;
        case 502:
          v14 = @"MAP_SEARCH";
          break;
        case 503:
          v14 = @"MAP_RESULTS";
          break;
        case 504:
          v14 = @"MAP_ROUTING";
          break;
        case 505:
          v14 = @"MAP_NAV";
          break;
        case 506:
          v14 = @"MAP_RESULTS_SEARCH_ALONG_ROUTE";
          break;
        case 507:
          v14 = @"MAP_TRAFFIC_INCIDENT";
          break;
        case 508:
          v14 = @"MAP_FULL_SCREEN";
          break;
        case 509:
          v14 = @"MAP_DRIVE";
          break;
        case 510:
          v14 = @"MAP_LAUNCH_AND_GO";
          break;
        case 511:
          v14 = @"MAP_VIEW";
          break;
        case 601:
          v14 = @"MAPS_SETTINGS";
          break;
        case 602:
          v14 = @"MAPS_PREFERENCES";
          break;
        case 603:
          v14 = @"RAP";
          break;
        case 604:
          v14 = @"ROUTING_DRIVING_DETAILS";
          break;
        case 605:
          v14 = @"ROUTING_WALKING_DETAILS";
          break;
        case 606:
          v14 = @"ROUTING_TRANSIT_DETAILS";
          break;
        case 607:
          v14 = @"ROUTING_EDITOR";
          break;
        case 608:
          v14 = @"NAV_DRIVING_DETAILS";
          break;
        case 609:
          v14 = @"NAV_WALKING_DETAILS";
          break;
        case 610:
          v14 = @"NAV_TRANSIT_DETAILS";
          break;
        case 611:
          v14 = @"NAV_AUDIO_SETTINGS";
          break;
        case 612:
          v14 = @"PHOTO_VIEWER_ALL";
          break;
        case 613:
          v14 = @"PHOTO_VIEWER_SINGLE";
          break;
        case 614:
          v14 = @"ROUTE_OPTIONS_TRANSIT";
          break;
        case 615:
          v14 = @"TRAFFIC_INCIDENT_TRAY";
          break;
        case 616:
          v14 = @"NAV_DIRECTIONS_BANNER_DRIVING";
          break;
        case 617:
          v14 = @"NAV_DIRECTIONS_BANNER_WALKING";
          break;
        case 618:
          v14 = @"NAV_DIRECTIONS_BANNER_TRANSIT";
          break;
        case 619:
          v14 = @"REFINE_SEARCH_SUGGESTION_AREA";
          break;
        case 620:
          v14 = @"ADD_PHOTO_SHEET";
          break;
        case 621:
          v14 = @"ADD_PLACE_SHEET";
          break;
        case 622:
          v14 = @"SHARE_SHEET";
          break;
        case 623:
          v14 = @"EDIT_LOCATION_SHEET";
          break;
        case 624:
          v14 = @"ADD_CONTACT_SHEET";
          break;
        case 625:
          v14 = @"EDIT_NAME_SHEET";
          break;
        case 626:
          v14 = @"DRIVING_NAV_SETTINGS";
          break;
        case 627:
          v14 = @"TRANSIT_SETTINGS";
          break;
        case 628:
          v14 = @"TRANSIT_ADVISORY_SHEET";
          break;
        case 629:
          v14 = @"REMOVE_CAR_SHEET";
          break;
        case 630:
          v14 = @"ROUTE_OPTIONS_DRIVING";
          break;
        case 631:
          v14 = @"ROUTE_OPTIONS_DATETIME";
          break;
        case 632:
          v14 = @"TRANSIT_ADVISORY_BANNER";
          break;
        case 633:
          v14 = @"BOOK_TABLE_SELECT_TIME";
          break;
        case 634:
          v14 = @"BOOK_TABLE_MORE_OPTIONS";
          break;
        case 635:
          v14 = @"BOOK_TABLE_READY";
          break;
        case 636:
          v14 = @"BOOK_TABLE_BOOKED";
          break;
        case 637:
          v14 = @"TRANSIT_LINE_CLUSTER_SHEET";
          break;
        case 638:
          v14 = @"TRANSIT_LINE_LIST_SHEET";
          break;
        case 639:
          v14 = @"TRANSIT_BALANCE_BANNER";
          break;
        case 640:
          v14 = @"WEATHER_ICON";
          break;
        case 641:
          v14 = @"HELP_IMPROVE_MAPS_DIALOG";
          break;
        case 642:
          v14 = @"HELP_IMPROVE_COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 643:
          v14 = @"COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 644:
          v14 = @"FLOOR_PICKER";
          break;
        case 645:
          v14 = @"VENUE_LIST";
          break;
        case 646:
          v14 = @"AR_MODE";
          break;
        case 647:
          v14 = @"ROUTING_TRANSIT_TICKETS_SHEET";
          break;
        case 648:
          v14 = @"LINKED_SERVICE_HOURS";
          break;
        case 649:
          v14 = @"SHARE_ETA_TRAY";
          break;
        case 650:
          v14 = @"ETA_UPDATE_TRAY";
          break;
        case 651:
          v14 = @"SCHEDULECARD_TRAY";
          break;
        case 652:
          v14 = @"AR_NAV";
          break;
        case 653:
          v14 = @"TAP_TRANSIT_ACCESS_POINT";
          break;
        case 654:
          v14 = @"LOCATIONS_INSIDE";
          break;
        case 655:
          v14 = @"SIMILAR_LOCATIONS";
          break;
        case 656:
          v14 = @"LOCATIONS_AT_ADDRESS";
          break;
        case 657:
          v14 = @"NAV_DIRECTIONS_BANNER_CYCLING";
          break;
        case 658:
          v14 = @"ROUTE_OPTIONS_CYCLING";
          break;
        case 659:
          v14 = @"EV_CONNECTION_TRAY";
          break;
        case 660:
          v14 = @"VIRTUAL_GARAGE";
          break;
        case 661:
          v14 = @"VIRTUAL_GARAGE_BANNER";
          break;
        case 662:
          v14 = @"VIRTUAL_GARAGE_VEHICLE_VIEW";
          break;
        case 663:
          v14 = @"ADVISORY_DETAILS_PAGE";
          break;
        case 664:
          v14 = @"APP_CLIP_NOTIFICATION";
          break;
        case 665:
          v14 = @"PHOTO_VIEWER_GALLERY";
          break;
        case 666:
          v14 = @"RECOMMENDATION_CARD";
          break;
        case 667:
          v14 = @"INCIDENT_REPORT_TRAY";
          break;
        case 668:
          v14 = @"MAPS_WIDGET_DISPLAY";
          break;
        case 669:
          v14 = @"VISUAL_LOCATION_FRAMEWORK";
          break;
        case 670:
          v14 = @"APP_CLIP_TRAY";
          break;
        case 671:
          v14 = @"LICENSE_PLATE_SUGGESTION_PAGE";
          break;
        case 672:
          v14 = @"NOTIFICATION_ADD_PLATE";
          break;
        case 673:
          v14 = @"MAPS_RESULTS";
          break;
        case 674:
          v14 = @"MAPS_WIDGET_APP_CONNECTION";
          break;
        case 675:
          v14 = @"MAPS_WIDGET_CURRENT_LOCATION";
          break;
        case 676:
          v14 = @"MAPS_WIDGET_CURRENT_NAV";
          break;
        case 677:
          v14 = @"MAPS_WIDGET_ETA";
          break;
        case 678:
          v14 = @"MAPS_WIDGET_TRANSIT";
          break;
        case 679:
          v14 = @"MAPS_WIDGET_UPC_DESTINATION";
          break;
        case 680:
          v14 = @"WIDGET_CREATION_TRAY";
          break;
        case 681:
          v14 = @"MAPS_WIDGET_HOME";
          break;
        case 682:
          v14 = @"MAPS_WIDGET_PARKED_CAR";
          break;
        case 683:
          v14 = @"MAPS_WIDGET_POI";
          break;
        case 684:
          v14 = @"MAPS_WIDGET_SCHOOL";
          break;
        case 685:
          v14 = @"MAPS_WIDGET_WORK";
          break;
        case 686:
          v14 = @"AIRPORT_NOTIFICATION";
          break;
        case 687:
          v14 = @"MAPS_WIDGET_EMPTY";
          break;
        case 688:
          v14 = @"COARSE_LOCATION_OPTIONS_PROMPT";
          break;
        case 689:
          v14 = @"ALLOW_PRECISE_LOCATION_PROMPT";
          break;
        case 690:
          v14 = @"SHARE_MY_LOCATION";
          break;
        case 691:
          v14 = @"MARK_MY_LOCATION";
          break;
        case 692:
          v14 = @"AIRPORT_NOTIFICATION_WATCH";
          break;
        case 693:
          v14 = @"EDIT_FAVORITE";
          break;
        case 694:
          v14 = @"ROUTING_CYCLING_DETAILS";
          break;
        case 695:
          v14 = @"NAV_CYCLING_DETAILS";
          break;
        case 696:
          v14 = @"MAPS_SUGGESTION_WIDGET";
          break;
        case 697:
          v14 = @"ARP_TIPKIT";
          break;
        case 698:
          v14 = @"ARP_PRIVACY";
          break;
        case 699:
          v14 = @"ROUTE_OPTIONS_WALKING";
          break;
        case 701:
          v14 = @"SAFARI_SEARCH";
          break;
        case 702:
          v14 = @"SPOTLIGHT_SEARCH";
          break;
        case 703:
          v14 = @"SAFARI_MAPS_SEARCH_RESULTS";
          break;
        case 704:
          v14 = @"SPOTLIGHT_MAPS_SEARCH_RESULTS";
          break;
        case 705:
          v14 = @"WIDGET_MAPS_DESTINATIONS";
          break;
        case 706:
          v14 = @"WIDGET_MAPS_TRANSIT";
          break;
        case 707:
          v14 = @"WIDGET_MAPS_NEARBY";
          break;
        case 708:
          v14 = @"NOTIFICATION_FIND_MY_CAR";
          break;
        case 709:
          v14 = @"CONTROL_CENTER";
          break;
        case 710:
          v14 = @"NOTIFICATION_CENTER";
          break;
        case 711:
          v14 = @"NOTIFICATION_DOOM";
          break;
        case 712:
          v14 = @"NOTIFICATION_VENUES";
          break;
        case 713:
          v14 = @"NOTIFICATION_RAP_UPDATE";
          break;
        case 714:
          v14 = @"NOTIFICATION_TRIP_CANCELLED";
          break;
        case 715:
          v14 = @"NOTIFICATION_STOP_SKIPPED";
          break;
        case 716:
          v14 = @"NOTIFICATION_TRIP_DELAYED";
          break;
        case 717:
          v14 = @"NOTIFICATION_RAP";
          break;
        case 718:
          v14 = @"NOTIFICATION_PROXY_AUTH";
          break;
        case 719:
          v14 = @"NOTIFICATION_PUSH_TO_DEVICE";
          break;
        case 720:
          v14 = @"NOTIFICATION_LOW_FUEL";
          break;
        case 721:
          v14 = @"NOTIFICATION_FIND_MY_CAR_RESET";
          break;
        case 722:
          v14 = @"NOTIFICATION_TRAFFIC_CONDITIONS";
          break;
        case 723:
          v14 = @"NOTIFICATION_SHARED_ETA";
          break;
        case 724:
          v14 = @"NOTIFICATION_SHARED_ETA_UPDATE";
          break;
        case 725:
          v14 = @"ANNOUNCEMENT_TYPE_UNKNOWN";
          break;
        case 726:
          v14 = @"ANNOUNCEMENT_TYPE_GENERAL";
          break;
        case 727:
          v14 = @"ANNOUNCEMENT_TYPE_FLYOVER";
          break;
        case 728:
          v14 = @"ANNOUNCEMENT_TYPE_TRANSIT";
          break;
        case 729:
          v14 = @"ANNOUNCEMENT_TYPE_VENUES";
          break;
        case 730:
          v14 = @"ANNOUNCEMENT_TYPE_ENHANCED_DETAIL";
          break;
        case 731:
          v14 = @"ANNOUNCEMENT_TYPE_LANE_GUIDANCE";
          break;
        case 732:
          v14 = @"ANNOUNCEMENT_TYPE_LOOK_AROUND";
          break;
        case 733:
          v14 = @"APP_SHEET";
          break;
        case 734:
          v14 = @"CZ_ADVISORY_DETAILS_PAGE";
          break;
        case 735:
          v14 = @"SHARE_ETA_CONTACT_TRAY";
          break;
        case 736:
          v14 = @"SIRI_SHARE_ETA";
          break;
        case 737:
          v14 = @"SIRI_SUGGESTION_SHARED_ETA";
          break;
        case 738:
          v14 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY";
          break;
        case 739:
          v14 = @"INCIDENT_ALERT_TRAY";
          break;
        case 740:
          v14 = @"INCIDENT_REPORT_CONFIRMATION_TRAY";
          break;
        case 741:
          v14 = @"RAP_INCIDENT_REPORT_VIEW";
          break;
        case 742:
          v14 = @"SEARCH_ALONG_ROUTE_CATEGORY_TRAY";
          break;
        case 743:
          v14 = @"TRAFFIC_ADVISORY_SHEET";
          break;
        case 801:
          v14 = @"SIRI_PLUGIN_SNIPPET";
          break;
        case 802:
          v14 = @"SIRI_PLUGIN_COMMAND";
          break;
        case 803:
          v14 = @"SIRI_SEARCH_RESULT_LIST";
          break;
        case 804:
          v14 = @"SIRI_DISAMBIGUATION_LIST";
          break;
        case 805:
          v14 = @"SIRI_PLACE_SNIPPET";
          break;
        default:
          if (v6 != 901)
          {
            goto LABEL_1995;
          }

          v14 = @"CHROME";
          break;
      }

      goto LABEL_1996;
    }

    if (v6 <= 1400)
    {
      switch(v6)
      {
        case 1001:
          v14 = @"CARPLAY_NAV";
          break;
        case 1002:
          v14 = @"CARPLAY_EXPLORE";
          break;
        case 1003:
          v14 = @"CARPLAY_DESTINATIONS";
          break;
        case 1004:
          v14 = @"CARPLAY_TRAFFIC_INCIDENT";
          break;
        case 1005:
          v14 = @"CARPLAY_CONTROL";
          break;
        case 1006:
          v14 = @"CARPLAY_PROACTIVE";
          break;
        case 1007:
          v14 = @"CARPLAY_ROUTING";
          break;
        case 1008:
          v14 = @"CARPLAY_MORE_ROUTES";
          break;
        case 1009:
          v14 = @"CARPLAY_SEARCH_ALONG_ROUTE";
          break;
        case 1010:
          v14 = @"CARPLAY_SEARCH";
          break;
        case 1011:
          v14 = @"CARPLAY_SEARCH_RESULTS";
          break;
        case 1012:
          v14 = @"CARPLAY_FAVORITES";
          break;
        case 1013:
          v14 = @"CARPLAY_NAV_CONFIRMATION";
          break;
        case 1014:
          v14 = @"CARPLAY_DESTINATION_SHARING";
          break;
        case 1015:
          v14 = @"CARPLAY_NOTIFICATION_BATTERY";
          break;
        case 1016:
          v14 = @"CARPLAY_NOTIFICATION_DOOM";
          break;
        case 1017:
          v14 = @"CARPLAY_NOTIFICATION_FUEL";
          break;
        case 1018:
          v14 = @"CARPLAY_NOTIFICATION_HYBRID";
          break;
        case 1019:
          v14 = @"CARPLAY_SHARE_ETA_TRAY";
          break;
        case 1020:
          v14 = @"CARPLAY_ETA_UPDATE_TRAY";
          break;
        case 1021:
          v14 = @"CARPLAY_ACTION_TRAY";
          break;
        case 1022:
          v14 = @"CARPLAY_PLACECARD";
          break;
        case 1023:
          v14 = @"CARPLAY_KEYBOARD";
          break;
        case 1024:
          v14 = @"CARPLAY_UI_TARGET_UNKNOWN";
          break;
        case 1025:
          v14 = @"CARPLAY_EDIT_STOPS";
          break;
        case 1100:
          v14 = @"RAP_DIRECTIONS_MENU";
          break;
        case 1101:
          v14 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_LIST";
          break;
        case 1102:
          v14 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_DETAILS_FORM";
          break;
        case 1103:
          v14 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE_FORM";
          break;
        case 1104:
          v14 = @"RAP_DIRECTIONS_ESTIMATED_TIME_INCORRECT_FORM";
          break;
        case 1105:
          v14 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_FORM";
          break;
        case 1106:
          v14 = @"RAP_TRANSIT_MENU";
          break;
        case 1107:
          v14 = @"RAP_STATION_MAP";
          break;
        case 1108:
          v14 = @"RAP_STATION_MENU";
          break;
        case 1109:
          v14 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_MAP";
          break;
        case 1110:
          v14 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_FORM";
          break;
        case 1111:
          v14 = @"RAP_STATION_CLOSED_FORM";
          break;
        case 1112:
          v14 = @"RAP_LINE_MAP";
          break;
        case 1113:
          v14 = @"RAP_LINE_MENU";
          break;
        case 1114:
          v14 = @"RAP_LINE_NAME_FORM";
          break;
        case 1115:
          v14 = @"RAP_LINE_SHAPE_FORM";
          break;
        case 1116:
          v14 = @"RAP_LINE_SCHEDULE_INCORRECT_FORM";
          break;
        case 1117:
          v14 = @"RAP_ADD_PLACE_MENU";
          break;
        case 1118:
          v14 = @"RAP_ADD_POI_MAP";
          break;
        case 1119:
          v14 = @"RAP_CATEGORY_LIST";
          break;
        case 1120:
          v14 = @"RAP_POI_DETAILS_FORM";
          break;
        case 1121:
          v14 = @"RAP_ADD_STREET_MAP";
          break;
        case 1122:
          v14 = @"RAP_STREET_DETAILS_FORM";
          break;
        case 1123:
          v14 = @"RAP_ADD_OTHER_MAP";
          break;
        case 1124:
          v14 = @"RAP_OTHER_DETAILS_FORM";
          break;
        case 1125:
          v14 = @"RAP_CAMERA";
          break;
        case 1126:
          v14 = @"RAP_LABEL_MAP";
          break;
        case 1127:
          v14 = @"RAP_LABEL_DETAILS_FORM";
          break;
        case 1128:
          v14 = @"RAP_SEARCH_MENU";
          break;
        case 1129:
          v14 = @"RAP_SEARCH_UNEXPECTED_RESULT_FORM";
          break;
        case 1130:
          v14 = @"RAP_SEARCH_ADDRESS_INCORRECT_FORM";
          break;
        case 1131:
          v14 = @"RAP_SEARCH_LOCATION_INCORRECT_MAP";
          break;
        case 1132:
          v14 = @"RAP_SEARCH_LOCATION_INCORRECT_DETAILS_FORM";
          break;
        case 1133:
          v14 = @"RAP_SATELLITE_IMAGE_MAP";
          break;
        case 1134:
          v14 = @"RAP_SATELLITE_IMAGE_DETAILS_FORM";
          break;
        case 1135:
          v14 = @"RAP_OTHER_FORM";
          break;
        case 1136:
          v14 = @"RAP_PRIVACY";
          break;
        case 1137:
          v14 = @"RAP_CONFIRMATION";
          break;
        case 1138:
          v14 = @"RAP_POI_MENU";
          break;
        case 1139:
          v14 = @"RAP_SEARCH_AUTOCOMPLETE_MENU";
          break;
        case 1140:
          v14 = @"RAP_ADD_A_PLACE_MAP";
          break;
        case 1141:
          v14 = @"RAP_POI_LOCATION_MAP";
          break;
        case 1142:
          v14 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_MAP";
          break;
        case 1143:
          v14 = @"RAP_POI_CLOSED_FORM";
          break;
        case 1144:
          v14 = @"RAP_CLAIM_BUSINESS_DIALOG";
          break;
        case 1145:
          v14 = @"RAP_BRAND_MENU";
          break;
        case 1146:
          v14 = @"RAP_BRAND_DETAILS_FORM";
          break;
        case 1147:
          v14 = @"RAP_LOOK_AROUND_IMAGE_QUALITY_FORM";
          break;
        case 1148:
          v14 = @"RAP_LOOK_AROUND_LABELS_STREET_FORM";
          break;
        case 1149:
          v14 = @"RAP_LOOK_AROUND_BLURRING_FORM";
          break;
        case 1150:
          v14 = @"RAP_LOOK_AROUND_REMOVE_HOME_FORM";
          break;
        case 1151:
          v14 = @"RAP_LOOK_AROUND_MENU";
          break;
        case 1152:
          v14 = @"RAP_LOOK_AROUND_LABELS_STORE_FORM";
          break;
        case 1153:
          v14 = @"RAP_LOOK_AROUND_PRIVACY_MENU";
          break;
        case 1154:
          v14 = @"RAP_LIGHTWEIGHT";
          break;
        case 1155:
          v14 = @"RAP_EDIT_PLACE_DETAILS";
          break;
        case 1156:
          v14 = @"RAP_ADD_CATEGORY";
          break;
        case 1157:
          v14 = @"RAP_ADD_HOURS";
          break;
        case 1158:
          v14 = @"RAP_EDIT_LOCATION";
          break;
        case 1159:
          v14 = @"RAP_EDIT_ENTRY_POINT";
          break;
        case 1160:
          v14 = @"RAP_LOOK_AROUND";
          break;
        case 1161:
          v14 = @"RAP_ADD_ENTRY_POINT";
          break;
        case 1201:
          v14 = @"WATCH_MAIN_MENU";
          break;
        case 1202:
          v14 = @"WATCH_MAIN_PRESS_MENU";
          break;
        case 1203:
          v14 = @"WATCH_SEARCH";
          break;
        case 1204:
          v14 = @"WATCH_DICTATION";
          break;
        case 1205:
          v14 = @"WATCH_FAVORITES";
          break;
        case 1206:
          v14 = @"WATCH_SUB_CATEGORY_LIST";
          break;
        case 1207:
          v14 = @"WATCH_SEARCH_RESULTS_LIST";
          break;
        case 1208:
          v14 = @"WATCH_MAP_VIEW";
          break;
        case 1209:
          v14 = @"WATCH_PLACECARD";
          break;
        case 1210:
          v14 = @"WATCH_ROUTE_PLANNING";
          break;
        case 1211:
          v14 = @"WATCH_ROUTE_DETAILS";
          break;
        case 1212:
          v14 = @"WATCH_NAV_TBT";
          break;
        case 1213:
          v14 = @"WATCH_NAV_MAP";
          break;
        case 1214:
          v14 = @"WATCH_NAV_PRESS_MENU";
          break;
        case 1215:
          v14 = @"WATCH_MAP_PRESS_MENU";
          break;
        case 1216:
          v14 = @"WATCH_ROUTING_PRESS_MENU";
          break;
        case 1217:
          v14 = @"WATCH_TRANSIT_MAP_VIEW";
          break;
        case 1218:
          v14 = @"WATCH_SCRIBBLE";
          break;
        case 1219:
          v14 = @"WATCH_COLLECTION_VIEW";
          break;
        case 1220:
          v14 = @"WATCH_ROUTE_PLANNING_WALKING";
          break;
        case 1221:
          v14 = @"WATCH_ROUTE_PLANNING_DRIVING";
          break;
        case 1222:
          v14 = @"WATCH_ROUTE_PLANNING_TRANSIT";
          break;
        case 1223:
          v14 = @"WATCH_PAIRED_DEVICE";
          break;
        case 1224:
          v14 = @"WATCH_NAV_DRIVING_SPLIT";
          break;
        case 1225:
          v14 = @"WATCH_NAV_DRIVING_PLATTER";
          break;
        case 1226:
          v14 = @"WATCH_NAV_DRIVING_MAP";
          break;
        case 1227:
          v14 = @"WATCH_NAV_WALKING_SPLIT";
          break;
        case 1228:
          v14 = @"WATCH_NAV_WALKING_PLATTER";
          break;
        case 1229:
          v14 = @"WATCH_NAV_WALKING_MAP";
          break;
        case 1230:
          v14 = @"WATCH_NAV_TRANSIT_SPLIT";
          break;
        case 1231:
          v14 = @"WATCH_NAV_TRANSIT_PLATTER";
          break;
        case 1232:
          v14 = @"WATCH_NAV_TRANSIT_MAP";
          break;
        case 1233:
          v14 = @"WATCH_ROUTE_INFO";
          break;
        case 1234:
          v14 = @"WATCH_NAV_CYCLING_MAP";
          break;
        case 1235:
          v14 = @"WATCH_NAV_CYCLING_PLATTER";
          break;
        case 1236:
          v14 = @"WATCH_NAV_CYCLING_SPLIT";
          break;
        case 1237:
          v14 = @"WATCH_ROUTE_PLANNING_CYCLING";
          break;
        case 1238:
          v14 = @"WATCH_SEARCH_INPUT";
          break;
        case 1239:
          v14 = @"WATCH_SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 1240:
          v14 = @"WATCH_SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 1301:
          v14 = @"PERSONALIZED_ADDRESS_LIST";
          break;
        case 1302:
          v14 = @"PERSONALIZED_ADDRESS_FORM";
          break;
        case 1303:
          v14 = @"PERSONALIZED_LABEL_FORM";
          break;
        case 1304:
          v14 = @"PERSONALIZED_EDIT_MAP";
          break;
        case 1305:
          v14 = @"PERSONALIZED_CONFIRMATION";
          break;
        case 1306:
          v14 = @"PERSONALIZED_ADDRESS_DELETE_DIALOG";
          break;
        case 1307:
          v14 = @"PERSONALIZED_ADDRESS_INFO";
          break;
        case 1308:
          v14 = @"PERSONALIZED_ADDRESS_SEARCH";
          break;
        case 1309:
          v14 = @"PERSONALIZED_ADDRESS_SEARCH_RESULTS";
          break;
        case 1310:
          v14 = @"FAVORITE_SEARCH";
          break;
        case 1311:
          v14 = @"FAVORITE_LIST";
          break;
        case 1312:
          v14 = @"FAVORITE_INFO";
          break;
        case 1313:
          v14 = @"PERSONALIZED_CONFIRMATION_WITH_PRIVACY";
          break;
        default:
          goto LABEL_1995;
      }

      goto LABEL_1996;
    }

    if (v6 > 1705)
    {
      if (v6 > 1806)
      {
        if (v6 <= 1899)
        {
          if (v6 <= 1808)
          {
            if (v6 == 1807)
            {
              v14 = @"MAPS_WEB_RELATED_PLACES_LIST";
            }

            else
            {
              v14 = @"MAPS_WEB_COLLECTION_LIST";
            }

            goto LABEL_1996;
          }

          if (v6 == 1809)
          {
            v14 = @"MAPS_WEB_DIRECTIONS";
            goto LABEL_1996;
          }

          if (v6 == 1810)
          {
            v14 = @"MAPS_WEB_SIDEBAR";
            goto LABEL_1996;
          }
        }

        else
        {
          if (v6 <= 1901)
          {
            if (v6 == 1900)
            {
              v14 = @"FIND_MY_AIR_TAG_VIEW";
            }

            else
            {
              v14 = @"FIND_MY_AIR_PODS_VIEW";
            }

            goto LABEL_1996;
          }

          switch(v6)
          {
            case 0x76E:
              v14 = @"FIND_MY_ACCESSORY_VIEW";
              goto LABEL_1996;
            case 0x76F:
              v14 = @"FIND_MY_DEVICE_VIEW";
              goto LABEL_1996;
            case 0x770:
              v14 = @"FIND_MY_PERSON_VIEW";
              goto LABEL_1996;
          }
        }
      }

      else
      {
        if (v6 > 1801)
        {
          if (v6 <= 1803)
          {
            if (v6 == 1802)
            {
              v14 = @"MAPS_WEB_SEARCH";
            }

            else
            {
              v14 = @"MAPS_WEB_SEARCH_RESULTS";
            }
          }

          else if (v6 == 1804)
          {
            v14 = @"MAPS_WEB_PUBLISHER";
          }

          else if (v6 == 1805)
          {
            v14 = @"MAPS_WEB_GUIDE";
          }

          else
          {
            v14 = @"MAPS_WEB_GUIDES_HOME";
          }

          goto LABEL_1996;
        }

        if (v6 <= 1707)
        {
          if (v6 == 1706)
          {
            v14 = @"LOOK_AROUND_VIEW_PLACECARD";
          }

          else
          {
            v14 = @"LOOK_AROUND_PIP_PLACECARD";
          }

          goto LABEL_1996;
        }

        if (v6 == 1708)
        {
          v14 = @"OFFLINE_BROWSE_ONLY_SEARCH_TRAY";
          goto LABEL_1996;
        }

        if (v6 == 1801)
        {
          v14 = @"MAPS_WEB_PLACE";
          goto LABEL_1996;
        }
      }
    }

    else if (v6 > 1502)
    {
      if (v6 > 1700)
      {
        if (v6 <= 1702)
        {
          if (v6 == 1701)
          {
            v14 = @"LOOK_AROUND_ACTION_SHEET";
          }

          else
          {
            v14 = @"LOOK_AROUND_VIEW";
          }
        }

        else if (v6 == 1703)
        {
          v14 = @"LOOK_AROUND_PLATTER";
        }

        else if (v6 == 1704)
        {
          v14 = @"LOOK_AROUND_PIP_UNAVAILABLE_ZOOM";
        }

        else
        {
          v14 = @"LOOK_AROUND_PIP_UNAVAILABLE_REGION";
        }

        goto LABEL_1996;
      }

      if (v6 > 1600)
      {
        if (v6 == 1601)
        {
          v14 = @"MENU_ITEM_DARK_MAP";
          goto LABEL_1996;
        }

        if (v6 == 1700)
        {
          v14 = @"LOOK_AROUND_PIP";
          goto LABEL_1996;
        }
      }

      else
      {
        if (v6 == 1503)
        {
          v14 = @"PLACECARD_PHONE";
          goto LABEL_1996;
        }

        if (v6 == 1504)
        {
          v14 = @"PLACECARD_URL";
          goto LABEL_1996;
        }
      }
    }

    else
    {
      if (v6 <= 1404)
      {
        if (v6 > 1402)
        {
          if (v6 == 1403)
          {
            v14 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_REQUESTING";
          }

          else
          {
            v14 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_CONFIRMED";
          }
        }

        else if (v6 == 1401)
        {
          v14 = @"ROUTING_TRAY_RIDESHARE_RIDE_OPTIONS";
        }

        else
        {
          v14 = @"ROUTING_TRAY_RIDESHARE_DETAILS_PICKING";
        }

        goto LABEL_1996;
      }

      if (v6 <= 1406)
      {
        if (v6 == 1405)
        {
          v14 = @"ROUTING_TRAY_RIDESHARE_SURGE_PRICING_DIALOG";
        }

        else
        {
          v14 = @"ROUTING_TRAY_RIDESHARE_FEEDBACK";
        }

        goto LABEL_1996;
      }

      switch(v6)
      {
        case 0x57F:
          v14 = @"ROUTING_TRAY_RIDESHARE_ENABLE_ALL";
          goto LABEL_1996;
        case 0x5DD:
          v14 = @"PLACECARD_HEADER";
          goto LABEL_1996;
        case 0x5DE:
          v14 = @"PLACECARD_ADDRESS";
LABEL_1996:
          *buf = 138413058;
          v32 = v10;
          v33 = 2112;
          v34 = name;
          v35 = 2112;
          v36 = v13;
          v37 = 2112;
          v38 = v14;
          _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "(%@) state '%@' is processing (%@, %@)", buf, 0x2Au);

          goto LABEL_1997;
      }
    }

LABEL_1995:
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    goto LABEL_1996;
  }

LABEL_1997:

  if (self->super._finished)
  {
    return 2;
  }

  if (time - self->super._startTime >= self->_waitTime)
  {
    self->super._finished = 1;
    v22 = GEOGetGEOAPSequenceStateAnalyticsLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = self->super._name;
      *buf = 138412546;
      v32 = v23;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_1AB634000, v22, OS_LOG_TYPE_DEBUG, "(%@) state '%@' fulfilled wait time", buf, 0x16u);
    }

    if (self->super._fulfillmentBlock)
    {
      v25 = GEOGetGEOAPSequenceStateAnalyticsLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = self->super._name;
        *buf = 138412546;
        v32 = v26;
        v33 = 2112;
        v34 = v27;
        _os_log_impl(&dword_1AB634000, v25, OS_LOG_TYPE_DEBUG, "(%@) state '%@' will excute fulfillment block", buf, 0x16u);
      }

      (*(self->super._fulfillmentBlock + 2))();
    }

    return 2;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6 | (v7 << 32)];
  v16 = [(NSMutableArray *)self->super._rejectionPairs containsObject:v15];
  v17 = GEOGetGEOAPSequenceStateAnalyticsLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      v19 = objc_opt_class();
      v20 = self->super._name;
      *buf = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_1AB634000, v17, OS_LOG_TYPE_DEBUG, "(%@) state '%@' aborts on input pair", buf, 0x16u);
    }

    self->super._finished = 1;
    v21 = 3;
  }

  else
  {
    if (v18)
    {
      v28 = objc_opt_class();
      v29 = self->super._name;
      *buf = 138412546;
      v32 = v28;
      v33 = 2112;
      v34 = v29;
      _os_log_impl(&dword_1AB634000, v17, OS_LOG_TYPE_DEBUG, "(%@) state '%@' is holding", buf, 0x16u);
    }

    v21 = 1;
  }

  return v21;
}

- (GEOAPSequenceWaitState)initWithName:(id)name waitTime:(double)time
{
  v6.receiver = self;
  v6.super_class = GEOAPSequenceWaitState;
  result = [(GEOAPSequenceState *)&v6 initWithName:name];
  if (result)
  {
    result->_waitTime = time;
  }

  return result;
}

@end