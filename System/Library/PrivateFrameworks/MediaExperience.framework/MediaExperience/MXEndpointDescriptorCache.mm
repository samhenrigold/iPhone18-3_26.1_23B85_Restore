@interface MXEndpointDescriptorCache
+ (id)sharedInstance;
- (MXEndpointDescriptorCache)init;
- (OpaqueFigEndpoint)copyEndpointFromRouteDescriptor:(__CFDictionary *)descriptor routingContextUUID:(__CFString *)d retryCount:(unint64_t)count;
- (OpaqueFigEndpoint)copyEndpointWithDeviceID:(__CFString *)d isStreamID:(BOOL)iD managerType:(__CFString *)type routingContextUUID:(__CFString *)uID;
- (OpaqueFigEndpointManager)getEndpointManagerForType:(__CFString *)type;
- (__CFArray)_copyEndpoints:(__CFArray *)endpoints withPredicate:(id)predicate;
- (__CFArray)_copyMatchingEndpointsForManagerType:(__CFString *)type predicateMatchFunction:(void *)function inEndpointPredicateRefCon:(void *)con;
- (__CFArray)copyAvailableEndpointsForManager:(OpaqueFigEndpointManager *)manager;
- (__CFArray)copyAvailableRouteDescriptorsForManager:(OpaqueFigEndpointManager *)manager;
- (__CFArray)copyRegisteredEndpointMangers;
- (__CFArray)copyRouteDescriptorsForEndpoints:(__CFArray *)endpoints;
- (__CFDictionary)copyRouteDescriptorForEndpoint:(OpaqueFigEndpoint *)endpoint;
- (void)_availableEndpointsDidChangeForEndpointManager:(OpaqueFigEndpointManager *)manager atDate:(id)date;
- (void)_endpointDescriptionDidChangeForEndpoint:(OpaqueFigEndpoint *)endpoint notificationName:(__CFString *)name payload:(__CFDictionary *)payload;
- (void)dealloc;
- (void)registerEndpointManagerForCaching:(OpaqueFigEndpointManager *)caching;
@end

@implementation MXEndpointDescriptorCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_19 != -1)
  {
    +[MXEndpointDescriptorCache sharedInstance];
  }

  return sharedInstance_sSharedInstance_17;
}

- (__CFArray)copyRegisteredEndpointMangers
{
  FigSimpleMutexLock();
  registeredEndpointManagers = self->_registeredEndpointManagers;
  if (registeredEndpointManagers)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], registeredEndpointManagers);
  }

  else
  {
    Copy = 0;
  }

  FigSimpleMutexUnlock();
  return Copy;
}

MXEndpointDescriptorCache *__43__MXEndpointDescriptorCache_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXEndpointDescriptorCache);
  sharedInstance_sSharedInstance_17 = result;
  return result;
}

