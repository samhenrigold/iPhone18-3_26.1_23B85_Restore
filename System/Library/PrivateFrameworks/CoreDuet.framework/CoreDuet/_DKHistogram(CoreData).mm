@interface _DKHistogram(CoreData)
@end

@implementation _DKHistogram(CoreData)

- (void)initWithManagedObject:()CoreData .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Encountered HistogramMO without count: %@", &v2, 0xCu);
}

- (void)initWithManagedObject:()CoreData .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Encountered HistogramMO without a value: %@", &v2, 0xCu);
}

@end