void _BSXPCEncodeDictionaryWithKey(void *a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v22[3];
  if (!v7)
  {
    v7 = v22[1];
  }

  v8 = v7;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v22[3];
  v22[3] = v9;

  if (v5)
  {
    if (!v8 || MEMORY[0x193AD5A20](v8) != MEMORY[0x1E69E9E80])
    {
      v11 = 299;
LABEL_24:
      _BSXPCEncodeDictionaryWithKey_cold_1(v11);
    }
  }

  else if (!v8 || MEMORY[0x193AD5A20](v8) != MEMORY[0x1E69E9E50])
  {
    v11 = 298;
    goto LABEL_24;
  }

  v6[2](v6, v9);
  if (v9 && xpc_dictionary_get_count(v9))
  {
    if (v5)
    {
      v12 = [v5 UTF8String];
      v13 = v8;
      v14 = v9;
      if (v12)
      {
        if (v8)
        {
          v15 = v14;
          if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E80])
          {
            xpc_dictionary_set_value(v13, v12, v15);
          }
        }
      }

      else
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void RBSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
        [v20 handleFailureInFunction:v21 file:@"RBSXPCUtilities_Project.h" lineNumber:123 description:@"key must not be nil"];
      }
    }

    else
    {
      v16 = v8;
      v17 = v9;
      if (v8)
      {
        v18 = v17;
        if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E80])
        {
          xpc_array_append_value(v16, v18);
        }
      }
    }
  }

  v19 = _BSXPCPopEncodingContext(v22, v8);
}

void sub_18E8AE690()
{
  if (v0)
  {
    JUMPOUT(0x18E8AE698);
  }

  JUMPOUT(0x18E8AE69CLL);
}

uint64_t getprewarm_for_launchSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getprewarm_for_launchSymbolLoc_ptr;
  v6 = getprewarm_for_launchSymbolLoc_ptr;
  if (!getprewarm_for_launchSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getprewarm_for_launchSymbolLoc_block_invoke;
    v2[3] = &unk_1E7276728;
    v2[4] = &v3;
    __getprewarm_for_launchSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18E8AEA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id rbs_general_log(uint64_t a1)
{
  if (rbs_general_log_onceToken != -1)
  {
    rbs_general_log_cold_1();
  }

  v2 = rbs_general_log___logger;

  return v2;
}

void _RBSXPCEncodeObjectForKey(void *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v47 = a1;
  v5 = a2;
  v48 = a3;
  context = objc_autoreleasePoolPush();
  aClass = objc_opt_class();
  if ([v5 RBSIsXPCObject])
  {
    v6 = v47[3];
    if (v48)
    {
      if (!v6)
      {
        v6 = v47[1];
      }

      v7 = v6;
      xpc_dictionary_set_value(v7, [v48 UTF8String], v5);
    }

    else
    {
      if (!v6)
      {
        v6 = v47[1];
      }

      v16 = v6;
      xpc_array_append_value(v16, v5);
    }

    goto LABEL_42;
  }

  if ((_NSIsNSArray() & 1) != 0 || (_NSIsNSSet() & 1) != 0 || _NSIsNSOrderedSet())
  {
    v8 = v47;
    v9 = v48;
    v10 = v5;
    v11 = v8[3];
    if (!v11)
    {
      v11 = v8[1];
    }

    v12 = v11;
    v13 = xpc_array_create(0, 0);
    objc_storeStrong(v8 + 3, v13);
    if (v9)
    {
      if (v12 && MEMORY[0x193AD5A20](v12) == MEMORY[0x1E69E9E80])
      {
        goto LABEL_22;
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeCollectionWithKey(RBSXPCCoder *__strong, NSString *__strong, __strong id<NSFastEnumeration>)"}];
      [v14 handleFailureInFunction:v15 file:@"RBSXPCCoder.m" lineNumber:269 description:&stru_1F01CD8F0];
    }

    else
    {
      if (v12 && MEMORY[0x193AD5A20](v12) == MEMORY[0x1E69E9E50])
      {
        goto LABEL_22;
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeCollectionWithKey(RBSXPCCoder *__strong, NSString *__strong, __strong id<NSFastEnumeration>)"}];
      [v14 handleFailureInFunction:v15 file:@"RBSXPCCoder.m" lineNumber:268 description:&stru_1F01CD8F0];
    }

LABEL_22:
    if (!v10)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeCollectionWithKey(RBSXPCCoder *__strong, NSString *__strong, __strong id<NSFastEnumeration>)"}];
      [v41 handleFailureInFunction:v42 file:@"RBSXPCCoder.m" lineNumber:270 description:&stru_1F01CD8F0];
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v18)
    {
      v19 = *v59;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(v17);
          }

          _RBSXPCEncodeObjectForKey(v8, *(*(&v58 + 1) + 8 * i), 0);
        }

        v18 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v18);
    }

    if (v13)
    {
      if (v9)
      {
        v21 = v9;
        v22 = [v9 UTF8String];
        v23 = v12;
        v24 = v13;
        if (v22)
        {
          if (v12)
          {
            v25 = v24;
            if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E50])
            {
              xpc_dictionary_set_value(v23, v22, v25);
            }
          }
        }

        else
        {
          v43 = [MEMORY[0x1E696AAA8] currentHandler];
          v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void RBSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
          [v43 handleFailureInFunction:v44 file:@"RBSXPCUtilities_Project.h" lineNumber:123 description:@"key must not be nil"];
        }
      }

      else
      {
        v26 = v12;
        v27 = v13;
        if (v12)
        {
          v28 = v27;
          if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E50])
          {
            xpc_array_append_value(v26, v28);
          }
        }
      }
    }

    v29 = _BSXPCPopEncodingContext(v8, v12);

    goto LABEL_42;
  }

  if (_NSIsNSDictionary())
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = ___RBSXPCEncodeObjectForKey_block_invoke;
    v55[3] = &unk_1E7276298;
    v56 = v5;
    v57 = v47;
    _BSXPCEncodeDictionaryWithKey(v57, v48, v55);
  }

  else if ([v5 supportsRBSXPCSecureCoding])
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = ___RBSXPCEncodeObjectForKey_block_invoke_2;
    v52[3] = &unk_1E7276298;
    v53 = v5;
    v54 = v47;
    _BSXPCEncodeDictionaryWithKey(v54, v48, v52);
  }

  else if ([(objc_class *)aClass supportsSecureCoding])
  {
    v30 = _CFXPCCreateXPCObjectFromCFObject();
    if (v30)
    {
      v31 = v47[3];
      if (v48)
      {
        if (!v31)
        {
          v31 = v47[1];
        }

        v32 = v31;
        xpc_dictionary_set_value(v32, [v48 UTF8String], v30);
      }

      else
      {
        if (!v31)
        {
          v31 = v47[1];
        }

        v40 = v31;
        xpc_array_append_value(v40, v30);
      }
    }

    else
    {
      v37 = v47;
      if (!v47[4])
      {
        v38 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
        v37 = v47;
        v39 = v47[4];
        v47[4] = v38;
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = ___RBSXPCEncodeObjectForKey_block_invoke_3;
      v49[3] = &unk_1E7276298;
      v50 = v37;
      v51 = v5;
      _BSXPCEncodeDictionaryWithKey(v50, v48, v49);
    }
  }

  else
  {
    v33 = MEMORY[0x1E695DF30];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = NSStringFromClass(aClass);
    [v33 raise:*MEMORY[0x1E695D940] format:{@"%@ could not encode object %@ because it supports neither RBSXPC[Secure]Coding nor NSSecureCoding.", v35, v36}];
  }

LABEL_42:
  objc_autoreleasePoolPop(context);
}

void sub_18E8AF4CC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18E8AF49CLL);
  }

  JUMPOUT(0x18E8AF4E4);
}

uint64_t shared_cache_page_prewarmingLibraryCore(uint64_t a1)
{
  if (!shared_cache_page_prewarmingLibraryCore_frameworkLibrary)
  {
    shared_cache_page_prewarmingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return shared_cache_page_prewarmingLibraryCore_frameworkLibrary;
}

void RBSSerializeStringToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = a1;
    xdict = a2;
    xpc_dictionary_set_string(xdict, a3, [a1 UTF8String]);
  }
}

id RBSXPCDictionaryGetValue(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    RBSXPCDictionaryGetValue_cold_1();
    if (!v6)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      if (!a3)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  if (MEMORY[0x193AD5A20](v6) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_4;
  }

  v11 = xpc_dictionary_get_value(v6, a2);
  v9 = v11;
  if (a3)
  {
    v12 = v11;
    v7 = v12;
    if (v12)
    {
      if (MEMORY[0x193AD5A20](v12) == a3)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_5:
    v9 = v8;
  }

LABEL_6:

  return v9;
}

void *_BSXPCPopEncodingContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *(v3 + 3);
  if (!v5)
  {
    v5 = *(v3 + 1);
  }

  v6 = v5;
  objc_storeStrong(v3 + 3, a2);
  v7 = *(v3 + 3);
  if (v7 == *(v3 + 1))
  {
    *(v3 + 3) = 0;
  }

  return v5;
}

BOOL RBSAtomicGetFlag(atomic_uint *a1, uint64_t a2)
{
  if (!a1)
  {
    RBSAtomicGetFlag_cold_1();
  }

  v2 = 1;
  atomic_compare_exchange_strong_explicit(a1, &v2, v2, memory_order_relaxed, memory_order_relaxed);
  return v2 == 1;
}

