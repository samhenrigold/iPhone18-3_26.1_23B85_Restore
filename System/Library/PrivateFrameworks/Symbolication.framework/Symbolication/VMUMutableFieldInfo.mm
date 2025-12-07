@interface VMUMutableFieldInfo
- (BOOL)replaceFieldRecursively:(id)recursively atOffset:(unsigned int)offset withField:(id)field;
- (void)addSubField:(id)field;
- (void)mutateTypeFieldsRecursivelyWithBlock:(id)block parentOffset:(unsigned int)offset;
- (void)setFlags:(unsigned int)flags;
- (void)setIsByref:(BOOL)byref;
- (void)setIsCapture:(BOOL)capture;
- (void)setIvarName:(id)name;
- (void)setKind:(unsigned int)kind;
- (void)setOffset:(unsigned int)offset;
- (void)setScanType:(unsigned int)type;
- (void)setScannableSize:(unsigned int)size;
- (void)setSize:(unsigned int)size;
- (void)setStride:(unsigned int)stride;
@end

@implementation VMUMutableFieldInfo

- (void)setIvarName:(id)name
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setIvarName:name];
}

- (void)setScanType:(unsigned int)type
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setScanType:*&type];
}

- (void)setOffset:(unsigned int)offset
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setOffset:*&offset];
}

- (void)setSize:(unsigned int)size
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setSize:*&size];
}

- (void)setKind:(unsigned int)kind
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setKind:*&kind];
}

- (void)setIsByref:(BOOL)byref
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setFlags:[(VMUFieldInfo *)self flags]| 2];
}

- (void)setIsCapture:(BOOL)capture
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setFlags:[(VMUFieldInfo *)self flags]| 1];
}

- (void)setFlags:(unsigned int)flags
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setFlags:*&flags];
}

- (void)setScannableSize:(unsigned int)size
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setScannableSize:*&size];
}

- (void)setStride:(unsigned int)stride
{
  v3.receiver = self;
  v3.super_class = VMUMutableFieldInfo;
  [(VMUFieldInfo *)&v3 _setStride:*&stride];
}

- (void)mutateTypeFieldsRecursivelyWithBlock:(id)block parentOffset:(unsigned int)offset
{
  v4 = *&offset;
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  subFieldArray = [(VMUFieldInfo *)self subFieldArray];

  if (subFieldArray)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subFieldArray2 = [(VMUFieldInfo *)self subFieldArray];
    v9 = [subFieldArray2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(subFieldArray2);
          }

          v13 = blockCopy[2];
          v14 = *(*(&v15 + 1) + 8 * v12);
          v13(blockCopy, v14, v4);
          [v14 mutateTypeFieldsRecursivelyWithBlock:blockCopy parentOffset:{objc_msgSend(v14, "offset") + v4}];

          ++v12;
        }

        while (v10 != v12);
        v10 = [subFieldArray2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)replaceFieldRecursively:(id)recursively atOffset:(unsigned int)offset withField:(id)field
{
  recursivelyCopy = recursively;
  fieldCopy = field;
  subFieldArray = [(VMUFieldInfo *)self subFieldArray];
  v11 = [subFieldArray count];
  if (v11)
  {
    v12 = v11;
    v13 = [subFieldArray objectAtIndexedSubscript:0];
    offset = [v13 offset];
    if (offset - offset < [v13 size])
    {
      v15 = 0;
      v16 = 1;
LABEL_8:
      v18 = offset - offset;
      if (v18 || ![v13 isEqual:recursivelyCopy])
      {
        subFieldArray2 = [v13 subFieldArray];

        if (!subFieldArray2 || ([v13 replaceFieldRecursively:recursivelyCopy atOffset:v18 withField:fieldCopy] & 1) == 0)
        {
          LOBYTE(offset) = 0;
          goto LABEL_16;
        }
      }

      else
      {
        [subFieldArray setObject:fieldCopy atIndexedSubscript:v15];
      }

      LOBYTE(offset) = 1;
LABEL_16:

      goto LABEL_17;
    }

    v17 = 1;
    while (1)
    {

      if (v12 == v17)
      {
        break;
      }

      v13 = [subFieldArray objectAtIndexedSubscript:v17];
      offset = [v13 offset];
      ++v17;
      if (offset - offset < [v13 size])
      {
        v15 = v17 - 1;
        v16 = v15 < v12;
        goto LABEL_8;
      }
    }
  }

  v16 = 0;
LABEL_17:

  return v16 & offset;
}

- (void)addSubField:(id)field
{
  fieldCopy = field;
  subFieldArray = [(VMUFieldInfo *)self subFieldArray];

  if (!subFieldArray)
  {
    [(VMUFieldInfo *)self initializeSubFieldArray];
  }

  subFieldArray2 = [(VMUFieldInfo *)self subFieldArray];
  [subFieldArray2 addObject:fieldCopy];
}

@end