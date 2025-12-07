@interface FMLDevice
- (BOOL)isEqual:(id)equal;
- (FMLDevice)initWithIdentifier:(id)identifier deviceName:(id)name idsDeviceId:(id)id isActive:(BOOL)active isThisDevice:(BOOL)device isCompanion:(BOOL)companion isAutoMeCapable:(BOOL)capable;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLDevice

- (FMLDevice)initWithIdentifier:(id)identifier deviceName:(id)name idsDeviceId:(id)id isActive:(BOOL)active isThisDevice:(BOOL)device isCompanion:(BOOL)companion isAutoMeCapable:(BOOL)capable
{
  companionCopy = companion;
  deviceCopy = device;
  activeCopy = active;
  identifierCopy = identifier;
  nameCopy = name;
  idCopy = id;
  v21.receiver = self;
  v21.super_class = FMLDevice;
  v18 = [(FMLDevice *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(FMLDevice *)v18 setIdentifier:identifierCopy];
    [(FMLDevice *)v19 setDeviceName:nameCopy];
    [(FMLDevice *)v19 setIdsDeviceId:idCopy];
    [(FMLDevice *)v19 setIsActive:activeCopy];
    [(FMLDevice *)v19 setIsThisDevice:deviceCopy];
    [(FMLDevice *)v19 setIsCompanion:companionCopy];
    [(FMLDevice *)v19 setIsAutoMeCapable:capable];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMLDevice *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMLDevice *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(FMLDevice *)self identifier];
  v4 = [v2 stringWithFormat:@"%@", identifier];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(FMLDevice *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, identifier];

  return v6;
}

@end