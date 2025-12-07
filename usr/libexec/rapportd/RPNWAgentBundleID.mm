@interface RPNWAgentBundleID
- (RPNWAgentBundleID)initWithPID:(int)d;
@end

@implementation RPNWAgentBundleID

- (RPNWAgentBundleID)initWithPID:(int)d
{
  v3 = *&d;
  v9.receiver = self;
  v9.super_class = RPNWAgentBundleID;
  v4 = [(RPNWAgentBundleID *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_agentCount = 1;
    v6 = [RPNWUtils getBundleIDForPID:v3];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

@end