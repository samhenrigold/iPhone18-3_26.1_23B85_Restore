@interface SASegment
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
+ (id)segmentWithBinary:(void *)binary name:(uint64_t)name length:(uint64_t)length offsetIntoBinary:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isEmpty;
- (NSString)debugDescription;
- (SABinary)binary;
- (SASegment)initWithBinary:(id)binary name:(id)name length:(unint64_t)length offsetIntoBinary:(int64_t)intoBinary;
- (id)addInlineSymbolWithOffsetIntoSegment:(void *)segment length:(void *)length name:(char *)name nonInlineSymbolOffsetIntoSegment:;
- (id)instructionAtOffsetIntoSegment:(unint64_t)segment;
- (id)nonInlineSymbolAtOffsetIntoSegment:(void *)segment;
- (uint64_t)applyLength:(id *)length;
- (uint64_t)baseAddressInSymbolOwnerWrapper:(void *)wrapper;
- (void)addNonInlineSymbolWithOffsetIntoSegment:(unint64_t)segment length:(void *)length name:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)enumerateAllSymbols:(id)symbols;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)symbolicateOffsetIntoSegment:(uint64_t)segment symbolOwner:(uint64_t)owner segmentBaseAddress:(uint64_t)address returningSymbols:(id *)symbols sourceInfos:(id *)infos;
- (void)symbolicateWithSymbolOwnerWrapper:(void *)wrapper;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SASegment

- (SABinary)binary
{
  WeakRetained = objc_loadWeakRetained(&self->_binary);

  return WeakRetained;
}

- (BOOL)isEmpty
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([selfCopy[7] count])
  {
    v2 = 0;
  }

  else
  {
    v2 = [selfCopy[1] count] == 0;
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (SASegment)initWithBinary:(id)binary name:(id)name length:(unint64_t)length offsetIntoBinary:(int64_t)intoBinary
{
  v13.receiver = self;
  v13.super_class = SASegment;
  v10 = [(SASegment *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_binary, binary);
    objc_storeStrong(&v11->_name, name);
    v11->_offsetIntoBinary = intoBinary;
    [(SASegment *)&v11->super.isa applyLength:length];
  }

  return v11;
}

- (uint64_t)applyLength:(id *)length
{
  v2 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (a2 >> 28)
  {
    result = [length[4] containsString:@"TEXT"];
    if (result)
    {
      v5 = *__error();
      v6 = _sa_logt();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v41 = [length debugDescription];
        *buf = 138412546;
        v47 = v41;
        v48 = 2048;
        v49 = v2;
        _os_log_fault_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_FAULT, "%@ setting length above max for text segment: 0x%llx", buf, 0x16u);
      }

      v7 = __error();
      result = 0;
      *v7 = v5;
    }
  }

  else
  {
    lengthCopy = length;
    objc_sync_enter(lengthCopy);
    v9 = lengthCopy[3];
    if (v9 >= v2)
    {
      objc_sync_exit(lengthCopy);

      return 0;
    }

    else
    {
      if (v9)
      {
        LODWORD(uTF8String3) = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
LABEL_37:
          v40 = [lengthCopy debugDescription];
          *buf = 138412546;
          v47 = v40;
          v48 = 2048;
          v49 = v2;
          _os_log_debug_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEBUG, "%@ updating length to 0x%llx", buf, 0x16u);
        }

        *__error() = uTF8String3;
      }

      lengthCopy[3] = v2;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      allKeys = [lengthCopy[7] allKeys];
      uTF8String3 = [allKeys countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (uTF8String3)
      {
        v13 = *v43;
        while (2)
        {
          for (i = 0; i != uTF8String3; ++i)
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(allKeys);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            if ([v15 unsignedLongLongValue] >= lengthCopy[3])
            {
              v16 = [lengthCopy[7] objectForKeyedSubscript:v15];
              v17 = v16;
              if (v16)
              {
                v18 = *(v16 + 8);
                if (v18)
                {
                  unsignedLongLongValue2 = v18;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    firstObject = [unsignedLongLongValue2 firstObject];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_34;
                    }

                    firstObject = unsignedLongLongValue2;
                  }

                  v21 = firstObject;
                  v22 = [firstObject length] == 0;

                  if (!v22)
                  {
                    v23 = *__error();
                    v24 = _sa_logt();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      v25 = [lengthCopy debugDescription];
                      v26 = v25;
                      uTF8String = [v25 UTF8String];
                      v28 = lengthCopy[3];
                      unsignedLongLongValue = [v15 unsignedLongLongValue];
                      v30 = [v17 debugDescription];
                      v31 = v30;
                      uTF8String2 = [v30 UTF8String];
                      *buf = 136315906;
                      v47 = uTF8String;
                      v48 = 2048;
                      v49 = v28;
                      v50 = 2048;
                      v51 = unsignedLongLongValue;
                      v52 = 2080;
                      v53 = uTF8String2;
                      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: setting length to 0x%llx when we have a symbol at offset 0x%llx: %s", buf, 0x2Au);
                    }

                    *__error() = v23;
                    v33 = [lengthCopy debugDescription];
                    v34 = v33;
                    uTF8String3 = [v33 UTF8String];
                    v35 = lengthCopy[3];
                    unsignedLongLongValue2 = [v15 unsignedLongLongValue];
                    v36 = [v17 debugDescription];
                    v37 = v36;
                    _SASetCrashLogMessage(176, "%s: setting length to 0x%llx when we have a symbol at offset 0x%llx: %s", uTF8String3, v35, unsignedLongLongValue2, [v36 UTF8String]);

                    _os_crash();
                    __break(1u);
LABEL_34:
                    v11 = *__error();
                    v2 = _sa_logt();
                    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
                    {
                      ClassName = object_getClassName(unsignedLongLongValue2);
                      *buf = 136315138;
                      v47 = ClassName;
                      _os_log_error_impl(&dword_1E0E2F000, v2, OS_LOG_TYPE_ERROR, "symbol is %s", buf, 0xCu);
                    }

                    *__error() = v11;
                    v39 = object_getClassName(unsignedLongLongValue2);
                    _SASetCrashLogMessage(4219, "symbol is %s", v39);
                    _os_crash();
                    __break(1u);
                    goto LABEL_37;
                  }
                }

                objc_storeWeak(v17 + 3, 0);
                objc_storeWeak(v17 + 4, 0);
              }

              [lengthCopy[7] setObject:0 forKeyedSubscript:v15];
            }
          }

          uTF8String3 = [allKeys countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (uTF8String3)
          {
            continue;
          }

          break;
        }
      }

      objc_sync_exit(lengthCopy);
      return 1;
    }
  }

  return result;
}

