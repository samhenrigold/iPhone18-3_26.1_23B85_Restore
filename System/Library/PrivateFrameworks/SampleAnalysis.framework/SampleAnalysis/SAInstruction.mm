@interface SAInstruction
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)hasOffsetIntoBinary;
- (BOOL)hasSourceInfo;
- (BOOL)symbolicateWithOptions:(unint64_t)options pid:(int)pid additionalCSSymbolicatorFlags:(unsigned int)flags;
- (NSString)debugDescription;
- (SABinary)binary;
- (SASegment)segment;
- (SASourceInfo)sourceInfo;
- (SASymbol)symbol;
- (id)realSegment;
- (int64_t)offsetIntoBinary;
- (uint64_t)enumerateSymbolsNullable:(void *)nullable;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)checkForNewSymbol;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)setSymbol:(void *)symbol sourceinfo:;
@end

@implementation SAInstruction

- (SABinary)binary
{
  WeakRetained = objc_loadWeakRetained(&self->_binary);

  return WeakRetained;
}

- (void)checkForNewSymbol
{
  v78[16] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = self[5];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__2;
    v67 = __Block_byref_object_dispose__2;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__2;
    v61 = __Block_byref_object_dispose__2;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__2;
    v55 = __Block_byref_object_dispose__2;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__2;
    v49 = __Block_byref_object_dispose__2;
    v50 = 0;
    selfCopy = self;
    realSegment = [(SAInstruction *)self realSegment];
    v3 = realSegment;
    v38[1] = 3221225472;
    v38[0] = MEMORY[0x1E69E9820];
    v39 = __34__SAInstruction_checkForNewSymbol__block_invoke;
    v40 = &unk_1E86F6DD8;
    v41 = &v63;
    v42 = &v51;
    v43 = &v57;
    v44 = &v45;
    if (realSegment)
    {
      v4 = realSegment;
      objc_sync_enter(v4);
      v32 = v4;
      v5 = [(SASegment *)v4 nonInlineSymbolAtOffsetIntoSegment:v1];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
        objc_sync_enter(v7);
        v8 = v7[4];
        if (v8 && (v78[0] = MEMORY[0x1E69E9820], v78[1] = 3221225472, v78[2] = __51__SASymbol_nonInlineSourceInfoAtOffsetIntoSegment___block_invoke, v78[3] = &__block_descriptor_40_e22_q16__0__SASourceInfo_8l, v78[4] = v1, v9 = SABinarySearchArray(v8, 0, v78), v9 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v10 = [v7[4] objectAtIndexedSubscript:{v9, selfCopy}];
        }

        else
        {
          v10 = 0;
        }

        objc_sync_exit(v7);

        v39(v38, v7, v10);
        v34 = v3;
        v11 = v32[2];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "offsetIntoSegment")}];
        v13 = [v11 objectForKeyedSubscript:v12];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v13;
        v14 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
        if (v14)
        {
          v15 = *v74;
          v33 = v6;
          v35 = *v74;
          do
          {
            v16 = 0;
            v36 = v14;
            do
            {
              if (*v74 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v73 + 1) + 8 * v16);
              offsetIntoSegment = [v17 offsetIntoSegment];
              if ([v17 length] + offsetIntoSegment > v1)
              {
                if ([v17 offsetIntoSegment] > v1)
                {
                  goto LABEL_35;
                }

                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                if (v17)
                {
                  Property = objc_getProperty(v17, v19, 32, 1);
                }

                else
                {
                  Property = 0;
                }

                v21 = Property;
                v22 = [v21 countByEnumeratingWithState:&v69 objects:v77 count:16];
                if (!v22)
                {

                  v15 = v35;
                  v14 = v36;
LABEL_30:
                  v39(v38, v17, 0);
                  goto LABEL_31;
                }

                v23 = 0;
                v24 = *v70;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v70 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v69 + 1) + 8 * i);
                    offsetIntoSegment2 = [v26 offsetIntoSegment];
                    if ([v26 length] + offsetIntoSegment2 > v1)
                    {
                      if ([v26 offsetIntoSegment] > v1)
                      {
                        goto LABEL_27;
                      }

                      v39(v38, v17, v26);
                      v23 = 1;
                    }
                  }

                  v22 = [v21 countByEnumeratingWithState:&v69 objects:v77 count:16];
                }

                while (v22);
