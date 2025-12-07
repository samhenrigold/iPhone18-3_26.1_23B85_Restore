@interface SAFrame
+ (SAFrame)frameWithPAStyleSerializedFrame:(uint64_t)frame;
+ (id)addStack:(uint64_t)stack backtraceStyle:(uint64_t)style toSetOfRootFrames:;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (uint64_t)fixupLoadInfosInFrameTree:(uint64_t)tree binaryLoadInfos:(uint64_t)infos libraryCache:(uint64_t)cache uuidsWithNewInstructions:;
+ (void)enumerateFrameTree:(uint64_t)tree block:;
+ (void)releaseFrameTree:(uint64_t)tree;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFakeFrame;
- (BOOL)isSymbolicationOffByOne;
- (NSString)debugDescription;
- (SAInstruction)instruction;
- (id)copyWithNewParent:(id)parent;
- (id)initCopyingFrame:(id)frame withParent:(id)parent;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)_addChildFrame:(id *)location;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedFrame:(void *)frame andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
- (void)reset;
- (void)setChildFrameOrFrames:(uint64_t)frames;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAFrame

- (void)reset
{
  self->_BOOLs.bits = 0;
  self->_address = 0;
  self->_parentFrame = 0;
  objc_storeWeak(&self->_binaryLoadInfo, 0);
  childFrameOrFrames = self->_childFrameOrFrames;
  self->_childFrameOrFrames = 0;
}

- (SAInstruction)instruction
{
  WeakRetained = objc_loadWeakRetained(&self->_binaryLoadInfo);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_binaryLoadInfo);
    address = self->_address;
    v6 = address - [(SAFrame *)self isSymbolicationOffByOne];
    v7 = objc_loadWeakRetained(&self->_binaryLoadInfo);
    WeakRetained = [v4 instructionAtOffsetIntoLoadInfo:{v6 - objc_msgSend(v7, "loadAddress")}];

    if (!WeakRetained)
    {
      objc_storeWeak(&self->_binaryLoadInfo, 0);
    }
  }

  return WeakRetained;
}

- (BOOL)isSymbolicationOffByOne
{
  if ((self->_BOOLs.bits & 1) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_binaryLoadInfo);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_binaryLoadInfo);
    v5 = [v4 loadAddress] != self->_address;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isFakeFrame
{
  if ([(SAFrame *)self isTruncatedBacktraceFrame])
  {
    return 1;
  }

  return [(SAFrame *)self isLeafyCallstackIsInAnotherCallTreeFrame];
}

- (id)initCopyingFrame:(id)frame withParent:(id)parent
{
  v10.receiver = self;
  v10.super_class = SAFrame;
  v6 = [(SAFrame *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_address = *(frame + 2);
    v6->_parentFrame = parent;
    WeakRetained = objc_loadWeakRetained(frame + 3);
    objc_storeWeak(&v7->_binaryLoadInfo, WeakRetained);

    v7->_BOOLs.bits = *(frame + 8);
  }

  return v7;
}

- (id)copyWithNewParent:(id)parent
{
  v5 = objc_alloc(objc_opt_class());

  return [v5 initCopyingFrame:self withParent:parent];
}

- (BOOL)isEqual:(id)equal
{
  if (self)
  {
    LOBYTE(self) = self->_BOOLs.bits == *(equal + 8) && self->_address == *(equal + 2);
  }

  return self;
}

- (void)_addChildFrame:(id *)location
{
  v15 = *MEMORY[0x1E69E9840];
  if (location && obj)
  {
    v3 = location + 5;
    if (location[5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = *v3;

        [v4 addObject:obj];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = *__error();
          v9 = _sa_logt();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            ClassName = object_getClassName(*v3);
            *buf = 136315138;
            v14 = ClassName;
            _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
          }

          *__error() = v8;
          v11 = object_getClassName(*v3);
          _SASetCrashLogMessage(158, "child is %s", v11);
          _os_crash();
          __break(1u);
        }

        v5 = MEMORY[0x1E695DFA8];
        v12 = *v3;
        v6 = [[v5 alloc] initWithObjects:{v12, obj, 0}];
        v7 = *v3;
        *v3 = v6;
      }
    }

    else
    {
      objc_storeStrong(location + 5, obj);
    }
  }
}

+ (id)addStack:(uint64_t)stack backtraceStyle:(uint64_t)style toSetOfRootFrames:
{
  objc_opt_self();
  if (a2)
  {
    if (style)
    {
      *buf = 0;
      v15 = buf;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy_;
      v18 = __Block_byref_object_dispose_;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__SAFrame_addStack_backtraceStyle_toSetOfRootFrames___block_invoke;
      v13[3] = &unk_1E86F5058;
      v13[4] = style;
      v13[5] = buf;
      [a2 iterateFramesWithBacktraceStyle:stack block:v13];
      v7 = *(v15 + 5);
      _Block_object_dispose(buf, 8);

      return v7;
    }
  }

  else
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "nil frameIterator", buf, 2u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(168, "nil frameIterator");
    _os_crash();
    __break(1u);
  }

  v11 = *__error();
  v12 = _sa_logt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "nil rootFrames", buf, 2u);
  }

  *__error() = v11;
  _SASetCrashLogMessage(169, "nil rootFrames");
  result = _os_crash();
  __break(1u);
  return result;
}

