@interface VANRDelegateBridge
- (void)keywordSpotterDidDetectKeywordWithEvent:(id)event;
- (void)keywordSpotterDidStopWithSummaryWithJson:(id)json uuid:(id)uuid perfLogs:(id)logs;
- (void)speechResultsWithResult:(id)result;
@end

@implementation VANRDelegateBridge

- (void)keywordSpotterDidDetectKeywordWithEvent:(id)event
{
  eventCopy = event;

  sub_2722ED2F0(eventCopy);
}

- (void)keywordSpotterDidStopWithSummaryWithJson:(id)json uuid:(id)uuid perfLogs:(id)logs
{
  v7 = sub_272376E5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27237782C();
  v13 = v12;
  sub_272376E3C();
  if (logs)
  {
    v14 = sub_272377AFC();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(self->super.isa + 19);

  if (v15(v16))
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 16))(v11, v13, v10, v14, ObjectType, v18);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
}

- (void)speechResultsWithResult:(id)result
{
  resultCopy = result;

  sub_2723013BC(resultCopy);
}

@end