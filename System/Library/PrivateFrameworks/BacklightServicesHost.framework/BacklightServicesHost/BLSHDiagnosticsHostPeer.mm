@interface BLSHDiagnosticsHostPeer
- (BLSHDiagnosticsHostPeer)initWithFlipbookDiagnosticsProvider:(id)provider peer:(id)peer;
- (BOOL)isValid;
- (NSString)description;
- (id)_lock_validateHostFrame:(id)frame source:(id)source;
- (id)allFlipbookFrames;
- (id)frameOnGlassNow;
- (id)frameOnGlassWhenFlipbookLastCancelled;
- (id)hostFrameForUUID:(id)d;
- (void)allFlipbookFrames;
- (void)dealloc;
- (void)genericSurfaceForFrameUUID:(id)d reply:(id)reply name:(id)name surfaceFromFrame:(id)frame;
- (void)invalidate;
@end

@implementation BLSHDiagnosticsHostPeer

- (BLSHDiagnosticsHostPeer)initWithFlipbookDiagnosticsProvider:(id)provider peer:(id)peer
{
  providerCopy = provider;
  peerCopy = peer;
  v14.receiver = self;
  v14.super_class = BLSHDiagnosticsHostPeer;
  v9 = [(BLSHDiagnosticsHostPeer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_entitlements = 0;
    remoteProcess = [peerCopy remoteProcess];
    if ([remoteProcess hasEntitlement:@"com.apple.backlight.captureFrameOnGlass"])
    {
      v10->_entitlements |= 1uLL;
    }

    objc_storeStrong(&v10->_flipbookDiagnosticsProvider, provider);
    v10->_valid = 1;
    remoteProcess2 = [peerCopy remoteProcess];
    v10->_clientPid = [remoteProcess2 pid];
  }

  return v10;
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&dword_21FD11000, v1, OS_LOG_TYPE_FAULT, "%p must invalidate before deallocating service for pid:%d", v2, 0x12u);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_clientPid withName:@"clientPID"];
  build = [v3 build];

  return build;
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  valid = self->_valid;
  os_unfair_lock_unlock(&self->_lock);
  return valid;
}

- (void)invalidate
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_21FD11000, v1, OS_LOG_TYPE_DEBUG, "%p invalidate %{public}@", v2, 0x16u);
}

- (id)allFlipbookFrames
{
  if ([(BLSHDiagnosticsHostPeer *)self isValid])
  {
    allFlipbookFrames = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider allFlipbookFrames];
    v4 = bls_diagnostics_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHDiagnosticsHostPeer *)self allFlipbookFrames];
    }
  }

  else
  {
    v4 = bls_diagnostics_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BLSHDiagnosticsHostPeer allFlipbookFrames];
    }

    allFlipbookFrames = 0;
  }

  v5 = [allFlipbookFrames bs_mapNoNulls:&__block_literal_global_10];

  return v5;
}

- (id)frameOnGlassNow
{
  frameOnGlassNow = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider frameOnGlassNow];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BLSHDiagnosticsHostPeer *)self _lock_validateHostFrame:frameOnGlassNow source:@"frameOnGlassNow"];

  lock_cachedFrameOnGlassNow = self->_lock_cachedFrameOnGlassNow;
  self->_lock_cachedFrameOnGlassNow = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x277CF08E8] createWithFrame:v6];

  return v7;
}

- (id)frameOnGlassWhenFlipbookLastCancelled
{
  frameOnGlassWhenFlipbookLastCancelled = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider frameOnGlassWhenFlipbookLastCancelled];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BLSHDiagnosticsHostPeer *)self _lock_validateHostFrame:frameOnGlassWhenFlipbookLastCancelled source:@"frameOnGlassWhenFlipbookLastCancelled"];

  lock_cachedLastCancelledFrame = self->_lock_cachedLastCancelledFrame;
  self->_lock_cachedLastCancelledFrame = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x277CF08E8] createWithFrame:v6];

  return v7;
}