void __53__SAFrame_addStack_backtraceStyle_toSetOfRootFrames___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    v5 = *(v4 + 40);
    if (!v5)
    {
      v8 = 0;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 member:a2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = *__error();
        v13 = _sa_logt();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          ClassName = object_getClassName(v5);
          _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v12;
        v14 = object_getClassName(v5);
        _SASetCrashLogMessage(183, "child is %s", v14);
        _os_crash();
        __break(1u);
      }

      v6 = v5;
      if (![a2 isEqual:v6])
      {
        v8 = 0;
        goto LABEL_13;
      }

      v7 = v6;
    }

    v8 = v7;
LABEL_13:

LABEL_14:
    if (v8)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v8 = [*(a1 + 32) member:a2];
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  v8 = [a2 copyWithNewParent:*(*(*(a1 + 40) + 8) + 40)];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    [(SAFrame *)v9 _addChildFrame:v8];
  }

  else
  {
    [*(a1 + 32) addObject:v8];
  }

LABEL_18:
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
}

int *__26__SAFrame_printFrameTree___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = *__error();
  v6 = *MEMORY[0x1E69E9858];
  v7 = 2 * a3 - 2;
  v8 = [a2 debugDescription];
  fprintf(v6, "%*s%p %s\n", v7, "", a2, [v8 UTF8String]);

  result = __error();
  *result = v5;
  return result;
}

+ (void)enumerateFrameTree:(uint64_t)tree block:
{
  v28 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 count])
  {
    return;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a2 mutableCopy];
  [v5 addObject:v6];

  lastObject = [v5 lastObject];
  if (!lastObject)
  {
    goto LABEL_23;
  }

  v8 = lastObject;
  do
  {
    isa = [v5 count];
    null = [MEMORY[0x1E695DFB0] null];

    if (v8 == null)
    {
      [v5 removeLastObject];
      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      anyObject = [v8 anyObject];
      if (!anyObject)
      {
        v17 = *__error();
        v8 = _sa_logt();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "No frame in child frames", buf, 2u);
        }

        *__error() = v17;
        _SASetCrashLogMessage(291, "No frame in child frames");
        _os_crash();
        __break(1u);
LABEL_28:
        v18 = *__error();
        v19 = _sa_logt();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(v8);
          *buf = 136315138;
          v27 = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v18;
        v21 = object_getClassName(v8);
        _SASetCrashLogMessage(298, "child is %s", v21);
        _os_crash();
        __break(1u);
LABEL_31:
        v22 = *__error();
        v23 = _sa_logt();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = object_getClassName(isa);
          *buf = 136315138;
          v27 = v24;
          _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v22;
        v25 = object_getClassName(isa);
        _SASetCrashLogMessage(321, "child is %s", v25);
        _os_crash();
        __break(1u);
      }

      v12 = anyObject;
      [v8 removeObject:anyObject];
      if ([v8 count])
      {
        v13 = 0;
        if (!tree)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_class();
      v12 = v8;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    [v5 removeLastObject];
    v13 = 1;
    if (!tree)
    {
      goto LABEL_14;
    }

LABEL_13:
    buf[0] = 0;
    (*(tree + 16))(tree, v12, isa, buf);
    if (buf[0])
    {
      break;
    }

LABEL_14:
    isa = v12[5].isa;
    if (isa)
    {
      if (v13)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        [v5 addObject:null2];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(objc_class *)isa mutableCopy];
        [v5 addObject:v15];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        [v5 addObject:isa];
      }
    }

LABEL_21:
    lastObject2 = [v5 lastObject];

    v8 = lastObject2;
  }

  while (lastObject2);

LABEL_23:
}

+ (void)releaseFrameTree:(uint64_t)tree
{
  v48 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = objc_autoreleasePoolPush();
      uTF8String4 = v4[5];
      if (uTF8String4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = uTF8String4;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (!v9)
          {
            goto LABEL_14;
          }

          v10 = v9;
          v11 = *v38;
LABEL_7:
          v12 = 0;
          while (1)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v37 + 1) + 8 * v12);
            if (v13)
            {
              if (v13[5])
              {
                break;
              }
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v37 objects:v47 count:16];
              if (!v10)
              {
LABEL_14:

                goto LABEL_18;
              }

              goto LABEL_7;
            }
          }

          v15 = v13;

          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v14 = uTF8String4;
        if (v14[5])
        {
          v15 = v14;
LABEL_21:

          if (v4 != v15[4])
          {
            v19 = *__error();
            v20 = _sa_logt();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [v4 debugDescription];
              uTF8String = [v21 UTF8String];
              v23 = [v15 debugDescription];
              uTF8String2 = [v23 UTF8String];
              v25 = v15[4];
              v26 = [v25 debugDescription];
              uTF8String3 = [v26 UTF8String];
              *buf = 136315650;
              v42 = uTF8String;
              v43 = 2080;
              v44 = uTF8String2;
              v45 = 2080;
              v46 = uTF8String3;
              _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Frame %s child %s has different parent %s", buf, 0x20u);
            }

            *__error() = v19;
            v28 = [v4 debugDescription];
            uTF8String4 = [v28 UTF8String];
            v29 = [v15 debugDescription];
            uTF8String5 = [v29 UTF8String];
            v31 = v15[4];
            v32 = [v31 debugDescription];
            _SASetCrashLogMessage(252, "Frame %s child %s has different parent %s", uTF8String4, uTF8String5, [v32 UTF8String]);

            _os_crash();
            __break(1u);
LABEL_28:
            v33 = *__error();
            v34 = _sa_logt();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              ClassName = object_getClassName(uTF8String4);
              *buf = 136315138;
              v42 = ClassName;
              _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
            }

            *__error() = v33;
            v36 = object_getClassName(uTF8String4);
            _SASetCrashLogMessage(243, "child is %s", v36);
            _os_crash();
            __break(1u);
          }

          v18 = v15;
          v17 = v18;
          goto LABEL_23;
        }

