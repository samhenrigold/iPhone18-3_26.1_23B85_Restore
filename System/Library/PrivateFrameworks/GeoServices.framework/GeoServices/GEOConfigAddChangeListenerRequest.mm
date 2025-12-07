@interface GEOConfigAddChangeListenerRequest
- (BOOL)isValid;
@end

@implementation GEOConfigAddChangeListenerRequest

- (BOOL)isValid
{
  keysAndSources = [(GEOConfigAddChangeListenerRequest *)self keysAndSources];
  v3 = [keysAndSources count] != 0;

  return v3;
}

@end