LABEL_27:

                v6 = v33;
                v3 = v34;
                v15 = v35;
                v14 = v36;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

LABEL_31:
              ++v16;
            }

            while (v16 != v14);
            v28 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
            v14 = v28;
          }

          while (v28);
        }

LABEL_35:
      }

      objc_sync_exit(v32);
    }

    v29 = v58[5];
    if (!v29)
    {
      v29 = v64[5];
    }

    v30 = v46[5];
    if (!v30)
    {
      v30 = v52[5];
    }

    [(SAInstruction *)selfCopy setSymbol:v29 sourceinfo:v30];
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v57, 8);

    _Block_object_dispose(&v63, 8);
  }
}

- (void)setSymbol:(void *)symbol sourceinfo:
{
  if (self)
  {
    obj = self;
    objc_sync_enter(obj);
    objc_storeStrong(obj + 1, a2);
    objc_storeStrong(obj + 2, symbol);
    objc_sync_exit(obj);
  }
}

- (BOOL)hasOffsetIntoBinary
{
  WeakRetained = objc_loadWeakRetained(&self->_segment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_segment);
    hasOffsetIntoBinary = [v4 hasOffsetIntoBinary];
  }

  else
  {
    hasOffsetIntoBinary = 1;
  }

  return hasOffsetIntoBinary;
}

- (int64_t)offsetIntoBinary
{
  WeakRetained = objc_loadWeakRetained(&self->_segment);

  if (!WeakRetained)
  {
    return self->_offsetIntoSegment;
  }

  v4 = objc_loadWeakRetained(&self->_segment);
  hasOffsetIntoBinary = [v4 hasOffsetIntoBinary];

  if (!hasOffsetIntoBinary)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  offsetIntoSegment = self->_offsetIntoSegment;
  v7 = objc_loadWeakRetained(&self->_segment);
  v8 = [v7 offsetIntoBinary] + offsetIntoSegment;

  return v8;
}

- (id)realSegment
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 4);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      selfCopy = WeakRetained;
    }

    else
    {
      v4 = objc_loadWeakRetained(selfCopy + 3);
      selfCopy = [(SABinary *)v4 createFakeEntireBinarySegment];
    }
  }

  return selfCopy;
}

