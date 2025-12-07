@interface SCDynamicStoreCreateInternal
@end

@implementation SCDynamicStoreCreateInternal

void ____SCDynamicStoreCreateInternal_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  CFSetAddValue(_sc_store_sessions, *(a1 + 40));
  Count = CFSetGetCount(_sc_store_sessions);
  if (Count > _sc_store_max && _sc_store_max >= 1)
  {
    v4 = Count;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFSetApplyFunction(_sc_store_sessions, addSessionReference, Mutable);
    v6 = __log_SCDynamicStore_log;
    if (!__log_SCDynamicStore_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
      __log_SCDynamicStore_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &v20 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "SCDynamicStoreCreate(): number of SCDynamicStore sessions %sexceeds %ld", v20, v21);
      v17 = "now ";
      v18 = _sc_store_max;
      if (v4 == 50)
      {
        v17 = "";
      }

      *v16 = 136315394;
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v18;
      __SC_log_send(3, v6, v7, v14);
    }

    CFDictionaryApplyFunction(Mutable, logSessionReference, 0);
    CFRelease(Mutable);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (_sc_store_max >= 5000)
    {
      v19 = 0;
    }

    else
    {
      v19 = 2 * _sc_store_max;
    }

    _sc_store_max = v19;
  }
}

@end