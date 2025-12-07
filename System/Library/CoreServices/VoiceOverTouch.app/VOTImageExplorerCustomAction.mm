@interface VOTImageExplorerCustomAction
- (BOOL)isEqual:(id)equal;
- (BOOL)performWithContext:(id)context;
- (VOTImageExplorerCustomAction)init;
- (unint64_t)hash;
@end

@implementation VOTImageExplorerCustomAction

- (VOTImageExplorerCustomAction)init
{
  v3.receiver = self;
  v3.super_class = VOTImageExplorerCustomAction;
  return [(VOTImageExplorerCustomAction *)&v3 init];
}

- (BOOL)performWithContext:(id)context
{
  contextCopy = context;
  isValidElementForImageExploration = [contextCopy isValidElementForImageExploration];
  v6 = VOTLogImageExplorer();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isValidElementForImageExploration)
  {
    if (v7)
    {
      sub_10012A1B8(self);
    }

    [contextCopy handleLaunchVoiceOverImageExplorer];
  }

  else
  {
    if (v7)
    {
      sub_10012A124(self);
    }
  }

  return isValidElementForImageExploration;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end