@interface HMIVideoAnalyzerMutableReportSession
- (HMIVideoAnalyzerMutableReportSession)initWithCoder:(id)coder;
- (HMIVideoAnalyzerMutableReportSession)initWithSource:(id)source;
- (id)attributeDescriptions;
- (void)appendFragmentResult:(id)result redactFrames:(BOOL)frames;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerMutableReportSession

- (HMIVideoAnalyzerMutableReportSession)initWithSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerMutableReportSession;
  v6 = [(HMIVideoAnalyzerMutableReportSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
    array = [MEMORY[0x277CBEB18] array];
    fragments = v7->_fragments;
    v7->_fragments = array;
  }

  return v7;
}

- (void)appendFragmentResult:(id)result redactFrames:(BOOL)frames
{
  resultCopy = result;
  fragments = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v6 = [resultCopy redactedCopyWithFrameResults:? fragment:?];

  [fragments addObject:?];
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  source = [(HMIVideoAnalyzerMutableReportSession *)self source];
  v9 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  fragments = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v10 = [v5 initWithName:? value:?];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  source = [(HMIVideoAnalyzerMutableReportSession *)self source];
  v6 = NSStringFromSelector(sel_source);
  [coderCopy encodeObject:? forKey:?];

  fragments = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v7 = [fragments copy];
  v8 = NSStringFromSelector(sel_fragments);
  [coderCopy encodeObject:? forKey:?];
}

- (HMIVideoAnalyzerMutableReportSession)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_opt_class();
  v5 = NSStringFromSelector(sel_source);
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];

  v7 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v7 setWithArray:?];
  v10 = NSStringFromSelector(sel_fragments);
  v11 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v17.receiver = self;
  v17.super_class = HMIVideoAnalyzerMutableReportSession;
  v12 = [(HMIVideoAnalyzerMutableReportSession *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_source, v6);
    v14 = [v11 mutableCopy];
    fragments = v13->_fragments;
    v13->_fragments = v14;
  }

  return v13;
}

@end