BOOL RBSAtomicSetFlag(uint64_t a1, atomic_uint *a2)
{
  if (!a2)
  {
    RBSAtomicSetFlag_cold_1();
  }

  v2 = a1 ^ 1;
  atomic_compare_exchange_strong_explicit(a2, &v2, a1, memory_order_relaxed, memory_order_relaxed);
  return v2 == (a1 ^ 1);
}

id _BSXPCDecodeObjectFromContext(void *a1, void *a2, void *a3, objc_class *a4, uint64_t a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v85 = a2;
  v82 = a3;
  if (!a4)
  {
    _BSXPCDecodeObjectFromContext_cold_1();
  }

  v10 = v9 + 3;
  v11 = v9[3];
  if (!v11)
  {
    v11 = v9[1];
  }

  v84 = v11;
  v12 = MEMORY[0x1E69E9E38];
  if (v85)
  {
    v13 = v85;
  }

  else
  {
    v13 = MEMORY[0x1E69E9E38];
  }

  objc_storeStrong(v9 + 3, v13);
  context = objc_autoreleasePoolPush();
  v14 = v9;
  aClass = a4;
  if (!a4)
  {
    v76 = [MEMORY[0x1E696AAA8] currentHandler];
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(RBSXPCCoder *__strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    [v76 handleFailureInFunction:v77 file:@"RBSXPCCoder.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"expectedClass != nil"}];
  }

  v15 = *v10;
  if (!*v10)
  {
    v15 = v14[1];
  }

  v16 = v15;
  v17 = v16;
  if (v16 == v12)
  {
    goto LABEL_35;
  }

  v18 = MEMORY[0x193AD5A20](v16);
  v19 = NSClassFromString(&cfstr_OsXpcObject.isa);
  v20 = v19;
  if (([(objc_class *)a4 isSubclassOfClass:v19]& 1) != 0)
  {
    v21 = v17;
    goto LABEL_15;
  }

  v23 = [(objc_class *)a4 isSubclassOfClass:objc_opt_class()];
  if (v23 & 1) != 0 || (v23 = [(objc_class *)a4 isSubclassOfClass:objc_opt_class()], (v23) || (v23 = [(objc_class *)a4 isSubclassOfClass:objc_opt_class()], (v23))
  {
    if (a5)
    {
      if (v18 != MEMORY[0x1E69E9E50])
      {
        v24 = rbs_coder_log(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          _BSXPCDecodeObjectFromContext_cold_9();
        }

        v25 = @"Invalid decoding context for collection";
LABEL_26:

LABEL_27:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:v25];
LABEL_35:
        v21 = 0;
        goto LABEL_36;
      }

      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v96 = 0;
      v97 = &v96;
      v98 = 0x3032000000;
      v99 = __Block_byref_object_copy_;
      v100 = __Block_byref_object_dispose_;
      v101 = &stru_1F01CD8F0;
      applier = MEMORY[0x1E69E9820];
      v89 = 3221225472;
      v90 = ___BSXPCDecodeObject_block_invoke;
      v91 = &unk_1E72762C0;
      v92 = v14;
      v95 = a5;
      v40 = v39;
      v93 = v40;
      v94 = &v96;
      v41 = xpc_array_apply(v17, &applier);
      if (v41)
      {
        v21 = [[aClass alloc] initWithArray:v40];
      }

      else
      {
        v43 = rbs_coder_log(v41);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          _BSXPCDecodeObjectFromContext_cold_10();
        }

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to decode array: an object within the array failed to decode. %@", v97[5]}];
        v21 = 0;
      }

      _Block_object_dispose(&v96, 8);
      goto LABEL_15;
    }

    v33 = rbs_coder_log(v23);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromClass(aClass);
      _BSXPCDecodeObjectFromContext_cold_11(v34, &applier, v33);
    }

    v35 = MEMORY[0x1E695DF30];
    v36 = NSStringFromClass(aClass);
    [v35 raise:*MEMORY[0x1E695D940] format:{@"Attempted to decode a collection (%@) without specifying the class it contains", v36}];
LABEL_34:

    goto LABEL_35;
  }

  v42 = [(objc_class *)a4 isSubclassOfClass:objc_opt_class()];
  if (v42)
  {
    if (a5)
    {
      if (v18 != MEMORY[0x1E69E9E80])
      {
        v24 = rbs_coder_log(v42);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          _BSXPCDecodeObjectFromContext_cold_5();
        }

        v25 = @"Invalid decoding context for dictionary";
        goto LABEL_26;
      }

      v96 = 0;
      v97 = &v96;
      v98 = 0x3032000000;
      v99 = __Block_byref_object_copy_;
      v100 = __Block_byref_object_dispose_;
      v101 = 0;
      v57 = [MEMORY[0x1E695DF90] dictionary];
      applier = MEMORY[0x1E69E9820];
      v89 = 3221225472;
      v90 = ___BSXPCDecodeObject_block_invoke_205;
      v91 = &unk_1E72762E8;
      v92 = v14;
      v95 = a5;
      v58 = v57;
      v93 = v58;
      v94 = &v96;
      v59 = xpc_dictionary_apply(v17, &applier);
      if (v59)
      {
        v21 = [[aClass alloc] initWithDictionary:v58];
      }

      else
      {
        v61 = rbs_coder_log(v59);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          _BSXPCDecodeObjectFromContext_cold_6();
        }

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to decode dictionary key %@", v97[5]}];
        v21 = 0;
      }

      _Block_object_dispose(&v96, 8);
LABEL_15:
      if (!v21)
      {
        goto LABEL_36;
      }

      goto LABEL_16;
    }

    if (xpc_dictionary_get_string(v17, "bsx_index"))
    {
      if (v18 != MEMORY[0x1E69E9E80])
      {
        v78 = [MEMORY[0x1E696AAA8] currentHandler];
        v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(RBSXPCCoder *__strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
        [v78 handleFailureInFunction:v79 file:@"RBSXPCCoder.m" lineNumber:598 description:@"RBSXPCEncodingNSSecure expects a dictionary decodingContext"];
      }

      goto LABEL_62;
    }

    goto LABEL_54;
  }

  if (v18 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_54;
  }

  if (([(objc_class *)a4 supportsRBSXPCSecureCoding]& 1) != 0)
  {
    v55 = RBSCreateDeserializedStringFromXPCDictionaryWithKey(v17, "bsx_class");
    if (!v55)
    {
      v80 = [MEMORY[0x1E696AAA8] currentHandler];
      v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(RBSXPCCoder *__strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
      [v80 handleFailureInFunction:v81 file:@"RBSXPCCoder.m" lineNumber:576 description:@"we already verified that this must be true"];
    }

    v56 = NSClassFromString(v55);
    if (v56)
    {
      if (aClass == v56)
      {
        v56 = aClass;
        goto LABEL_105;
      }

      if (([(objc_class *)aClass isSubclassOfClass:v56]& 1) != 0)
      {
        v56 = aClass;
LABEL_105:
        v21 = [[v56 alloc] initWithRBSXPCCoder:v14];

        goto LABEL_15;
      }

      v73 = [(objc_class *)v56 isSubclassOfClass:aClass];
      if (v73)
      {
        goto LABEL_105;
      }

      v74 = rbs_coder_log(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        NSStringFromClass(aClass);
        objc_claimAutoreleasedReturnValue();
        _BSXPCDecodeObjectFromContext_cold_3();
      }

      v75 = MEMORY[0x1E695DF30];
      v69 = NSStringFromClass(aClass);
      [v75 raise:*MEMORY[0x1E695D940] format:{@"Decoded class %@ is not compatible with expected class %@", v55, v69, v82, context, v84}];
    }

    else
    {
      v67 = rbs_coder_log(0);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        NSStringFromClass(aClass);
        objc_claimAutoreleasedReturnValue();
        _BSXPCDecodeObjectFromContext_cold_4();
      }

      v68 = MEMORY[0x1E695DF30];
      v69 = NSStringFromClass(aClass);
      [v68 raise:*MEMORY[0x1E695D940] format:{@"Unable to reify class %@ for expected class %@", v55, v69, v82, context, v84}];
    }

    v56 = 0;
    goto LABEL_105;
  }

  v60 = [(objc_class *)a4 supportsSecureCoding];
  if (!v60)
  {
    v62 = rbs_coder_log(v60);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromClass(a4);
      _BSXPCDecodeObjectFromContext_cold_2(v63, &applier, v62);
    }

    v64 = MEMORY[0x1E695DF30];
    v65 = NSStringFromClass(aClass);
    [v64 raise:*MEMORY[0x1E695D940] format:{@"No valid encoding type could be determined for expected class: %@", v65}];

    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(RBSXPCCoder *__strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    [v36 handleFailureInFunction:v66 file:@"RBSXPCCoder.m" lineNumber:632 description:@"we should not have been able to vet the class without defining the encoding"];

    goto LABEL_34;
  }

  if (xpc_dictionary_get_string(v17, "bsx_index"))
  {
    if (a5)
    {
      v44 = [MEMORY[0x1E695DFD8] setWithObjects:{a4, a5, 0, v82, context, v84}];
      goto LABEL_63;
    }

LABEL_62:
    v44 = [MEMORY[0x1E695DFD8] setWithObjects:&aClass count:1];
LABEL_63:
    v45 = v44;
    if (!v14[5])
    {
      v46 = RBSDeserializeDataFromXPCDictionaryWithKey(v14[1], "bsx_archive");
      if ([v46 length])
      {
        v47 = v45;
        v48 = objc_alloc(MEMORY[0x1E696ACD0]);
        applier = 0;
        v49 = [v48 initForReadingFromData:v46 error:&applier];
        v50 = applier;
        v51 = v14[5];
        v14[5] = v49;

        v52 = [v14[5] setRequiresSecureCoding:1];
        if (v50)
        {
          v53 = rbs_coder_log(v52);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            _BSXPCDecodeObjectFromContext_cold_7();
          }

          v54 = v14[5];
          v14[5] = 0;
        }
      }

      else
      {
        v50 = rbs_coder_log(0);
        v47 = v45;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          _BSXPCDecodeObjectFromContext_cold_8();
        }
      }

      v45 = v47;
    }

    v70 = RBSDeserializeStringFromXPCDictionaryWithKey(v17, "bsx_index");
    v71 = v14[5];
    v86 = 0;
    v21 = [v71 decodeTopLevelObjectOfClasses:v45 forKey:v70 error:&v86];
    v72 = v86;
    if (v72)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Error during decoding of %@: %@", v70, v72}];
    }

    goto LABEL_15;
  }

