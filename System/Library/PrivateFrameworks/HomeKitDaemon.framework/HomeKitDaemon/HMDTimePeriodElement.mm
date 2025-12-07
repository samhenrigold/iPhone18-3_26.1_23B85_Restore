@interface HMDTimePeriodElement
+ (BOOL)doesTypeMatch:(id)match against:(id)against;
+ (id)type;
- (HMDTimePeriodElement)initWithDictionary:(id)dictionary;
- (id)serializedRegistrationForRemoteMessage;
@end

@implementation HMDTimePeriodElement

- (HMDTimePeriodElement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)serializedRegistrationForRemoteMessage
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"HMDTPN.type";
  type = [objc_opt_class() type];
  v6[0] = type;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)type
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (BOOL)doesTypeMatch:(id)match against:(id)against
{
  againstCopy = against;
  v6 = [match objectForKeyedSubscript:@"HMDTPN.type"];
  v7 = [v6 isEqualToString:againstCopy];

  return v7;
}

@end