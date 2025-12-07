@interface HMIVideoAnalyzerReportRecord
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key classificationScore:(id)score;
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key detectionScores:(id)scores frameResultIndex:(unint64_t)index;
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key trackingScores:(id)scores frameResultIndices:(id)indices;
@end

@implementation HMIVideoAnalyzerReportRecord

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key classificationScore:(id)score
{
  keyCopy = key;
  scoreCopy = score;
  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzerReportRecord;
  v9 = [(HMIVideoAnalyzerReportRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    v10->_count = 1;
    [scoreCopy floatValue];
    v10->_score = v11;
    frameResultIndices = v10->_frameResultIndices;
    v10->_frameResultIndices = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key detectionScores:(id)scores frameResultIndex:(unint64_t)index
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  scoresCopy = scores;
  v18.receiver = self;
  v18.super_class = HMIVideoAnalyzerReportRecord;
  v10 = [(HMIVideoAnalyzerReportRecord *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_key, key);
    v11->_count = [scoresCopy count];
    v12 = [scoresCopy valueForKeyPath:?];
    [v12 floatValue];
    v11->_score = v13;

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v19 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    frameResultIndices = v11->_frameResultIndices;
    v11->_frameResultIndices = v15;
  }

  return v11;
}

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key trackingScores:(id)scores frameResultIndices:(id)indices
{
  keyCopy = key;
  scoresCopy = scores;
  indicesCopy = indices;
  v17.receiver = self;
  v17.super_class = HMIVideoAnalyzerReportRecord;
  v12 = [(HMIVideoAnalyzerReportRecord *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v13->_count = [scoresCopy count];
    v14 = [scoresCopy valueForKeyPath:?];
    [v14 floatValue];
    v13->_score = v15;

    objc_storeStrong(&v13->_frameResultIndices, indices);
  }

  return v13;
}

@end