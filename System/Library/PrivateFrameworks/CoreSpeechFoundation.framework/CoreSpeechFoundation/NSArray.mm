@interface NSArray
@end

@implementation NSArray

void __35__NSArray_XPCObject___cs_xpcObject__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [v3 _cs_xpcObject];
    xpc_array_append_value(v4, v5);
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v3 description];
      v9 = 136315394;
      v10 = "[NSArray(XPCObject) _cs_xpcObject]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Cannot encode non-plist types into XPC object : %{public}@", &v9, 0x16u);
    }
  }
}

uint64_t __44__NSArray_XPCObject___cs_initWithXPCObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E12BAC70](v4);
    if (v6 == MEMORY[0x1E69E9F18] || v6 == MEMORY[0x1E69E9EB0] || v6 == MEMORY[0x1E69E9E58] || v6 == MEMORY[0x1E69E9E88])
    {
      v12 = 0x1E696AD98;
    }

    else if (v6 == MEMORY[0x1E69E9E80])
    {
      v12 = 0x1E695DF20;
    }

    else if (v6 == MEMORY[0x1E69E9F10])
    {
      v12 = 0x1E696AEC0;
    }

    else if (v6 == MEMORY[0x1E69E9E70])
    {
      v12 = 0x1E695DEF0;
    }

    else
    {
      if (v6 != MEMORY[0x1E69E9E50])
      {
        v10 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315138;
          v17 = "[NSArray(XPCObject) _cs_initWithXPCObject:]_block_invoke";
          v11 = "%s Cannot decode non-plist types of XPC object";
LABEL_20:
          _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, v11, &v16, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      v12 = 0x1E695DEC8;
    }

    v13 = objc_alloc(*v12);
    v14 = [v13 _cs_initWithXPCObject:v5];

    if (v14)
    {
      [*(a1 + 32) addObject:v14];
    }

    goto LABEL_28;
  }

  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315138;
    v17 = "[NSArray(XPCObject) _cs_initWithXPCObject:]_block_invoke";
    v11 = "%s xpcObject value is NULL";
    goto LABEL_20;
  }

LABEL_28:

  return 1;
}

@end