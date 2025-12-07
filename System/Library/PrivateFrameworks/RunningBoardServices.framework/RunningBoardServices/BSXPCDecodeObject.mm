@interface BSXPCDecodeObject
@end

@implementation BSXPCDecodeObject

BOOL ___BSXPCDecodeObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _BSXPCDecodeObjectFromContext(*(a1 + 32), v5, 0, *(a1 + 56), 0);
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = NSStringFromClass(*(a1 + 56));
    v9 = [v7 stringWithFormat:@"Element %@ at index %zu failed to decode, expected class was %@", v5, a2, v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v13 = rbs_coder_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___BSXPCDecodeObject_block_invoke_cold_1(v5, a2, v13);
    }
  }

  return v6 != 0;
}

BOOL ___BSXPCDecodeObject_block_invoke_205(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = _BSXPCDecodeObjectForKey(*(a1 + 32), v3, *(a1 + 56), 0);
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }

  return v4 != 0;
}

void ___BSXPCDecodeObject_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_18E8AD000, log, OS_LOG_TYPE_ERROR, "Array element %zu failed to decode: %@", &v3, 0x16u);
}

@end