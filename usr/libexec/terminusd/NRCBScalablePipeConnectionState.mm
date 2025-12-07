@interface NRCBScalablePipeConnectionState
- (id)description;
@end

@implementation NRCBScalablePipeConnectionState

- (id)description
{
  state = self->_state;
  if (state == 1 || state == 2)
  {
    nr_continuous_time();
    NRDiffMachTimeInSeconds();
    v5 = [[NSString alloc] initWithFormat:@"%.2fs", v4];
  }

  else
  {
    v5 = @"<unknown>";
  }

  v6 = [NSString alloc];
  v7 = self->_state;
  if (v7 >= 3)
  {
    v9 = v6;
    v8 = [[NSString alloc] initWithFormat:@"UnknownType(%lld)", v7];
    v6 = v9;
  }

  else
  {
    v8 = *(&off_1001FA900 + v7);
  }

  v10 = [v6 initWithFormat:@"NRBTPipe[%@ %@]", v8, v5];

  return v10;
}

@end