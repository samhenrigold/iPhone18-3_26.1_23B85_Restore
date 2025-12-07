@interface MX_BannerManager
+ (id)bannerResponseToString:(id)string;
+ (id)getAwaitingDispatchQueue;
+ (id)getBannerCleanupDispatchQueue;
+ (id)getCacheKey:(id)key endpointType:(id)type;
+ (id)getRoutingTargetDeviceTypeString:(unsigned int)string;
+ (id)getSharedBannerClient;
+ (id)sharedInstance;
+ (int)getButtonType:(unsigned int)type;
- (BOOL)isCarPlayPortRoutableFromCustomizedRoutingPerspective:(__CFString *)perspective;
- (BOOL)newPortNeedsToShowBanner:(id)banner previousPort:(unsigned int)port;
- (MX_BannerManager)init;
- (__CFArray)copyUndoEndpointsForRoute:(id)route;
- (void)cleanupBannerCache:(id)cache;
- (void)cleanupBannerIfNeededForRoute:(__CFString *)route routeName:(__CFString *)name bannerType:(unsigned __int8)type;
- (void)cleanupBannerWithTxid:(id)txid targetRouteUID:(__CFString *)d bannerType:(unsigned __int8)type;
- (void)cleanupBanners;
- (void)cleanupBannersIfNeededForRoute:(__CFString *)route routeName:(__CFString *)name endpointManagerType:(__CFString *)type;
- (void)dealloc;
- (void)promptUserResponseForRoute:(id)route connectHandler:(id)handler;
- (void)promptUserResponseForUndoRoute:(id)route undoHandler:(id)handler;
- (void)sendBannerActionToAudioStatistics:(int64_t)statistics bannerType:(int64_t)type targetDeviceType:(int64_t)deviceType targetProductID:(id)d sourceDeviceType:(id)sourceDeviceType;
- (void)sendBannerStartToAudioStatistics:(int64_t)statistics targetDeviceType:(int64_t)type targetProductID:(id)d sourceDeviceType:(id)deviceType;
- (void)updatePartnerPortsInUndoBannerResponseCacheForKey:(id)key forPort:(unsigned int)port;
@end

@implementation MX_BannerManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[MX_BannerManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_13;
}

+ (id)getAwaitingDispatchQueue
{
  if (getAwaitingDispatchQueue_onceToken != -1)
  {
    +[MX_BannerManager getAwaitingDispatchQueue];
  }

  return sAwaitingDispatchQueue;
}

+ (id)getBannerCleanupDispatchQueue
{
  if (getBannerCleanupDispatchQueue_onceToken != -1)
  {
    +[MX_BannerManager getBannerCleanupDispatchQueue];
  }

  return sBannerCleanupDispatchQueue;
}

+ (id)getSharedBannerClient
{
  if (getSharedBannerClient_onceToken != -1)
  {
    +[MX_BannerManager getSharedBannerClient];
  }

  return sBannerClient;
}

+ (id)bannerResponseToString:(id)string
{
  intValue = [string intValue];
  if (intValue >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%@)", string];
  }

  else
  {
    return off_1E7AEC8D8[intValue];
  }
}

