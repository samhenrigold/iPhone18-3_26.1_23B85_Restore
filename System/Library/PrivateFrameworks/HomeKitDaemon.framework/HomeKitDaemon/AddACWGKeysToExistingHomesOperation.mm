@interface AddACWGKeysToExistingHomesOperation
+ (NSPredicate)predicate;
- (BOOL)mainWithError:(id *)error;
- (HMFFlow)flow;
- (_TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation)initWithUUID:(id)d userData:(id)data backGroundOpsManager:(id)manager scheduledDate:(id)date expirationDate:(id)expirationDate dataSource:(id)source dependentOperations:(id)operations;
- (void)setFlow:(id)flow;
@end

@implementation AddACWGKeysToExistingHomesOperation

+ (NSPredicate)predicate
{
  predicateWithValue_ = [objc_opt_self() predicateWithValue_];

  return predicateWithValue_;
}

- (BOOL)mainWithError:(id *)error
{
  selfCopy = self;
  AddACWGKeysToExistingHomesOperation.main()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_22A4DB3DC();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (HMFFlow)flow
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setFlow:(id)flow
{
  v5 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = flow;
  flowCopy = flow;
}

- (_TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation)initWithUUID:(id)d userData:(id)data backGroundOpsManager:(id)manager scheduledDate:(id)date expirationDate:(id)expirationDate dataSource:(id)source dependentOperations:(id)operations
{
  v25[1] = self;
  operationsCopy = operations;
  v12 = sub_22A4DB74C();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v18 = sub_22A4DB7DC();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v21 = sub_22A4DD49C();
  sub_22A4DB70C();
  sub_22A4DB70C();
  if (operations)
  {
    operationsCopy = sub_22A4DDB6C();
  }

  managerCopy = manager;
  swift_unknownObjectRetain();
  v23 = sub_229586134(v20, v21, managerCopy, v17, v15, source, operationsCopy);

  swift_unknownObjectRelease();
  return v23;
}

@end