LABEL_18:

        v16 = v4[5];
        v4[5] = 0;
      }

      v17 = v4[4];
      v18 = 0;
      v4[4] = 0;
LABEL_23:

      objc_autoreleasePoolPop(v5);
      v4 = v17;
    }

    while (v17);
  }
}

- (void)setChildFrameOrFrames:(uint64_t)frames
{
  if (frames)
  {
    objc_storeStrong((frames + 40), a2);
  }
}

+ (uint64_t)fixupLoadInfosInFrameTree:(uint64_t)tree binaryLoadInfos:(uint64_t)infos libraryCache:(uint64_t)cache uuidsWithNewInstructions:
{
  objc_opt_self();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__SAFrame_fixupLoadInfosInFrameTree_binaryLoadInfos_libraryCache_uuidsWithNewInstructions___block_invoke;
  v11[3] = &unk_1E86F50A0;
  v11[4] = tree;
  v11[5] = infos;
  v11[6] = cache;
  v11[7] = &v12;
  [SAFrame enumerateFrameTree:a2 block:v11];
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __91__SAFrame_fixupLoadInfosInFrameTree_binaryLoadInfos_libraryCache_uuidsWithNewInstructions___block_invoke(void *a1, id *a2)
{
  if (([a2 isFakeFrame] & 1) == 0)
  {
    v4 = [a2 address];
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained(a2 + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    v5 = [SABinaryLoadInfo binaryLoadInfoForAddress:v4 inBinaryLoadInfos:a1[4] libraryCache:a1[5]];
    if (a2)
    {
      objc_storeWeak(a2 + 3, v5);
    }

    [a2 instruction];

    if (v5)
    {
      if (a1[6])
      {
        if (!WeakRetained || (v6 = [v5 loadAddress], v6 != objc_msgSend(WeakRetained, "loadAddress")) || (objc_msgSend(v5, "binary"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "uuid"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "binary"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, v7, (v11 & 1) == 0))
        {
          v12 = a1[6];
          v13 = [v5 binary];
          v14 = [v13 uuid];
          [v12 addObject:v14];
        }
      }
    }

    else
    {
      ++*(*(a1[7] + 8) + 24);
    }
  }
}

- (NSString)debugDescription
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  instruction = [(SAFrame *)self instruction];
  v4 = [instruction debugDescription];
  address = self->_address;
  isSwiftAsync = [(SAFrame *)self isSwiftAsync];
  isKernel = [(SAFrame *)self isKernel];
  isExclave = [(SAFrame *)self isExclave];
  if (isExclave)
  {
    exclave = [(SAFrame *)self exclave];
    if (exclave)
    {
      v17 = exclave;
      exclave2 = [(SAFrame *)self exclave];
      name = [exclave2 name];
      if (name)
      {
        v9 = 0;
        v10 = 1;
        v16 = name;
        v11 = name;
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        exclave3 = [(SAFrame *)self exclave];
        v11 = [v12 initWithFormat:@"0x%llx", objc_msgSend(exclave3, "identifier")];
        v16 = 0;
        v10 = 1;
        v9 = 1;
      }
    }

    else
    {
      v17 = 0;
      v10 = 0;
      v9 = 0;
      v11 = @"yes";
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = @"no";
  }

  v13 = [v21 initWithFormat:@"%@ [0x%llx] (swift:%d kernel:%d exclave:%@ offByOne:%d trunc:%d anotherCallTree:%d)", v4, address, isSwiftAsync, isKernel, v11, self->_BOOLs.bits & 1, -[SAFrame isTruncatedBacktraceFrame](self, "isTruncatedBacktraceFrame"), -[SAFrame isLeafyCallstackIsInAnotherCallTreeFrame](self, "isLeafyCallstackIsInAnotherCallTreeFrame")];
  if (v9)
  {
  }

  if (v10)
  {
  }

  if (isExclave)
  {
  }

  return v13;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_address];
  SAJSONWriteDictionaryFirstEntry(stream, @"address", v5);

  instruction = [(SAFrame *)self instruction];
  WeakRetained = objc_loadWeakRetained(&self->_binaryLoadInfo);

  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  address = self->_address;
  v9 = objc_loadWeakRetained(&self->_binaryLoadInfo);
  v10 = address - [v9 loadAddress];

  v11 = objc_loadWeakRetained(&self->_binaryLoadInfo);
  binary = [v11 binary];

  v13 = objc_loadWeakRetained(&self->_binaryLoadInfo);
  segment = [v13 segment];

  uuid = [binary uuid];
  uUIDString = [uuid UUIDString];
  SAJSONWriteDictionaryEntry(stream, @"binary", uUIDString);

  if (segment)
  {
    if (![segment hasOffsetIntoBinary])
    {
      goto LABEL_7;
    }

    v17 = MEMORY[0x1E696AD98];
    offsetIntoBinary = [segment offsetIntoBinary];
  }

  else
  {
    offsetIntoBinary = 0;
    v17 = MEMORY[0x1E696AD98];
  }

  v19 = [v17 numberWithUnsignedLongLong:offsetIntoBinary + v10];
  SAJSONWriteDictionaryEntry(stream, @"offsetIntoBinary", v19);

LABEL_7:
  path = [binary path];
  if (path)
  {
    v21 = path;
    uuid2 = [binary uuid];
    v23 = [SABinary haveMultipleBinariesWithUUID:uuid2];

    if (v23)
    {
      path2 = [binary path];
      SAJSONWriteDictionaryEntry(stream, @"binaryPath", path2);
    }
  }

  if (segment)
  {
    name = [segment name];
    SAJSONWriteDictionaryEntry(stream, @"segment", name);

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
    SAJSONWriteDictionaryEntry(stream, @"offsetIntoSegment", v26);
  }

  if ([(SAFrame *)self isSwiftAsync])
  {
    SAJSONWriteDictionaryEntry(stream, @"isSwiftAsync", MEMORY[0x1E695E118]);
  }

  if ([(SAFrame *)self isKernel])
  {
    SAJSONWriteDictionaryEntry(stream, @"isKernelFrame", MEMORY[0x1E695E118]);
  }

  if ([(SAFrame *)self isExclave])
  {
    exclave = [(SAFrame *)self exclave];
    name2 = [exclave name];
    if (name2)
    {
      SAJSONWriteDictionaryEntry(stream, @"exclave", name2);
    }

    else
    {
      v29 = MEMORY[0x1E696AD98];
      exclave2 = [(SAFrame *)self exclave];
      v31 = [v29 numberWithUnsignedLongLong:{objc_msgSend(exclave2, "identifier")}];
      SAJSONWriteDictionaryEntry(stream, @"exclave", v31);
    }
  }

  if ([instruction numSymbols])
  {
    [stream appendString:{@", symbols:["}];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __65__SAFrame_JSONSerialization__writeJSONDictionaryEntriesToStream___block_invoke;
    v32[3] = &unk_1E86F50C8;
    v32[4] = stream;
    v33 = instruction;
    selfCopy = self;
    [v33 enumerateSymbols:v32];
    [stream appendString:@"]"];
  }

LABEL_24:
}

void __65__SAFrame_JSONSerialization__writeJSONDictionaryEntriesToStream___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:@"{"];
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1[5], "offsetIntoSegment") - objc_msgSend(a2, "offsetIntoSegment") + objc_msgSend(a1[6], "isSymbolicationOffByOne")}];
  SAJSONWriteDictionaryFirstEntry(v7, @"offsetIntoSymbol", v8);

  v14 = [a2 name];
  if (v14)
  {
    SAJSONWriteDictionaryEntry(a1[4], @"symbolName", v14);
  }

  if (a3)
  {
    v9 = [a3 filePath];
    if (v9)
    {
      SAJSONWriteDictionaryEntry(a1[4], @"sourceFilepath", v9);
    }

    v10 = a1[4];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "lineNum")}];
    SAJSONWriteDictionaryEntry(v10, @"sourceLineNum", v11);

    if ([a3 columnNum])
    {
      v12 = a1[4];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "columnNum")}];
      SAJSONWriteDictionaryEntry(v12, @"sourceColumnNum", v13);
    }
  }

  [a1[4] appendString:@"}"];
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  if (!self->_childFrameOrFrames)
  {
    return 39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 8 * [self->_childFrameOrFrames count] + 39;
  }

  else
  {
    return 47;
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  selfCopy = self;
  v42 = *MEMORY[0x1E69E9840];
  if ([(SAFrame *)self sizeInBytesForSerializedVersion]!= length)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [selfCopy debugDescription];
      *buf = 136315650;
      uTF8String = [v21 UTF8String];
      v40 = 2048;
      *v41 = [selfCopy sizeInBytesForSerializedVersion];
      *&v41[8] = 2048;
      *&v41[10] = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v19;
    buffer = [selfCopy debugDescription];
    _SASetCrashLogMessage(1278, "%s: size %lu != buffer length %lu", -[$165022A6B82873954AF8662177CFB640 UTF8String](buffer, "UTF8String"), [selfCopy sizeInBytesForSerializedVersion], lengthCopy);

    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  *&buffer->var0 = 1025;
  *(&buffer->var1 + 1) = *(selfCopy + 16);
  *(&buffer->var4 + 6) = *(&buffer->var4 + 6) & 0xFE | [selfCopy isKernel];
  if ([selfCopy isSwiftAsync])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&buffer->var4 + 6) & 0xFD | v9;
  *(&buffer->var4 + 6) = v10;
  *(&buffer->var4 + 6) = (4 * (*(selfCopy + 8) & 1)) | v10 & 0xFB;
  if ([selfCopy isExclave])
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  *(&buffer->var4 + 6) = *(&buffer->var4 + 6) & 0xF7 | v11;
  instruction = [selfCopy instruction];
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(instruction, dictionary);

  *(&buffer->var3 + 6) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 32), dictionary);
  lengthCopy = &buffer->var4 + 7;
  if (*(selfCopy + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String4 = *(selfCopy + 40);
      if ([uTF8String4 count] >= 0xFFFFFFFF)
      {
LABEL_24:
        v29 = *__error();
        v30 = _sa_logt();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [selfCopy debugDescription];
          uTF8String2 = [v31 UTF8String];
          v33 = [uTF8String4 count];
          *buf = 136315394;
          uTF8String = uTF8String2;
          v40 = 2048;
          *v41 = v33;
          _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "%s has %lu children", buf, 0x16u);
        }

        *__error() = v29;
        selfCopy = [selfCopy debugDescription];
        _SASetCrashLogMessage(1296, "%s has %lu children", [selfCopy UTF8String], objc_msgSend(uTF8String4, "count"));

        _os_crash();
        __break(1u);
LABEL_27:
        v34 = *__error();
        v35 = _sa_logt();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(*(selfCopy + 40));
          *buf = 136315138;
          uTF8String = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
        }

        *__error() = v34;
        v37 = object_getClassName(*(selfCopy + 40));
        _SASetCrashLogMessage(1300, "child is %s", v37);
        _os_crash();
        __break(1u);
      }

      v14 = [uTF8String4 count];
      *(&buffer->var3 + 2) = v14;
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 7, v14, uTF8String4, dictionary);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }

      v15 = *(selfCopy + 40);
      *(&buffer->var3 + 2) = 1;
      uTF8String4 = v15;
      *(&buffer->var4 + 7) = SASerializableIndexForPointerFromSerializationDictionary(uTF8String4, dictionary);
    }
  }

  else
  {
    *(&buffer->var3 + 2) = 0;
  }

  v16 = &lengthCopy[8 * *(&buffer->var3 + 2)];
  exclave = [selfCopy exclave];
  *v16 = SASerializableIndexForPointerFromSerializationDictionary(exclave, dictionary);

  if (v16 - buffer + 8 != [selfCopy sizeInBytesForSerializedVersion])
  {
LABEL_21:
    v22 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [selfCopy debugDescription];
      uTF8String3 = [v24 UTF8String];
      v26 = *(&buffer->var3 + 2);
      sizeInBytesForSerializedVersion = [selfCopy sizeInBytesForSerializedVersion];
      *buf = 136315906;
      uTF8String = uTF8String3;
      v40 = 1024;
      *v41 = v26;
      *&v41[4] = 2048;
      *&v41[6] = &lengthCopy[8 * v26] - buffer;
      *&v41[14] = 2048;
      *&v41[16] = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u children), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v22;
    v28 = [selfCopy debugDescription];
    uTF8String4 = [v28 UTF8String];
    _SASetCrashLogMessage(1313, "%s: after serializing (with %u children), ended with length %ld, should be %lu", uTF8String4, *(&buffer->var3 + 2), &lengthCopy[8 * *(&buffer->var3 + 2)] - buffer, [selfCopy sizeInBytesForSerializedVersion]);

    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  while ([v17 count])
  {
    v4 = objc_autoreleasePoolPush();
    lastObject = [v17 lastObject];
    [v17 removeLastObject];
    classDictionaryKey = [objc_opt_class() classDictionaryKey];
    v7 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, lastObject, classDictionaryKey);

    if (v7)
    {
      instruction = [lastObject instruction];
      [instruction addSelfToSerializationDictionary:dictionary];

      if (lastObject)
      {
        if (lastObject[4])
        {
          [v17 addObject:?];
        }

        WeakRetained = objc_loadWeakRetained(lastObject + 3);
        [WeakRetained addSelfToSerializationDictionary:dictionary];

        exclave = [lastObject exclave];
        [exclave addSelfToSerializationDictionary:dictionary];

        v11 = lastObject[5];
        if (!v11)
        {
          goto LABEL_12;
        }

        exclave2 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          allObjects = [exclave2 allObjects];
          [v17 addObjectsFromArray:allObjects];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = *__error();
            v15 = _sa_logt();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              ClassName = object_getClassName(exclave2);
              _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "child is %s", buf, 0xCu);
            }

            *__error() = v14;
            v16 = object_getClassName(exclave2);
            _SASetCrashLogMessage(1345, "child is %s", v16);
            _os_crash();
            __break(1u);
          }

          [v17 addObject:exclave2];
        }
      }

      else
      {
        [0 addSelfToSerializationDictionary:dictionary];
        exclave2 = [0 exclave];
        [exclave2 addSelfToSerializationDictionary:dictionary];
      }
    }

