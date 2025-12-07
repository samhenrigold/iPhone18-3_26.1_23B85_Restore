@interface HMDEndPointAddress
- (BOOL)_parseFromTLVData;
- (BOOL)isCompatibleWithRemoteEndPointAddress:(id)address;
- (HMDEndPointAddress)initWithCoder:(id)coder;
- (HMDEndPointAddress)initWithIPAddress:(id)address isIPv6Address:(BOOL)pv6Address videoRTPPort:(id)port audioRTPPort:(id)pPort;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDEndPointAddress

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ipAddress = [(HMDEndPointAddress *)self ipAddress];
  [coderCopy encodeObject:ipAddress forKey:@"kStreamManagementControlPoint__ControllerAddress__IPAddress"];

  [coderCopy encodeBool:-[HMDEndPointAddress isIPv6Address](self forKey:{"isIPv6Address"), @"kStreamManagementControlPoint__ControllerAddress__IPAddressVersion"}];
  videoRTPPort = [(HMDEndPointAddress *)self videoRTPPort];
  [coderCopy encodeObject:videoRTPPort forKey:@"kStreamManagementControlPoint__ControllerAddress__VideoRTPPort"];

  audioRTPPort = [(HMDEndPointAddress *)self audioRTPPort];
  [coderCopy encodeObject:audioRTPPort forKey:@"kStreamManagementControlPoint__ControllerAddress__AudioRTPPort"];
}

- (HMDEndPointAddress)initWithCoder:(id)coder
{
  v25[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HMDEndPointAddress;
  v5 = [(HMDEndPointAddress *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kStreamManagementControlPoint__ControllerAddress__IPAddress"];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v9;

    v5->_isIPv6Address = [coderCopy decodeBoolForKey:@"kStreamManagementControlPoint__ControllerAddress__IPAddressVersion"];
    v11 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kStreamManagementControlPoint__ControllerAddress__VideoRTPPort"];
    videoRTPPort = v5->_videoRTPPort;
    v5->_videoRTPPort = v14;

    v16 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kStreamManagementControlPoint__ControllerAddress__AudioRTPPort"];
    audioRTPPort = v5->_audioRTPPort;
    v5->_audioRTPPort = v19;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  ipAddress = [(HMDEndPointAddress *)self ipAddress];
  [descriptionCopy appendFormat:@"\n %@ ipAddress = %@ ", indentCopy, ipAddress];

  [(HMDEndPointAddress *)self isIPv6Address];
  v10 = HMFBooleanToString();
  [descriptionCopy appendFormat:@"\n %@ isIPv6Address = %@ ", indentCopy, v10];

  videoRTPPort = [(HMDEndPointAddress *)self videoRTPPort];
  [descriptionCopy appendFormat:@"\n %@ videoRTPPort = %@ ", indentCopy, videoRTPPort];

  audioRTPPort = [(HMDEndPointAddress *)self audioRTPPort];
  [descriptionCopy appendFormat:@"\n %@ audioRTPPort = %@ ", indentCopy, audioRTPPort];
}

- (BOOL)_parseFromTLVData
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC50] wrappertlv:2 name:@"kStreamManagementControlPoint__ControllerAddress__IPAddress"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kStreamManagementControlPoint__ControllerAddress__IPAddressVersion"];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kStreamManagementControlPoint__ControllerAddress__VideoRTPPort"];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kStreamManagementControlPoint__ControllerAddress__AudioRTPPort"];
  v17[0] = v3;
  v17[1] = v4;
  v17[2] = v5;
  v17[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v8 = [(HAPTLVBase *)self _parse:v7];
  if (v8)
  {
    field = [v3 field];
    ipAddress = self->_ipAddress;
    self->_ipAddress = field;

    field2 = [v4 field];
    self->_isIPv6Address = [field2 BOOLValue];

    field3 = [v5 field];
    videoRTPPort = self->_videoRTPPort;
    self->_videoRTPPort = field3;

    field4 = [v6 field];
    audioRTPPort = self->_audioRTPPort;
    self->_audioRTPPort = field4;
  }

  return v8;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEndPointAddress isIPv6Address](self, "isIPv6Address")}];
  [creator addTLV:1 number:v4];

  ipAddress = [(HMDEndPointAddress *)self ipAddress];
  [creator addTLV:2 string:ipAddress];

  videoRTPPort = [(HMDEndPointAddress *)self videoRTPPort];
  [creator addTLV:3 length:2 number:videoRTPPort];

  audioRTPPort = [(HMDEndPointAddress *)self audioRTPPort];
  [creator addTLV:4 length:2 number:audioRTPPort];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)isCompatibleWithRemoteEndPointAddress:(id)address
{
  addressCopy = address;
  LODWORD(self) = [(HMDEndPointAddress *)self isIPv6Address];
  if (self == [addressCopy isIPv6Address] && (objc_msgSend(addressCopy, "audioRTPPort"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "unsignedIntegerValue"), v5, v6))
  {
    videoRTPPort = [addressCopy videoRTPPort];
    v8 = [videoRTPPort unsignedIntegerValue] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDEndPointAddress)initWithIPAddress:(id)address isIPv6Address:(BOOL)pv6Address videoRTPPort:(id)port audioRTPPort:(id)pPort
{
  addressCopy = address;
  portCopy = port;
  pPortCopy = pPort;
  v17.receiver = self;
  v17.super_class = HMDEndPointAddress;
  v14 = [(HMDEndPointAddress *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_ipAddress, address);
    v15->_isIPv6Address = pv6Address;
    objc_storeStrong(&v15->_videoRTPPort, port);
    objc_storeStrong(&v15->_audioRTPPort, pPort);
  }

  return v15;
}

@end