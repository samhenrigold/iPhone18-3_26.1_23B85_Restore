@interface MXSessionBase
- (MXSessionBase)init;
- (id)copyProperties:(id)properties outPropertyErrors:(id *)errors;
- (id)copyPropertiesInternal:(id)internal outPropertyErrors:(id *)errors;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)setOrderedProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setOrderedPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setPropertyForKey:(id)key value:(id)value;
- (void)dealloc;
@end

@implementation MXSessionBase

- (MXSessionBase)init
{
  v4.receiver = self;
  v4.super_class = MXSessionBase;
  v2 = [(MXSessionBase *)&v4 init];
  if (v2)
  {
    v2->_ID = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{+[MXSessionBase generateSessionID](MXSessionBase, "generateSessionID")}];
  }

  return v2;
}

- (void)dealloc
{
  self->_ID = 0;

  self->_parentCoreSession = 0;
  v3.receiver = self;
  v3.super_class = MXSessionBase;
  [(MXSessionBase *)&v3 dealloc];
}

- (int)setPropertyForKey:(id)key value:(id)value
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (([objc_opt_class() isNonSerializedSetProperty:key] & 1) != 0 || (isActive = objc_msgSend(objc_opt_class(), "isNonSerializedSetPropertyWhenSessionIsInactive:", key), isActive) && (isActive = objc_msgSend_isActive(-[MXSessionBase parentCoreSession](self, "parentCoreSession")), (isActive & 1) == 0))
  {
    v7 = [(MXSessionBase *)self setPropertyForKeyInternal:key value:value fromPropertiesBatch:0];
    *(v14 + 6) = v7;
  }

  else
  {
    v10 = MXGetSerialQueue(isActive, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__MXSessionBase_setPropertyForKey_value___block_invoke;
    v12[3] = &unk_1E7AE70A8;
    v12[4] = self;
    v12[5] = key;
    v12[6] = value;
    v12[7] = &v13;
    MXDispatchAsyncAndWait("[MXSessionBase setPropertyForKey:value:]", "MXSessionBase.m", 113, 0, 0, v10, v12);
    v7 = *(v14 + 6);
  }

  _Block_object_dispose(&v13, 8);
  return v7;
}

void *__41__MXSessionBase_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [objc_opt_class() isNonSerializedCopyProperty:key];
  if (v7)
  {
    v9 = [(MXSessionBase *)self copyPropertyForKeyInternal:key valueOut:out];
    *(v14 + 6) = v9;
  }

  else
  {
    v10 = MXGetSerialQueue(v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MXSessionBase_copyPropertyForKey_valueOut___block_invoke;
    v12[3] = &unk_1E7AE70D0;
    v12[4] = self;
    v12[5] = key;
    v12[6] = &v13;
    v12[7] = out;
    MXDispatchAsyncAndWait("[MXSessionBase copyPropertyForKey:valueOut:]", "MXSessionBase.m", 143, 0, 0, v10, v12);
    v9 = *(v14 + 6);
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void *__45__MXSessionBase_copyPropertyForKey_valueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPropertyForKey:*(a1 + 40) valueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)setProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v31 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(properties);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([objc_opt_class() isNonSerializedSetProperty:v12] & 1) == 0)
        {
          isActive = [objc_opt_class() isNonSerializedSetPropertyWhenSessionIsInactive:v12];
          if (!isActive || (isActive = objc_msgSend_isActive([(MXSessionBase *)self parentCoreSession]), (isActive & 1) != 0))
          {
            v16 = MXGetSerialQueue(isActive, v14);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __78__MXSessionBase_setProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke;
            v20[3] = &unk_1E7AE70F8;
            v20[4] = self;
            v20[5] = properties;
            v21 = strategyCopy;
            v20[6] = &v26;
            v20[7] = errors;
            MXDispatchAsyncAndWait("[MXSessionBase setProperties:usingErrorHandlingStrategy:outPropertiesErrors:]", "MXSessionBase.m", 173, 0, 0, v16, v20);
            if (errors)
            {
              v17 = *errors;
            }

            goto LABEL_14;
          }
        }
      }

      v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(MXSessionBase *)self setPropertiesInternal:properties usingErrorHandlingStrategy:strategyCopy outPropertiesErrors:errors];
  *(v27 + 6) = v15;
LABEL_14:
  v18 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  return v18;
}

id __78__MXSessionBase_setProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v63 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  errorsCopy = errors;
  if (internal)
  {
    if (dword_1EB75DE40)
    {
      v52 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintDictionary(internal);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    getSetPropertiesOrder = [objc_opt_class() getSetPropertiesOrder];
    v12 = [getSetPropertiesOrder countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(getSetPropertiesOrder);
          }

          v16 = *(*(&v47 + 1) + 8 * i);
          v17 = [internal objectForKey:v16];
          if (v17)
          {
            v59 = v16;
            v60 = v17;
            [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v60, &v59, 1)}];
          }
        }

        v13 = [getSetPropertiesOrder countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v13);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [internal countByEnumeratingWithState:&v43 objects:v58 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(internal);
          }

          v22 = *(*(&v43 + 1) + 8 * j);
          if (([objc_msgSend(objc_opt_class() "getSetPropertiesOrder")] & 1) == 0)
          {
            v56 = v22;
            v57 = [internal objectForKey:v22];
            [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v57, &v56, 1)}];
          }
        }

        v19 = [internal countByEnumeratingWithState:&v43 objects:v58 count:16];
      }

      while (v19);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = [v9 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v23)
    {
      v24 = v23;
      v37 = 0;
      v25 = *v40;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v9);
          }

          v27 = *(*(&v39 + 1) + 8 * k);
          v28 = objc_autoreleasePoolPush();
          v29 = [objc_msgSend(v27 "allKeys")];
          v30 = [v27 objectForKey:v29];
          if (v30 == [MEMORY[0x1E695DFB0] null])
          {
            v31 = 0;
          }

          else
          {
            v31 = v30;
          }

          v32 = [(MXSessionBase *)self setPropertyForKeyInternal:v29 value:v31 fromPropertiesBatch:internal];
          v53 = v29;
          v54 = [MEMORY[0x1E696AD98] numberWithInt:v32];
          [v38 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v54, &v53, 1)}];
          if (strategyCopy == 2)
          {
            if (v32)
            {
              v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, errorsCopy);
            }
          }

          else if (strategyCopy == 1 && v32)
          {
            [MXSessionBase setPropertiesInternal:v28 usingErrorHandlingStrategy:v62 outPropertiesErrors:?];
            goto LABEL_44;
          }

          objc_autoreleasePoolPop(v28);
        }

        v24 = [v9 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v24);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    [MXSessionBase setPropertiesInternal:v62 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_44:
    v37 = v62[0];
  }

  if (errorsCopy)
  {
    *errorsCopy = v38;
  }

  else
  {
  }

  return v37;
}

