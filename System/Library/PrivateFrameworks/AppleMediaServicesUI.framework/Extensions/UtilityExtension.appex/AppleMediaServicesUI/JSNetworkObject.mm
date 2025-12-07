@interface JSNetworkObject
- (id)fetch:(id)fetch;
@end

@implementation JSNetworkObject

- (id)fetch:(id)fetch
{
  fetchCopy = fetch;
  selfCopy = self;
  v6 = sub_1000240EC(fetchCopy);

  return v6;
}

@end