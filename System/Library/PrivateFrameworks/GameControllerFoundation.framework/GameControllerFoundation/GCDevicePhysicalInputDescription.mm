@interface GCDevicePhysicalInputDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (GCDevicePhysicalInputDescription)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputDescription

- (GCDevicePhysicalInputDescription)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = GCDevicePhysicalInputDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputDescription *)&v16 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v16.receiver, v16.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"elements"];
  elements = v4->_elements;
  v4->_elements = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"attributes"];

  attributes = v4->_attributes;
  v4->_attributes = v13;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  elements = self->_elements;
  coderCopy = coder;
  [coderCopy encodeObject:elements forKey:@"elements"];
  [coderCopy encodeObject:self->_attributes forKey:@"attributes"];
}

- (BOOL)validate:(id *)validate
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  elements = self->_elements;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __45__GCDevicePhysicalInputDescription_validate___block_invoke;
  v24[3] = &unk_1E8413D50;
  v24[4] = &v25;
  [(NSArray *)elements enumerateObjectsUsingBlock:v24];
  v6 = v26[5];
  if (validate && v6)
  {
    v6 = v6;
    *validate = v6;
  }

  v7 = v6 != 0;
  _Block_object_dispose(&v25, 8);

  if (v7)
  {
    return 0;
  }

  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_elements;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        identifier = [*(*(&v20 + 1) + 8 * i) identifier];
        v15 = [v9 member:identifier];

        if (v15)
        {
          if (validate)
          {
            v16 = MEMORY[0x1E696ABC0];
            v31 = *MEMORY[0x1E696A588];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiple elements with identifier '%@'.", identifier];
            v32 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            *validate = [v16 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v18];
          }

          v8 = 0;
          goto LABEL_18;
        }

        [v9 addObject:identifier];
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_18:

  return v8;
}

void __45__GCDevicePhysicalInputDescription_validate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 32) + 8);
  obj = 0;
  v8 = [a2 validate:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v21[0] = *MEMORY[0x1E696A588];
    v10 = [*(*(*(a1 + 32) + 8) + 40) localizedFailureReason];
    v21[1] = @"GCFailingKeyPathErrorKey";
    v22[0] = v10;
    v11 = [*(*(*(a1 + 32) + 8) + 40) gc_failingKeyPath];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v15 = [v13 arrayByAddingObject:v14];
    v22[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v17 = [v9 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v16];
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((attributes = self->_attributes, attributes == equalCopy[2]) || [(NSSet *)attributes isEqual:?]))
  {
    elements = self->_elements;
    if (elements == equalCopy[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSArray *)elements isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  allObjects = [(NSSet *)self->_attributes allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"Physical Input [%@] {", v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_elements;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) description];
        [v6 appendFormat:@"\n\t%@", v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)self->_elements count])
  {
    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"}"];

  return v6;
}

@end