- (BOOL)symbolicateWithOptions:(unint64_t)options pid:(int)pid additionalCSSymbolicatorFlags:(unsigned int)flags
{
  optionsCopy = options;
  if (self)
  {
    if (self->_sourceInfoOrSourceInfos)
    {
      return 0;
    }

    v10 = self->_symbolOrSymbols != 0;
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_binary);
  if (!WeakRetained)
  {
    return 0;
  }

  v12 = WeakRetained;
  v13 = [(SABinary *)WeakRetained symbolOwnerWrapperWithOptions:optionsCopy pid:pid checkExclave:1 additionalCSSymbolicatorFlags:flags];
  if (v13)
  {
    realSegment = [(SAInstruction *)&self->super.isa realSegment];
    v15 = realSegment;
    if (!realSegment || (v16 = [(SASegment *)realSegment baseAddressInSymbolOwnerWrapper:v13], v16 == -1))
    {
      v9 = 0;
    }

    else
    {
      v17 = v16;
      v22 = 0;
      v23 = 0;
      offsetIntoSegment = self->_offsetIntoSegment;
      objc_copyStruct(dest, (v13 + 16), 16, 1, 0);
      [(SASegment *)v15 symbolicateOffsetIntoSegment:dest[0] symbolOwner:dest[1] segmentBaseAddress:v17 returningSymbols:&v23 sourceInfos:&v22];
      v20 = v22;
      v19 = v23;
      [(SAInstruction *)self setSymbol:v23 sourceinfo:v22];
      v9 = self->_sourceInfoOrSourceInfos != 0;
      if (!v9 && !v10)
      {
        v9 = self->_symbolOrSymbols != 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __34__SAInstruction_checkForNewSymbol__block_invoke(void *a1, id obj, void *a3)
{
  v5 = *(a1[4] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v7)
  {
    v8 = *(*(a1[6] + 8) + 40);
    if (v8)
    {
      [v8 addObject:obj];
      v9 = *(a1[7] + 8);
      v10 = *(v9 + 40);
      if (a3)
      {
        v11 = *(v9 + 40);

        [v11 addObject:a3];
        return;
      }

      v24 = [MEMORY[0x1E695DFB0] null];
      [v10 addObject:v24];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(a1[4] + 8) + 40), obj, 0}];
      v14 = *(a1[6] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = objc_alloc(MEMORY[0x1E695DF70]);
      v17 = *(*(a1[5] + 8) + 40);
      v18 = v17;
      if (!v17)
      {
        v18 = [MEMORY[0x1E695DFB0] null];
      }

      v19 = a3;
      v24 = v18;
      if (!a3)
      {
        v20 = [MEMORY[0x1E695DFB0] null];
        v18 = v24;
        v19 = v20;
      }

      v21 = [v16 initWithObjects:{v18, v19, 0}];
      v22 = *(a1[7] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      if (a3)
      {
        if (v17)
        {
          return;
        }
      }

      else
      {

        if (v17)
        {
          return;
        }
      }
    }
  }

  else
  {
    objc_storeStrong(v6, obj);
    v12 = (*(a1[5] + 8) + 40);

    objc_storeStrong(v12, a3);
  }
}

- (uint64_t)enumerateSymbolsNullable:(void *)nullable
{
  v39 = *MEMORY[0x1E69E9840];
  if (!nullable)
  {
    return 0;
  }

  nullableCopy = nullable;
  objc_sync_enter(nullableCopy);
  v5 = nullableCopy[1];
  v6 = nullableCopy[2];
  objc_sync_exit(nullableCopy);

  if (!v5)
  {
    v13 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (a2)
        {
          (*(a2 + 16))(a2, v5, v6, 0);
        }

        v13 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        ClassName = object_getClassName(v5);
        _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
      }

      *__error() = v15;
      v16 = object_getClassName(v5);
      _SASetCrashLogMessage(4377, "symbol is %s", v16);
      _os_crash();
      __break(1u);
    }

    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v5 debugDescription];
      uTF8String = [v19 UTF8String];
      v20 = [v6 count];
      v21 = object_getClassName(v6);
      *buf = 136315650;
      ClassName = uTF8String;
      v35 = 2048;
      v36 = v20;
      v37 = 2080;
      v38 = v21;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "1 symbol %s, but %lu source infos (%s)", buf, 0x20u);
    }

    *__error() = v17;
    v22 = [v5 debugDescription];
    uTF8String2 = [v22 UTF8String];
    v23 = [v6 count];
    v24 = object_getClassName(v6);
    _SASetCrashLogMessage(4378, "1 symbol %s, but %lu source infos (%s)", uTF8String2, v23, v24);

    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  uTF8String = v5;
  if (a2)
  {
    uTF8String2 = v6;
    if (!uTF8String2)
    {
LABEL_8:
      if ([uTF8String count])
      {
        v9 = 0;
        while (1)
        {
          if (!uTF8String2)
          {
            goto LABEL_13;
          }

          v10 = [uTF8String2 objectAtIndexedSubscript:v9];
          null = [MEMORY[0x1E695DFB0] null];

          if (v10 == null)
          {
            break;
          }

LABEL_14:
          v12 = [uTF8String objectAtIndexedSubscript:v9];
          (*(a2 + 16))(a2, v12, v10, v9);

          if (++v9 >= [uTF8String count])
          {
            goto LABEL_15;
          }
        }

LABEL_13:
        v10 = 0;
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [uTF8String2 count];
      if (v8 == [uTF8String count])
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

LABEL_32:
    v25 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClassName(uTF8String2);
      *buf = 136315138;
      ClassName = v27;
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "symbol is array, but source info is %s", buf, 0xCu);
    }

    *__error() = v25;
    v28 = object_getClassName(uTF8String2);
    _SASetCrashLogMessage(4359, "symbol is array, but source info is %s", v28);
    _os_crash();
    __break(1u);
LABEL_35:
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [uTF8String count];
      v32 = [uTF8String2 count];
      *buf = 134218240;
      ClassName = v31;
      v35 = 2048;
      v36 = v32;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "%lu symbols, but %lu source infos", buf, 0x16u);
    }

    *__error() = v29;
    _SASetCrashLogMessage(4360, "%lu symbols, but %lu source infos", [uTF8String count], objc_msgSend(uTF8String2, "count"));
    _os_crash();
    __break(1u);
    return 0;
  }

LABEL_16:
  v13 = [uTF8String count];

LABEL_24:
  return v13;
}

