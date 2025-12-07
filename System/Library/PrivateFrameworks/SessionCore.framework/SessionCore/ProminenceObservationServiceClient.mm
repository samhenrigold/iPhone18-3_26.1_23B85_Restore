@interface ProminenceObservationServiceClient
- (BOOL)subscribeToActivityProminenceMatchingPredicate:(id)predicate error:(id *)error;
- (_TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient)init;
@end

@implementation ProminenceObservationServiceClient

- (BOOL)subscribeToActivityProminenceMatchingPredicate:(id)predicate error:(id *)error
{
  v6 = sub_22D0149FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  predicateCopy = predicate;
  selfCopy = self;
  v13 = sub_22D0141EC();
  v15 = v14;

  v16 = sub_22D0141DC();
  sub_22CF2F7D8(&qword_28143F698, MEMORY[0x277CB9538], MEMORY[0x277CB9530]);
  sub_22D01516C();

  sub_22CF2F820(v10);
  sub_22CEE7524(v13, v15);
  (*(v7 + 8))(v10, v6);
  return 1;
}

- (_TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end