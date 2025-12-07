@interface SCUIMoreHelpMenuAction
+ (id)action:(id)action iconSystemName:(id)name destructive:(BOOL)destructive actionID:(int64_t)d;
@end

@implementation SCUIMoreHelpMenuAction

+ (id)action:(id)action iconSystemName:(id)name destructive:(BOOL)destructive actionID:(int64_t)d
{
  destructiveCopy = destructive;
  nameCopy = name;
  actionCopy = action;
  v11 = objc_opt_new();
  [v11 setTitle:actionCopy];

  [v11 setDestructive:destructiveCopy];
  [v11 setActionID:d];
  [v11 setIconSystemName:nameCopy];

  return v11;
}

@end