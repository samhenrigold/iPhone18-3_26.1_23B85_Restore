@interface LinkChangePolicyHandler
+ (BOOL)processJoinEvent:(id)event;
+ (BOOL)processLeaveEvent:(id)event;
- (LinkChangePolicyHandler)initWithAnalyticsStore:(id)store;
@end

@implementation LinkChangePolicyHandler

- (LinkChangePolicyHandler)initWithAnalyticsStore:(id)store
{
  v16 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = LinkChangePolicyHandler;
  v6 = [(LinkChangePolicyHandler *)&v11 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_storeMOHandler, store);
  if (!v7->_storeMOHandler)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[LinkChangePolicyHandler initWithAnalyticsStore:]";
      v14 = 1024;
      v15 = 40;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error getting _roamPolicyMOHandler", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v8 = v7;
LABEL_8:

  return v8;
}

+ (BOOL)processLeaveEvent:(id)event
{
  v40 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = [eventCopy bss];
  if (!eventCopy)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v30 = 136446466;
      v31 = "+[LinkChangePolicyHandler processLeaveEvent:]";
      v32 = 1024;
      v33 = 51;
      v29 = "%{public}s::%d:nil join";
LABEL_41:
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, v29, &v30, 0x12u);
    }

LABEL_42:
    v27 = 0;
    goto LABEL_36;
  }

  v5 = WALogCategoryDeviceStoreHandle();
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v30 = 136446466;
      v31 = "+[LinkChangePolicyHandler processLeaveEvent:]";
      v32 = 1024;
      v33 = 52;
      v29 = "%{public}s::%d:nil join.bss";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    reason = [eventCopy reason];
    rssi = [eventCopy rssi];
    bssid = [v4 bssid];
    v30 = 136447234;
    v31 = "+[LinkChangePolicyHandler processLeaveEvent:]";
    v32 = 1024;
    v33 = 54;
    v34 = 1024;
    *v35 = reason;
    *&v35[4] = 1024;
    *&v35[6] = rssi;
    *&v35[10] = 2112;
    *&v35[12] = bssid;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:reason:%d rssi:%hd on %@", &v30, 0x28u);
  }

  reason2 = [eventCopy reason];
  if (reason2 > 999)
  {
    if (reason2 == 1000)
    {
      if ([v4 disTrgDisCount] == 0x7FFF)
      {
        v14 = v4;
        v15 = 5;
      }

      else
      {
        v15 = ([v4 disTrgDisCount] + 1);
        v14 = v4;
      }

      [v14 setDisTrgDisCount:v15];
      goto LABEL_27;
    }

    if (reason2 != 1011)
    {
      goto LABEL_27;
    }

LABEL_11:
    if ([eventCopy rssi] <= -75)
    {
      if ([v4 disUsrForcedInWeakRssiCount] == 0x7FFF)
      {
        LOWORD(v11) = 5;
      }

      else
      {
        v11 = [v4 disUsrForcedInWeakRssiCount] + 1;
      }

      [v4 setDisUsrForcedInWeakRssiCount:v11];
      if ([v4 disUsrForcedInWeakRssiCount] >= 1)
      {
        v16 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          rssi2 = [eventCopy rssi];
          bssid2 = [v4 bssid];
          v30 = 136446978;
          v31 = "+[LinkChangePolicyHandler processLeaveEvent:]";
          v32 = 1024;
          v33 = 85;
          v34 = 1024;
          *v35 = rssi2;
          *&v35[4] = 2112;
          *&v35[6] = bssid2;
          _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_INFO, "%{public}s::%d:Setting autoLeaveRssi to %d on %@", &v30, 0x22u);
        }

        [v4 setAutoLeaveRssi:{objc_msgSend(eventCopy, "rssi")}];
      }
    }

    goto LABEL_27;
  }

  if (reason2 == 2)
  {
    if ([v4 disBcnLossCount] == 0x7FFF)
    {
      v12 = v4;
      v13 = 5;
    }

    else
    {
      v13 = ([v4 disBcnLossCount] + 1);
      v12 = v4;
    }

    [v12 setDisBcnLossCount:v13];
    goto LABEL_27;
  }

  if (reason2 == 5)
  {
    goto LABEL_11;
  }

