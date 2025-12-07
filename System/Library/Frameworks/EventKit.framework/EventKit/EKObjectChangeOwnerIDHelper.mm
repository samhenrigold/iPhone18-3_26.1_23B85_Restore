@interface EKObjectChangeOwnerIDHelper
+ (id)createOwnerIDWithRowID:(id)d objectType:(int64_t)type databaseID:(int)iD;
@end

@implementation EKObjectChangeOwnerIDHelper

+ (id)createOwnerIDWithRowID:(id)d objectType:(int64_t)type databaseID:(int)iD
{
  v5 = *&iD;
  dCopy = d;
  v8 = dCopy;
  if (dCopy)
  {
    if (type <= 0)
    {
      v11 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:v11 objectType:type databaseID:?];
      }
    }

    else if ([dCopy integerValue] < 0)
    {
      v12 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:v8 objectType:v12 databaseID:?];
      }
    }

    else
    {
      if ((v5 & 0x80000000) == 0)
      {
        v9 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", type, [v8 intValue], v5);
        goto LABEL_15;
      }

      v13 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:v5 objectType:v13 databaseID:?];
      }
    }
  }

  else
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:v10 objectType:? databaseID:?];
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (void)createOwnerIDWithRowID:(int)a1 objectType:(NSObject *)a2 databaseID:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Invalid databaseID: %d", v2, 8u);
}

+ (void)createOwnerIDWithRowID:(uint64_t)a1 objectType:(NSObject *)a2 databaseID:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Invalid rowID passed in. rowID: %@", &v2, 0xCu);
}

+ (void)createOwnerIDWithRowID:(void *)a1 objectType:(uint64_t)a2 databaseID:.cold.3(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "Invalid owner object type. Type: %@", &v6, 0xCu);
}

@end