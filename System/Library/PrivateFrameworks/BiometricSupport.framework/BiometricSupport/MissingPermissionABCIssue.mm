@interface MissingPermissionABCIssue
+ (void)reportPermission:(int)permission client:(id)client processName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter;
- (MissingPermissionABCIssue)initWithPermission:(int)permission client:(id)client processName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter;
- (id)context;
- (id)tag;
@end

@implementation MissingPermissionABCIssue

- (MissingPermissionABCIssue)initWithPermission:(int)permission client:(id)client processName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter
{
  v8 = *&permission;
  v12.receiver = self;
  v12.super_class = MissingPermissionABCIssue;
  v9 = [(EntitlementABCIssue *)&v12 initWithClient:client processName:name clientUUID:d platform:platform forReporter:reporter];
  v10 = v9;
  if (v9)
  {
    [(MissingPermissionABCIssue *)v9 setPermission:v8];
  }

  return v10;
}

+ (void)reportPermission:(int)permission client:(id)client processName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter
{
  v12 = *&permission;
  clientCopy = client;
  nameCopy = name;
  dCopy = d;
  platformCopy = platform;
  reporterCopy = reporter;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"MissingPermissionABCIssue/%@/%@/%d", clientCopy, nameCopy, v12];
  v18 = [reporterCopy issueForTag:v17];

  if (!v18)
  {
    v19 = [[MissingPermissionABCIssue alloc] initWithPermission:v12 client:clientCopy processName:nameCopy clientUUID:dCopy platform:platformCopy forReporter:reporterCopy];
    [reporterCopy addIssue:v19];
    [(EntitlementABCIssue *)v19 report];
    [reporterCopy rescheduleTimer];
  }
}

- (id)tag
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(EntitlementABCIssue *)self clientName];
  processName = [(EntitlementABCIssue *)self processName];
  clientUUID = [(EntitlementABCIssue *)self clientUUID];
  v7 = [v3 stringWithFormat:@"MissingPermissionABCIssue/%@/%@/%@/%d", clientName, processName, clientUUID, -[MissingPermissionABCIssue permission](self, "permission")];

  return v7;
}

- (id)context
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(EntitlementABCIssue *)self clientName];
  processName = [(EntitlementABCIssue *)self processName];
  clientUUID = [(EntitlementABCIssue *)self clientUUID];
  platform = [(EntitlementABCIssue *)self platform];
  v8 = [v3 stringWithFormat:@"clientName=%@, processName=%@, clientUUID=%@, platform=%@, permission=%d, v=4", clientName, processName, clientUUID, platform, -[MissingPermissionABCIssue permission](self, "permission")];

  return v8;
}

@end