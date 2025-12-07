@interface MTLFunctionStitchingEarlyReturnNode
- (MTLFunctionStitchingEarlyReturnNode)initWithCondition:(id)condition controlDependencies:(id)dependencies;
- (MTLFunctionStitchingNode)condition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)setCondition:(id)condition;
@end

@implementation MTLFunctionStitchingEarlyReturnNode

- (MTLFunctionStitchingEarlyReturnNode)initWithCondition:(id)condition controlDependencies:(id)dependencies
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = condition;
  v5.receiver = self;
  v5.super_class = MTLFunctionStitchingEarlyReturnNode;
  return -[MTLFunctionStitchingFunctionNode initWithName:arguments:controlDependencies:](&v5, sel_initWithName_arguments_controlDependencies_, &stru_1EF478240, [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1], dependencies);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setName:{-[NSString copy](-[MTLFunctionStitchingFunctionNode name](self, "name"), "copy")}];
  [v4 setArguments:{-[NSArray copy](-[MTLFunctionStitchingFunctionNode arguments](self, "arguments"), "copy")}];
  [v4 setControlDependencies:{-[NSArray copy](-[MTLFunctionStitchingFunctionNode controlDependencies](self, "controlDependencies"), "copy")}];
  return v4;
}

- (MTLFunctionStitchingNode)condition
{
  arguments = [(MTLFunctionStitchingFunctionNode *)self arguments];

  return [(NSArray *)arguments objectAtIndexedSubscript:0];
}

- (void)setCondition:(id)condition
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = condition;
  -[MTLFunctionStitchingFunctionNode setArguments:](self, "setArguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1]);
}

- (id)formattedDescription:(unint64_t)description
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  controlDependencies = [(MTLFunctionStitchingFunctionNode *)self controlDependencies];
  v7 = [(NSArray *)controlDependencies countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(controlDependencies);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
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

      v8 = [(NSArray *)controlDependencies countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v21[0] = v5;
  v21[1] = @"condition =";
  v21[2] = [(MTLFunctionStitchingNode *)[(MTLFunctionStitchingEarlyReturnNode *)self condition] formattedDescription:description + 4];
  v21[3] = v5;
  v15 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v15 = v9;
  }

  v21[4] = @"controlDependencies =";
  v21[5] = v15;
  return [v13 stringWithFormat:@"<%@: %p>\n%@", v14, self, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 6), "componentsJoinedByString:", @" "];
}

@end