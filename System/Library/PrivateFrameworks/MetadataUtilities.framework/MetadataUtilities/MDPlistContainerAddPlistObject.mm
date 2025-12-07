@interface MDPlistContainerAddPlistObject
@end

@implementation MDPlistContainerAddPlistObject

void ___MDPlistContainerAddPlistObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = *(a2 + 16);
  _MDPlistContainerAddPlistObject(v2, &v3);
}

void ___MDPlistContainerAddPlistObject_block_invoke_2(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x1E69E9840];
  _MDPlistContainerAddCString(*(a1 + 32), a2, a3, 0, a5, a6, a7, a8);
  v10 = *(a1 + 32);
  v11 = *a4;
  v12 = *(a4 + 16);
  _MDPlistContainerAddPlistObject(v10, &v11);
}

@end