+ (id)segmentWithBinary:(void *)binary name:(uint64_t)name length:(uint64_t)length offsetIntoBinary:
{
  v9 = objc_opt_self();
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([binary isEqualToString:@"__TEXT"])
    {
      length = 0;
    }

    else
    {
      length = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v10 = [[v9 alloc] initWithBinary:a2 name:binary length:name offsetIntoBinary:length];

  return v10;
}

uint64_t __46__SASegment_grabInstructionsFromOtherSegment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40) + [a2 offsetIntoSegment];
  v4 = *(*(a1 + 32) + 40);
  v5 = v4 <= v3;
  if (v4 >= v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t __46__SASegment_grabInstructionsFromOtherSegment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40) + [a2 offsetIntoSegment];
  v4 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 40);
  v5 = v4 <= v3;
  if (v4 >= v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

- (id)nonInlineSymbolAtOffsetIntoSegment:(void *)segment
{
  if (segment)
  {
    segmentCopy = segment;
    objc_sync_enter(segmentCopy);
    v4 = segmentCopy[1];
    if (v4 && (v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __48__SASegment_nonInlineSymbolAtOffsetIntoSegment___block_invoke, v10[3] = &__block_descriptor_40_e18_q16__0__SASymbol_8l, v10[4] = a2, (v5 = SABinarySearchArray(v4, 1536, v10)) != 0))
    {
      v6 = [segmentCopy[1] objectAtIndexedSubscript:v5 - 1];
      if ([v6 length] && (v7 = objc_msgSend(v6, "offsetIntoSegment"), objc_msgSend(v6, "length") + v7 <= a2))
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(segmentCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __32__SASegment_addTailspinSymbols___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:a2];
    if (([v6 scanUnsignedLongLong:&v27] & 1) == 0)
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = a2;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Unable to parse offset %@", &buf, 0xCu);
      }

      *__error() = v16;
      return;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = *__error();
      v14 = _sa_logt();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "Bad offset in tailspin file", &buf, 2u);
      }

      v15 = __error();
      goto LABEL_25;
    }

    v27 = [a2 unsignedLongLongValue];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "Bad symbol dict in tailspin file", &buf, 2u);
    }

    v15 = __error();
LABEL_25:
    *v15 = v13;
    return;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x2020000000;
  v31 = -1;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __32__SASegment_addTailspinSymbols___block_invoke_34;
  v26[3] = &unk_1E86F6698;
  v26[5] = &buf;
  v26[6] = v27;
  v26[4] = *(a1 + 32);
  v7 = MEMORY[0x1E12EBE50](v26);
  (v7)[2](v7, a3, 0);
  DictGetArray(a3, 0x1F5BBFE80);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v8 = v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = *__error();
          v20 = _sa_logt();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *v21 = 0;
            _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Bad inline symbol dict in tailspin file", v21, 2u);
          }

          *__error() = v19;
          goto LABEL_29;
        }

        v7[2](v7, v12, 1);
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

  _Block_object_dispose(&buf, 8);
}

