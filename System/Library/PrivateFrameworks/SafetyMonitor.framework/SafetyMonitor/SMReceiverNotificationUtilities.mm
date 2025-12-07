@interface SMReceiverNotificationUtilities
+ (void)fetchDestinationNameFromMapItem:(id)item completionHandler:(id)handler;
+ (void)prepareNotificationBodyFromMessage:(id)message completionHandler:(id)handler;
@end

@implementation SMReceiverNotificationUtilities

+ (void)prepareNotificationBodyFromMessage:(id)message completionHandler:(id)handler
{
  v116 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  messageType = [objc_opt_class() messageType];
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__0;
  v108 = __Block_byref_object_dispose__0;
  v109 = 0;
  switch(messageType)
  {
    case 3:
      summaryText = [messageCopy summaryText];
      v22 = v105[5];
      v105[5] = summaryText;

      v23 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v27 = v105[5];
        *buf = 138412802;
        v111 = v25;
        v112 = 2112;
        v113 = v26;
        v114 = 2112;
        v115 = v27;
        _os_log_impl(&dword_26455D000, v23, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageType SMMessageTypeKeyRelease summaryText: %@", buf, 0x20u);
      }

      handlerCopy[2](handlerCopy, v105[5], 0);
      goto LABEL_42;
    case 2:
      v16 = messageCopy;
      summaryText2 = [v16 summaryText];
      v18 = v105[5];
      v105[5] = summaryText2;

      if ([v16 sessionEndReason] == 1 && objc_msgSend(v16, "destinationType") == 4)
      {
        destinationMapItem = [v16 destinationMapItem];
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_66;
        v87[3] = &unk_279B65438;
        selfCopy = self;
        v91 = a2;
        v88 = handlerCopy;
        v89 = &v104;
        [SMReceiverNotificationUtilities fetchDestinationNameFromMapItem:destinationMapItem completionHandler:v87];

        v20 = v88;
      }

      else
      {
        handlerCopy[2](handlerCopy, v105[5], 0);
        v20 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = NSStringFromSelector(a2);
          v36 = v105[5];
          *buf = 138412802;
          v111 = v34;
          v112 = 2112;
          v113 = v35;
          v114 = 2112;
          v115 = v36;
          _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageTypeSessionEnd DEFAULT summaryText: %@", buf, 0x20u);
        }
      }

      goto LABEL_41;
    case 1:
      v10 = messageCopy;
      summaryText3 = [v10 summaryText];
      v12 = v105[5];
      v105[5] = summaryText3;

      coarseEstimatedEndTime = [v10 coarseEstimatedEndTime];
      v14 = coarseEstimatedEndTime;
      if (coarseEstimatedEndTime)
      {
        estimatedEndTime = coarseEstimatedEndTime;
      }

      else
      {
        estimatedEndTime = [v10 estimatedEndTime];
      }

      v20 = estimatedEndTime;

      sessionType = [v10 sessionType];
      if (sessionType == 1)
      {
        v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v52 localizedStringForKey:@"START_MESSAGE_TIME_BOUND_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Timer %@" table:0];

        v53 = MEMORY[0x277CCACA8];
        roundedTime = [v20 roundedTime];
        v55 = [roundedTime absoluteTimeString:0 preposition:1 capitalized:0];
        v56 = [v53 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v55];
        v57 = v105[5];
        v105[5] = v56;

        v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          v60 = NSStringFromSelector(a2);
          v61 = v105[5];
          *buf = 138412802;
          v111 = v59;
          v112 = 2112;
          v113 = v60;
          v114 = 2112;
          v115 = v61;
          _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeTimeBound summaryText: %@", buf, 0x20u);
        }
      }

      else
      {
        if (sessionType != 2)
        {
          if (sessionType == 3)
          {
            destinationMapItem2 = [v10 destinationMapItem];
            v92[0] = MEMORY[0x277D85DD0];
            v92[1] = 3221225472;
            v92[2] = __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_53;
            v92[3] = &unk_279B65410;
            v95 = &v104;
            v93 = v20;
            selfCopy2 = self;
            v97 = a2;
            v94 = handlerCopy;
            [SMReceiverNotificationUtilities fetchDestinationNameFromMapItem:destinationMapItem2 completionHandler:v92];

            v39 = v93;
          }

          else
          {
            handlerCopy[2](handlerCopy, v105[5], 0);
            v39 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = NSStringFromSelector(a2);
              v65 = v105[5];
              *buf = 138412802;
              v111 = v63;
              v112 = 2112;
              v113 = v64;
              v114 = 2112;
              v115 = v65;
              _os_log_impl(&dword_26455D000, v39, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageTypeSessionStart DEFAULT summaryText: %@", buf, 0x20u);
            }
          }

          goto LABEL_40;
        }

        destinationType = [v10 destinationType];
        switch(destinationType)
        {
          case 3:
            v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v39 = [v76 localizedStringForKey:@"START_MESSAGE_SCHOOL_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: School %@" table:0];

            v77 = MEMORY[0x277CCACA8];
            roundedTime2 = [v20 roundedTime];
            v79 = [roundedTime2 absoluteTimeString:0 preposition:1 capitalized:0];
            v80 = [v77 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v79];
            v81 = v105[5];
            v105[5] = v80;

            v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v82 = objc_opt_class();
              v83 = NSStringFromClass(v82);
              v84 = NSStringFromSelector(a2);
              v85 = v105[5];
              *buf = 138412802;
              v111 = v83;
              v112 = 2112;
              v113 = v84;
              v114 = 2112;
              v115 = v85;
              _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeDestinationBound SCHOOL summaryText: %@", buf, 0x20u);
            }

            break;
          case 2:
            v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v39 = [v66 localizedStringForKey:@"START_MESSAGE_WORK_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Work %@" table:0];

            v67 = MEMORY[0x277CCACA8];
            roundedTime3 = [v20 roundedTime];
            v69 = [roundedTime3 absoluteTimeString:0 preposition:1 capitalized:0];
            v70 = [v67 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v69];
            v71 = v105[5];
            v105[5] = v70;

            v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v72 = objc_opt_class();
              v73 = NSStringFromClass(v72);
              v74 = NSStringFromSelector(a2);
              v75 = v105[5];
              *buf = 138412802;
              v111 = v73;
              v112 = 2112;
              v113 = v74;
              v114 = 2112;
              v115 = v75;
              _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeDestinationBound WORK summaryText: %@", buf, 0x20u);
            }

            break;
          case 1:
            v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v39 = [v41 localizedStringForKey:@"START_MESSAGE_HOME_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Home %@" table:0];

            v42 = MEMORY[0x277CCACA8];
            roundedTime4 = [v20 roundedTime];
            v44 = [roundedTime4 absoluteTimeString:0 preposition:1 capitalized:0];
            v45 = [v42 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v44];
            v46 = v105[5];
            v105[5] = v45;

            v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = objc_opt_class();
              v49 = NSStringFromClass(v48);
              v50 = NSStringFromSelector(a2);
              v51 = v105[5];
              *buf = 138412802;
              v111 = v49;
              v112 = 2112;
              v113 = v50;
              v114 = 2112;
              v115 = v51;
              _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeDestinationBound HOME summaryText: %@", buf, 0x20u);
            }

            break;
          default:
            destinationMapItem3 = [v10 destinationMapItem];
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v98[2] = __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke;
            v98[3] = &unk_279B65410;
            v101 = &v104;
            v99 = v20;
            selfCopy3 = self;
            v103 = a2;
            v100 = handlerCopy;
            [SMReceiverNotificationUtilities fetchDestinationNameFromMapItem:destinationMapItem3 completionHandler:v98];

            v39 = v99;
            goto LABEL_40;
        }
      }

      handlerCopy[2](handlerCopy, v105[5], 0);
