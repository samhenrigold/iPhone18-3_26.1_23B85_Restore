@interface EMMessageRepositoryQueryObserver
@end

@implementation EMMessageRepositoryQueryObserver

void __65___EMMessageRepositoryQueryObserver_recoverWithRemoteConnection___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 12);
    v4 = *&v3[14]._os_unfair_lock_opaque;
    LOBYTE(v3[16]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v3 + 12);
    if (v4)
    {
      v5 = +[EMMessageRepository log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *&v3[18]._os_unfair_lock_opaque;
        v7 = *(a1 + 48);
        v8 = *&v3[4]._os_unfair_lock_opaque;
        v13 = 134218754;
        v14 = v3;
        v15 = 2114;
        v16 = v6;
        v17 = 2048;
        v18 = v7;
        v19 = 2048;
        v20 = v8;
        _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ attempting recovery %ld for query<%p>", &v13, 0x2Au);
      }

      [(os_unfair_lock_s *)v3 _performQueryWithRemoteConnection:*(a1 + 32) forRecovery:1];
    }

    else
    {
      v9 = +[EMMessageRepository log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *&v3[18]._os_unfair_lock_opaque;
        v11 = *(a1 + 48);
        v12 = *&v3[4]._os_unfair_lock_opaque;
        v13 = 134218754;
        v14 = v3;
        v15 = 2114;
        v16 = v10;
        v17 = 2048;
        v18 = v11;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "<%p> Observer:%{public}@ skipping recovery %ld for query<%p> since it has already recovered", &v13, 0x2Au);
      }
    }
  }
}

void __83___EMMessageRepositoryQueryObserver__performQueryWithRemoteConnection_forRecovery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setRemoteCancelable:?];
  [*(*(a1 + 32) + 32) addCancelable:v3];
}

@end