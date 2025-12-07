@interface AVCustomRoutingController
- (AVCustomRoutingController)init;
- (id)_routeForDADevice:(id)device;
- (void)_addAuthorizedRoute:(id)route;
- (void)_informClientOfEventReason:(int64_t)reason forRoute:(id)route;
- (void)_removeAuthorizedRoute:(id)route;
- (void)_resumeSessionUpdates;
- (void)_setActive:(BOOL)active forRoute:(id)route;
- (void)_setAuthorizedRoutes:(id)routes;
- (void)_setPendingEvents:(id)events;
- (void)_startSession;
- (void)_stopSession;
- (void)_storeRecordForEvent:(id)event;
- (void)_suspendSessionUpdates;
- (void)_updateSessionForEvent:(id)event;
- (void)_updateSessionFromEventRecords;
- (void)_updateSessionStateToMatchRoute:(id)route;
- (void)_updateSessionToReflectCurrentlyActiveRoutes;
- (void)dealloc;
- (void)handleCustomActionItemSelected:(id)selected;
- (void)invalidateAuthorizationForRoute:(AVCustomDeviceRoute *)route;
- (void)setActive:(BOOL)active forRoute:(AVCustomDeviceRoute *)route;
- (void)setCustomActionItems:(NSArray *)customActionItems;
- (void)setKnownRouteIPs:(NSArray *)knownRouteIPs;
- (void)setSession:(id)session;
@end

@implementation AVCustomRoutingController

- (AVCustomRoutingController)init
{
  v4.receiver = self;
  v4.super_class = AVCustomRoutingController;
  v2 = [(AVCustomRoutingController *)&v4 init];
  if (v2)
  {
    v2->_pendingEvents = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_authorizedRoutes = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_routeEventRecords = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_customActionItems = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_knownRouteIPs = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_session = objc_alloc_init(getDADaemonSessionClass());
    [(AVCustomRoutingController *)v2 _startSession];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(AVCustomRoutingController *)self _stopSession];

  self->_pendingEvents = 0;
  self->_authorizedRoutes = 0;

  self->_routeEventRecords = 0;
  self->_customActionItems = 0;

  self->_knownRouteIPs = 0;
  [(AVCustomRoutingController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = AVCustomRoutingController;
  [(AVCustomRoutingController *)&v3 dealloc];
}

- (void)setKnownRouteIPs:(NSArray *)knownRouteIPs
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(DADaemonSession *)[(AVCustomRoutingController *)self session] appIsUsingDeviceAccess])
  {

    self->_knownRouteIPs = knownRouteIPs;
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = knownRouteIPs;
    v6 = [(NSArray *)knownRouteIPs countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v18 = 0;
          v19 = &v18;
          v20 = 0x3052000000;
          v21 = __Block_byref_object_copy_;
          v10 = getDAPartialIPClass_softClass;
          v22 = __Block_byref_object_dispose_;
          v23 = getDAPartialIPClass_softClass;
          if (!getDAPartialIPClass_softClass)
          {
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __getDAPartialIPClass_block_invoke;
            v17[3] = &unk_1E794E728;
            v17[4] = &v18;
            __getDAPartialIPClass_block_invoke(v17);
            v10 = v19[5];
          }

          _Block_object_dispose(&v18, 8);
          v11 = [[v10 alloc] initWithAddress:objc_msgSend(v9 mask:{"address"), objc_msgSend(v9, "mask")}];
          [array addObject:v11];
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v6);
    }

    [getDADaemonSessionClass() setPartialIPsForAppBundleID:-[DADaemonSession bundleID](-[AVCustomRoutingController session](self partialIPs:"session") error:{"bundleID"), array, 0}];
  }
}

