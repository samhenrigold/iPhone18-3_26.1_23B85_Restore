@interface CPMemoryPool(SBHAdditions)
+ (id)plk_sharedMemoryPoolForMaxSize:()SBHAdditions scale:contextType:;
+ (void)plk_sharedMemoryPoolForDescriptor:()SBHAdditions;
- (BOOL)plk_compatibleWithDescriptor:()SBHAdditions;
@end

@implementation CPMemoryPool(SBHAdditions)

+ (id)plk_sharedMemoryPoolForMaxSize:()SBHAdditions scale:contextType:
{
  v6 = [self plk_sharedMemoryPoolForDescriptor:{*&a2, *&a3, *&a4, a6}];

  return v6;
}

+ (void)plk_sharedMemoryPoolForDescriptor:()SBHAdditions
{
  if (plk_sharedMemoryPoolForDescriptor__onceToken != -1)
  {
    +[CPMemoryPool(SBHAdditions) plk_sharedMemoryPoolForDescriptor:];
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = MEMORY[0x277CCACA8];
  v9 = PLKGraphicsContextCalculateBytesNeededForSize(v7, *a3, v5, v6);
  v10 = PLKGraphicsContextTypeDescription(*(a3 + 24));
  v11 = [v8 stringWithFormat:v9, v10];

  os_unfair_lock_lock(&plk_sharedMemoryPoolForDescriptor__lock);
  v12 = [plk_sharedMemoryPoolForDescriptor__sharedMemoryPoolsForDescriptor objectForKey:?];
  if (!v12)
  {
    PLKGraphicsContextCalculateBytesNeededForSize(v7, v4, v5, v6);
    v13 = objc_alloc(MEMORY[0x277CEC5B0]);
    [v11 UTF8String];
    v12 = [v13 initWithLabel:? slotLength:?];
    if (v12)
    {
      [plk_sharedMemoryPoolForDescriptor__sharedMemoryPoolsForDescriptor setObject:? forKey:?];
    }
  }

  os_unfair_lock_unlock(&plk_sharedMemoryPoolForDescriptor__lock);

  return v12;
}

- (BOOL)plk_compatibleWithDescriptor:()SBHAdditions
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = *(a3 + 3);
  slotLength = [self slotLength];
  return PLKGraphicsContextCalculateBytesNeededForSize(v6, v3, v4, v5) <= slotLength;
}

@end