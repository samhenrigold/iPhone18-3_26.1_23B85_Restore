@interface AUPBClientManager
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (AUPBClientManager)init;
- (id).cxx_construct;
- (id)serverFromRef:(OpaqueAUPBServer *)ref;
- (int)addNewServerListener:(void *)listener withUserData:(void *)data;
- (int)addPropertyListener:(void *)listener onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block property:(unsigned int)property withUserData:(void *)data;
- (int)copyPBProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block intoValue:(const void *)value;
- (int)getAUParameter:(unsigned int)parameter onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element copiedIntoValue:(float *)value;
- (int)getAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element copiedIntoBufer:(void *)bufer withSize:(unsigned int *)size;
- (int)getAUPropertyInfo:(unsigned int)info onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element intoDataSize:(unsigned int *)size writeable:(char *)writeable;
- (int)getSerialAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element inData:(id *)data;
- (int)removePropertyListener:(void *)listener onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block property:(unsigned int)property withUserData:(void *)data;
- (int)removePropertyListenersForServer:(OpaqueAUPBServer *)server;
- (int)removeServerListener:(void *)listener withUserData:(void *)data;
- (int)setAUParameter:(unsigned int)parameter onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element value:(float)value;
- (int)setAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element withValue:(const void *)value size:(unsigned int)size;
- (int)setPBProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block value:(void *)value;
- (int)setSerialAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element toData:(id)data;
- (void)dealloc;
- (void)handleRegistrarCrash;
- (void)newServerAdded:(id)added;
- (void)processingBlock:(unsigned int)block propertiesChanged:(id)changed withQualifierData:(id)data;
- (void)processingBlock:(unsigned int)block propertyChanged:(unsigned int)changed;
- (void)startRegistarConnection;
@end

@implementation AUPBClientManager

+ (id)allocWithZone:(_NSZone *)zone
{
  sharedInstance = [self sharedInstance];

  return sharedInstance;
}

+ (id)sharedInstance
{
  objc_sync_enter(self);
  if (!sSharedInstance)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___AUPBClientManager;
    sSharedInstance = [objc_msgSendSuper2(&v4 allocWithZone_];
  }

  objc_sync_exit(self);
  return sSharedInstance;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (int)setSerialAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element toData:(id)data
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v9 = *&element;
    v10 = *&scope;
    v13 = *&property;
    v15 = [(AUPBClientManager *)self serverFromRef:server];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1936881215;
    if (gLogScope)
    {
      v16 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 806;
      *&buf[18] = 1024;
      *&buf[20] = v13;
      *v28 = 2048;
      *&v28[2] = server;
      *&v28[10] = 2048;
      *&v28[12] = unit;
      *&v28[20] = 1024;
      *&v28[22] = v10;
      v29 = 1024;
      v30 = v9;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetAUPropSerial: property=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
      v18 = v24;
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v18 = &v23;
    if (!v15)
    {
LABEL_12:
      v17 = *(v18 + 6);
      _Block_object_dispose(&v23, 8);
      return v17;
    }

LABEL_11:
    *(v18 + 6) = 1953461620;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *v28 = __Block_byref_object_copy__130;
    *&v28[8] = __Block_byref_object_dispose__131;
    *&v28[16] = dispatch_semaphore_create(0);
    [v15 addSema:*(*&buf[8] + 40)];
    proxyInterface = [v15 proxyInterface];
    v20 = [(AUPBClientManager *)self auHandleFromRef:unit];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__AUPBClientManager_setSerialAUProperty_onServer_audioUnit_scope_element_toData___block_invoke;
    v22[3] = &unk_1E72C1788;
    v22[4] = &v23;
    v22[5] = buf;
    v22[6] = v15;
    [proxyInterface setAudioUnit:v20 property:v13 onScope:v10 element:v9 value:data withReply:v22];
    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
    v18 = v24;
    goto LABEL_12;
  }

  return 560295540;
}

intptr_t __81__AUPBClientManager_setSerialAUProperty_onServer_audioUnit_scope_element_toData___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

- (int)getSerialAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element inData:(id *)data
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v9 = *&element;
    v10 = *&scope;
    v13 = *&property;
    v15 = [(AUPBClientManager *)self serverFromRef:server];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1936881215;
    if (gLogScope)
    {
      v16 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 776;
      *&buf[18] = 1024;
      *&buf[20] = v13;
      *v28 = 2048;
      *&v28[2] = server;
      *&v28[10] = 2048;
      *&v28[12] = unit;
      *&v28[20] = 1024;
      *&v28[22] = v10;
      v29 = 1024;
      v30 = v9;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetAUPropSerial: property=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
      v18 = v24;
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v18 = &v23;
    if (!v15)
    {
LABEL_12:
      v17 = *(v18 + 6);
      _Block_object_dispose(&v23, 8);
      return v17;
    }

LABEL_11:
    *(v18 + 6) = 1953461620;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *v28 = __Block_byref_object_copy__130;
    *&v28[8] = __Block_byref_object_dispose__131;
    *&v28[16] = dispatch_semaphore_create(0);
    [v15 addSema:*(*&buf[8] + 40)];
    proxyInterface = [v15 proxyInterface];
    v20 = [(AUPBClientManager *)self auHandleFromRef:unit];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__AUPBClientManager_getSerialAUProperty_onServer_audioUnit_scope_element_inData___block_invoke;
    v22[3] = &unk_1E72C1828;
    v22[4] = v15;
    v22[5] = &v23;
    v22[6] = buf;
    v22[7] = data;
    [proxyInterface getAudioUnit:v20 property:v13 onScope:v10 element:v9 inReply:v22];
    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
    v18 = v24;
    goto LABEL_12;
  }

  return 560295540;
}

