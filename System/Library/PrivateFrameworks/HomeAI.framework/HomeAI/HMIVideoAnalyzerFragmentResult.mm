@interface HMIVideoAnalyzerFragmentResult
- (HMIVideoAnalyzerFragmentResult)initWithCoder:(id)coder;
- (HMIVideoAnalyzerFragmentResult)initWithFragment:(id)fragment events:(id)events frameResults:(id)results thumbnails:(id)thumbnails configuration:(id)configuration outcome:(id)outcome;
- (id)attributeDescriptions;
- (id)maxConfidenceEventForEventClass:(Class)class;
- (id)maxConfidenceEvents;
- (id)redactedCopyWithFrameResults:(BOOL)results fragment:(BOOL)fragment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerFragmentResult

- (HMIVideoAnalyzerFragmentResult)initWithFragment:(id)fragment events:(id)events frameResults:(id)results thumbnails:(id)thumbnails configuration:(id)configuration outcome:(id)outcome
{
  fragmentCopy = fragment;
  eventsCopy = events;
  resultsCopy = results;
  thumbnailsCopy = thumbnails;
  configurationCopy = configuration;
  outcomeCopy = outcome;
  v24.receiver = self;
  v24.super_class = HMIVideoAnalyzerFragmentResult;
  v18 = [(HMIVideoAnalyzerFragmentResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fragment, fragment);
    objc_storeStrong(&v19->_events, events);
    objc_storeStrong(&v19->_frameResults, results);
    objc_storeStrong(&v19->_thumbnails, thumbnails);
    objc_storeStrong(&v19->_configuration, configuration);
    objc_storeStrong(&v19->_outcome, outcome);
  }

  return v19;
}

- (id)redactedCopyWithFrameResults:(BOOL)results fragment:(BOOL)fragment
{
  fragmentCopy = fragment;
  resultsCopy = results;
  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  thumbnails = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
  if (resultsCopy)
  {
    frameResults2 = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
    v10 = [frameResults2 na_map:?];

    thumbnails2 = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
    v12 = [thumbnails2 na_map:?];

    thumbnails = v12;
    frameResults = v10;
  }

  fragment = [(HMIVideoAnalyzerFragmentResult *)self fragment];
  v14 = fragment;
  if (fragmentCopy)
  {
    redactedCopy = [fragment redactedCopy];

    v14 = redactedCopy;
  }

  v16 = objc_alloc(objc_opt_class());
  events = [(HMIVideoAnalyzerFragmentResult *)self events];
  configuration = [(HMIVideoAnalyzerFragmentResult *)self configuration];
  outcome = [(HMIVideoAnalyzerFragmentResult *)self outcome];
  v20 = [v16 initWithFragment:? events:? frameResults:? thumbnails:? configuration:? outcome:?];

  return v20;
}

- (id)maxConfidenceEventForEventClass:(Class)class
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  v5 = [frameResults na_flatMap:?];
  events = [(HMIVideoAnalyzerFragmentResult *)self events];
  allObjects = [events allObjects];
  v8 = [v5 arrayByAddingObjectsFromArray:?];

  v9 = [v8 na_flatMap:?];

  v10 = [v9 na_filter:?];

  [v10 na_each:{MEMORY[0x277D85DD0], 3221225472, __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke_4, &unk_278752EF8, &v13}];
  v11 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v11;
}

id __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  v3 = [v2 allObjects];

  return v3;
}

void __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  v14 = v4;
  if (v7)
  {
    v8 = [v4 confidence];
    [v8 value];
    v10 = v9;
    v11 = [*(*(*(a1 + 32) + 8) + 40) confidence];
    [v11 value];
    v13 = v12;

    if (v10 <= v13)
    {
      goto LABEL_5;
    }

    v6 = (*(*(a1 + 32) + 8) + 40);
  }

  objc_storeStrong(v6, a2);
LABEL_5:
}

- (id)maxConfidenceEvents
{
  v2 = +[HMIVideoAnalyzerEvent eventClasses];
  v3 = [v2 na_map:?];

  return v3;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  maxConfidenceEvents = [(HMIVideoAnalyzerFragmentResult *)self maxConfidenceEvents];
  allObjects = [maxConfidenceEvents allObjects];
  v16 = [v3 initWithName:? value:?];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  v17 = [v4 initWithName:? value:?];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  thumbnails = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
  v18 = [v6 initWithName:? value:?];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  fragment = [(HMIVideoAnalyzerFragmentResult *)self fragment];
  v19 = [v8 initWithName:? value:?];
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  configuration = [(HMIVideoAnalyzerFragmentResult *)self configuration];
  v20 = [v10 initWithName:? value:?];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v12;
}

- (HMIVideoAnalyzerFragmentResult)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_opt_class();
  v5 = NSStringFromSelector(sel_fragment);
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];

  v7 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v7 setWithArray:?];
  v10 = NSStringFromSelector(sel_events);
  v11 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v12 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v14 = [v12 setWithArray:?];
  v15 = NSStringFromSelector(sel_frameResults);
  v16 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v17 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v19 = [v17 setWithArray:?];
  v20 = NSStringFromSelector(sel_thumbnails);
  v21 = [coderCopy decodeObjectOfClasses:? forKey:?];

  objc_opt_class();
  v22 = NSStringFromSelector(sel_configuration);
  v23 = [coderCopy decodeObjectOfClass:? forKey:?];

  objc_opt_class();
  v24 = NSStringFromSelector(sel_outcome);
  v25 = [coderCopy decodeObjectOfClass:? forKey:?];

  v26 = [HMIVideoAnalyzerFragmentResult initWithFragment:"initWithFragment:events:frameResults:thumbnails:configuration:outcome:" events:? frameResults:? thumbnails:? configuration:? outcome:?];
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fragment = [(HMIVideoAnalyzerFragmentResult *)self fragment];
  v6 = NSStringFromSelector(sel_fragment);
  [coderCopy encodeObject:? forKey:?];

  events = [(HMIVideoAnalyzerFragmentResult *)self events];
  v8 = NSStringFromSelector(sel_events);
  [coderCopy encodeObject:? forKey:?];

  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  v10 = NSStringFromSelector(sel_frameResults);
  [coderCopy encodeObject:? forKey:?];

  thumbnails = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
  v12 = NSStringFromSelector(sel_thumbnails);
  [coderCopy encodeObject:? forKey:?];

  configuration = [(HMIVideoAnalyzerFragmentResult *)self configuration];
  v14 = NSStringFromSelector(sel_configuration);
  [coderCopy encodeObject:? forKey:?];

  outcome = [(HMIVideoAnalyzerFragmentResult *)self outcome];
  v15 = NSStringFromSelector(sel_outcome);
  [coderCopy encodeObject:? forKey:?];
}

@end