- (void)setCustomActionItems:(NSArray *)customActionItems
{
  v11 = *MEMORY[0x1E69E9840];
  appIsUsingDeviceAccess = [(DADaemonSession *)[(AVCustomRoutingController *)self session] appIsUsingDeviceAccess];
  if (appIsUsingDeviceAccess)
  {

    self->_customActionItems = customActionItems;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"AVCustomRoutingControllerCustomActionItemsDidChangeNotification" object:self];
  }

  else
  {
    v8 = _AVRoutingLog(appIsUsingDeviceAccess, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AVCustomRoutingController setCustomActionItems:]";
      _os_log_impl(&dword_1AB586000, v8, OS_LOG_TYPE_DEFAULT, "%s Ignoring custom action items. Only support when app provides discovery extension.", &v9, 0xCu);
    }
  }
}

- (void)handleCustomActionItemSelected:(id)selected
{
  [(AVCustomRoutingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(AVCustomRoutingController *)self delegate];

    [delegate customRoutingController:self didSelectItem:selected];
  }
}

- (void)invalidateAuthorizationForRoute:(AVCustomDeviceRoute *)route
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVRoutingLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVCustomRoutingController invalidateAuthorizationForRoute:]";
    v9 = 2112;
    v10 = route;
    _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s invalidateAuthorizationForRoute: %@", &v7, 0x16u);
  }

  v6 = objc_alloc_init(AVCustomRoutingEvent);
  [(AVCustomRoutingEvent *)v6 setReason:1];
  [(AVCustomRoutingEvent *)v6 setRoute:route];
  [(AVCustomRoutingEvent *)v6 setSucceeded:1];
  if ([(AVCustomRoutingController *)self isSessionSuspended])
  {
    [(AVCustomRoutingController *)self _storeRecordForEvent:v6];
  }

  else
  {
    [(AVCustomRoutingController *)self _updateSessionForEvent:v6];
  }
}

- (void)setActive:(BOOL)active forRoute:(AVCustomDeviceRoute *)route
{
  v5 = active;
  v14 = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] containsObject:route];
  if (v7)
  {
    [(AVCustomRoutingController *)self _setActive:v5 forRoute:route];

    [(AVCustomRoutingController *)self _updateSessionStateToMatchRoute:route];
  }

  else
  {
    v9 = _AVRoutingLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[AVCustomRoutingController setActive:forRoute:]";
      v12 = 2112;
      v13 = route;
      _os_log_impl(&dword_1AB586000, v9, OS_LOG_TYPE_DEFAULT, "%s Route: %@ not authorized. Ignoring setActive:forRoute:", &v10, 0x16u);
    }
  }
}

- (void)setSession:(id)session
{
  [(DADaemonSession *)self->_session invalidate];

  self->_session = session;
  if (session)
  {

    [(AVCustomRoutingController *)self _startSession];
  }
}

