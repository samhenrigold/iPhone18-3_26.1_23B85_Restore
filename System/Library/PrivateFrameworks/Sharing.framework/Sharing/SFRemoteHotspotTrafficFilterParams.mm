@interface SFRemoteHotspotTrafficFilterParams
- (SFRemoteHotspotTrafficFilterParams)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRemoteHotspotTrafficFilterParams

- (SFRemoteHotspotTrafficFilterParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFRemoteHotspotTrafficFilterParams;
  v5 = [(SFRemoteHotspotTrafficFilterParams *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_srcPort = v12;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_destPort = v12;
    }

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ipProtocol = v12;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ipVersion = v12;
    }

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_idleTimeout = v12;
    }

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  srcIPAddress = self->_srcIPAddress;
  v10 = coderCopy;
  if (srcIPAddress)
  {
    [coderCopy encodeObject:srcIPAddress forKey:@"srcIP"];
    coderCopy = v10;
  }

  if (self->_srcPort)
  {
    [v10 encodeInteger:? forKey:?];
    coderCopy = v10;
  }

  destIPAddress = self->_destIPAddress;
  if (destIPAddress)
  {
    [v10 encodeObject:destIPAddress forKey:@"destIP"];
    coderCopy = v10;
  }

  if (self->_destPort)
  {
    [v10 encodeInteger:? forKey:?];
    coderCopy = v10;
  }

  if (self->_ipProtocol)
  {
    [v10 encodeInteger:? forKey:?];
    coderCopy = v10;
  }

  trafficClass = self->_trafficClass;
  if (trafficClass)
  {
    [v10 encodeObject:trafficClass forKey:@"traCla"];
    coderCopy = v10;
  }

  ipVersion = self->_ipVersion;
  if (ipVersion)
  {
    [v10 encodeInt64:ipVersion forKey:@"ipVer"];
    coderCopy = v10;
  }

  idleTimeout = self->_idleTimeout;
  if (idleTimeout)
  {
    [v10 encodeInt64:idleTimeout forKey:@"timeout"];
    coderCopy = v10;
  }
}

- (id)description
{
  v33 = 0;
  NSAppendPrintF(&v33, "<SFRemoteHotspotTrafficFilterParams %{ptr}", self);
  v3 = v33;
  v4 = v3;
  srcIPAddress = self->_srcIPAddress;
  if (srcIPAddress)
  {
    v32 = v3;
    NSAppendPrintF(&v32, ", srcIP %@", srcIPAddress);
    v6 = v32;

    v4 = v6;
  }

  srcPort = self->_srcPort;
  if (self->_srcPort)
  {
    v31 = v4;
    NSAppendPrintF(&v31, ", srcPort %hu", srcPort);
    v8 = v31;

    v4 = v8;
  }

  destIPAddress = self->_destIPAddress;
  if (destIPAddress)
  {
    v30 = v4;
    NSAppendPrintF(&v30, ", destIP %@", destIPAddress);
    v10 = v30;

    v4 = v10;
  }

  destPort = self->_destPort;
  if (self->_destPort)
  {
    v29 = v4;
    NSAppendPrintF(&v29, ", destPort %hu", destPort);
    v12 = v29;

    v4 = v12;
  }

  ipProtocol = self->_ipProtocol;
  if (self->_ipProtocol)
  {
    v28 = v4;
    NSAppendPrintF(&v28, ", ipProto %hu", ipProtocol);
    v14 = v28;

    v4 = v14;
  }

  trafficClass = self->_trafficClass;
  if (trafficClass)
  {
    v27 = v4;
    NSAppendPrintF(&v27, ", traffic %@", trafficClass);
    v16 = v27;

    v4 = v16;
  }

  ipVersion = self->_ipVersion;
  if (ipVersion)
  {
    v26 = v4;
    NSAppendPrintF(&v26, ", ipVersion %hu", ipVersion);
    v18 = v26;

    v4 = v18;
  }

  idleTimeout = self->_idleTimeout;
  if (idleTimeout)
  {
    v25 = v4;
    NSAppendPrintF(&v25, ", Timeout %hu", idleTimeout);
    v20 = v25;

    v4 = v20;
  }

  v24 = v4;
  NSAppendPrintF(&v24, ">");
  v21 = v24;
  v22 = v24;

  return v21;
}

@end