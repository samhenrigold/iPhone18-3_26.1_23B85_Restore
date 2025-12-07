@interface MRUSystemOutputDeviceRouteController
+ (MRUSystemOutputDeviceRouteController)sharedController;
+ (id)outputContextDescription;
- (BOOL)isPrimaryOutputDeviceAlternateTransportTypeUSBC;
- (MRUOutputDeviceAsset)primaryOutputDeviceAsset;
- (MRUOutputDeviceAsset)secondaryOutputDeviceAsset;
- (MRUOutputDeviceAsset)systemOutputDeviceAsset;
- (MRUOutputDeviceAsset)systemOutputDeviceAssetWithInCall;
- (MRUSystemOutputDeviceRouteController)init;
- (void)callMonitorDidUpdateOnCall:(id)call isOnCall:(BOOL)onCall;
- (void)routeDidChangeNotification;
- (void)updateOutputDevices;
@end

@implementation MRUSystemOutputDeviceRouteController

- (void)updateOutputDevices
{
  v60 = *MEMORY[0x1E69E9840];
  endpointObject = [(MPAVEndpointRoute *)self->_systemRoute endpointObject];
  outputDevices = [endpointObject outputDevices];

  v6 = MCLogCategoryDefault(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v57 = objc_opt_class();
    v58 = 2114;
    v59 = outputDevices;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ output devices changed: %{public}@", buf, 0x16u);
  }

  if (outputDevices)
  {
    if (-[MPAVEndpointRoute isSplitRoute](self->_systemRoute, "isSplitRoute") && [outputDevices count] == 2)
    {
      isSplitRoute = self->_isSplitRoute;
      if (!isSplitRoute)
      {
        self->_isSplitRoute = 1;
      }

      v7 = [objc_alloc(MEMORY[0x1E6970470]) initWithOutputDevices:outputDevices];
      systemOutputDeviceRoute = self->_systemOutputDeviceRoute;
      self->_systemOutputDeviceRoute = v7;

      [(MPAVOutputDeviceRoute *)self->_primaryOutputDeviceRoute logicalLeaderOutputDevice];
      v9 = MRAVOutputDeviceCopyUniqueIdentifier();
      firstObject = [outputDevices firstObject];
      v11 = MRAVOutputDeviceCopyUniqueIdentifier();

      v12 = objc_alloc(MEMORY[0x1E6970470]);
      firstObject2 = [outputDevices firstObject];
      v55 = firstObject2;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v15 = [v12 initWithOutputDevices:v14];
      primaryOutputDeviceRoute = self->_primaryOutputDeviceRoute;
      self->_primaryOutputDeviceRoute = v15;

      v17 = [v11 isEqualToString:v9];
      [(MPAVOutputDeviceRoute *)self->_secondaryOutputDeviceRoute logicalLeaderOutputDevice];
      v18 = MRAVOutputDeviceCopyUniqueIdentifier();
      lastObject = [outputDevices lastObject];
      v20 = MRAVOutputDeviceCopyUniqueIdentifier();

      v21 = objc_alloc(MEMORY[0x1E6970470]);
      lastObject2 = [outputDevices lastObject];
      v54 = lastObject2;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      v24 = [v21 initWithOutputDevices:v23];
      secondaryOutputDeviceRoute = self->_secondaryOutputDeviceRoute;
      self->_secondaryOutputDeviceRoute = v24;

      LODWORD(v21) = [v20 isEqualToString:v18];
      if (v21 && v17 && isSplitRoute)
      {
        goto LABEL_23;
      }
    }

    else
    {
      self->_isSplitRoute = 0;
      outputDevices2 = [(MPAVOutputDeviceRoute *)self->_systemOutputDeviceRoute outputDevices];
      v27 = [outputDevices2 isEqualToArray:outputDevices];

      v28 = [objc_alloc(MEMORY[0x1E6970470]) initWithOutputDevices:outputDevices];
      v29 = self->_systemOutputDeviceRoute;
      self->_systemOutputDeviceRoute = v28;

      objc_storeStrong(&self->_primaryOutputDeviceRoute, self->_systemOutputDeviceRoute);
      v30 = self->_secondaryOutputDeviceRoute;
      self->_secondaryOutputDeviceRoute = 0;

      if (v27)
      {
LABEL_23:
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v37 = [(NSHashTable *)self->_observers copy];
        v38 = [v37 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v45;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v45 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v44 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v42 systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:self];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v39);
        }

        goto LABEL_33;
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = [(NSHashTable *)self->_observers copy];
    v32 = [v31 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v49;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v49 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v48 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v36 systemOutputDeviceRouteControllerDidUpdateOutputDevices:self];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v33);
    }

    goto LABEL_23;
  }

