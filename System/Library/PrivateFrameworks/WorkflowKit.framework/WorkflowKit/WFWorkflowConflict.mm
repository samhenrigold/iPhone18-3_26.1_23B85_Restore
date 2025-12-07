@interface WFWorkflowConflict
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)resolutionKeepingLocal:(BOOL)local keepingRemote:(BOOL)remote;
@end

@implementation WFWorkflowConflict

- (id)resolutionKeepingLocal:(BOOL)local keepingRemote:(BOOL)remote
{
  remoteCopy = remote;
  localCopy = local;
  v7 = objc_opt_new();
  localWorkflowID = [(WFWorkflowConflict *)self localWorkflowID];
  [v7 setLocalWorkflowID:localWorkflowID];

  remoteWorkflowID = [(WFWorkflowConflict *)self remoteWorkflowID];
  [v7 setRemoteWorkflowID:remoteWorkflowID];

  [v7 setKeepLocal:localCopy];
  [v7 setKeepRemote:remoteCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localWorkflowID = [(WFWorkflowConflict *)self localWorkflowID];
      localWorkflowID2 = [(WFWorkflowConflict *)v5 localWorkflowID];
      if ([localWorkflowID isEqual:localWorkflowID2])
      {
        remoteWorkflowID = [(WFWorkflowConflict *)self remoteWorkflowID];
        remoteWorkflowID2 = [(WFWorkflowConflict *)v5 remoteWorkflowID];
        v10 = [remoteWorkflowID isEqual:remoteWorkflowID2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localWorkflowID = [(WFWorkflowConflict *)self localWorkflowID];
  remoteWorkflowID = [(WFWorkflowConflict *)self remoteWorkflowID];
  v8 = [v3 stringWithFormat:@"<%@ %p local: (%@) remote: (%@)>", v5, self, localWorkflowID, remoteWorkflowID];

  return v8;
}

@end