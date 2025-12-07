@interface EDAMTimeZoneSpec
+ (id)structFields;
@end

@implementation EDAMTimeZoneSpec

+ (id)structFields
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1389;
  if (!structFields_structFields_1389)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"id"];
    v4 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"rawUTCOffsetMillis", v3];
    v11[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"dstSavingsAdjustmentMillis"];
    v11[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:10 optional:1 name:@"nextEnterDaylightSavings"];
    v11[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:10 optional:1 name:@"nextLeaveDaylightSavings"];
    v11[4] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
    v9 = structFields_structFields_1389;
    structFields_structFields_1389 = v8;

    v2 = structFields_structFields_1389;
  }

  return v2;
}

@end