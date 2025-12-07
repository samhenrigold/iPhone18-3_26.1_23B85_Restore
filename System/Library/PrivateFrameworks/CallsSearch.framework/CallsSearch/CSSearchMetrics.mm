@interface CSSearchMetrics
+ (id)shared;
- (NSDictionary)searchLatencyDict;
- (NSDictionary)startTimeDict;
- (void)keypadButtonInteractedWithButtonType:(unsigned int)type;
- (void)logSearchBarTap;
- (void)logSearchLatency;
- (void)logSearchResultInteraction:(unsigned int)interaction cellType:(unsigned int)type searchLength:(int64_t)length;
- (void)searchFinishedForController:(unsigned int)controller startTime:(id)time searchLength:(int64_t)length resultsCount:(int64_t)count;
- (void)setSearchLatencyDict:(id)dict;
- (void)setStartTimeDict:(id)dict;
@end

@implementation CSSearchMetrics

- (NSDictionary)startTimeDict
{
  sub_1CFB5D38C(0, &qword_1EE04BCE8, 0x1E695DF00);

  v2 = sub_1CFB8FA30();

  return v2;
}

- (void)setStartTimeDict:(id)dict
{
  sub_1CFB5D38C(0, &qword_1EE04BCE8, 0x1E695DF00);
  *(self + OBJC_IVAR___CSSearchMetrics_startTimeDict) = sub_1CFB8FA40();
}

- (NSDictionary)searchLatencyDict
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
  v2 = sub_1CFB8FA30();

  return v2;
}

- (void)setSearchLatencyDict:(id)dict
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
  *(self + OBJC_IVAR___CSSearchMetrics_searchLatencyDict) = sub_1CFB8FA40();
}

+ (id)shared
{
  if (qword_1EE04BD40 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE04BD48;

  return v3;
}

- (void)logSearchBarTap
{
  selfCopy = self;
  analyticsLogger = [(CSSearchMetrics *)selfCopy analyticsLogger];
  v3 = sub_1CFB8FA80();
  [(MPAnalyticsLogger *)analyticsLogger logEvent:v3];
}

- (void)keypadButtonInteractedWithButtonType:(unsigned int)type
{
  v3 = *&type;
  selfCopy = self;
  CSSearchMetrics.keypadButtonInteracted(buttonType:)(v3);
}

- (void)logSearchResultInteraction:(unsigned int)interaction cellType:(unsigned int)type searchLength:(int64_t)length
{
  v6 = *&type;
  v7 = *&interaction;
  selfCopy = self;
  CSSearchMetrics.logSearchResultInteraction(_:cellType:searchLength:)(v7, v6, length);
}

- (void)searchFinishedForController:(unsigned int)controller startTime:(id)time searchLength:(int64_t)length resultsCount:(int64_t)count
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC588, &qword_1CFB92050);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  if (time)
  {
    sub_1CFB8F6C0();
    v14 = sub_1CFB8F6F0();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_1CFB8F6F0();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  selfCopy = self;
  CSSearchMetrics.searchFinished(forController:startTime:searchLength:resultsCount:)(controller, v13, length, count);

  sub_1CFB5DDDC(v13, &qword_1EC4EC588, &qword_1CFB92050);
}

- (void)logSearchLatency
{
  selfCopy = self;
  sub_1CFB6A798();
}

@end