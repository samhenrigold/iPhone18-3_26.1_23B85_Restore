@interface CWFIO80211
- (BOOL)isMonitoringEvents;
- (CWFIO80211)init;
- (id)IO80211ControllerInfo;
- (id)IO80211InterfaceInfo:(id)info error:(id *)error;
- (id)__IO80211InfoMatchingService:(unsigned int)service;
- (void)dealloc;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFIO80211

- (CWFIO80211)init
{
  v86 = *MEMORY[0x1E69E9840];
  notification = 0;
  v72.receiver = self;
  v72.super_class = CWFIO80211;
  v2 = [(CWFIO80211 *)&v72 init];
  if (!v2)
  {
    goto LABEL_76;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.io80211-mutex", v3);
  mutexQueue = v2->_mutexQueue;
  v2->_mutexQueue = v4;

  if (!v2->_mutexQueue)
  {
    goto LABEL_76;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.io80211-event", v6);
  eventQueue = v2->_eventQueue;
  v2->_eventQueue = v7;

  if (!v2->_eventQueue)
  {
    goto LABEL_76;
  }

  mainPort = 0;
  v9 = MEMORY[0x1E69E99F8];
  if (MEMORY[0x1E12E9640](*MEMORY[0x1E69E99F8], &mainPort))
  {
    goto LABEL_76;
  }

  v10 = IONotificationPortCreate(mainPort);
  v2->_portRef = v10;
  if (!v10)
  {
    goto LABEL_76;
  }

  v2->_publishIO80211SkywalkInterface = 0;
  v11 = IOServiceAddMatchingNotification(v10, "IOServiceMatched", &unk_1F5BBD610, sub_1E0C148E0, v2, &v2->_publishIO80211SkywalkInterface);
  if (v11)
  {
    v31 = v11;
    v32 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v33 = CWFGetOSLog();
    if (v33)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v60 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219778;
      v75 = v32 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v32 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 144;
      v84 = 1024;
      *v85 = v31;
      *&v85[4] = 2112;
      *&v85[6] = @"IO80211InterfaceRole";
      *&v85[14] = 2112;
      *&v85[16] = @"Infrastructure";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceAddMatchingNotification() failed with error %d (%@:%@)", &v74, 74);
    }

    goto LABEL_63;
  }

  v2->_terminatedIO80211SkywalkInterface = 0;
  v12 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceTerminate", &unk_1F5BBD660, sub_1E0C148EC, v2, &v2->_terminatedIO80211SkywalkInterface);
  if (v12)
  {
    v35 = v12;
    v36 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v37 = CWFGetOSLog();
    if (v37)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v61 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219778;
      v75 = v36 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v36 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 149;
      v84 = 1024;
      *v85 = v35;
      *&v85[4] = 2112;
      *&v85[6] = @"IO80211InterfaceRole";
      *&v85[14] = 2112;
      *&v85[16] = @"Infrastructure";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceAddMatchingNotification() failed with error %d (%@:%@)", &v74, 74);
    }

    goto LABEL_63;
  }

  sub_1E0C1547C(0, v2->_publishIO80211SkywalkInterface, @"IOServiceMatched");
  sub_1E0C1547C(0, v2->_terminatedIO80211SkywalkInterface, @"IOServiceTerminate");
  v70 = 0;
  if (MEMORY[0x1E12E9640](*v9, &v70))
  {
    goto LABEL_76;
  }

  v13 = IONotificationPortCreate(v70);
  v2->_portRefVirtual = v13;
  if (!v13)
  {
    goto LABEL_76;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  publishIO80211VirtualInterfaceMap = v2->_publishIO80211VirtualInterfaceMap;
  v2->_publishIO80211VirtualInterfaceMap = dictionary;

  if (!v2->_publishIO80211VirtualInterfaceMap)
  {
    goto LABEL_76;
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  terminatedIO80211VirtualInterfaceMap = v2->_terminatedIO80211VirtualInterfaceMap;
  v2->_terminatedIO80211VirtualInterfaceMap = dictionary2;

  if (!v2->_terminatedIO80211VirtualInterfaceMap)
  {
    goto LABEL_76;
  }

  notification = 0;
  v18 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceMatched", &unk_1F5BBD6B0, sub_1E0C148F8, v2, &notification);
  if (v18)
  {
    v38 = v18;
    v39 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v40 = CWFGetOSLog();
    if (v40)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v62 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219778;
      v75 = v39 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v39 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 173;
      v84 = 1024;
      *v85 = v38;
      *&v85[4] = 2112;
      *&v85[6] = @"IO80211VirtualInterfaceRole";
      *&v85[14] = 2112;
      *&v85[16] = @"WiFi-Aware Data";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceAddMatchingNotification() failed with error %d (%@:%@)", &v74, 74);
    }

    goto LABEL_63;
  }

  v19 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap setObject:v19 forKeyedSubscript:@"WiFi-Aware Data"];

  v20 = [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap objectForKeyedSubscript:@"WiFi-Aware Data"];

  if (!v20)
  {
    v41 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v42 = CWFGetOSLog();
    if (v42)
    {
      v43 = CWFGetOSLog();
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219522;
      v75 = v41 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v41 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 176;
      v84 = 2112;
      *v85 = @"IO80211VirtualInterfaceRole";
      *&v85[8] = 2112;
      *&v85[10] = @"WiFi-Aware Data";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v43, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Invalid map (%@:%@)", &v74, 68);
    }

    goto LABEL_74;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  notification = 0;
  v21 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceTerminate", &unk_1F5BBD700, sub_1E0C14904, v2, &notification);
  if (v21)
  {
    v44 = v21;
    v45 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v46 = CWFGetOSLog();
    if (v46)
    {
      v47 = CWFGetOSLog();
    }

    else
    {
      v47 = MEMORY[0x1E69E9C10];
      v64 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219778;
      v75 = v45 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v45 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 186;
      v84 = 1024;
      *v85 = v44;
      *&v85[4] = 2112;
      *&v85[6] = @"IO80211VirtualInterfaceRole";
      *&v85[14] = 2112;
      *&v85[16] = @"WiFi-Aware Data";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v47, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceAddMatchingNotification() failed with error %d (%@:%@)", &v74, 74);
    }

    goto LABEL_70;
  }

  v22 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap setObject:v22 forKeyedSubscript:@"WiFi-Aware Data"];

  v23 = [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap objectForKeyedSubscript:@"WiFi-Aware Data"];

  if (!v23)
  {
    v48 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v49 = CWFGetOSLog();
    if (v49)
    {
      v43 = CWFGetOSLog();
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v65 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219522;
      v75 = v48 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v48 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 189;
      v84 = 2112;
      *v85 = @"IO80211VirtualInterfaceRole";
      *&v85[8] = 2112;
      *&v85[10] = @"WiFi-Aware Data";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v43, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Invalid map (%@:%@)", &v74, 68);
    }

    goto LABEL_74;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  notification = 0;
  v24 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceMatched", &unk_1F5BBD750, sub_1E0C148F8, v2, &notification);
  if (v24)
  {
    v50 = v24;
    v51 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v52 = CWFGetOSLog();
    if (v52)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v66 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219778;
      v75 = v51 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v51 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 200;
      v84 = 1024;
      *v85 = v50;
      *&v85[4] = 2112;
      *&v85[6] = @"IO80211VirtualInterfaceRole";
      *&v85[14] = 2112;
      *&v85[16] = @"SoftAP";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceAddMatchingNotification() failed with error %d (%@:%@)", &v74, 74);
    }

LABEL_63:

LABEL_76:
    return 0;
  }

  v25 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap setObject:v25 forKeyedSubscript:@"SoftAP"];

  v26 = [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap objectForKeyedSubscript:@"SoftAP"];

  if (!v26)
  {
    v53 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v54 = CWFGetOSLog();
    if (v54)
    {
      v43 = CWFGetOSLog();
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v67 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219522;
      v75 = v53 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v53 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 203;
      v84 = 2112;
      *v85 = @"IO80211VirtualInterfaceRole";
      *&v85[8] = 2112;
      *&v85[10] = @"SoftAP";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v43, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Invalid map (%@:%@)", &v74, 68);
    }

    goto LABEL_74;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  notification = 0;
  v27 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceTerminate", &unk_1F5BBD7A0, sub_1E0C14904, v2, &notification);
  if (v27)
  {
    v55 = v27;
    v56 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v57 = CWFGetOSLog();
    if (v57)
    {
      v47 = CWFGetOSLog();
    }

    else
    {
      v47 = MEMORY[0x1E69E9C10];
      v68 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219778;
      v75 = v56 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v56 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 213;
      v84 = 1024;
      *v85 = v55;
      *&v85[4] = 2112;
      *&v85[6] = @"IO80211VirtualInterfaceRole";
      *&v85[14] = 2112;
      *&v85[16] = @"SoftAP";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v47, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceAddMatchingNotification() failed with error %d (%@:%@)", &v74, 74);
    }

LABEL_70:

    goto LABEL_76;
  }

  v28 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap setObject:v28 forKeyedSubscript:@"SoftAP"];

  v29 = [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap objectForKeyedSubscript:@"SoftAP"];

  if (!v29)
  {
    v58 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v59 = CWFGetOSLog();
    if (v59)
    {
      v43 = CWFGetOSLog();
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v69 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v74 = 134219522;
      v75 = v58 / 0x3B9ACA00;
      v76 = 2048;
      v77 = v58 % 0x3B9ACA00 / 0x3E8;
      v78 = 2082;
      v79 = "[CWFIO80211 init]";
      v80 = 2082;
      v81 = "CWFIO80211.m";
      v82 = 1024;
      v83 = 216;
      v84 = 2112;
      *v85 = @"IO80211VirtualInterfaceRole";
      *&v85[8] = 2112;
      *&v85[10] = @"SoftAP";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v43, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Invalid map (%@:%@)", &v74, 68);
    }

LABEL_74:

    if (notification)
    {
      IOObjectRelease(notification);
    }

    goto LABEL_76;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  return v2;
}