void __32__SASegment_addTailspinSymbols___block_invoke_34(uint64_t a1, void *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = DictGetString(a2, 0x1F5BBFC60);
  v7 = DictGetNumber(a2, 0x1F5BBFDA0);
  v8 = [v7 unsignedLongLongValue];

  v9 = DictGetNumber(a2, 0x1F5BBFDC0);
  v10 = [v9 unsignedLongLongValue];

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6 == 0;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = (*(a1 + 48) - v8);
  if (!a3)
  {
    v13 = [(SASegment *)*(a1 + 32) addNonInlineSymbolWithOffsetIntoSegment:v12 length:v10 name:v6];
    *(*(*(a1 + 40) + 8) + 24) = v12;
    goto LABEL_9;
  }

  if (v6)
  {
    v13 = [(SASegment *)*(a1 + 32) addInlineSymbolWithOffsetIntoSegment:v12 length:v10 name:v6 nonInlineSymbolOffsetIntoSegment:*(*(*(a1 + 40) + 8) + 24)];
LABEL_9:
    v14 = DictGetString(a2, 0x1F5BBFDE0);
    if (v14)
    {
      v15 = DictGetNumber(a2, 0x1F5BBFE40);
      v16 = [v15 unsignedLongLongValue];

      v17 = DictGetNumber(a2, 0x1F5BBFE60);
      v18 = [v17 unsignedLongLongValue];

      v19 = DictGetNumber(a2, 0x1F5BBFE00);
      v20 = [v19 unsignedIntValue];

      v21 = DictGetNumber(a2, 0x1F5BBFE20);
      v22 = [v21 unsignedIntValue];

      v23 = (*(a1 + 48) - v16);
      if (a3)
      {
        v24 = [(SASymbol *)v13 addInlineSourceInfoWithOffsetIntoSegment:v23 length:v18 lineNum:v20 columnNum:v22 filePath:v14];
      }

      else
      {
        v25 = [(SASymbol *)v13 addNonInlineSourceInfoWithOffsetIntoSegment:v23 length:v18 lineNum:v20 columnNum:v22 filePath:v14];
      }
    }

    goto LABEL_14;
  }

  v26 = *__error();
  v27 = _sa_logt();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = [(SASegment *)*(a1 + 32) nonInlineSymbolAtOffsetIntoSegment:?];
    v29 = [v28 debugDescription];
    v30 = [*(a1 + 32) debugDescription];
    v31 = 138412546;
    v32 = v29;
    v33 = 2112;
    v34 = v30;
    _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", &v31, 0x16u);
  }

  *__error() = v26;
LABEL_14:
}

- (id)addInlineSymbolWithOffsetIntoSegment:(void *)segment length:(void *)length name:(char *)name nonInlineSymbolOffsetIntoSegment:
{
  v55 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_29:
    v20 = 0;
    goto LABEL_18;
  }

  if (!segment)
  {
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [self debugDescription];
      uTF8String = [v31 UTF8String];
      v33 = [(SASegment *)self nonInlineSymbolAtOffsetIntoSegment:name];
      v34 = [v33 debugDescription];
      *buf = 136316162;
      v46 = uTF8String;
      v47 = 2080;
      uTF8String2 = [v34 UTF8String];
      v49 = 2080;
      uTF8String3 = [length UTF8String];
      v51 = 2048;
      v52 = a2;
      v53 = 2048;
      v54 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "%s: inlining into %s: %s (0x%llx-0x%llx) with length 0", buf, 0x34u);
    }

    *__error() = v29;
    v35 = [self debugDescription];
    v36 = v35;
    uTF8String4 = [v35 UTF8String];
    v38 = [(SASegment *)self nonInlineSymbolAtOffsetIntoSegment:name];
    v39 = [v38 debugDescription];
    v40 = v39;
    uTF8String5 = [v39 UTF8String];
    lengthCopy = length;
    _SASetCrashLogMessage(490, "%s: inlining into %s: %s (0x%llx-0x%llx) with length 0", uTF8String4, uTF8String5, [length UTF8String], a2, a2);

    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = selfCopy[2];
  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v12 = selfCopy[2];
    selfCopy[2] = v11;

    v10 = selfCopy[2];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:name];
  v14 = [v10 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v15 = selfCopy[2];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:name];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __95__SASegment_addInlineSymbolWithOffsetIntoSegment_length_name_nonInlineSymbolOffsetIntoSegment___block_invoke;
  v44[3] = &__block_descriptor_48_e18_q16__0__SASymbol_8l;
  v44[4] = a2;
  v44[5] = segment;
  v17 = SABinarySearchArray(v14, 1536, v44);
  v18 = v17;
  if (v17)
  {
    v19 = v17 - 1;
    while (1)
    {
      v20 = [v14 objectAtIndexedSubscript:v19];
      if ([v20 offsetIntoSegment] != a2 || objc_msgSend(v20, "length") != segment)
      {

        goto LABEL_16;
      }

      name = [v20 name];
      if (!name)
      {
        break;
      }

      name2 = [v20 name];
      v23 = [name2 isEqualToString:length];

      if (v23)
      {
        break;
      }

      if (--v19 == -1)
      {
        goto LABEL_16;
      }
    }

    name3 = [v20 name];
    v26 = name3 != 0;

    if (v20)
    {
      v28 = v26;
    }

    else
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
      objc_setProperty_atomic_copy(v20, v27, length, 24);
    }
  }

  else
  {
LABEL_16:
    v20 = [SASymbol symbolWithOffsetIntoSegment:a2 length:segment name:length];
    [v14 insertObject:v20 atIndex:v18];
  }

  objc_sync_exit(selfCopy);
LABEL_18:

  return v20;
}