intptr_t __81__AUPBClientManager_getSerialAUProperty_onServer_audioUnit_scope_element_inData___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  **(a1 + 56) = a3;
  v4 = **(a1 + 56);
  if (v4)
  {
    v5 = v4;
  }

  [*(a1 + 32) removeSema:*(*(*(a1 + 48) + 8) + 40)];
  v6 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v6);
}

- (int)setAUParameter:(unsigned int)parameter onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element value:(float)value
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v9 = *&element;
    v10 = *&scope;
    v13 = *&parameter;
    v15 = [(AUPBClientManager *)self serverFromRef:server];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1936881215;
    if (gLogScope)
    {
      v16 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 748;
      *&buf[18] = 1024;
      *&buf[20] = v13;
      *v28 = 2048;
      *&v28[2] = server;
      *&v28[10] = 2048;
      *&v28[12] = unit;
      *&v28[20] = 1024;
      *&v28[22] = v10;
      v29 = 1024;
      v30 = v9;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetAUParam: parameter=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
      v18 = v24;
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v18 = &v23;
    if (!v15)
    {
LABEL_12:
      v17 = *(v18 + 6);
      _Block_object_dispose(&v23, 8);
      return v17;
    }

LABEL_11:
    *(v18 + 6) = 1953461620;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *v28 = __Block_byref_object_copy__130;
    *&v28[8] = __Block_byref_object_dispose__131;
    *&v28[16] = dispatch_semaphore_create(0);
    [v15 addSema:*(*&buf[8] + 40)];
    proxyInterface = [v15 proxyInterface];
    v20 = [(AUPBClientManager *)self auHandleFromRef:unit];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__AUPBClientManager_setAUParameter_onServer_audioUnit_scope_element_value___block_invoke;
    v22[3] = &unk_1E72C1788;
    v22[4] = &v23;
    v22[5] = buf;
    v22[6] = v15;
    [proxyInterface setAudioUnit:v20 parameter:v13 onScope:v10 element:v9 value:v22 withReply:COERCE_DOUBLE(LODWORD(value))];
    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
    v18 = v24;
    goto LABEL_12;
  }

  return 560295540;
}

intptr_t __75__AUPBClientManager_setAUParameter_onServer_audioUnit_scope_element_value___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

- (int)getAUParameter:(unsigned int)parameter onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element copiedIntoValue:(float *)value
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v9 = *&element;
    v10 = *&scope;
    v13 = *&parameter;
    v15 = [(AUPBClientManager *)self serverFromRef:server];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1936881215;
    if (gLogScope)
    {
      v16 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 719;
      *&buf[18] = 1024;
      *&buf[20] = v13;
      *v28 = 2048;
      *&v28[2] = server;
      *&v28[10] = 2048;
      *&v28[12] = unit;
      *&v28[20] = 1024;
      *&v28[22] = v10;
      v29 = 1024;
      v30 = v9;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetAUParam: parameter=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
      v18 = v24;
      if (value)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_10:
    v18 = &v23;
    if (value)
    {
LABEL_11:
      if (v15)
      {
        *(v18 + 6) = 1953461620;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3052000000;
        *v28 = __Block_byref_object_copy__130;
        *&v28[8] = __Block_byref_object_dispose__131;
        *&v28[16] = dispatch_semaphore_create(0);
        [v15 addSema:*(*&buf[8] + 40)];
        proxyInterface = [v15 proxyInterface];
        v20 = [(AUPBClientManager *)self auHandleFromRef:unit];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __85__AUPBClientManager_getAUParameter_onServer_audioUnit_scope_element_copiedIntoValue___block_invoke;
        v22[3] = &unk_1E72C1800;
        v22[4] = v15;
        v22[5] = &v23;
        v22[6] = buf;
        v22[7] = value;
        [proxyInterface getAudioUnit:v20 parameter:v13 onScope:v10 element:v9 inReply:v22];
        dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(*(*&buf[8] + 40));
        _Block_object_dispose(buf, 8);
        v18 = v24;
      }
    }

LABEL_13:
    v17 = *(v18 + 6);
    _Block_object_dispose(&v23, 8);
    return v17;
  }

  return 560295540;
}

intptr_t __85__AUPBClientManager_getAUParameter_onServer_audioUnit_scope_element_copiedIntoValue___block_invoke(uint64_t a1, int a2, float a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  **(a1 + 56) = a3;
  [*(a1 + 32) removeSema:*(*(*(a1 + 48) + 8) + 40)];
  v4 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v4);
}

- (int)setAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element withValue:(const void *)value size:(unsigned int)size
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->mConnectionAcknowledged)
  {
    return 560295540;
  }

  v14 = [(AUPBClientManager *)self serverFromRef:server];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1936881215;
  if (!gLogScope)
  {
    v15 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136316674;
      *&buf[1] = "AUPBClientManager.mm";
      v23 = 1024;
      v24 = 684;
      v25 = 1024;
      propertyCopy = property;
      v27[0] = 2048;
      *&v27[1] = server;
      v27[5] = 2048;
      unitCopy = unit;
      v29 = 1024;
      scopeCopy = scope;
      v31 = 1024;
      elementCopy = element;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetAUProp: property=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
    }

    goto LABEL_9;
  }

  v15 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v14)
  {
    PropertyMarshaller::PropertyMarshaller(buf, 0, 0);
  }

  v16 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v16;
}

intptr_t __83__AUPBClientManager_setAUProperty_onServer_audioUnit_scope_element_withValue_size___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