LABEL_12:
    objc_autoreleasePoolPop(v4);
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v26[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_27;
  }

  if (length <= 0x1E)
  {
    v17 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v25 = 2048;
      *v26 = 31;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(1360, "bufferLength %lu < serialized SAFrame struct %lu", length, 31);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 18) + 31 > length)
  {
LABEL_24:
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy2 = length;
      v25 = 1024;
      *v26 = v20;
      v26[2] = 2048;
      *&v26[3] = 8 * v20 + 31;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v18;
    _SASetCrashLogMessage(1361, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", length, *(bufferCopy + 18), 8 * *(bufferCopy + 18) + 31);
    _os_crash();
    __break(1u);
LABEL_27:
    v21 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFrame version" userInfo:0];
    objc_exception_throw(v21);
  }

  if (*(buffer + 1) >= 4u && (*(buffer + 30) & 8) != 0)
  {
    v6 = [[SAExclaveFrame alloc] initWithExclave:?];
    v7 = 1;
  }

  else
  {
    v6 = objc_alloc_init(SAFrame);
    v7 = 0;
  }

  v8 = *(bufferCopy + 2);
  if (v6)
  {
    v6->_address = v8;
    v9 = (bufferCopy + 30);
    if (*(bufferCopy + 30))
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    v6->_BOOLs.bits = v6->_BOOLs.bits & 0xFB | v10;
    if (*(bufferCopy + 2))
    {
LABEL_13:
      v11 = 0;
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = (bufferCopy + 30);
    if (v8)
    {
      goto LABEL_13;
    }
  }

  if (*(bufferCopy + 22) == -1)
  {
    v7 = 1;
  }

  if (v7)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
LABEL_14:
    v6->_BOOLs.bits = v6->_BOOLs.bits & 0xF7 | v11;
  }

LABEL_15:
  v12 = *(bufferCopy + 1);
  if (v12 < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v9 & 2;
  }

  if (v6)
  {
    p_BOOLs = &v6->_BOOLs;
    bits = v6->_BOOLs.bits & 0xFD | v13;
    v6->_BOOLs.bits = bits;
    if (*(bufferCopy + 1) >= 3u)
    {
      v16 = (*v9 >> 2) & 1;
LABEL_42:
      p_BOOLs->bits = bits & 0xFE | v16;
      return v6;
    }
  }

  else if (v12 > 2)
  {
    return v6;
  }

  LOBYTE(v16) = ![(SAFrame *)v6 isSwiftAsync]&& *(bufferCopy + 18) != 0;
  if (v6)
  {
    p_BOOLs = &v6->_BOOLs;
    bits = v6->_BOOLs.bits;
    goto LABEL_42;
  }

  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v99 = *MEMORY[0x1E69E9840];
  v10 = gFrameTreeBeingDecoded();
  if ((*v10 & 1) == 0)
  {
    v89 = v10;
    *v10 = 1;
    if (*buffer > 4u)
    {
LABEL_13:
      v17 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFrame version" userInfo:0];
      objc_exception_throw(v17);
    }

    v11 = -1;
    while (1)
    {
      if (length <= 0x1E)
      {
        goto LABEL_51;
      }

      if (length < 8 * *(buffer + 18) + 31)
      {
LABEL_54:
        v60 = *__error();
        v61 = _sa_logt();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = *(buffer + 18);
          *buf = 134218496;
          *v98 = length;
          *&v98[8] = 1024;
          *&v98[10] = v62;
          *&v98[14] = 2048;
          *&v98[16] = 8 * v62 + 31;
          _os_log_error_impl(&dword_1E0E2F000, v61, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buf, 0x1Cu);
        }

        *__error() = v60;
        _SASetCrashLogMessage(1417, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", length, *(buffer + 18), 8 * *(buffer + 18) + 31);
        _os_crash();
        __break(1u);
LABEL_57:
        v63 = *__error();
        v64 = _sa_logt();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v64, OS_LOG_TYPE_ERROR, "bad parent frame buffer", buf, 2u);
        }

        *__error() = v63;
        _SASetCrashLogMessage(1425, "bad parent frame buffer");
        _os_crash();
        __break(1u);
LABEL_60:
        v65 = *__error();
        v66 = _sa_logt();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v98 = buffer;
          *&v98[8] = 2048;
          *&v98[10] = 31;
          _os_log_error_impl(&dword_1E0E2F000, v66, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct %lu", buf, 0x16u);
        }

        *__error() = v65;
        _SASetCrashLogMessage(1470, "bufferLength %lu < serialized SAFrame struct %lu", buffer, 31);
        _os_crash();
        __break(1u);
LABEL_63:
        v67 = *__error();
        v68 = _sa_logt();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = *(length + 18);
          *buf = 134218496;
          *v98 = buffer;
          *&v98[8] = 1024;
          *&v98[10] = v69;
          *&v98[14] = 2048;
          *&v98[16] = 8 * v69 + 31;
          _os_log_error_impl(&dword_1E0E2F000, v68, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buf, 0x1Cu);
        }

        *__error() = v67;
        _SASetCrashLogMessage(1471, "bufferLength %lu < serialized SAFrame struct plus %u children %lu", buffer, *(length + 18), 8 * *(length + 18) + 31);
        _os_crash();
        __break(1u);
LABEL_66:
        v70 = *__error();
        v71 = _sa_logt();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v71, OS_LOG_TYPE_ERROR, "empty child frames array", buf, 2u);
        }

        *__error() = v70;
        _SASetCrashLogMessage(1518, "empty child frames array");
        _os_crash();
        __break(1u);
