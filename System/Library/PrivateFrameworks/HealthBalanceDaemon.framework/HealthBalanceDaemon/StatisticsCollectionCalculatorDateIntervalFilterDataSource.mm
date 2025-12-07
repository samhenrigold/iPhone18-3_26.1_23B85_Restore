@interface StatisticsCollectionCalculatorDateIntervalFilterDataSource
- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler;
- (_TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource)init;
@end

@implementation StatisticsCollectionCalculatorDateIntervalFilterDataSource

- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler
{
  v12 = sub_22892DDC8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288CD8F0(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = _Block_copy(handler);
  v20 = _Block_copy(mergeHandler);
  if (interval)
  {
    sub_22892DD68();
    (*(v13 + 32))(v18, v15, v12);
    v21 = (*(v13 + 56))(v18, 0, 1, v12);
  }

  else
  {
    v21 = (*(v13 + 56))(v18, 1, 1, v12);
  }

  v22 = MEMORY[0x28223BE20](v21);
  *&v26[-16] = v19;
  MEMORY[0x28223BE20](v22);
  *&v26[-16] = v20;
  calculatorCopy = calculator;
  selfCopy = self;
  sub_2288EC974(calculatorCopy, v18, sub_2288ED1C0, &v26[-32], sub_2288ED1F4, &v26[-32]);
  sub_2288CA8C4(v18);

  _Block_release(v20);
  _Block_release(v19);
  return 1;
}

- (_TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end