- (MXEndpointDescriptorCache)init
{
  v7.receiver = self;
  v7.super_class = MXEndpointDescriptorCache;
  v2 = [(MXEndpointDescriptorCache *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = MEMORY[0x1E695E9C0];
    v2->_registeredEndpointManagers = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v2->_availableEndpointsInfo = CFArrayCreateMutable(v3, 0, v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_notificationQueue = dispatch_queue_create("com.apple.mediaexperience.mxendpointdescriptor.notificationQueue", v5);
    v2->_cacheMutex = FigReentrantMutexCreate();
  }

  return v2;
}

- (void)dealloc
{
  registeredEndpointManagers = self->_registeredEndpointManagers;
  if (registeredEndpointManagers)
  {
    CFRelease(registeredEndpointManagers);
  }

  self->_registeredEndpointManagers = 0;
  availableEndpointsInfo = self->_availableEndpointsInfo;
  if (availableEndpointsInfo)
  {
    CFRelease(availableEndpointsInfo);
  }

  self->_availableEndpointsInfo = 0;
  dispatch_release(self->_notificationQueue);
  self->_notificationQueue = 0;
  FigSimpleMutexDestroy();
  self->_cacheMutex = 0;
  v5.receiver = self;
  v5.super_class = MXEndpointDescriptorCache;
  [(MXEndpointDescriptorCache *)&v5 dealloc];
}

- (__CFArray)copyRouteDescriptorsForEndpoints:(__CFArray *)endpoints
{
  FigSimpleMutexLock();
  v5 = MXEndpointDescriptorCopyAvailableRouteDescriptorsFromEndpoints(self->_availableEndpointsInfo, endpoints);
  FigSimpleMutexUnlock();
  return v5;
}

- (OpaqueFigEndpoint)copyEndpointFromRouteDescriptor:(__CFDictionary *)descriptor routingContextUUID:(__CFString *)d retryCount:(unint64_t)count
{
  v60 = *MEMORY[0x1E69E9840];
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
LABEL_87:
    if (!count)
    {
      return 0;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MEMORY[0x1B2734EB0](100000);
    return [(MXEndpointDescriptorCache *)self copyEndpointFromRouteDescriptor:descriptor routingContextUUID:d retryCount:count - 1];
  }

  v10 = Value;
  countCopy = count;
  dCopy = d;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(d);
  FigSimpleMutexLock();
  theDict = descriptor;
  CFDictionaryGetValue(descriptor, @"AudioRouteName");
  v12 = 0;
  v13 = 0;
  v47 = *MEMORY[0x1E69618B8];
  v14 = *MEMORY[0x1E695E480];
  v49 = *MEMORY[0x1E69618F8];
  v51 = ContextType;
  while (1)
  {
    registeredEndpointManagers = self->_registeredEndpointManagers;
    if (registeredEndpointManagers)
    {
      registeredEndpointManagers = CFArrayGetCount(registeredEndpointManagers);
    }

    if (v12 >= registeredEndpointManagers)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_registeredEndpointManagers, v12);
    if (!FigRoutingManagerShouldSkipEndpointManager(ValueAtIndex))
    {
      selfCopy = self;
      v58[0] = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(CMBaseObject, v47, v14, v58);
      }

      if (FigCFEqual() && FigCFEqual())
      {
        v20 = v58[0];
        self = selfCopy;
        ContextType = v51;
        if (!v58[0])
        {
          goto LABEL_24;
        }

LABEL_23:
        CFRelease(v20);
LABEL_24:
        v13 = ValueAtIndex;
        break;
      }

      self = selfCopy;
      ContextType = v51;
      if (FigCFEqual() && v51 != 13 && (FigCFEqual() || FigCFEqual()))
      {
        if (!CFDictionaryGetValue(theDict, @"PortNumber"))
        {
          goto LABEL_22;
        }
      }

      else if (FigCFEqual())
      {
        v13 = ValueAtIndex;
        if (v51 == 13)
        {
LABEL_22:
          v20 = v58[0];
          if (v58[0])
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      if (v58[0])
      {
        CFRelease(v58[0]);
      }
    }

    ++v12;
  }

  descriptor = theDict;
  if (!v13)
  {
    FigSimpleMutexUnlock();
    d = dCopy;
    goto LABEL_87;
  }

  if (ContextType == 13)
  {
    selfCopy2 = self;
    v58[0] = 0;
    v21 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (v21)
    {
      v21(v13, 0x1F289BB30, v14, 0, 0, v58);
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = v58[0];
    v24 = [v58[0] countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
      v27 = *MEMORY[0x1E69620F8];
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v53 + 1) + 8 * i);
          *cf = 0;
          v30 = FigEndpointGetCMBaseObject();
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            v31(v30, v27, v14, cf);
          }

          if ([*cf containsString:v10])
          {
            [v22 addObject:v29];
          }

          if (*cf)
          {
            CFRelease(*cf);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v25);
    }

    v32 = v22;

    if (v58[0])
    {
      CFRelease(v58[0]);
    }

    descriptor = theDict;
    self = selfCopy2;
    ContextType = v51;
  }

  else
  {
    v33 = [(MXEndpointDescriptorCache *)self copyAvailableEndpointsForManager:v13];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __91__MXEndpointDescriptorCache_copyEndpointFromRouteDescriptor_routingContextUUID_retryCount___block_invoke;
    v52[3] = &__block_descriptor_40_e28_B16__0__OpaqueFigEndpoint__8l;
    v52[4] = v10;
    v32 = [(MXEndpointDescriptorCache *)self _copyEndpoints:v33 withPredicate:v52];
    if (v33)
    {
      CFRelease(v33);
    }
  }

  v58[0] = 0;
  v34 = FigEndpointManagerGetCMBaseObject();
  v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v35)
  {
    v35(v34, v47, v14, v58);
  }

  FigRoutingManagerLogEndpointIDs(@"The matching endpoints are:", v32, 0, 1);
  if (!FigCFEqual())
  {
    count = countCopy;
    d = dCopy;
    if (!v32 || CFArrayGetCount(v32) < 1)
    {
      v41 = 0;
      goto LABEL_79;
    }

    selfCopy4 = self;
    descriptorCopy3 = descriptor;
    v39 = CFArrayGetValueAtIndex(v32, 0);
    if (v39)
    {
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  count = countCopy;
  d = dCopy;
  if (v32)
  {
    Count = CFArrayGetCount(v32);
  }

  else
  {
    Count = 0;
  }

  selfCopy4 = self;
  if (ContextType == 7 || ContextType == 9)
  {
    if (Count >= 1)
    {
      descriptorCopy3 = descriptor;
      v40 = 0;
      while (1)
      {
        v39 = CFArrayGetValueAtIndex(v32, v40);
        if ((FigEndpointGetSupportedFeatures() & 0x10) != 0)
        {
          goto LABEL_74;
        }

        if (Count == ++v40)
        {
          goto LABEL_76;
        }
      }
    }
  }

  else if (Count >= 1)
  {
    descriptorCopy3 = descriptor;
    v42 = 0;
    while (1)
    {
      v39 = CFArrayGetValueAtIndex(v32, v42);
      if ((FigEndpointGetSupportedFeatures() & 0x10) == 0)
      {
        break;
      }

      if (Count == ++v42)
      {
        goto LABEL_76;
      }
    }

LABEL_74:
    if (v39)
    {
LABEL_75:
      v41 = CFRetain(v39);
LABEL_77:
      descriptor = descriptorCopy3;
      goto LABEL_78;
    }

LABEL_76:
    v41 = 0;
    goto LABEL_77;
  }

  v41 = 0;
LABEL_78:
  self = selfCopy4;
LABEL_79:
  if (v58[0])
  {
    CFRelease(v58[0]);
    v58[0] = 0;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  FigSimpleMutexUnlock();
  if (!v41)
  {
    goto LABEL_87;
  }

  if (FigRoutingManagerIsEndpointOfType(v41, *MEMORY[0x1E69626B8]))
  {
    if (CMSMVAUtility_IsPortAvailableForEndpoint(v41, 0))
    {
      CFRelease(v41);
      v41 = FigRoutingManagerCopyEndpointWithDeviceID(v10, 0, v49, 0);
      if (!v41)
      {
        goto LABEL_87;
      }
    }
  }

  return v41;
}

- (OpaqueFigEndpointManager)getEndpointManagerForType:(__CFString *)type
{
  FigSimpleMutexLock();
  v4 = 0;
  v5 = *MEMORY[0x1E69618B8];
  v6 = *MEMORY[0x1E695E480];
  while (1)
  {
    registeredEndpointManagers = self->_registeredEndpointManagers;
    if (registeredEndpointManagers)
    {
      registeredEndpointManagers = CFArrayGetCount(registeredEndpointManagers);
    }

    if (v4 >= registeredEndpointManagers)
    {
      ValueAtIndex = 0;
      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_registeredEndpointManagers, v4);
    cf = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, v5, v6, &cf);
    }

    if (FigCFEqual())
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v4;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return ValueAtIndex;
}

- (__CFArray)_copyMatchingEndpointsForManagerType:(__CFString *)type predicateMatchFunction:(void *)function inEndpointPredicateRefCon:(void *)con
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = 0; ; ++i)
  {
    availableEndpointsInfo = self->_availableEndpointsInfo;
    if (availableEndpointsInfo)
    {
      availableEndpointsInfo = CFArrayGetCount(availableEndpointsInfo);
    }

    if (i >= availableEndpointsInfo)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_availableEndpointsInfo, i);
    CFDictionaryGetValue(ValueAtIndex, @"ManagerType");
    Value = CFDictionaryGetValue(ValueAtIndex, @"Endpoint");
    if (FigCFEqual() && (function)(Value, con) && !FigRoutingManagerIsEndpointDissociated(Value))
    {
      CFArrayAppendValue(Mutable, Value);
    }
  }

  return Mutable;
}

