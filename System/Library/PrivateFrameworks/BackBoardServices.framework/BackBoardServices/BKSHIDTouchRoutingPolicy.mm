@interface BKSHIDTouchRoutingPolicy
+ (void)inspectChangesWithOldPolicy:(id)policy newPolicy:(id)newPolicy usingBlock:(id)block;
- (BKSHIDTouchRoutingPolicy)init;
- (BKSHIDTouchRoutingPolicy)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDTouchRoutingPolicy

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(BKSHIDTouchRoutingPolicy *)self shouldAvoidHitTesting];
  [coderCopy encodeBool:? forKey:?];
  contextIDsToAlwaysSendTouches = [(BKSHIDTouchRoutingPolicy *)self contextIDsToAlwaysSendTouches];
  [coderCopy encodeObject:? forKey:?];

  contextIDsToExcludeFromHitTesting = [(BKSHIDTouchRoutingPolicy *)self contextIDsToExcludeFromHitTesting];
  [coderCopy encodeObject:? forKey:?];
}

- (BKSHIDTouchRoutingPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKSHIDTouchRoutingPolicy *)self init];
  if (!v5)
  {
    goto LABEL_9;
  }

  [coderCopy decodeBoolForKey:?];
  [(BKSHIDTouchRoutingPolicy *)v5 setAvoidHitTesting:?];
  v6 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v7 = [v6 setWithObjects:{objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:? forKey:?];

  if (v8)
  {
    if ((_BKSVerifyIsArrayOfNumbers(v8) & 1) == 0)
    {
      v13 = MEMORY[0x1E696ABC0];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:v8];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v15 = [v13 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

      goto LABEL_12;
    }

    [(BKSHIDTouchRoutingPolicy *)v5 setContextIDsToAlwaysSendTouches:?];
  }

  v9 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v10 = [v9 setWithObjects:{objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:? forKey:?];

  if (v11)
  {
    if (_BKSVerifyIsArrayOfNumbers(v11))
    {
      [(BKSHIDTouchRoutingPolicy *)v5 setContextIDsToExcludeFromHitTesting:?];
      goto LABEL_8;
    }

    v16 = MEMORY[0x1E696ABC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:v11];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v18 = [v16 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_8:

LABEL_9:
  v12 = v5;
LABEL_13:

  return v12;
}

- (BKSHIDTouchRoutingPolicy)init
{
  v6.receiver = self;
  v6.super_class = BKSHIDTouchRoutingPolicy;
  v2 = [(BKSHIDTouchRoutingPolicy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

+ (void)inspectChangesWithOldPolicy:(id)policy newPolicy:(id)newPolicy usingBlock:(id)block
{
  blockCopy = block;
  newPolicyCopy = newPolicy;
  settings = [policy settings];
  settings2 = [newPolicyCopy settings];

  v11 = [MEMORY[0x1E698E770] diffFromSettings:? toSettings:?];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __77__BKSHIDTouchRoutingPolicy_inspectChangesWithOldPolicy_newPolicy_usingBlock___block_invoke;
  v16 = &unk_1E6F46550;
  v17 = blockCopy;
  v12 = blockCopy;
  [v11 inspectChangesWithBlock:?];
}

@end