@interface FPSharedCache
+ (id)sharedCacheForDyldSnapshot:(dyld_process_snapshot_s *)snapshot;
@end

@implementation FPSharedCache

+ (id)sharedCacheForDyldSnapshot:(dyld_process_snapshot_s *)snapshot
{
  v22[2] = *MEMORY[0x29EDCA608];
  if (dyld_process_snapshot_get_shared_cache() && (dyld_shared_cache_is_mapped_private() & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = 0;
    dyld_shared_cache_copy_uuid();
    v5 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v22];
    base_address = dyld_shared_cache_get_base_address();
    mapped_size = dyld_shared_cache_get_mapped_size();
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v5, "hash") ^ base_address}];
    os_unfair_lock_lock(&unk_2A18AA180);
    v9 = sub_297E36CF8(self);
    v4 = [v9 objectForKeyedSubscript:v8];

    if (!v4)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v16 = MEMORY[0x29EDCA5F8];
      dyld_shared_cache_for_each_file();
      v10 = v18[3];
      if (base_address < v10)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      if (v10)
      {
        v11 = base_address - v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = sub_297E36CF8(self);
      v4 = [FPSharedCache alloc];
      v13 = v5;
      if (v4)
      {
        v21.receiver = v4;
        v21.super_class = FPSharedCache;
        v14 = objc_msgSendSuper2(&v21, sel_init, v16, 3221225472, sub_297E36D50, &unk_29EE85478, &v17);
        v4 = v14;
        if (v14)
        {
          objc_storeStrong(v14 + 2, v5);
          v4->_baseAddress = base_address;
          v4->_mappedSize = mapped_size;
          v4->_slide = v11;
          v4->_alignment = 4096;
        }
      }

      [v12 setObject:v4 forKeyedSubscript:v8];
      _Block_object_dispose(&v17, 8);
    }

    os_unfair_lock_unlock(&unk_2A18AA180);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end