- (void)_startSession
{
  -[DADaemonSession setBundleID:](-[AVCustomRoutingController session](self, "session"), "setBundleID:", [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v4, &location);
  [(DADaemonSession *)[(AVCustomRoutingController *)self session:v3] setEventHandler:&v3];
  [(DADaemonSession *)[(AVCustomRoutingController *)self session] activate];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __42__AVCustomRoutingController__startSession__block_invoke(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (!Weak)
  {
    return;
  }

  v4 = Weak;
  v5 = [a2 eventType];
  if (v5 <= 30)
  {
    if (v5 <= 19)
    {
      if (v5)
      {
        if (v5 == 10)
        {
          v7 = _AVRoutingLog(10, v6);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
            _os_log_impl(&dword_1AB586000, v7, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeActivated", buf, 0xCu);
          }

          [v4 _resumeSessionUpdates];
          return;
        }

        goto LABEL_46;
      }

      v8 = _AVRoutingLog(0, v6);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      v9 = "%s DAEventTypeUnknown";
      goto LABEL_43;
    }

    if (v5 == 20)
    {
      v8 = _AVRoutingLog(20, v6);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      v9 = "%s DAEventTypeInvalidated";
      goto LABEL_43;
    }

    if (v5 == 30)
    {
      v8 = _AVRoutingLog(30, v6);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      v9 = "%s DAEventTypeSessionStarted";
LABEL_43:
      v20 = v8;
      v21 = 12;
      goto LABEL_44;
    }

LABEL_46:
    if ([a2 eventType] == 60)
    {
      v23 = _AVRoutingLog(60, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        _os_log_impl(&dword_1AB586000, v23, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeXPCInterrupted", buf, 0xCu);
      }

      [v4 _suspendSessionUpdates];
    }

    return;
  }

  if (v5 > 40)
  {
    if (v5 == 41)
    {
      v8 = _AVRoutingLog(41, v6);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      v9 = "%s DAEventTypeDeviceLost";
      goto LABEL_43;
    }

    if (v5 != 42)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v5 == 31)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v16 = [v4 authorizedRoutes];
      v17 = [v16 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v17)
      {
        v18 = *v55;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [v4 _informClientOfEventReason:1 forRoute:*(*(&v54 + 1) + 8 * i)];
          }

          v17 = [v16 countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v17);
      }

      return;
    }

    if (v5 != 40)
    {
      goto LABEL_46;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v64 = getDAEventDeviceClass_softClass;
  if (!getDAEventDeviceClass_softClass)
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __getDAEventDeviceClass_block_invoke;
    v58[3] = &unk_1E794E728;
    v58[4] = buf;
    __getDAEventDeviceClass_block_invoke(v58);
  }

  _Block_object_dispose(buf, 8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v10 = [a2 device];
  v12 = _AVRoutingLog(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1AB586000, v12, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged/DAEventTypeDeviceFound for device: %@", buf, 0x16u);
  }

  v13 = [v4 _routeForDADevice:v10];
  if ([v10 state] == 10)
  {
    if (v13)
    {
      v15 = _AVRoutingLog(10, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_1AB586000, v15, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateActivating: Route %@ authorized. Firing AVCustomRoutingEventReasonReactivate.", buf, 0x16u);
      }

      [v4 _informClientOfEventReason:2 forRoute:v13];
    }

    else
    {
      v29 = objc_alloc_init(AVCustomDeviceRoute);
      v30 = [(AVCustomDeviceRoute *)v29 setDevice:v10];
      v32 = _AVRoutingLog(v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&dword_1AB586000, v32, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateActivating: Route %@ not authorized. Firing AVCustomRoutingEventReasonActivate.", buf, 0x16u);
      }

      [v4 _informClientOfEventReason:0 forRoute:v29];
    }

    return;
  }

  if ([v10 state] != 30)
  {
    v26 = [v10 state];
    if (v26 != 25)
    {
      v33 = _AVRoutingLog(v26, v27);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v34 = soft_DADeviceStateToString([v10 state]);
      *buf = 136315650;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v62 = v34;
      v9 = "%s DAEventTypeDeviceFound / DAEventTypeDeviceChanged for route %@ but state = %@. Ignoring.";
      v20 = v33;
      v21 = 32;
LABEL_44:
      _os_log_impl(&dword_1AB586000, v20, OS_LOG_TYPE_DEFAULT, v9, buf, v21);
      return;
    }

    if (!v13)
    {
      v46 = objc_alloc_init(AVCustomDeviceRoute);
      v47 = [(AVCustomDeviceRoute *)v46 setDevice:v10];
      v49 = _AVRoutingLog(v47, v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v46;
        _os_log_impl(&dword_1AB586000, v49, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateAuthorized: Route %@ not authorized. Adding to authorized routes.", buf, 0x16u);
      }

      [v4 _addAuthorizedRoute:v46];

      return;
    }

    v28 = _AVRoutingLog(25, v27);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    v9 = "%s DAEventTypeDeviceChanged --> DADeviceStateAuthorized: Route %@ authorized. Ignoring.";
LABEL_79:
    v20 = v28;
    v21 = 22;
    goto LABEL_44;
  }

  if (v13)
  {
    v25 = _AVRoutingLog(30, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1AB586000, v25, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateInvalidating: Route %@ authorized. Firing AVCustomRoutingEventReasonDeactivate.", buf, 0x16u);
    }

    [v4 _informClientOfEventReason:1 forRoute:v13];
    return;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = [v4 pendingEvents];
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v59 count:16];
  v38 = v36;
  if (!v36)
  {
LABEL_77:
    v28 = _AVRoutingLog(v36, v37);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = 0;
    v9 = "%s DAEventTypeDeviceChanged --> DADeviceStateInvalidating: Route %@ not authorized and not pending events. Ignoring.";
    goto LABEL_79;
  }

  v39 = *v51;
LABEL_66:
  v40 = 0;
  while (1)
  {
    if (*v51 != v39)
    {
      objc_enumerationMutation(v35);
    }

    v41 = *(*(&v50 + 1) + 8 * v40);
    v36 = [objc_msgSend(objc_msgSend(objc_msgSend(v41 "route")];
    if (v36)
    {
      break;
    }

    if (v38 == ++v40)
    {
      v36 = [v35 countByEnumeratingWithState:&v50 objects:v59 count:16];
      v38 = v36;
      if (v36)
      {
        goto LABEL_66;
      }

      goto LABEL_77;
    }
  }

  if (!v41)
  {
    goto LABEL_77;
  }

  v42 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v4, "pendingEvents")}];
  [v42 removeObject:v41];
  v43 = [v4 _setPendingEvents:v42];
  v45 = _AVRoutingLog(v43, v44);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AVCustomRoutingController _startSession]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = 0;
    _os_log_impl(&dword_1AB586000, v45, OS_LOG_TYPE_DEFAULT, "%s DAEventTypeDeviceChanged --> DADeviceStateInvalidating: Route %@ not authorized but activation event pending. Firing AVCustomRoutingEventReasonDeactivate.", buf, 0x16u);
  }

  [v4 _informClientOfEventReason:1 forRoute:{objc_msgSend(v41, "route")}];
}

