@interface AVFigEndpointFigRoutingContextOutputDeviceTranslator
+ (id)sharedOutputDeviceTranslator;
- (AVFigEndpointFigRoutingContextOutputDeviceTranslator)init;
- (id)initForUsingRouteConfigUpdatedNotification:(BOOL)notification;
- (id)outputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)context;
- (id)outputDevicesFromRoutingContext:(OpaqueFigRoutingContext *)context;
- (void)addOutputDevice:(id)device withOptions:(__CFDictionary *)options toRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
- (void)removeOutputDevice:(id)device withOptions:(__CFDictionary *)options fromRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
- (void)setOutputDevice:(id)device withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
- (void)setOutputDevices:(id)devices withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
@end

@implementation AVFigEndpointFigRoutingContextOutputDeviceTranslator

+ (id)sharedOutputDeviceTranslator
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (AVFigEndpointFigRoutingContextOutputDeviceTranslator)init
{
  v3 = AVOutputContextUsesRouteConfigUpdatedNotification();

  return [(AVFigEndpointFigRoutingContextOutputDeviceTranslator *)self initForUsingRouteConfigUpdatedNotification:v3];
}

- (id)outputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)context
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(context, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_4;
  }

  v7 = [AVOutputDevice outputDeviceWithFigEndpoint:cf];
  v6 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v7;
}

- (void)setOutputDevice:(id)device withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v14 = 0;
  v11 = objc_alloc_init(AVRoutingEventWaiter);
  if (AVOutputDeviceGetFigEndpoint(device, &v14))
  {
    v12 = AVMakeSelectEndpointOperation(context, v14, options, self->_useRouteConfigUpdatedNotification);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __119__AVFigEndpointFigRoutingContextOutputDeviceTranslator_setOutputDevice_withOptions_onRoutingContext_completionHandler___block_invoke;
    v13[3] = &unk_1E794E958;
    v13[5] = v11;
    v13[6] = handler;
    v13[4] = v12;
    [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v12 setCompletionBlock:v13];
    [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v12 start];
    if ([(AVRoutingOperation *)v12 isFinished])
    {
      [(AVRoutingEventWaiter *)v11 waitUntilEventIsCompleted];
    }
  }

  else
  {
    [AVFigEndpointFigRoutingContextOutputDeviceTranslator setOutputDevice:withOptions:onRoutingContext:completionHandler:];
  }
}

uint64_t __119__AVFigEndpointFigRoutingContextOutputDeviceTranslator_setOutputDevice_withOptions_onRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) result]);
  v2 = *(a1 + 40);

  return [v2 markEventAsCompleted];
}

- (void)setOutputDevices:(id)devices withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [devices countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(devices);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        value = 0;
        if (!AVOutputDeviceGetFigEndpoint(v16, &value))
        {
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_15;
        }

        if (value)
        {
          CFArrayAppendValue(Mutable, value);
        }
      }

      v13 = [devices countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (Mutable)
  {
    v17 = AVMakeSelectEndpointsOperation(context, Mutable, options, self->_useRouteConfigUpdatedNotification);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __120__AVFigEndpointFigRoutingContextOutputDeviceTranslator_setOutputDevices_withOptions_onRoutingContext_completionHandler___block_invoke;
    v18[3] = &unk_1E794EA68;
    v18[4] = v17;
    v18[5] = handler;
    [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v17 setCompletionBlock:v18];
    [+[AVRoutingGlobalOperationQueue defaultQueue](AVRoutingGlobalOperationQueue "defaultQueue")];
    CFRelease(Mutable);
  }

  else
  {
LABEL_15:
    [AVFigEndpointFigRoutingContextOutputDeviceTranslator setOutputDevice:withOptions:onRoutingContext:completionHandler:];
  }
}

uint64_t __120__AVFigEndpointFigRoutingContextOutputDeviceTranslator_setOutputDevices_withOptions_onRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __119__AVFigEndpointFigRoutingContextOutputDeviceTranslator_addOutputDevice_withOptions_toRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)removeOutputDevice:(id)device withOptions:(__CFDictionary *)options fromRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v12 = 0;
  if (AVOutputDeviceGetFigEndpoint(device, &v12) && v12)
  {
    v10 = AVMakeRemoveEndpointOperation(context, v12, options, self->_useRouteConfigUpdatedNotification);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __124__AVFigEndpointFigRoutingContextOutputDeviceTranslator_removeOutputDevice_withOptions_fromRoutingContext_completionHandler___block_invoke;
    v11[3] = &unk_1E794EA68;
    v11[4] = v10;
    v11[5] = handler;
    [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v10 setCompletionBlock:v11];
    [+[AVRoutingGlobalOperationQueue defaultQueue](AVRoutingGlobalOperationQueue "defaultQueue")];
  }

  else
  {
    [AVFigEndpointFigRoutingContextOutputDeviceTranslator setOutputDevice:withOptions:onRoutingContext:completionHandler:];
  }
}

uint64_t __124__AVFigEndpointFigRoutingContextOutputDeviceTranslator_removeOutputDevice_withOptions_fromRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)initForUsingRouteConfigUpdatedNotification:(BOOL)notification
{
  v8.receiver = self;
  v8.super_class = AVFigEndpointFigRoutingContextOutputDeviceTranslator;
  v4 = [(AVFigEndpointFigRoutingContextOutputDeviceTranslator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_useRouteConfigUpdatedNotification = notification;
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)outputDevicesFromRoutingContext:(OpaqueFigRoutingContext *)context
{
  array = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v5 && !v5(context, &theArray))
  {
    for (i = 0; ; ++i)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (i >= Count)
      {
        break;
      }

      v8 = [AVOutputDevice outputDeviceWithFigEndpoint:CFArrayGetValueAtIndex(theArray, i)];
      if (v8)
      {
        [array addObject:v8];
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return array;
}

- (void)addOutputDevice:(id)device withOptions:(__CFDictionary *)options toRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v22 = 0;
  FigEndpoint = AVOutputDeviceGetFigEndpoint(device, &v22);
  v11 = FigEndpoint;
  if (FigEndpoint && v22)
  {
    v12 = AVMakeAddEndpointOperation(context, v22, options, self->_useRouteConfigUpdatedNotification);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3();
    v18 = __119__AVFigEndpointFigRoutingContextOutputDeviceTranslator_addOutputDevice_withOptions_toRoutingContext_completionHandler___block_invoke;
    v19 = &unk_1E794EA68;
    v20 = v13;
    handlerCopy = handler;
    [v13 setCompletionBlock:v17];
    [+[AVRoutingGlobalOperationQueue defaultQueue](AVRoutingGlobalOperationQueue "defaultQueue")];
  }

  if ((v11 & 1) == 0)
  {
    v14 = objc_alloc_init(AVOutputContextDestinationChange);
    [(AVOutputContextDestinationChange *)v14 markAsFailed];
    v15 = OUTLINED_FUNCTION_1_0();
    v16(v15);
  }
}

- (void)setOutputDevice:withOptions:onRoutingContext:completionHandler:.cold.1()
{
  v0 = objc_alloc_init(AVOutputContextDestinationChange);
  [(AVOutputContextDestinationChange *)v0 markAsFailed];
  v1 = OUTLINED_FUNCTION_1_0();
  v2(v1);
}

@end