@interface HMIVideoAnalyzerMutableReportComparison
- (HMIVideoAnalyzerMutableReportComparison)initWithTruePositiveKeys:(id)keys falseNegativeKeys:(id)negativeKeys falsePositiveKeys:(id)positiveKeys groupByKey:(BOOL)key;
- (id)attributeDescriptions;
@end

@implementation HMIVideoAnalyzerMutableReportComparison

- (HMIVideoAnalyzerMutableReportComparison)initWithTruePositiveKeys:(id)keys falseNegativeKeys:(id)negativeKeys falsePositiveKeys:(id)positiveKeys groupByKey:(BOOL)key
{
  keyCopy = key;
  keysCopy = keys;
  negativeKeysCopy = negativeKeys;
  positiveKeysCopy = positiveKeys;
  v34.receiver = self;
  v34.super_class = HMIVideoAnalyzerMutableReportComparison;
  v14 = [(HMIVideoAnalyzerMutableReportComparison *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_truePositiveKeys, keys);
    objc_storeStrong(&v15->_falseNegativeKeys, negativeKeys);
    objc_storeStrong(&v15->_falsePositiveKeys, positiveKeys);
    if (keyCopy)
    {
      v16 = MEMORY[0x277CBEB98];
      v17 = [keysCopy na_map:?];
      v18 = [v16 setWithArray:?];
      v15->_truePositive = [v18 count];

      v19 = MEMORY[0x277CBEB98];
      v20 = [negativeKeysCopy na_map:?];
      v21 = [v19 setWithArray:?];
      v15->_falseNegative = [v21 count];

      v22 = MEMORY[0x277CBEB98];
      v23 = [positiveKeysCopy na_map:?];
      v24 = [v22 setWithArray:?];
      v15->_falsePositive = [v24 count];
    }

    else
    {
      v25 = [keysCopy valueForKeyPath:?];
      v15->_truePositive = [v25 intValue];

      v26 = [negativeKeysCopy valueForKeyPath:?];
      v15->_falseNegative = [v26 intValue];

      v23 = [positiveKeysCopy valueForKeyPath:?];
      v15->_falsePositive = [v23 intValue];
    }

    truePositive = v15->_truePositive;
    v28 = truePositive;
    v29 = v15->_falsePositive + truePositive;
    v30 = truePositive / v29;
    if (!v29)
    {
      v30 = 0.0;
    }

    v15->_precision = v30;
    v31 = v15->_falseNegative + truePositive;
    v32 = v28 / v31;
    if (!v31)
    {
      v32 = 0.0;
    }

    v15->_recall = v32;
  }

  return v15;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self precision];
  v19 = [v4 numberWithFloat:?];
  v20 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self recall];
  v7 = [v6 numberWithFloat:?];
  v21 = [v5 initWithName:? value:?];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self truePositive];
  v10 = [v9 numberWithInteger:?];
  v22 = [v8 initWithName:? value:?];
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self falseNegative];
  v13 = [v12 numberWithInteger:?];
  v23 = [v11 initWithName:? value:?];
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self falsePositive];
  v16 = [v15 numberWithInteger:?];
  v24 = [v14 initWithName:? value:?];
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v17;
}

@end