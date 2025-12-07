@interface NSHashTable(WBSNSHashTableExtras)
- (BOOL)safari_isEmpty;
@end

@implementation NSHashTable(WBSNSHashTableExtras)

- (BOOL)safari_isEmpty
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v2, 0, sizeof(v2));
  return [self countByEnumeratingWithState:v2 objects:v3 count:16] == 0;
}

@end