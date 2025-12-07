@interface VMUCallTreeLeafNode
- (VMUCallTreeLeafNode)initWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes;
- (void)addAddress:(unint64_t)address;
- (void)getBrowserName:(id)name;
@end

@implementation VMUCallTreeLeafNode

- (VMUCallTreeLeafNode)initWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes
{
  v10.receiver = self;
  v10.super_class = VMUCallTreeLeafNode;
  v6 = [(VMUCallTreeNode *)&v10 initWithName:name address:address count:*&count numBytes:bytes];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    addresses = v6->_addresses;
    v6->_addresses = v7;
  }

  return v6;
}

- (void)addAddress:(unint64_t)address
{
  addresses = self->_addresses;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:address];
  [(NSCountedSet *)addresses addObject:v5];

  combinedName = self->_combinedName;
  self->_combinedName = 0;
}

- (void)getBrowserName:(id)name
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  v6 = v5;
  if (!self->_combinedName)
  {
    v25 = v5;
    v27 = nameCopy;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    [(VMUCallTreeNode *)self parseNameIntoSymbol:&v38 library:&v37 loadAddress:0 offset:0 address:&v39 suffix:&v36];
    v24 = v38;
    v23 = v37;
    v22 = v36;
    allObjects = [(NSCountedSet *)self->_addresses allObjects];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __38__VMUCallTreeLeafNode_getBrowserName___block_invoke;
    v35[3] = &unk_1E8279EA0;
    selfCopy = self;
    v35[4] = self;
    v8 = [allObjects sortedArrayUsingComparator:v35];

    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v29 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v32;
      while (2)
      {
        v15 = 0;
        v28 = v13 + v12;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v10);
          }

          if (v13 > 1)
          {
            if (v13 == 2)
            {
              [v9 appendString:{@", ..."}];
              [v29 appendString:{@", ..."}];
              goto LABEL_16;
            }
          }

          else
          {
            v16 = *(*(&v31 + 1) + 8 * v15);
            if (v13 == 1)
            {
              [v9 appendString:{@", "}];
              [v29 appendString:{@", "}];
            }

            unsignedLongLongValue = [v16 unsignedLongLongValue];
            [v9 appendFormat:@"%qu", unsignedLongLongValue - v39];
            [v29 appendFormat:@"0x%qx", unsignedLongLongValue];
          }

          ++v13;
          ++v15;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
        v13 = v28;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    self = selfCopy;
    v18 = [(VMUCallTreeNode *)selfCopy nameWithStringsForSymbol:v24 library:v23 loadAddress:0 offset:v9 address:v29 suffix:v22];
    combinedName = selfCopy->_combinedName;
    selfCopy->_combinedName = v18;

    nameCopy = v27;
    v6 = v25;
  }

  v20 = self->super._name;
  objc_storeStrong(&self->super._name, self->_combinedName);
  v30.receiver = self;
  v30.super_class = VMUCallTreeLeafNode;
  [(VMUCallTreeNode *)&v30 getBrowserName:nameCopy];
  name = self->super._name;
  self->super._name = v20;

  objc_autoreleasePoolPop(v6);
}

uint64_t __38__VMUCallTreeLeafNode_getBrowserName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 56) countForObject:v5];
  v8 = [*(*(a1 + 32) + 56) countForObject:v6];
  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v7 == v8)
  {
    v11 = [v5 unsignedLongLongValue];
    if (v11 < [v6 unsignedLongLongValue])
    {
      v12 = -1;
    }

    else
    {
      v12 = v10;
    }

    v13 = [v5 unsignedLongLongValue];
    if (v13 > [v6 unsignedLongLongValue])
    {
      v10 = 1;
    }

    else
    {
      v10 = v12;
    }
  }

  return v10;
}

@end