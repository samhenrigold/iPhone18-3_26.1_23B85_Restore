@interface MTLLinkedFunctionsInternal
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setBinaryFunctions:(id)functions;
- (void)setFunctions:(id)functions;
- (void)setGroups:(id)groups;
- (void)setPrivateFunctions:(id)functions;
@end

@implementation MTLLinkedFunctionsInternal

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLLinkedFunctionsInternal;
  [(MTLLinkedFunctionsInternal *)&v4 dealloc];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLLinkedFunctionsInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLLinkedFunctionsInternal;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    p_private = &self->_private;
    *(v4 + 16) = [(NSArray *)p_private->functions copy];
    v5[3] = [(NSArray *)p_private->privateFunctions copy];
    v5[4] = [(NSArray *)p_private->binaryFunctions copy];
    v5[8] = [(NSDictionary *)p_private->groups copy];
  }

  return v5;
}

- (void)setFunctions:(id)functions
{
  functions = self->_private.functions;
  if (functions != functions)
  {

    self->_private.functions = [functions copy];
  }
}

- (void)setPrivateFunctions:(id)functions
{
  p_private = &self->_private;
  privateFunctions = self->_private.privateFunctions;
  if (privateFunctions != functions)
  {

    p_private->privateFunctions = [functions copy];
  }
}

- (void)setBinaryFunctions:(id)functions
{
  p_private = &self->_private;
  binaryFunctions = self->_private.binaryFunctions;
  if (binaryFunctions != functions)
  {

    p_private->binaryFunctions = [functions copy];
  }
}

- (void)setGroups:(id)groups
{
  p_private = &self->_private;
  groups = self->_private.groups;
  if (groups != groups)
  {

    p_private->groups = [groups copy];
  }
}

- (unint64_t)hash
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(MTLLinkedFunctionsInternal *)self isEmpty])
  {
    return 0;
  }

  p_private = &self->_private;
  bzero(v14, 0x20uLL);
  v5 = 1;
  v14[0] = MTLHashArray(p_private->functions, 1, 1);
  v14[1] = MTLHashArray(p_private->privateFunctions, 1, 1);
  v14[2] = MTLHashArray(p_private->binaryFunctions, 1, 1);
  groups = p_private->groups;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSDictionary *)groups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v5 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(groups);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 hash];
        v13 = MTLHashArray([(NSDictionary *)groups objectForKeyedSubscript:v11], 1, 1);
        v5 ^= v12 ^ ((v13 >> (v12 & 0x3F ^ 0x3F)) | (v13 << v12));
      }

      v8 = [(NSDictionary *)groups countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14[3] = v5;
  return _MTLHashState(v14, 0x20uLL);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      p_private = &self->_private;
      v8 = (equal + 16);
      if (p_private->functions == *v8 || (v6 = [(NSArray *)p_private->functions isEqual:?]) != 0)
      {
        privateFunctions = p_private->privateFunctions;
        if (privateFunctions == v8[1] || (v6 = [(NSArray *)privateFunctions isEqual:?]) != 0)
        {
          binaryFunctions = p_private->binaryFunctions;
          if (binaryFunctions == v8[2] || (v6 = [(NSArray *)binaryFunctions isEqual:?]) != 0)
          {
            groups = p_private->groups;
            if (groups == v8[6] || (v6 = [(NSDictionary *)groups isEqual:?]) != 0)
            {
              LOBYTE(v6) = 1;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)description
{
  v14[12] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = MTLLinkedFunctionsInternal;
  v6 = [(MTLLinkedFunctionsInternal *)&v13 description];
  v14[0] = v4;
  v14[1] = @"functions =";
  p_private = &self->_private;
  functions = p_private->functions;
  if (!p_private->functions)
  {
    functions = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = functions;
  v14[3] = v4;
  v14[4] = @"privateFunctions =";
  privateFunctions = p_private->privateFunctions;
  if (!privateFunctions)
  {
    privateFunctions = [MEMORY[0x1E695DFB0] null];
  }

  v14[5] = privateFunctions;
  v14[6] = v4;
  v14[7] = @"binaryFunctions =";
  binaryFunctions = p_private->binaryFunctions;
  if (!binaryFunctions)
  {
    binaryFunctions = [MEMORY[0x1E695DFB0] null];
  }

  v14[8] = binaryFunctions;
  v14[9] = v4;
  v14[10] = @"groups =";
  groups = p_private->groups;
  if (!groups)
  {
    groups = [MEMORY[0x1E695DFB0] null];
  }

  v14[11] = groups;
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 12), "componentsJoinedByString:", @" "];
}

@end