- (void)dealloc
{
  v29 = *MEMORY[0x1E69E9840];
  publishIO80211SkywalkInterface = self->_publishIO80211SkywalkInterface;
  if (publishIO80211SkywalkInterface)
  {
    IOObjectRelease(publishIO80211SkywalkInterface);
  }

  terminatedIO80211SkywalkInterface = self->_terminatedIO80211SkywalkInterface;
  if (terminatedIO80211SkywalkInterface)
  {
    IOObjectRelease(terminatedIO80211SkywalkInterface);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [(NSMutableDictionary *)self->_publishIO80211VirtualInterfaceMap allValues];
  v6 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 pointerValue])
        {
          IOObjectRelease([v10 pointerValue]);
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_terminatedIO80211VirtualInterfaceMap allValues];
  v12 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(allValues2);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        if ([v16 pointerValue])
        {
          IOObjectRelease([v16 pointerValue]);
        }
      }

      v13 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  portRef = self->_portRef;
  if (portRef)
  {
    IONotificationPortDestroy(portRef);
  }

  v18.receiver = self;
  v18.super_class = CWFIO80211;
  [(CWFIO80211 *)&v18 dealloc];
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C14B78;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C14C48;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C14D54;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)__IO80211InfoMatchingService:(unsigned int)service
{
  properties = 0;
  if (service)
  {
    IORegistryEntryCreateCFProperties(service, &properties, *MEMORY[0x1E695E480], 0);
    IOObjectRelease(service);
    v4 = properties;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(__CFDictionary *)v4 copy];
  if (properties)
  {
    CFRelease(properties);
  }

  return v5;
}

