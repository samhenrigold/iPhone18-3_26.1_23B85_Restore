@interface USUIMoreHelpMenuAction
+ (id)action:(id)action destructive:(BOOL)destructive actionID:(int64_t)d;
@end

@implementation USUIMoreHelpMenuAction

+ (id)action:(id)action destructive:(BOOL)destructive actionID:(int64_t)d
{
  destructiveCopy = destructive;
  actionCopy = action;
  v8 = objc_opt_new();
  [v8 setTitle:actionCopy];

  [v8 setDestructive:destructiveCopy];
  [v8 setActionID:d];

  return v8;
}

@end