LABEL_40:

LABEL_41:
LABEL_42:

      goto LABEL_43;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(a2);
    v32 = v105[5];
    *buf = 138412802;
    v111 = v30;
    v112 = 2112;
    v113 = v31;
    v114 = 2112;
    v115 = v32;
    _os_log_impl(&dword_26455D000, v28, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageType DEFAULT summaryText: %@", buf, 0x20u);
  }

  handlerCopy[2](handlerCopy, v105[5], 0);
LABEL_43:
  _Block_object_dispose(&v104, 8);
}

void __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_FALLBACK_DESTINATION_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Destination %@" table:0];

    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) roundedTime];
    v12 = [v11 absoluteTimeString:0 preposition:1 capitalized:0];
    v13 = [v10 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v31 = v28;
      v32 = 2112;
      v33 = v29;
      v34 = 2112;
      v35 = v6;
      _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_CUSTOMISED_DESTINATION_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: %@ %@" table:0];

    v17 = MEMORY[0x277CCACA8];
    v18 = [*(a1 + 32) roundedTime];
    v19 = [v18 absoluteTimeString:0 preposition:1 capitalized:0];
    v20 = [v17 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v5, v19];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 64));
      v26 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionDestinationTypeOther summaryText: %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_ROUNDTRIP_FALLBACK_DESTINATION_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Round trip to destination %@" table:0];

    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) roundedTime];
    v12 = [v11 absoluteTimeString:0 preposition:1 capitalized:0];
    v13 = [v10 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v31 = v28;
      v32 = 2112;
      v33 = v29;
      v34 = 2112;
      v35 = v6;
      _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_ROUNDTRIP_CUSTOMISED_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Round trip to %@ %@" table:0];

    v17 = MEMORY[0x277CCACA8];
    v18 = [*(a1 + 32) roundedTime];
    v19 = [v18 absoluteTimeString:0 preposition:1 capitalized:0];
    v20 = [v17 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v5, v19];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 64));
      v26 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeRoundTrip summaryText: %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", buf, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"END_MESSAGE_SAFE_ARRIVAL_CUSTOMISED_DESTINATION_SUMMARY" value:@"Check In: Arrived at %@" table:0];

    v10 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v5];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 56));
      v17 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412802;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageTypeSessionEnd Safe Arrival at customised destination summaryText: %@", buf, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (void)fetchDestinationNameFromMapItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277D0EBD0];
  itemCopy = item;
  sharedService = [v8 sharedService];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SMReceiverNotificationUtilities_fetchDestinationNameFromMapItem_completionHandler___block_invoke;
  v12[3] = &unk_279B65460;
  v13 = handlerCopy;
  selfCopy = self;
  v15 = a2;
  v11 = handlerCopy;
  [sharedService resolveMapItemFromHandle:itemCopy completionHandler:v12];
}

void __85__SMReceiverNotificationUtilities_fetchDestinationNameFromMapItem_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v8 = [v5 geoAddress];
    v9 = [v8 structuredAddress];
    v10 = [v9 fullThoroughfare];
    v11 = [v10 length];

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [v6 geoAddress];
      v14 = [v13 structuredAddress];
      v15 = [v14 fullThoroughfare];
      (*(v12 + 16))(v12, v15, 0);
    }

    else
    {
      v16 = [v6 shortAddress];
      v17 = [v16 length];

      if (!v17)
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(*(a1 + 48));
          v23 = 138412546;
          v24 = v21;
          v25 = 2112;
          v26 = v22;
          _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@, Unable to retrieve destination address from geoMapItem", &v23, 0x16u);
        }

        v7 = *(*(a1 + 32) + 16);
        goto LABEL_3;
      }

      v18 = *(a1 + 32);
      v13 = [v6 shortAddress];
      (*(v18 + 16))(v18, v13, 0);
    }

    goto LABEL_9;
  }

  v7 = *(*(a1 + 32) + 16);
LABEL_3:
  v7();
LABEL_9:
}

@end