- (__CFArray)_copyEndpoints:(__CFArray *)endpoints withPredicate:(id)predicate
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(__CFArray *)endpoints countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(endpoints);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ((*(predicate + 2))(predicate, v11))
        {
          CFArrayAppendValue(v6, v11);
        }
      }

      v8 = [(__CFArray *)endpoints countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)_availableEndpointsDidChangeForEndpointManager:(OpaqueFigEndpointManager *)manager atDate:(id)date
{
  v90[16] = *MEMORY[0x1E69E9840];
  v73 = 0;
  allocator = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  v9 = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {
    v9 = v11(CMBaseObject, *MEMORY[0x1E69618B8], allocator, &v73);
  }

  if (dword_1EB75DE40)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    v9 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled(v9, v8) && FigCFEqual())
  {
    v13 = FigEndpointManagerGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = @"AvailableEndpointsExtended";
  }

  else
  {
    v13 = FigEndpointManagerGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = *MEMORY[0x1E69618A8];
  }

  v14(v13, v15, allocator, &cf);
LABEL_12:
  v16 = [(MXEndpointDescriptorCache *)self _copyEndpoints:cf withPredicate:&__block_literal_global_22_1];
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v17 = MXEndpointDescriptorCopyReducedForManager(self->_availableEndpointsInfo, @"Endpoint", v73);
  theArray = MXCopyCFArrayDifferenceFromArray(v17, v16);
  v64 = v17;
  v65 = v16;
  v18 = MXCopyCFArrayDifferenceFromArray(v16, v17);
  v19 = v18;
  if (v18 && CFArrayGetCount(v18))
  {
    v20 = MXEndpointDescriptorLogRouteDelta(v73, self->_availableEndpointsInfo, v19, 1);
    if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(v20, v21) && (FigCFEqual() || FigCFEqual()))
    {
      managerCopy = manager;
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      selfCopy = self;
      v24 = 0;
      v67 = v73;
      v60 = UpTimeNanoseconds;
      v61 = selfCopy;
      availableEndpointsInfo = selfCopy->_availableEndpointsInfo;
      v66 = v19;
      if (!availableEndpointsInfo)
      {
        goto LABEL_21;
      }

LABEL_20:
      for (i = CFArrayGetCount(availableEndpointsInfo); v24 < i; i = 0)
      {
        CFArrayGetValueAtIndex(availableEndpointsInfo, v24);
        FigCFDictionaryGetValue();
        if (FigCFArrayContainsValue())
        {
          FigCFDictionaryGetValue();
          Value = FigCFDictionaryGetValue();
          v28 = FigCFDictionaryGetValue();
          v29 = FigCFDictionaryGetValue();
          v30 = FigCFDictionaryGetValue();
          v31 = FigCFDictionaryGetValue();
          if (dword_1EB75DE40)
          {
            v32 = v31;
            *type = 0;
            v74 = OS_LOG_TYPE_DEFAULT;
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v34 = *type;
            v35 = v74;
            if (os_log_type_enabled(v33, v74))
            {
              v36 = v34;
            }

            else
            {
              v36 = v34 & 0xFFFFFFFE;
            }

            if (v36)
            {
              v76 = 136316674;
              v77 = "MXEndpointDescriptorCleanupBannersIfNeeded";
              v78 = 2114;
              v79 = Value;
              v80 = 2114;
              v81 = v28;
              v82 = 2114;
              v83 = v29;
              v84 = 2114;
              v85 = v30;
              v86 = 2114;
              v87 = v32;
              v88 = 2114;
              v89 = v67;
              LODWORD(v59) = 72;
              _os_log_send_and_compose_impl(v36, 0, v90, 128, &dword_1B17A2000, v33, v35, "-MXEndpointDescriptorCache- %s:  MXEndpointDescriptorCleanupBannersIfNeeded for routeuid = %{public}@, routeName = %{public}@, portNumber = %{public}@, headphone = %{public}@, headphoneBT = %{public}@, managerType = %{public}@", &v76, v59);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v19 = v66;
          }

          [+[MX_BannerManager sharedInstance](MX_BannerManager cleanupBannersIfNeededForRoute:"cleanupBannersIfNeededForRoute:routeName:endpointManagerType:" routeName:Value endpointManagerType:v28, v67];
        }

        ++v24;
        if (availableEndpointsInfo)
        {
          goto LABEL_20;
        }

LABEL_21:
        ;
      }

      v37 = FigGetUpTimeNanoseconds();
      self = v61;
      manager = managerCopy;
      if (dword_1EB75DE40)
      {
        v38 = v37;
        *type = 0;
        v74 = OS_LOG_TYPE_DEFAULT;
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = *type;
        v41 = v74;
        if (os_log_type_enabled(v39, v74))
        {
          v42 = v40;
        }

        else
        {
          v42 = v40 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v76 = 136315394;
          v77 = "[MXEndpointDescriptorCache _availableEndpointsDidChangeForEndpointManager:atDate:]";
          v78 = 2048;
          v79 = (v38 - v60) / 0xF4240uLL;
          LODWORD(v59) = 22;
          _os_log_send_and_compose_impl(v42, 0, v90, 128, &dword_1B17A2000, v39, v41, "-MXEndpointDescriptorCache- %s: timeTaken to clean up banners: %llu ms.", &v76, v59);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v43 = self->_availableEndpointsInfo;
    if (v43)
    {
      Count = CFArrayGetCount(self->_availableEndpointsInfo);
      if (Count >= 1)
      {
        v45 = Count;
        for (j = 0; j < v45; ++j)
        {
          CFArrayGetValueAtIndex(v43, j);
          FigCFDictionaryGetValue();
          if (FigCFArrayContainsValue())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            +[MXEndpointDescriptorCache sharedInstance];
            CMNotificationCenterRemoveListener();
            CFArrayRemoveValueAtIndex(v43, j--);
            v45 = CFArrayGetCount(v43);
          }
        }
      }
    }
  }

  v47 = theArray;
  if (theArray && CFArrayGetCount(theArray))
  {
    managerCopy2 = manager;
    v48 = self->_availableEndpointsInfo;
    if (CFArrayGetCount(theArray) >= 1)
    {
      v49 = 0;
      v68 = *MEMORY[0x1E6962280];
      v50 = MEMORY[0x1E695E9D8];
      v51 = MEMORY[0x1E695E9E8];
      do
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, v50, v51);
        FigCFDictionarySetValue();
        CFArrayGetValueAtIndex(v47, v49);
        FigCFDictionarySetValue();
        v90[0] = 0;
        CFArrayGetValueAtIndex(v47, v49);
        v53 = FigEndpointGetCMBaseObject();
        v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v54)
        {
          v54(v53, v68, allocator, v90);
        }

        FigCFDictionarySetValue();
        if (v90[0])
        {
          CFRelease(v90[0]);
          v90[0] = 0;
        }

        CFArrayAppendValue(v48, Mutable);
        v47 = theArray;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        ++v49;
      }

      while (v49 < CFArrayGetCount(theArray));
    }

    if (CFArrayGetCount(v47) >= 1)
    {
      v55 = 0;
      v56 = *MEMORY[0x1E69626C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v47, v55);
        FigEndpointDescriptorUtility_IsEndpointOfType(v56, ValueAtIndex);
        CMNotificationCenterGetDefaultLocalCenter();
        +[MXEndpointDescriptorCache sharedInstance];
        CMNotificationCenterAddListener();
        [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache _endpointDescriptionDidChangeForEndpoint:"_endpointDescriptionDidChangeForEndpoint:", CFArrayGetValueAtIndex(v47, v55++)];
      }

      while (v55 < CFArrayGetCount(v47));
    }

    MXEndpointDescriptorLogRouteDelta(v73, self->_availableEndpointsInfo, v47, 0);
    manager = managerCopy2;
  }

  if (manager)
  {
    CFRetain(manager);
  }

  if (v65)
  {
    CFRetain(v65);
  }

  if (v47)
  {
    CFRetain(v47);
  }

  if (v19)
  {
    CFRetain(v19);
  }

  notificationQueue = self->_notificationQueue;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __83__MXEndpointDescriptorCache__availableEndpointsDidChangeForEndpointManager_atDate___block_invoke_24;
  v71[3] = &__block_descriptor_64_e5_v8__0l;
  v71[4] = manager;
  v71[5] = v65;
  v71[6] = v47;
  v71[7] = v19;
  MXDispatchAsync("[MXEndpointDescriptorCache _availableEndpointsDidChangeForEndpointManager:atDate:]", "MXEndpointDescriptorCache.m", 848, 0, 0, notificationQueue, v71);
  if (v73)
  {
    CFRelease(v73);
    v73 = 0;
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void __83__MXEndpointDescriptorCache__availableEndpointsDidChangeForEndpointManager_atDate___block_invoke_24(const void **a1)
{
  FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager(a1[4], a1[5], a1[6], a1[7]);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __95__MXEndpointDescriptorCache__endpointDescriptionDidChangeForEndpoint_notificationName_payload___block_invoke(const void **a1)
{
  FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache(a1[4], a1[5], a1[6]);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)registerEndpointManagerForCaching:(OpaqueFigEndpointManager *)caching
{
  cf[20] = *MEMORY[0x1E69E9840];
  if (caching)
  {
    FigSimpleMutexLock();
    if (!FigCFArrayContainsValue())
    {
      cf[0] = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], cf);
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (FigCFEqual())
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_30(DefaultLocalCenter, v9, v10, *MEMORY[0x1E6961888]);
        CFArrayInsertValueAtIndex(self->_registeredEndpointManagers, 0, caching);
      }

      else
      {
        CFArrayAppendValue(self->_registeredEndpointManagers, caching);
        v11 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_30(v11, v12, v13, *MEMORY[0x1E6961888]);
        -[MXEndpointDescriptorCache _availableEndpointsDidChangeForEndpointManager:atDate:](self, "_availableEndpointsDidChangeForEndpointManager:atDate:", caching, [MEMORY[0x1E695DF00] date]);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    FigSimpleMutexUnlock();
  }
}

- (__CFArray)copyAvailableEndpointsForManager:(OpaqueFigEndpointManager *)manager
{
  v11 = 0;
  if (manager)
  {
    cf = 0;
    v4 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69618B8], v4, &cf);
    }

    if (FigCFEqual())
    {
      v7 = FigEndpointManagerGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(v7, *MEMORY[0x1E69618A8], v4, &v11);
      }
    }

    else
    {
      FigSimpleMutexLock();
      v11 = MXEndpointDescriptorCopyReducedForManager(self->_availableEndpointsInfo, @"Endpoint", cf);
      FigSimpleMutexUnlock();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v11;
}

