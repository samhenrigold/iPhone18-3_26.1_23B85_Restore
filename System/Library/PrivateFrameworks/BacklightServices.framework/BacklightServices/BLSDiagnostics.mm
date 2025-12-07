@interface BLSDiagnostics
+ (id)defaultEndpoint;
- (BLSDiagnostics)init;
- (__IOSurface)rawSurfaceForFrame:(id)frame;
- (__IOSurface)surfaceForFrame:(id)frame;
- (id)allFlipbookFrames;
- (id)frameOnGlassNow;
- (id)frameOnGlassWhenFlipbookLastCancelled;
- (id)initWithEndpoint:(id)endpoint;
@end

@implementation BLSDiagnostics

+ (id)defaultEndpoint
{
  objc_opt_self();
  v0 = MEMORY[0x277CF3288];
  defaultShellMachName = [MEMORY[0x277CF3288] defaultShellMachName];
  v2 = +[BLSDiagnosticsXPCServiceSpecification identifier];
  v3 = [v0 endpointForMachName:defaultShellMachName service:v2 instance:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CF3288];
    v7 = +[BLSDiagnosticsXPCServiceSpecification identifier];
    v5 = [v6 nullEndpointForService:v7 instance:0];
  }

  return v5;
}

- (BLSDiagnostics)init
{
  v3 = +[BLSDiagnostics defaultEndpoint];
  v4 = [(BLSDiagnostics *)self initWithEndpoint:v3];

  return v4;
}

- (id)initWithEndpoint:(id)endpoint
{
  v3 = a2;
  v4 = v3;
  if (endpoint)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Bsserviceconne.isa);
    if (!v5)
    {
      [(BLSDiagnostics *)sel_initWithEndpoint_ initWithEndpoint:endpoint];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BLSDiagnostics *)sel_initWithEndpoint_ initWithEndpoint:endpoint];
    }

    v8.receiver = endpoint;
    v8.super_class = BLSDiagnostics;
    endpoint = objc_msgSendSuper2(&v8, sel_init);
    if (endpoint)
    {
      [(BLSDiagnostics *)v5 initWithEndpoint:endpoint, &v7];
    }
  }

  return endpoint;
}

void __35__BLSDiagnostics_initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setServiceQuality:v3];
  [v5 setTargetQueue:*(*(a1 + 40) + 8)];
  v4 = +[BLSDiagnosticsXPCServiceSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterruptionHandler:&__block_literal_global_3];
  [v5 setInvalidationHandler:&__block_literal_global_25];
}

- (id)allFlipbookFrames
{
  v16 = *MEMORY[0x277D85DE8];
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  allFlipbookFrames = [remoteTarget allFlipbookFrames];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = allFlipbookFrames;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) setSurfaceProvider:{self, v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)frameOnGlassNow
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  frameOnGlassNow = [remoteTarget frameOnGlassNow];

  [frameOnGlassNow setSurfaceProvider:self];

  return frameOnGlassNow;
}

- (id)frameOnGlassWhenFlipbookLastCancelled
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  frameOnGlassWhenFlipbookLastCancelled = [remoteTarget frameOnGlassWhenFlipbookLastCancelled];

  [frameOnGlassWhenFlipbookLastCancelled setSurfaceProvider:self];

  return frameOnGlassWhenFlipbookLastCancelled;
}

- (__IOSurface)surfaceForFrame:(id)frame
{
  v28 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  uuid = [frameCopy uuid];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__BLSDiagnostics_surfaceForFrame___block_invoke;
  v13[3] = &unk_278428A40;
  v13[4] = &v14;
  [remoteTarget surfaceForFrameUUID:uuid reply:v13];

  v7 = v15[5];
  if (v7)
  {
    v7 = IOSurfaceLookupFromXPCObject(v7);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_diagnostics_log(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    bls_shortLoggingString = [frameCopy bls_shortLoggingString];
    v12 = v15[5];
    *buf = 134218754;
    selfCopy = self;
    v22 = 2114;
    v23 = bls_shortLoggingString;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v12;
    _os_log_debug_impl(&dword_21FE25000, v9, OS_LOG_TYPE_DEBUG, "%p surfaceForFrame:%{public}@ surface:%{public}@ surfaceXPC:%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (__IOSurface)rawSurfaceForFrame:(id)frame
{
  v28 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  uuid = [frameCopy uuid];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__BLSDiagnostics_rawSurfaceForFrame___block_invoke;
  v13[3] = &unk_278428A40;
  v13[4] = &v14;
  [remoteTarget rawSurfaceForFrameUUID:uuid reply:v13];

  v7 = v15[5];
  if (v7)
  {
    v7 = IOSurfaceLookupFromXPCObject(v7);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_diagnostics_log(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    bls_shortLoggingString = [frameCopy bls_shortLoggingString];
    v12 = v15[5];
    *buf = 134218754;
    selfCopy = self;
    v22 = 2114;
    v23 = bls_shortLoggingString;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v12;
    _os_log_debug_impl(&dword_21FE25000, v9, OS_LOG_TYPE_DEBUG, "%p rawSurfaceForFrame:%{public}@ surface:%{public}@ surfaceXPC:%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)initWithEndpoint:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"BLSDiagnostics.m";
    v10 = 1024;
    v11 = 41;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"BLSDiagnostics.m";
    v10 = 1024;
    v11 = 41;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CF3280] connectionWithEndpoint:a1];
  v7 = *(a2 + 16);
  *(a2 + 16) = v6;

  v8 = +[BLSDiagnosticsXPCServiceSpecification serviceQuality];
  v9 = [MEMORY[0x277CF0C18] serial];
  v10 = [v9 serviceClass:objc_msgSend(v8 relativePriority:{"serviceClass"), objc_msgSend(v8, "relativePriority")}];
  v11 = BSDispatchQueueCreate();
  v12 = *(a2 + 8);
  *(a2 + 8) = v11;

  v13 = *(a2 + 16);
  *a3 = MEMORY[0x277D85DD0];
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = __35__BLSDiagnostics_initWithEndpoint___block_invoke;
  *(a3 + 24) = &unk_278428A18;
  v14 = v8;
  *(a3 + 32) = v14;
  v15 = a2;
  *(a3 + 40) = v15;
  [v13 configureConnection:a3];
  v16 = bls_diagnostics_log([*(a2 + 16) activate]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a2 + 16);
    v18 = 134218498;
    v19 = v15;
    v20 = 2114;
    v21 = v17;
    v22 = 2114;
    v23 = a1;
    _os_log_debug_impl(&dword_21FE25000, v16, OS_LOG_TYPE_DEBUG, "%p did activate connection:%{public}@ for endpoint:%{public}@", &v18, 0x20u);
  }
}

@end