@interface USUIInterventionScreenAction
+ (id)action:(id)action primary:(BOOL)primary actionID:(int64_t)d;
@end

@implementation USUIInterventionScreenAction

+ (id)action:(id)action primary:(BOOL)primary actionID:(int64_t)d
{
  primaryCopy = primary;
  actionCopy = action;
  v8 = objc_opt_new();
  [v8 setTitle:actionCopy];

  [v8 setPrimary:primaryCopy];
  [v8 setActionID:d];

  return v8;
}

@end