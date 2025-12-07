@interface VFXCommonProfileProgramGenerator
+ (id)commonProfileGeneratorAllowingHotReload:(BOOL)reload;
- (VFXCommonProfileProgramGenerator)init;
- (__CFXProgram)programWithHashCode:(__CFXProgramHashCode *)code engineContext:(__CFXEngineContext *)context trackedResource:(id)resource introspectionDataPtr:(void *)ptr;
- (void)dealloc;
- (void)emptyShaderCache;
- (void)releaseProgramForResource:(id)resource;
@end

@implementation VFXCommonProfileProgramGenerator

- (VFXCommonProfileProgramGenerator)init
{
  v7.receiver = self;
  v7.super_class = VFXCommonProfileProgramGenerator;
  v2 = [(VFXCommonProfileProgramGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_programMutex._os_unfair_lock_opaque = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = MEMORY[0x1E695E9E8];
    v2->_shaders = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3->_trackedResourcesToHashcode = CFDictionaryCreateMutable(v4, 0, 0, v5);
    sub_1AF1BE27C(v3, sub_1AF1EB930, @"kCFXNotificationProfileWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    sub_1AF1BE27C(v3, sub_1AF1EB9A0, @"kCFXShadableDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)dealloc
{
  sub_1AF1BE2E4(self, @"kCFXNotificationProfileWillDie", 0);
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

  v5.receiver = self;
  v5.super_class = VFXCommonProfileProgramGenerator;
  [(VFXCommonProfileProgramGenerator *)&v5 dealloc];
}

- (void)emptyShaderCache
{
  CFDictionaryRemoveAllValues(self->_shaders);
  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;

  CFDictionaryRemoveAllValues(trackedResourcesToHashcode);
}

+ (id)commonProfileGeneratorAllowingHotReload:(BOOL)reload
{
  if (reload)
  {
    if (qword_1EB658668 != -1)
    {
      sub_1AFDE45DC();
    }

    v3 = &qword_1EB658660;
  }

  else
  {
    if (qword_1EB658678 != -1)
    {
      sub_1AFDE45C8();
    }

    v3 = &qword_1EB658670;
  }

  return *v3;
}

- (__CFXProgram)programWithHashCode:(__CFXProgramHashCode *)code engineContext:(__CFXEngineContext *)context trackedResource:(id)resource introspectionDataPtr:(void *)ptr
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = sub_1AF13E494(code);
  if (v11)
  {
    v13 = v11;
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
      v29 = sub_1AF0D5194(v27, v28);
      v30 = os_signpost_id_generate(v29);
      v32 = sub_1AF0D5194(v30, v31);
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v34 = v32;
        if (os_signpost_enabled(v32))
        {
          LOWORD(v45) = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v30, "GenerateShader", &unk_1AFF70A1D, &v45, 2u);
        }
      }

      v18 = objc_msgSend__newProgramWithHashCode_engineContext_introspectionDataPtr_(self, v33, code, context, ptr);
      v36 = sub_1AF0D5194(v18, v35);
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = v36;
        if (os_signpost_enabled(v36))
        {
          LOWORD(v45) = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v37, OS_SIGNPOST_INTERVAL_END, v30, "GenerateShader", &unk_1AFF70A1D, &v45, 2u);
        }
      }

      objc_autoreleasePoolPop(v27);
      if (!v18)
      {
        v41 = CFCopyDescription(code);
        v43 = sub_1AF0D5194(v41, v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v45 = 138412546;
          v46 = v13;
          v47 = 2112;
          v48 = v41;
          _os_log_impl(&dword_1AF0CE000, v43, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create program for hashcode %@: %@", &v45, 0x16u);
        }

        CFRelease(v41);
        v18 = 0;
        goto LABEL_27;
      }

      sub_1AF16CC34(v18, v13);
      v38 = objc_alloc_init(VFXCommonProfileProgramCache);
      v38->_program = CFRetain(v18);
      CFSetAddValue(v38->_owners, resource);
      CFDictionarySetValue(self->_shaders, v13, v38);

      CFRelease(v18);
      v17 = 1;
    }

    if (v17 && v18 != 0)
    {
      Mutable = CFDictionaryGetValue(self->_trackedResourcesToHashcode, resource);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(self->_trackedResourcesToHashcode, resource, Mutable);
        CFRelease(Mutable);
      }

      CFArrayAppendValue(Mutable, v13);
    }

LABEL_27:
    os_unfair_lock_unlock(&self->_programMutex);
    return v18;
  }

  v19 = sub_1AF0D5194(0, v12);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE45F0(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  return 0;
}

- (void)releaseProgramForResource:(id)resource
{
  if (!resource)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4668(v5, v6, v7, v8, v9, v10, v11, v12);
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

        else if ((byte_1EB658680 & 1) == 0)
        {
          byte_1EB658680 = 1;
          v22 = sub_1AF0D5194(0, v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDE46E0(&v23, v24, v22);
          }
        }
      }
    }
  }

  CFDictionaryRemoveValue(self->_trackedResourcesToHashcode, resource);
  os_unfair_lock_unlock(&self->_programMutex);
}

@end