- (void)_stopSession
{
  [(DADaemonSession *)self->_session invalidate];

  self->_session = 0;
}

- (void)_addAuthorizedRoute:(id)route
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] containsObject:route];
  if (v5)
  {
    v7 = _AVRoutingLog(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVCustomRoutingController _addAuthorizedRoute:]";
      v11 = 2112;
      routeCopy = route;
      _os_log_impl(&dword_1AB586000, v7, OS_LOG_TYPE_DEFAULT, "%s AVVSRC.authorizedRoutes already contains route: %@. Ignoring.", &v9, 0x16u);
    }
  }

  else
  {
    v8 = [(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] arrayByAddingObject:route];

    [(AVCustomRoutingController *)self _setAuthorizedRoutes:v8];
  }
}

- (void)_removeAuthorizedRoute:(id)route
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVCustomRoutingController authorizedRoutes](self, "authorizedRoutes")}];
  [v5 removeObject:route];

  [(AVCustomRoutingController *)self _setAuthorizedRoutes:v5];
}

- (void)_setAuthorizedRoutes:(id)routes
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)[(AVCustomRoutingController *)self authorizedRoutes] isEqualToArray:routes];
  if ((v5 & 1) == 0)
  {
    v7 = _AVRoutingLog(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[AVCustomRoutingController _setAuthorizedRoutes:]";
      v13 = 2112;
      routesCopy = routes;
      _os_log_impl(&dword_1AB586000, v7, OS_LOG_TYPE_DEFAULT, "%s AVVSRC.authorizedRoutes = %@", &v11, 0x16u);
    }

    routesCopy2 = routes;
    if (!routesCopy2)
    {
      routesCopy2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    self->_authorizedRoutes = routesCopy2;
    v10 = _AVRoutingLog(routesCopy2, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[AVCustomRoutingController _setAuthorizedRoutes:]";
      _os_log_impl(&dword_1AB586000, v10, OS_LOG_TYPE_DEFAULT, "%s Posting AVCustomRoutingControllerAuthorizedRoutesDidChangeNotification.", &v11, 0xCu);
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (void)_setPendingEvents:(id)events
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVRoutingLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVCustomRoutingController _setPendingEvents:]";
    v9 = 2112;
    eventsCopy = events;
    _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s AVVSRC.pendingEvents = %@", &v7, 0x16u);
  }

  eventsCopy2 = events;
  if (!eventsCopy2)
  {
    eventsCopy2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  self->_pendingEvents = eventsCopy2;
}

- (void)_informClientOfEventReason:(int64_t)reason forRoute:(id)route
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(AVCustomRoutingEvent);
  [(AVCustomRoutingEvent *)v7 setRoute:route];
  [(AVCustomRoutingEvent *)v7 setReason:reason];
  v8 = [(AVCustomRoutingController *)self _setPendingEvents:[(NSArray *)[(AVCustomRoutingController *)self pendingEvents] arrayByAddingObject:v7]];
  v10 = _AVRoutingLog(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[AVCustomRoutingController _informClientOfEventReason:forRoute:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1AB586000, v10, OS_LOG_TYPE_DEFAULT, "%s Informing delegate of route event: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  delegate = [(AVCustomRoutingController *)self delegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__AVCustomRoutingController__informClientOfEventReason_forRoute___block_invoke;
  v12[3] = &unk_1E794E688;
  objc_copyWeak(&v13, buf);
  v12[4] = v7;
  [delegate customRoutingController:self handleEvent:v7 completionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __65__AVCustomRoutingController__informClientOfEventReason_forRoute___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v6 = Weak;
    v7 = _AVRoutingLog(Weak, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[AVCustomRoutingController _informClientOfEventReason:forRoute:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1AB586000, v7, OS_LOG_TYPE_DEFAULT, "%s Route event: %@ completed with success: %d", &v11, 0x1Cu);
    }

    [*(a1 + 32) setSucceeded:a2];
    v9 = [v6 isSessionSuspended];
    v10 = *(a1 + 32);
    if (v9)
    {
      [v6 _storeRecordForEvent:v10];
    }

    else
    {
      [v6 _updateSessionForEvent:v10];
    }
  }
}

- (void)_updateSessionForEvent:(id)event
{
  v52 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  reason = [event reason];
  route = [event route];
  succeeded = [event succeeded];
  v8 = succeeded;
  v9 = reason == 0;
  v10 = reason == 1;
  v11 = reason == 2;
  v13 = _AVRoutingLog(succeeded, v12);
  v32 = v10 & v8;
  v14 = v10 & (v8 ^ 1);
  v33 = v11 & v8;
  v15 = v11 & (v8 ^ 1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v41 = "[AVCustomRoutingController _updateSessionForEvent:]";
    v42 = 1024;
    *v43 = v9 & v8;
    *&v43[4] = 1024;
    *&v43[6] = v9 & (v8 ^ 1);
    v44 = 1024;
    v45 = v32;
    v46 = 1024;
    v47 = v14;
    v48 = 1024;
    v49 = v33;
    v50 = 1024;
    v51 = v15;
    _os_log_impl(&dword_1AB586000, v13, OS_LOG_TYPE_DEFAULT, "%s activateSucceeded: %d, activateFailed: %d, deactivateSucceeded: %d, deactivateFailed: %d, reactivateSucceeded: %d, reactivateFailed: %d", buf, 0x30u);
  }

  v16 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVCustomRoutingController pendingEvents](self, "pendingEvents")}];
  [v16 removeObject:event];
  v17 = [(AVCustomRoutingController *)self _setPendingEvents:v16];
  v19 = v33;
  if (!reason)
  {
    v19 = v8;
  }

  if (v19 == 1)
  {
    v20 = _AVRoutingLog(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      device = [route device];
      *buf = 136315394;
      v41 = "[AVCustomRoutingController _updateSessionForEvent:]";
      v42 = 2112;
      *v43 = device;
    }

    session = [(AVCustomRoutingController *)self session];
    device2 = [route device];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __52__AVCustomRoutingController__updateSessionForEvent___block_invoke;
    v36[3] = &unk_1E794E6B0;
    v24 = &v37;
    objc_copyWeak(&v37, &location);
    v36[4] = route;
    v38 = v33;
    [(DADaemonSession *)session setState:20 device:device2 completionHandler:v36];
LABEL_16:
    objc_destroyWeak(v24);
    goto LABEL_17;
  }

  if (reason)
  {
    v25 = v15;
  }

  else
  {
    v25 = v8 ^ 1;
  }

  if ((v25 | v14 | v32))
  {
    [(AVCustomRoutingController *)self _removeAuthorizedRoute:route];
    v26 = [(AVCustomRoutingController *)self _setActive:0 forRoute:route];
    v28 = _AVRoutingLog(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      device3 = [route device];
      *buf = 136315394;
      v41 = "[AVCustomRoutingController _updateSessionForEvent:]";
      v42 = 2112;
      *v43 = device3;
    }

    session2 = [(AVCustomRoutingController *)self session];
    device4 = [route device];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __52__AVCustomRoutingController__updateSessionForEvent___block_invoke_19;
    v34[3] = &unk_1E794E6D8;
    v24 = &v35;
    objc_copyWeak(&v35, &location);
    v34[4] = route;
    [(DADaemonSession *)session2 setState:0 device:device4 completionHandler:v34];
    goto LABEL_16;
  }

