@interface SiriSuggestionsBookkeepingService
- (void)buildAutoCompleteIndexOnStartUpEvent:(BOOL)event with:(id)with;
- (void)getAccountDetailsWith:(id)with;
- (void)logEngagementFor:(id)for with:(id)with invocationType:(id)type featureRequirements:(id)requirements with:(id)a7;
- (void)logFrom:(id)from deliveryVehicle:(id)vehicle generationId:(id)id featureRequirements:(id)requirements with:(id)with;
@end

@implementation SiriSuggestionsBookkeepingService

- (void)buildAutoCompleteIndexOnStartUpEvent:(BOOL)event with:(id)with
{
  v6 = _Block_copy(with);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_100003374(event, sub_10000AFCC, v7);
}

- (void)logFrom:(id)from deliveryVehicle:(id)vehicle generationId:(id)id featureRequirements:(id)requirements with:(id)with
{
  v13 = sub_10000BCDC();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(with);
  fromCopy = from;
  vehicleCopy = vehicle;
  idCopy = id;
  requirementsCopy = requirements;
  selfCopy = self;
  v22 = sub_10000BCBC();
  v24 = v23;

  v25 = sub_10000BCBC();
  v27 = v26;

  sub_10000BCCC();
  v28 = sub_10000BCBC();
  v30 = v29;

  _Block_copy(v16);
  sub_100006204(v22, v24, v25, v27, v15, v28, v30, selfCopy, v16);
  _Block_release(v16);
  sub_10000A0D4(v28, v30);
  sub_10000A0D4(v25, v27);
  sub_10000A0D4(v22, v24);

  (*(v31 + 8))(v15, v32);
}

- (void)logEngagementFor:(id)for with:(id)with invocationType:(id)type featureRequirements:(id)requirements with:(id)a7
{
  v13 = sub_10000BCDC();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a7);
  forCopy = for;
  withCopy = with;
  typeCopy = type;
  requirementsCopy = requirements;
  selfCopy = self;
  v22 = sub_10000BCBC();
  v24 = v23;

  sub_10000BCCC();
  v25 = sub_10000BCBC();
  v27 = v26;

  v28 = sub_10000BCBC();
  v30 = v29;

  _Block_copy(v16);
  sub_1000075B4(v22, v24, v15, v25, v27, v28, v30, selfCopy, v16);
  _Block_release(v16);
  sub_10000A0D4(v28, v30);
  sub_10000A0D4(v25, v27);
  sub_10000A0D4(v22, v24);

  (*(v31 + 8))(v15, v32);
}

- (void)getAccountDetailsWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100008630(sub_10000A604, v5);
}

@end