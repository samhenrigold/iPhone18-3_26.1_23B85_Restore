@interface NHOLogging
- (NHOLogging)init;
- (id)logForCategory:(unint64_t)category;
@end

@implementation NHOLogging

- (NHOLogging)init
{
  v9[9] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = NHOLogging;
  v2 = [(NHOLogging *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v8[0] = &unk_286C61B80;
    v8[1] = &unk_286C61B98;
    v9[0] = @"general";
    v9[1] = @"home";
    v8[2] = &unk_286C61BB0;
    v8[3] = &unk_286C61BC8;
    v9[2] = @"notification";
    v9[3] = @"radar76496236";
    v8[4] = &unk_286C61BE0;
    v8[5] = &unk_286C61BF8;
    v9[4] = @"invitation";
    v9[5] = @"onboarding";
    v8[6] = &unk_286C61C10;
    v8[7] = &unk_286C61C28;
    v9[6] = @"settings";
    v9[7] = @"contacts";
    v8[8] = &unk_286C61C40;
    v9[8] = @"camera";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:9];
    categoryMap = v3->_categoryMap;
    v3->_categoryMap = v4;
  }

  return v3;
}

- (id)logForCategory:(unint64_t)category
{
  if (category < 9)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
    v3 = [(NSMutableDictionary *)self->_logs objectForKeyedSubscript:v7];
    if (!v3)
    {
      v8 = [(NSDictionary *)self->_categoryMap objectForKeyedSubscript:v7];
      v3 = os_log_create("com.apple.NanoHome", [v8 cStringUsingEncoding:4]);
      [(NSMutableDictionary *)self->_logs setObject:v3 forKeyedSubscript:v7];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  return v3;
}

@end