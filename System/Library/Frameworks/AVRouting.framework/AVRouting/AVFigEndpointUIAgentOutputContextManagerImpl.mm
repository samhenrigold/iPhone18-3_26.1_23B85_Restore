@interface AVFigEndpointUIAgentOutputContextManagerImpl
+ (OpaqueFigEndpointUIAgent)copySharedEndpointUIAgent;
- (AVFigEndpointUIAgentOutputContextManagerImpl)initWithEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent;
- (void)_showErrorPromptForRouteDescriptor:(__CFDictionary *)descriptor reason:(__CFString *)reason didFailToConnectToOutputDeviceDictionary:(__CFDictionary *)dictionary;
- (void)dealloc;
@end

@implementation AVFigEndpointUIAgentOutputContextManagerImpl

+ (OpaqueFigEndpointUIAgent)copySharedEndpointUIAgent
{
  if (copySharedEndpointUIAgent_onceToken != -1)
  {
    +[AVFigEndpointUIAgentOutputContextManagerImpl copySharedEndpointUIAgent];
  }

  dispatch_sync(sSharedAgentQueue, &__block_literal_global_373);
  return sSharedAgent;
}

dispatch_queue_t __73__AVFigEndpointUIAgentOutputContextManagerImpl_copySharedEndpointUIAgent__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.avoutputcontext.uiagentqueue", v0);
  sSharedAgentQueue = result;
  return result;
}

CFTypeRef __73__AVFigEndpointUIAgentOutputContextManagerImpl_copySharedEndpointUIAgent__block_invoke_2()
{
  result = sSharedAgent;
  if (sSharedAgent || (result = FigEndpointUIAgentXPCRemoteCreate(), sSharedAgent) && (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), (result = sSharedAgent) != 0))
  {

    return CFRetain(result);
  }

  return result;
}

- (void)dealloc
{
  if (self->_weakObserver)
  {
    [+[AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakObserver, AVOutputContextManagerShowErrorPrompt, *MEMORY[0x1E69AF250], self->_agent}];
  }

  agent = self->_agent;
  if (agent)
  {
    CFRelease(agent);
  }

  v4.receiver = self;
  v4.super_class = AVFigEndpointUIAgentOutputContextManagerImpl;
  [(AVFigEndpointUIAgentOutputContextManagerImpl *)&v4 dealloc];
}

- (void)_showErrorPromptForRouteDescriptor:(__CFDictionary *)descriptor reason:(__CFString *)reason didFailToConnectToOutputDeviceDictionary:(__CFDictionary *)dictionary
{
  v7 = [AVOutputDevice outputDeviceWithRouteDescriptor:descriptor withRoutingContext:0];
  if (FigCFEqual())
  {
    v8 = AVOutputContextDeviceConnectionFailureReasonDeviceInUse;
LABEL_13:
    v9 = *v8;
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    v8 = AVOutputContextDeviceConnectionFailureReasonDeviceOutOfRange;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v8 = AVOutputContextDeviceConnectionFailureReasonNotAPeerInHomeGroup;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v8 = AVOutputContextDeviceConnectionFailureReasonDeviceNotConnectedToInternet;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v8 = AVOutputContextDeviceConnectionFailureReasonDeviceNotMFiCertified;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v8 = AVOutputContextDeviceConnectionFailureReasonInfraRelayFailed2GHzNetwork;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v9 = @"AVOutputContextDeviceConnectionFailureReasonInfraRelayFailedMultiDFSNetwork";
  }

  else
  {
    v9 = 0;
  }

LABEL_14:
  parentOutputContextManager = [(AVFigEndpointUIAgentOutputContextManagerImpl *)self parentOutputContextManager];

  [(AVOutputContextManager *)parentOutputContextManager outputContextManagerImpl:self observedFailureToConnectToOutputDevice:v7 reason:v9 didFailToConnectToOutputDeviceDictionary:dictionary];
}

- (AVFigEndpointUIAgentOutputContextManagerImpl)initWithEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent
{
  OUTLINED_FUNCTION_5();
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v15.receiver = v3;
  v15.super_class = AVFigEndpointUIAgentOutputContextManagerImpl;
  v5 = [(AVFigEndpointUIAgentOutputContextManagerImpl *)&v15 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    v13 = 0;
    v5->_agent = 0;
    goto LABEL_8;
  }

  v7 = CFRetain(v4);
  v6[1] = v7;
  if (!v7)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v6];
  v6[2] = v8;
  OUTLINED_FUNCTION_0(v8, v9, v8, v10, *MEMORY[0x1E69AF250], v6[1]);
  v11 = v6[1];
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v12)
  {
    v12(v11, 1);
  }

  v13 = v6;
LABEL_8:

  return v13;
}

@end