@interface APOdmlBiomeStream
- (APOdmlBiomeStream)initWithName:(id)name;
- (id)_applicationSupportDirectory;
- (id)publisher;
- (void)enumerateEvents:(id)events;
- (void)enumerateEvents:(id)events result:(id)result;
- (void)enumerateEventsWithDictionary:(id)dictionary;
- (void)filterEvents:(id)events result:(id)result;
- (void)filterEventsWithDictionary:(id)dictionary result:(id)result;
- (void)removeEvents:(id)events;
- (void)removeEventsWithDictionary:(id)dictionary;
- (void)writeEvent:(id)event;
@end

@implementation APOdmlBiomeStream

- (APOdmlBiomeStream)initWithName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = APOdmlBiomeStream;
  v6 = [(APOdmlBiomeStream *)&v18 init];
  v7 = v6;
  if (v6)
  {
    _applicationSupportDirectory = [(APOdmlBiomeStream *)v6 _applicationSupportDirectory];
    v9 = [_applicationSupportDirectory stringByAppendingPathComponent:@"odml_biome"];

    v10 = [MEMORY[0x277CF17F8] newPrivateStreamDefaultConfigurationWithStoreBasePath:v9];
    config = v7->_config;
    v7->_config = v10;

    objc_storeStrong(&v7->_streamName, name);
    v12 = objc_alloc(MEMORY[0x277CF1B30]);
    streamName = [(APOdmlBiomeStream *)v7 streamName];
    config = [(APOdmlBiomeStream *)v7 config];
    v15 = [v12 initWithPrivateStreamIdentifier:streamName storeConfig:config];
    stream = v7->_stream;
    v7->_stream = v15;
  }

  return v7;
}

- (void)enumerateEventsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_260ED157C;
  v6[3] = &unk_279AC6028;
  v7 = dictionaryCopy;
  v5 = dictionaryCopy;
  [(APOdmlBiomeStream *)self enumerateEvents:v6];
}

- (void)filterEventsWithDictionary:(id)dictionary result:(id)result
{
  dictionaryCopy = dictionary;
  resultCopy = result;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_260ED16E4;
  v12[3] = &unk_279AC6050;
  v13 = dictionaryCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_260ED1734;
  v10[3] = &unk_279AC6028;
  v11 = resultCopy;
  v8 = resultCopy;
  v9 = dictionaryCopy;
  [(APOdmlBiomeStream *)self filterEvents:v12 result:v10];
}

- (void)enumerateEvents:(id)events
{
  eventsCopy = events;
  publisher = [(APOdmlBiomeStream *)self publisher];
  [(APOdmlBiomeStream *)self enumerateEvents:publisher result:eventsCopy];
}

- (void)filterEvents:(id)events result:(id)result
{
  eventsCopy = events;
  resultCopy = result;
  publisher = [(APOdmlBiomeStream *)self publisher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_260ED18EC;
  v11[3] = &unk_279AC6078;
  v12 = eventsCopy;
  v9 = eventsCopy;
  v10 = [publisher filterWithIsIncluded:v11];

  [(APOdmlBiomeStream *)self enumerateEvents:v10 result:resultCopy];
}

- (void)removeEventsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_260ED19E4;
  v6[3] = &unk_279AC60C0;
  v7 = dictionaryCopy;
  v5 = dictionaryCopy;
  [(APOdmlBiomeStream *)self removeEvents:v6];
}

- (void)removeEvents:(id)events
{
  eventsCopy = events;
  stream = [(APOdmlBiomeStream *)self stream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_260ED1AF0;
  v7[3] = &unk_279AC60E8;
  v8 = eventsCopy;
  v6 = eventsCopy;
  [stream pruneWithPredicateBlock:v7];
}

- (void)writeEvent:(id)event
{
  eventCopy = event;
  stream = [(APOdmlBiomeStream *)self stream];
  source = [stream source];
  [source sendEvent:eventCopy];
}

- (void)enumerateEvents:(id)events result:(id)result
{
  eventsCopy = events;
  resultCopy = result;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_260ED1CF4;
  v13[3] = &unk_279AC6110;
  v13[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_260ED1E60;
  v10[3] = &unk_279AC6138;
  v8 = resultCopy;
  v11 = v8;
  v12 = v14;
  v9 = [eventsCopy sinkWithCompletion:v13 shouldContinue:v10];

  _Block_object_dispose(v14, 8);
}

- (id)publisher
{
  startDate = [(APOdmlBiomeStream *)self startDate];
  if (startDate)
  {
    v4 = MEMORY[0x277CCABB0];
    startDate2 = [(APOdmlBiomeStream *)self startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  endDate = [(APOdmlBiomeStream *)self endDate];
  if (endDate)
  {
    v8 = MEMORY[0x277CCABB0];
    endDate2 = [(APOdmlBiomeStream *)self endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  stream = [(APOdmlBiomeStream *)self stream];
  maxEvents = [(APOdmlBiomeStream *)self maxEvents];
  v13 = [stream publisherWithStartTime:v6 endTime:v10 maxEvents:maxEvents lastN:0 reversed:{-[APOdmlBiomeStream reverse](self, "reverse")}];

  return v13;
}

- (id)_applicationSupportDirectory
{
  v27 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  lastObject = [v3 lastObject];

  v5 = [lastObject stringByAppendingPathComponent:@"com.apple.ap.promotedcontentd"];
  v16 = 0;
  v6 = [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v9 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      code = [v7 code];
      localizedFailureReason = [v7 localizedFailureReason];
      userInfo = [v7 userInfo];
      *buf = 138478851;
      v18 = v10;
      v19 = 2048;
      v20 = code;
      v21 = 2113;
      v22 = v5;
      v23 = 2113;
      v24 = localizedFailureReason;
      v25 = 2113;
      v26 = userInfo;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%{private}@] Error %ld creating 'Application Support' subdirectory '%{private}@': %{private}@ %{private}@", buf, 0x34u);
    }

    v8 = 0;
  }

  return v8;
}

@end