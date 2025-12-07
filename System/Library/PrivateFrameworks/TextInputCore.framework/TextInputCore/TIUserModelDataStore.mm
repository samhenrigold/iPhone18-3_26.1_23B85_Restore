@interface TIUserModelDataStore
@end

@implementation TIUserModelDataStore

uint64_t __52__TIUserModelDataStore_Keyboards__singletonInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [TI_KB_USER_DIRECTORY() stringByAppendingPathComponent:@"user_model_database.sqlite"];
  v3 = singletonInstance_path;
  singletonInstance_path = v2;

  v4 = [MEMORY[0x277D6F548] initializeDataStoreAtPath:singletonInstance_path];
  v5 = singletonInstance_singletonInstance;
  singletonInstance_singletonInstance = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

@end