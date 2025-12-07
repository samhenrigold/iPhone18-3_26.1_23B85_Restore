@interface HMDMutableUserMessagePolicy
+ (id)userMessagePolicyWithHome:(id)home userPrivilege:(unint64_t)privilege remoteAccessRequired:(BOOL)required requiresCameraStreamingAccess:(BOOL)access;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableUserMessagePolicy

- (id)copyWithZone:(_NSZone *)zone
{
  home = [(HMDUserMessagePolicy *)self home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:[(HMDUserMessagePolicy *)self userPrivilege] remoteAccessRequired:[(HMDUserMessagePolicy *)self requiresRemoteAccess] requiresCameraStreamingAccess:[(HMDUserMessagePolicy *)self requiresCameraStreamingAccess] useProofOfLocality:[(HMDUserMessagePolicy *)self useProofOfLocality]];

  return v5;
}

+ (id)userMessagePolicyWithHome:(id)home userPrivilege:(unint64_t)privilege remoteAccessRequired:(BOOL)required requiresCameraStreamingAccess:(BOOL)access
{
  accessCopy = access;
  requiredCopy = required;
  homeCopy = home;
  v11 = [self alloc];
  uuid = [homeCopy uuid];
  v13 = [v11 __initWithHome:homeCopy homeUUID:uuid userPrivilege:privilege remoteAccessRequired:requiredCopy requiresCameraStreamingAccess:accessCopy useProofOfLocality:0];

  return v13;
}

@end