LABEL_54:
  v21 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v21 && v18 == MEMORY[0x1E69E9F18])
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:xpc_uint64_get_value(v17)];
  }

  if (!v21)
  {
    v25 = @"Invalid decoding context for <CFXPCBridge>";
    goto LABEL_27;
  }

LABEL_16:
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v26 = rbs_coder_log(isKindOfClass);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      NSStringFromClass(aClass);
      objc_claimAutoreleasedReturnValue();
      _BSXPCDecodeObjectFromContext_cold_13();
    }

    v29 = MEMORY[0x1E695DF30];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromClass(aClass);
    [v29 raise:*MEMORY[0x1E695D940] format:{@"Decoded object class %@ does not match expected class %@", v31, v32}];
  }

LABEL_36:

  objc_storeStrong(v10, v11);
  v37 = *v10;
  if (*v10 == v14[1])
  {
    *v10 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v21;
}

void sub_18E8B0BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, Class aClass, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exception_object);
      JUMPOUT(0x18E8B004CLL);
    }

    v21 = objc_begin_catch(exception_object);
    v22 = rbs_coder_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(aClass);
      objc_claimAutoreleasedReturnValue();
      _BSXPCDecodeObjectFromContext_cold_12();
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18E8B0CD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18E8B0C68);
  }

  _Unwind_Resume(a1);
}

void sub_18E8B0CFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18E8B0D1CLL);
}

void sub_18E8B0D24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_18E8B0D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18E8B0D4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18E8B0E44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18E8B0D54);
  }

  _Unwind_Resume(a1);
}

const char *RBSCreateDeserializedStringFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    string = xpc_dictionary_get_string(v3, a2);
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:string encoding:4];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

id _BSXPCDecodeObjectForKey(void *a1, void *a2, objc_class *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (!v8)
  {
    _BSXPCDecodeObjectForKey_cold_1();
  }

  v9 = v7[3];
  if (!v9)
  {
    v9 = v7[1];
  }

  v10 = v9;
  v11 = RBSXPCDictionaryGetValue(v10, [v8 UTF8String], 0);

  v12 = _BSXPCDecodeObjectFromContext(v7, v11, v8, a3, a4);

  return v12;
}

uint64_t _RBSSandboxCanGetMachTaskName(int a1)
{
  if (getpid() == a1)
  {
    v1 = 1;
  }

  else
  {
    if (_RBSSandboxCanGetMachTaskName_onceToken != -1)
    {
      _RBSSandboxCanGetMachTaskName_cold_1();
    }

    v1 = _RBSSandboxCanGetMachTaskName_allowed;
  }

  return v1 & 1;
}

void RBSDispatchAsyncWithQoS(void *a1, dispatch_qos_class_t a2, void *a3)
{
  queue = a1;
  if (a2)
  {
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, 0, a3);
    dispatch_async(queue, v5);

    v6 = v5;
  }

  else
  {
    dispatch_async(queue, a3);
    v6 = queue;
  }
}

__CFString *NSStringFromRBSTerminationResistance(int a1)
{
  if (a1 > 29)
  {
    if (a1 == 30)
    {
      return @"NonInteractive";
    }

    if (a1 != 40)
    {
      if (a1 == 50)
      {
        return @"Absolute";
      }

      return @"(undefined)";
    }

    return @"Interactive";
  }

  else
  {
    if (!a1)
    {
      return @"(unknown)";
    }

    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return @"None";
      }

      return @"(undefined)";
    }

    return @"NotRunning";
  }
}

id rbs_process_log(uint64_t a1)
{
  if (rbs_process_log_onceToken != -1)
  {
    rbs_process_log_cold_1();
  }

  v2 = rbs_process_log___logger;

  return v2;
}

id RBSExtensionPointFromBundleDict(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"NSExtension"];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];

  if (!v3)
  {
    v4 = [v1 objectForKeyedSubscript:@"EXAppExtensionAttributes"];
    v3 = [v4 objectForKeyedSubscript:@"EXExtensionPointIdentifier"];
  }

  return v3;
}

