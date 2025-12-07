@interface TwoSampleTestResult
- (TwoSampleTestResult)initWithTestRan:(BOOL)ran testSkippedReason:(id)reason testStatistic:(id)statistic rejectNullHypothesis:(id)hypothesis sampleSize1:(int64_t)size1 numSuccesses1:(int64_t)successes1 minTimestamp1:(id)timestamp1 maxTimestamp1:(id)self0 sampleSize2:(int64_t)self1 numSuccesses2:(int64_t)self2 minTimestamp2:(id)self3 maxTimestamp2:(id)self4;
- (id)description;
@end

@implementation TwoSampleTestResult

- (TwoSampleTestResult)initWithTestRan:(BOOL)ran testSkippedReason:(id)reason testStatistic:(id)statistic rejectNullHypothesis:(id)hypothesis sampleSize1:(int64_t)size1 numSuccesses1:(int64_t)successes1 minTimestamp1:(id)timestamp1 maxTimestamp1:(id)self0 sampleSize2:(int64_t)self1 numSuccesses2:(int64_t)self2 minTimestamp2:(id)self3 maxTimestamp2:(id)self4
{
  ranCopy = ran;
  reasonCopy = reason;
  statisticCopy = statistic;
  hypothesisCopy = hypothesis;
  timestamp1Copy = timestamp1;
  maxTimestamp1Copy = maxTimestamp1;
  timestamp2Copy = timestamp2;
  maxTimestamp2Copy = maxTimestamp2;
  v30.receiver = self;
  v30.super_class = TwoSampleTestResult;
  v25 = [(TwoSampleTestResult *)&v30 init];
  v26 = v25;
  if (v25)
  {
    [(TwoSampleTestResult *)v25 setTestRan:ranCopy];
    [(TwoSampleTestResult *)v26 setTestSkippedReason:reasonCopy];
    [(TwoSampleTestResult *)v26 setTestStatistic:statisticCopy];
    [(TwoSampleTestResult *)v26 setRejectNullHypothesis:hypothesisCopy];
    [(TwoSampleTestResult *)v26 setSampleSize1:size1];
    [(TwoSampleTestResult *)v26 setNumSuccesses1:successes1];
    [(TwoSampleTestResult *)v26 setMinTimestamp1:timestamp1Copy];
    [(TwoSampleTestResult *)v26 setMaxTimestamp1:maxTimestamp1Copy];
    [(TwoSampleTestResult *)v26 setSampleSize2:size2];
    [(TwoSampleTestResult *)v26 setNumSuccesses2:successes2];
    [(TwoSampleTestResult *)v26 setMinTimestamp2:timestamp2Copy];
    [(TwoSampleTestResult *)v26 setMaxTimestamp2:maxTimestamp2Copy];
  }

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  testStatistic = [(TwoSampleTestResult *)self testStatistic];
  [testStatistic doubleValue];
  v6 = [v3 stringWithFormat:@"%f", v5];

  testStatistic2 = [(TwoSampleTestResult *)self testStatistic];

  if (!testStatistic2)
  {

    v6 = @"(null)";
  }

  v8 = MEMORY[0x277CCACA8];
  rejectNullHypothesis = [(TwoSampleTestResult *)self rejectNullHypothesis];
  v10 = [v8 stringWithFormat:@"%d", objc_msgSend(rejectNullHypothesis, "BOOLValue")];

  rejectNullHypothesis2 = [(TwoSampleTestResult *)self rejectNullHypothesis];

  v25 = v6;
  if (!rejectNullHypothesis2)
  {

    v10 = @"(null)";
  }

  v24 = MEMORY[0x277CCACA8];
  testRan = [(TwoSampleTestResult *)self testRan];
  testSkippedReason = [(TwoSampleTestResult *)self testSkippedReason];
  sampleSize1 = [(TwoSampleTestResult *)self sampleSize1];
  numSuccesses1 = [(TwoSampleTestResult *)self numSuccesses1];
  minTimestamp1 = [(TwoSampleTestResult *)self minTimestamp1];
  maxTimestamp1 = [(TwoSampleTestResult *)self maxTimestamp1];
  sampleSize2 = [(TwoSampleTestResult *)self sampleSize2];
  numSuccesses2 = [(TwoSampleTestResult *)self numSuccesses2];
  minTimestamp2 = [(TwoSampleTestResult *)self minTimestamp2];
  maxTimestamp2 = [(TwoSampleTestResult *)self maxTimestamp2];
  v21 = [v24 stringWithFormat:@"TwoSampleTestResult:\n testRan=%d\n testSkippedReason=%@\n testStatistic=%@\n rejectNullHypothesis=%@\n sampleSize1=%ld\n numSuccesses1=%ld\n minTimestamp1=%@\n maxTimestamp1=%@\n sampleSize2=%ld\n numSuccesses2=%ld\n minTimestamp2=%@\n maxTimestamp2=%@\n", testRan, testSkippedReason, v25, v10, sampleSize1, numSuccesses1, minTimestamp1, maxTimestamp1, sampleSize2, numSuccesses2, minTimestamp2, maxTimestamp2];

  return v21;
}

@end