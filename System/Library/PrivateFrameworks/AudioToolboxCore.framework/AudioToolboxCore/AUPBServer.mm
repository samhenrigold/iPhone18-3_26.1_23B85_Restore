@interface AUPBServer
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (AUPBServer)init;
- (AUProcessingBlock)aupbFromAUHandle:(unsigned int)handle;
- (AUProcessingBlock)aupbFromRef:(OpaqueAUPB *)ref;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (OpaqueAUPB)registerBlock:(const AUPBMethods *)block withUserData:(void *)data;
- (OpaqueRemoteAudioUnit)auRefFromHandle:(unsigned int)handle;
- (id).cxx_construct;
- (int)registerAU:(OpaqueRemoteAudioUnit *)u inBlock:(OpaqueAUPB *)block;
- (int)unregisterAU:(OpaqueRemoteAudioUnit *)u;
- (int)unregisterBlock:(OpaqueAUPB *)block;
- (unsigned)auHandleFromRef:(OpaqueRemoteAudioUnit *)ref;
- (void)checkConnectRegistrar;
- (void)copyProcessingBlock:(unsigned int)block property:(unsigned int)property intoReply:(id)reply;
- (void)dealloc;
- (void)getAudioUnit:(unsigned int)unit parameter:(unsigned int)parameter onScope:(unsigned int)scope element:(unsigned int)element inReply:(id)reply;
- (void)getAudioUnit:(unsigned int)unit property:(unsigned int)property onScope:(unsigned int)scope element:(unsigned int)element inReply:(id)reply;
- (void)getAudioUnit:(unsigned int)unit propertyInfo:(unsigned int)info onScope:(unsigned int)scope element:(unsigned int)element inReply:(id)reply;
- (void)handleRegistrarCrash;
- (void)processingBlock:(OpaqueAUPB *)block properties:(const unsigned int *)properties count:(unsigned int)count changedWithQualifierData:(void *)data length:(unsigned int)length;
- (void)processingBlockRef:(OpaqueAUPB *)ref propertyChanged:(unsigned int)changed;
- (void)setAudioUnit:(unsigned int)unit parameter:(unsigned int)parameter onScope:(unsigned int)scope element:(unsigned int)element value:(float)value withReply:(id)reply;
- (void)setAudioUnit:(unsigned int)unit property:(unsigned int)property onScope:(unsigned int)scope element:(unsigned int)element value:(id)value withReply:(id)reply;
- (void)setProcessingBlock:(unsigned int)block property:(unsigned int)property value:(id)value withReply:(id)reply;
- (void)startRegistrarConnection;
@end

@implementation AUPBServer

+ (id)sharedInstance
{
  objc_sync_enter(self);
  if (!sSharedInstance)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___AUPBServer;
    sSharedInstance = [objc_msgSendSuper2(&v4 allocWithZone_];
  }

  objc_sync_exit(self);
  return sSharedInstance;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  sharedInstance = [self sharedInstance];

  return sharedInstance;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  *(self + 11) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 9) = self + 80;
  *(self + 13) = 0;
  return self;
}

- (void)setAudioUnit:(unsigned int)unit parameter:(unsigned int)parameter onScope:(unsigned int)scope element:(unsigned int)element value:(float)value withReply:(id)reply
{
  v10 = *&element;
  v11 = *&scope;
  v12 = *&parameter;
  v13 = *&unit;
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v15 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v20 = 67109888;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v10;
    _os_log_debug_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "SetAUParam: Parameter=%u AU=0x%x scope=%u element=%u ", &v20, 0x1Au);
  }

  v16 = [(AUPBServer *)self aupbFromAUHandle:v13];
  if (v16)
  {
    v17 = [(AUPBServer *)self auRefFromHandle:v13];
    if (v17)
    {
      v18 = (v16->var0.var7)(v16->var1, v17, v12, v11, v10, value);
    }

    else
    {
      v18 = 1063351615;
    }
  }

  else
  {
    v18 = 1064329791;
  }

  v19 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v20 = 67109120;
    v21 = v18;
    _os_log_debug_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_DEBUG, "result=%d\n", &v20, 8u);
  }

  (*(reply + 2))(reply, v18);
  os_unfair_recursive_lock_unlock();
}