- (int)setOrderedProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v31 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(properties);
        }

        v12 = [objc_msgSend(*(*(&v22 + 1) + 8 * i) "allKeys")];
        if (([objc_opt_class() isNonSerializedSetProperty:v12] & 1) == 0)
        {
          isActive = [objc_opt_class() isNonSerializedSetPropertyWhenSessionIsInactive:v12];
          if (!isActive || (isActive = objc_msgSend_isActive([(MXSessionBase *)self parentCoreSession]), (isActive & 1) != 0))
          {
            v16 = MXGetSerialQueue(isActive, v14);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __85__MXSessionBase_setOrderedProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke;
            v20[3] = &unk_1E7AE70F8;
            v20[4] = self;
            v20[5] = properties;
            v21 = strategyCopy;
            v20[6] = &v26;
            v20[7] = errors;
            MXDispatchAsyncAndWait("[MXSessionBase setOrderedProperties:usingErrorHandlingStrategy:outPropertiesErrors:]", "MXSessionBase.m", 301, 0, 0, v16, v20);
            if (errors)
            {
              v17 = *errors;
            }

            goto LABEL_14;
          }
        }
      }

      v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(MXSessionBase *)self setOrderedPropertiesInternal:properties usingErrorHandlingStrategy:strategyCopy outPropertiesErrors:errors];
  *(v27 + 6) = v15;
LABEL_14:
  v18 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  return v18;
}

id __85__MXSessionBase_setOrderedProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setOrderedProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setOrderedPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v37 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = internal;
  errorsCopy = errors;
  if (internal)
  {
    if (dword_1EB75DE40)
    {
      v32 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintCollection(obj);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v25 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [objc_msgSend(v15 "allKeys")];
          v18 = [v15 objectForKey:v17];
          if (v18 == [MEMORY[0x1E695DFB0] null])
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v20 = [(MXSessionBase *)self setPropertyForKeyInternal:v17 value:v19 fromPropertiesBatch:0];
          v33 = v17;
          v34 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
          if (strategyCopy == 2)
          {
            if (v20)
            {
              v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, errorsCopy);
            }
          }

          else if (strategyCopy == 1 && v20)
          {
            [MXSessionBase setOrderedPropertiesInternal:v16 usingErrorHandlingStrategy:v36 outPropertiesErrors:?];
            goto LABEL_26;
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    [MXSessionBase setOrderedPropertiesInternal:v36 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_26:
    v25 = v36[0];
  }

  if (errorsCopy)
  {
    *errorsCopy = v9;
  }

  else
  {
  }

  return v25;
}

- (id)copyProperties:(id)properties outPropertyErrors:(id *)errors
{
  v29 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [properties countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(properties);
        }

        v10 = [objc_opt_class() isNonSerializedCopyProperty:*(*(&v18 + 1) + 8 * v9)];
        if ((v10 & 1) == 0)
        {
          v13 = MXGetSerialQueue(v10, v11);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __50__MXSessionBase_copyProperties_outPropertyErrors___block_invoke;
          v17[3] = &unk_1E7AE70D0;
          v17[4] = self;
          v17[5] = properties;
          v17[6] = &v22;
          v17[7] = errors;
          MXDispatchAsyncAndWait("[MXSessionBase copyProperties:outPropertyErrors:]", "MXSessionBase.m", 401, 0, 0, v13, v17);
          if (errors)
          {
            v14 = *errors;
          }

          goto LABEL_12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [properties countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(MXSessionBase *)self copyPropertiesInternal:properties outPropertyErrors:errors];
  v23[5] = v12;
LABEL_12:
  v15 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v15;
}

id __50__MXSessionBase_copyProperties_outPropertyErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyProperties:*(a1 + 40) outPropertyErrors:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (id)copyPropertiesInternal:(id)internal outPropertyErrors:(id *)errors
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [internal countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(internal);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v18 = 0;
        v13 = [(MXSessionBase *)self copyPropertyForKeyInternal:v11 valueOut:&v18];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v18 == 0;
        }

        if (!v14)
        {
          [v17 setObject:? forKey:?];
        }

        [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v13), v11}];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [internal countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if (errors)
  {
    *errors = v6;
  }

  else
  {
  }

  return v17;
}

- (uint64_t)setPropertiesInternal:(_DWORD *)a1 usingErrorHandlingStrategy:outPropertiesErrors:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setOrderedPropertiesInternal:(_DWORD *)a1 usingErrorHandlingStrategy:outPropertiesErrors:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

@end