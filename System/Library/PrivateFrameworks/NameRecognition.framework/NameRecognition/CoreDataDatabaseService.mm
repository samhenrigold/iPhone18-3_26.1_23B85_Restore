@interface CoreDataDatabaseService
- (void)handleRemoteChanges:(id)changes;
@end

@implementation CoreDataDatabaseService

- (void)handleRemoteChanges:(id)changes
{
  v3 = sub_25AEA0BB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0B98();
  (*(v4 + 8))(v6, v3);
}

@end