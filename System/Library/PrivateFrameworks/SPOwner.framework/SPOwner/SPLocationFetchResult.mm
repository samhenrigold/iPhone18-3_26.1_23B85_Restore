@interface SPLocationFetchResult
- (SPLocationFetchResult)initWithCoder:(id)coder;
- (SPLocationFetchResult)initWithResults:(id)results;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPLocationFetchResult

- (SPLocationFetchResult)initWithResults:(id)results
{
  resultsCopy = results;
  v8.receiver = self;
  v8.super_class = SPLocationFetchResult;
  v5 = [(SPLocationFetchResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPLocationFetchResult *)v5 setLocationsByBeaconIdentifier:resultsCopy];
  }

  return v6;
}

- (SPLocationFetchResult)initWithCoder:(id)coder
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:3];
  v7 = [v4 setWithArray:{v6, v10, v11}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"locationsByBeaconIdentifier"];

  [(SPLocationFetchResult *)self setLocationsByBeaconIdentifier:v8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  locationsByBeaconIdentifier = [(SPLocationFetchResult *)self locationsByBeaconIdentifier];
  [coderCopy encodeObject:locationsByBeaconIdentifier forKey:@"locationsByBeaconIdentifier"];
}

@end