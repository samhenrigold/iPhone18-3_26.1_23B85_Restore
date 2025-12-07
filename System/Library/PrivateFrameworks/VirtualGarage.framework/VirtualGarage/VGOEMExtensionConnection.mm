@interface VGOEMExtensionConnection
@end

@implementation VGOEMExtensionConnection

void __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = VGGetVGOEMExtensionConnectionLog();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v25 = WeakRetained;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "[%{public}p] Got error resuming connection: %@", buf, 0x16u);
      }

      [WeakRetained _complete];
      os_unfair_lock_lock(WeakRetained + 12);
      v10 = VGGetVGOEMExtensionConnectionLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [*(WeakRetained + 4) count];
        *buf = 134349312;
        v25 = WeakRetained;
        v26 = 2048;
        v27 = v11;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Executing %lu connection error handler(s)", buf, 0x16u);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = *(WeakRetained + 4);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v12);
            }

            (*(*(*(&v19 + 1) + 8 * i) + 16))();
          }

          v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      os_unfair_lock_unlock(WeakRetained + 12);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v25 = WeakRetained;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "[%{public}p] Successfully resumed connection; starting intent handling", buf, 0xCu);
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke_22;
      v17[3] = &unk_279E26678;
      objc_copyWeak(&v18, (a1 + 32));
      [v5 handleIntentWithCompletionHandler:v17];
      objc_destroyWeak(&v18);
    }
  }

  else
  {
    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[_VGOEMExtensionConnection resumeWithCompletion:]_block_invoke";
      v26 = 1024;
      LODWORD(v27) = 167;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      v23 = WeakRetained;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got intent response: %@, error: %@", buf, 0x20u);
    }

    [WeakRetained _complete];
    os_unfair_lock_lock(WeakRetained + 12);
    v9 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(WeakRetained + 5) count];
      *buf = 134349312;
      v23 = WeakRetained;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Executing %lu intent completion handler(s)", buf, 0x16u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = *(WeakRetained + 5);
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v17 + 1) + 8 * i) + 16))(*(*(&v17 + 1) + 8 * i));
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    [*(WeakRetained + 1) reset];
    os_unfair_lock_unlock(WeakRetained + 12);
  }

  else
  {
    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[_VGOEMExtensionConnection resumeWithCompletion:]_block_invoke";
      v24 = 1024;
      LODWORD(v25) = 181;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }
}

void __48___VGOEMExtensionConnection_initWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v20 = WeakRetained;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "[%{public}p] Connection timed out: %@", buf, 0x16u);
    }

    [WeakRetained _complete];
    os_unfair_lock_lock(WeakRetained + 12);
    v6 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(WeakRetained + 3) count];
      *buf = 134349312;
      v20 = WeakRetained;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Executing %lu connection timeout handler(s)", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(WeakRetained + 3);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * i) + 16))(*(*(&v14 + 1) + 8 * i));
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(WeakRetained + 12);
  }

  else
  {
    v13 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[_VGOEMExtensionConnection initWithConnection:]_block_invoke";
      v21 = 1024;
      LODWORD(v22) = 132;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

@end