- (id)_lock_validateHostFrame:(id)frame source:(id)source
{
  v25 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  sourceCopy = source;
  if (!self->_valid)
  {
    v12 = bls_diagnostics_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BLSHDiagnosticsHostPeer _lock_validateHostFrame:source:];
    }

    goto LABEL_9;
  }

  v9 = frameCopy;
  if (!v9)
  {
    v12 = bls_diagnostics_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 134218242;
      selfCopy2 = self;
      v19 = 2114;
      v20 = sourceCopy;
      _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, "%p %{public}@ — no host frame", &v17, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  uuid = [v9 uuid];
  if (!uuid)
  {
    [BLSHDiagnosticsHostPeer _lock_validateHostFrame:a2 source:self];
  }

  v12 = uuid;
  v13 = bls_diagnostics_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [v12 UUIDString];
    bls_shortLoggingString = [v10 bls_shortLoggingString];
    v17 = 134218754;
    selfCopy2 = self;
    v19 = 2114;
    v20 = sourceCopy;
    v21 = 2114;
    v22 = uUIDString;
    v23 = 2114;
    v24 = bls_shortLoggingString;
    _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p %{public}@ uuid:%{public}@ frame:%{public}@", &v17, 0x2Au);
  }

LABEL_10:

  return v10;
}

- (void)genericSurfaceForFrameUUID:(id)d reply:(id)reply name:(id)name surfaceFromFrame:(id)frame
{
  v68 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  frameCopy = frame;
  replyCopy = reply;
  if (![(BLSHDiagnosticsHostPeer *)self isValid])
  {
    v20 = bls_diagnostics_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [dCopy UUIDString];
      *buf = 134218498;
      selfCopy4 = self;
      v58 = 2114;
      v59 = nameCopy;
      v60 = 2114;
      v61 = uUIDString;
      _os_log_error_impl(&dword_21FD11000, v20, OS_LOG_TYPE_ERROR, "%p %{public}@, use after invalidation uuid:%{public}@", buf, 0x20u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CF0828];
    v48 = *MEMORY[0x277CCA450];
    v23 = MEMORY[0x277CCACA8];
    uUIDString2 = [dCopy UUIDString];
    uUIDString4 = [v23 stringWithFormat:@"%@: use after invalidation uuid:%@", nameCopy, uUIDString2];
    v49 = uUIDString4;
    bls_loggingString2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v19 = [v21 errorWithDomain:v22 code:5 userInfo:bls_loggingString2];
    goto LABEL_20;
  }

  uUIDString2 = [(BLSHDiagnosticsHostPeer *)self hostFrameForUUID:dCopy];
  if (!uUIDString2)
  {
    v26 = bls_diagnostics_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      uUIDString3 = [dCopy UUIDString];
      *buf = 134218498;
      selfCopy4 = self;
      v58 = 2114;
      v59 = nameCopy;
      v60 = 2114;
      v61 = uUIDString3;
      _os_log_error_impl(&dword_21FD11000, v26, OS_LOG_TYPE_ERROR, "%p %{public}@ invalid (not found) frame uuid, not match any known frame(s) uuid:%{public}@", buf, 0x20u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CF0828];
    v50 = *MEMORY[0x277CCA450];
    v29 = MEMORY[0x277CCACA8];
    uUIDString4 = [dCopy UUIDString];
    bls_loggingString2 = [v29 stringWithFormat:@"%@: unknown UUID, does not match any known frame(s) uuid:%@", nameCopy, uUIDString4];
    v51 = bls_loggingString2;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v19 = [v27 errorWithDomain:v28 code:31 userInfo:v30];
    goto LABEL_19;
  }

  v15 = frameCopy[2](frameCopy, uUIDString2);
  if (!v15)
  {
    v31 = bls_diagnostics_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      uUIDString5 = [dCopy UUIDString];
      bls_loggingString = [uUIDString2 bls_loggingString];
      *buf = 134218754;
      selfCopy4 = self;
      v58 = 2114;
      v59 = nameCopy;
      v60 = 2114;
      v61 = uUIDString5;
      v62 = 2114;
      v63 = bls_loggingString;
      _os_log_impl(&dword_21FD11000, v31, OS_LOG_TYPE_INFO, "%p %{public}@ nil surface for frame with uuid:%{public}@ frame:%{public}@", buf, 0x2Au);
    }

    v45 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CF0828];
    v52 = *MEMORY[0x277CCA450];
    v35 = MEMORY[0x277CCACA8];
    uUIDString4 = [dCopy UUIDString];
    bls_loggingString2 = [uUIDString2 bls_loggingString];
    v30 = [v35 stringWithFormat:@"%@: no saved surface (either never exited flipbook or has already been purged) uuid:%@ frame:%@", nameCopy, uUIDString4, bls_loggingString2];
    v53 = v30;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v37 = v45;
    v38 = v34;
    v39 = 30;
    goto LABEL_18;
  }

  v16 = v15;
  XPCObject = IOSurfaceCreateXPCObject(v15);
  v18 = bls_diagnostics_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    uUIDString6 = [dCopy UUIDString];
    bls_loggingString3 = [uUIDString2 bls_loggingString];
    *buf = 134219266;
    selfCopy4 = self;
    v58 = 2114;
    v59 = nameCopy;
    v60 = 2114;
    v61 = v16;
    v62 = 2114;
    v63 = XPCObject;
    v64 = 2114;
    v65 = uUIDString6;
    v66 = 2114;
    v67 = bls_loggingString3;
    _os_log_debug_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEBUG, "%p %{public}@ surface:%{public}@ surfaceXPC:%{public}@ uuid:%{public}@ frame:%{public}@", buf, 0x3Eu);
  }

  if (!XPCObject)
  {
    v46 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CF0828];
    v54 = *MEMORY[0x277CCA450];
    v40 = MEMORY[0x277CCACA8];
    uUIDString4 = [dCopy UUIDString];
    bls_loggingString2 = [uUIDString2 bls_loggingString];
    v30 = [v40 stringWithFormat:@"%@: failed to create xpc object for uuid:%@ surface:%@ frame:%@", nameCopy, uUIDString4, v16, bls_loggingString2];
    v55 = v30;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v38 = v44;
    v37 = v46;
    v39 = 1;
