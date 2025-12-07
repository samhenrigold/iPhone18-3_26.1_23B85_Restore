@interface GEOETARequestUpdateable
- (BOOL)isValid;
- (unint64_t)reply;
@end

@implementation GEOETARequestUpdateable

- (unint64_t)reply
{
  method = [(GEOXPCRequest *)self method];
  v3 = [method hasPrefix:@"start"];

  return v3;
}

- (BOOL)isValid
{
  request = [(GEOETARequestUpdateable *)self request];
  v3 = request != 0;

  return v3;
}

@end