LABEL_33:
}

- (void)routeDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRUSystemOutputDeviceRouteController_routeDidChangeNotification__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (MRUOutputDeviceAsset)systemOutputDeviceAssetWithInCall
{
  outputDevice = [(MPAVOutputDeviceRoute *)self->_systemOutputDeviceRoute outputDevice];
  deviceType = [outputDevice deviceType];

  v5 = +[MRUCallMonitor sharedMonitor];
  isOnCall = [v5 isOnCall];

  if (isOnCall)
  {
    v7 = deviceType == 4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    +[MRUOutputDeviceAsset inCallAsset];
  }

  else
  {
    [(MRUSystemOutputDeviceRouteController *)self systemOutputDeviceAsset];
  }
  v8 = ;

  return v8;
}

- (MRUOutputDeviceAsset)systemOutputDeviceAsset
{
  if ([(MPAVEndpointRoute *)self->_systemRoute isSplitRoute])
  {
    v3 = +[MRUOutputDeviceAsset sharingAsset];
  }

  else
  {
    v3 = [[MRUOutputDeviceAsset alloc] initWithOutputDeviceRoute:self->_systemOutputDeviceRoute];
  }

  return v3;
}

- (MRUOutputDeviceAsset)secondaryOutputDeviceAsset
{
  v2 = [[MRUOutputDeviceAsset alloc] initWithOutputDeviceRoute:self->_secondaryOutputDeviceRoute];

  return v2;
}

- (BOOL)isPrimaryOutputDeviceAlternateTransportTypeUSBC
{
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];

  if ([logicalLeaderOutputDevice isAirpodsMaxDevice])
  {
    v4 = [logicalLeaderOutputDevice deviceType] == 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MRUSystemOutputDeviceRouteController)sharedController
{
  if (sharedController___once != -1)
  {
    +[MRUSystemOutputDeviceRouteController sharedController];
  }

  v3 = sharedController___sharedController;

  return v3;
}

uint64_t __56__MRUSystemOutputDeviceRouteController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(MRUSystemOutputDeviceRouteController);
  v1 = sharedController___sharedController;
  sharedController___sharedController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUSystemOutputDeviceRouteController)init
{
  v10.receiver = self;
  v10.super_class = MRUSystemOutputDeviceRouteController;
  v2 = [(MRUSystemOutputDeviceRouteController *)&v10 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    systemRoute = [MEMORY[0x1E6970490] systemRoute];
    systemRoute = v2->_systemRoute;
    v2->_systemRoute = systemRoute;

    v7 = +[MRUCallMonitor sharedMonitor];
    [v7 addObserver:v2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_routeDidChangeNotification name:*MEMORY[0x1E696F860] object:v2->_systemRoute];

    [(MRUSystemOutputDeviceRouteController *)v2 updateOutputDevices];
  }

  return v2;
}

- (MRUOutputDeviceAsset)primaryOutputDeviceAsset
{
  v2 = [[MRUOutputDeviceAsset alloc] initWithOutputDeviceRoute:self->_primaryOutputDeviceRoute];

  return v2;
}

+ (id)outputContextDescription
{
  MRAVOutputContextGetSharedAudioPresentationContext();
  v2 = MRAVOutputContextCopyOutputDevices();
  firstObject = [v2 firstObject];
  [firstObject deviceType];
  v4 = MRAVOutputDeviceTypeCopyDescription();

  return v4;
}

- (void)callMonitorDidUpdateOnCall:(id)call isOnCall:(BOOL)onCall
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy:call];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end