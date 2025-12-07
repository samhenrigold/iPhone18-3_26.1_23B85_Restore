@interface NEFilterSettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEFilterSettings)initWithCoder:(id)coder;
- (NEFilterSettings)initWithRules:(NSArray *)rules defaultAction:(NEFilterAction)defaultAction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEFilterSettings allocWithZone:zone];
  rules = self->_rules;
  defaultAction = self->_defaultAction;

  return [(NEFilterSettings *)v4 initWithRules:rules defaultAction:defaultAction];
}

- (NEFilterSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NEFilterSettings;
  v5 = [(NEFilterSettings *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"rules"];
    rules = v5->_rules;
    v5->_rules = v9;

    v5->_defaultAction = [coderCopy decodeIntegerForKey:@"defaultAction"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rules = self->_rules;
  coderCopy = coder;
  [coderCopy encodeObject:rules forKey:@"rules"];
  [coderCopy encodeInteger:self->_defaultAction forKey:@"defaultAction"];
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  rules = [(NEFilterSettings *)self rules];
  [v7 appendPrettyObject:rules withName:@"rules" andIndent:v5 options:options];

  v9 = [NEFilterProvider descriptionForAction:?];
  [v7 appendPrettyObject:v9 withName:@"defaultAction" andIndent:v5 options:options];

  return v7;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v25 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  defaultAction = self->_defaultAction;
  if ((defaultAction - 1) > 1)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(NSArray *)self->_rules count];
    v7 = v6 != 0;
    if (!v6)
    {
      v8 = NEResourcesCopyLocalizedNSString(@"FILTER_SETTINGS_ERROR_INVALID", @"FILTER_SETTINGS_ERROR_INVALID");
      [errorsCopy addObject:v8];
    }

    defaultAction = self->_defaultAction;
  }

  if (defaultAction == 3 || defaultAction == 0)
  {
    v10 = NEResourcesCopyLocalizedNSString(@"FILTER_SETTINGS_ERROR_INVALID_ACTION", @"FILTER_SETTINGS_ERROR_INVALID_ACTION");
    [errorsCopy addObject:v10];

    v7 = 0;
  }

  if ([(NSArray *)self->_rules count]>= 0x3E9)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = NEResourcesCopyLocalizedNSString(@"FILTER_SETTINGS_ERROR_TOO_MANY_RULES", @"FILTER_SETTINGS_ERROR_TOO_MANY_RULES");
    1000 = [v11 initWithFormat:v12, 1000];
    [errorsCopy addObject:1000];

    v7 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = self->_rules;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v7 &= [*(*(&v20 + 1) + 8 * i) checkValidityAndCollectErrors:errorsCopy];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  return v7;
}

- (NEFilterSettings)initWithRules:(NSArray *)rules defaultAction:(NEFilterAction)defaultAction
{
  v6 = rules;
  v11.receiver = self;
  v11.super_class = NEFilterSettings;
  v7 = [(NEFilterSettings *)&v11 init];
  if (v7)
  {
    v8 = [(NSArray *)v6 copy];
    v9 = v7->_rules;
    v7->_rules = v8;

    v7->_defaultAction = defaultAction;
  }

  return v7;
}

@end