LABEL_18:
    v19 = [v37 errorWithDomain:v38 code:v39 userInfo:v36];

LABEL_19:
LABEL_20:

    XPCObject = 0;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_21:

  replyCopy[2](replyCopy, XPCObject, v19);
}

- (id)hostFrameForUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  p_lock_cachedFrameOnGlassNow = &self->_lock_cachedFrameOnGlassNow;
  uuid = [(BLSDiagnosticFlipbookFrame *)self->_lock_cachedFrameOnGlassNow uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7 & 1) != 0 || (p_lock_cachedFrameOnGlassNow = &self->_lock_cachedLastCancelledFrame, -[BLSDiagnosticFlipbookFrame uuid](self->_lock_cachedLastCancelledFrame, "uuid"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [dCopy isEqual:v8], v8, (v9))
  {
    v10 = *p_lock_cachedFrameOnGlassNow;
    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider frameWithUUID:dCopy];
LABEL_7:

  return v10;
}

- (void)allFlipbookFrames
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 bls_boundedDescriptionWithTransformer:&__block_literal_global_3];
  v6 = 134218242;
  selfCopy = self;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p allFlipbookFrames:%{public}@", &v6, 0x16u);
}

- (void)_lock_validateHostFrame:source:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21FD11000, v1, OS_LOG_TYPE_ERROR, "%p %{public}@, use after invalidation", v2, 0x16u);
}

- (void)_lock_validateHostFrame:(const char *)a1 source:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"uuid != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHDiagnosticsHostPeer.m";
    v16 = 1024;
    v17 = 133;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end