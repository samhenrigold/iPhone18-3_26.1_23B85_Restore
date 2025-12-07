@interface WiFiUsageNetworkIPv4Details
- (BOOL)isEqual:(id)equal;
- (WiFiUsageNetworkIPv4Details)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation WiFiUsageNetworkIPv4Details

- (WiFiUsageNetworkIPv4Details)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = WiFiUsageNetworkIPv4Details;
  v5 = [(WiFiUsageNetworkIPv4Details *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1728]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
    {
      v7 = [v6 objectAtIndex:0];
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4Address:v7];

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    [(WiFiUsageNetworkIPv4Details *)v5 setIsValid:v8];
    v9 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1750]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4Subnet:v10];
    }

    v11 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1720]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4RouterAddress:v11];
    }

    v12 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1748]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4DefGwAddress:v12];
    }

    v13 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1718]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4RouterMacAddress:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = -[WiFiUsageNetworkIPv4Details isValid](self, "isValid"), v5 == objc_msgSend(equalCopy, "isValid")) && (-[WiFiUsageNetworkIPv4Details ipv4Address](self, "ipv4Address"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(equalCopy, "ipv4Address"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8) && (-[WiFiUsageNetworkIPv4Details ipv4RouterAddress](self, "ipv4RouterAddress"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(equalCopy, "ipv4RouterAddress"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11) && (-[WiFiUsageNetworkIPv4Details ipv4RouterMacAddress](self, "ipv4RouterMacAddress"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(equalCopy, "ipv4RouterMacAddress"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, v14) && (-[WiFiUsageNetworkIPv4Details ipv4DefGwAddress](self, "ipv4DefGwAddress"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(equalCopy, "ipv4DefGwAddress"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17))
  {
    ipv4Subnet = [(WiFiUsageNetworkIPv4Details *)self ipv4Subnet];
    ipv4Subnet2 = [equalCopy ipv4Subnet];
    v20 = [ipv4Subnet isEqualToString:ipv4Subnet2];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)description
{
  if (self->_isValid)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"address:%@, router:%@(%@) defaultGW:%@, subnet:%@", self->_ipv4Address, self->_ipv4RouterAddress, self->_ipv4RouterMacAddress, self->_ipv4DefGwAddress, self->_ipv4Subnet];
  }

  else
  {
    v3 = @"N/A";
  }

  return v3;
}

@end