- (id)IO80211ControllerInfo
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("IOEthernetInterface");
  mainPort = v2;
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &mainPort + 1);
  if (MatchingServices)
  {
    v16 = MatchingServices;
    v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *properties = 134219522;
      *&properties[4] = v17 / 0x3B9ACA00;
      v24 = 2048;
      v25 = v17 % 0x3B9ACA00 / 0x3E8;
      v26 = 2082;
      v27 = "__findWiFiController";
      v28 = 2082;
      v29 = "CWFIO80211.m";
      v30 = 1024;
      v31 = 465;
      v32 = 1024;
      v33 = v16;
      v34 = 2112;
      v35 = @"IOEthernetInterface";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IOServiceGetMatchingServices() failed with error %d matching(%@)", properties, 64, mainPort);
    }

    v10 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    while (1)
    {
      v6 = IOIteratorNext(HIDWORD(mainPort));
      if (!v6)
      {
        break;
      }

      v7 = v6;
      v8 = IORegistryEntryCreateCFProperty(v6, @"BSD Name", v5, 0);
      *iterator = 0;
      *properties = 0;
      v9 = IOServiceMatching("IOSkywalkEthernetInterface");
      v10 = 0;
      if (!IOServiceGetMatchingServices(mainPort, v9, &iterator[1]) && iterator[1])
      {
        v11 = IOIteratorNext(iterator[1]);
        if (v11)
        {
          v12 = v11;
          do
          {
            if (IORegistryEntryGetParentEntry(v12, "IOService", iterator))
            {
              IOObjectRelease(v12);
            }

            else
            {
              v13 = IORegistryEntrySearchCFProperty(v12, "IOService", @"IOClassNameOverride", v5, 1u);
              v14 = IORegistryEntrySearchCFProperty(v12, "IOService", @"BSD Name", v5, 1u);
              if ([v14 isEqualToString:v8] && objc_msgSend(v13, "isEqualToString:", @"IO80211Controller"))
              {
                IORegistryEntryCreateCFProperties(iterator[0], properties, v5, 0);
              }

              if (v13)
              {
                CFRelease(v13);
              }

              if (v14)
              {
                CFRelease(v14);
              }

              IOObjectRelease(iterator[0]);
              IOObjectRelease(v12);
              if (*properties)
              {
                break;
              }
            }

            v12 = IOIteratorNext(iterator[1]);
          }

          while (v12);
        }

        IOObjectRelease(iterator[1]);
        v10 = [*properties copy];
        if (*properties)
        {
          CFRelease(*properties);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }

      IOObjectRelease(v7);
      if (v10)
      {
        goto LABEL_26;
      }
    }

    v10 = 0;
LABEL_26:
    IOObjectRelease(HIDWORD(mainPort));
  }

  return v10;
}

- (id)IO80211InterfaceInfo:(id)info error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"IOInterfaceName", infoCopy);
    v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v8, @"IOPropertyMatch", v7);
      v10 = [(CWFIO80211 *)self __IO80211InfoMatchingService:IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v9)];
    }

    else
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543362;
        v19 = infoCopy;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] (%{public}@) matchingServiceDict alloc failed", &v18, 12);
      }

      v10 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = infoCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] (%{public}@) propertyDictionaryRef alloc failed", &v18, 12);
    }

    v10 = 0;
  }

  return v10;
}

@end