- (void)getAudioUnit:(unsigned int)unit parameter:(unsigned int)parameter onScope:(unsigned int)scope element:(unsigned int)element inReply:(id)reply
{
  v8 = *&element;
  v9 = *&scope;
  v10 = *&parameter;
  v11 = *&unit;
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v13 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v8;
    _os_log_debug_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "GetAUParam: Parameter=%u AU=0x%x scope=%u element=%u ", buf, 0x1Au);
  }

  v18 = 0.0;
  v14 = [(AUPBServer *)self aupbFromAUHandle:v11];
  if (v14)
  {
    v15 = [(AUPBServer *)self auRefFromHandle:v11];
    if (v15)
    {
      v16 = (v14->var0.var6)(v14->var1, v15, v10, v9, v8, &v18);
    }

    else
    {
      v16 = 1063351615;
    }
  }

  else
  {
    v16 = 1064329791;
  }

  v17 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v16;
    _os_log_debug_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEBUG, "result=%d\n", buf, 8u);
  }

  (*(reply + 2))(reply, v16, v18);
  os_unfair_recursive_lock_unlock();
}

- (void)setAudioUnit:(unsigned int)unit property:(unsigned int)property onScope:(unsigned int)scope element:(unsigned int)element value:(id)value withReply:(id)reply
{
  v13 = *&unit;
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v15 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    *&buf[4] = property;
    v19 = 1024;
    v20 = v13;
    v21 = 1024;
    scopeCopy = scope;
    v23 = 1024;
    elementCopy = element;
    _os_log_debug_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "SetAUProp: Property=%d AU=0x%x scope=%u element=%u ", buf, 0x1Au);
  }

  if ([(AUPBServer *)self aupbFromAUHandle:v13])
  {
    if ([(AUPBServer *)self auRefFromHandle:v13])
    {
      PropertyMarshaller::PropertyMarshaller(buf, [value bytes], objc_msgSend(value, "length"));
    }

    v16 = 1063351615;
  }

  else
  {
    v16 = 1064329791;
  }

  v17 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_debug_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEBUG, "result=%d\n", buf, 8u);
  }

  (*(reply + 2))(reply, v16);
  os_unfair_recursive_lock_unlock();
}

- (void)getAudioUnit:(unsigned int)unit property:(unsigned int)property onScope:(unsigned int)scope element:(unsigned int)element inReply:(id)reply
{
  v8 = *&element;
  v9 = *&scope;
  v10 = *&property;
  v11 = *&unit;
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v13 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    *&buf[4] = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27[0] = v8;
    _os_log_debug_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "GetAUProp: Property=%d AU=0x%x scope=%u element=%u ", buf, 0x1Au);
  }

  v14 = [(AUPBServer *)self aupbFromAUHandle:v11];
  if (v14)
  {
    v15 = [(AUPBServer *)self auRefFromHandle:v11];
    if (v15)
    {
      v20 = 0;
      v19 = 0;
      v16 = (v14->var0.var3)(v14->var1, v15, v10, v9, v8, &v19, &v20);
      if (!v16 && v19)
      {
        std::vector<unsigned char>::vector[abi:ne200100](__p, v19);
        v16 = (v14->var0.var4)(v14->var1, v15, v10, v9, v8, __p[0], &v19);
        if (!v16)
        {
          PropertyMarshaller::PropertyMarshaller(buf, 0, 0);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v16 = 1063351615;
    }
  }

  else
  {
    v16 = 1064329791;
  }

  v17 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_debug_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_DEBUG, "result=%d\n", buf, 8u);
  }

  (*(reply + 2))(reply, v16, 0);
  os_unfair_recursive_lock_unlock();
}

- (void)getAudioUnit:(unsigned int)unit propertyInfo:(unsigned int)info onScope:(unsigned int)scope element:(unsigned int)element inReply:(id)reply
{
  v8 = *&element;
  v9 = *&scope;
  v10 = *&info;
  v11 = *&unit;
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v13 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v8;
    _os_log_debug_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "GetAUPropInfo: Property=%d AU=0x%x scope=%u element=%u ", buf, 0x1Au);
  }

  v21 = 0;
  v20 = 0;
  v14 = [(AUPBServer *)self aupbFromAUHandle:v11];
  if (v14)
  {
    v15 = [(AUPBServer *)self auRefFromHandle:v11];
    if (v15)
    {
      v16 = (v14->var0.var3)(v14->var1, v15, v10, v9, v8, &v20, &v21);
      v17 = v20;
      v18 = v21;
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v16 = 1063351615;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 1064329791;
  }

  v19 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v23 = v16;
    v24 = 1024;
    v25 = v17;
    v26 = 1024;
    v27 = v18;
    _os_log_debug_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_DEBUG, "result=%d, size=%d, writable=%d\n", buf, 0x14u);
    v17 = v20;
    v18 = v21;
  }

  (*(reply + 2))(reply, v16, v17, v18);
  os_unfair_recursive_lock_unlock();
}

