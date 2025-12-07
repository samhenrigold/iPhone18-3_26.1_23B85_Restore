@interface TRSetupNetworkRequest
- (TRSetupNetworkRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupNetworkRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TRSetupNetworkRequest;
  [(TRMessage *)&v7 encodeWithCoder:coderCopy];
  networkSSID = self->_networkSSID;
  if (networkSSID)
  {
    [coderCopy encodeObject:networkSSID forKey:@"TRSetupNetworkMessages_nS"];
  }

  networkPassword = self->_networkPassword;
  if (networkPassword)
  {
    [coderCopy encodeObject:networkPassword forKey:@"TRSetupNetworkMessages_nP"];
  }
}

- (TRSetupNetworkRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TRSetupNetworkRequest;
  v5 = [(TRMessage *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupNetworkMessages_nS"];
    networkSSID = v5->_networkSSID;
    v5->_networkSSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupNetworkMessages_nP"];
    networkPassword = v5->_networkPassword;
    v5->_networkPassword = v8;
  }

  return v5;
}

- (id)description
{
  if (self->_networkPassword)
  {
    v3 = @"*********";
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"networkSSID:[-%@-] networkPassword:[-%@-]", self->_networkSSID, v3];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRSetupNetworkRequest;
  v6 = [(TRMessage *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

@end