- (BOOL)hasSourceInfo
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self->_sourceInfoOrSourceInfos;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2;
    v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];

          if (v7 != null)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (NSString)debugDescription
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __33__SAInstruction_debugDescription__block_invoke;
  v25 = &unk_1E86F6E00;
  v4 = v3;
  v26 = v4;
  selfCopy = self;
  v5 = MEMORY[0x1E12EBE50](&v22);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([self->_symbolOrSymbols count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        if ((v7 & 1) == 0)
        {
          [v4 appendString:{@", "}];
        }

        v8 = [self->_symbolOrSymbols objectAtIndexedSubscript:v6];
        v9 = [self->_sourceInfoOrSourceInfos objectAtIndexedSubscript:v6];
        null = [MEMORY[0x1E695DFB0] null];

        if (v9 == null)
        {

          v9 = 0;
        }

        (v5)[2](v5, v8, v9);

        ++v6;
        v11 = [self->_symbolOrSymbols count];
        v7 = 0;
      }

      while (v6 < v11);
    }
  }

  else if (self->_symbolOrSymbols)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = *__error();
      v19 = _sa_logt();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ClassName = object_getClassName(self->_symbolOrSymbols);
        *buf = 136315138;
        v29 = ClassName;
        _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
      }

      *__error() = v18;
      v21 = object_getClassName(self->_symbolOrSymbols);
      _SASetCrashLogMessage(4412, "symbol is %s", v21);
      _os_crash();
      __break(1u);
    }

    (v5)[2](v5, self->_symbolOrSymbols, self->_sourceInfoOrSourceInfos);
  }

  else
  {
    [v4 appendFormat:@"???"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_segment);

  if (WeakRetained)
  {
    p_segment = &self->_segment;
  }

  else
  {
    p_segment = &self->_binary;
  }

  v14 = objc_loadWeakRetained(p_segment);
  v15 = [v14 debugDescription];
  [v4 appendFormat:@" (%@ + %llu)", v15, self->_offsetIntoSegment, v22, v23, v24, v25];

  v16 = v4;
  return v4;
}

void __33__SAInstruction_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = [a2 debugDescription];
  [v6 appendFormat:@"%@ + %llu", v7, *(*(a1 + 40) + 40) - objc_msgSend(a2, "offsetIntoSegment")];

  if (a3)
  {
    v8 = *(a1 + 32);
    v9 = [a3 debugDescription];
    [v8 appendFormat:@" (%@ + %llu)", v9, *(*(a1 + 40) + 40) - objc_msgSend(a3, "offsetIntoSegment")];
  }
}

- (SASourceInfo)sourceInfo
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_sourceInfoOrSourceInfos)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [selfCopy->_sourceInfoOrSourceInfos firstObject];
      null = [MEMORY[0x1E695DFB0] null];

      if (firstObject == null)
      {
        v5 = 0;
      }

      else
      {
        v5 = firstObject;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = *__error();
        v8 = _sa_logt();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(selfCopy->_sourceInfoOrSourceInfos);
          *buf = 136315138;
          v12 = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "source info is %s", buf, 0xCu);
        }

        *__error() = v7;
        v10 = object_getClassName(selfCopy->_sourceInfoOrSourceInfos);
        _SASetCrashLogMessage(4443, "source info is %s", v10);
        _os_crash();
        __break(1u);
      }

      v5 = selfCopy->_sourceInfoOrSourceInfos;
    }
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (SASymbol)symbol
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  symbolOrSymbols = selfCopy->_symbolOrSymbols;
  if (symbolOrSymbols)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [selfCopy->_symbolOrSymbols firstObject];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = *__error();
        v7 = _sa_logt();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          ClassName = object_getClassName(selfCopy->_symbolOrSymbols);
          *buf = 136315138;
          v11 = ClassName;
          _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
        }

        *__error() = v6;
        v9 = object_getClassName(selfCopy->_symbolOrSymbols);
        _SASetCrashLogMessage(4457, "symbol is %s", v9);
        _os_crash();
        __break(1u);
      }

      firstObject = selfCopy->_symbolOrSymbols;
    }

    symbolOrSymbols = firstObject;
  }

  objc_sync_exit(selfCopy);

  return symbolOrSymbols;
}