- (BOOL)isCarPlayPortRoutableFromCustomizedRoutingPerspective:(__CFString *)perspective
{
  v13 = *MEMORY[0x1E69E9840];
  if (![+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
  {
    v5 = 0;
    v8 = 1;
    goto LABEL_19;
  }

  v5 = MXCFCopyPrefixSubstring(perspective, 17);
  v6 = [MX_BannerManager getCacheKey:v5 endpointType:*MEMORY[0x1E69618E0]];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if ([(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v6]|| [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v6])
  {
    if (+[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled](MXSystemController, "preferHeadphonesOverCarsAndSpeakersEnabled") && -[NSMutableDictionary objectForKey:](self->connectBannerResponseCache, "objectForKey:", v6) && [-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache objectForKey:{v6), "bannerResponse"}] != 1)
    {
      if (dword_1EB75DE40)
      {
LABEL_16:
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    if (-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache, "objectForKey:", v6) && [-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache objectForKey:{v6), "bannerResponse"}] == 1)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  v8 = 1;
LABEL_18:
  objc_sync_exit(v9);
LABEL_19:
  if (dword_1EB75DE40)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

- (MX_BannerManager)init
{
  v4.receiver = self;
  v4.super_class = MX_BannerManager;
  v2 = [(MX_BannerManager *)&v4 init];
  if (v2)
  {
    v2->connectBannerResponseCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->undoBannerResponseCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->connectBannerResponseCache removeAllObjects];

  [(NSMutableDictionary *)self->undoBannerResponseCache removeAllObjects];
  v3.receiver = self;
  v3.super_class = MX_BannerManager;
  [(MX_BannerManager *)&v3 dealloc];
}

- (void)cleanupBannerWithTxid:(id)txid targetRouteUID:(__CFString *)d bannerType:(unsigned __int8)type
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 8;
  if (type == 1)
  {
    v7 = 16;
  }

  v8 = *(&self->super.isa + v7);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (txid)
  {
    [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
    if (dword_1EB75DE40)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = bannerResponseCacheMutex;
    objc_sync_enter(bannerResponseCacheMutex);
    if ([objc_msgSend(v8 objectForKey:{d), "routeSemaphore"}])
    {
      dispatch_semaphore_signal([objc_msgSend(v8 objectForKey:{d), "routeSemaphore"}]);
    }

    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v8 removeObjectForKey:d];
    objc_sync_exit(v11);
  }
}

- (void)cleanupBannerCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  obj = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [cache countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(cache);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [objc_msgSend(cache objectForKey:{v7), "txid"}];
        if (v8)
        {
          [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
          if ([objc_msgSend(cache objectForKey:{v7), "routeSemaphore"}])
          {
            dispatch_semaphore_signal([objc_msgSend(cache objectForKey:{v7), "routeSemaphore"}]);
          }

          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      v4 = [cache countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [cache removeAllObjects];
  objc_sync_exit(obj);
}

- (void)cleanupBanners
{
  v3 = +[MX_BannerManager getBannerCleanupDispatchQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MX_BannerManager_cleanupBanners__block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = self;
  MXDispatchAsync("[MX_BannerManager cleanupBanners]", "MX_BannerManager.m", 289, 0, 0, v3, v4);
}

- (void)cleanupBannersIfNeededForRoute:(__CFString *)route routeName:(__CFString *)name endpointManagerType:(__CFString *)type
{
  if (route)
  {
    CFRetain(route);
  }

  if (name)
  {
    CFRetain(name);
  }

  if (type)
  {
    CFRetain(type);
  }

  v9 = +[MX_BannerManager getBannerCleanupDispatchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__MX_BannerManager_cleanupBannersIfNeededForRoute_routeName_endpointManagerType___block_invoke;
  v10[3] = &unk_1E7AE7230;
  v10[4] = self;
  v10[5] = route;
  v10[6] = type;
  v10[7] = name;
  MXDispatchAsync("[MX_BannerManager cleanupBannersIfNeededForRoute:routeName:endpointManagerType:]", "MX_BannerManager.m", 304, 0, 0, v9, v10);
}

- (void)cleanupBannerIfNeededForRoute:(__CFString *)route routeName:(__CFString *)name bannerType:(unsigned __int8)type
{
  typeCopy = type;
  v14 = *MEMORY[0x1E69E9840];
  v8 = 8;
  if (type == 1)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v10 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if (v9)
  {
    if ([v9 objectForKey:route])
    {
      v11 = [objc_msgSend(v9 objectForKey:{route), "txid"}];
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MX_BannerManager *)self cleanupBannerWithTxid:v11 targetRouteUID:route bannerType:typeCopy];
    }

    else if (dword_1EB75DE40)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  objc_sync_exit(v10);
}

- (void)promptUserResponseForRoute:(id)route connectHandler:(id)handler
{
  v74 = *MEMORY[0x1E69E9840];
  if (route)
  {
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 1;
    cf = [route objectForKey:@"PortMacAddress"];
    v37 = [route objectForKey:@"PortDeviceIdentifier"];
    v41 = [route objectForKey:@"RoutingContextUUID"];
    v38 = [route objectForKey:@"PortName"];
    v7 = [route objectForKey:@"PortID"];
    v39 = [route objectForKey:@"WirelessPorts"];
    v8 = [objc_msgSend(route objectForKey:{@"OldPort", "intValue"}];
    v40 = [route objectForKey:@"MostRecentCurrentlyActivatingEndpoint"];
    if (dword_1EB75DE40)
    {
      *v63 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = [(MX_BannerManager *)self newPortNeedsToShowBanner:v7 previousPort:v8];
    v12 = +[MX_BannerManager getCacheKey:port:](MX_BannerManager, "getCacheKey:port:", cf, [v7 intValue]);
    v13 = bannerResponseCacheMutex;
    objc_sync_enter(bannerResponseCacheMutex);
    if (!v11)
    {
      goto LABEL_35;
    }

    if (-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache, "objectForKey:", v12) && [-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache objectForKey:{v12), "bannerResponse"}] == 3)
    {
      if (dword_1EB75DE40)
      {
        *v63 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, type[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_35:
      if (![(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12])
      {
        if (dword_1EB75DE40)
        {
          *v63 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, type[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v25 = objc_alloc_init(MXBannerResponseInfoBase);
        [(MXBannerResponseInfoBase *)v25 setBannerResponse:0];
        [(NSMutableDictionary *)self->connectBannerResponseCache setObject:v25 forKey:v12];
      }

      v26 = [(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v26, "bannerResponse")}];
      routeSemaphore = [v26 routeSemaphore];
      if ([v27 isEqualToNumber:&unk_1F28AF6B0])
      {
        v27 = &unk_1F28AF6C8;
      }

      if (dword_1EB75DE40)
      {
        *v63 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, type[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ([v27 isEqualToNumber:&unk_1F28AF6C8])
      {
        if (v39)
        {
          CFRetain(v39);
        }

        if (v41)
        {
          CFRetain(v41);
        }

        if (cf)
        {
          CFRetain(cf);
        }

        if (v40)
        {
          CFRetain(v40);
        }

        if (v37)
        {
          CFRetain(v37);
        }

        if (routeSemaphore)
        {
          dispatch_retain(routeSemaphore);
        }

        v30 = v12;
        v31 = +[MX_BannerManager getAwaitingDispatchQueue];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke_101;
        v43[3] = &unk_1E7AEC870;
        v43[4] = v12;
        v43[5] = routeSemaphore;
        v43[6] = self;
        v43[7] = handler;
        v43[8] = v37;
        v43[9] = v39;
        v43[10] = v40;
        v43[11] = v41;
        v43[12] = cf;
        MXDispatchAsync("[MX_BannerManager promptUserResponseForRoute:connectHandler:]", "MX_BannerManager.m", 557, 0, 0, v31, v43);
      }

      else if ([v27 isEqualToNumber:&unk_1F28AF6F8])
      {
        if (dword_1EB75DE40)
        {
          *v63 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, type[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        (*(handler + 2))(handler, v39, v40, v41);
      }

      else
      {
        v33 = [v27 isEqualToNumber:&unk_1F28AF6E0];
        if (dword_1EB75DE40)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        if (v34 == 1)
        {
          *v63 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, type[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      goto LABEL_68;
    }

    if (![(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12])
    {
      v15 = objc_alloc_init(MXBannerResponseInfoBase);
      [(MXBannerResponseInfoBase *)v15 setBannerResponse:3];
      [(NSMutableDictionary *)self->connectBannerResponseCache setObject:v15 forKey:v12];
    }

    object = [-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache objectForKey:{v12), "routeSemaphore"}];
    if (dword_1EB75DE40)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, type[0]);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    +[MX_BannerManager getButtonType:](MX_BannerManager, "getButtonType:", [v7 intValue]);
    if (CMSMVAUtility_IsPortOfTypeCarPlay([v7 intValue]))
    {
      IsPortOfTypeBluetoothVehicle = 2;
    }

    else
    {
      IsPortOfTypeBluetoothVehicle = CMSMVAUtility_IsPortOfTypeBluetoothVehicle([v7 intValue]);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    if (v39)
    {
      CFRetain(v39);
    }

    if (v41)
    {
      CFRetain(v41);
    }

    if (v40)
    {
      CFRetain(v40);
    }

    if (v38)
    {
      CFRetain(v38);
    }

    if (object)
    {
      dispatch_retain(object);
    }

    v18 = v12;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = CMSMVAUtility_CopyBluetoothDeviceModelID([v7 intValue]);
    *v63 = 0;
    v64 = v63;
    v65 = 0x2020000000;
    v66 = CMSMVAUtility_CopyBluetoothDeviceModelID(v8);
    [(MX_BannerManager *)self sendBannerStartToAudioStatistics:0 targetDeviceType:IsPortOfTypeBluetoothVehicle targetProductID:v71[3] sourceDeviceType:*(v64 + 3)];
    v19 = +[MX_BannerManager getSharedBannerClient];
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke;
    v49 = &unk_1E7AEC848;
    selfCopy = self;
    v51 = v12;
    v54 = v67;
    v55 = &v70;
    v56 = v63;
    v57 = IsPortOfTypeBluetoothVehicle;
    v52 = object;
    handlerCopy = handler;
    v58 = v39;
    v59 = v40;
    v60 = v41;
    v61 = cf;
    v62 = v38;
    v20 = [v19 promptForConnectDialog:? withIconType:? callbackHandler:?];
    v21 = [(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12];
    if (v21)
    {
      [v21 setTxid:v20];
      if (dword_1EB75DE40)
      {
        v45 = 0;
        v44 = OS_LOG_TYPE_DEFAULT;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
LABEL_66:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EB75DE40)
    {
      v45 = 0;
      v44 = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      goto LABEL_66;
    }

    _Block_object_dispose(v63, 8);
    _Block_object_dispose(&v70, 8);
LABEL_68:
    objc_sync_exit(v13);
    _Block_object_dispose(v67, 8);
    return;
  }

  if (dword_1EB75DE40)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (__CFArray)copyUndoEndpointsForRoute:(id)route
{
  v3 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:route];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v3 && [objc_msgSend(v3 "fromPorts")] && objc_msgSend(objc_msgSend(v3, "fromPorts"), "count"))
  {
    v5 = 0;
    do
    {
      v6 = [objc_msgSend(objc_msgSend(v3 "fromPorts")];
      if (v6)
      {
        v7 = vaemCopyEndpointForPort(v6);
        CFArrayAppendValue(Mutable, v7);
        if (v7)
        {
          CFRelease(v7);
        }
      }

      ++v5;
    }

    while ([objc_msgSend(v3 "fromPorts")] > v5);
  }

  return Mutable;
}

+ (id)getRoutingTargetDeviceTypeString:(unsigned int)string
{
  v3 = *&string;
  if (CMSMVAUtility_IsPortOfTypeBluetooth(string))
  {
    return *MEMORY[0x1E69618D8];
  }

  if (CMSMVAUtility_IsPortOfTypeCarPlayMainAudio(v3))
  {
    return *MEMORY[0x1E69618E0];
  }

  return @"UnknownEndpointType";
}

+ (id)getCacheKey:(id)key endpointType:(id)type
{
  v8 = *MEMORY[0x1E69E9840];
  if ([type isEqualToString:*MEMORY[0x1E69618D8]] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E69618E0]))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", key, type];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return @"UnknownEndpointType";
}

+ (int)getButtonType:(unsigned int)type
{
  v3 = *&type;
  v16 = *MEMORY[0x1E69E9840];
  v4 = CMSMVAUtility_CopyBluetoothDeviceModelID(type);
  if (v4)
  {
    v5 = v4;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [&unk_1F28AF5D8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(&unk_1F28AF5D8);
          }

          if ([v5 containsString:*(*(&v11 + 1) + 8 * v9)])
          {
            CFRelease(v5);
            return 3;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [&unk_1F28AF5D8 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    CFRelease(v5);
  }

  if (CMSMVAUtility_IsPortOfTypeCarPlayMainAudio(v3))
  {
    return 1;
  }

  else
  {
    return 2 * CMSMVAUtility_IsPortOfTypeBluetoothVehicle(v3);
  }
}

- (BOOL)newPortNeedsToShowBanner:(id)banner previousPort:(unsigned int)port
{
  v35 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsPortOfTypeCarPlayMainAudio([banner intValue]))
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  v7 = vaemCopyEndpointForPort(port);
  cf = 0;
  if (v7)
  {
    v8 = v7;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10 && (v10(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf), cf))
    {
      PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (PortFromCFNumber == 1885892706)
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_16;
        }
      }

      else if (dword_1EB75DE40)
      {
LABEL_16:
        valuePtr = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EB75DE40)
    {
      goto LABEL_16;
    }

    CFRelease(v8);
    goto LABEL_18;
  }

  if (dword_1EB75DE40)
  {
    valuePtr = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  v14 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  if (!v14)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  Count = CFArrayGetCount(v14);
  if (Count >= 1)
  {
    v17 = Count;
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    v19 = valuePtr;
    if (v19 == [banner intValue])
    {
      v6 = 1;
LABEL_27:
      if (dword_1EB75DE40)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_30;
    }

    v20 = 1;
    while (v17 != v20)
    {
      valuePtr = 0;
      v21 = CFArrayGetValueAtIndex(v15, v20);
      CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
      v22 = valuePtr;
      ++v20;
      if (v22 == [banner intValue])
      {
        v6 = v20 - 1 < v17;
        goto LABEL_27;
      }
    }
  }

  v6 = 0;
LABEL_30:
  CFRelease(v15);
LABEL_31:
  if (dword_1EB75DE40)
  {
    valuePtr = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = valuePtr;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v30 = 136315650;
      v31 = "[MX_BannerManager newPortNeedsToShowBanner:previousPort:]";
      v32 = 1024;
      v33[0] = v6;
      LOWORD(v33[1]) = 2114;
      *(&v33[1] + 2) = banner;
      _os_log_send_and_compose_impl(v26, 0, v34, 128, &dword_1B17A2000, v24, 0, "-MX_BannerManager- %s: newPortNeedsToShowBanner = %u for newPortId = %{public}@", &v30, 28);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

- (void)promptUserResponseForUndoRoute:(id)route undoHandler:(id)handler
{
  v40[25] = *MEMORY[0x1E69E9840];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 1;
  cf = [route objectForKey:@"PortMacAddress"];
  [route objectForKey:@"PortDeviceIdentifier"];
  v31 = [route objectForKey:@"RoutingContextUUID"];
  v30 = [route objectForKey:@"PortName"];
  v6 = [route objectForKey:@"PortID"];
  v7 = [objc_msgSend(route objectForKey:{@"OldPort", "intValue"}];
  v8 = +[MX_BannerManager getCacheKey:port:](MX_BannerManager, "getCacheKey:port:", cf, [v6 intValue]);
  v9 = CMSMVAUtility_CopyBluetoothDeviceModelID([v6 intValue]);
  if (dword_1EB75DE40)
  {
    LODWORD(v33) = 0;
    LOBYTE(type) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v11 = [(MX_BannerManager *)self newPortNeedsToShowBanner:v6 previousPort:v7];
  v12 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if (!v11)
  {
    goto LABEL_13;
  }

  if (!-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache, "objectForKey:", v8) || ![-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache objectForKey:{v8), "bannerResponse"}])
  {
    if (![(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8])
    {
      v14 = vaeCopyDeviceMacAddressFromVADPort(v7);
      if (dword_1EB75DE40)
      {
        LODWORD(v33) = 0;
        LOBYTE(type) = 0;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, type);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v20 = objc_alloc_init(MXUndoBannerResponseInfo);
      [(NSMutableDictionary *)self->undoBannerResponseCache setObject:v20 forKey:v8];

      [(MX_BannerManager *)self updatePartnerPortsInUndoBannerResponseCacheForKey:v8 forPort:v7];
    }

    v21 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8];
    [v21 setBannerResponse:3];
    +[MX_BannerManager getButtonType:](MX_BannerManager, "getButtonType:", [v6 intValue]);
    if (CMSMVAUtility_IsPortOfTypeCarPlay([v6 intValue]))
    {
      IsPortOfTypeBluetoothVehicle = 2;
    }

    else
    {
      IsPortOfTypeBluetoothVehicle = CMSMVAUtility_IsPortOfTypeBluetoothVehicle([v6 intValue]);
    }

    v29 = IsPortOfTypeBluetoothVehicle;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v31)
    {
      CFRetain(v31);
    }

    if (v21)
    {
      CFRetain(v21);
    }

    if (v30)
    {
      CFRetain(v30);
    }

    v23 = v8;
    if (dword_1EB75DE40)
    {
      LOBYTE(type) = 0;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, type);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = CMSMVAUtility_CopyBluetoothDeviceModelID([v6 intValue]);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = CMSMVAUtility_CopyBluetoothDeviceModelID(v7);
    [(MX_BannerManager *)self sendBannerStartToAudioStatistics:1 targetDeviceType:v29 targetProductID:*(v40[1] + 24) sourceDeviceType:v34[3]];
    v25 = [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
    v26 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8];
    if (v26)
    {
      [v26 setTxid:v25];
      if (dword_1EB75DE40)
      {
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
LABEL_42:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EB75DE40)
    {
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      goto LABEL_42;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v40, 8);
    goto LABEL_44;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(v33) = 0;
    LOBYTE(type) = 0;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, type);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  if ([(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8])
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v33) = 0;
      LOBYTE(type) = 0;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, type);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v17 = vaeCopyDeviceMacAddressFromVADPort(v7);
    if (dword_1EB75DE40)
    {
      LODWORD(v33) = 0;
      LOBYTE(type) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, type);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v19 = objc_alloc_init(MXUndoBannerResponseInfo);
    [(NSMutableDictionary *)self->undoBannerResponseCache setObject:v19 forKey:v8];

    [(MX_BannerManager *)self updatePartnerPortsInUndoBannerResponseCacheForKey:v8 forPort:v7];
  }

LABEL_44:
  objc_sync_exit(v12);
  _Block_object_dispose(v37, 8);
}

- (void)updatePartnerPortsInUndoBannerResponseCacheForKey:(id)key forPort:(unsigned int)port
{
  v4 = *&port;
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:key];
  if (v5)
  {
    v6 = v5;
    v7 = CMSMVAUtility_CopyPartnerPorts(v4);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([v7 count])
    {
      v9 = 0;
      do
      {
        if (dword_1EB75DE40)
        {
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(v6 "fromPorts")];
      }

      while (v9 < [v7 count]);
    }
  }
}

- (void)sendBannerActionToAudioStatistics:(int64_t)statistics bannerType:(int64_t)type targetDeviceType:(int64_t)deviceType targetProductID:(id)d sourceDeviceType:(id)sourceDeviceType
{
  v15[8] = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"Unknown";
  }

  if (sourceDeviceType)
  {
    sourceDeviceTypeCopy = sourceDeviceType;
  }

  else
  {
    sourceDeviceTypeCopy = @"Unknown";
  }

  v12 = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
  IsLocked = CMSMDeviceState_DeviceIsLocked();
  v15[0] = 0x1F2898890;
  v14[0] = 0x1F2898850;
  v14[1] = 0x1F2898910;
  v15[1] = [MEMORY[0x1E696AD98] numberWithInteger:statistics];
  v14[2] = 0x1F28988F0;
  v15[2] = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v14[3] = 0x1F2898930;
  v15[3] = [MEMORY[0x1E696AD98] numberWithInteger:deviceType];
  v15[4] = dCopy;
  v14[4] = 0x1F2898950;
  v14[5] = 0x1F2898970;
  v15[5] = sourceDeviceTypeCopy;
  v14[6] = 0x1F2898990;
  v15[6] = [MEMORY[0x1E696AD98] numberWithBool:v12];
  v14[7] = 0x1F28989B0;
  v15[7] = [MEMORY[0x1E696AD98] numberWithBool:IsLocked];
  -[MXAudioStatistics sendSingleMessageWithDictionary:eventCategory:eventType:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSingleMessageWithDictionary:eventCategory:eventType:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8], 25, 22);
}

- (void)sendBannerStartToAudioStatistics:(int64_t)statistics targetDeviceType:(int64_t)type targetProductID:(id)d sourceDeviceType:(id)deviceType
{
  v13[7] = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"Unknown";
  }

  if (deviceType)
  {
    deviceTypeCopy = deviceType;
  }

  else
  {
    deviceTypeCopy = @"Unknown";
  }

  v10 = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
  IsLocked = CMSMDeviceState_DeviceIsLocked();
  v13[0] = 0x1F28988B0;
  v12[0] = 0x1F2898850;
  v12[1] = 0x1F28988F0;
  v13[1] = [MEMORY[0x1E696AD98] numberWithInteger:statistics];
  v12[2] = 0x1F2898930;
  v13[2] = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v13[3] = dCopy;
  v12[3] = 0x1F2898950;
  v12[4] = 0x1F2898970;
  v13[4] = deviceTypeCopy;
  v12[5] = 0x1F2898990;
  v13[5] = [MEMORY[0x1E696AD98] numberWithBool:v10];
  v12[6] = 0x1F28989B0;
  v13[6] = [MEMORY[0x1E696AD98] numberWithBool:IsLocked];
  -[MXAudioStatistics sendSingleMessageWithDictionary:eventCategory:eventType:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSingleMessageWithDictionary:eventCategory:eventType:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7], 25, 22);
}

@end