- (int)getAUProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element copiedIntoBufer:(void *)bufer withSize:(unsigned int *)size
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v10 = *&element;
    v11 = *&scope;
    v14 = *&property;
    v16 = [(AUPBClientManager *)self serverFromRef:server];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1936881215;
    if (gLogScope)
    {
      v17 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 651;
      *&buf[18] = 1024;
      *&buf[20] = v14;
      *v30 = 2048;
      *&v30[2] = server;
      *&v30[10] = 2048;
      *&v30[12] = unit;
      *&v30[20] = 1024;
      *&v30[22] = v11;
      v31 = 1024;
      v32 = v10;
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetAUProp: property=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
      v19 = v26;
      if (!v16)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v19 = &v25;
    if (!v16)
    {
LABEL_12:
      v18 = *(v19 + 6);
      _Block_object_dispose(&v25, 8);
      return v18;
    }

LABEL_11:
    *(v19 + 6) = 1953461620;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *v30 = __Block_byref_object_copy__130;
    *&v30[8] = __Block_byref_object_dispose__131;
    *&v30[16] = dispatch_semaphore_create(0);
    [v16 addSema:*(*&buf[8] + 40)];
    proxyInterface = [v16 proxyInterface];
    v21 = [(AUPBClientManager *)self auHandleFromRef:unit];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__AUPBClientManager_getAUProperty_onServer_audioUnit_scope_element_copiedIntoBufer_withSize___block_invoke;
    v23[3] = &unk_1E72C17D8;
    v24 = v14;
    v23[7] = bufer;
    v23[8] = size;
    v23[4] = v16;
    v23[5] = &v25;
    v23[6] = buf;
    [proxyInterface getAudioUnit:v21 property:v14 onScope:v11 element:v10 inReply:v23];
    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
    v19 = v26;
    goto LABEL_12;
  }

  return 560295540;
}

intptr_t __93__AUPBClientManager_getAUProperty_onServer_audioUnit_scope_element_copiedIntoBufer_withSize___block_invoke(uint64_t a1, int a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a3 && !*(*(*(a1 + 40) + 8) + 24))
  {
    PropertyMarshaller::PropertyMarshaller(v5, [a3 bytes], objc_msgSend(a3, "length"));
  }

  [*(a1 + 32) removeSema:{*(*(*(a1 + 48) + 8) + 40), v5[0]}];
  return dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

- (int)getAUPropertyInfo:(unsigned int)info onServer:(OpaqueAUPBServer *)server audioUnit:(OpaqueRemoteAudioUnit *)unit scope:(unsigned int)scope element:(unsigned int)element intoDataSize:(unsigned int *)size writeable:(char *)writeable
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v10 = *&element;
    v11 = *&scope;
    v14 = *&info;
    v16 = [(AUPBClientManager *)self serverFromRef:server];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1936881215;
    if (gLogScope)
    {
      v17 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 573;
      *&buf[18] = 1024;
      *&buf[20] = v14;
      *v30 = 2048;
      *&v30[2] = server;
      *&v30[10] = 2048;
      *&v30[12] = unit;
      *&v30[20] = 1024;
      *&v30[22] = v11;
      v31 = 1024;
      v32 = v10;
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetAUPropInfo: property=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
      v19 = v26;
      if (!v16)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v19 = &v25;
    if (!v16)
    {
LABEL_12:
      v18 = *(v19 + 6);
      _Block_object_dispose(&v25, 8);
      return v18;
    }

LABEL_11:
    *(v19 + 6) = 1953461620;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *v30 = __Block_byref_object_copy__130;
    *&v30[8] = __Block_byref_object_dispose__131;
    *&v30[16] = dispatch_semaphore_create(0);
    [v16 addSema:*(*&buf[8] + 40)];
    proxyInterface = [v16 proxyInterface];
    v21 = [(AUPBClientManager *)self auHandleFromRef:unit];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__AUPBClientManager_getAUPropertyInfo_onServer_audioUnit_scope_element_intoDataSize_writeable___block_invoke;
    v23[3] = &unk_1E72C17B0;
    v23[7] = size;
    v23[8] = writeable;
    v24 = v14;
    v23[4] = v16;
    v23[5] = &v25;
    v23[6] = buf;
    [proxyInterface getAudioUnit:v21 propertyInfo:v14 onScope:v11 element:v10 inReply:v23];
    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
    v19 = v26;
    goto LABEL_12;
  }

  return 560295540;
}

intptr_t __95__AUPBClientManager_getAUPropertyInfo_onServer_audioUnit_scope_element_intoDataSize_writeable___block_invoke(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v5 = *(a1 + 56);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    *v6 = a4;
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = *(a1 + 72);
    v8 = 8;
    if (v7 <= 32)
    {
      if (v7 > 23)
      {
        if ((v7 - 24) < 2 || v7 == 30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        switch(v7)
        {
          case 0:
            goto LABEL_26;
          case 4:
            v8 = 104;
            goto LABEL_26;
          case 16:
LABEL_26:
            **(a1 + 56) = v8;
            break;
        }
      }
    }

    else
    {
      if (v7 <= 37)
      {
        if ((v7 - 34) < 2)
        {
LABEL_11:
          v8 = 16;
          goto LABEL_26;
        }

        if (v7 != 33)
        {
          if (v7 != 36)
          {
            goto LABEL_27;
          }

          goto LABEL_11;
        }

LABEL_24:
        v8 = 24;
        goto LABEL_26;
      }

      if (v7 == 38)
      {
        goto LABEL_24;
      }

      if (v7 == 50 || v7 == 54)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  [*(a1 + 32) removeSema:{*(*(*(a1 + 48) + 8) + 40), a4}];
  v9 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v9);
}

- (int)setPBProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block value:(void *)value
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->mConnectionAcknowledged)
  {
    return 560295540;
  }

  v9 = *&property;
  v10 = [(AUPBClientManager *)self serverFromRef:server];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1936881215;
  if (!gLogScope)
  {
    v11 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 546;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      *v23 = 2048;
      *&v23[2] = server;
      *&v23[10] = 2048;
      *&v23[12] = block;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetPBProp: property=%d server=%p block=%p\n", buf, 0x2Cu);
    }

    goto LABEL_9;
  }

  v11 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (value)
  {
    v13 = v19;
    if (v10)
    {
      *(v19 + 6) = 1953461620;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      *v23 = __Block_byref_object_copy__130;
      *&v23[8] = __Block_byref_object_dispose__131;
      *&v23[16] = dispatch_semaphore_create(0);
      [v10 addSema:*(*&buf[8] + 40)];
      Data = CFPropertyListCreateData(0, value, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      proxyInterface = [v10 proxyInterface];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __56__AUPBClientManager_setPBProperty_onServer_block_value___block_invoke;
      v17[3] = &unk_1E72C1788;
      v17[4] = &v18;
      v17[5] = buf;
      v17[6] = v10;
      [proxyInterface setProcessingBlock:block property:v9 value:Data withReply:v17];
      CFRelease(Data);
      dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);
      v13 = v19;
    }
  }

  else
  {
    v13 = v19;
    *(v19 + 6) = 1886806380;
  }

  v12 = *(v13 + 6);
  _Block_object_dispose(&v18, 8);
  return v12;
}

