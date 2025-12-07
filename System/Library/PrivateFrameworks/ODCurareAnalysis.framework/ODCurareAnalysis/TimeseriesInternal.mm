@interface TimeseriesInternal
- (TimeseriesInternal)init;
- (id)runBinomialTestTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level pHypothesis:(id)hypothesis error:(id *)self0;
- (id)runChangeDetectionWithEvents:(id)events test:(id)test lastRun:(id)run;
- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level error:(id *)error;
@end

@implementation TimeseriesInternal

- (id)runChangeDetectionWithEvents:(id)events test:(id)test lastRun:(id)run
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_25C7CD274();
  sub_25C7C0540(0, &qword_27FC159B8, 0x277D82BB8);
  v11 = sub_25C7CD204();
  if (run)
  {
    sub_25C7CD1C4();
    v12 = sub_25C7CD1D4();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_25C7CD1D4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  selfCopy = self;
  sub_25C7C06D8(v10, v11, v9);

  sub_25C7C528C(v9, &qword_27FC15920, &qword_25C7CE220);
  v15 = sub_25C7CD1F4();

  return v15;
}

- (id)runBinomialTestTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level pHypothesis:(id)hypothesis error:(id *)self0
{
  levelCopy = level;
  selfCopy = self;
  errorCopy = error;
  hypothesisCopy = hypothesis;
  v12 = sub_25C7CD1D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &errorCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &errorCopy - v17;
  sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
  v19 = sub_25C7CD274();
  v20 = sub_25C7CD274();
  v21 = sub_25C7CD234();
  v23 = v22;
  if (test)
  {
    sub_25C7CD1C4();
    (*(v13 + 32))(v18, v15, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sizeCopy = size;
  v24 = levelCopy;
  v25 = hypothesisCopy;
  v26 = selfCopy;
  sub_25C7C273C(v19, v20, v21, v23, size, v18, v24, v25);
  sub_25C7C528C(v18, &qword_27FC15920, &qword_25C7CE220);

  sub_25C7C0540(0, &qword_27FC159F0, off_2799B94B0);
  v27 = sub_25C7CD264();

  return v27;
}

- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level error:(id *)error
{
  selfCopy = self;
  levelCopy = level;
  errorCopy = error;
  v11 = sub_25C7CD1D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &errorCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &errorCopy - v16;
  sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
  v18 = sub_25C7CD274();
  v19 = sub_25C7CD274();
  v20 = sub_25C7CD234();
  v22 = v21;
  if (test)
  {
    sub_25C7CD1C4();
    (*(v12 + 32))(v17, v14, v11);
    (*(v12 + 56))(v17, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v17, 1, 1, v11);
  }

  sizeCopy = size;
  v24 = levelCopy;
  v25 = selfCopy;
  sub_25C7C3A20(v18, v19, v20, v22, size, v17, v24);
  sub_25C7C528C(v17, &qword_27FC15920, &qword_25C7CE220);

  sub_25C7C0540(0, &qword_27FC159E8, &off_2799B94B8);
  v26 = sub_25C7CD264();

  return v26;
}

- (TimeseriesInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Timeseries();
  return [(TimeseriesInternal *)&v3 init];
}

@end