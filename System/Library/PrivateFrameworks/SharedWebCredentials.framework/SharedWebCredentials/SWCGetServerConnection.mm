@interface SWCGetServerConnection
@end

@implementation SWCGetServerConnection

void ___SWCGetServerConnection_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (qword_280B21908 != -1)
  {
    dispatch_once(&qword_280B21908, &__block_literal_global_101);
  }

  v0 = qword_280B21900;
  if (os_log_type_enabled(qword_280B21900, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 138543362;
    v2 = @"com.apple.SharedWebCredentials";
    _os_log_impl(&dword_265F54000, v0, OS_LOG_TYPE_DEFAULT, "disconnect event interruption received for service %{public}@", &v1, 0xCu);
  }
}

void ___SWCGetServerConnection_block_invoke_2()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_280B21908 != -1)
  {
    dispatch_once(&qword_280B21908, &__block_literal_global_101);
  }

  v0 = qword_280B21900;
  if (os_log_type_enabled(qword_280B21900, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138543362;
    v3 = @"com.apple.SharedWebCredentials";
    _os_log_impl(&dword_265F54000, v0, OS_LOG_TYPE_DEFAULT, "disconnect event invalidation received for service %{public}@", &v2, 0xCu);
  }

  os_unfair_lock_lock(&gLock);
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = 0;

  os_unfair_lock_unlock(&gLock);
}

@end