- (__CFArray)copyAvailableRouteDescriptorsForManager:(OpaqueFigEndpointManager *)manager
{
  if (!manager)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
  }

  FigSimpleMutexLock();
  v6 = MXEndpointDescriptorCopyReducedForManager(self->_availableEndpointsInfo, @"RouteDescriptor", cf);
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

- (__CFDictionary)copyRouteDescriptorForEndpoint:(OpaqueFigEndpoint *)endpoint
{
  if (!endpoint)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = MXEndpointDescriptorCopyAvailableRouteDescriptorsFromEndpoints(self->_availableEndpointsInfo, [MEMORY[0x1E695DEC8] arrayWithObject:endpoint]);
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0)) != 0)
    {
      v8 = CFRetain(ValueAtIndex);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

- (OpaqueFigEndpoint)copyEndpointWithDeviceID:(__CFString *)d isStreamID:(BOOL)iD managerType:(__CFString *)type routingContextUUID:(__CFString *)uID
{
  iDCopy = iD;
  if (!d)
  {
    return 0;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(uID);
  FigSimpleMutexLock();
  registeredEndpointManagers = self->_registeredEndpointManagers;
  if (registeredEndpointManagers && (v10 = CFArrayGetCount(registeredEndpointManagers), v10 >= 1))
  {
    v11 = v10;
    Mutable = 0;
    v13 = 0;
    v14 = *MEMORY[0x1E69618B8];
    v15 = *MEMORY[0x1E695E480];
    v37 = *MEMORY[0x1E69618B8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_registeredEndpointManagers, v13);
      cf = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(CMBaseObject, v14, v15, &cf);
      }

      if (FigCFEqual() && !FigRoutingManagerShouldSkipEndpointManager(ValueAtIndex))
      {
        if (FigCFEqual())
        {
          theArray = 0;
          if (ContextType == 13)
          {
            v20 = *(*(CMBaseObjectGetVTable() + 24) + 24);
            if (v20)
            {
              v20(ValueAtIndex, 0x1F289BB30, v15, 0, 0, &theArray);
            }
          }

          else
          {
            v22 = FigEndpointManagerGetCMBaseObject();
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v23)
            {
              v23(v22, 0x1F289BB10, v15, &theArray);
            }
          }

          Mutable = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count >= 1)
            {
              v25 = Count;
              for (i = 0; i != v25; ++i)
              {
                v27 = CFArrayGetValueAtIndex(theArray, i);
                if (FigEndpointUtility_EndpointPredicate_ContainsID())
                {
                  CFArrayAppendValue(Mutable, v27);
                }
              }
            }
          }

          if (Mutable)
          {
            v14 = v37;
            if (!CFArrayGetCount(Mutable))
            {
              CFRelease(Mutable);
              Mutable = 0;
            }
          }

          else
          {
            v14 = v37;
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }

        else
        {
          if (iDCopy)
          {
            if (FigCFEqual())
            {
              v21 = MXEndpointDescriptorCacheDoesEndpointIDMatchDeviceID;
            }

            else
            {
              v21 = MEMORY[0x1E695FF20];
            }
          }

          else
          {
            v21 = MEMORY[0x1E695FF18];
          }

          Mutable = [(MXEndpointDescriptorCache *)self _copyMatchingEndpointsForManagerType:type predicateMatchFunction:v21 inEndpointPredicateRefCon:d];
        }

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (++v13 == v11)
      {
        v28 = 1;
      }

      else
      {
        v28 = v19;
      }
    }

    while (v28 != 1);
  }

  else
  {
    Mutable = 0;
  }

  if (FigCFEqual())
  {
    if (Mutable)
    {
      v29 = CFArrayGetCount(Mutable);
    }

    else
    {
      v29 = 0;
    }

    if (ContextType == 7 || ContextType == 9)
    {
      if (v29 >= 1)
      {
        v33 = 0;
        do
        {
          v31 = CFArrayGetValueAtIndex(Mutable, v33);
          if ((FigEndpointGetSupportedFeatures() & 0x10) != 0)
          {
            goto LABEL_66;
          }
        }

        while (v29 != ++v33);
      }
    }

    else if (v29 >= 1)
    {
      v34 = 0;
      while (1)
      {
        v31 = CFArrayGetValueAtIndex(Mutable, v34);
        if ((FigEndpointGetSupportedFeatures() & 0x10) == 0)
        {
          break;
        }

        if (v29 == ++v34)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      if (v31)
      {
        v31 = CFRetain(v31);
      }

LABEL_68:
      if (!Mutable)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

LABEL_65:
    v31 = 0;
    goto LABEL_68;
  }

  if (!Mutable)
  {
    v31 = 0;
    goto LABEL_72;
  }

  if (CFArrayGetCount(Mutable) >= 1 && (v30 = CFArrayGetValueAtIndex(Mutable, 0)) != 0)
  {
    v31 = CFRetain(v30);
  }

  else
  {
    v31 = 0;
  }

LABEL_71:
  CFRelease(Mutable);
LABEL_72:
  FigSimpleMutexUnlock();
  return v31;
}

- (void)_endpointDescriptionDidChangeForEndpoint:(OpaqueFigEndpoint *)endpoint notificationName:(__CFString *)name payload:(__CFDictionary *)payload
{
  if (endpoint)
  {
    for (i = 0; ; ++i)
    {
      availableEndpointsInfo = self->_availableEndpointsInfo;
      if (availableEndpointsInfo)
      {
        availableEndpointsInfo = CFArrayGetCount(availableEndpointsInfo);
      }

      if (i >= availableEndpointsInfo)
      {
        break;
      }

      CFArrayGetValueAtIndex(self->_availableEndpointsInfo, i);
      FigCFDictionaryGetValue();
      if (FigCFEqual())
      {
        v11 = FigEndpointDescriptorUtility_CopyDescriptorForNonVirtualAudioEndpoint(endpoint);
        FigCFDictionarySetValue();
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    CFRetain(endpoint);
    if (name)
    {
      CFRetain(name);
    }

    if (payload)
    {
      CFRetain(payload);
    }

    notificationQueue = self->_notificationQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __95__MXEndpointDescriptorCache__endpointDescriptionDidChangeForEndpoint_notificationName_payload___block_invoke;
    v13[3] = &__block_descriptor_56_e5_v8__0l;
    v13[4] = endpoint;
    v13[5] = name;
    v13[6] = payload;
    MXDispatchAsync("[MXEndpointDescriptorCache _endpointDescriptionDidChangeForEndpoint:notificationName:payload:]", "MXEndpointDescriptorCache.m", 882, 0, 0, notificationQueue, v13);
  }
}

@end