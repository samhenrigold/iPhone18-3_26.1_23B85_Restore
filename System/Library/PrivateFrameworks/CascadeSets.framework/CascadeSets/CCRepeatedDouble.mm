@interface CCRepeatedDouble
- (void)enumerateDoubleValuesWithBlock:(id)block;
@end

@implementation CCRepeatedDouble

- (void)enumerateDoubleValuesWithBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  values = [(CCRepeatedFieldValue *)self values];
  v6 = [values countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(values);
        }

        [*(*(&v10 + 1) + 8 * v9) doubleValue];
        blockCopy[2](blockCopy);
        ++v9;
      }

      while (v7 != v9);
      v7 = [values countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end