- (void)setProcessingBlock:(unsigned int)block property:(unsigned int)property value:(id)value withReply:(id)reply
{
  v8 = *&property;
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  blockCopy = block;
  v12 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v21 = 67109376;
    v22 = v8;
    v23 = 2048;
    blockCopy2 = block;
    _os_log_debug_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "SetPBProp: Property=%d block=0x%p", &v21, 0x12u);
  }

  v13 = CFPropertyListCreateWithData(0, value, 0, 0, 0);
  v14 = v13;
  if (v13)
  {
    if (!block && v8 == 1952805748)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v14))
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      v17 = CFGetTypeID(v14);
      if (v17 == CFNumberGetTypeID())
      {
        v21 = 0;
        CFNumberGetValue(v14, kCFNumberSInt32Type, &v21);
        if (v21)
        {
LABEL_8:
          if (!self->mTestBlock.__ptr_)
          {
            operator new();
          }

          goto LABEL_15;
        }

LABEL_13:
        ptr = self->mTestBlock.__ptr_;
        self->mTestBlock.__ptr_ = 0;
        if (ptr)
        {
          (*(*ptr + 8))(ptr);
        }
      }
    }

LABEL_15:
    v19 = [(AUPBServer *)self aupbFromRef:blockCopy];
    if (v19)
    {
      v16 = (v19->var0.var2)(v19->var1, v8, v14);
    }

    else
    {
      v16 = 1064329791;
    }

    CFRelease(v14);
    goto LABEL_19;
  }

  v16 = 1886806380;
LABEL_19:
  v20 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v21 = 67109120;
    v22 = v16;
    _os_log_debug_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_DEBUG, "result=%d\n", &v21, 8u);
  }

  (*(reply + 2))(reply, v16);
  os_unfair_recursive_lock_unlock();
}

- (void)copyProcessingBlock:(unsigned int)block property:(unsigned int)property intoReply:(id)reply
{
  v5 = *&property;
  v52[5] = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v8 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    buffer[0].componentType = 67109376;
    buffer[0].componentSubType = v5;
    LOWORD(buffer[0].componentManufacturer) = 2048;
    *(&buffer[0].componentManufacturer + 2) = block;
    _os_log_debug_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "CopyPBProp: Property=%d block=%p\n", buffer, 0x12u);
  }

  theData = 0;
  if (block)
  {
    v9 = [(AUPBServer *)self aupbFromRef:block];
    if (!v9)
    {
      Data = 0;
      Code = 1064329791;
      goto LABEL_66;
    }

    Code = (v9->var0.var1)(v9->var1, v5, &theData);
    v11 = theData;
    if (Code)
    {
      v12 = 1;
    }

    else
    {
      v12 = theData == 0;
    }

    if (v12)
    {
      Data = 0;
      goto LABEL_66;
    }

    if (v5 == 1635087726)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      if (Length >= 0x18)
      {
        v30 = Length / 0x18;
        v31 = BytePtr + 16;
        *&v17 = 134217984;
        v41 = v17;
        do
        {
          if ([(AUPBServer *)self auHandleFromRef:*v31, v41])
          {
            *&buffer[0].componentType = *(v31 - 2);
            buffer[0].componentManufacturer = *(v31 - 2);
            operator new();
          }

          v32 = gAUPBServerLogCategory;
          if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
          {
            v33 = *v31;
            buffer[0].componentType = v41;
            *&buffer[0].componentSubType = v33;
            _os_log_error_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, "#### Could not map from AU ref to handle - serious bug. AU = %p\n", buffer, 0xCu);
          }

          v31 += 3;
          --v30;
        }

        while (v30);
      }

      CFRelease(theData);
      v11 = CFDataCreate(0, 0, 0);
      theData = v11;
    }

    *&error.componentType = 0;
    Data = CFPropertyListCreateData(0, v11, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    v34 = *&error.componentType;
    if (*&error.componentType)
    {
      v35 = gAUPBServerLogCategory;
      if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
      {
        buffer[0].componentType = 138412290;
        *&buffer[0].componentSubType = v34;
        _os_log_error_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%@", buffer, 0xCu);
        v34 = *&error.componentType;
      }

      CFRelease(v34);
    }

    CFRelease(theData);
    goto LABEL_65;
  }

  Data = 0;
  Code = 1064333936;
  if (v5 <= 1886282092)
  {
    if (v5 == 1635148149)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = 0;
      buffer[0].componentFlagsMask = 0;
      *&buffer[0].componentType = *"xfua";
      while (1)
      {
        Next = AudioComponentFindNext(v24, buffer);
        v24 = Next;
        if (!Next)
        {
          break;
        }

        Impl_AudioGetComponentInfo(Next, &error, 0);
        cf[0] = 0;
        Impl_AudioGetComponentInfo(v24, 0, cf);
        v26 = (**v24)(v24);
        if (v26)
        {
          v27 = *((**v26)(v26) + 56);
        }

        else
        {
          v27 = 0;
        }

        v51[0] = @"type";
        v52[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:error.componentType];
        v51[1] = @"subtype";
        v52[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:error.componentSubType];
        v51[2] = @"manufacturer";
        v52[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:error.componentManufacturer];
        v52[3] = cf[0];
        v51[3] = @"name";
        v51[4] = @"version";
        v52[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
        [v23 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v52, v51, 5)}];
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      Data = [v23 copy];
    }

    else
    {
      if (v5 != 1651272556)
      {
        goto LABEL_66;
      }

      Data = CFDataCreateMutable(0, 0);
      begin_node = self->mBlockHandlesToMethods.__tree_.__begin_node_;
      if (begin_node != &self->mBlockHandlesToMethods.__tree_.__end_node_)
      {
        do
        {
          CFDataAppendBytes(Data, &begin_node[4], 4);
          left = begin_node[1].__left_;
          if (left)
          {
            do
            {
              v20 = left;
              left = left->super.isa;
            }

            while (left);
          }

          else
          {
            do
            {
              v20 = begin_node[2].__left_;
              v12 = v20->super.isa == begin_node;
              begin_node = v20;
            }

            while (!v12);
          }

          begin_node = v20;
        }

        while (v20 != &self->mBlockHandlesToMethods.__tree_.__end_node_);
      }
    }
  }

  else
  {
    if (v5 != 1886282093)
    {
      if (v5 == 1920299877)
      {
        v22 = getpid();
        if (proc_pid_rusage(v22, 6, buffer))
        {
          Code = *__error();
LABEL_37:
          Data = theData;
          if (!theData)
          {
            goto LABEL_66;
          }

          goto LABEL_48;
        }

        v46 = 17;
        strcpy(&error, "ri_phys_footprint");
        v47 = CFStringCreateWithBytes(0, &error, 17, 0x8000100u, 0);
        if (!v47)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        if (v46 < 0)
        {
          operator delete(*&error.componentType);
        }

        *&error.componentType = v50;
        v48 = CFNumberCreate(0, kCFNumberLongLongType, &error);
        if (!v48)
        {
          v40 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v40, "Could not construct");
        }

        cf[0] = &v47;
        cf[1] = 1;
        theData = applesauce::CF::details::make_CFDictionaryRef(cf);
        if (v48)
        {
          CFRelease(v48);
        }

        if (v47)
        {
          CFRelease(v47);
        }
      }

      else
      {
        if (v5 != 1952805748)
        {
          goto LABEL_66;
        }

        if (self->mTestBlock.__ptr_)
        {
          v14 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v14 = MEMORY[0x1E695E4C0];
        }

        theData = *v14;
        CFRetain(theData);
      }

      Code = 4294967246;
      goto LABEL_37;
    }

    v21 = getprogname();
    Data = CFStringCreateWithCString(0, v21, 0x8000100u);
  }

  theData = Data;
  Code = 4294967246;
  if (!Data)
  {
    goto LABEL_66;
  }