- (void)addNonInlineSymbolWithOffsetIntoSegment:(unint64_t)segment length:(void *)length name:
{
  if (!self || self[3] - 1 < a2)
  {
    v5 = 0;
    goto LABEL_27;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy[1];
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
    v11 = selfCopy[1];
    selfCopy[1] = v10;

    v9 = selfCopy[1];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__SASegment_addNonInlineSymbolWithOffsetIntoSegment_length_name___block_invoke;
  v19[3] = &__block_descriptor_40_e18_q16__0__SASymbol_8l;
  v19[4] = a2;
  v12 = SABinarySearchArray(v9, 1280, v19);
  if (v12 >= [selfCopy[1] count])
  {
    goto LABEL_20;
  }

  v5 = [selfCopy[1] objectAtIndexedSubscript:v12];
  if ([v5 offsetIntoSegment] != a2)
  {
    if ([v5 offsetIntoSegment] < &a2[segment])
    {
      segment = [v5 offsetIntoSegment] - a2;
    }

LABEL_20:
    if (v12)
    {
      v15 = [selfCopy[1] objectAtIndexedSubscript:v12 - 1];
      offsetIntoSegment = [v15 offsetIntoSegment];
      if ([v15 length] + offsetIntoSegment > a2)
      {
        offsetIntoSegment2 = [v15 offsetIntoSegment];
        if (v15)
        {
          v15[2] = &a2[-offsetIntoSegment2];
        }
      }
    }

    v5 = [SASymbol symbolWithOffsetIntoSegment:a2 length:segment name:length];
    [selfCopy[1] insertObject:v5 atIndex:v12];
    goto LABEL_26;
  }

  if (segment && (![v5 length] || objc_msgSend(v5, "length") > segment) && v5)
  {
    v5[2] = segment;
  }

  name = [v5 name];

  if (length && !name && v5)
  {
    objc_setProperty_atomic_copy(v5, v14, length, 24);
  }

LABEL_26:
  objc_sync_exit(selfCopy);

LABEL_27:

  return v5;
}

uint64_t __95__SASegment_addInlineSymbolWithOffsetIntoSegment_length_name_nonInlineSymbolOffsetIntoSegment___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 offsetIntoSegment];
  v5 = *(a1 + 32);
  if (v5 > v4)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return -1;
  }

  v7 = [a2 length];
  v8 = *(a1 + 40);
  v9 = v8 > v7;
  v10 = v8 < v7;
  if (v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

uint64_t __65__SASegment_addNonInlineSymbolWithOffsetIntoSegment_length_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 offsetIntoSegment];
  v4 = *(a1 + 32);
  v5 = v4 > v3;
  if (v4 >= v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (void)enumerateAllSymbols:(id)symbols
{
  v40 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = selfCopy;
  obj = selfCopy->_symbols;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v24 = *v35;
    do
    {
      v7 = 0;
      v25 = v6;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        (*(symbols + 2))(symbols, v8, 0);
        v27 = v7;
        inlineSymbols = v26->_inlineSymbols;
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "offsetIntoSegment")}];
        v28 = [(NSMutableDictionary *)inlineSymbols objectForKeyedSubscript:v10];

        v11 = v28;
        if (v28 && [v28 count])
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = v28;
          v13 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v13)
          {
            v14 = *v31;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(v29);
                }

                v16 = *(*(&v30 + 1) + 8 * i);
                offsetIntoSegment = [v16 offsetIntoSegment];
                v18 = [v16 length];
                while ([v12 count])
                {
                  lastObject = [v12 lastObject];
                  v20 = [lastObject unsignedLongLongValue] > offsetIntoSegment;

                  if (v20)
                  {
                    break;
                  }

                  [v12 removeLastObject];
                }

                (*(symbols + 2))(symbols, v16, [v12 count] + 1);
                v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18 + offsetIntoSegment];
                [v12 addObject:v21];
              }

              v13 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v13);
          }

          v11 = v28;
        }

        v7 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v26);
  objc_autoreleasePoolPop(context);
}

char *__34__SASegment_addInfoFromCSSegment___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  Range = CSSymbolGetRange();
  v8 = v7;
  Name = CSSymbolGetName();
  v10 = (Range - *(a1 + 40));
  if (!Name)
  {
    if (a4 != -1)
    {
      goto LABEL_7;
    }

    v12 = 0;
LABEL_11:
    v13 = [(SASegment *)*(a1 + 32) addNonInlineSymbolWithOffsetIntoSegment:v10 length:v8 name:v12];
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v11 = SANSStringForCString(Name);
  v12 = v11;
  if (a4 == -1)
  {
    goto LABEL_11;
  }

  if (v11)
  {
    v13 = [(SASegment *)*(a1 + 32) addInlineSymbolWithOffsetIntoSegment:v10 length:v8 name:v11 nonInlineSymbolOffsetIntoSegment:a4];
    if (!v13)
    {
LABEL_5:
      v14 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v14 = v13;
    CSSymbolForeachSourceInfo();

    goto LABEL_13;
  }

LABEL_7:
  v15 = *__error();
  v16 = _sa_logt();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = [(SASegment *)*(a1 + 32) nonInlineSymbolAtOffsetIntoSegment:a4];
    v19 = [v18 debugDescription];
    v20 = [*(a1 + 32) debugDescription];
    *buf = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", buf, 0x16u);
  }

  v12 = 0;
  v14 = 0;
  v10 = 0;
  *__error() = v15;
LABEL_13:

  return v10;
}

void __34__SASegment_addInfoFromCSSegment___block_invoke_43(void *a1, uint64_t a2, uint64_t a3)
{
  Path = CSSourceInfoGetPath();
  if (Path)
  {
    v5 = SANSStringForCString(Path);
    if (v5)
    {
      v15 = v5;
      LineNumber = CSSourceInfoGetLineNumber();
      Column = CSSourceInfoGetColumn();
      Range = CSSourceInfoGetRange();
      v10 = v9;
      v11 = a1[4];
      v12 = (Range - a1[5]);
      if (a1[7] == -1)
      {
        v14 = [(SASymbol *)v11 addNonInlineSourceInfoWithOffsetIntoSegment:v12 length:v10 lineNum:LineNumber columnNum:Column filePath:v15];
      }

      else
      {
        v13 = [(SASymbol *)v11 addInlineSourceInfoWithOffsetIntoSegment:v12 length:v10 lineNum:LineNumber columnNum:Column filePath:v15];
      }

      v5 = v15;
    }
  }
}

