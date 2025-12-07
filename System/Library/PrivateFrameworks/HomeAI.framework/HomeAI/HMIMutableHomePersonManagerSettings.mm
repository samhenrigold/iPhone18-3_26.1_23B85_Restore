@interface HMIMutableHomePersonManagerSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMIMutableHomePersonManagerSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [+[HMIHomePersonManagerSettings allocWithZone:](HMIHomePersonManagerSettings init];
  [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
  [(HMIHomePersonManagerSettings *)v4 setFaceClassificationEnabled:?];
  return v4;
}

@end