void *RBObjectOfClassForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 objectForKey:a2];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id RBSStringForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = RBObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id RBSExecutablePathForPID()
{
  ProcessInfo = MEMORY[0x1EEE9AC00]();
  v1 = ProcessInfo;
  v8 = *MEMORY[0x1E69E9840];
  if (ProcessInfo >= 1 && (ProcessInfo = RBSandboxCanGetProcessInfo(ProcessInfo), (ProcessInfo & 1) != 0))
  {
    v2 = proc_pidpath(v1, buffer, 0x1000u);
    if (v2 < 1)
    {
      v3 = rbs_general_log(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        RBSExecutablePathForPID_cold_1();
      }

      v4 = 0;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v2 encoding:4];
      v4 = [v3 stringByStandardizingPath];
    }
  }

  else
  {
    v5 = rbs_general_log(ProcessInfo);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      RBSExecutablePathForPID_cold_2(v1);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t RBSandboxCanGetProcessInfo(int a1)
{
  if (getpid() == a1)
  {
    v1 = 1;
  }

  else
  {
    if (RBSandboxCanGetProcessInfo_onceToken != -1)
    {
      RBSandboxCanGetProcessInfo_cold_1();
    }

    v1 = RBSandboxCanGetProcessInfo_allowed;
  }

  return v1 & 1;
}

void OUTLINED_FUNCTION_21(uint64_t a1@<X0>, NSObject *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a5 = v10;
  a6 = v9;
  a7 = a1;
  a8 = v8;

  dispatch_async_and_wait(a2, &a3);
}

id RBSAppViewServiceMachServiceName(uint64_t a1)
{
  v1 = [@"com.apple.uikit.viewservice." stringByAppendingString:a1];
  v2 = [v1 length];
  if (v2 >= 0x3F)
  {
    v3 = 63;
  }

  else
  {
    v3 = v2;
  }

  v4 = [v1 substringToIndex:v3];

  return v4;
}

id rbs_monitor_log(uint64_t a1)
{
  if (rbs_monitor_log_onceToken != -1)
  {
    rbs_monitor_log_cold_1();
  }

  v2 = rbs_monitor_log___logger;

  return v2;
}

__CFString *NSStringFromRBSAcquisitionCompletionPolicy(uint64_t a1)
{
  v1 = @"(unknown)";
  if (!a1)
  {
    v1 = @"AfterValidation";
  }

  if (a1 == 1)
  {
    return @"AfterApplication";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_2_1(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_value(v2, a2, v3);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

id RBSXPCPackObject(void *a1)
{
  v1 = a1;
  values = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = _RBSIsXPCObject_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    RBSXPCPackObject_cold_1();
  }

  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = xpc_dictionary_create(RBSEncodedXPCTypeKey, &values, 1uLL);
    goto LABEL_9;
  }

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  if (v7)
  {
    v5 = xpc_dictionary_create(RBSEncodedCFTypeKey, &v7, 1uLL);
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

id rbs_message_log(uint64_t a1)
{
  if (rbs_message_log_onceToken != -1)
  {
    rbs_message_log_cold_1();
  }

  v2 = rbs_message_log___logger;

  return v2;
}

id rbs_assertion_log(uint64_t a1)
{
  if (rbs_assertion_log_onceToken != -1)
  {
    rbs_assertion_log_cold_1();
  }

  v2 = rbs_assertion_log___logger;

  return v2;
}

id RBSDeserializeDataFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = RBSCreateDeserializedDataFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

const void *RBSCreateDeserializedDataFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  length = 0;
  if (v3)
  {
    data = xpc_dictionary_get_data(v3, a2, &length);
    if (data)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEF0]);
      data = [v6 initWithBytes:data length:length];
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

char *RBSDeserializeStringFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = RBSCreateDeserializedStringFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

id RBSDictionaryForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = RBObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id RBSBundleIDForPID(int a1)
{
  if (getpid() == a1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    goto LABEL_17;
  }

  v1 = RBSExecutablePathForPID();
  if (!v1)
  {
    v2 = 0;
    goto LABEL_17;
  }

  v3 = objc_autoreleasePoolPush();
  [v1 UTF8String];
  v4 = xpc_bundle_create();
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = xpc_bundle_get_info_dictionary();
  if (!v5 || (string = xpc_dictionary_get_string(v5, [*MEMORY[0x1E695E4F0] UTF8String])) == 0)
  {

    goto LABEL_11;
  }

  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];

  if (!v2)
  {
LABEL_11:
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1];
    if (v7 && (v8 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle()) != 0)
    {
      v9 = v8;
      v2 = CFBundleGetIdentifier(v8);
      CFRelease(v9);
    }

    else
    {
      v2 = 0;
    }
  }

  objc_autoreleasePoolPop(v3);
LABEL_17:

  return v2;
}

uint64_t _RBShortBSDProcessInfoForPID(uint64_t a1, void *a2)
{
  v2 = a1;
  result = 0;
  if (v2 >= 1)
  {
    if (a2)
    {
      result = RBSandboxCanGetProcessInfo(v2);
      if (result)
      {
        if (proc_pidinfo(v2, 13, 0, a2, 64) == 64)
        {
          return 1;
        }

        else
        {
          v5 = __error();
          if (*v5 != 3)
          {
            v6 = rbs_general_log(v5);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              _RBShortBSDProcessInfoForPID_cold_1();
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t RBSPIDExists(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (getpid() == a1)
  {
    return 1;
  }

  if (a1 < 1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  return _RBShortBSDProcessInfoForPID(a1, v3);
}

void OUTLINED_FUNCTION_1_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return MEMORY[0x1EEDC70C8](v2, v1, a1);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id RBSXPCUnpackObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v3 = MEMORY[0x193AD5A20](v1);
  v4 = MEMORY[0x1E69E9E80];
  if (v3 == MEMORY[0x1E69E9E80])
  {
    v7 = xpc_dictionary_get_value(v2, "@");

    if (v7)
    {
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      goto LABEL_10;
    }
  }

  else
  {
  }

  v5 = v2;
  if (MEMORY[0x193AD5A20]() == v4)
  {
    v6 = xpc_dictionary_get_value(v5, "*");
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  v7 = v2;
LABEL_10:

  return v6;
}

uint64_t RBSDarwinRoleFromRBSRole(unsigned int a1)
{
  if (a1 > 8)
  {
    return 3;
  }

  else
  {
    return dword_18E8F7078[a1];
  }
}

__CFString *NSStringFromRBSTaskState(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E7276868[a1];
  }
}

void OUTLINED_FUNCTION_23(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

id rbs_connection_log(uint64_t a1)
{
  if (rbs_connection_log_onceToken != -1)
  {
    rbs_connection_log_cold_1();
  }

  v2 = rbs_connection_log___logger;

  return v2;
}

__CFString *NSStringFromRBSDebugState(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E7276890[a1];
  }
}

uint64_t RBSServiceInitialize(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __RBSServiceInitialize_block_invoke;
  block[3] = &unk_1E7276440;
  v8 = v1;
  v2 = RBSServiceInitialize_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&RBSServiceInitialize_onceToken, block);
  }

  v4 = RBSServiceInitialize___sharedInstance;
  v5 = RBSServiceInitialize___sharedInstance;

  return v4;
}

void __RBSServiceInitialize_block_invoke(uint64_t a1)
{
  v2 = [[RBSService alloc] _init];
  v3 = RBSServiceInitialize___sharedInstance;
  RBSServiceInitialize___sharedInstance = v2;

  objc_storeStrong((RBSServiceInitialize___sharedInstance + 8), *(a1 + 32));
  v4 = RBSServiceInitialize___sharedInstance;
  v5 = *(RBSServiceInitialize___sharedInstance + 32);

  [(RBSConnection *)v5 registerServiceDelegate:v4];
}

uint64_t __rbs_connection_log_block_invoke()
{
  rbs_connection_log___logger = os_log_create("com.apple.runningboard", "connection");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __rbs_process_log_block_invoke()
{
  rbs_process_log___logger = os_log_create("com.apple.runningboard", "process");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t RBSSandboxCanAccessMachService()
{
  if (RBSSandboxCanAccessMachService_onceToken != -1)
  {
    RBSSandboxCanAccessMachService_cold_1();
  }

  return RBSSandboxCanAccessMachService_canAccess;
}

uint64_t __RBSSandboxCanAccessMachService_block_invoke()
{
  getpid();
  [@"com.apple.runningboard" UTF8String];
  result = sandbox_check();
  RBSSandboxCanAccessMachService_canAccess = result == 0;
  return result;
}

uint64_t __rbs_assertion_log_block_invoke()
{
  rbs_assertion_log___logger = os_log_create("com.apple.runningboard", "assertion");

  return MEMORY[0x1EEE66BB8]();
}

void _BSXPCEncodeDictionaryWithKey_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeDictionaryWithKey(RBSXPCCoder *__strong, NSString *__strong, void (^__strong)(__strong xpc_object_t))"}];
  [v3 handleFailureInFunction:v2 file:@"RBSXPCCoder.m" lineNumber:a1 description:&stru_1F01CD8F0];
}

uint64_t __rbs_message_log_block_invoke()
{
  rbs_message_log___logger = os_log_create("com.apple.runningboard", "message");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __rbs_general_log_block_invoke()
{
  rbs_general_log___logger = os_log_create("com.apple.runningboard", "general");

  return MEMORY[0x1EEE66BB8]();
}

BOOL OUTLINED_FUNCTION_22(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id rbs_coder_log(uint64_t a1)
{
  if (rbs_coder_log_onceToken != -1)
  {
    rbs_coder_log_cold_1();
  }

  v2 = rbs_coder_log___logger;

  return v2;
}

__CFString *NSStringFromRBSLegacyReason(uint64_t a1)
{
  if (a1 > 9999)
  {
    if (a1 > 10007)
    {
      if (a1 > 50003)
      {
        switch(a1)
        {
          case 50004:
            return @"FinishTaskAfterWatchConnectivity";
          case 60000:
            return @"Domain";
          case 60001:
            return @"Custom";
        }
      }

      else
      {
        switch(a1)
        {
          case 10008:
            return @"PIP";
          case 50000:
            return @"FinishTaskAfterBackgroundContentFetching";
          case 50003:
            return @"FinishTaskAfterNotificationAction";
        }
      }
    }

    else
    {
      if (a1 > 10004)
      {
        if (a1 == 10005)
        {
          return @"Continuous";
        }

        if (a1 == 10006)
        {
          return @"BackgroundContentFetching";
        }

        return @"NotificationAction";
      }

      switch(a1)
      {
        case 10000:
          return @"Resume";
        case 10002:
          return @"TransientWakeup";
        case 10004:
          return @"FinishTaskUnbounded";
      }
    }

    return &stru_1F01CD8F0;
  }

  result = @"None";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = @"MediaPlayback";
      break;
    case 2:
      result = @"Location";
      break;
    case 3:
      result = @"ExternalAccessory";
      break;
    case 4:
      result = @"FinishTask";
      break;
    case 5:
      result = @"Bluetooth";
      break;
    case 7:
      result = @"BackgroundUI";
      break;
    case 8:
      result = @"InterAppAudioStreaming";
      break;
    case 9:
      result = @"ViewService";
      break;
    case 10:
      result = @"NewsstandDownload";
      break;
    case 12:
      result = @"VoIP";
      break;
    case 13:
      result = @"Extension";
      break;
    case 16:
      result = @"WatchConnectivity";
      break;
    case 18:
      result = @"ComplicationUpdate";
      break;
    case 19:
      result = @"WorkoutProcessing";
      break;
    case 20:
      result = @"ComplicationPushUpdate";
      break;
    case 21:
      result = @"BackgroundLocationProcessing";
      break;
    case 23:
      result = @"AudioRecording";
      break;
    default:
      return &stru_1F01CD8F0;
  }

  return result;
}

id NSStringFromRBSLegacyFlags(char a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = @" AllowIdleSleep";
  v4 = &stru_1F01CD8F0;
  if ((a1 & 4) == 0)
  {
    v3 = &stru_1F01CD8F0;
  }

  v5 = @" AllowSuspendOnSleep";
  if ((a1 & 0x10) == 0)
  {
    v5 = &stru_1F01CD8F0;
  }

  v6 = @" PreventTaskSuspend";
  if ((a1 & 1) == 0)
  {
    v6 = &stru_1F01CD8F0;
  }

  v7 = @" PreventTaskThrottleDown";
  if ((a1 & 2) == 0)
  {
    v7 = &stru_1F01CD8F0;
  }

  v8 = @" PreventThrottleDownUI";
  if ((a1 & 0x20) == 0)
  {
    v8 = &stru_1F01CD8F0;
  }

  if ((a1 & 8) != 0)
  {
    v4 = @" WantsForegroundResourcePriority";
  }

  v9 = [v2 initWithFormat:@"(%@%@%@%@%@%@)", v3, v5, v6, v7, v8, v4];

  return v9;
}

double RBSDeserializeDoubleFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  value = 0.0;
  if (a1 && a2)
  {
    v3 = xpc_dictionary_get_value(a1, a2);
    v4 = v3;
    if (v3 && MEMORY[0x193AD5A20](v3) == MEMORY[0x1E69E9E88])
    {
      value = xpc_double_get_value(v4);
    }
  }

  return value;
}

void RBSSerializeDoubleToXPCDictionaryWithKey(xpc_object_t xdict, const char *key, double value)
{
  if (xdict)
  {
    if (key)
    {
      xpc_dictionary_set_double(xdict, key, value);
    }
  }
}

void *__getprewarm_for_launchSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = shared_cache_page_prewarmingLibraryCore(&v5);
  if (!v2)
  {
    __getprewarm_for_launchSymbolLoc_block_invoke_cold_1(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "prewarm_for_launch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getprewarm_for_launchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromRBSDurationEndPolicy(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(invalid end policy)";
  }

  else
  {
    return off_1E7276478[a1];
  }
}

id RBSEndowmentEncode(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *uuid = 0;
      v15 = 0;
      [v1 getUUIDBytes:uuid];
      v2 = xpc_uuid_create(uuid);
      v3 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [v1 _endpoint];
        v3 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v2 = _CFXPCCreateXPCObjectFromCFObject();
          v3 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = xpc_array_create(0, 0);
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __RBSEndowmentEncode_block_invoke;
            v12[3] = &unk_1E72767A0;
            v2 = v6;
            v13 = v2;
            [v1 enumerateObjectsUsingBlock:v12];
            count = xpc_array_get_count(v2);
            if (count != [v1 count])
            {

              v2 = 0;
            }

            v3 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = xpc_dictionary_create(0, 0, 0);
              v10[0] = MEMORY[0x1E69E9820];
              v10[1] = 3221225472;
              v10[2] = __RBSEndowmentEncode_block_invoke_2;
              v10[3] = &unk_1E72767C8;
              v2 = v8;
              v11 = v2;
              [v1 enumerateKeysAndObjectsUsingBlock:v10];
              v9 = xpc_dictionary_get_count(v2);
              if (v9 != [v1 count])
              {

                v2 = 0;
              }

              v3 = 6;
            }

            else
            {
              v3 = 0;
              v2 = 0;
            }
          }
        }
      }
    }
  }

  v4 = _RBSEndowmentWrapType(v2, v3);

  return v4;
}

