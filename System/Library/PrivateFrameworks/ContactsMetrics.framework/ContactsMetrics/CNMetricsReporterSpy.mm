@interface CNMetricsReporterSpy
- (CNMetricsReporterSpy)init;
- (NSArray)events;
- (void)clearEvents;
- (void)logSimpleEvent:(id)event forApplication:(id)application andLog:(BOOL)log;
- (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log;
@end

@implementation CNMetricsReporterSpy

- (CNMetricsReporterSpy)init
{
  v7.receiver = self;
  v7.super_class = CNMetricsReporterSpy;
  v2 = [(CNMetricsReporterSpy *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entries = v2->_entries;
    v2->_entries = v3;

    v5 = v2;
  }

  return v2;
}

- (NSArray)events
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_entries copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)clearEvents
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_entries removeAllObjects];
  objc_sync_exit(obj);
}

- (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log
{
  logCopy = log;
  dictionaryCopy = dictionary;
  eventCopy = event;
  v9 = [[CNMetricsReporterSpiedEntry alloc] initWithDictionary:dictionaryCopy event:eventCopy logged:logCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_entries addObject:v9];
  objc_sync_exit(selfCopy);
}

- (void)logSimpleEvent:(id)event forApplication:(id)application andLog:(BOOL)log
{
  logCopy = log;
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  eventCopy = event;
  v11 = [v8 alloc];
  v14 = @"application";
  v15[0] = applicationCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v13 = [v11 initWithDictionary:v12];
  [(CNMetricsReporterSpy *)self sendDictionary:v13 forEvent:eventCopy andLog:logCopy];
}

@end