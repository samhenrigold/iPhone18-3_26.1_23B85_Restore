@interface MTLFunctionStitchingFunctionNode
- (BOOL)isEqual:(id)equal;
- (MTLFunctionStitchingFunctionNode)init;
- (MTLFunctionStitchingFunctionNode)initWithName:(NSString *)name arguments:(NSArray *)arguments controlDependencies:(NSArray *)controlDependencies;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLFunctionStitchingFunctionNode

- (MTLFunctionStitchingFunctionNode)init
{
  v4.receiver = self;
  v4.super_class = MTLFunctionStitchingFunctionNode;
  v2 = [(MTLFunctionStitchingFunctionNode *)&v4 init];
  [(MTLFunctionStitchingFunctionNode *)v2 setControlDependencies:MEMORY[0x1E695E0F0]];
  return v2;
}

- (MTLFunctionStitchingFunctionNode)initWithName:(NSString *)name arguments:(NSArray *)arguments controlDependencies:(NSArray *)controlDependencies
{
  v10.receiver = self;
  v10.super_class = MTLFunctionStitchingFunctionNode;
  v8 = [(MTLFunctionStitchingFunctionNode *)&v10 init];
  v8->_name = [(NSString *)name copy];
  v8->_arguments = [(NSArray *)arguments copy];
  v8->_controlDependencies = [(NSArray *)controlDependencies copy];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setName:self->_name];
  [v4 setArguments:self->_arguments];
  [v4 setControlDependencies:self->_controlDependencies];
  return v4;
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
      v6 = -[NSString isEqualToString:](-[MTLFunctionStitchingFunctionNode name](self, "name"), "isEqualToString:", [equal name]);
      if (v6)
      {
        v6 = MTLCompareArray(-[MTLFunctionStitchingFunctionNode arguments](self, "arguments"), [equal arguments], 1, 1);
        if (v6)
        {
          controlDependencies = [(MTLFunctionStitchingFunctionNode *)self controlDependencies];
          controlDependencies2 = [equal controlDependencies];

          LOBYTE(v6) = MTLCompareArray(controlDependencies, controlDependencies2, 1, 0);
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

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(NSString *)[(MTLFunctionStitchingFunctionNode *)self name] hash];
  v4[1] = MTLHashArray([(MTLFunctionStitchingFunctionNode *)self arguments], 1, 1);
  v4[2] = MTLHashArray([(MTLFunctionStitchingFunctionNode *)self controlDependencies], 1, 0);
  return _MTLHashState(v4, 0x18uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionStitchingFunctionNode;
  [(MTLFunctionStitchingFunctionNode *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  arguments = self->_arguments;
  v7 = [(NSArray *)arguments countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(arguments);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if (v9)
        {
          [v9 appendString:v5];
        }

        else
        {
          v9 = objc_opt_new();
        }

        [v9 appendString:{objc_msgSend(v12, "formattedDescription:", description + 4)}];
      }

      v8 = [(NSArray *)arguments countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  controlDependencies = self->_controlDependencies;
  v14 = [(NSArray *)controlDependencies countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(controlDependencies);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        if (v16)
        {
          [v16 appendString:v5];
        }

        else
        {
          v16 = objc_opt_new();
        }

        [v16 appendString:{objc_msgSend(v19, "formattedDescription:", description + 4)}];
      }

      v15 = [(NSArray *)controlDependencies countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v20 = MEMORY[0x1E696AEC0];
  v26.receiver = selfCopy;
  v26.super_class = MTLFunctionStitchingFunctionNode;
  v21 = [(MTLFunctionStitchingFunctionNode *)&v26 description];
  v35[0] = v5;
  v35[1] = @"name =";
  v35[2] = selfCopy->_name;
  v35[3] = v5;
  if (v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  v35[4] = @"arguments =";
  v35[5] = v22;
  v35[6] = v5;
  v35[7] = @"controlDependencies =";
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  v35[8] = v23;
  return [v20 stringWithFormat:@"%@%@", v21, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 9), "componentsJoinedByString:", @" "];
}

@end