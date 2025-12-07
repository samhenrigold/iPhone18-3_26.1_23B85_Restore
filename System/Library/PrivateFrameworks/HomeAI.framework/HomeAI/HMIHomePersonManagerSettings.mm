@interface HMIHomePersonManagerSettings
- (BOOL)isEqual:(id)equal;
- (HMIHomePersonManagerSettings)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIHomePersonManagerSettings

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
  if (v6)
  {
    isFaceClassificationEnabled = [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
    v8 = isFaceClassificationEnabled ^ [v6 isFaceClassificationEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [+[HMIMutableHomePersonManagerSettings allocWithZone:](HMIMutableHomePersonManagerSettings init];
  [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
  [(HMIHomePersonManagerSettings *)v4 setFaceClassificationEnabled:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
  [coderCopy encodeBool:? forKey:?];
}

- (HMIHomePersonManagerSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  [coderCopy decodeBoolForKey:?];

  [(HMIHomePersonManagerSettings *)v5 setFaceClassificationEnabled:?];
  return v5;
}

- (id)attributeDescriptions
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:? value:?];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v8];

  return v6;
}

@end