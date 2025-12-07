@interface _DKChangeSet(CoreData)
@end

@implementation _DKChangeSet(CoreData)

- (void)initWithManagedObject:()CoreData .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 version];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Dropping change set, unknown version number: %@", &v4, 0xCu);
}

+ (void)dataFromCompressedChangeSet:()CoreData .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[_DKPRCompressedChangeSet uncompressedLength](a2)];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "Change set uncompressed size %@ does not match uncompressed length %@", &v7, 0x16u);
}

@end