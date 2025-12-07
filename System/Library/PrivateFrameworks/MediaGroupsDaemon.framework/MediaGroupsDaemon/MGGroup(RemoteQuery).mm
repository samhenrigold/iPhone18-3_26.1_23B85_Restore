@interface MGGroup(RemoteQuery)
+ (id)rq_predicateForInCurrentHome;
+ (id)rq_predicateForRestrictedTypes;
- (uint64_t)rq_sourcedRemotely;
- (void)rq_setSourcedRemotely:()RemoteQuery;
@end

@implementation MGGroup(RemoteQuery)

- (void)rq_setSourcedRemotely:()RemoteQuery
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, sel_rq_sourcedRemotely, v2, 1);
}

- (uint64_t)rq_sourcedRemotely
{
  v1 = objc_getAssociatedObject(self, sel_rq_sourcedRemotely);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

+ (id)rq_predicateForRestrictedTypes
{
  v9[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCAC30];
  type = [MEMORY[0x277D274A8] type];
  v9[0] = type;
  type2 = [MEMORY[0x277D27498] type];
  v9[1] = type2;
  type3 = [MEMORY[0x277D27480] type];
  v9[2] = type3;
  type4 = [MEMORY[0x277D27438] type];
  v9[3] = type4;
  type5 = [MEMORY[0x277D274B8] type];
  v9[4] = type5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];
  v7 = [v0 predicateWithFormat:@"SELF.type IN %@", v6];

  return v7;
}

+ (id)rq_predicateForInCurrentHome
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA920];
  v1 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$CONTAINMENT_MAP[SELF.identifier] != nil"];
  v6[0] = v1;
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY($CONTAINMENT_MAP[SELF.identifier], $container, $CURRENT_HOME.identifier in $container)[SIZE] > 0"];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v0 andPredicateWithSubpredicates:v3];

  return v4;
}

@end