@interface HMMissingWalletKey
+ (id)missingWalletKeyWithValue:(id)value home:(id)home;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMMissingWalletKey)initWithAccessory:(id)accessory user:(id)user;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMMissingWalletKey

- (NSArray)attributeDescriptions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessory = [(HMMissingWalletKey *)self accessory];
  uuid = [accessory uuid];
  v6 = [v3 initWithName:@"accessoryUUID" value:uuid];
  v13[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  user = [(HMMissingWalletKey *)self user];
  uuid2 = [user uuid];
  v10 = [v7 initWithName:@"userUUID" value:uuid2];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  return v11;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  accessory = [(HMMissingWalletKey *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v5 = [uniqueIdentifier hash];
  user = [(HMMissingWalletKey *)self user];
  uniqueIdentifier2 = [user uniqueIdentifier];
  v8 = [uniqueIdentifier2 hash];

  return v8 ^ v5;
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
  if (v6 && (-[HMMissingWalletKey accessory](self, "accessory"), v7 = objc_claimAutoreleasedReturnValue(), [v7 uniqueIdentifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "accessory"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v8, v7, v11))
  {
    user = [(HMMissingWalletKey *)self user];
    uniqueIdentifier = [user uniqueIdentifier];
    user2 = [v6 user];
    uniqueIdentifier2 = [user2 uniqueIdentifier];
    v16 = HMFEqualObjects();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (HMMissingWalletKey)initWithAccessory:(id)accessory user:(id)user
{
  accessoryCopy = accessory;
  userCopy = user;
  v12.receiver = self;
  v12.super_class = HMMissingWalletKey;
  v9 = [(HMMissingWalletKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, accessory);
    objc_storeStrong(&v10->_user, user);
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)missingWalletKeyWithValue:(id)value home:(id)home
{
  v30 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  homeCopy = home;
  accessoryUUID = [valueCopy accessoryUUID];
  v9 = [homeCopy accessoryWithUUID:accessoryUUID];

  userUUID = [valueCopy userUUID];
  v11 = [homeCopy userWithUUID:userUUID];

  if (v9 && v11)
  {
    v12 = [[HMMissingWalletKey alloc] initWithAccessory:v9 user:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      accessoryUUID2 = [valueCopy accessoryUUID];
      userUUID2 = [valueCopy userUUID];
      v20 = 138544386;
      v21 = v16;
      v22 = 2112;
      v23 = accessoryUUID2;
      v24 = 2112;
      v25 = userUUID2;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not create HMMissingWalletKey with accessoryUUID: %@, userUUID: %@, accessory: %@, user: %@", &v20, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

@end