intptr_t __56__AUPBClientManager_setPBProperty_onServer_block_value___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

- (int)copyPBProperty:(unsigned int)property onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block intoValue:(const void *)value
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v9 = *&property;
    v11 = [(AUPBClientManager *)self serverFromRef:server];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1936881215;
    if (gLogScope)
    {
      v12 = *gLogScope;
      if (!*gLogScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "AUPBClientManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 500;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      *v24 = 2048;
      *&v24[2] = server;
      *&v24[10] = 2048;
      *&v24[12] = block;
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d CopyPBProp: property=%d server=%p block=%p", buf, 0x2Cu);
      v14 = v20;
      if (value)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_10:
    v14 = &v19;
    if (value)
    {
LABEL_11:
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    *(v14 + 6) = 1886806380;
    if (!v11)
    {
LABEL_15:
      v13 = *(v14 + 6);
      _Block_object_dispose(&v19, 8);
      return v13;
    }

LABEL_14:
    *(v14 + 6) = 1953461620;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *v24 = __Block_byref_object_copy__130;
    *&v24[8] = __Block_byref_object_dispose__131;
    *&v24[16] = dispatch_semaphore_create(0);
    [v11 addSema:*(*&buf[8] + 40)];
    proxyInterface = [v11 proxyInterface];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__AUPBClientManager_copyPBProperty_onServer_block_intoValue___block_invoke;
    v17[3] = &unk_1E72C1760;
    v18 = v9;
    v17[4] = self;
    v17[5] = v11;
    v17[6] = &v19;
    v17[7] = buf;
    v17[8] = value;
    [proxyInterface copyProcessingBlock:block property:v9 intoReply:v17];
    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
    v14 = v20;
    goto LABEL_15;
  }

  return 560295540;
}

intptr_t __61__AUPBClientManager_copyPBProperty_onServer_block_intoValue___block_invoke(uint64_t a1, int a2, CFDataRef data)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  **(a1 + 64) = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  v4 = *(a1 + 72);
  if (v4 == 1651272556)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_27;
    }

    v10 = **(a1 + 64);
    if (!v10)
    {
      goto LABEL_27;
    }

    BytePtr = CFDataGetBytePtr(v10);
    if (CFDataGetLength(**(a1 + 64)) >= 4)
    {
      [*(a1 + 32) aupbRefFromHandle:*BytePtr];
      operator new();
    }

    v8 = 0;
    CFRelease(**(a1 + 64));
    v20 = CFDataCreate(0, 0, 0);
  }

  else
  {
    if (v4 != 1635087726)
    {
      goto LABEL_27;
    }

    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_27;
    }

    v5 = **(a1 + 64);
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(**(a1 + 64));
    if (Length >= 0x10)
    {
      v8 = 0;
      v9 = 0;
      v12 = Length >> 4;
      do
      {
        *&v23 = *v6;
        DWORD2(v23) = *(v6 + 2);
        v13 = [*(a1 + 32) auRefFromHandle:*(v6 + 3)];
        v14 = v9 - v8;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * (-v8 >> 3) > v16)
        {
          v16 = 0x5555555555555556 * (-v8 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::allocator<AUPBUnit>::allocate_at_least[abi:ne200100](v17);
        }

        v18 = 24 * v15;
        *v18 = v23;
        *(v18 + 16) = v13;
        v9 = 24 * v15 + 24;
        v19 = (v18 + 24 * (v14 / -24));
        memcpy(v19, v8, v14);
        if (v8)
        {
          operator delete(v8);
        }

        v8 = v19;
        v6 += 16;
        --v12;
      }

      while (v12);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    CFRelease(**(a1 + 64));
    v20 = CFDataCreate(0, v8, v9 - v8);
  }

  **(a1 + 64) = v20;
  if (v8)
  {
    operator delete(v8);
  }

LABEL_27:
  [*(a1 + 40) removeSema:*(*(*(a1 + 56) + 8) + 40)];
  v21 = *(*(*(a1 + 56) + 8) + 40);

  return dispatch_semaphore_signal(v21);
}

- (int)removePropertyListenersForServer:(OpaqueAUPBServer *)server
{
  begin = self->mPropertyListeners.__begin_;
  end = self->mPropertyListeners.__end_;
  while (begin != end)
  {
    if (*begin == server)
    {
      v7 = end - (begin + 40);
      if (end != (begin + 40))
      {
        memmove(begin, begin + 40, end - (begin + 40));
      }

      end = (begin + v7);
      self->mPropertyListeners.__end_ = (begin + v7);
    }

    else
    {
      begin = (begin + 40);
    }
  }

  return 0;
}

