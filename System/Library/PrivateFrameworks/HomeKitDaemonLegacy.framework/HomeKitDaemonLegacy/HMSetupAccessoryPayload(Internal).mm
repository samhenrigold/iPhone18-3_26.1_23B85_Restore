@interface HMSetupAccessoryPayload(Internal)
- (id)debugDescription;
- (id)flagsDescription;
@end

@implementation HMSetupAccessoryPayload(Internal)

- (id)debugDescription
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  accessoryName = [self accessoryName];
  if (v3)
  {
    setupID = [self setupID];
    setupCode = [self setupCode];
    flagsDescription = [self flagsDescription];
    categoryNumber = [self categoryNumber];
    v10 = [v4 stringWithFormat:@"Accessory Setup payload: Name: %@, SetupID: %@, SetupCode: %@, Flags: %@, Category: %@", accessoryName, setupID, setupCode, flagsDescription, categoryNumber];
  }

  else
  {
    setupID = [self flagsDescription];
    v10 = [v4 stringWithFormat:@"Accessory Setup payload: Name: %@, Flags: %@", accessoryName, setupID];
  }

  return v10;
}

- (id)flagsDescription
{
  string = [MEMORY[0x277CCAB68] string];
  if ([self isPaired])
  {
    [string appendString:@"Paired  "];
  }

  if ([self supportsIP])
  {
    [string appendString:@"IP  "];
  }

  if ([self supportsWAC])
  {
    [string appendString:@"WAC  "];
  }

  if ([self supportsBTLE])
  {
    [string appendString:@"BTLE  "];
  }

  v3 = objc_msgSend_copy(string);

  return v3;
}

@end