id _RBSEndowmentWrapType(void *a1, uint64_t a2)
{
  objects[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2 - 4 >= 3)
  {
    if (a2 - 2 < 2)
    {
      v5 = v3;
LABEL_10:
      v6 = v5;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v5 = xpc_null_create();
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!v3)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  objects[0] = xpc_uint64_create(a2);
  objects[1] = v4;
  v6 = xpc_array_create(objects, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

LABEL_12:

  return v6;
}

uint64_t __rbs_monitor_log_block_invoke()
{
  rbs_monitor_log___logger = os_log_create("com.apple.runningboard", "monitor");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *NSStringFromRBSRole(unsigned int a1)
{
  if (a1 > 8)
  {
    return @"(undefined)";
  }

  else
  {
    return off_1E72768B0[a1];
  }
}

__CFString *NSStringFromRBSDurationStartPolicy(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return @"Unspecified";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"Proc-Start-Relative";
      }

      return @"(invalid start policy)";
    }

    return @"Fixed";
  }

  else if (a1 > 101)
  {
    if (a1 != 102)
    {
      if (a1 == 103)
      {
        return @"Delayed-Fixed";
      }

      return @"(invalid start policy)";
    }

    return @"Delayed-Relative";
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 101)
      {
        return @"Relative";
      }

      return @"(invalid start policy)";
    }

    return @"After-Originator-Exit";
  }
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

__CFString *NSStringFromRBSGPURole(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"(undefined)";
  }

  else
  {
    return off_1E72768F8[a1];
  }
}

id _RBSEndowmentUnwrapTypeAndDecodeWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v5 = MEMORY[0x193AD5A20](v3);
  if (v5 == MEMORY[0x1E69E9ED0])
  {
    v9 = v3;
    v8 = 1;
    goto LABEL_17;
  }

  if (v5 == MEMORY[0x1E69E9F20])
  {
    v9 = v3;
    v8 = 2;
    goto LABEL_17;
  }

  if (v5 == MEMORY[0x1E69E9E90])
  {
    v9 = v3;
    v8 = 3;
    goto LABEL_17;
  }

  if (v5 == MEMORY[0x1E69E9E50] && xpc_array_get_count(v3) == 2)
  {
    v6 = xpc_array_get_value(v3, 0);
    if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9F18] && (value = xpc_uint64_get_value(v6), value - 4 <= 2))
    {
      v8 = value;
      v9 = xpc_array_get_value(v3, 1uLL);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

LABEL_17:
    v10 = 0;
    if (v8 && v9)
    {
      v10 = v4[2](v4, v8, v9);
    }

    goto LABEL_20;
  }

  v9 = 0;
  v10 = 0;
LABEL_20:

LABEL_21:

  return v10;
}

id __RBSEndowmentDecode_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v6 = objc_alloc_init(MEMORY[0x1E696B0E0]);
          [v6 _setEndpoint:v5];
        }

        goto LABEL_22;
      }

      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
    }

LABEL_14:
    v6 = v10;
    goto LABEL_22;
  }

  switch(a2)
  {
    case 4:
      v10 = _CFXPCCreateCFObjectFromXPCObject();
      goto LABEL_14;
    case 5:
      count = xpc_array_get_count(v4);
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __RBSEndowmentDecode_block_invoke_2;
      applier[3] = &unk_1E7276810;
      v9 = v12;
      v21 = v9;
      xpc_array_apply(v5, applier);
      if (count == [v9 count])
      {
        v6 = [v9 copy];
      }

      else
      {
        v6 = 0;
      }

      v13 = v21;
      break;
    case 6:
      v7 = xpc_dictionary_get_count(v4);
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v7];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __RBSEndowmentDecode_block_invoke_3;
      v18 = &unk_1E7276838;
      v9 = v8;
      v19 = v9;
      xpc_dictionary_apply(v5, &v15);
      if (v7 == [v9 count])
      {
        v6 = [v9 copy];
      }

      else
      {
        v6 = 0;
      }

      v13 = v19;
      break;
    default:
      goto LABEL_22;
  }

LABEL_22:

  return v6;
}

BOOL __RBSEndowmentDecode_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _RBSEndowmentUnwrapTypeAndDecodeWithBlock(a3, &__block_literal_global_10);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v6 setObject:v5 forKey:v7];
  }

  return v5 != 0;
}

void _BSXPCDecodeObjectForKey_cold_1()
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObjectForKey(RBSXPCCoder *__strong, NSString *__strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
  [OUTLINED_FUNCTION_7(v0 v1];
}

void __RBSEndowmentEncode_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = RBSEndowmentEncode(v7);
    if (v8)
    {
      xpc_dictionary_set_value(*(a1 + 32), [v9 UTF8String], v8);
    }

    else
    {
      *a4 = 1;
    }
  }
}

__n128 RBSInvalidRealAuditToken@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *a1 = result;
  a1[1] = result;
  return result;
}

void RBSSerializeCFValueToXPCDictionaryWithKey(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  if (a1 && v5 && a3)
  {
    xdict = v5;
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    if (v6)
    {
      xpc_dictionary_set_value(xdict, a3, v6);
    }

    v5 = xdict;
  }
}

uint64_t RBSCreateDeserializedCFValueFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = xpc_dictionary_get_value(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _CFXPCCreateCFObjectFromXPCObject();

  return v4;
}

id RBSDeserializeCFValueFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = RBSCreateDeserializedCFValueFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

void RBSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    if ([objc_opt_class() supportsSecureCoding])
    {
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      RBSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey_cold_1();
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v7 = MEMORY[0x193AD5A20](v6);
    if (a3 && v7 == MEMORY[0x1E69E9E80])
    {
      v8 = objc_autoreleasePoolPush();
      v11 = 0;
      v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
      v10 = v9;
      if (!v11 && [v9 length])
      {
        xpc_dictionary_set_data(v6, a3, [v10 bytes], objc_msgSend(v10, "length"));
      }

      objc_autoreleasePoolPop(v8);
    }
  }

LABEL_10:
}

uint64_t RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v5 = a2;
  if (!a1)
  {
    RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey_cold_1();
  }

  if (([a1 supportsSecureCoding] & 1) == 0)
  {
    RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey_cold_2();
  }

  v6 = 0;
  if (v5 && a3)
  {
    v7 = xpc_dictionary_get_value(v5, a3);
    v8 = v7;
    if (v7 && MEMORY[0x193AD5A20](v7) == MEMORY[0x1E69E9E70])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = MEMORY[0x1E695DEF0];
      bytes_ptr = xpc_data_get_bytes_ptr(v8);
      v12 = [v10 dataWithBytes:bytes_ptr length:xpc_data_get_length(v8)];
      v17 = 0;
      v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:v12 error:&v17];
      v13 = v17;
      v14 = v13;
      if (v13)
      {
        v15 = rbs_coder_log(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey_cold_3(a1, v14, v15);
        }
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id RBSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v3 = RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(a1, a2, a3);

  return v3;
}

void RBSSerializeDataToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = a1;
    xdict = a2;
    v7 = a1;
    v8 = [v7 bytes];
    v9 = [v7 length];

    xpc_dictionary_set_data(xdict, a3, v8, v9);
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *NSStringFromRBSCPUMaximumUsageViolationPolicy(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(undefined)";
  }

  else
  {
    return off_1E7275EA8[a1];
  }
}

uint64_t __RBSandboxCanGetProcessInfo_block_invoke()
{
  getpid();
  result = sandbox_check();
  RBSandboxCanGetProcessInfo_allowed = result == 0;
  return result;
}

id RBSExecutablePathForBundlePath(void *a1)
{
  v1 = a1;
  v2 = RBSSystemRootDirectory(v1);
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:v3];
  v5 = [v4 executablePath];

  return v5;
}

