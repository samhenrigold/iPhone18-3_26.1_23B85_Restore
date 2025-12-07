@interface HMIVideoAnalyzerEvent
+ (Class)eventClassForShortName:(id)name;
+ (NSArray)eventClassesArray;
+ (NSSet)eventClasses;
+ (id)defaultConfidenceThreshold:(Class)threshold confidenceLevel:(int64_t)level;
+ (id)defaultConfidenceThresholdsFeedback;
+ (id)defaultConfidenceThresholdsHigh;
+ (id)defaultConfidenceThresholdsMedium;
+ (id)eventConfidenceThresholdsHigh;
+ (id)eventConfidenceThresholdsMedium;
+ (id)eventsWithContentsOfFile:(id)file;
+ (id)rgbColorCodeForEventClass:(Class)class;
+ (id)shortNameForEventClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (HMIVideoAnalyzerEvent)initWithCoder:(id)coder;
- (HMIVideoAnalyzerEvent)initWithConfidence:(id)confidence boundingBox:(CGRect)box userInfo:(id)info;
- (NSArray)allEvents;
- (id)attributeDescriptions;
- (id)shortDescription;
- (int64_t)confidenceLevel;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerEvent

+ (NSArray)eventClassesArray
{
  if (eventClassesArray_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent eventClassesArray];
  }

  v3 = eventClassesArray_classes;

  return v3;
}

void __42__HMIVideoAnalyzerEvent_eventClassesArray__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:{v3, v4, v5, v6, v7, objc_opt_class(), v8}];
  v1 = eventClassesArray_classes;
  eventClassesArray_classes = v0;
}

+ (NSSet)eventClasses
{
  v2 = MEMORY[0x277CBEB98];
  eventClassesArray = [self eventClassesArray];
  v4 = [v2 setWithArray:?];

  return v4;
}

- (HMIVideoAnalyzerEvent)initWithConfidence:(id)confidence boundingBox:(CGRect)box userInfo:(id)info
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  confidenceCopy = confidence;
  infoCopy = info;
  if (confidenceCopy)
  {
    v14 = infoCopy;
    v20.receiver = self;
    v20.super_class = HMIVideoAnalyzerEvent;
    v15 = [(HMIVideoAnalyzerEvent *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_confidence, confidence);
      v16->_boundingBox.origin.x = x;
      v16->_boundingBox.origin.y = y;
      v16->_boundingBox.size.width = width;
      v16->_boundingBox.size.height = height;
      objc_storeStrong(&v16->_userInfo, info);
    }

    return v16;
  }

  else
  {
    [HMIVideoAnalyzerEvent initWithConfidence:boundingBox:userInfo:];
    return [(HMIVideoAnalyzerEvent *)v18 allEvents];
  }
}

- (NSArray)allEvents
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:self count:v4];

  return v2;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  [confidence value];
  v6 = [v4 numberWithDouble:?];
  v11 = [v3 initWithName:? value:?];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v8 = NSStringFromRect(v14);
  v12 = [v7 initWithName:? value:?];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v4 = [HMIVideoAnalyzerEvent shortNameForEventClass:?];
  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v9 = HMICGRectDescription(v5, v6, v7, v8);
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  shortDescription = [confidence shortDescription];
  v12 = [v3 stringWithFormat:v4, v9, shortDescription];

  return v12;
}

- (int64_t)confidenceLevel
{
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  level = [confidence level];

  return level;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v25) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      confidence = [(HMIVideoAnalyzerEvent *)self confidence];
      confidence2 = [(HMIVideoAnalyzerEvent *)v5 confidence];
      v8 = HMFEqualObjects();

      [(HMIVideoAnalyzerEvent *)self boundingBox];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(HMIVideoAnalyzerEvent *)v5 boundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      v28.origin.x = v18;
      v28.origin.y = v20;
      v28.size.width = v22;
      v28.size.height = v24;
      v25 = v8 & CGRectEqualToRect(v27, v28);
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  v4 = [confidence hash];
  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v12 = HMIHashCGRect(v5, v6, v7, v8, v9, v10, v11);

  return v12 ^ v4;
}

- (HMIVideoAnalyzerEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = NSStringFromSelector(sel_confidence);
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];

  v7 = NSStringFromSelector(sel_boundingBox);
  [coderCopy decodeRectForKey:?];

  v8 = MEMORY[0x277CBEB98];
  objc_opt_class();
  objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v10 = [v8 setWithArray:?];
  v11 = NSStringFromSelector(sel_userInfo);
  v12 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v13 = [HMIVideoAnalyzerEvent initWithConfidence:"initWithConfidence:boundingBox:userInfo:" boundingBox:? userInfo:?];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  v6 = NSStringFromSelector(sel_confidence);
  [coderCopy encodeObject:? forKey:?];

  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v7 = NSStringFromSelector(sel_boundingBox);
  [coderCopy encodeRect:? forKey:?];

  userInfo = [(HMIVideoAnalyzerEvent *)self userInfo];
  v8 = NSStringFromSelector(sel_userInfo);
  [coderCopy encodeObject:? forKey:?];
}