LABEL_48:
  *&error.componentType = 0;
  Data = CFPropertyListCreateData(0, Data, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (!*&error.componentType)
  {
    CFRelease(theData);
LABEL_65:
    Code = 0;
    goto LABEL_66;
  }

  Code = CFErrorGetCode(*&error.componentType);
  v28 = CFErrorCopyDescription(*&error.componentType);
  v29 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
  {
    uTF8String = [(__CFString *)v28 UTF8String];
    buffer[0].componentType = 136315394;
    *&buffer[0].componentSubType = uTF8String;
    LOWORD(buffer[0].componentFlags) = 1024;
    *(&buffer[0].componentFlags + 2) = Code;
    _os_log_error_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, "Error serializing property list to send: %s (err=%d)\n", buffer, 0x12u);
  }

  CFRelease(*&error.componentType);

LABEL_66:
  v36 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    if (Data)
    {
      v37 = CFDataGetLength(Data);
    }

    else
    {
      v37 = 0;
    }

    buffer[0].componentType = 67109376;
    buffer[0].componentSubType = Code;
    LOWORD(buffer[0].componentManufacturer) = 2048;
    *(&buffer[0].componentManufacturer + 2) = v37;
    _os_log_debug_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_DEBUG, "result=%d len=%ld\n", buffer, 0x12u);
  }

  (*(reply + 2))(reply, Code, Data);
  if (Data)
  {
    CFRelease(Data);
  }

  os_unfair_recursive_lock_unlock();
}

