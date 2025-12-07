@interface INRecurrenceRule(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INRecurrenceRule(CMSCoding)

- (id)cmsCoded
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"interval";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "interval")}];
  v6[1] = @"frequency";
  v7[0] = v2;
  v3 = INRecurrenceFrequencyToString([self frequency]);
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsUnsignedForKey:@"interval" withDefault:1];
    v6 = [v4 cmsOptionalStringForKey:@"frequency"];
    v7 = INRecurrenceFrequencyFromString(v6);

    v8 = [objc_alloc(MEMORY[0x277CD3F28]) initWithInterval:v5 frequency:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end