void __34__SASegment_addInfoFromCSSegment___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  CSSymbolForeachInlineRange();
}

uint64_t __34__SASegment_addInfoFromCSSegment___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v8 = result;
    result = (*(*(result + 32) + 16))();
    v9 = a6 - 1;
    if (v9)
    {
      v10 = a4 + 24;
      do
      {
        result = CSSymbolIsUnnamed();
        if ((result & 1) == 0)
        {
          result = (*(*(v8 + 32) + 16))();
        }

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

- (void)symbolicateOffsetIntoSegment:(uint64_t)segment symbolOwner:(uint64_t)owner segmentBaseAddress:(uint64_t)address returningSymbols:(id *)symbols sourceInfos:(id *)infos
{
  if (self)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    CSSymbolOwnerForEachStackFrameAtAddress();
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(v13, 8);
    objc_sync_exit(selfCopy);

    v9 = v28[5];
    if (!v9)
    {
      v9 = v34[5];
    }

    objc_storeStrong(symbols, v9);
    v10 = v16[5];
    if (!v10)
    {
      v10 = v22[5];
    }

    objc_storeStrong(infos, v10);
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }
}

void __102__SASegment_symbolicateOffsetIntoSegment_symbolOwner_segmentBaseAddress_returningSymbols_sourceInfos___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if ((CSIsNull() & 1) == 0 && (!*(*(*(a1 + 40) + 8) + 24) || (CSSymbolIsUnnamed() & 1) == 0))
  {
    Name = CSSymbolGetName();
    Range = CSSymbolGetRange();
    v9 = v8;
    v10 = (Range - *(a1 + 88));
    if (Name)
    {
      v11 = SANSStringForCString(Name);
      v12 = v11;
      if (*(*(*(a1 + 40) + 8) + 24) > 0)
      {
        if (v11)
        {
          v13 = [(SASegment *)*(a1 + 32) addInlineSymbolWithOffsetIntoSegment:v10 length:v9 name:v11 nonInlineSymbolOffsetIntoSegment:*(*(*(a1 + 48) + 8) + 24)];
          if (!v13)
          {
            goto LABEL_20;
          }

LABEL_15:
          if ((CSIsNull() & 1) != 0 || (Path = CSSourceInfoGetPath()) == 0)
          {
            v25 = 0;
          }

          else
          {
            v17 = Path;
            LineNumber = CSSourceInfoGetLineNumber();
            Column = CSSourceInfoGetColumn();
            v20 = SANSStringForCString(v17);
            v21 = CSSourceInfoGetRange();
            if (v20)
            {
              v23 = v22;
              v24 = (v21 - *(a1 + 88));
              if (*(*(*(a1 + 40) + 8) + 24) < 1)
              {
                [(SASymbol *)v13 addNonInlineSourceInfoWithOffsetIntoSegment:v24 length:v23 lineNum:LineNumber columnNum:Column filePath:v20];
              }

              else
              {
                [(SASymbol *)v13 addInlineSourceInfoWithOffsetIntoSegment:v24 length:v23 lineNum:LineNumber columnNum:Column filePath:v20];
              }
              v25 = ;
            }

            else
            {
              v25 = 0;
            }
          }

          v26 = *(*(a1 + 56) + 8);
          v29 = *(v26 + 40);
          v27 = (v26 + 40);
          v28 = v29;
          if (!v29)
          {
            objc_storeStrong(v27, v13);
            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v25);
            goto LABEL_52;
          }

          v30 = *(*(*(a1 + 72) + 8) + 40);
          if (v30)
          {
            if (![v30 count])
            {
LABEL_34:
              [*(*(*(a1 + 72) + 8) + 40) addObject:v13];
              v35 = *(*(a1 + 80) + 8);
              v36 = *(v35 + 40);
              if (v25)
              {
                [*(v35 + 40) addObject:v25];
              }

              else
              {
                v47 = [MEMORY[0x1E695DFB0] null];
                [v36 addObject:v47];

                v25 = 0;
              }

              goto LABEL_52;
            }

            v31 = 0;
            while (1)
            {
              v32 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:v31];
              v33 = v32;
              if (v13 == v32)
              {
                v34 = [*(*(*(a1 + 80) + 8) + 40) objectAtIndexedSubscript:v31];

                if (v25 == v34)
                {
                  v48 = *__error();
                  v49 = _sa_logt();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
LABEL_54:
                    v53 = [v13 debugDescription];
                    v54 = [v25 debugDescription];
                    *buf = 138412546;
                    v56 = v53;
                    v57 = 2112;
                    v58 = v54;
                    _os_log_error_impl(&dword_1E0E2F000, v49, OS_LOG_TYPE_ERROR, "Same symbol/source info showed up twice in inlining: %@ %@", buf, 0x16u);
                  }

LABEL_51:

                  *__error() = v48;
                  goto LABEL_52;
                }
              }

              else
              {
              }

              if (++v31 >= [*(*(*(a1 + 72) + 8) + 40) count])
              {
                goto LABEL_34;
              }
            }
          }

          if (v13 == v28 && v25 == *(*(*(a1 + 64) + 8) + 40))
          {
            v48 = *__error();
            v49 = _sa_logt();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            goto LABEL_51;
          }

          v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 56) + 8) + 40), v13, 0}];
          v38 = *(*(a1 + 72) + 8);
          v39 = *(v38 + 40);
          *(v38 + 40) = v37;

          v40 = objc_alloc(MEMORY[0x1E695DF70]);
          v41 = *(*(*(a1 + 64) + 8) + 40);
          v42 = v41;
          if (!v41)
          {
            v42 = [MEMORY[0x1E695DFB0] null];
          }

          v43 = v25;
          if (!v25)
          {
            v43 = [MEMORY[0x1E695DFB0] null];
          }

          v44 = [v40 initWithObjects:{v42, v43, 0}];
          v45 = *(*(a1 + 80) + 8);
          v46 = *(v45 + 40);
          *(v45 + 40) = v44;

          if (!v25)
          {
          }

          if (!v41)
          {
          }

