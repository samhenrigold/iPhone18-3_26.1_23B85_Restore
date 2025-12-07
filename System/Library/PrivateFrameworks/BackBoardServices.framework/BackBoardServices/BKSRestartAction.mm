@interface BKSRestartAction
+ (id)actionWithOptions:(unint64_t)options;
- (unint64_t)options;
@end

@implementation BKSRestartAction

+ (id)actionWithOptions:(unint64_t)options
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [v3 setObject:? forSetting:?];

  v5 = [objc_alloc(objc_opt_class()) initWithInfo:? responder:?];

  return v5;
}

- (unint64_t)options
{
  info = [(BKSRestartAction *)self info];
  v3 = [info objectForSetting:?];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end