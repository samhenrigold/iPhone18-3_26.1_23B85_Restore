@interface HMHomeWalletKeyDeviceState
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMHomeWalletKeyDeviceState)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeWalletKeyDeviceState

- (NSArray)attributeDescriptions
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  walletKey = [(HMHomeWalletKeyDeviceState *)self walletKey];
  v5 = [v3 initWithName:@"Wallet Key" value:walletKey];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  expressEnablementConflictingPassDescription = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  v8 = [v6 initWithName:@"Express Enablement Conflicting Pass Description" value:expressEnablementConflictingPassDescription];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomeWalletKeyDeviceState *)self canAddWalletKey];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Can Add Wallet Key" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = HMHomeAddWalletKeyErrorCodeAsString([(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode]);
  v14 = [v12 initWithName:@"Can Add Wallet Key Error Code" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMHomeWalletKeyDeviceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyDeviceStateWalletKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyDeviceStateExpressEnablementConflictingPassDescription"];
  v7 = [coderCopy decodeIntegerForKey:@"HMHomeWalletKeyDeviceStateCanAddWalletKeyErrorCode"];
  v8 = [coderCopy decodeBoolForKey:@"HMHomeWalletKeyDeviceStateCanAddWalletKey"];

  v9 = objc_alloc_init(HMHomeWalletKeyDeviceState);
  [(HMHomeWalletKeyDeviceState *)v9 setCanAddWalletKeyErrorCode:v7];
  [(HMHomeWalletKeyDeviceState *)v9 setWalletKey:v5];
  [(HMHomeWalletKeyDeviceState *)v9 setExpressEnablementConflictingPassDescription:v6];
  [(HMHomeWalletKeyDeviceState *)v9 setCanAddWalletKey:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  walletKey = [(HMHomeWalletKeyDeviceState *)self walletKey];
  [coderCopy encodeObject:walletKey forKey:@"HMHomeWalletKeyDeviceStateWalletKey"];

  expressEnablementConflictingPassDescription = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  [coderCopy encodeObject:expressEnablementConflictingPassDescription forKey:@"HMHomeWalletKeyDeviceStateExpressEnablementConflictingPassDescription"];

  [coderCopy encodeInteger:-[HMHomeWalletKeyDeviceState canAddWalletKeyErrorCode](self forKey:{"canAddWalletKeyErrorCode"), @"HMHomeWalletKeyDeviceStateCanAddWalletKeyErrorCode"}];
  [coderCopy encodeBool:-[HMHomeWalletKeyDeviceState canAddWalletKey](self forKey:{"canAddWalletKey"), @"HMHomeWalletKeyDeviceStateCanAddWalletKey"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMMutableHomeWalletKeyDeviceState);
  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKeyErrorCode:[(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode]];
  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKey:[(HMHomeWalletKeyDeviceState *)self canAddWalletKey]];
  walletKey = [(HMHomeWalletKeyDeviceState *)self walletKey];
  [(HMHomeWalletKeyDeviceState *)v4 setWalletKey:walletKey];

  expressEnablementConflictingPassDescription = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  [(HMHomeWalletKeyDeviceState *)v4 setExpressEnablementConflictingPassDescription:expressEnablementConflictingPassDescription];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  walletKey = [(HMHomeWalletKeyDeviceState *)self walletKey];
  v4 = [walletKey hash];

  expressEnablementConflictingPassDescription = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  v6 = [expressEnablementConflictingPassDescription hash] ^ v4;

  v7 = v6 ^ [(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode];
  return v7 ^ [(HMHomeWalletKeyDeviceState *)self canAddWalletKey];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && ([v6 walletKey], v8 = objc_claimAutoreleasedReturnValue(), -[HMHomeWalletKeyDeviceState walletKey](self, "walletKey"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10) && (objc_msgSend(v7, "expressEnablementConflictingPassDescription"), v11 = objc_claimAutoreleasedReturnValue(), -[HMHomeWalletKeyDeviceState expressEnablementConflictingPassDescription](self, "expressEnablementConflictingPassDescription"), v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v11, v13) && (v14 = objc_msgSend(v7, "canAddWalletKeyErrorCode"), v14 == -[HMHomeWalletKeyDeviceState canAddWalletKeyErrorCode](self, "canAddWalletKeyErrorCode")))
  {
    canAddWalletKey = [v7 canAddWalletKey];
    v16 = canAddWalletKey ^ [(HMHomeWalletKeyDeviceState *)self canAddWalletKey]^ 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

@end