- (AUProcessingBlock)aupbFromRef:(OpaqueAUPB *)ref
{
  v4 = [(AUPBServer *)self handleFromAUPBRef:ref];
  left = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  p_end_node = &self->mBlockHandlesToMethods.__tree_.__end_node_;
  v5 = left;
  if (!left)
  {
    return 0;
  }

  v8 = p_end_node;
  do
  {
    v9 = v5[4].__left_;
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v5;
    }

    v5 = v5[v11].__left_;
  }

  while (v5);
  if (v8 == p_end_node)
  {
    return 0;
  }

  v12 = v8[4].__left_;
  v13 = &v8[5];
  if (v4 >= v12)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

- (unsigned)auHandleFromRef:(OpaqueRemoteAudioUnit *)ref
{
  begin_node = self->mAUHandlesToInfo.__tree_.__begin_node_;
  if (begin_node == &self->mAUHandlesToInfo.__tree_.__end_node_)
  {
    return 0;
  }

  while (begin_node[6].__left_ != ref)
  {
    left = begin_node[1].__left_;
    if (left)
    {
      do
      {
        v5 = left;
        left = left->super.isa;
      }

      while (left);
    }

    else
    {
      do
      {
        v5 = begin_node[2].__left_;
        v6 = v5->super.isa == begin_node;
        begin_node = v5;
      }

      while (!v6);
    }

    begin_node = v5;
    if (v5 == &self->mAUHandlesToInfo.__tree_.__end_node_)
    {
      return 0;
    }
  }

  return begin_node[4].__left_;
}

- (OpaqueRemoteAudioUnit)auRefFromHandle:(unsigned int)handle
{
  left = self->mAUHandlesToInfo.__tree_.__end_node_.__left_;
  p_end_node = &self->mAUHandlesToInfo.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return 0;
  }

  v6 = p_end_node;
  do
  {
    v7 = v4[4].__left_;
    v8 = v7 >= handle;
    v9 = v7 < handle;
    if (v8)
    {
      v6 = v4;
    }

    v4 = v4[v9].__left_;
  }

  while (v4);
  if (v6 != p_end_node && LODWORD(v6[4].__left_) <= handle)
  {
    return v6[6].__left_;
  }

  else
  {
    return 0;
  }
}

- (AUProcessingBlock)aupbFromAUHandle:(unsigned int)handle
{
  left = self->mAUHandlesToInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->mAUHandlesToInfo.__tree_.__end_node_;
  do
  {
    v5 = left[4].__left_;
    v6 = v5 >= handle;
    v7 = v5 < handle;
    if (v6)
    {
      p_end_node = left;
    }

    left = left[v7].__left_;
  }

  while (left);
  if (p_end_node == &self->mAUHandlesToInfo.__tree_.__end_node_)
  {
    return 0;
  }

  if (LODWORD(p_end_node[4].__left_) > handle)
  {
    return 0;
  }

  v10 = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  v8 = &self->mBlockHandlesToMethods.__tree_.__end_node_;
  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = p_end_node[5].__left_;
  v12 = v8;
  do
  {
    v13 = v9[4].__left_;
    v6 = v13 >= v11;
    v14 = v13 < v11;
    if (v6)
    {
      v12 = v9;
    }

    v9 = v9[v14].__left_;
  }

  while (v9);
  if (v12 == v8)
  {
    return 0;
  }

  v15 = v12[4].__left_;
  v16 = &v12[5];
  if (v11 >= v15)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

- (void)processingBlock:(OpaqueAUPB *)block properties:(const unsigned int *)properties count:(unsigned int)count changedWithQualifierData:(void *)data length:(unsigned int)length
{
  dataCopy = data;
  v38 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v12 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      blockCopy = block;
      v36 = 1024;
      countCopy = count;
      _os_log_debug_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "PBPropsChanged: Block=%p #props=%u\n", buf, 0x12u);
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (count)
    {
      countCopy2 = count;
      do
      {
        v15 = *properties++;
        [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v15, dataCopy)}];
        --countCopy2;
      }

      while (countCopy2);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->mClientConnections;
    dataCopy = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16, dataCopy];
    if (dataCopy)
    {
      v17 = dataCopy;
      v18 = *v30;
      if (v27)
      {
        v19 = length == 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = !v19;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = [(AUPBServer *)self handleFromAUPBRef:block];
          proxyInterface = [v22 proxyInterface];
          if (v20)
          {
            v25 = [MEMORY[0x1E695DEF0] dataWithBytes:v27 length:length];
          }

          else
          {
            v25 = 0;
          }

          [proxyInterface processingBlock:v23 propertiesChanged:v13 withQualifierData:v25];
        }

        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }
  }
}