LABEL_69:
        v72 = *__error();
        v73 = _sa_logt();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = *(length + 18);
          *buf = 134218240;
          *v98 = buffer;
          *&v98[8] = 1024;
          *&v98[10] = v74;
          _os_log_error_impl(&dword_1E0E2F000, v73, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct v4 with %u children", buf, 0x12u);
        }

        *__error() = v72;
        _SASetCrashLogMessage(1485, "bufferLength %lu < serialized SAFrame struct v4 with %u children", buffer, *(length + 18));
        _os_crash();
        __break(1u);
LABEL_72:
        v75 = *__error();
        v76 = _sa_logt();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v77 = (*(length + 30) >> 3) & 1;
          v78 = [buffer debugDescription];
          uTF8String = [v78 UTF8String];
          ClassName = object_getClassName(frame);
          *buf = 67109634;
          *v98 = v77;
          *&v98[4] = 2080;
          *&v98[6] = uTF8String;
          *&v98[14] = 2080;
          *&v98[16] = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v76, OS_LOG_TYPE_ERROR, "Frame exclave:%d has exclave %s, is class %s, not SAExclaveFrame", buf, 0x1Cu);
        }

        *__error() = v75;
        v81 = (*(length + 30) >> 3) & 1;
        v82 = [buffer debugDescription];
        uTF8String2 = [v82 UTF8String];
        v84 = object_getClassName(frame);
        _SASetCrashLogMessage(1489, "Frame exclave:%d has exclave %s, is class %s, not SAExclaveFrame", v81, uTF8String2, v84);

        _os_crash();
        __break(1u);
      }

      v12 = *(buffer + 22);
      if (v12 == -1)
      {
        break;
      }

      v13 = objc_opt_class();
      v14 = SASerializableBufferForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionary, bufferDictionary, v13);
      if (v14)
      {
        v16 = v15 > 0x1E;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        goto LABEL_57;
      }

      length = v15;
      v11 = *(buffer + 22);
      buffer = v14;
      if (LOBYTE(v14->isa) > 4u)
      {
        goto LABEL_13;
      }
    }

    if (v11 != -1)
    {
      v18 = objc_opt_class();
      selfCopy = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v18, 0);
      v20 = v89;
      if (selfCopy)
      {
LABEL_20:
        v87 = selfCopy;
        v23 = [[SAFrameDeserializationHelper alloc] initWithFrame:selfCopy buffer:buffer bufferLength:length];
        v24 = [SAFrameSiblingsDeserializationHelper alloc];
        v86 = v23;
        v96 = v23;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
        v26 = [(SAFrameSiblingsDeserializationHelper *)v24 initWithFrameHelpers:v25];

        v85 = v26;
        v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v26, 0}];
        if (![v27 count])
        {
          goto LABEL_46;
        }

        v88 = v27;
        while (1)
        {
          v28 = objc_autoreleasePoolPush();
          lastObject = [v27 lastObject];
          frameHelpers = [lastObject frameHelpers];
          index = [lastObject index];
          if (index >= [frameHelpers count])
          {
            [v27 removeLastObject];
            goto LABEL_45;
          }

          v32 = [frameHelpers objectAtIndexedSubscript:{objc_msgSend(lastObject, "index")}];
          frame = [v32 frame];
          length = [v32 buffer];
          bufferLength = [v32 bufferLength];
          if (*length >= 5u)
          {
            goto LABEL_13;
          }

          buffer = bufferLength;
          if (bufferLength <= 0x1E)
          {
            goto LABEL_60;
          }

          if (bufferLength < 8 * *(length + 18) + 31)
          {
            goto LABEL_63;
          }

          v91 = v32;
          v92 = frameHelpers;
          v34 = *(length + 10);
          v35 = objc_opt_class();
          v36 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v34, dictionary, bufferDictionary, v35, 0);
          v37 = (length + 31);
          v38 = *(length + 18);
          if (*(length + 1) >= 4u)
          {
            v39 = &v37[v38];
            if (buffer + length < (v39 + 1))
            {
              goto LABEL_69;
            }

            v40 = *v39;
            v41 = objc_opt_class();
            buffer = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v40, dictionary, bufferDictionary, v41, 0);
            if (buffer)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_72;
              }

              if (frame)
              {
                objc_storeWeak(frame + 6, buffer);
              }
            }
          }

          [lastObject setIndex:{objc_msgSend(lastObject, "index") + 1}];
          if (!v38)
          {
            [(SAFrame *)frame setChildFrameOrFrames:?];
            v53 = v91;
            goto LABEL_44;
          }

          v90 = v28;
          v42 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v38];
          v93 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v38];
          do
          {
            v43 = *v37++;
            length = 0x1E86F4000uLL;
            v44 = objc_opt_class();
            buffer = dictionary;
            v45 = SASerializableBufferForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v43, dictionary, bufferDictionary, v44);
            v47 = v46;
            v48 = objc_opt_class();
            v49 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v43, dictionary, bufferDictionary, v48, 0);
            if (!v49)
            {
              v56 = *__error();
              v57 = _sa_logt();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "can't decode child", buf, 2u);
              }

              *__error() = v56;
              _SASetCrashLogMessage(1510, "can't decode child");
              _os_crash();
              __break(1u);
