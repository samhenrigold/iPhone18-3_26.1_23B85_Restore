@interface ENTestResultChaffRequest
- (id)additionalRequestHeaders;
@end

@implementation ENTestResultChaffRequest

- (id)additionalRequestHeaders
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (self->_chaffValue)
  {
    chaffValue = self->_chaffValue;
  }

  else
  {
    chaffValue = @"extra";
  }

  v5 = @"X-Chaff";
  v6[0] = chaffValue;
  v3 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end