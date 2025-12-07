@interface NMAPIFitnessMultiroomRequest
- (NMAPIFitnessMultiroomRequest)init;
- (id)_fitnessMultiroomIdentifierWithStoreURLBag:(id)bag;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPIFitnessMultiroomRequest

- (NMAPIFitnessMultiroomRequest)init
{
  v5.receiver = self;
  v5.super_class = NMAPIFitnessMultiroomRequest;
  v2 = [(MPStoreModelRequest *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fitness Multiroom"];
    [(NMAPIFitnessMultiroomRequest *)v2 setLabel:v3];
  }

  return v2;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v24[4] = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v22.receiver = self;
  v22.super_class = NMAPIFitnessMultiroomRequest;
  v7 = [(NMAPIRequest *)&v22 urlComponentsWithStoreURLBag:bagCopy error:error];
  v8 = MusicURLPathStorefrontWithURLBag(bagCopy);
  if (v8)
  {
    v9 = [(NMAPIFitnessMultiroomRequest *)self _fitnessMultiroomIdentifierWithStoreURLBag:bagCopy];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CCACA8];
      v24[0] = @"/v1/editorial";
      v24[1] = v8;
      v24[2] = @"multirooms";
      v24[3] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
      v13 = [v11 pathWithComponents:v12];
      [v7 setPath:v13];

      queryItems = [v7 queryItems];
      v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"art[url]" value:{@"f, c"}];
      v23 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v17 = [queryItems arrayByAddingObjectsFromArray:v16];
      [v7 setQueryItems:v17];

      v18 = v7;
    }

    else
    {
      v20 = NMLogForCategory(9);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [NMAPIFitnessMultiroomRequest urlComponentsWithStoreURLBag:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *error = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = NMLogForCategory(9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NMAPIFitnessMultiroomRequest urlComponentsWithStoreURLBag:error:];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)_fitnessMultiroomIdentifierWithStoreURLBag:(id)bag
{
  v3 = [bag dictionaryForBagKey:*MEMORY[0x277D7F9E8]];
  v4 = [v3 objectForKey:@"musicWorkoutMediaPlayback"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 objectForKey:@"musicSuperRoomId"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        v6 = v5;
        goto LABEL_12;
      }
    }

    v7 = NMLogForCategory(9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NMAPIFitnessMultiroomRequest _fitnessMultiroomIdentifierWithStoreURLBag:];
    }
  }

  else
  {
    v5 = NMLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NMAPIFitnessMultiroomRequest _fitnessMultiroomIdentifierWithStoreURLBag:];
    }
  }

  v6 = @"6742254820";
LABEL_12:

  return v6;
}

@end