- (int)removePropertyListener:(void *)listener onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block property:(unsigned int)property withUserData:(void *)data
{
  v35 = *MEMORY[0x1E69E9840];
  begin = self->mPropertyListeners.__begin_;
  end = self->mPropertyListeners.__end_;
  if (begin == end)
  {
LABEL_8:
    v15 = -50;
  }

  else
  {
    while (*(begin + 3) != listener || *begin != server || *(begin + 1) != block || *(begin + 4) != property || *(begin + 4) != data)
    {
      begin = (begin + 40);
      if (begin == end)
      {
        goto LABEL_8;
      }
    }

    v18 = end - (begin + 40);
    if (end != (begin + 40))
    {
      memmove(begin, begin + 40, end - (begin + 40));
    }

    v15 = 0;
    self->mPropertyListeners.__end_ = (begin + v18);
  }

  if (gLogScope)
  {
    v16 = *gLogScope;
    if (!*gLogScope)
    {
      return v15;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136316930;
    v20 = "AUPBClientManager.mm";
    v21 = 1024;
    v22 = 478;
    v23 = 2048;
    listenerCopy = listener;
    v25 = 2048;
    serverCopy = server;
    v27 = 2048;
    blockCopy = block;
    v29 = 1024;
    propertyCopy = property;
    v31 = 2048;
    dataCopy = data;
    v33 = 1024;
    v34 = v15;
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d RemovePBPropListener: proc=%p, server=%p block=%p property=%d userData=%p result=%d\n", &v19, 0x46u);
  }

  return v15;
}

- (int)addPropertyListener:(void *)listener onServer:(OpaqueAUPBServer *)server block:(OpaqueAUPB *)block property:(unsigned int)property withUserData:(void *)data
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = -50;
  if (listener && server)
  {
    end = self->mPropertyListeners.__end_;
    cap = self->mPropertyListeners.__cap_;
    if (end >= cap)
    {
      begin = self->mPropertyListeners.__begin_;
      v18 = end - begin;
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0x666666666666666)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = 40 * v19;
      *v23 = server;
      *(v23 + 8) = block;
      *(v23 + 16) = property;
      *(v23 + 20) = 0;
      *(v23 + 24) = listener;
      *(v23 + 32) = data;
      v16 = (40 * v19 + 40);
      v24 = (40 * v19 - v18);
      memcpy((v23 - v18), begin, v18);
      self->mPropertyListeners.__begin_ = v24;
      self->mPropertyListeners.__end_ = v16;
      self->mPropertyListeners.__cap_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *end = server;
      *(end + 1) = block;
      *(end + 2) = property;
      v16 = (end + 40);
      *(end + 3) = listener;
      *(end + 4) = data;
    }

    v12 = 0;
    self->mPropertyListeners.__end_ = v16;
  }

  if (gLogScope)
  {
    v25 = *gLogScope;
    if (!*gLogScope)
    {
      return v12;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v27 = 136316930;
    v28 = "AUPBClientManager.mm";
    v29 = 1024;
    v30 = 463;
    v31 = 2048;
    listenerCopy = listener;
    v33 = 2048;
    serverCopy = server;
    v35 = 2048;
    blockCopy = block;
    v37 = 1024;
    propertyCopy = property;
    v39 = 2048;
    dataCopy = data;
    v41 = 1024;
    v42 = v12;
    _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d AddPBPropListener: proc=%p, server=%p block=%p property=%d userData=%p result=%d\n", &v27, 0x46u);
  }

  return v12;
}

