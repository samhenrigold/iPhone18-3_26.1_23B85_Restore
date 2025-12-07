@interface HMIVideoAnalyzerFrameResult
+ (id)combineFrameResults:(id)results withResults:(id)withResults;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- (CGRect)regionOfInterest;
- (HMIVideoAnalyzerFrameResult)initWithCoder:(id)coder;
- (HMIVideoAnalyzerFrameResult)initWithFrame:(id)frame events:(id)events regionOfInterest:(CGRect)interest;
- (id)attributeDescriptions;
- (id)maxConfidenceEventForEventClass:(Class)class;
- (id)maxConfidenceEvents;
- (id)redactedCopy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerFrameResult

- (HMIVideoAnalyzerFrameResult)initWithFrame:(id)frame events:(id)events regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  frameCopy = frame;
  eventsCopy = events;
  if (frameCopy)
  {
    v14 = eventsCopy;
    v20.receiver = self;
    v20.super_class = HMIVideoAnalyzerFrameResult;
    v15 = [(HMIVideoAnalyzerFrameResult *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_frame, frame);
      objc_storeStrong(&v16->_events, events);
      v16->_regionOfInterest.origin.x = x;
      v16->_regionOfInterest.origin.y = y;
      v16->_regionOfInterest.size.width = width;
      v16->_regionOfInterest.size.height = height;
    }

    return v16;
  }

  else
  {
    v18 = [HMIVideoAnalyzerFrameResult initWithFrame:events:regionOfInterest:];
    return [(HMIVideoAnalyzerFrameResult *)v18 redactedCopy];
  }
}

- (id)redactedCopy
{
  v3 = objc_alloc(objc_opt_class());
  frame = [(HMIVideoAnalyzerFrameResult *)self frame];
  redactedCopy = [frame redactedCopy];
  events = [(HMIVideoAnalyzerFrameResult *)self events];
  [(HMIVideoAnalyzerFrameResult *)self regionOfInterest];
  v7 = [v3 initWithFrame:? events:? regionOfInterest:?];

  return v7;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  frame = [(HMIVideoAnalyzerFrameResult *)self frame];
  v5 = [v3 initWithName:? value:?];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  events = [(HMIVideoAnalyzerFrameResult *)self events];
  v12 = [v6 initWithName:? value:?];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerFrameResult *)self regionOfInterest];
  v9 = NSStringFromRect(v15);
  v13 = [v8 initWithName:? value:?];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v10;
}

- (id)maxConfidenceEventForEventClass:(Class)class
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  events = [(HMIVideoAnalyzerFrameResult *)self events];
  v4 = [events na_filter:?];
  [v4 na_each:{MEMORY[0x277D85DD0], 3221225472, __63__HMIVideoAnalyzerFrameResult_maxConfidenceEventForEventClass___block_invoke_2, &unk_278752EF8, &v7}];

  v5 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v5;
}

void __63__HMIVideoAnalyzerFrameResult_maxConfidenceEventForEventClass___block_invoke_2(uint64_t a1, void *a2)
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time
{
  result = self->_frame;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)retstr presentationTimeStamp];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

+ (id)combineFrameResults:(id)results withResults:(id)withResults
{
  v4 = [results arrayByAddingObjectsFromArray:?];
  v5 = [v4 sortedArrayUsingComparator:?];
  v6 = [v5 mutableCopy];

  if ([v6 count] >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:{v32.value, *&v32.timescale, v32.epoch, time1.value, *&time1.timescale, time1.epoch}];
      v10 = [v6 objectAtIndexedSubscript:?];
      v11 = v10;
      if (v9)
      {
        [&time1 time];
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        if (!v10)
        {
LABEL_7:
          memset(&v32, 0, sizeof(v32));
          goto LABEL_8;
        }
      }

      [&v32 time];
LABEL_8:
      if (CMTimeCompare(&time1, &v32))
      {
        v7 = v8;
      }

      else
      {
        v12 = [HMIVideoAnalyzerFrameResult alloc];
        frame = [v9 frame];
        events = [v9 events];
        events2 = [v11 events];
        v16 = [events setByAddingObjectsFromSet:?];
        [v9 regionOfInterest];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [v11 regionOfInterest];
        v36.origin.x = v25;
        v36.origin.y = v26;
        v36.size.width = v27;
        v36.size.height = v28;
        v35.origin.x = v18;
        v35.origin.y = v20;
        v35.size.width = v22;
        v35.size.height = v24;
        CGRectUnion(v35, v36);
        v29 = [HMIVideoAnalyzerFrameResult initWithFrame:v12 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];

        [v6 replaceObjectAtIndex:? withObject:?];
        [v6 removeObjectAtIndex:?];
      }

      v8 = v7 + 1;
    }

    while (v7 + 1 < [v6 count]);
  }

  v30 = [v6 copy];

  return v30;
}

BOOL __63__HMIVideoAnalyzerFrameResult_combineFrameResults_withResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [&time1 time];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [&v9 time];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9) > 0;

  return v7;
}

- (HMIVideoAnalyzerFrameResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = NSStringFromSelector(sel_frame);
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];

  v7 = MEMORY[0x277CBEB98];
  objc_opt_class();
  objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v7 setWithArray:?];
  v10 = NSStringFromSelector(sel_events);
  v11 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v12 = NSStringFromSelector(sel_regionOfInterest);
  [coderCopy decodeRectForKey:?];

  v13 = [HMIVideoAnalyzerFrameResult initWithFrame:"initWithFrame:events:regionOfInterest:" events:? regionOfInterest:?];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  frame = [(HMIVideoAnalyzerFrameResult *)self frame];
  v6 = NSStringFromSelector(sel_frame);
  [coderCopy encodeObject:? forKey:?];

  events = [(HMIVideoAnalyzerFrameResult *)self events];
  v8 = NSStringFromSelector(sel_events);
  [coderCopy encodeObject:? forKey:?];

  [(HMIVideoAnalyzerFrameResult *)self regionOfInterest];
  v9 = NSStringFromSelector(sel_regionOfInterest);
  [coderCopy encodeRect:? forKey:?];
}

- (CGRect)regionOfInterest
{
  objc_copyStruct(v6, &self->_regionOfInterest, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end