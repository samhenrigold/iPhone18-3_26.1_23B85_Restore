@interface ASDTIOService
+ (id)forIOObject:(unsigned int)object andIDValue:(id)value;
- (id)initForIOObject:(unsigned int)object andIDValue:(id)value;
- (void)dealloc;
- (void)releaseIOService;
- (void)retainIOService;
@end

@implementation ASDTIOService

+ (id)forIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = *&object;
  valueCopy = value;
  v7 = [[self alloc] initForIOObject:v4 andIDValue:valueCopy];

  return v7;
}

- (id)initForIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = *&object;
  valueCopy = value;
  v9 = valueCopy;
  if (!v4 || !valueCopy)
  {
    v10 = ASDTBaseLogType(valueCopy, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOService initForIOObject:v10 andIDValue:?];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTIOService.m" lineNumber:39 description:@"Invalid arugments."];
  }

  v15.receiver = self;
  v15.super_class = ASDTIOService;
  v12 = [(ASDTIOService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(ASDTIOService *)v12 setIdValue:v9];
    [(ASDTIOService *)v13 setIoObject:v4];
    [(ASDTIOService *)v13 retainIOService];
  }

  return v13;
}

- (void)dealloc
{
  [(ASDTIOService *)self releaseIOService];
  v3.receiver = self;
  v3.super_class = ASDTIOService;
  [(ASDTIOService *)&v3 dealloc];
}

- (void)retainIOService
{
  ioObject = [(ASDTIOService *)self ioObject];

  IOObjectRetain(ioObject);
}

- (void)releaseIOService
{
  if ([(ASDTIOService *)self ioObject])
  {
    ioObject = [(ASDTIOService *)self ioObject];

    IOObjectRelease(ioObject);
  }
}

@end