LABEL_17:
  objc_destroyWeak(&location);
}

void __52__AVCustomRoutingController__updateSessionForEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v6 = Weak;
    v7 = _AVRoutingLog(Weak, v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v8)
      {
        v9 = [*(a1 + 32) device];
        v11 = 136315650;
        v12 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = a2;
      }
    }

    else
    {
      if (v8)
      {
        v10 = [*(a1 + 32) device];
        v11 = 136315394;
        v12 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
        v13 = 2112;
        v14 = v10;
      }

      if ((*(a1 + 48) & 1) == 0)
      {
        [v6 _addAuthorizedRoute:*(a1 + 32)];
      }

      [v6 _setActive:1 forRoute:*(a1 + 32)];
    }
  }
}

void __52__AVCustomRoutingController__updateSessionForEvent___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v6 = _AVRoutingLog(Weak, v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v7)
      {
        return;
      }

      v8 = [*(a1 + 32) device];
      v13 = 136315650;
      v14 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = a2;
      v10 = v6;
      v11 = 32;
    }

    else
    {
      if (!v7)
      {
        return;
      }

      v12 = [*(a1 + 32) device];
      v13 = 136315394;
      v14 = "[AVCustomRoutingController _updateSessionForEvent:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      v10 = v6;
      v11 = 22;
    }

    _os_log_impl(&dword_1AB586000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
  }
}

