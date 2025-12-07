@interface HFEventBuilder
+ (id)eventBuilderForEvent:(id)event;
- (HFEventBuilder)initWithEvent:(id)event;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)options;
- (unint64_t)hash;
@end

@implementation HFEventBuilder

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:objectCopy];

  return v5;
}

+ (id)eventBuilderForEvent:(id)event
{
  v10 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v4 = objc_opt_class()) == 0)
  {
    v5 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = eventCopy;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "No HFEventBuilder can handle the event: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = [[v4 alloc] initWithEvent:eventCopy];

  return v6;
}

- (HFEventBuilder)initWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HFEventBuilder;
  return [(HFEventBuilder *)&v4 init];
}

- (id)buildNewEventsFromCurrentState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFEventBuilder.m" lineNumber:68 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFEventBuilder buildNewEventsFromCurrentState]", objc_opt_class()}];

  return 0;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFEventBuilder.m" lineNumber:74 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFEventBuilder naturalLanguageNameWithOptions:]", objc_opt_class()}];

  return 0;
}

- (id)comparisonKey
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end