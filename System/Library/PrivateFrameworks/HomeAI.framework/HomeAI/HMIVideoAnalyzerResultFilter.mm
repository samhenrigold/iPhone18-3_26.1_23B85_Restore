@interface HMIVideoAnalyzerResultFilter
- (HMIVideoAnalyzerResultFilter)initWith;
- (id)applyWithFrameResult:(id)result;
@end

@implementation HMIVideoAnalyzerResultFilter

- (HMIVideoAnalyzerResultFilter)initWith
{
  v3.receiver = self;
  v3.super_class = HMIVideoAnalyzerResultFilter;
  return [(HMIVideoAnalyzerResultFilter *)&v3 init];
}

- (id)applyWithFrameResult:(id)result
{
  resultCopy = result;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

@end