LABEL_51:
              v58 = *__error();
              v59 = _sa_logt();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v98 = length;
                *&v98[8] = 2048;
                *&v98[10] = 31;
                _os_log_error_impl(&dword_1E0E2F000, v59, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFrame struct %lu", buf, 0x16u);
              }

              *__error() = v58;
              _SASetCrashLogMessage(1416, "bufferLength %lu < serialized SAFrame struct %lu", length, 31);
              _os_crash();
              __break(1u);
              goto LABEL_54;
            }

            v50 = v49;
            *(v49 + 32) = frame;
            v51 = [[SAFrameDeserializationHelper alloc] initWithFrame:v49 buffer:v45 bufferLength:v47];
            [v42 addObject:v50];
            [v93 addObject:v51];

            --v38;
          }

          while (v38);
          if (![v42 count])
          {
            goto LABEL_66;
          }

          if ([v42 count] == 1)
          {
            anyObject = [v42 anyObject];
            [(SAFrame *)frame setChildFrameOrFrames:anyObject];
          }

          else
          {
            [(SAFrame *)frame setChildFrameOrFrames:v42];
          }

          v27 = v88;
          v20 = v89;
          v54 = v42;
          v28 = v90;
          v53 = v91;
          v55 = [[SAFrameSiblingsDeserializationHelper alloc] initWithFrameHelpers:v93];
          [v88 addObject:v55];

