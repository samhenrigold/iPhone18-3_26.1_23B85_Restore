@interface DIIOIterator
- (DIIOIterator)initWithIOIterator:(unsigned int)iterator retain:(BOOL)retain;
- (unsigned)copyNextObject;
@end

@implementation DIIOIterator

- (DIIOIterator)initWithIOIterator:(unsigned int)iterator retain:(BOOL)retain
{
  v5.receiver = self;
  v5.super_class = DIIOIterator;
  return [(DIIOObject *)&v5 initWithIOObject:*&iterator retain:retain];
}

- (unsigned)copyNextObject
{
  for (i = self; ; self = i)
  {
    result = IOIteratorNext([(DIIOObject *)self ioObj]);
    if (result)
    {
      break;
    }

    if (IOIteratorIsValid([(DIIOObject *)i ioObj]))
    {
      return 0;
    }

    IOIteratorReset([(DIIOObject *)i ioObj]);
    [(DIIOIterator *)i setStartedOver:1];
  }

  return result;
}

@end