+ (id)eventsWithContentsOfFile:(id)file
{
  v28 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:?];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:? options:? error:?];
    v8 = 0;
    if (v7)
    {
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v10 = MEMORY[0x277CBEB98];
      v11 = [HMIJSONUnarchiver objectWithJSONData:"objectWithJSONData:classMap:" classMap:?];
      v12 = [v10 setWithArray:?];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v20;
        v24 = 2112;
        v25 = fileCopy;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot read events from file %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = fileCopy;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Events file %@ does not exist.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

+ (id)shortNameForEventClass:(Class)class
{
  if (shortNameForEventClass__onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent shortNameForEventClass:];
  }

  v3 = shortNameForEventClass__map;

  return [v3 objectForKeyedSubscript:?];
}

void __48__HMIVideoAnalyzerEvent_shortNameForEventClass___block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v10 = @"Event";
  v3 = objc_opt_class();
  v11 = @"Motion";
  v4 = objc_opt_class();
  v12 = @"Person";
  v5 = objc_opt_class();
  v13 = @"Pet";
  v6 = objc_opt_class();
  v14 = @"Package";
  v7 = objc_opt_class();
  v15 = @"Vehicle";
  v8 = objc_opt_class();
  v16 = @"Face";
  v9 = objc_opt_class();
  v17 = @"Torso";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = shortNameForEventClass__map;
  shortNameForEventClass__map = v0;
}

+ (Class)eventClassForShortName:(id)name
{
  v3 = eventClassForShortName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[HMIVideoAnalyzerEvent eventClassForShortName:];
  }

  v5 = eventClassForShortName__map;
  lowercaseString = [nameCopy lowercaseString];

  v7 = [v5 objectForKeyedSubscript:?];

  return v7;
}

void __48__HMIVideoAnalyzerEvent_eventClassForShortName___block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = @"event";
  v10 = objc_opt_class();
  v3 = @"motion";
  v11 = objc_opt_class();
  v4 = @"person";
  v12 = objc_opt_class();
  v5 = @"pet";
  v13 = objc_opt_class();
  v6 = @"vehicle";
  v14 = objc_opt_class();
  v7 = @"package";
  v15 = objc_opt_class();
  v8 = @"face";
  v16 = objc_opt_class();
  v9 = @"torso";
  v17 = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = eventClassForShortName__map;
  eventClassForShortName__map = v0;
}

+ (id)rgbColorCodeForEventClass:(Class)class
{
  if (rgbColorCodeForEventClass__onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent rgbColorCodeForEventClass:];
  }

  v3 = rgbColorCodeForEventClass__map;

  return [v3 objectForKeyedSubscript:?];
}

void __51__HMIVideoAnalyzerEvent_rgbColorCodeForEventClass___block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v9 = @"#D62728";
  v3 = objc_opt_class();
  v10 = @"#2CA02C";
  v4 = objc_opt_class();
  v11 = @"#1F77B4";
  v5 = objc_opt_class();
  v12 = @"#9467BD";
  v6 = objc_opt_class();
  v13 = @"#FF7F0E";
  v7 = objc_opt_class();
  v14 = @"#8C564B";
  v8 = objc_opt_class();
  v15 = @"#7F7F7F";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = rgbColorCodeForEventClass__map;
  rgbColorCodeForEventClass__map = v0;
}

+ (id)defaultConfidenceThresholdsFeedback
{
  if (defaultConfidenceThresholdsFeedback_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsFeedback];
  }

  v3 = defaultConfidenceThresholdsFeedback_confidenceThresholdsFeedback;

  return v3;
}

void __60__HMIVideoAnalyzerEvent_defaultConfidenceThresholdsFeedback__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = &unk_2840758C8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = defaultConfidenceThresholdsFeedback_confidenceThresholdsFeedback;
  defaultConfidenceThresholdsFeedback_confidenceThresholdsFeedback = v0;
}

+ (id)defaultConfidenceThresholdsMedium
{
  if (defaultConfidenceThresholdsMedium_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsMedium];
  }

  v3 = defaultConfidenceThresholdsMedium_confidenceThresholdsMedium;

  return v3;
}

void __58__HMIVideoAnalyzerEvent_defaultConfidenceThresholdsMedium__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v8 = &unk_2840758D8;
  v3 = objc_opt_class();
  v9 = &unk_2840758E8;
  v4 = objc_opt_class();
  v10 = &unk_2840758F8;
  v5 = objc_opt_class();
  v11 = &unk_284075908;
  v6 = objc_opt_class();
  v12 = &unk_284075918;
  v7 = objc_opt_class();
  v13 = &unk_284075928;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = defaultConfidenceThresholdsMedium_confidenceThresholdsMedium;
  defaultConfidenceThresholdsMedium_confidenceThresholdsMedium = v0;
}