LABEL_27:
  if ([v4 disBcnLossCount] > 4 || objc_msgSend(v4, "disTrgDisCount") > 4 || objc_msgSend(v4, "disUsrForcedInWeakRssiCount") >= 1)
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      bssid3 = [v4 bssid];
      v30 = 136446722;
      v31 = "+[LinkChangePolicyHandler processLeaveEvent:]";
      v32 = 1024;
      v33 = 99;
      v34 = 2112;
      *v35 = bssid3;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_INFO, "%{public}s::%d:Setting isEdgeForLeave on %@", &v30, 0x1Cu);
    }

    [v4 setIsEdgeForLeave:1];
  }

  v6 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    disBcnLossCount = [v4 disBcnLossCount];
    disTrgDisCount = [v4 disTrgDisCount];
    disUsrForcedInWeakRssiCount = [v4 disUsrForcedInWeakRssiCount];
    autoLeaveRssi = [v4 autoLeaveRssi];
    isEdgeForLeave = [v4 isEdgeForLeave];
    manualJoinAfterAutoLeave = [v4 manualJoinAfterAutoLeave];
    v30 = 136448002;
    v31 = "+[LinkChangePolicyHandler processLeaveEvent:]";
    v32 = 1024;
    v33 = 103;
    v34 = 1024;
    *v35 = disBcnLossCount;
    *&v35[4] = 1024;
    *&v35[6] = disTrgDisCount;
    *&v35[10] = 1024;
    *&v35[12] = disUsrForcedInWeakRssiCount;
    *&v35[16] = 1024;
    *&v35[18] = autoLeaveRssi;
    v36 = 1024;
    v37 = isEdgeForLeave;
    v38 = 1024;
    v39 = manualJoinAfterAutoLeave;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:disBcnLossCount:%d disTrgDisCount:%d disUsrForcedInWeakRssiCount:%d autoLeaveRssi:%d isEdgeForLeave:%d, manualJoinAfterAutoLeave:%d", &v30, 0x36u);
  }

  v27 = 1;
LABEL_36:

  return v27;
}

+ (BOOL)processJoinEvent:(id)event
{
  v24[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = [eventCopy bss];
  v5 = v4;
  if (!eventCopy)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v18 = "+[LinkChangePolicyHandler processJoinEvent:]";
      v19 = 1024;
      v20 = 113;
      v16 = "%{public}s::%d:nil join";
LABEL_17:
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, v16, buf, 0x12u);
    }

LABEL_18:

    v13 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v18 = "+[LinkChangePolicyHandler processJoinEvent:]";
      v19 = 1024;
      v20 = 114;
      v16 = "%{public}s::%d:nil join.bss";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ([eventCopy reason] == 1 && (objc_msgSend(eventCopy, "subReason") == 0x40000 || objc_msgSend(eventCopy, "subReason") == 0x80000))
  {
    if ([v5 autoLeaveRssi])
    {
      v23[0] = @"autoLeaveRssi";
      v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "autoLeaveRssi")}];
      v24[0] = v6;
      v23[1] = @"reason";
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "reason")}];
      v24[1] = v7;
      v23[2] = @"subReason";
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "subReason")}];
      v24[2] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

      v10 = v9;
      AnalyticsSendEventLazy();

      [v5 setManualJoinAfterAutoLeave:1];
      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        bssid = [v5 bssid];
        *buf = 136446722;
        v18 = "+[LinkChangePolicyHandler processJoinEvent:]";
        v19 = 1024;
        v20 = 129;
        v21 = 2112;
        v22 = bssid;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_INFO, "%{public}s::%d:Resetting autoLeaveRssi and isEdgeForLeave on %@", buf, 0x1Cu);
      }

      [v5 setAutoLeaveRssi:0];
      [v5 setIsEdgeForLeave:0];
    }

    else
    {
      [v5 setManualJoinAfterAutoLeave:0];
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

@end