@interface SYChange(Additions)
@end

@implementation SYChange(Additions)

+ (void)changeWithObject:()Additions updateType:store:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1DF835000, a2, OS_LOG_TYPE_FAULT, "SYObject %p does not provide the required syncId!", &v2, 0xCu);
}

@end