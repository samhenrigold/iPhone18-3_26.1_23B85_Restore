@interface WRM_recommendationSimulator
- (WRM_recommendationSimulator)init;
- (void)dealloc;
- (void)handleMessage:(id)message;
- (void)sendMessageForProcess:(unint64_t)process withArgs:(id)args forProcess:(int)forProcess;
- (void)triggerSetMeadowModeTimer:(id)timer;
- (void)triggerTerminiousRecommendation:(id)recommendation;
@end

@implementation WRM_recommendationSimulator

- (WRM_recommendationSimulator)init
{
  v3.receiver = self;
  v3.super_class = WRM_recommendationSimulator;
  return [(WCM_Controller *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_recommendationSimulator;
  [(WCM_Controller *)&v2 dealloc];
}

- (void)handleMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  [WCM_Logging logLevel:26 message:@"WRM_recommendationSimulator: received message: %@", message];
  switch(uint64)
  {
    case 4uLL:

      [(WRM_recommendationSimulator *)self triggerGetMeadowModeTimer:message];
      break;
    case 3uLL:

      [(WRM_recommendationSimulator *)self triggerSetMeadowModeTimer:message];
      break;
    case 2uLL:

      [(WRM_recommendationSimulator *)self triggerTerminiousRecommendation:message];
      break;
  }
}

- (void)triggerSetMeadowModeTimer:(id)timer
{
  value = xpc_dictionary_get_value(timer, "kMessageArgs");
  if (xpc_dictionary_get_value(value, "kSetMeadowModeTimer"))
  {
    [WCM_Logging logLevel:26 message:@"WRM_recommendationSimulator: SetMeadowModeTimer %llu seconds", xpc_dictionary_get_uint64(value, "kSetMeadowModeTimer")];
  }
}

- (void)triggerTerminiousRecommendation:(id)recommendation
{
  value = xpc_dictionary_get_value(recommendation, "kMessageArgs");
  if (xpc_dictionary_get_value(value, "kBTRecommendationEnabled"))
  {
    v5 = xpc_dictionary_get_uint64(value, "kBTRecommendationEnabled") != 0;
  }

  else
  {
    v5 = 0;
  }

  if (xpc_dictionary_get_value(value, "kWIFIRecommendationEnabled"))
  {
    v6 = xpc_dictionary_get_uint64(value, "kWIFIRecommendationEnabled") != 0;
  }

  else
  {
    v6 = 0;
  }

  if (xpc_dictionary_get_value(value, "kdirectWIFIRecommendationEnabled"))
  {
    v7 = xpc_dictionary_get_uint64(value, "kWIFIRecommendationEnabled") != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = xpc_array_create(0, 0);
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "kWRMProximityLinkRecommendationType", 1uLL);
  xpc_dictionary_set_BOOL(v9, "kWRMProximityLinkisRecommended", v5);
  xpc_array_append_value(v8, v9);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "kWRMProximityLinkRecommendationType", 0);
  xpc_dictionary_set_BOOL(v10, "kWRMProximityLinkisRecommended", v6);
  xpc_array_append_value(v8, v10);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "kWRMProximityLinkRecommendationType", 2uLL);
  xpc_dictionary_set_BOOL(v11, "kWRMProximityLinkisRecommended", v7);
  xpc_array_append_value(v8, v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v12, "kWRMApplicationTypeList", v8);
  [(WRM_recommendationSimulator *)self sendMessageForProcess:1305 withArgs:v12 forProcess:19];
  [WCM_Logging logLevel:26 message:@"WRM_recommendationSimulator: Sending terminious recommendation"];
  count = xpc_array_get_count(v8);
  if (count << 32)
  {
    v14 = 0;
    if (count <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = count;
    }

    do
    {
      v16 = xpc_array_get_value(v8, v14);
      xpc_release(v16);
      ++v14;
    }

    while (v15 != v14);
  }

  xpc_release(v12);

  xpc_release(v8);
}

- (void)sendMessageForProcess:(unint64_t)process withArgs:(id)args forProcess:(int)forProcess
{
  v5 = *&forProcess;
  *keys = *off_10023DD20;
  values[0] = xpc_uint64_create(process);
  values[1] = args;
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  v8 = [+[WCM_Server singleton](WCM_Server "singleton")];
  if (v8)
  {
    [WCM_Logging logLevel:26 message:@"WRM_recommendationSimulator: found session-> Sending message: %@", v7];
    [v8 sendMessage:v7];
  }

  else
  {
    [WCM_Logging logLevel:26 message:@"WRM_recommendationSimulator: Sending message: %@", v7];
    [WCM_Logging logLevel:26 message:@"no session for process id: %d", v5];
  }

  xpc_release(values[0]);
  xpc_release(v7);
}

@end