- (id)_routeForDADevice:(id)device
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  authorizedRoutes = [(AVCustomRoutingController *)self authorizedRoutes];
  v5 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(authorizedRoutes);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(objc_msgSend(v9 "device")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_updateSessionStateToMatchRoute:(id)route
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(AVCustomRoutingController *)self isSessionSuspended])
  {
    isActive = [route isActive];
    if (isActive)
    {
      v7 = 20;
    }

    else
    {
      v7 = 25;
    }

    v8 = _AVRoutingLog(isActive, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[AVCustomRoutingController _updateSessionStateToMatchRoute:]";
      v14 = 2112;
      v15 = soft_DADeviceStateToString(v7);
      v16 = 2112;
      routeCopy = route;
      _os_log_impl(&dword_1AB586000, v8, OS_LOG_TYPE_DEFAULT, "%s Setting DA state: %@ for route: %@.", buf, 0x20u);
    }

    session = [(AVCustomRoutingController *)self session];
    device = [route device];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__AVCustomRoutingController__updateSessionStateToMatchRoute___block_invoke;
    v11[3] = &unk_1E794E700;
    v11[4] = route;
    v11[5] = v7;
    [(DADaemonSession *)session setState:v7 device:device completionHandler:v11];
  }
}

void __61__AVCustomRoutingController__updateSessionStateToMatchRoute___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _AVRoutingLog(a1, a2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v5)
    {
      return;
    }

    v6 = soft_DADeviceStateToString(*(a1 + 40));
    v7 = [*(a1 + 32) device];
    v13 = 136315906;
    v14 = "[AVCustomRoutingController _updateSessionStateToMatchRoute:]_block_invoke";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = a2;
    v8 = "%s Setting state: %@ for device: %@ failed with error: %@.";
    v9 = v4;
    v10 = 42;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v11 = soft_DADeviceStateToString(*(a1 + 40));
    v12 = [*(a1 + 32) device];
    v13 = 136315650;
    v14 = "[AVCustomRoutingController _updateSessionStateToMatchRoute:]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v8 = "%s Setting state: %@ for device: %@ succeeded.";
    v9 = v4;
    v10 = 32;
  }

  _os_log_impl(&dword_1AB586000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
}

