@interface WBSMemoryFootprint
- (WBSMemoryFootprint)initWithCoder:(id)coder;
- (WBSMemoryFootprint)initWithError:(id *)error;
- (WBSMemoryFootprintMallocZone)defaultMallocZone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSMemoryFootprint

- (WBSMemoryFootprint)initWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = WBSMemoryFootprint;
  v3 = [(WBSMemoryFootprint *)&v10 init];
  if (v3)
  {
    task_info_outCnt = 93;
    task_info(*MEMORY[0x1E69E9A60], 0x16u, v3 + 2, &task_info_outCnt);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    malloc_get_all_zones();
    v5 = [v4 copy];
    v6 = *(v3 + 48);
    *(v3 + 48) = v5;

    v7 = v3;
  }

  return v3;
}

- (WBSMemoryFootprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WBSMemoryFootprint;
  v5 = [(WBSMemoryFootprint *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"zones"];
    zones = v5->_zones;
    v5->_zones = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vmInfo"];
    if ([v11 length] >= 0x174)
    {
      memcpy(&v5->_vmInfo, [v11 bytes], 0x174uLL);
    }

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  zones = self->_zones;
  coderCopy = coder;
  [coderCopy encodeObject:zones forKey:@"zones"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_vmInfo length:372];
  [coderCopy encodeObject:v6 forKey:@"vmInfo"];
}

- (WBSMemoryFootprintMallocZone)defaultMallocZone
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_zones;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        name = [v7 name];
        v9 = [name isEqualToString:@"DefaultMallocZone"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)dictionaryRepresentation
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"zones";
  v3 = [(NSArray *)self->_zones safari_mapObjectsUsingBlock:&__block_literal_global_18];
  v15[0] = v3;
  v14[1] = @"vm_info";
  v12[0] = @"internal_size";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_vmInfo.internal];
  v13[0] = v4;
  v12[1] = @"internal_size_peak";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_vmInfo.internal_peak];
  v13[1] = v5;
  v12[2] = @"resident_size";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_vmInfo.resident_size];
  v13[2] = v6;
  v12[3] = @"resident_size_peak";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_vmInfo.resident_size_peak];
  v13[3] = v7;
  v12[4] = @"virtual_size";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_vmInfo.virtual_size];
  v13[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v10;
}

@end