LABEL_44:
          frameHelpers = v92;
LABEL_45:

          objc_autoreleasePoolPop(v28);
          if (![v27 count])
          {
LABEL_46:
            *v20 = 0;

            return;
          }
        }
      }

      v21 = *__error();
      v22 = _sa_logt();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "can't decode root frame", buf, 2u);
      }

      *__error() = v21;
      _SASetCrashLogMessage(1439, "can't decode root frame");
      _os_crash();
      __break(1u);
    }

    selfCopy = self;
    v20 = v89;
    goto LABEL_20;
  }
}

+ (SAFrame)frameWithPAStyleSerializedFrame:(uint64_t)frame
{
  objc_opt_self();
  v3 = objc_alloc_init(SAFrame);
  v4 = *(a2 + 8);
  if (v3)
  {
    v3->_address = v4;
    v3->_BOOLs.bits = v3->_BOOLs.bits & 0xFB | (4 * (*(a2 + 17) != 0));
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 8 * (*(a2 + 26) == -1);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v6 = v3->_BOOLs.bits & 0xF7 | v5;
  v3->_BOOLs.bits = v6;
  v7 = v6 & 0xFE;
  if (*(a2 + 18))
  {
    ++v7;
  }

  v3->_BOOLs.bits = v7;
LABEL_8:

  return v3;
}

- (void)populateReferencesUsingPAStyleSerializedFrame:(void *)frame andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = *(a2 + 26);
    v9 = objc_opt_class();
    Property = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v8, frame, dictionary, v9, 0);
    v12 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 8, 1);
    }

    *(self + 32) = Property;
    v13 = *(a2 + 18);
    v14 = objc_opt_class();
    v15 = SASerializableNewMutableSetFromIndexList(a2 + 34, v13, frame, dictionary, v14);
    if ([v15 count] == 1)
    {
      anyObject = [v15 anyObject];
      v18 = anyObject;
      if (anyObject)
      {
        v19 = objc_getProperty(anyObject, v17, 8, 1);
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong((self + 40), v19);
    }

    else
    {
      if ([v15 count] < 2)
      {
        v30 = *(self + 40);
        *(self + 40) = 0;

        goto LABEL_20;
      }

      v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v15, "count")}];
      v21 = *(self + 40);
      *(self + 40) = v20;

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v15;
      v22 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        v24 = v22;
        v25 = *v32;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v18);
            }

            v27 = *(*(&v31 + 1) + 8 * i);
            v28 = *(self + 40);
            if (v27)
            {
              v27 = objc_getProperty(v27, v23, 8, 1);
            }

            v29 = v27;
            [v28 addObject:{v29, v31}];
          }

          v24 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v24);
      }
    }

LABEL_20:
  }
}

@end