- (void)processingBlockRef:(OpaqueAUPB *)ref propertyChanged:(unsigned int)changed
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v4 = *&changed;
    v7 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      refCopy = ref;
      v20 = 1024;
      v21 = v4;
      _os_log_debug_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "PBPropChange: Block=%p property=%d\n", buf, 0x12u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    mClientConnections = self->mClientConnections;
    v9 = [(NSMutableArray *)mClientConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(mClientConnections);
          }

          [objc_msgSend(*(*(&v13 + 1) + 8 * i) "proxyInterface")];
        }

        v10 = [(NSMutableArray *)mClientConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (int)unregisterAU:(OpaqueRemoteAudioUnit *)u
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  begin_node = self->mAUHandlesToInfo.__tree_.__begin_node_;
  p_mAUHandlesToInfo = &self->mAUHandlesToInfo;
  v6 = begin_node;
  if (begin_node != p_mAUHandlesToInfo + 1)
  {
    while (v6[6] != u)
    {
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == p_mAUHandlesToInfo + 1)
      {
        goto LABEL_13;
      }
    }

    v11 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(v6 + 8);
      v14 = 134218240;
      uCopy = u;
      v16 = 1024;
      v17 = v13;
      _os_log_debug_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEBUG, "Unregistered AU %p, handle 0x%x\n", &v14, 0x12u);
    }

    std::__tree<std::__value_type<unsigned int,RemoteAUHandleInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RemoteAUHandleInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RemoteAUHandleInfo>>>::__remove_node_pointer(p_mAUHandlesToInfo, v6);
    operator delete(v6);
  }

LABEL_13:
  os_unfair_recursive_lock_unlock();
  return 0;
}

- (int)registerAU:(OpaqueRemoteAudioUnit *)u inBlock:(OpaqueAUPB *)block
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v7 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218496;
    uCopy = u;
    v23 = 1024;
    uCopy2 = u;
    v25 = 2048;
    blockCopy = block;
    _os_log_debug_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "Registered AU %p -> handle 0x%x in block %p\n", &v21, 0x1Cu);
  }

  p_end_node = &self->mAUHandlesToInfo.__tree_.__end_node_;
  left = self->mAUHandlesToInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_11;
  }

  v10 = &self->mAUHandlesToInfo.__tree_.__end_node_;
  do
  {
    v11 = left[4].__left_;
    v12 = v11 >= u;
    v13 = v11 < u;
    if (v12)
    {
      v10 = left;
    }

    left = left[v13].__left_;
  }

  while (left);
  if (v10 != p_end_node && LODWORD(v10[4].__left_) <= u)
  {
    v18 = 1886806380;
    v19 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      LODWORD(uCopy) = u;
      _os_log_error_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "### AU Handle 0x%x is already in handles to info map\n", &v21, 8u);
    }
  }

  else
  {
LABEL_11:
    v14 = [(AUPBServer *)self handleFromAUPBRef:block];
    v15 = p_end_node->__left_;
    if (!p_end_node->__left_)
    {
LABEL_17:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = v15[8];
        if (v17 <= u)
        {
          break;
        }

        v15 = *v16;
        if (!*v16)
        {
          goto LABEL_17;
        }
      }

      if (v17 >= u)
      {
        break;
      }

      v15 = *(v16 + 1);
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    v18 = 0;
    v16[10] = v14;
    *(v16 + 6) = u;
  }

  os_unfair_recursive_lock_unlock();
  return v18;
}

- (int)unregisterBlock:(OpaqueAUPB *)block
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(AUPBServer *)self handleFromAUPBRef:block];
  left = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->mBlockHandlesToMethods.__tree_.__end_node_;
  do
  {
    v8 = left[4].__left_;
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      p_end_node = left;
    }

    left = left[v10].__left_;
  }

  while (left);
  if (p_end_node != &self->mBlockHandlesToMethods.__tree_.__end_node_ && v5 >= LODWORD(p_end_node[4].__left_))
  {
    begin_node = self->mAUHandlesToInfo.__tree_.__begin_node_;
    if (begin_node != &self->mAUHandlesToInfo.__tree_.__end_node_)
    {
      do
      {
        if (LODWORD(begin_node[5].__left_) == LODWORD(p_end_node[4].__left_))
        {
          v14 = std::__tree<std::__value_type<unsigned int,RemoteAUHandleInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RemoteAUHandleInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RemoteAUHandleInfo>>>::__remove_node_pointer(&self->mAUHandlesToInfo, begin_node);
          operator delete(begin_node);
        }

        else
        {
          isa = begin_node[1].__left_;
          if (isa)
          {
            do
            {
              v14 = isa;
              isa = isa->super.isa;
            }

            while (isa);
          }

          else
          {
            do
            {
              v14 = begin_node[2].__left_;
              v16 = v14->super.isa == begin_node;
              begin_node = v14;
            }

            while (!v16);
          }
        }

        begin_node = v14;
      }

      while (v14 != &self->mAUHandlesToInfo.__tree_.__end_node_);
    }

    v17 = p_end_node[1].__left_;
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = v17->__left_;
      }

      while (v17);
    }

    else
    {
      v19 = p_end_node;
      do
      {
        v18 = v19[2].__left_;
        v16 = *v18 == v19;
        v19 = v18;
      }

      while (!v16);
    }

    if (self->mBlockHandlesToMethods.__tree_.__begin_node_ == p_end_node)
    {
      self->mBlockHandlesToMethods.__tree_.__begin_node_ = v18;
    }

    v20 = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
    --self->mBlockHandlesToMethods.__tree_.__size_;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, p_end_node);
    operator delete(p_end_node);
    v21 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      v22 = 134217984;
      blockCopy = block;
      _os_log_debug_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_DEBUG, "Unregistered blockRef %p\n", &v22, 0xCu);
    }

    [(AUPBServer *)self blockListChanged];
    v11 = 0;
  }

  else
  {
LABEL_9:
    v11 = -50;
  }

  os_unfair_recursive_lock_unlock();
  return v11;
}