- (SASegment)segment
{
  WeakRetained = objc_loadWeakRetained(&self->_segment);

  return WeakRetained;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  numSymbols = [(SAInstruction *)self numSymbols];
  if (numSymbols <= 1)
  {
    return 99;
  }

  else
  {
    return 56 * numSymbols + 43;
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SAInstruction *)self sizeInBytesForSerializedVersion]!= length)
  {
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(SAInstruction *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v20 UTF8String];
      v25 = 2048;
      sizeInBytesForSerializedVersion = [(SAInstruction *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v18;
    v21 = [(SAInstruction *)self debugDescription];
    _SASetCrashLogMessage(5578, "%s: size %lu != buffer length %lu", [v21 UTF8String], -[SAInstruction sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 1025;
  *(&buffer->var1 + 1) = self->_offsetIntoSegment;
  WeakRetained = objc_loadWeakRetained(&self->_binary);
  uuid = [WeakRetained uuid];

  if (uuid)
  {
    [uuid getUUIDBytes:&buffer->var2 + 2];
  }

  else
  {
    uuid_clear(&buffer->var2 + 2);
  }

  v11 = objc_loadWeakRetained(&self->_segment);

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_segment);
    *(&buffer->var4.var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(v12, dictionary);
  }

  else
  {
    *(&buffer->var4.var6 + 2) = -1;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__SAInstruction_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke;
  v22[3] = &unk_1E86F6E90;
  v22[4] = dictionary;
  v22[5] = buffer;
  v13 = [(SAInstruction *)self enumerateSymbols:v22];
  if (v13 != 1)
  {
    if (v13)
    {
      BYTE2(buffer->var5) = v13 - 1;
      v14 = (v13 - 1);
      goto LABEL_13;
    }

    *(&buffer->var4.var1 + 2) = -1;
    *(&buffer->var4.var4 + 2) = -1;
  }

  v14 = 0;
  BYTE2(buffer->var5) = 0;
LABEL_13:
  v15 = buffer + 56 * v14;
  v16 = objc_loadWeakRetained(&self->_binary);
  *(v15 + 91) = SASerializableIndexForPointerFromSerializationDictionary(v16, dictionary);

  return 1;
}

void __98__SAInstruction_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = v7 + 26;
  v9 = v7 + 56 * a4 + 35;
  if (a4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  *v10 = [a2 offsetIntoSegment];
  *(v10 + 8) = [a2 length];
  v11 = [a2 name];
  *(v10 + 16) = SASerializableIndexForPointerFromSerializationDictionary(v11, *(a1 + 32));

  if (a3)
  {
    *(v10 + 24) = [a3 offsetIntoSegment];
    *(v10 + 48) = [a3 lineNum];
    *(v10 + 52) = [a3 columnNum];
    *(v10 + 32) = [a3 length];
    v12 = [a3 filePath];
    *(v10 + 40) = SASerializableIndexForPointerFromSerializationDictionary(v12, *(a1 + 32));
  }

  else
  {
    *(v10 + 40) = -1;
  }
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_binary);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_binary);
      [v8 addSelfToSerializationDictionary:dictionary];
    }

    v9 = objc_loadWeakRetained(&self->_segment);

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_segment);
      [v10 addSelfToSerializationDictionary:dictionary];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__SAInstruction_Serialization__addSelfToSerializationDictionary___block_invoke;
    v11[3] = &unk_1E86F6EB8;
    v11[4] = dictionary;
    [(SAInstruction *)self enumerateSymbols:v11];
  }
}

void __65__SAInstruction_Serialization__addSelfToSerializationDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 name];
  [v5 addSelfToSerializationDictionary:*(a1 + 32)];

  if (a3)
  {
    v6 = [a3 filePath];
    [v6 addSelfToSerializationDictionary:*(a1 + 32)];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v4 = objc_alloc_init(objc_opt_self());
  objc_storeWeak(v4 + 3, 0);
  v4[5] = 0;
  return v4;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_32;
  }

  if (length <= 0x19)
  {
    v26 = *__error();
    v27 = _sa_logt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v36 = 2048;
      v37 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAInstruction struct %lu", buf, 0x16u);
    }

    *__error() = v26;
    _SASetCrashLogMessage(5669, "bufferLength %lu < serialized SAInstruction struct %lu", length, 26);
    _os_crash();
    __break(1u);
LABEL_29:
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v36 = 2048;
      v37 = 91;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAInstruction struct v3 %lu", buf, 0x16u);
    }

    *__error() = v28;
    _SASetCrashLogMessage(5699, "bufferLength %lu < serialized SAInstruction struct v3 %lu", length, 91);
    _os_crash();
    __break(1u);
