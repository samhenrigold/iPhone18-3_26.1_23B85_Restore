@interface MXRoutingContextController
- (BOOL)isContextPrewarmed;
- (MXRoutingContextController)initWithRoutingContextUUID:(id)d;
- (NSArray)currentRoutes;
- (id)discoverRouteDescriptorsWithRouteUUIDS:(id)s forDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (id)routeDescriptorsWithRouteIDs:(id)ds discoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (void)dealloc;
- (void)prewarmRoutesWithUUIDs:(id)ds completionHandler:(id)handler;
- (void)selectRouteDescriptors:(id)descriptors;
- (void)setContextPrewarmed:(BOOL)prewarmed;
@end

@implementation MXRoutingContextController

- (MXRoutingContextController)initWithRoutingContextUUID:(id)d
{
  v10.receiver = self;
  v10.super_class = MXRoutingContextController;
  v4 = [(MXRoutingContextController *)&v10 init];
  v4->_routingContextUUID = d;
  FigRoutingManagerCopyContextWithUUID(d, &v4->mRoutingContext);
  cf = 0;
  mRoutingContext = v4->mRoutingContext;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(mRoutingContext, @"contextType", *MEMORY[0x1E695E480], &cf);
  }

  if (FigCFNumberGetUInt32() == 9)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  v4->mDiscovererType = v7;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

- (void)dealloc
{
  mRoutingContext = self->mRoutingContext;
  if (mRoutingContext)
  {
    CFRelease(mRoutingContext);
    self->mRoutingContext = 0;
  }

  v4.receiver = self;
  v4.super_class = MXRoutingContextController;
  [(MXRoutingContextController *)&v4 dealloc];
}

- (id)routeDescriptorsWithRouteIDs:(id)ds discoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(discoverer, @"availableRouteDescriptors", *MEMORY[0x1E695E480], &v19);
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([ds containsObject:{objc_msgSend(v13, "objectForKey:", @"RouteUID"}])
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)discoverRouteDescriptorsWithRouteUUIDS:(id)s forDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E696AB30]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__MXRoutingContextController_discoverRouteDescriptorsWithRouteUUIDS_forDiscoverer___block_invoke;
  v16[3] = &unk_1E7AEB318;
  objc_copyWeak(v17, &location);
  v16[4] = s;
  v16[5] = v7;
  v17[1] = discoverer;
  v16[6] = &v19;
  v9 = [defaultCenter addObserverForName:@"Discoverer_AvailableRoutesChanged" object:discoverer queue:0 usingBlock:v16];
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v10)
  {
    v10(discoverer, @"DiscoveryMode", @"DiscoveryMode_Detailed");
  }

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3.0];
  [v7 lock];
  LOBYTE(v11) = [v7 waitUntilDate:v11];
  [v7 unlock];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (v11)
  {
    v12 = [v20[5] count];
    if (v12 != [s count] && dword_1EB75DE40)
    {
      goto LABEL_8;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = v20[5];
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);
  return v14;
}

void *__83__MXRoutingContextController_discoverRouteDescriptorsWithRouteUUIDS_forDiscoverer___block_invoke(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 56)) routeDescriptorsWithRouteIDs:*(a1 + 32) discoverer:*(a1 + 64)];
  v3 = [v2 count];
  result = [*(a1 + 32) count];
  if (v3 == result)
  {
    [*(a1 + 40) lock];
    *(*(*(a1 + 48) + 8) + 40) = v2;
    [*(a1 + 40) signal];
    v5 = *(a1 + 40);

    return [v5 unlock];
  }

  return result;
}

- (void)selectRouteDescriptors:(id)descriptors
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  mRoutingContext = self->mRoutingContext;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v7(mRoutingContext, descriptors, MEMORY[0x1E695E0F8]);
  }
}

- (void)prewarmRoutesWithUUIDs:(id)ds completionHandler:(id)handler
{
  v22[20] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  v8 = *MEMORY[0x1E695E480];
  v21 = @"discovererType";
  v22[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->mDiscovererType];
  FigRouteDiscovererCreate(v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1], &cf);
  v9 = [(MXRoutingContextController *)self discoverRouteDescriptorsWithRouteUUIDS:ds forDiscoverer:cf];
  v10 = [v9 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_28)}];
  v11 = [v10 count];
  if (v11 == [ds count])
  {
    [(MXRoutingContextController *)self setContextPrewarmed:1];
    v12 = [handler copy];
    v19[0] = @"PreviousRouteDescriptors";
    v20[0] = [(MXRoutingContextController *)self currentRoutes];
    v20[1] = v12;
    v19[1] = @"CompletionHandler";
    v19[2] = @"MXRoutingContextController";
    v20[2] = self;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v14 = v13;
    mRoutingContext = self->mRoutingContext;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 224);
    if (v16)
    {
      v16(mRoutingContext, v10, MEMORY[0x1E695E0F8], MXRoutingContextControllerModificationCallback, v13);
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(handler + 2))(handler, 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (BOOL)isContextPrewarmed
{
  cf = 0;
  mRoutingContext = self->mRoutingContext;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(mRoutingContext, 0x1F289AA50, *MEMORY[0x1E695E480], &cf);
  }

  v4 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4 != 0;
}

- (void)setContextPrewarmed:(BOOL)prewarmed
{
  if (prewarmed)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  mRoutingContext = self->mRoutingContext;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = *v3;

    v5(mRoutingContext, 0x1F289AA50, v6);
  }
}

- (NSArray)currentRoutes
{
  v6 = 0;
  mRoutingContext = self->mRoutingContext;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v3)
  {
    v3(mRoutingContext, &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end