- (int)removeServerListener:(void *)listener withUserData:(void *)data
{
  v23 = *MEMORY[0x1E69E9840];
  if (listener)
  {
    begin = self->mNewServerListeners.__begin_;
    end = self->mNewServerListeners.__end_;
    while (begin != end)
    {
      if (*begin == listener && *(begin + 1) == data)
      {
        v12 = end - (begin + 16);
        if (end != (begin + 16))
        {
          memmove(begin, begin + 16, end - (begin + 16));
        }

        v9 = 0;
        self->mNewServerListeners.__end_ = (begin + v12);
        goto LABEL_8;
      }

      begin = (begin + 16);
    }
  }

  v9 = -50;
LABEL_8:
  if (gLogScope)
  {
    v10 = *gLogScope;
    if (!*gLogScope)
    {
      return v9;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136316162;
    v14 = "AUPBClientManager.mm";
    v15 = 1024;
    v16 = 450;
    v17 = 2048;
    listenerCopy = listener;
    v19 = 2048;
    dataCopy = data;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d RemoveServerListener: proc=%p, userData=%p, result=%d\n", &v13, 0x2Cu);
  }

  return v9;
}

- (int)addNewServerListener:(void *)listener withUserData:(void *)data
{
  v33 = *MEMORY[0x1E69E9840];
  if (listener)
  {
    end = self->mNewServerListeners.__end_;
    cap = self->mNewServerListeners.__cap_;
    if (end >= cap)
    {
      begin = self->mNewServerListeners.__begin_;
      v12 = end - begin;
      v13 = (end - begin) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v15 = cap - begin;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (16 * v13);
      *v17 = listener;
      v17[1] = data;
      v9 = (16 * v13 + 16);
      memcpy(0, begin, v12);
      self->mNewServerListeners.__begin_ = 0;
      self->mNewServerListeners.__end_ = v9;
      self->mNewServerListeners.__cap_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *end = listener;
      *(end + 1) = data;
      v9 = (end + 16);
    }

    self->mNewServerListeners.__end_ = v9;
    v18 = [(NSMutableArray *)self->mRemoteServers copy];
    mTouchServersQueue = self->mTouchServersQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AUPBClientManager_addNewServerListener_withUserData___block_invoke;
    block[3] = &unk_1E72C1738;
    block[4] = v18;
    block[5] = listener;
    block[6] = data;
    dispatch_async(mTouchServersQueue, block);
    v10 = 0;
  }

  else
  {
    v10 = -50;
  }

  if (gLogScope)
  {
    v20 = *gLogScope;
    if (!*gLogScope)
    {
      return v10;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v24 = "AUPBClientManager.mm";
    v25 = 1024;
    v26 = 432;
    v27 = 2048;
    listenerCopy = listener;
    v29 = 2048;
    dataCopy = data;
    v31 = 1024;
    v32 = v10;
    _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d AddServerListener: proc=%p, userData=%p, result=%d\n", buf, 0x2Cu);
  }

  return v10;
}

void __55__AUPBClientManager_addNewServerListener_withUserData___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(a1 + 40))(*(a1 + 48), [*(*(&v7 + 1) + 8 * i) ref]);
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)serverFromRef:(OpaqueAUPBServer *)ref
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mRemoteServers = self->mRemoteServers;
  v5 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(mRemoteServers);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 ref] == ref)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)processingBlock:(unsigned int)block propertiesChanged:(id)changed withQualifierData:(id)data
{
  v6 = *&block;
  v59 = *MEMORY[0x1E69E9840];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  mRemoteServers = self->mRemoteServers;
  v10 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v10)
  {
    v11 = *v53;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(mRemoteServers);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        if (currentConnection == [v13 xpcConnection])
        {
          if (![changed count])
          {
            return;
          }

          v15 = 0;
          v34 = v38;
          *&v14 = 136316162;
          v33 = v14;
          while (2)
          {
            v35 = v15;
            v16 = [objc_msgSend(changed objectAtIndex:{v33, v34), "unsignedIntValue"}];
            if (gLogScope)
            {
              v17 = *gLogScope;
              if (!*gLogScope)
              {
LABEL_18:
                for (j = self->mPropertyListeners.__begin_; j != self->mPropertyListeners.__end_; j = (j + 40))
                {
                  v21 = *(j + 1);
                  if (v21 == [(AUPBClientManager *)self aupbRefFromHandle:v6]&& *(j + 4) == v16)
                  {
                    v22 = *j;
                    if (v22 == [v13 ref])
                    {
                      if ([data length] >= 9)
                      {
                        bytes = [data bytes];
                        bytes2 = [data bytes];
                        while (bytes >= bytes2)
                        {
                          bytes3 = [data bytes];
                          if (bytes > bytes3 + [data length] - 8)
                          {
                            break;
                          }

                          if (*bytes == v16)
                          {
                            v27 = [data length];
                            v28 = bytes[1];
                            if (bytes > v27 - v28 - 8)
                            {
                              break;
                            }

                            std::vector<unsigned char>::vector[abi:ne200100](&__dst, bytes[1]);
                            v30 = bytes + 2;
                            v29 = __dst;
                            if (v28)
                            {
                              memcpy(__dst, v30, v28);
                              v29 = __dst;
                            }

                            goto LABEL_31;
                          }

                          v26 = bytes[1];
                          bytes2 = [data bytes];
                          bytes = (bytes + v26 + 8);
                        }
                      }

                      v29 = 0;
                      LODWORD(v28) = 0;
                      v30 = 0;
                      __dst = 0;
                      v50 = 0;
                      v51 = 0;
LABEL_31:
                      *buf = *j;
                      *&buf[16] = *(j + 1);
                      *&buf[32] = *(j + 4);
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 3321888768;
                      v38[0] = __73__AUPBClientManager_processingBlock_propertiesChanged_withQualifierData___block_invoke;
                      v38[1] = &unk_1F0331318;
                      v46 = v28;
                      v40 = 0;
                      v41 = 0;
                      __p = 0;
                      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v29, v50, v50 - v29);
                      global_queue = dispatch_get_global_queue(0, 0);
                      v43 = *buf;
                      v44 = *&buf[16];
                      v45 = *&buf[32];
                      v42 = v30;
                      v38[2] = self;
                      v47 = v6;
                      v48 = v16;
                      dispatch_async(global_queue, block);
                      if (__p)
                      {
                        v40 = __p;
                        operator delete(__p);
                      }

                      if (__dst)
                      {
                        v50 = __dst;
                        operator delete(__dst);
                      }
                    }
                  }
                }

                v32 = [changed count];
                v15 = v35 + 1;
                if (v35 + 1 >= v32)
                {
                  return;
                }

                continue;
              }
            }

            else
            {
              v17 = MEMORY[0x1E69E9C10];
            }

            break;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [objc_msgSend(v13 "description")];
            v19 = [(AUPBClientManager *)self aupbRefFromHandle:v6];
            *buf = v33;
            *&buf[4] = "AUPBClientManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 345;
            *&buf[18] = 2080;
            *&buf[20] = v18;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            *&buf[38] = 1024;
            v57 = v16;
            _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d PBPropsChanged: %s, block=%p property=%d\n", buf, 0x2Cu);
          }

          goto LABEL_18;
        }
      }

      v10 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v10);
  }
}

uint64_t __73__AUPBClientManager_processingBlock_propertiesChanged_withQualifierData___block_invoke(uint64_t a1)
{
  v2 = 40;
  if (!*(a1 + 112))
  {
    v2 = 64;
  }

  v3 = *(a1 + v2);
  v10 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 32) aupbRefFromHandle:*(a1 + 116)];
  v7 = *(a1 + 120);
  v8 = *(a1 + 112);

  return v10(v4, v5, v6, v7, v3, v8);
}

