@interface HMIVideoAnalyzerDynamicConfiguration
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerDynamicConfiguration)init;
- (HMIVideoAnalyzerDynamicConfiguration)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerDynamicConfiguration

- (HMIVideoAnalyzerDynamicConfiguration)init
{
  v6.receiver = self;
  v6.super_class = HMIVideoAnalyzerDynamicConfiguration;
  v2 = [(HMIVideoAnalyzerDynamicConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_eventTriggers = 0;
    activityZones = v2->_activityZones;
    v2->_activityZones = MEMORY[0x277CBEBF8];

    v3->_recognizeFaces = 0;
  }

  return v3;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = HMIVideoAnalyzerEventTriggersAsString([(HMIVideoAnalyzerDynamicConfiguration *)self eventTriggers]);
  v5 = [v3 initWithName:? value:?];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerDynamicConfiguration *)self recognizeFaces];
  v7 = HMFBooleanToString();
  v14 = [v6 initWithName:? value:?];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  activityZones = [(HMIVideoAnalyzerDynamicConfiguration *)self activityZones];
  [activityZones count];
  v11 = [v9 numberWithUnsignedInteger:?];
  v15 = [v8 initWithName:? value:?];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventTriggers = [(HMIVideoAnalyzerDynamicConfiguration *)self eventTriggers];
      v7 = eventTriggers == [(HMIVideoAnalyzerDynamicConfiguration *)v5 eventTriggers];
      LODWORD(eventTriggers) = [(HMIVideoAnalyzerDynamicConfiguration *)self recognizeFaces];
      v8 = v7 & ~(eventTriggers ^ [(HMIVideoAnalyzerDynamicConfiguration *)v5 recognizeFaces]);
      activityZones = [(HMIVideoAnalyzerDynamicConfiguration *)self activityZones];
      activityZones2 = [(HMIVideoAnalyzerDynamicConfiguration *)v5 activityZones];

      LOBYTE(v5) = HMFEqualObjects();
      v11 = v8 & v5;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMIVideoAnalyzerDynamicConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMIVideoAnalyzerDynamicConfiguration *)self init];
  v6 = MEMORY[0x277CBEB98];
  objc_opt_class();
  objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v8 = [v6 setWithArray:?];
  v9 = NSStringFromSelector(sel_activityZones);
  v10 = [coderCopy decodeObjectOfClasses:? forKey:?];
  [(HMIVideoAnalyzerDynamicConfiguration *)v5 setActivityZones:?];

  v11 = NSStringFromSelector(sel_eventTriggers);
  [coderCopy decodeIntegerForKey:?];
  [(HMIVideoAnalyzerDynamicConfiguration *)v5 setEventTriggers:?];

  v12 = NSStringFromSelector(sel_recognizeFaces);
  [coderCopy decodeBoolForKey:?];

  [(HMIVideoAnalyzerDynamicConfiguration *)v5 setRecognizeFaces:?];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityZones = [(HMIVideoAnalyzerDynamicConfiguration *)self activityZones];
  v6 = NSStringFromSelector(sel_activityZones);
  [coderCopy encodeObject:? forKey:?];

  [(HMIVideoAnalyzerDynamicConfiguration *)self eventTriggers];
  v7 = NSStringFromSelector(sel_eventTriggers);
  [coderCopy encodeInteger:? forKey:?];

  [(HMIVideoAnalyzerDynamicConfiguration *)self recognizeFaces];
  v8 = NSStringFromSelector(sel_recognizeFaces);
  [coderCopy encodeBool:? forKey:?];
}

@end