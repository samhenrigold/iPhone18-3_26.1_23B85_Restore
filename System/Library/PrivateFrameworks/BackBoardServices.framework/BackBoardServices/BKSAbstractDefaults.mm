@interface BKSAbstractDefaults
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation BKSAbstractDefaults

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSAbstractDefaults *)self succinctDescriptionBuilder];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __61__BKSAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13 = &unk_1E6F47C78;
  selfCopy = self;
  v5 = succinctDescriptionBuilder;
  v15 = v5;
  v6 = [v5 modifyBody:{v10, 3221225472, __61__BKSAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke, &unk_1E6F47C78, selfCopy}];
  v7 = v15;
  v8 = v5;

  return v5;
}

void __61__BKSAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  outCount = 0;
  v2 = objc_opt_class();
  v3 = class_copyPropertyList(v2, &outCount);
  if (v3)
  {
    v4 = v3;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v6 = v4[i];
        if (property_getName(v6))
        {
          v7 = MEMORY[0x1E696AEC0];
          [MEMORY[0x1E696AEC0] defaultCStringEncoding];
          v8 = [v7 stringWithCString:? encoding:?];
          if (property_copyAttributeValue(v6, "G"))
          {
            v9 = MEMORY[0x1E696AEC0];
            [MEMORY[0x1E696AEC0] defaultCStringEncoding];
            v10 = [v9 stringWithCString:? encoding:?];

            v8 = v10;
          }

          v11 = *(a1 + 40);
          v12 = [*(a1 + 32) valueForKey:?];
          v13 = [v11 appendObject:? withName:?];
        }
      }
    }

    free(v4);
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSAbstractDefaults *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSAbstractDefaults *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end