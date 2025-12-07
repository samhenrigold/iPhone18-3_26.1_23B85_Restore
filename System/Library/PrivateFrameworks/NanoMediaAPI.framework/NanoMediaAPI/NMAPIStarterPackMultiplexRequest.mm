@interface NMAPIStarterPackMultiplexRequest
- (NMAPIStarterPackMultiplexRequest)initWithUnderageUser:(BOOL)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPIStarterPackMultiplexRequest

- (NMAPIStarterPackMultiplexRequest)initWithUnderageUser:(BOOL)user
{
  userCopy = user;
  v7.receiver = self;
  v7.super_class = NMAPIStarterPackMultiplexRequest;
  v4 = [(MPStoreModelRequest *)&v7 init];
  if (v4)
  {
    userCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Multiplex Identifier For Underage User: (%d)", userCopy];
    [(NMAPIStarterPackMultiplexRequest *)v4 setLabel:userCopy];

    [(NMAPIStarterPackMultiplexRequest *)v4 setUnderageUser:userCopy];
  }

  return v4;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v20[4] = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v7 = MusicURLPathStorefrontWithURLBag(bagCopy);
  if (v7)
  {
    v8 = [bagCopy dictionaryForBagKey:*MEMORY[0x277D7F9E8]];
    if (self->_underageUser)
    {
      v9 = MediaAPIStarterPackUnder13MultiplexBagKey;
    }

    else
    {
      v9 = MediaAPIStarterPackOver13MultiplexBagKey;
    }

    v10 = *v9;
    v11 = [v8 objectForKey:v10];
    if (v11)
    {
      v19.receiver = self;
      v19.super_class = NMAPIStarterPackMultiplexRequest;
      v12 = [(NMAPIRequest *)&v19 urlComponentsWithStoreURLBag:bagCopy error:error];
      v13 = MEMORY[0x277CCACA8];
      v20[0] = @"/v1/editorial";
      v20[1] = v7;
      v20[2] = @"multiplex";
      v20[3] = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
      v15 = [v13 pathWithComponents:v14];
      [v12 setPath:v15];
    }

    else
    {
      v17 = NMLogForCategory(9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NMAPIStarterPackMultiplexRequest urlComponentsWithStoreURLBag:v10 error:v17];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v16 = NMLogForCategory(9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRadioRequest urlComponentsWithStoreURLBag:v16 error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NMAPIStarterPackMultiplexRequest;
  result = [(NMAPIRequest *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 128) = self->_underageUser;
  }

  return result;
}

- (void)urlComponentsWithStoreURLBag:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25B251000, a2, OS_LOG_TYPE_ERROR, "[NMAPIRequest] Missing musicStarterPack bag key: %@", &v2, 0xCu);
}

@end