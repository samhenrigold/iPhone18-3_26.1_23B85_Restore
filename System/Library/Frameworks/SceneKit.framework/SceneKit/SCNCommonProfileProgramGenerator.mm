@interface SCNCommonProfileProgramGenerator
+ (id)generatorWithProfile:(int)profile allowingHotReload:(BOOL)reload;
- (SCNCommonProfileProgramGenerator)init;
- (__C3DFXProgram)programWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context trackedResource:(id)resource introspectionDataPtr:(void *)ptr;
- (int)profile;
- (void)dealloc;
- (void)emptyShaderCache;
- (void)releaseProgramForResource:(id)resource;
@end

@implementation SCNCommonProfileProgramGenerator

- (SCNCommonProfileProgramGenerator)init
{
  v10.receiver = self;
  v10.super_class = SCNCommonProfileProgramGenerator;
  v2 = [(SCNCommonProfileProgramGenerator *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_programMutex._os_unfair_lock_opaque = 0;
    v4 = *MEMORY[0x277CBECE8];
    v5 = MEMORY[0x277CBF150];
    v2->_shaders = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Mutable = CFDictionaryCreateMutable(v4, 0, 0, v5);
    v3->_trackedResourcesToHashcode = Mutable;
    SharedInstance = C3DNotificationCenterGetSharedInstance(Mutable, v7);
    C3DNotificationCenterAddObserver(SharedInstance, v3, __HandleProfileWillDieNotification, @"kC3DNotificationProfileWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)dealloc
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(self, a2);
  C3DNotificationCenterRemoveObserver(SharedInstance, self, @"kC3DNotificationProfileWillDie", 0);
  shaders = self->_shaders;
  if (shaders)
  {
    CFRelease(shaders);
    self->_shaders = 0;
  }

  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;
  if (trackedResourcesToHashcode)
  {
    CFRelease(trackedResourcesToHashcode);
    self->_trackedResourcesToHashcode = 0;
  }

  v6.receiver = self;
  v6.super_class = SCNCommonProfileProgramGenerator;
  [(SCNCommonProfileProgramGenerator *)&v6 dealloc];
}

- (int)profile
{
  v2 = scn_default_log(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(SCNCommonProfileProgramGenerator *)v2 profile];
  }

  return -1;
}

- (void)emptyShaderCache
{
  CFDictionaryRemoveAllValues(self->_shaders);
  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;

  CFDictionaryRemoveAllValues(trackedResourcesToHashcode);
}

+ (id)generatorWithProfile:(int)profile allowingHotReload:(BOOL)reload
{
  reloadCopy = reload;
  v5 = *&profile;
  objc_sync_enter(self);
  if (!s_registry[v5])
  {
    if (v5)
    {
      s_registry[v5] = [[SCNCommonProfileProgramGeneratorGL alloc] initWithProfile:v5];
    }

    else
    {
      s_registry[0] = [[SCNCommonProfileProgramGeneratorMetal alloc] initAllowingHotReload:reloadCopy];
    }
  }

  objc_sync_exit(self);
  return s_registry[v5];
}

- (__C3DFXProgram)programWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context trackedResource:(id)resource introspectionDataPtr:(void *)ptr
{
  v39 = *MEMORY[0x277D85DE8];
  HashCode = C3DProgramHashCodeGetHashCode(code);
  if (HashCode)
  {
    v13 = HashCode;
    os_unfair_lock_lock(&self->_programMutex);
    Value = CFDictionaryGetValue(self->_shaders, v13);
    if (Value)
    {
      v15 = Value;
      v16 = CFSetContainsValue(Value[2], resource);
      v17 = v16 == 0;
      if (!v16)
      {
        CFSetAddValue(v15[2], resource);
      }

      v18 = v15[1];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      kdebug_trace();
      v18 = [(SCNCommonProfileProgramGenerator *)self _newProgramWithHashCode:code engineContext:context introspectionDataPtr:ptr];
      kdebug_trace();
      objc_autoreleasePoolPop(v27);
      if (!v18)
      {
        v31 = CFCopyDescription(code);
        v33 = scn_default_log(v31, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412546;
          v36 = v13;
          v37 = 2112;
          v38 = v31;
          _os_log_impl(&dword_21BEF7000, v33, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create program for hashcode %@: %@", &v35, 0x16u);
        }

        CFRelease(v31);
        v18 = 0;
        goto LABEL_21;
      }

      C3DEntitySetName(v18, v13);
      v28 = objc_alloc_init(SCNCommonProfileProgramCache);
      v28->_program = CFRetain(v18);
      CFSetAddValue(v28->_owners, resource);
      CFDictionarySetValue(self->_shaders, v13, v28);

      CFRelease(v18);
      v17 = 1;
    }

    if (v17 && v18 != 0)
    {
      Mutable = CFDictionaryGetValue(self->_trackedResourcesToHashcode, resource);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        CFDictionarySetValue(self->_trackedResourcesToHashcode, resource, Mutable);
        CFRelease(Mutable);
      }

      CFArrayAppendValue(Mutable, v13);
    }

LABEL_21:
    os_unfair_lock_unlock(&self->_programMutex);
    return v18;
  }

  v19 = scn_default_log(0, v12);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [(SCNCommonProfileProgramGenerator *)v19 programWithHashCode:v20 engineContext:v21 trackedResource:v22 introspectionDataPtr:v23, v24, v25, v26];
  }

  return 0;
}

- (void)releaseProgramForResource:(id)resource
{
  if (!resource)
  {
    v5 = scn_default_log(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNCommonProfileProgramGenerator *)v5 releaseProgramForResource:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  os_unfair_lock_lock(&self->_programMutex);
  Value = CFDictionaryGetValue(self->_trackedResourcesToHashcode, resource);
  if (Value)
  {
    v14 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v16 = Count;
      for (i = 0; i != v16; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
        v19 = CFDictionaryGetValue(self->_shaders, ValueAtIndex);
        if (v19)
        {
          v21 = v19;
          CFSetRemoveValue(v19[2], resource);
          if (!CFSetGetCount(v21[2]))
          {
            CFDictionaryRemoveValue(self->_shaders, ValueAtIndex);
          }
        }

        else if ((releaseProgramForResource__done & 1) == 0)
        {
          releaseProgramForResource__done = 1;
          v22 = scn_default_log(0, v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(SCNCommonProfileProgramGenerator *)&v23 releaseProgramForResource:v24, v22];
          }
        }
      }
    }
  }

  CFDictionaryRemoveValue(self->_trackedResourcesToHashcode, resource);
  os_unfair_lock_unlock(&self->_programMutex);
}

- (void)programWithHashCode:(uint64_t)a3 engineContext:(uint64_t)a4 trackedResource:(uint64_t)a5 introspectionDataPtr:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "hashcode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)releaseProgramForResource:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "trackedResource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)releaseProgramForResource:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DCommonProfileProgramReleaseHashCode can't find cache for tracked resource", buf, 2u);
}

@end