@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __67__NSManagedObjectContext_VSAdditions__vs_removeAllPersistentStores__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) persistentStoreCoordinator];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 persistentStores];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412290;
    v13 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v14 = 0;
        v9 = [v1 removePersistentStore:v8 error:{&v14, v13}];
        v10 = v14;
        v11 = v10;
        if ((v9 & 1) == 0)
        {
          v12 = VSErrorLogObject(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v20 = v11;
            _os_log_error_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_ERROR, "Unable to remove persistent store: %@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

@end