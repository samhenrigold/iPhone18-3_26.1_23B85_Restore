@interface GEOGetURLWithSource
@end

@implementation GEOGetURLWithSource

id ___GEOGetURLWithSource_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 length])
      {
        v4 = *(a1 + 32);
        if (v4)
        {
          v5 = (*(v4 + 16))(v4, v3);
        }

        else
        {
          v5 = v3;
        }

        v8 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = _GEOGetURLWithSource(*(a1 + 40), 0, 1, 0);
        v10 = 138543618;
        v11 = v7;
        v12 = 2114;
        v13 = objc_opt_class();
        _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "URL for type '%{public}@' is of unexpected type '%{public}@'", &v10, 0x16u);
      }
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end