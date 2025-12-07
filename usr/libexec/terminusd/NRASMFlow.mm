@interface NRASMFlow
- (id)description;
@end

@implementation NRASMFlow

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = nw_agent_client_copy_endpoint();
  [v3 addObject:v4];
  v5 = sub_10011903C(self);

  if (v5)
  {
    v6 = sub_10011903C(self);
    [v3 addObject:v6];
  }

  if (self->_incoming)
  {
    [v3 addObject:@"incoming"];
  }

  if (self->_pendingTeardown)
  {
    [v3 addObject:@"teardown"];
  }

  v7 = [NSString alloc];
  v8 = [v3 componentsJoinedByString:{@", "}];
  v9 = [v7 initWithFormat:@"[%@]", v8];

  return v9;
}

@end