id RBSSystemRootDirectory(uint64_t a1)
{
  if (RBSSystemRootDirectory_onceToken != -1)
  {
    RBSSystemRootDirectory_cold_1();
  }

  v2 = RBSSystemRootDirectory___SystemRootDirectory;

  return v2;
}

id _RBSearchPathForDirectoryInDomain(NSSearchPathDirectory a1, NSSearchPathDomainMask a2)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v6 = 0;
  }

  else
  {
    v2 = a2;
    v3 = NSSearchPathForDirectoriesInDomains(a1, a2, 1);
    v4 = [v3 firstObject];

    if (v4)
    {
      if (v2)
      {
        RBSCurrentUserDirectory(v5);
      }

      else
      {
        RBSSystemRootDirectory(v5);
      }
      v7 = ;
      if ([v4 hasPrefix:v7])
      {
        v6 = v4;
      }

      else
      {
        v8 = [v7 stringByAppendingPathComponent:v4];
        v6 = [v8 stringByStandardizingPath];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id RBSCurrentUserDirectory(uint64_t a1)
{
  if (RBSCurrentUserDirectory___once != -1)
  {
    RBSCurrentUserDirectory_cold_1();
  }

  v2 = RBSCurrentUserDirectory___userDirectory;

  return v2;
}

uint64_t __RBSCurrentUserDirectory_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  v1 = getuid();
  RBSCurrentUserDirectory___userDirectory = [v0 initWithUTF8String:getpwuid(v1)->pw_dir];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __RBSSystemRootDirectory_block_invoke()
{
  RBSSystemRootDirectory___SystemRootDirectory = CFStringCreateWithFileSystemRepresentation(0, "/");

  return MEMORY[0x1EEE66BB8]();
}

id RBSNumberForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = RBObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id RBSURLForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = RBObjectOfClassForKey(v4, v3, v5);

  return v6;
}

id RBSArrayForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = RBObjectOfClassForKey(v4, v3, v5);

  return v6;
}

uint64_t RBSBoolForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double RBSMachAbsoluteTime()
{
  if (*&RBSMachAbsoluteTime___TimeScale == 0.0)
  {
    info = 0;
    if (!mach_timebase_info(&info))
    {
      LODWORD(v0) = info.numer;
      LODWORD(v1) = info.denom;
      *&RBSMachAbsoluteTime___TimeScale = v0 / v1 / 1000000000.0;
    }
  }

  return *&RBSMachAbsoluteTime___TimeScale * mach_absolute_time();
}

uint64_t RBSPIDIsBeingDebugged(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  v1 = _RBShortBSDProcessInfoForPID(a1, v3);
  return *&v1 & ((v4 & 2) >> 1);
}

void RBSDispatchQueueAssert(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (v1 == MEMORY[0x1E69E96A0])
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v2 = MEMORY[0x1E69E96A0];
      dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    }
  }

  else
  {
    dispatch_assert_queue_V2(v1);
  }
}

BOOL RBSAuditTokenRepresentsPlatformBinary(_OWORD *a1)
{
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v8);
  CodeSignStatus = SecTaskGetCodeSignStatus(v3);
  v5 = CodeSignStatus;
  if (v3)
  {
    CFRelease(v3);
  }

  else
  {
    v6 = rbs_general_log(CodeSignStatus);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      RBSAuditTokenRepresentsPlatformBinary_cold_1(a1);
    }
  }

  return (v5 & 0xC000001) == 67108865;
}

BOOL RBSIsBinaryCatalystOriOS(uint64_t a1)
{
  v1 = a1;
  buffer = 0;
  v2 = proc_pidinfo(a1, 30, 0, &buffer, 4);
  if (v2 == 4)
  {
    return (buffer & 0xFFFFFFFB) == 2;
  }

  v4 = rbs_general_log(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    RBSIsBinaryCatalystOriOS_cold_1(v1, v4);
  }

  return 0;
}

id RBSContainedExtensionBundleIDs(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] setWithObject:v1];
  v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  v4 = rbs_general_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 applicationExtensionRecords];
      *buf = 134218242;
      v21 = [v6 count];
      v22 = 2112;
      v23 = v1;
      _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu extensions contained in %@", buf, 0x16u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 applicationExtensionRecords];
    v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = rbs_general_log(v7);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            RBSContainedExtensionBundleIDs_cold_1(buf, v11, &v21, v12);
          }

          v13 = [v11 bundleIdentifier];
          [v2 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v8 = v7;
      }

      while (v7);
    }
  }

  else if (v5)
  {
    *buf = 138412290;
    v21 = v1;
    _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "failed to get LSApplicationRecord for %@ - probably OK", buf, 0xCu);
  }

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id rbs_best_effort_networking_log(uint64_t a1)
{
  if (rbs_best_effort_networking_log_onceToken != -1)
  {
    rbs_best_effort_networking_log_cold_1();
  }

  v2 = rbs_best_effort_networking_log___logger;

  return v2;
}