- (void)processingBlock:(unsigned int)block propertyChanged:(unsigned int)changed
{
  v5 = *&block;
  v34 = *MEMORY[0x1E69E9840];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  mRemoteServers = self->mRemoteServers;
  v9 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = *v28;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(mRemoteServers);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if (currentConnection == [v13 xpcConnection])
      {
        if (gLogScope)
        {
          v14 = *gLogScope;
          if (!*gLogScope)
          {
LABEL_16:
            begin = self->mPropertyListeners.__begin_;
            for (j = self->mPropertyListeners.__end_; begin != j; begin = (begin + 40))
            {
              v19 = *(begin + 1);
              if (v19 == [(AUPBClientManager *)self aupbRefFromHandle:v5]&& *(begin + 4) == changed)
              {
                v21 = *begin;
                if (v21 == [v13 ref])
                {
                  *buf = *begin;
                  *&buf[16] = *(begin + 1);
                  *&buf[32] = *(begin + 4);
                  global_queue = dispatch_get_global_queue(0, 0);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __53__AUPBClientManager_processingBlock_propertyChanged___block_invoke;
                  block[3] = &__block_descriptor_72_e5_v8__0l;
                  v24 = *buf;
                  v25 = *&buf[16];
                  v26 = *&buf[32];
                  dispatch_async(global_queue, block);
                }
              }
            }

            return;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [objc_msgSend(v13 "description")];
          v16 = [(AUPBClientManager *)self aupbRefFromHandle:v5];
          *buf = 136316162;
          *&buf[4] = "AUPBClientManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 322;
          *&buf[18] = 2080;
          *&buf[20] = v15;
          *&buf[28] = 2048;
          *&buf[30] = v16;
          *&buf[38] = 1024;
          changedCopy = changed;
          _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d PBProp Changed: %s, block=%p property=%d\n", buf, 0x2Cu);
        }

        goto LABEL_16;
      }
    }

    v10 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }
}

- (void)newServerAdded:(id)added
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(RemoteAUPBServer);
  -[RemoteAUPBServer setXpcConnection:](v5, "setXpcConnection:", [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:added]);
  -[NSXPCConnection setRemoteObjectInterface:](-[RemoteAUPBServer xpcConnection](v5, "xpcConnection"), "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034FCF0]);
  [(RemoteAUPBServer *)v5 setProxyInterface:[(NSXPCConnection *)[(RemoteAUPBServer *)v5 xpcConnection] remoteObjectProxy]];
  -[NSXPCConnection setExportedInterface:](-[RemoteAUPBServer xpcConnection](v5, "xpcConnection"), "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0353338]);
  [(NSXPCConnection *)[(RemoteAUPBServer *)v5 xpcConnection] setExportedObject:self];
  mServerRefCounter = self->mServerRefCounter;
  self->mServerRefCounter = mServerRefCounter + 1;
  [(RemoteAUPBServer *)v5 setRef:mServerRefCounter];
  if (gLogScope)
  {
    v7 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "AUPBClientManager.mm";
    v21 = 1024;
    v22 = 251;
    v23 = 2080;
    v24 = [-[RemoteAUPBServer description](v5 "description")];
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
  }

LABEL_7:
  objc_initWeak(buf, v5);
  objc_initWeak(&location, self);
  xpcConnection = [(RemoteAUPBServer *)v5 xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36__AUPBClientManager_newServerAdded___block_invoke;
  v15[3] = &unk_1E72C16C8;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(v17, buf);
  v17[1] = mServerRefCounter;
  [(NSXPCConnection *)xpcConnection setInvalidationHandler:v15];
  xpcConnection2 = [(RemoteAUPBServer *)v5 xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__AUPBClientManager_newServerAdded___block_invoke_127;
  v12[3] = &unk_1E72C16C8;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(v14, buf);
  v14[1] = mServerRefCounter;
  [(NSXPCConnection *)xpcConnection2 setInterruptionHandler:v12];
  mTouchServersQueue = self->mTouchServersQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__AUPBClientManager_newServerAdded___block_invoke_128;
  v11[3] = &unk_1E72C16F0;
  v11[4] = self;
  v11[5] = v5;
  v11[6] = mServerRefCounter;
  dispatch_async(mTouchServersQueue, v11);
  objc_destroyWeak(v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

id *__36__AUPBClientManager_newServerAdded___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = objc_loadWeak((a1 + 40));
  if (!result)
  {
    return result;
  }

  v4 = result;
  [result signalAllSemaphores];
  [v3[3] removeObject:v4];
  if (!gLogScope)
  {
    v5 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [objc_msgSend(v4 "description")];
      v7 = [v3[3] count];
      v14 = 136315906;
      v15 = "AUPBClientManager.mm";
      v16 = 1024;
      v17 = 261;
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Remote server %s invalidated, now have %lu servers\n", &v14, 0x26u);
    }

    goto LABEL_9;
  }

  v5 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = v3[4];
  v9 = v3[5];
  if (v8 != v9)
  {
    v10 = v8 + 32;
    do
    {
      v11 = v10 - 4;
      if (*(v10 - 4) == *(a1 + 48) && *(v10 - 3) == 0 && *(v10 - 4) == 1684628836)
      {
        (*(v10 - 1))(*v10);
      }

      v10 += 5;
    }

    while (v11 + 5 != v9);
  }

  return [v3 removePropertyListenersForServer:*(a1 + 48)];
}

id *__36__AUPBClientManager_newServerAdded___block_invoke_127(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = objc_loadWeak((a1 + 40));
  if (!result)
  {
    return result;
  }

  v4 = result;
  [result signalAllSemaphores];
  [v3[3] removeObject:v4];
  if (!gLogScope)
  {
    v5 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [objc_msgSend(v4 "description")];
      v7 = [v3[3] count];
      v14 = 136315906;
      v15 = "AUPBClientManager.mm";
      v16 = 1024;
      v17 = 277;
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Remote server %s interrupted, now have %lu servers\n", &v14, 0x26u);
    }

    goto LABEL_9;
  }

  v5 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = v3[4];
  v9 = v3[5];
  if (v8 != v9)
  {
    v10 = v8 + 32;
    do
    {
      v11 = v10 - 4;
      if (*(v10 - 4) == *(a1 + 48) && *(v10 - 3) == 0 && *(v10 - 4) == 1684628836)
      {
        (*(v10 - 1))(*v10);
      }

      v10 += 5;
    }

    while (v11 + 5 != v9);
  }

  return [v3 removePropertyListenersForServer:*(a1 + 48)];
}

void *__36__AUPBClientManager_newServerAdded___block_invoke_128(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];

  result = [objc_msgSend(*(a1 + 40) "xpcConnection")];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    result = v7(v6, *(a1 + 48));
  }

  return result;
}