- (void)_setActive:(BOOL)active forRoute:(id)route
{
  [route setActive:active];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"AVCustomRoutingControllerActiveRoutesDidChangeNotification" object:self];
}

- (void)_suspendSessionUpdates
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _AVRoutingLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AVCustomRoutingController _suspendSessionUpdates]";
    _os_log_impl(&dword_1AB586000, v3, OS_LOG_TYPE_DEFAULT, "%s Suspending session updates.", &v4, 0xCu);
  }

  [(AVCustomRoutingController *)self setSessionSuspended:1];
}

- (void)_resumeSessionUpdates
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _AVRoutingLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AVCustomRoutingController _resumeSessionUpdates]";
    _os_log_impl(&dword_1AB586000, v3, OS_LOG_TYPE_DEFAULT, "%s Resuming session updates.", &v4, 0xCu);
  }

  [(AVCustomRoutingController *)self setSessionSuspended:0];
  [(AVCustomRoutingController *)self _updateSessionFromEventRecords];
  [(AVCustomRoutingController *)self _updateSessionToReflectCurrentlyActiveRoutes];
}

- (void)_updateSessionFromEventRecords
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _AVRoutingLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_routeEventRecords count];
    *buf = 136315394;
    v22 = "[AVCustomRoutingController _updateSessionFromEventRecords]";
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&dword_1AB586000, v3, OS_LOG_TYPE_DEFAULT, "%s %lu stored event records.", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  routeEventRecords = self->_routeEventRecords;
  v6 = [(NSArray *)routeEventRecords countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v9 = v6;
    v10 = *v17;
    *&v8 = 136315394;
    v15 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(routeEventRecords);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = _AVRoutingLog(v6, v7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v22 = "[AVCustomRoutingController _updateSessionFromEventRecords]";
          v23 = 2112;
          v24 = v12;
          _os_log_impl(&dword_1AB586000, v13, OS_LOG_TYPE_DEFAULT, "%s Updating session from event record: %@", buf, 0x16u);
        }

        v6 = [(AVCustomRoutingController *)self _updateSessionForEvent:v12, v15];
        ++v11;
      }

      while (v9 != v11);
      v6 = [(NSArray *)routeEventRecords countByEnumeratingWithState:&v16 objects:v20 count:16];
      v9 = v6;
    }

    while (v6);
  }

  v14 = _AVRoutingLog(v6, v7);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[AVCustomRoutingController _updateSessionFromEventRecords]";
    _os_log_impl(&dword_1AB586000, v14, OS_LOG_TYPE_DEFAULT, "%s Clearing event records.", buf, 0xCu);
  }

  self->_routeEventRecords = objc_alloc_init(MEMORY[0x1E695DEC8]);
}

- (void)_storeRecordForEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVRoutingLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVCustomRoutingController _storeRecordForEvent:]";
    v9 = 2112;
    eventCopy = event;
    _os_log_impl(&dword_1AB586000, v5, OS_LOG_TYPE_DEFAULT, "%s Storing event record: %@", &v7, 0x16u);
  }

  v6 = [(NSArray *)self->_routeEventRecords arrayByAddingObject:event];

  self->_routeEventRecords = v6;
}

- (void)_updateSessionToReflectCurrentlyActiveRoutes
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  authorizedRoutes = [(AVCustomRoutingController *)self authorizedRoutes];
  v4 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(authorizedRoutes);
        }

        [(AVCustomRoutingController *)self _updateSessionStateToMatchRoute:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSArray *)authorizedRoutes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end