+ (id)defaultConfidenceThresholdsHigh
{
  if (defaultConfidenceThresholdsHigh_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsHigh];
  }

  v3 = defaultConfidenceThresholdsHigh_confidenceThresholdsHigh;

  return v3;
}

void __56__HMIVideoAnalyzerEvent_defaultConfidenceThresholdsHigh__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v8 = &unk_284075938;
  v3 = objc_opt_class();
  v9 = &unk_284075948;
  v4 = objc_opt_class();
  v10 = &unk_284075958;
  v5 = objc_opt_class();
  v11 = &unk_284075908;
  v6 = objc_opt_class();
  v12 = &unk_284075918;
  v7 = objc_opt_class();
  v13 = &unk_284075928;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = defaultConfidenceThresholdsHigh_confidenceThresholdsHigh;
  defaultConfidenceThresholdsHigh_confidenceThresholdsHigh = v0;
}

+ (id)defaultConfidenceThreshold:(Class)threshold confidenceLevel:(int64_t)level
{
  if (level == 1)
  {
    defaultConfidenceThresholdsMedium = [self defaultConfidenceThresholdsMedium];
    goto LABEL_5;
  }

  if (level == 2)
  {
    defaultConfidenceThresholdsMedium = [self defaultConfidenceThresholdsHigh];
LABEL_5:
    v5 = defaultConfidenceThresholdsMedium;
    v6 = [defaultConfidenceThresholdsMedium objectForKeyedSubscript:?];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)eventConfidenceThresholdsMedium
{
  if (eventConfidenceThresholdsMedium_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent eventConfidenceThresholdsMedium];
  }

  v3 = [eventConfidenceThresholdsMedium_eventClassToConfidenceKey na_dictionaryByMappingValues:?];
  defaultConfidenceThresholdsMedium = [self defaultConfidenceThresholdsMedium];
  v5 = [defaultConfidenceThresholdsMedium mutableCopy];

  [v5 addEntriesFromDictionary:?];

  return v5;
}

void __56__HMIVideoAnalyzerEvent_eventConfidenceThresholdsMedium__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v8 = @"confidenceThresholdPersonMedium";
  v3 = objc_opt_class();
  v9 = @"confidenceThresholdPetMedium";
  v4 = objc_opt_class();
  v10 = @"confidenceThresholdVehicleMedium";
  v5 = objc_opt_class();
  v11 = @"confidenceThresholdFaceMedium";
  v6 = objc_opt_class();
  v12 = @"confidenceThresholdTorsoMedium";
  v7 = objc_opt_class();
  v13 = @"confidenceThresholdPackageMedium";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = eventConfidenceThresholdsMedium_eventClassToConfidenceKey;
  eventConfidenceThresholdsMedium_eventClassToConfidenceKey = v0;
}

id __56__HMIVideoAnalyzerEvent_eventConfidenceThresholdsMedium__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[HMIPreference sharedInstance];
  v5 = [v4 numberPreferenceForKey:?];

  return v5;
}

+ (id)eventConfidenceThresholdsHigh
{
  if (eventConfidenceThresholdsHigh_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent eventConfidenceThresholdsHigh];
  }

  v3 = [eventConfidenceThresholdsHigh_eventClassToConfidenceKey na_dictionaryByMappingValues:?];
  defaultConfidenceThresholdsHigh = [self defaultConfidenceThresholdsHigh];
  v5 = [defaultConfidenceThresholdsHigh mutableCopy];

  [v5 addEntriesFromDictionary:?];

  return v5;
}

void __54__HMIVideoAnalyzerEvent_eventConfidenceThresholdsHigh__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v8 = @"confidenceThresholdPersonHigh";
  v3 = objc_opt_class();
  v9 = @"confidenceThresholdPetHigh";
  v4 = objc_opt_class();
  v10 = @"confidenceThresholdVehicleHigh";
  v5 = objc_opt_class();
  v11 = @"confidenceThresholdFaceHigh";
  v6 = objc_opt_class();
  v12 = @"confidenceThresholdTorsoHigh";
  v7 = objc_opt_class();
  v13 = @"confidenceThresholdPackageHigh";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = eventConfidenceThresholdsHigh_eventClassToConfidenceKey;
  eventConfidenceThresholdsHigh_eventClassToConfidenceKey = v0;
}

id __54__HMIVideoAnalyzerEvent_eventConfidenceThresholdsHigh__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[HMIPreference sharedInstance];
  v5 = [v4 numberPreferenceForKey:?];

  return v5;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
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