- (OpaqueAUPB)registerBlock:(const AUPBMethods *)block withUserData:(void *)data
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  mAUPBRefCounter = self->mAUPBRefCounter;
  self->mAUPBRefCounter = mAUPBRefCounter + 1;
  v8 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 67109376;
    *&v18[4] = mAUPBRefCounter;
    *&v18[8] = 2048;
    *&v18[10] = data;
    _os_log_debug_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "blockRef 0x%x assigned, userData: %p\n", v18, 0x12u);
  }

  v9 = *&block->var2;
  *v18 = *&block->var0;
  *&v18[16] = v9;
  v10 = *&block->var6;
  v19 = *&block->var4;
  v20 = v10;
  left = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = left;
      v13 = left[8];
      if (mAUPBRefCounter >= v13)
      {
        break;
      }

      left = *v12;
      if (!*v12)
      {
        goto LABEL_9;
      }
    }

    if (v13 >= mAUPBRefCounter)
    {
      break;
    }

    left = *(v12 + 1);
    if (!left)
    {
      goto LABEL_9;
    }
  }

  v15 = v19;
  v14 = v20;
  v16 = *&v18[16];
  *(v12 + 10) = *v18;
  *(v12 + 14) = v16;
  *(v12 + 18) = v15;
  *(v12 + 22) = v14;
  *(v12 + 13) = data;
  [(AUPBServer *)self blockListChanged:*v18];
  os_unfair_recursive_lock_unlock();
  return mAUPBRefCounter;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(connection valueForEntitlement:{@"com.apple.private.coreaudio.rpbclient", "BOOLValue"}];
  v7 = gAUPBServerLogCategory;
  if (v6)
  {
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = connection;
      _os_log_debug_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "New client connected (xpcCon=%p)\n", &buf, 0xCu);
    }

    v8 = objc_alloc_init(AUPBClientConnection);
    [(AUPBClientConnection *)v8 setXpcconnection:connection];
    -[NSXPCConnection setExportedInterface:](-[AUPBClientConnection xpcconnection](v8, "xpcconnection"), "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034FCF0]);
    [(NSXPCConnection *)[(AUPBClientConnection *)v8 xpcconnection] setExportedObject:self];
    -[NSXPCConnection setRemoteObjectInterface:](-[AUPBClientConnection xpcconnection](v8, "xpcconnection"), "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0353338]);
    [(AUPBClientConnection *)v8 setProxyInterface:[(NSXPCConnection *)[(AUPBClientConnection *)v8 xpcconnection] remoteObjectProxy]];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__2735;
    v17 = __Block_byref_object_dispose__2736;
    v18 = v8;
    xpcconnection = [(AUPBClientConnection *)v8 xpcconnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke;
    v13[3] = &unk_1E72BAB58;
    v13[4] = connection;
    v13[5] = self;
    v13[6] = &buf;
    [(NSXPCConnection *)xpcconnection setInterruptionHandler:v13];
    xpcconnection2 = [(AUPBClientConnection *)v8 xpcconnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke_64;
    v12[3] = &unk_1E72BAB58;
    v12[4] = connection;
    v12[5] = self;
    v12[6] = &buf;
    [(NSXPCConnection *)xpcconnection2 setInvalidationHandler:v12];
    [(NSMutableArray *)self->mClientConnections addObject:v8];

    [(NSXPCConnection *)[(AUPBClientConnection *)v8 xpcconnection] resume];
    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = [connection description];
    _os_log_error_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "Refusing connection without entitlement: %@", &buf, 0xCu);
  }

  return v6;
}

void *__49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[4];
    v5 = 134217984;
    v6 = v4;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "Client connection (xpcCon=%p) interrupted\n", &v5, 0xCu);
  }

  result = [*(a1[5] + 32) containsObject:*(*(a1[6] + 8) + 40)];
  if (result)
  {
    return [*(a1[5] + 32) removeObject:*(*(a1[6] + 8) + 40)];
  }

  return result;
}

