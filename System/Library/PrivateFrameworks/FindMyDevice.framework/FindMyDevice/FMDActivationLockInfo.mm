@interface FMDActivationLockInfo
- (FMDActivationLockInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDActivationLockInfo

- (FMDActivationLockInfo)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FMDActivationLockInfo;
  v5 = [(FMDActivationLockInfo *)&v14 init];
  if (v5)
  {
    -[FMDActivationLockInfo setIsActivationLocked:](v5, "setIsActivationLocked:", [coderCopy decodeBoolForKey:@"isActivationLocked"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskedAppleID"];
    [(FMDActivationLockInfo *)v5 setMaskedAppleID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskedOrganizationID"];
    [(FMDActivationLockInfo *)v5 setMaskedOrganizationID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(FMDActivationLockInfo *)v5 setTitle:v8];

    -[FMDActivationLockInfo setIsOfflineFindingEnabled:](v5, "setIsOfflineFindingEnabled:", [coderCopy decodeBoolForKey:@"isOfflineFindingEnabled"]);
    v9 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"localeStrings"];
    [(FMDActivationLockInfo *)v5 setLocaleStrings:v12];

    -[FMDActivationLockInfo setIsRestrictedSKU:](v5, "setIsRestrictedSKU:", [coderCopy decodeBoolForKey:@"isRestrictedSKU"]);
    -[FMDActivationLockInfo setIsFindMyLPEMEnabled:](v5, "setIsFindMyLPEMEnabled:", [coderCopy decodeBoolForKey:@"isFindMyLPEMEnabled"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[FMDActivationLockInfo isActivationLocked](self forKey:{"isActivationLocked"), @"isActivationLocked"}];
  maskedAppleID = [(FMDActivationLockInfo *)self maskedAppleID];
  [coderCopy encodeObject:maskedAppleID forKey:@"maskedAppleID"];

  maskedOrganizationID = [(FMDActivationLockInfo *)self maskedOrganizationID];
  [coderCopy encodeObject:maskedOrganizationID forKey:@"maskedOrganizationID"];

  title = [(FMDActivationLockInfo *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeBool:-[FMDActivationLockInfo isOfflineFindingEnabled](self forKey:{"isOfflineFindingEnabled"), @"isOfflineFindingEnabled"}];
  localeStrings = [(FMDActivationLockInfo *)self localeStrings];
  [coderCopy encodeObject:localeStrings forKey:@"localeStrings"];

  [coderCopy encodeBool:-[FMDActivationLockInfo isRestrictedSKU](self forKey:{"isRestrictedSKU"), @"isRestrictedSKU"}];
  [coderCopy encodeBool:-[FMDActivationLockInfo isFindMyLPEMEnabled](self forKey:{"isFindMyLPEMEnabled"), @"isFindMyLPEMEnabled"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(FMDActivationLockInfo *)self title];
  maskedAppleID = [(FMDActivationLockInfo *)self maskedAppleID];
  maskedOrganizationID = [(FMDActivationLockInfo *)self maskedOrganizationID];
  v8 = [v3 stringWithFormat:@"%@ - [\n\t%@\n\t%@\n\t%@\n\tAL Status %d\n\tofflineFinding %d, \n\trestrictedSKU %d\n\tofflineFindingInLPM %d]", v4, title, maskedAppleID, maskedOrganizationID, -[FMDActivationLockInfo isActivationLocked](self, "isActivationLocked"), -[FMDActivationLockInfo isOfflineFindingEnabled](self, "isOfflineFindingEnabled"), -[FMDActivationLockInfo isRestrictedSKU](self, "isRestrictedSKU"), -[FMDActivationLockInfo isFindMyLPEMEnabled](self, "isFindMyLPEMEnabled")];

  return v8;
}

@end