LABEL_52:

          goto LABEL_53;
        }

LABEL_10:
        v14 = *__error();
        v15 = _sa_logt();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v50 = [(SASegment *)*(a1 + 32) nonInlineSymbolAtOffsetIntoSegment:?];
          v51 = [v50 debugDescription];
          v52 = [*(a1 + 32) debugDescription];
          *buf = 138412546;
          v56 = v51;
          v57 = 2112;
          v58 = v52;
          _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "No symbol name for inline symbol (after non-inline symbol %@ in %@)", buf, 0x16u);
        }

        v12 = 0;
        *__error() = v14;
        goto LABEL_20;
      }
    }

    else
    {
      if (*(*(*(a1 + 40) + 8) + 24) > 0)
      {
        goto LABEL_10;
      }

      v12 = 0;
    }

    v13 = [(SASegment *)*(a1 + 32) addNonInlineSymbolWithOffsetIntoSegment:v10 length:v9 name:v12];
    *(*(*(a1 + 48) + 8) + 24) = v10;
    if (!v13)
    {
LABEL_20:

      return;
    }

    goto LABEL_15;
  }

LABEL_53:
  ++*(*(*(a1 + 40) + 8) + 24);
}

- (uint64_t)baseAddressInSymbolOwnerWrapper:(void *)wrapper
{
  v40 = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  objc_sync_enter(wrapperCopy);
  symbolOwner = [(SACSSymbolOwnerWrapper *)a2 symbolOwner];
  v6 = v5;
  if ((*(a2 + 8) & 1) != 0 && [wrapperCopy hasOffsetIntoBinary])
  {
    CSSymbolOwnerGetBaseAddress();
    [wrapperCopy offsetIntoBinary];
    CSSymbolOwnerGetSegmentWithAddress();
    if (CSIsNull())
    {
      CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
      v8 = *__error();
      v9 = _sa_logt();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v24 = [wrapperCopy debugDescription];
        if (CFUUIDBytes)
        {
          add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v27 = add_explicit & 3;
          v28 = -add_explicit;
          v20 = v28 < 0;
          v29 = v28 & 3;
          if (v20)
          {
            v30 = v27;
          }

          else
          {
            v30 = -v29;
          }

          v25 = &uuid_string_string[37 * v30];
          uuid_unparse(CFUUIDBytes, v25);
        }

        else
        {
          v25 = "no uuid";
        }

        *v38 = 138412546;
        *&v38[4] = v24;
        *&v38[12] = 2080;
        *&v38[14] = v25;
        _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "%@: segment not found in %s", v38, 0x16u);
      }

      *__error() = v8;
      Range = -1;
    }

    else
    {
      Range = CSRegionGetRange();
    }
  }

  else
  {
    *v38 = 0;
    *&v38[8] = v38;
    *&v38[16] = 0x2020000000;
    v39 = -1;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__SASegment_baseAddressInSymbolOwnerWrapper___block_invoke;
    v31[3] = &unk_1E86F67F0;
    v31[4] = wrapperCopy;
    v31[5] = v38;
    SASymbolOwnerForeachSegment(symbolOwner, v6, v31);
    Range = *(*&v38[8] + 24);
    if (Range == -1)
    {
      v11 = CSSymbolOwnerGetCFUUIDBytes();
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [wrapperCopy debugDescription];
        v16 = wrapperCopy[4];
        if (v11)
        {
          v18 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v19 = v18 & 3;
          v21 = -v18;
          v20 = v21 < 0;
          v22 = v21 & 3;
          if (v20)
          {
            v23 = v19;
          }

          else
          {
            v23 = -v22;
          }

          v17 = &uuid_string_string[37 * v23];
          uuid_unparse(v11, v17);
        }

        else
        {
          v17 = "no uuid";
        }

        *buf = 138412802;
        v33 = v15;
        v34 = 2112;
        v35 = v16;
        v36 = 2080;
        v37 = v17;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%@: segment %@ not found in %s", buf, 0x20u);
      }

      *__error() = v12;
      Range = *(*&v38[8] + 24);
    }

    _Block_object_dispose(v38, 8);
  }

  objc_sync_exit(wrapperCopy);

  return Range;
}

void __45__SASegment_baseAddressInSymbolOwnerWrapper___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) == -1)
  {
    Name = CSRegionGetName();
    if (Name)
    {
      v5 = SANSStringForCString(Name);
      v6 = CopyCleanSegmentName(v5);

      if ([v6 isEqualToString:*(*(a1 + 32) + 32)])
      {
        *(*(*(a1 + 40) + 8) + 24) = CSRegionGetRange();
      }
    }
  }
}

