@interface HVNotificationsContentStream
- (BOOL)pruneEventsWithError:(id *)error predicateBlock:(id)block;
- (HVNotificationsContentStream)init;
- (HVNotificationsContentStream)initWithStreamIdentifier:(id)identifier;
- (HVNotificationsContentStream)initWithStreamIdentifier:(id)identifier eventClass:(Class)class;
- (id)publisherFromStartTime:(double)time;
- (id)publisherWithStartTime:(id)time endTime:(id)endTime maxEvents:(id)events reversed:(BOOL)reversed;
- (void)pruneWithPredicateBlock:(id)block;
@end

@implementation HVNotificationsContentStream

- (BOOL)pruneEventsWithError:(id *)error predicateBlock:(id)block
{
  stream = self->_stream;
  blockCopy = block;
  pruner = [(BMStream *)stream pruner];
  [pruner deleteEventsPassingTest:blockCopy];

  return 1;
}

- (void)pruneWithPredicateBlock:(id)block
{
  stream = self->_stream;
  blockCopy = block;
  pruner = [(BMStream *)stream pruner];
  [pruner deleteEventsPassingTest:blockCopy];
}

- (id)publisherWithStartTime:(id)time endTime:(id)endTime maxEvents:(id)events reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  timeCopy = time;
  endTimeCopy = endTime;
  eventsCopy = events;
  if (timeCopy)
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [timeCopy doubleValue];
    v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    if (endTimeCopy)
    {
LABEL_3:
      v15 = objc_alloc(MEMORY[0x277CBEAA8]);
      [endTimeCopy doubleValue];
      v16 = [v15 initWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (endTimeCopy)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v14 endDate:v16 maxEvents:objc_msgSend(eventsCopy lastN:"integerValue") reversed:{0, reversedCopy}];
  v18 = [(BMStream *)self->_stream publisherWithOptions:v17];

  return v18;
}

- (id)publisherFromStartTime:(double)time
{
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:time];
  v5 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v4 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v6 = [(BMStream *)self->_stream publisherWithOptions:v5];

  return v6;
}

- (HVNotificationsContentStream)initWithStreamIdentifier:(id)identifier eventClass:(Class)class
{
  v10.receiver = self;
  v10.super_class = HVNotificationsContentStream;
  v4 = [(BMContentStream *)&v10 initWithStreamIdentifier:identifier eventClass:class];
  if (v4)
  {
    v5 = BiomeLibrary();
    proactiveHarvesting = [v5 ProactiveHarvesting];
    notifications = [proactiveHarvesting Notifications];
    stream = v4->_stream;
    v4->_stream = notifications;
  }

  return v4;
}

- (HVNotificationsContentStream)initWithStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(HVNotificationsContentStream *)self initWithStreamIdentifier:identifierCopy eventClass:objc_opt_class()];

  return v5;
}

- (HVNotificationsContentStream)init
{
  v3 = BiomeLibrary();
  proactiveHarvesting = [v3 ProactiveHarvesting];
  notifications = [proactiveHarvesting Notifications];
  identifier = [notifications identifier];
  v7 = [(HVNotificationsContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v7;
}

@end