void *__49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke_64(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[4];
    v5 = 134217984;
    v6 = v4;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "Client connection (xpcCon=%p) invalidated\n", &v5, 0xCu);
  }

  result = [*(a1[5] + 32) containsObject:*(*(a1[6] + 8) + 40)];
  if (result)
  {
    return [*(a1[5] + 32) removeObject:*(*(a1[6] + 8) + 40)];
  }

  return result;
}

- (void)handleRegistrarCrash
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "Registrar crashed - cancelling client connections\n", buf, 2u);
  }

  self->mRegistrarConnection = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mClientConnections = self->mClientConnections;
  v5 = [(NSMutableArray *)mClientConnections countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mClientConnections);
        }

        [objc_msgSend(*(*(&v12 + 1) + 8 * i) "xpcconnection")];
      }

      v6 = [(NSMutableArray *)mClientConnections countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->mClientConnections removeAllObjects];
  if (self->mConnectionAcknowledged)
  {
    v9 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "CheckconnectRegistrar after 2 sec:\n", buf, 2u);
    }

    v10 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__AUPBServer_handleRegistrarCrash__block_invoke;
    block[3] = &unk_1E72C16A0;
    block[4] = self;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }
}

- (void)startRegistrarConnection
{
  v3 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "Starting registrar connection\n", buf, 2u);
  }

  self->mRegistrarConnection = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.internal.aupbregistrarservice"];
  -[NSXPCConnection setRemoteObjectInterface:](self->mRegistrarConnection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F03564B0]);
  *buf = 0;
  v12 = buf;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__2735;
  v15 = __Block_byref_object_dispose__2736;
  selfCopy = self;
  mRegistrarConnection = self->mRegistrarConnection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AUPBServer_startRegistrarConnection__block_invoke;
  v10[3] = &unk_1E72C2B68;
  v10[4] = buf;
  [(NSXPCConnection *)mRegistrarConnection setInterruptionHandler:v10];
  v5 = self->mRegistrarConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__AUPBServer_startRegistrarConnection__block_invoke_2;
  v9[3] = &unk_1E72C2B68;
  v9[4] = buf;
  [(NSXPCConnection *)v5 setInvalidationHandler:v9];
  [(NSXPCConnection *)self->mRegistrarConnection resume];
  v6 = [(NSXPCConnection *)self->mRegistrarConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2747];
  self->mProxyInterface = v6;
  endpoint = [(NSXPCListener *)self->mListener endpoint];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AUPBServer_startRegistrarConnection__block_invoke_33;
  v8[3] = &unk_1E72C1678;
  v8[4] = self;
  [(AUPBRegistrarHosting *)v6 setListenerEndpoint:endpoint withReply:v8];
  _Block_object_dispose(buf, 8);
}

void __38__AUPBServer_startRegistrarConnection__block_invoke_33(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_7;
  }

  v4 = [a2 code];
  v5 = 1;
  if (v4 && v4 != 4)
  {
    if (v4 != 2)
    {
      goto LABEL_7;
    }

    v5 = 0;
  }

  *(*(a1 + 32) + 121) = v5;
LABEL_7:
  v6 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[AUPBServer startRegistrarConnection]_block_invoke";
    v9 = 2080;
    v10 = [objc_msgSend(a2 "description")];
    _os_log_debug_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%s %s", &v7, 0x16u);
  }
}

void __38__AUPBServer_startRegistrarConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = [objc_msgSend(a2 "description")];
    _os_log_error_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%s", &v4, 0xCu);
  }
}

- (void)checkConnectRegistrar
{
  if (self->mValidToken)
  {
    state64[3] = v2;
    state64[4] = v3;
    state64[0] = 0;
    state = notify_get_state(self->mNotifyToken, state64);
    if (state64[0])
    {
      v6 = state == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && !self->mRegistrarConnection)
    {
      [(AUPBServer *)self startRegistrarConnection];
    }
  }
}

- (AUPBServer)init
{
  v6.receiver = self;
  v6.super_class = AUPBServer;
  v2 = [(AUPBServer *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.coreaudio", "aupbs");
    gAUPBServerLogCategory = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "Starting\n", buf, 2u);
    }

    v2->mAUPBRefCounter = 1;
    v2->mAUHandleCntr = 1;
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
  v3.super_class = AUPBServer;
  [(AUPBServer *)&v3 dealloc];
}

@end