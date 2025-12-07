@interface EDSearchableIndexAnalyticsPersistence
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (EDSearchableIndexAnalyticsPersistence)init;
- (EDSearchableIndexAnalyticsPersistence)initWithDatabase:(id)database;
- (id)willEnqueueItems:(id)items fromBacklog:(BOOL)backlog;
- (int64_t)batchDidStart:(id)start;
- (void)batchDidEnd:(int64_t)end error:(id)error;
- (void)didDonateItems:(id)items;
- (void)didDropIndex;
- (void)sendAnalyticsEvents;
@end

@implementation EDSearchableIndexAnalyticsPersistence

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  sub_1C6431CE0(resolve, toResolve);
  sub_1C6401D00(0, &qword_1EDC93930, 0x1E699B958);
  v4 = sub_1C645CA04();

  return v4;
}

- (EDSearchableIndexAnalyticsPersistence)initWithDatabase:(id)database
{
  *(&self->super.isa + OBJC_IVAR___EDSearchableIndexAnalyticsPersistence_database) = database;
  v5.receiver = self;
  v5.super_class = EDSearchableIndexAnalyticsPersistence;
  databaseCopy = database;
  return [(EDSearchableIndexAnalyticsPersistence *)&v5 init];
}

- (int64_t)batchDidStart:(id)start
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Batch.ID();
  Description = v19[-1].Description;
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Batch.Counts();
  v11 = v18[-1].Description;
  MEMORY[0x1EEE9AC00](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3EE0, &qword_1C6473800);
  v14 = sub_1C645CA14();
  selfCopy = self;
  sub_1C64240BC(v14);
  sub_1C645C664();
  sub_1C642490C(v13, v7, v10);
  (*(v5 + 8))(v7, v4);
  v16 = Batch.ID.rawValue.getter();

  Description[1](v10, v19);
  v11[1](v13, v18);
  return v16;
}

- (void)batchDidEnd:(int64_t)end error:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1C6424E38(end, error);
}

- (id)willEnqueueItems:(id)items fromBacklog:(BOOL)backlog
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3EE0, &qword_1C6473800);
  v9[2] = sub_1C645CA14();
  v9[3] = self;
  backlogCopy = backlog;
  selfCopy = self;
  sub_1C64258D4(sub_1C6431ACC, v9);

  type metadata accessor for EDEnqueuedDonation();
  v7 = sub_1C645CA04();

  return v7;
}

- (void)didDonateItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3EE0, &qword_1C6473800);
  v4 = sub_1C645CA14();
  selfCopy = self;
  sub_1C6426BF8(v4);
}

- (void)didDropIndex
{
  v3 = sub_1C645C674();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  selfCopy = self;
  sub_1C645C664();
  sub_1C64279C4(v7, v9);

  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
}

- (void)sendAnalyticsEvents
{
  selfCopy = self;
  sub_1C6427C8C();
}

- (EDSearchableIndexAnalyticsPersistence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end