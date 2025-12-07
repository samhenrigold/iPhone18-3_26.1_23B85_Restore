@interface DaemonCoreDataStoreServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
- (BOOL)shouldAcceptMetadataChangesFromClientWithContext:(id)context;
- (_TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy)init;
- (id)allowableClassesForClientWithContext:(id)context;
- (id)restrictingReadPredicateForEntity:(id)entity fromClientWithContext:(id)context;
- (id)restrictingWritePredicateForEntity:(id)entity fromClientWithContext:(id)context;
@end

@implementation DaemonCoreDataStoreServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_226C88FC8(contextCopy);

  return self & 1;
}

- (id)allowableClassesForClientWithContext:(id)context
{
  if (sub_226C8AB00())
  {
    v3 = sub_226D6E86C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)restrictingWritePredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  sub_226C8ACA0(context);
  v10 = v9;

  return v10;
}

- (id)restrictingReadPredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  sub_226C89634(entity, context);
  v11 = v10;

  return v11;
}

- (BOOL)shouldAcceptMetadataChangesFromClientWithContext:(id)context
{
  contextCopy = context;
  contextCopy2 = context;
  selfCopy = self;
  sub_226C89E80(contextCopy);
  LOBYTE(contextCopy) = v7;

  return contextCopy & 1;
}

- (_TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end