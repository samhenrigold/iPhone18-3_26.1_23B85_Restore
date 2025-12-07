@interface QoSObservationServiceClient
- (BOOL)subscribeToActivityQoSMatchingPredicate:(id)predicate error:(id *)error;
- (_TtC11SessionCore27QoSObservationServiceClient)init;
@end

@implementation QoSObservationServiceClient

- (_TtC11SessionCore27QoSObservationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)subscribeToActivityQoSMatchingPredicate:(id)predicate error:(id *)error
{
  v6 = sub_22D0147AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  predicateCopy = predicate;
  selfCopy = self;
  v13 = sub_22D0141EC();
  v15 = v14;

  v16 = sub_22D0141DC();
  sub_22D00A108(&qword_27D9F3ED0, MEMORY[0x277CB9318], MEMORY[0x277CB9310]);
  sub_22D01516C();

  sub_22D009CF4(v10);
  sub_22CEE7524(v13, v15);
  (*(v7 + 8))(v10, v6);
  return 1;
}

@end