uint64_t __rbs_best_effort_networking_log_block_invoke()
{
  rbs_best_effort_networking_log___logger = os_log_create("com.apple.runningboard", "best_effort_networking");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_job_log(uint64_t a1)
{
  if (rbs_job_log_onceToken != -1)
  {
    rbs_job_log_cold_1();
  }

  v2 = rbs_job_log___logger;

  return v2;
}

uint64_t __rbs_job_log_block_invoke()
{
  rbs_job_log___logger = os_log_create("com.apple.runningboard", "job");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_job_oversize_log(uint64_t a1)
{
  if (rbs_job_oversize_log_onceToken != -1)
  {
    rbs_job_oversize_log_cold_1();
  }

  v2 = rbs_job_oversize_log___logger;

  return v2;
}

uint64_t __rbs_job_oversize_log_block_invoke()
{
  rbs_job_oversize_log___logger = os_log_create("com.apple.runningboard", "job_oversize");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_power_log(uint64_t a1)
{
  if (rbs_power_log_onceToken != -1)
  {
    rbs_power_log_cold_1();
  }

  v2 = rbs_power_log___logger;

  return v2;
}

uint64_t __rbs_power_log_block_invoke()
{
  rbs_power_log___logger = os_log_create("com.apple.runningboard", "power");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_resource_log(uint64_t a1)
{
  if (rbs_resource_log_onceToken != -1)
  {
    rbs_resource_log_cold_1();
  }

  v2 = rbs_resource_log___logger;

  return v2;
}

uint64_t __rbs_resource_log_block_invoke()
{
  rbs_resource_log___logger = os_log_create("com.apple.runningboard", "resource");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_state_log(uint64_t a1)
{
  if (rbs_state_log_onceToken != -1)
  {
    rbs_state_log_cold_1();
  }

  v2 = rbs_state_log___logger;

  return v2;
}

uint64_t __rbs_state_log_block_invoke()
{
  rbs_state_log___logger = os_log_create("com.apple.runningboard", "state");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_system_log(uint64_t a1)
{
  if (rbs_system_log_onceToken != -1)
  {
    rbs_system_log_cold_1();
  }

  v2 = rbs_system_log___logger;

  return v2;
}

uint64_t __rbs_system_log_block_invoke()
{
  rbs_system_log___logger = os_log_create("com.apple.runningboard", "system");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_shim_log(uint64_t a1)
{
  if (rbs_shim_log_onceToken != -1)
  {
    rbs_shim_log_cold_1();
  }

  v2 = rbs_shim_log___logger;

  return v2;
}

uint64_t __rbs_shim_log_block_invoke()
{
  rbs_shim_log___logger = os_log_create("com.apple.runningboard", "shim");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_test_log(uint64_t a1)
{
  if (rbs_test_log_onceToken != -1)
  {
    rbs_test_log_cold_1();
  }

  v2 = rbs_test_log___logger;

  return v2;
}

uint64_t __rbs_test_log_block_invoke()
{
  rbs_test_log___logger = os_log_create("com.apple.runningboard", "test");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __rbs_coder_log_block_invoke()
{
  rbs_coder_log___logger = os_log_create("com.apple.runningboard", "coder");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_adapter_log(uint64_t a1)
{
  if (rbs_adapter_log_onceToken != -1)
  {
    rbs_adapter_log_cold_1();
  }

  v2 = rbs_adapter_log___logger;

  return v2;
}

uint64_t __rbs_adapter_log_block_invoke()
{
  rbs_adapter_log___logger = os_log_create("com.apple.runningboard", "adapter");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_jetsam_log(uint64_t a1)
{
  if (rbs_jetsam_log_onceToken != -1)
  {
    rbs_jetsam_log_cold_1();
  }

  v2 = rbs_jetsam_log___logger;

  return v2;
}

uint64_t __rbs_jetsam_log_block_invoke()
{
  rbs_jetsam_log___logger = os_log_create("com.apple.runningboard", "jetsam");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_ttl_log(uint64_t a1)
{
  if (rbs_ttl_log_onceToken != -1)
  {
    rbs_ttl_log_cold_1();
  }

  v2 = rbs_ttl_log___logger;

  return v2;
}

uint64_t __rbs_ttl_log_block_invoke()
{
  rbs_ttl_log___logger = os_log_create("com.apple.runningboard", "ttl");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_sp_telemetry_log(uint64_t a1)
{
  if (rbs_sp_telemetry_log_onceToken != -1)
  {
    rbs_sp_telemetry_log_cold_1();
  }

  v2 = rbs_sp_telemetry_log___logger;

  return v2;
}

uint64_t __rbs_sp_telemetry_log_block_invoke()
{
  rbs_sp_telemetry_log___logger = os_log_create("com.apple.runningboard", "sp_telemetry");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_sp_assertion_log(uint64_t a1)
{
  if (rbs_sp_assertion_log_onceToken != -1)
  {
    rbs_sp_assertion_log_cold_1();
  }

  v2 = rbs_sp_assertion_log___logger;

  return v2;
}

uint64_t __rbs_sp_assertion_log_block_invoke()
{
  rbs_sp_assertion_log___logger = os_log_create("com.apple.runningboard", "sp_assertion");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_sp_state_log(uint64_t a1)
{
  if (rbs_sp_state_log_onceToken != -1)
  {
    rbs_sp_state_log_cold_1();
  }

  v2 = rbs_sp_state_log___logger;

  return v2;
}

uint64_t __rbs_sp_state_log_block_invoke()
{
  rbs_sp_state_log___logger = os_log_create("com.apple.runningboard", "sp_state");

  return MEMORY[0x1EEE66BB8]();
}

id rbs_sp_therm_log(uint64_t a1)
{
  if (rbs_sp_therm_log_onceToken != -1)
  {
    rbs_sp_therm_log_cold_1();
  }

  v2 = rbs_sp_therm_log___logger;

  return v2;
}

uint64_t __rbs_sp_therm_log_block_invoke()
{
  rbs_sp_therm_log___logger = os_log_create("com.apple.runningboard", "sp_therm");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18E8C924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18E8C961C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E8CD474(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v3 = objc_begin_catch(exception_object);
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 14);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __shared_cache_page_prewarmingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  shared_cache_page_prewarmingLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_20(int a1@<W0>, id *a2@<X8>)
{
  if (a1)
  {
    v4 = v2;
  }

  else
  {
    v4 = *a2;
  }

  objc_storeStrong(a2, v4);
}

__CFString *NSStringFromRBSMemoryLimitStrength(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E7276758[a1];
  }
}

BOOL RBSRealAuditTokenValid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pid(&v3) != -1;
}

uint64_t RBSMachPortType(mach_port_name_t name)
{
  ptype = 0;
  v1 = mach_port_type(*MEMORY[0x1E69E9A60], name, &ptype);
  if (v1)
  {
    v2 = rbs_general_log(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      RBSMachPortType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return ptype;
}

uint64_t __RBSEndowmentEncode_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = RBSEndowmentEncode(a2);
  if (v6)
  {
    xpc_array_append_value(*(a1 + 32), v6);
  }

  else
  {
    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

BOOL __RBSEndowmentDecode_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _RBSEndowmentUnwrapTypeAndDecodeWithBlock(a3, &__block_literal_global_10);
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return v4 != 0;
}

void ___personalPersonaString_block_invoke()
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v0 = [MEMORY[0x1E69DF080] personaAttributesForPersonaType:0];
    v1 = [v0 userPersonaUniqueString];
  }

  else
  {
    v1 = 0;
  }

  v2 = _personalPersonaString_personalPersonaString;
  _personalPersonaString_personalPersonaString = v1;

  if (_personalPersonaString_personalPersonaString)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    memset(&count[4], 0, 96);
    *count = 2;
    if (kpersona_info())
    {
      v4 = getuid();
    }

    else
    {
      v4 = HIDWORD(v30);
    }

    v5 = malloc_type_calloc(4uLL, 4uLL, 0x100004052888210uLL);
    *count = 4;
    v6 = kpersona_find_by_type();
    if ((v6 & 0x80000000) != 0)
    {
      v8 = rbs_general_log(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *__error();
        *buf = 67109120;
        v32 = v9;
        _os_log_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_DEFAULT, "RBSProcessIdentity: kpersona_find_by_type() failed: %d", buf, 8u);
      }

LABEL_14:
      v10 = 0;
    }

    else
    {
      v7 = *count;
      v13 = 0;
      while (1)
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        memset(&count[4], 0, 96);
        *count = 2;
        if (!__PAIR64__(v4, kpersona_info()))
        {
          break;
        }

        if (v7 == ++v13)
        {
          goto LABEL_14;
        }
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{&count[88], *count, *&count[8], *&count[24], *&count[40], *&count[56], *&count[72]}];
    }

    free(v5);
    v11 = _personalPersonaString_personalPersonaString;
    _personalPersonaString_personalPersonaString = v10;
  }

  v12 = rbs_general_log(v3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *count = 67109378;
    *&count[4] = v4;
    *&count[8] = 2114;
    *&count[10] = _personalPersonaString_personalPersonaString;
    _os_log_impl(&dword_18E8AD000, v12, OS_LOG_TYPE_DEFAULT, "RBSProcessIdentity calculated session %u, persona %{public}@ for persona matching for this process", count, 0x12u);
  }
}

unint64_t RBSRoleFromDarwinRole(unsigned int a1)
{
  v1 = 0x502030604040804uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 4;
  }

  return v1 & 0xF;
}

__CFString *NSStringFromRBSPreventLaunchState(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"(undefined)";
  }

  else
  {
    return off_1E7276920[a1];
  }
}

void RBSCaptureStateToFile(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = rbs_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = a1;
    _os_log_impl(&dword_18E8AD000, v2, OS_LOG_TYPE_DEFAULT, "RunningBoard capturing state to file %s", buf, 0xCu);
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v5 = [v4 stringByDeletingLastPathComponent];

  v6 = [v3 fileExistsAtPath:v5];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v7;
      v10 = +[RBSConnection sharedInstance];
      v40 = 0;
      v11 = [v10 captureStateForSubsystem:0 error:&v40];
      v7 = v40;

      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = v8 >= 2;
      }

      ++v8;
    }

    while (!v13);
    if (v11)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
      v39 = v7;
      [v11 writeToFile:v14 atomically:0 encoding:4 error:&v39];
      v15 = v39;

      if (v15)
      {
        v17 = [v15 code];
        v18 = rbs_general_log(v17);
        v19 = v18;
        if (v17 == 28)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v42 = v15;
            _os_log_impl(&dword_18E8AD000, v19, OS_LOG_TYPE_DEFAULT, "RBSCaptureStateToFile writeToFile failed with expected error %{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          RBSCaptureStateToFile_cold_2(v15, v19, v33, v34, v35, v36, v37, v38);
        }

        v7 = v15;
      }

      else
      {
        v7 = rbs_general_log(v16);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = a1;
          _os_log_impl(&dword_18E8AD000, v7, OS_LOG_TYPE_DEFAULT, "RunningBoard successfully captured state to file %s", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!v7)
      {
        RBSCaptureStateToFile_cold_4();
      }

      v26 = rbs_general_log(v12);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        RBSCaptureStateToFile_cold_3(v7, v26, v27, v28, v29, v30, v31, v32);
      }
    }
  }

  else
  {
    v11 = rbs_general_log(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      RBSCaptureStateToFile_cold_1(v5, v11, v20, v21, v22, v23, v24, v25);
    }
  }
}

void sub_18E8E2040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL RBSXPCEqualDates(void *a1, void *a2)
{
  v3 = a2;
  [a1 timeIntervalSinceReferenceDate];
  v5 = v4;
  [v3 timeIntervalSinceReferenceDate];
  v7 = v6;

  return vabdd_f64(v5, v7) < 0.00001;
}

__CFString *nsObjFromXPCObj(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x193AD5A20]();
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(%s)", xpc_type_get_name(v2)];
  if (v2 != MEMORY[0x1E69E9E58])
  {
    if (v2 == MEMORY[0x1E69E9EB0])
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:xpc_int64_get_value(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9F18])
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:xpc_uint64_get_value(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9E88])
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:xpc_double_get_value(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9E78])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:xpc_date_get_value(v1) / 1000000000.0];
    }

    else if (v2 == MEMORY[0x1E69E9E70])
    {
      v8 = objc_alloc(MEMORY[0x1E695DEF0]);
      bytes_ptr = xpc_data_get_bytes_ptr(v1);
      v5 = [v8 initWithBytes:bytes_ptr length:xpc_data_get_length(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9F10])
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:xpc_string_get_string_ptr(v1) encoding:4];
    }

    else if (v2 == MEMORY[0x1E69E9F20])
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9E80])
    {
      v5 = dictFromXPCDict(v1);
    }

    else if (v2 == MEMORY[0x1E69E9E50])
    {
      v5 = arrayFromXPCArray(v1);
    }

    else
    {
      if (v2 != MEMORY[0x1E69E9E98])
      {
        goto LABEL_30;
      }

      v4 = objc_alloc(MEMORY[0x1E696AEC0]);
      v5 = [v4 initWithFormat:@"%s", xpc_dictionary_get_string(v1, *MEMORY[0x1E69E9E28])];
    }

    v7 = v5;
    if (v5)
    {
      goto LABEL_27;
    }

LABEL_30:
    v7 = v3;
    goto LABEL_31;
  }

  if (v1 == MEMORY[0x1E69E9E10])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = v6;
LABEL_27:
  if (v2 != MEMORY[0x1E69E9E80] && v2 != MEMORY[0x1E69E9E50])
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: %@", v3, v7];

    v7 = v10;
  }

LABEL_31:

  return v7;
}

id dictFromXPCDict(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __dictFromXPCDict_block_invoke;
  applier[3] = &unk_1E7276838;
  v3 = v2;
  v6 = v3;
  xpc_dictionary_apply(v1, applier);

  return v3;
}

