@interface NSData(GEOExtras)
- (id)_GEOCreateDispatchData;
@end

@implementation NSData(GEOExtras)

- (id)_GEOCreateDispatchData
{
  _createDispatchData = [self _createDispatchData];

  return _createDispatchData;
}

@end