- (void)symbolicateWithSymbolOwnerWrapper:(void *)wrapper
{
  v30 = *MEMORY[0x1E69E9840];
  if (wrapper)
  {
    v4 = objc_autoreleasePoolPush();
    wrapperCopy = wrapper;
    objc_sync_enter(wrapperCopy);
    if (![wrapperCopy[7] count] || (v6 = -[SASegment baseAddressInSymbolOwnerWrapper:](wrapperCopy, a2), v6 == -1))
    {
      objc_sync_exit(wrapperCopy);
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(wrapperCopy[7], "count")}];
      symbolOwner = [(SACSSymbolOwnerWrapper *)a2 symbolOwner];
      v9 = wrapperCopy[7];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __47__SASegment_symbolicateWithSymbolOwnerWrapper___block_invoke;
      v24[3] = &unk_1E86F6818;
      v24[4] = wrapperCopy;
      v26 = symbolOwner;
      v27 = v10;
      v28 = v6;
      v11 = v7;
      v25 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v24];

      objc_sync_exit(wrapperCopy);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v13)
      {
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            v17 = [v16 objectAtIndexedSubscript:{0, v20}];
            v18 = [v16 objectAtIndexedSubscript:1];
            if ([v16 count] < 3)
            {
              v19 = 0;
            }

            else
            {
              v19 = [v16 objectAtIndexedSubscript:2];
            }

            [(SAInstruction *)v17 setSymbol:v18 sourceinfo:v19];
          }

          v13 = [v12 countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v13);
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __47__SASegment_symbolicateWithSymbolOwnerWrapper___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 || !*(a3 + 16))
  {
    v10 = 0;
    v11 = 0;
    -[SASegment symbolicateOffsetIntoSegment:symbolOwner:segmentBaseAddress:returningSymbols:sourceInfos:](*(a1 + 32), [a2 unsignedLongLongValue], *(a1 + 48), *(a1 + 56), *(a1 + 64), &v11, &v10);
    v5 = v11;
    if (v11)
    {
      v6 = *(a1 + 40);
      v7 = objc_alloc(MEMORY[0x1E695DEC8]);
      v8 = v10;
      v9 = [v7 initWithObjects:{a3, v5, v10, 0}];
      [v6 addObject:v9];
    }

    else
    {
      v8 = v10;
    }
  }
}

uint64_t __48__SASegment_nonInlineSymbolAtOffsetIntoSegment___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 < [a2 offsetIntoSegment])
  {
    return -1;
  }

  v6 = *(a1 + 32);
  return v6 > [a2 offsetIntoSegment];
}

- (id)instructionAtOffsetIntoSegment:(unint64_t)segment
{
  if (self->_length - 1 < segment)
  {
    v3 = 0;
    goto LABEL_9;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  instructions = selfCopy->_instructions;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:segment];
  v3 = [(NSMutableDictionary *)instructions objectForKeyedSubscript:v7];

  if (v3)
  {
    objc_sync_exit(selfCopy);
LABEL_5:

    goto LABEL_9;
  }

  if (!selfCopy->_instructions)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    v9 = selfCopy->_instructions;
    selfCopy->_instructions = v8;
  }

  v3 = objc_alloc_init(objc_opt_self());
  binary = [(SASegment *)selfCopy binary];
  objc_storeWeak(v3 + 3, binary);

  objc_storeWeak(v3 + 4, selfCopy);
  v3[5] = segment;
  v11 = selfCopy->_instructions;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:segment];
  [(NSMutableDictionary *)v11 setObject:v3 forKeyedSubscript:v12];

  objc_sync_exit(selfCopy);
  [(SAInstruction *)v3 checkForNewSymbol];
  if (!v3[2])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_binary);
    selfCopy = WeakRetained;
    if (WeakRetained)
    {
      BYTE1(WeakRetained[1].super.isa) = 1;
    }

    goto LABEL_5;
  }

