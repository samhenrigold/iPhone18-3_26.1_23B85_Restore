@interface PASXPCClientHelper
@end

@implementation PASXPCClientHelper

void __50___PASXPCClientHelper__locked_establishConnection__block_invoke_7(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[17];
    if (v3 && os_log_type_enabled(WeakRetained[17], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[10];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A7F47000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated.", &v6, 0xCu);
    }

    (v2[16][2].isa)();
    pthread_mutex_lock((v2 + 1));
    v5 = v2[9];
    v2[9] = 0;

    pthread_mutex_unlock((v2 + 1));
  }
}

void __50___PASXPCClientHelper__locked_establishConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 17);
    if (v3 && os_log_type_enabled(*(WeakRetained + 17), OS_LOG_TYPE_ERROR))
    {
      v4 = v2[10];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_1A7F47000, v3, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
    }

    (*(v2[15] + 16))();
  }
}

@end