id arrayFromXPCArray(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __arrayFromXPCArray_block_invoke;
  applier[3] = &unk_1E7276810;
  v3 = v2;
  v6 = v3;
  xpc_array_apply(v1, applier);

  return v3;
}

uint64_t __dictFromXPCDict_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = nsObjFromXPCObj(a3);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

uint64_t __arrayFromXPCArray_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = nsObjFromXPCObj(a3);
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];

  return 1;
}

id _service(uint64_t a1)
{
  if (_service_onceToken != -1)
  {
    _service_cold_1();
  }

  v2 = __service;

  return v2;
}

void ___service_block_invoke()
{
  if (!__service)
  {
    __service = +[RBSConnection sharedInstance];

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t rbs_set_assertion_adapter_service(void *a1)
{
  v1 = a1;
  v2 = __service;
  v3 = __service;
  v4 = __service;
  __service = v1;
  v5 = v1;

  return v2;
}

id _assertionMap(uint64_t a1)
{
  if (_assertionMap_onceToken != -1)
  {
    _assertionMap_cold_1();
  }

  v2 = _assertionMap_map;

  return v2;
}

uint64_t ___assertionMap_block_invoke()
{
  _assertionMap_map = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

id rbs_assertion_adapter_assertion_for_id(uint64_t a1)
{
  os_unfair_lock_lock(&_lock);
  v3 = _assertionMap(v2);
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1];
  v5 = [v3 objectForKey:v4];
  os_unfair_lock_unlock(&_lock);

  return v5;
}

uint64_t rbs_assertion_adapter_assertion_count()
{
  os_unfair_lock_lock(&_lock);
  v1 = _assertionMap(v0);
  v2 = [v1 count];
  os_unfair_lock_unlock(&_lock);

  return v2;
}

id _lock_nextID()
{
  ++_lock_nextID_counter;
  v0 = objc_alloc(MEMORY[0x1E696AD98]);
  v1 = [v0 initWithLongLong:_lock_nextID_counter];

  return v1;
}

uint64_t rbs_acquire_domain_assertion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  return rbs_acquire_domain_assertion_list(a1, v4, 1u, a3);
}

uint64_t rbs_acquire_domain_assertion_list(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s:", a1];
  v9 = [RBSAcquisitionCompletionAttribute attributeWithCompletionPolicy:1];
  v10 = v7;
  [v7 addObject:v9];

  if (a3 < 1)
  {
    v16 = v8;
  }

  else
  {
    v11 = 0;
    v12 = 8 * a3;
    do
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + v11)];
      v14 = [RBSDomainAttribute attributeWithDomain:v32 name:v13];
      [v7 addObject:v14];

      if (v11)
      {
        v15 = @",%@";
      }

      else
      {
        v15 = @"%@";
      }

      v16 = [v8 stringByAppendingFormat:v15, v13];

      v11 += 8;
      v8 = v16;
    }

    while (v12 != v11);
  }

  v18 = [v16 stringByAppendingString:@"}"];

  v19 = [RBSTarget targetWithPid:a4];
  v20 = [RBSAssertion alloc];
  v21 = [RBSAssertionDescriptor descriptorWithIdentifier:0 target:v19 explanation:v18 attributes:v7];
  v22 = _service(v21);
  v23 = [(RBSAssertion *)v20 _initWithDescriptor:v21 service:v22];

  v33 = 0;
  LOBYTE(v22) = [v23 acquireWithError:&v33];
  v24 = v33;
  v25 = v24;
  if (v22)
  {
    os_unfair_lock_lock(&_lock);
    v27 = _assertionMap(v26);
    v28 = _lock_nextID();
    [v27 setObject:v23 forKey:v28];
    os_unfair_lock_unlock(&_lock);
    v29 = v32;
  }

  else
  {
    v27 = rbs_assertion_log(v24);
    v29 = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      rbs_acquire_domain_assertion_list_cold_1(v18, v25, v27);
    }

    v28 = &unk_1F01DDD08;
  }

  v17 = [v28 longLongValue];
  return v17;
}

void rbs_invalidate_domain_assertion(uint64_t a1)
{
  os_unfair_lock_lock(&_lock);
  v3 = _assertionMap(v2);
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1];
  v5 = [v3 objectForKey:v4];
  if (v5)
  {
    [v3 removeObjectForKey:v4];
    os_unfair_lock_unlock(&_lock);
    [v5 invalidate];
  }

  else
  {
    v6 = rbs_assertion_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      rbs_invalidate_domain_assertion_cold_1(a1, v6);
    }

    os_unfair_lock_unlock(&_lock);
  }
}

void sub_18E8E4520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18E8E4E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void RBSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void RBSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey(NSObject<NSSecureCoding> *__strong, __strong xpc_object_t, const char *)"}];
  [OUTLINED_FUNCTION_0(v0 v1];
}

void RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject<NSSecureCoding> *RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(__unsafe_unretained Class, __strong xpc_object_t, const char *)"}];
  [OUTLINED_FUNCTION_0(v0 v1];
}

void RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject<NSSecureCoding> *RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(__unsafe_unretained Class, __strong xpc_object_t, const char *)"}];
  [OUTLINED_FUNCTION_0(v0 v1];
}

void RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey_cold_3(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromClass(a1);
  v6 = 136315650;
  v7 = "RBSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey";
  v8 = 2114;
  v9 = v5;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_18E8AD000, a3, OS_LOG_TYPE_ERROR, "%s the encoded object for class %{public}@ failed to decode with error %{public}@", &v6, 0x20u);
}

void _RBShortBSDProcessInfoForPID_cold_1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void RBSExecutablePathForPID_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void RBSExecutablePathForPID_cold_2(int a1)
{
  RBSandboxCanGetProcessInfo(a1);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void RBSAuditTokenRepresentsPlatformBinary_cold_1(_OWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v1;
  v2 = audit_token_to_pid(&v8);
  v8.val[0] = 67109120;
  v8.val[1] = v2;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void RBSIsBinaryCatalystOriOS_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "Error getting platform info for pid %d", v2, 8u);
}

void RBSContainedExtensionBundleIDs_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 bundleIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_18E8AD000, a4, OS_LOG_TYPE_DEBUG, "Adding %@ to terminate predicate", a1, 0xCu);
}

void _RBSXPCEncodeObjectForKey_cold_1()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_0_5(v0, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_1_0(&dword_18E8AD000, "Exception thrown while encoding object of class %{public}@: %{public}@", v4, v5);
}

void RBSXPCDictionaryGetValue_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable RBSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
  [OUTLINED_FUNCTION_7(v0 v1];
}

void _BSXPCDecodeObjectFromContext_cold_1()
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObjectFromContext(RBSXPCCoder *__strong, __strong xpc_object_t, NSString *__strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
  [OUTLINED_FUNCTION_7(v0 v1];
}

void _BSXPCDecodeObjectFromContext_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18E8AD000, log, OS_LOG_TYPE_ERROR, "No valid encoding type could be determined for expected class: %{public}@", buf, 0xCu);
}

void _BSXPCDecodeObjectFromContext_cold_3()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_0_5(v2, v0, v3, 5.8382e-34);
  OUTLINED_FUNCTION_1_0(&dword_18E8AD000, "Decoded class %{public}@ is not compatible with expected class %{public}@", v4, v5);
}

void _BSXPCDecodeObjectFromContext_cold_4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_0_5(v2, v0, v3, 5.8382e-34);
  OUTLINED_FUNCTION_1_0(&dword_18E8AD000, "Unable to reify class %{public}@ for expected class %{public}@", v4, v5);
}

void _BSXPCDecodeObjectFromContext_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _BSXPCDecodeObjectFromContext_cold_8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _BSXPCDecodeObjectFromContext_cold_9()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _BSXPCDecodeObjectFromContext_cold_10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _BSXPCDecodeObjectFromContext_cold_11(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18E8AD000, log, OS_LOG_TYPE_ERROR, "Attempted to decode a collection (%{public}@) without specifying the class it contains", buf, 0xCu);
}

void _BSXPCDecodeObjectFromContext_cold_12()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_0_5(v0, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_1_0(&dword_18E8AD000, "Exception thrown while decoding class %{public}@: %{public}@", v4, v5);
}

void _BSXPCDecodeObjectFromContext_cold_13()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_1_0(&dword_18E8AD000, "Decoded object class %{public}@ does not match expected class %{public}@", v5, v6);
}

void __getprewarm_for_launchSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *shared_cache_page_prewarmingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RBSConnection.m" lineNumber:352 description:{@"%s", *a1}];

  __break(1u);
}

void RBSCaptureStateToFile_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_11(&dword_18E8AD000, a2, a3, "RBSCaptureStateToFile given non-existant directory %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void RBSCaptureStateToFile_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_11(&dword_18E8AD000, a2, a3, "RBSCaptureStateToFile writeToFile failed with error %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void RBSCaptureStateToFile_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_11(&dword_18E8AD000, a2, a3, "RBSCaptureStateToFile captureState failed with error %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void rbs_acquire_domain_assertion_list_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_18E8AD000, log, OS_LOG_TYPE_ERROR, "Failed to acquire domain assertion %{public}@ with error %{public}@", &v3, 0x16u);
}

void rbs_invalidate_domain_assertion_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_FAULT, "Unknown rbs_domain_assertion_id_t %llu, can not invalidate", &v2, 0xCu);
}