LABEL_9:

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  WeakRetained = objc_loadWeakRetained(&self->_binary);
  name = [WeakRetained name];
  v6 = objc_loadWeakRetained(&self->_binary);
  uuid = [v6 uuid];
  uUIDString = [uuid UUIDString];
  v9 = [v3 initWithFormat:@"%@ <%@> %@ (offset 0x%llx length 0x%llx, %lu symbols)", name, uUIDString, self->_name, self->_offsetIntoBinary, self->_length, -[NSMutableArray count](self->_symbols, "count")];

  return v9;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  name = self->_name;
  if (name)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"name", name);
  }

  if (self->_length)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(stream, @"length", v6);
  }

  if ([(SASegment *)self hasOffsetIntoBinary])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_offsetIntoBinary];
    SAJSONWriteDictionaryEntry(stream, @"offsetIntoBinary", v7);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SASegment *)self sizeInBytesForSerializedVersion]> length)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SASegment *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v17 UTF8String];
      v25 = 2048;
      lengthCopy = length;
      v27 = 2048;
      sizeInBytesForSerializedVersion = [(SASegment *)self sizeInBytesForSerializedVersion];
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: size %lu > buffer length %lu", buf, 0x20u);
    }

    *__error() = v15;
    v18 = [(SASegment *)self debugDescription];
    _SASetCrashLogMessage(4992, "%s: size %lu > buffer length %lu", [v18 UTF8String], length, -[SASegment sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"));

    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_binary);
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v10 = WeakRetained;
  *&buffer->var0 = 513;
  *&buffer->var3[64] = self->_offsetIntoBinary;
  *(&buffer->var4 + 2) = self->_length;
  *(&buffer->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_name, dictionary);
  v11 = objc_loadWeakRetained(&self->_binary);
  *(&buffer->var5 + 2) = SASerializableIndexForPointerFromSerializationDictionary(v11, dictionary);

  v12 = [(NSString *)self->_name dataUsingEncoding:4 allowLossyConversion:1];
  if ([v12 length] >= 0x40)
  {
LABEL_8:
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [(NSString *)self->_name UTF8String];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v25 = 2048;
      lengthCopy = 63;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Segment %s longer than %lu characters", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(5011, "Segment %s longer than %lu characters", [(NSString *)self->_name UTF8String], 63);
    _os_crash();
    __break(1u);
LABEL_11:
    v22 = [SAException exceptionWithName:@"Encoding failure" reason:@"Segment with no binary" userInfo:0];
    objc_exception_throw(v22);
  }

  memmove(buffer->var3, [v12 bytes], objc_msgSend(v12, "length"));
  buffer->var3[[v12 length]] = 0;
  uuid = [v10 uuid];
  [uuid getUUIDBytes:buffer->var2];

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_binary);
    [WeakRetained addSelfToSerializationDictionary:dictionary];

    name = self->_name;

    [(NSString *)name addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_29;
  }

  lengthCopy = length;
  if (length <= 0x61)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v37 = lengthCopy;
      *&v37[8] = 2048;
      *&v37[10] = 98;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASegment struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(5034, "bufferLength %lu < serialized SASegment struct %lu", lengthCopy, 98);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  bufferCopy = buffer;
  if (*(buffer + 1) < 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x71)
  {
LABEL_20:
    v26 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v37 = lengthCopy;
      *&v37[8] = 2048;
      *&v37[10] = 114;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASegment v2 struct %lu", buf, 0x16u);
    }

    *__error() = v26;
    _SASetCrashLogMessage(5041, "bufferLength %lu < serialized SASegment v2 struct %lu", lengthCopy, 114);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(buffer + 98);
  v11 = objc_opt_class();
  lengthCopy = SASerializablePartiallyDecodedNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  v12 = *(bufferCopy + 106);
  v13 = objc_opt_class();
  v14 = SASerializablePartiallyDecodedNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionary, bufferDictionary, v13);
  if (!lengthCopy)
  {
    v15 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v37 = [v14 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "No binary for segment %s", buf, 0xCu);
    }

    *__error() = v15;
    _SASetCrashLogMessage(5053, "No binary for segment %s", [v14 UTF8String]);
    _os_crash();
    __break(1u);
LABEL_9:
    lengthCopy = gSASerializationEncodedVersionBeingDecoded();
    if (*lengthCopy >= 31)
    {
LABEL_23:
      v27 = *__error();
      v28 = _sa_logt();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(bufferCopy + 1);
        v30 = *lengthCopy;
        *buf = 67109376;
        *v37 = v29;
        *&v37[4] = 2048;
        *&v37[6] = v30;
        _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "segment version %d, but encoded version %ld", buf, 0x12u);
      }

      *__error() = v27;
      _SASetCrashLogMessage(5046, "segment version %d, but encoded version %ld", *(bufferCopy + 1), *lengthCopy);
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    v16 = *gBinaryBeingDecoded(&gBinaryBeingDecoded);
    if (!v16)
    {
LABEL_26:
      v31 = *__error();
      v32 = _sa_logt();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = *(bufferCopy + 1);
        v34 = *lengthCopy;
        *buf = 67109376;
        *v37 = v33;
        *&v37[4] = 2048;
        *&v37[6] = v34;
        _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "Segment version %d, encoded version %ld, no gBinaryBeingDecoded", buf, 0x12u);
      }

      *__error() = v31;
      _SASetCrashLogMessage(5047, "Segment version %d, encoded version %ld, no gBinaryBeingDecoded", *(bufferCopy + 1), *lengthCopy);
      _os_crash();
      __break(1u);
LABEL_29:
      v35 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASegment version" userInfo:0];
      objc_exception_throw(v35);
    }

    lengthCopy = v16;
    v14 = SANSStringForCString(bufferCopy + 18);
  }

  if (!v14)
  {
LABEL_17:
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [lengthCopy debugDescription];
      uTF8String = [v23 UTF8String];
      *buf = 136315138;
      *v37 = uTF8String;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "No name for segment in %s", buf, 0xCu);
    }

    *__error() = v21;
    v25 = [lengthCopy debugDescription];
    _SASetCrashLogMessage(5054, "No name for segment in %s", [v25 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v17 = [(SABinary *)lengthCopy segmentWithCleanName:v14 length:*(bufferCopy + 90) offsetIntoBinary:*(bufferCopy + 82)];

  return v17;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(buffer + 1) >= 2u)
  {
    if (length <= 0x71)
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        lengthCopy = length;
        v20 = 2048;
        v21 = 114;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASegment v2 struct %lu", buf, 0x16u);
      }

      *__error() = v16;
      _SASetCrashLogMessage(5063, "bufferLength %lu < serialized SASegment v2 struct %lu", length, 114);
      _os_crash();
      __break(1u);
    }

    v10 = *(buffer + 98);
    v11 = objc_opt_class();
    v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
    v13 = *(buffer + 106);
    v14 = objc_opt_class();
    v15 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v13, dictionary, bufferDictionary, v14);
  }
}

@end