- (void)handleRegistrarCrash
{
  v12 = *MEMORY[0x1E69E9840];
  mRegistrarConnection = self->mRegistrarConnection;
  if (mRegistrarConnection)
  {

    self->mRegistrarConnection = 0;
  }

  if (self->mConnectionAcknowledged)
  {
    if (gLogScope)
    {
      v4 = *gLogScope;
      if (!*gLogScope)
      {
LABEL_13:
        v6 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__AUPBClientManager_handleRegistrarCrash__block_invoke;
        block[3] = &unk_1E72C16A0;
        block[4] = self;
        dispatch_after(v6, MEMORY[0x1E69E96A0], block);
        return;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v9 = "AUPBClientManager.mm";
      v10 = 1024;
      v11 = 226;
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Delaying checking in with registrar a few seconds...\n", buf, 0x12u);
    }

    goto LABEL_13;
  }

  if (gLogScope)
  {
    v5 = *gLogScope;
    if (!*gLogScope)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "AUPBClientManager.mm";
    v10 = 1024;
    v11 = 233;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Not retrying since connection not acknowledged.  No Entitlement?", buf, 0x12u);
  }
}

- (void)startRegistarConnection
{
  self->mRegistrarConnection = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.internal.aupbregistrarservice"];
  -[NSXPCConnection setRemoteObjectInterface:](self->mRegistrarConnection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F03564B0]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3042000000;
  v9[3] = __Block_byref_object_copy__8724;
  v9[4] = __Block_byref_object_dispose__8725;
  objc_initWeak(&v10, self);
  mRegistrarConnection = self->mRegistrarConnection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AUPBClientManager_startRegistarConnection__block_invoke;
  v8[3] = &unk_1E72C2B68;
  v8[4] = v9;
  [(NSXPCConnection *)mRegistrarConnection setInterruptionHandler:v8];
  v4 = self->mRegistrarConnection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AUPBClientManager_startRegistarConnection__block_invoke_2;
  v7[3] = &unk_1E72C2B68;
  v7[4] = v9;
  [(NSXPCConnection *)v4 setInvalidationHandler:v7];
  -[NSXPCConnection setExportedInterface:](self->mRegistrarConnection, "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0353268]);
  [(NSXPCConnection *)self->mRegistrarConnection setExportedObject:self];
  [(NSXPCConnection *)self->mRegistrarConnection resume];
  v5 = [(NSXPCConnection *)self->mRegistrarConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_8726];
  self->mProxyInterface = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AUPBClientManager_startRegistarConnection__block_invoke_99;
  v6[3] = &unk_1E72C1678;
  v6[4] = self;
  [(AUPBRegistrarHosting *)v5 registerAsEndpointListenerWithReply:v6];
  if (self->mValidToken)
  {
    notify_set_state(self->mNotifyToken, 1uLL);
    notify_post("com.apple.audio.aupbregistrarneeded");
  }

  _Block_object_dispose(v9, 8);
  objc_destroyWeak(&v10);
}

uint64_t __44__AUPBClientManager_startRegistarConnection__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((*(*(a1 + 32) + 8) + 40));

  return [Weak handleRegistrarCrash];
}

uint64_t __44__AUPBClientManager_startRegistarConnection__block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((*(*(a1 + 32) + 8) + 40));

  return [Weak handleRegistrarCrash];
}

void __44__AUPBClientManager_startRegistarConnection__block_invoke_99(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [a2 code];
    v5 = 1;
    if (v4 && v4 != 3)
    {
      if (v4 != 1)
      {
        goto LABEL_7;
      }

      v5 = 0;
    }

    *(*(a1 + 32) + 101) = v5;
  }

LABEL_7:
  if (gLogScope)
  {
    v6 = *gLogScope;
    if (!*gLogScope)
    {
      return;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "AUPBClientManager.mm";
    v9 = 1024;
    v10 = 210;
    v11 = 2080;
    v12 = [objc_msgSend(a2 "description")];
    _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v7, 0x1Cu);
  }
}

void __44__AUPBClientManager_startRegistarConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (gLogScope)
  {
    v3 = *gLogScope;
    if (!*gLogScope)
    {
      return;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "AUPBClientManager.mm";
    v6 = 1024;
    v7 = 190;
    v8 = 2080;
    v9 = [objc_msgSend(a2 "description")];
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v4, 0x1Cu);
  }
}

- (AUPBClientManager)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AUPBClientManager;
  if ([(AUPBClientManager *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  if (self->mValidToken)
  {
    notify_cancel(self->mNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = AUPBClientManager;
  [(AUPBClientManager *)&v3 dealloc];
}

@end