LABEL_32:
    v30 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAInstruction version" userInfo:0];
    objc_exception_throw(v30);
  }

  if (*(buffer + 1) < 4u)
  {
    if (uuid_is_null(buffer + 10))
    {
      v12 = 0;
      goto LABEL_25;
    }

    v13 = uuidForBytes(buffer + 10);
    v12 = [SABinary binaryWithUUID:v13 absolutePath:0];
  }

  else
  {
    v10 = *(buffer + 56 * *(buffer + 90) + 91);
    v11 = objc_opt_class();
    v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11, 0);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v14 = *(buffer + 1);
  if (v14 < 2)
  {
    goto LABEL_25;
  }

  if (v14 != 2)
  {
    if (length > 0x5A)
    {
      v18 = gSASerializationEncodedVersionBeingDecoded();
      if (*v18 <= 30)
      {
        *gBinaryBeingDecoded(&gBinaryBeingDecoded) = v12;
      }

      v19 = *(buffer + 82);
      v20 = objc_opt_class();
      v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, dictionary, bufferDictionary, v20, 0);
      if (*v18 <= 30)
      {
        *gBinaryBeingDecoded(&gBinaryBeingDecoded) = 0;
      }

      LODWORD(v16) = *(buffer + 90);
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  v15 = [(SABinary *)v12 checkForSegmentWithCleanName:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [(SABinary *)v12 checkForSegmentWithCleanName:?];
  }

  v21 = v17;

  LODWORD(v16) = 0;
LABEL_21:
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __128__SAInstruction_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke;
  v31[3] = &unk_1E86F6EE0;
  v31[4] = dictionary;
  v31[5] = bufferDictionary;
  v22 = v21;
  v32 = v22;
  v12 = v12;
  v33 = v12;
  v23 = MEMORY[0x1E12EBE50](v31);
  (v23)[2](v23, buffer + 26, -1);
  if (v16)
  {
    v24 = *(buffer + 26);
    v25 = buffer + 91;
    v16 = v16;
    do
    {
      (v23)[2](v23, v25, v24);
      v25 += 56;
      --v16;
    }

    while (v16);
  }

LABEL_25:
}

void __128__SAInstruction_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke(uint64_t a1, uint64_t a2, char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (v6 != -1 || *a2 || *(a2 + 8))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    v10 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v6, v7, v8, v9, 0);
    v11 = *(a1 + 48);
    if (v11)
    {
      if (a3 == -1)
      {
        v12 = [(SASegment *)v11 addNonInlineSymbolWithOffsetIntoSegment:*(a2 + 8) length:v10 name:?];
      }

      else
      {
        if (!v10)
        {
          v25 = *__error();
          v26 = _sa_logt();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [(SASegment *)*(a1 + 48) nonInlineSymbolAtOffsetIntoSegment:a3];
            v28 = [v27 debugDescription];
            v29 = [*(a1 + 48) debugDescription];
            v30 = 138412546;
            v31 = v28;
            v32 = 2112;
            v33 = v29;
            _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", &v30, 0x16u);
          }

          v13 = 0;
          *__error() = v25;
          goto LABEL_18;
        }

        v12 = [(SASegment *)v11 addInlineSymbolWithOffsetIntoSegment:*(a2 + 8) length:v10 name:a3 nonInlineSymbolOffsetIntoSegment:?];
      }
    }

    else
    {
      v12 = [(SABinary *)*(a1 + 56) addSymbolWithOffsetIntoBinary:*(a2 + 8) length:v10 name:?];
    }

    v13 = v12;
    v14 = *(a2 + 40);
    if (v14 != -1)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = objc_opt_class();
      v18 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v14, v16, v15, v17);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      v21 = *(a2 + 48);
      v22 = *(a2 + 52);
      if (a3 == -1)
      {
        v24 = [(SASymbol *)v13 addNonInlineSourceInfoWithOffsetIntoSegment:v19 length:v20 lineNum:v21 columnNum:v22 filePath:v18];
      }

      else
      {
        v23 = [(SASymbol *)v13 addInlineSourceInfoWithOffsetIntoSegment:v19 length:v20 lineNum:v21 columnNum:v22 filePath:v18];
      }
    }

LABEL_18:
  }
}

@end