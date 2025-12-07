@interface APUIRouteManager
+ (unint64_t)discoveryFeatures:(BOOL)features;
- (APUIRouteManager)init;
- (void)_addOutputDeviceToSystemMusicContext:(id)context authString:(id)string completion:(id)completion;
- (void)_createSilentConnectionToDevice:(id)device authString:(id)string completion:(id)completion;
- (void)_pickRouteWithID:(id)d authString:(id)string useRemoteControl:(BOOL)control completion:(id)completion;
- (void)invalidate;
- (void)pickRouteWithRouteID:(id)d authString:(id)string useRemoteControl:(BOOL)control completion:(id)completion;
- (void)session:(id)session didSpotOnLocationComplete:(id)complete;
- (void)startIntelligentRoutingLocationSensing;
@end

@implementation APUIRouteManager

- (APUIRouteManager)init
{
  v12.receiver = self;
  v12.super_class = APUIRouteManager;
  v4 = [(APUIRouteManager *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_create("APUIRouteManager.queue", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = dispatch_queue_create("APUIRouteManager.notification", 0);
    notificationQueue = v4->_notificationQueue;
    v4->_notificationQueue = v7;

    if (APSSettingsIsFeatureEnabled())
    {
      v9 = dispatch_queue_create("APUIRouteManager.intelligentRouting", 0);
      irQueue = v4->_irQueue;
      v4->_irQueue = v9;
    }
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B238(v4, v2, v3);
  }

  return v4;
}

- (void)invalidate
{
  [(IRSession *)self->_irSession setDelegate:0];
  irSession = self->_irSession;

  [(IRSession *)irSession invalidate];
}

- (void)_pickRouteWithID:(id)d authString:(id)string useRemoteControl:(BOOL)control completion:(id)completion
{
  controlCopy = control;
  dCopy = d;
  stringCopy = string;
  completionCopy = completion;
  v13 = [[AVOutputDeviceDiscoverySession alloc] initWithDeviceFeatures:{objc_msgSend(objc_opt_class(), "discoveryFeatures:", controlCopy)}];
  v14 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100001824;
  v37 = sub_100001834;
  v38 = 0;
  v15 = +[NSNotificationCenter defaultCenter];
  v16 = AVOutputDeviceDiscoverySessionAvailableOutputDevicesDidChangeNotification;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000183C;
  v28[3] = &unk_10001C540;
  v28[4] = self;
  v17 = v13;
  v29 = v17;
  v18 = dCopy;
  v30 = v18;
  v32 = &v33;
  v19 = v14;
  v31 = v19;
  v20 = [v15 addObserverForName:v16 object:v17 queue:0 usingBlock:v28];

  [v17 setDiscoveryMode:2];
  v21 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v19, v21))
  {
    if (dword_1000222E0 <= 90 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
    {
      if (v18 && !IsAppleInternalBuild())
      {
        v22 = @"#Redacted#";
      }

      else
      {
        v22 = v18;
      }

      LogPrintF(&dword_1000222E0, "[APUIRouteManager _pickRouteWithID:authString:useRemoteControl:completion:]", 33554522, "[%{ptr}] Failed to discover device with deviceID=%@ in %d seconds", self, v22, 3);
    }

    if (completionCopy)
    {
      notificationQueue = self->_notificationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001C74;
      block[3] = &unk_10001C568;
      v27 = completionCopy;
      dispatch_async(notificationQueue, block);
    }
  }

  else
  {
    v23 = v34[5];
    if (controlCopy)
    {
      [(APUIRouteManager *)self _createSilentConnectionToDevice:v23 authString:stringCopy completion:completionCopy];
    }

    else
    {
      [(APUIRouteManager *)self _addOutputDeviceToSystemMusicContext:v23 authString:stringCopy completion:completionCopy];
    }
  }

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 removeObserver:v20];

  [v17 setDiscoveryMode:0];
  _Block_object_dispose(&v33, 8);
}

- (void)pickRouteWithRouteID:(id)d authString:(id)string useRemoteControl:(BOOL)control completion:(id)completion
{
  controlCopy = control;
  dCopy = d;
  stringCopy = string;
  completionCopy = completion;
  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B350(dCopy, controlCopy, self);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E2C;
  block[3] = &unk_10001C590;
  block[4] = self;
  v18 = dCopy;
  v21 = controlCopy;
  v19 = stringCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = stringCopy;
  v16 = dCopy;
  dispatch_async(queue, block);
}

