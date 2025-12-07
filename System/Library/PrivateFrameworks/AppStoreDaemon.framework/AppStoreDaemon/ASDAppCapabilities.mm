@interface ASDAppCapabilities
+ (BOOL)isCapable:(id)capable;
+ (BOOL)isCapableOfAction:(int64_t)action capabilities:(id)capabilities;
+ (BOOL)isCapableOfAction:(int64_t)action capability:(id)capability;
+ (id)defaultInstance;
+ (id)interface;
- (ASDAppCapabilities)init;
- (uint64_t)_isCapable:(uint64_t)capable method:;
@end

@implementation ASDAppCapabilities

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A298];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_isCapable_withCompletionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)defaultInstance
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__ASDAppCapabilities_defaultInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (qword_1ED90D530 != -1)
  {
    dispatch_once(&qword_1ED90D530, block);
  }

  v2 = _MergedGlobals_36;

  return v2;
}

uint64_t __37__ASDAppCapabilities_defaultInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_36;
  _MergedGlobals_36 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (ASDAppCapabilities)init
{
  v10.receiver = self;
  v10.super_class = ASDAppCapabilities;
  v2 = [(ASDAppCapabilities *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedValues = v2->_cachedValues;
    v2->_cachedValues = v3;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v2->_eligibilityChangedNotificationToken = -1;
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__ASDAppCapabilities_init__block_invoke;
    v7[3] = &unk_1E7CDC170;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("com.apple.os-eligibility-domain.change", &v2->_eligibilityChangedNotificationToken, v5, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__ASDAppCapabilities_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = ASDLogHandleForCategory(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, v1, OS_LOG_TYPE_DEBUG, "Clearing cache after receiving notification", buf, 2u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeAllObjects];
    os_unfair_lock_unlock(WeakRetained + 4);
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ASDAppCapabilitiesDidChangeNotification" object:WeakRetained];
}

+ (BOOL)isCapable:(id)capable
{
  capableCopy = capable;
  v5 = +[(ASDAppCapabilities *)self];
  v6 = [(ASDAppCapabilities *)v5 _isCapable:capableCopy method:"+[ASDAppCapabilities isCapable:]"];

  return v6;
}

- (uint64_t)_isCapable:(uint64_t)capable method:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld", objc_msgSend(v5, "features"), objc_msgSend(v5, "action")];
    os_unfair_lock_lock((self + 16));
    v8 = [*(self + 8) objectForKeyedSubscript:v7];
    os_unfair_lock_unlock((self + 16));
    if (v8)
    {
      self = ASDLogHandleForCategory(1);
      if (os_log_type_enabled(self, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 1026;
        *&buf[14] = [v8 BOOLValue];
        _os_log_debug_impl(&dword_1B8220000, self, OS_LOG_TYPE_DEBUG, "Cached value found for %{public}@ - %{public}d", buf, 0x12u);
      }

      LOBYTE(self) = [v8 BOOLValue];
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = __Block_byref_object_copy__5;
      v33 = __Block_byref_object_dispose__5;
      v34 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v19 = __40__ASDAppCapabilities__isCapable_method___block_invoke;
      v20 = &unk_1E7CDBB80;
      v21 = buf;
      v9 = v18;
      v10 = +[ASDServiceBroker defaultBroker];
      *v26 = 0;
      v11 = [v10 getCapabilitiesServiceWithError:v26];
      v12 = *v26;

      if (v11)
      {
        v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v9];
      }

      else
      {
        v19(v9, v12);
        v13 = 0;
      }

      if (*(*&buf[8] + 40))
      {
        self = ASDLogHandleForCategory(1);
        if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
        {
          v16 = *(*&buf[8] + 40);
          *v26 = 136446722;
          *&v26[4] = capable;
          v27 = 2114;
          v28 = v6;
          v29 = 2114;
          v30 = v16;
          _os_log_error_impl(&dword_1B8220000, self, OS_LOG_TYPE_ERROR, "Error in %{public}s: %{public}@ - %{public}@", v26, 0x20u);
        }

        LOBYTE(self) = 0;
      }

      else
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __40__ASDAppCapabilities__isCapable_method___block_invoke_60;
        v17[3] = &unk_1E7CDC0A0;
        v17[4] = &v22;
        [v13 isCapable:v6 withCompletionHandler:v17];
        os_unfair_lock_lock((self + 16));
        v14 = [MEMORY[0x1E696AD98] numberWithBool:*(v23 + 24)];
        [*(self + 8) setObject:v14 forKeyedSubscript:v7];

        os_unfair_lock_unlock((self + 16));
        LOBYTE(self) = *(v23 + 24);
      }

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  return self & 1;
}

+ (BOOL)isCapableOfAction:(int64_t)action capability:(id)capability
{
  v13 = *MEMORY[0x1E69E9840];
  capabilityCopy = capability;
  v6 = MEMORY[0x1E695DEC8];
  capabilityCopy2 = capability;
  v8 = [v6 arrayWithObjects:&capabilityCopy count:1];
  v9 = [ASDAppCapabilityMetadata metadataWithAction:action bundleID:&stru_1F30184F0 capabilities:v8, capabilityCopy, v13];

  v10 = +[(ASDAppCapabilities *)self];
  LOBYTE(action) = [(ASDAppCapabilities *)v10 _isCapable:v9 method:"+[ASDAppCapabilities isCapableOfAction:capability:]"];

  return action;
}

+ (BOOL)isCapableOfAction:(int64_t)action capabilities:(id)capabilities
{
  v5 = [ASDAppCapabilityMetadata metadataWithAction:action bundleID:&stru_1F30184F0 capabilities:capabilities];
  v6 = +[(ASDAppCapabilities *)self];
  v7 = [(ASDAppCapabilities *)v6 _isCapable:v5 method:"+[ASDAppCapabilities isCapableOfAction:capabilities:]"];

  return v7;
}

@end