- (void)_addOutputDeviceToSystemMusicContext:(id)context authString:(id)string completion:(id)completion
{
  contextCopy = context;
  stringCopy = string;
  completionCopy = completion;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextAddOutputDeviceOptionCancelIfAuthRequired];
  if (stringCopy)
  {
    [v11 setObject:stringCopy forKeyedSubscript:AVOutputContextAddOutputDeviceOptionAuthorizationToken];
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B3D8(contextCopy);
  }

  v12 = +[AVOutputContext sharedAudioPresentationOutputContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001FC8;
  v15[3] = &unk_10001C5E0;
  v15[4] = self;
  v16 = contextCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = contextCopy;
  [v12 addOutputDevice:v14 options:v11 completionHandler:v15];
}

- (void)_createSilentConnectionToDevice:(id)device authString:(id)string completion:(id)completion
{
  deviceCopy = device;
  stringCopy = string;
  completionCopy = completion;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputDeviceCommunicationChannelOptionCancelIfAuthRequired];
  if (stringCopy)
  {
    [v11 setObject:stringCopy forKeyedSubscript:AVOutputContextAddOutputDeviceOptionAuthorizationToken];
  }

  v12 = AVOutputDeviceCommunicationChannelDataDestinationFitness;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002348;
  v15[3] = &unk_10001C608;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = deviceCopy;
  [v14 openCommunicationChannelToDestination:v12 options:v11 completionHandler:v15];
}

- (void)session:(id)session didSpotOnLocationComplete:(id)complete
{
  sessionCopy = session;
  completeCopy = complete;
  if (completeCopy)
  {
    v7 = 50;
  }

  else
  {
    v7 = 90;
  }

  if (v7 >= dword_1000222E0 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000222E0, "[APUIRouteManager session:didSpotOnLocationComplete:]", v7 | 0x2000000u, "[%{ptr}] IRSession [%{ptr}] setSpotOnLocation completed with %{error}", self, self->_irSession, completeCopy);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  spotOnLocationError = selfCopy->_spotOnLocationError;
  selfCopy->_spotOnLocationError = completeCopy;
  v10 = completeCopy;

  objc_sync_exit(selfCopy);
  dispatch_semaphore_signal(selfCopy->_spotOnLocationSemaphore);
}

- (void)startIntelligentRoutingLocationSensing
{
  if (APSSettingsIsFeatureEnabled())
  {
    v4 = [IRServiceToken serviceTokenForServiceIdentifier:@"com.apple.mediaremoted"];
    if (v4)
    {
      v5 = v4;
      v6 = [[IRConfiguration alloc] initWithServiceToken:v4];
      [v6 setMode:0];
      v7 = objc_alloc_init(IRSession);
      irSession = self->_irSession;
      self->_irSession = v7;

      [(IRSession *)self->_irSession setDelegate:self];
      [(IRSession *)self->_irSession runWithConfiguration:v6];
      v9 = dispatch_semaphore_create(0);
      spotOnLocationSemaphore = self->_spotOnLocationSemaphore;
      self->_spotOnLocationSemaphore = v9;

      v11 = objc_alloc_init(IRSessionSpotOnLocationParameters);
      [v11 setResetAllBrokerDiscoveredCandidates:1];
      if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1000222E0, "[APUIRouteManager startIntelligentRoutingLocationSensing]", 33554482, "[%{ptr}] IRSession [%{ptr}] setting spotOnLocation", self, self->_irSession);
      }

      [(IRSession *)self->_irSession setSpotOnLocationWithParameters:v11];
      irQueue = self->_irQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000028BC;
      block[3] = &unk_10001C630;
      block[4] = self;
      dispatch_async(irQueue, block);
    }

    else
    {
      if (sub_10000B7AC(self, &v14, &v15))
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_12;
      }

      v6 = v14;
      v5 = v15;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B864(self, v5, v3);
  }

LABEL_12:
}

+ (unint64_t)discoveryFeatures:(BOOL)features
{
  if (features)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

@end