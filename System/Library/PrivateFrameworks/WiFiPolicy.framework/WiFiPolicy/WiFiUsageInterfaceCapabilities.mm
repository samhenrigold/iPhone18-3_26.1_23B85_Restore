@interface WiFiUsageInterfaceCapabilities
- (BOOL)deviceSupports:(int)supports;
- (NSSet)deviceCapabilities;
- (WiFiUsageInterfaceCapabilities)initWithInterfaceName:(id)name;
- (id)description;
- (int)supportedPhyModes;
- (unint64_t)currentNumberOfSpatialStreams;
- (unint64_t)maxInterfacePHYRate;
- (void)dealloc;
@end

@implementation WiFiUsageInterfaceCapabilities

- (unint64_t)maxInterfacePHYRate
{
  result = self->_maxPHYRate;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(WiFiUsageInterfaceCapabilities *)self supportedPhyModes])
    {
      if ([(WiFiUsageInterfaceCapabilities *)self deviceSupports:94])
      {
        v4 = 160;
      }

      else
      {
        v4 = 80;
      }

      result = [WiFiUsageLQMTransformations getMaxPhyrateWithNss:2 Bw:v4 Phy:self->_supportedPhyModes];
      self->_maxPHYRate = result;
    }

    else
    {
      return self->_maxPHYRate;
    }
  }

  return result;
}

- (WiFiUsageInterfaceCapabilities)initWithInterfaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    NSLog(&cfstr_SCannotCreateI.isa, "[WiFiUsageInterfaceCapabilities initWithInterfaceName:]", 0);
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = WiFiUsageInterfaceCapabilities;
  self = [(WiFiUsageInterfaceCapabilities *)&v11 init];
  v5 = [nameCopy copy];
  interfaceName = self->_interfaceName;
  self->_interfaceName = v5;

  v7 = Apple80211Open();
  if (v7)
  {
    NSLog(&cfstr_SApple80211ope.isa, "[WiFiUsageInterfaceCapabilities initWithInterfaceName:]", v7);
    goto LABEL_6;
  }

  v8 = Apple80211BindToInterface();
  if (v8)
  {
    NSLog(&cfstr_SApple80211bin.isa, "[WiFiUsageInterfaceCapabilities initWithInterfaceName:]", v8);
    goto LABEL_6;
  }

  self->_maxPHYRate = 0x7FFFFFFFFFFFFFFFLL;
  self->_supportedPhyModes = 0;
  self = self;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (int)supportedPhyModes
{
  result = self->_supportedPhyModes;
  if (!result)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = Apple80211Get();
    if (v5)
    {
      NSLog(&cfstr_SApple80211cop.isa, "[WiFiUsageInterfaceCapabilities supportedPhyModes]", v5);
    }

    else
    {
      v6 = [dictionary objectForKey:@"PHYMODE_SUPPORTED"];
      self->_supportedPhyModes = [v6 unsignedIntValue];
    }

    return self->_supportedPhyModes;
  }

  return result;
}

- (unint64_t)currentNumberOfSpatialStreams
{
  v2 = Apple80211CopyValue();
  if (v2)
  {
    NSLog(&cfstr_SApple80211cop.isa, "[WiFiUsageInterfaceCapabilities currentNumberOfSpatialStreams]", v2);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (NSSet)deviceCapabilities
{
  deviceCapabilities = self->_deviceCapabilities;
  if (!deviceCapabilities)
  {
    v4 = Apple80211CopyValue();
    if (v4)
    {
      NSLog(&cfstr_SApple80211cop.isa, "[WiFiUsageInterfaceCapabilities deviceCapabilities]", v4);
    }

    else
    {
      v5 = [MEMORY[0x277CBEB98] setWithArray:0];
      v6 = self->_deviceCapabilities;
      self->_deviceCapabilities = v5;
    }

    deviceCapabilities = self->_deviceCapabilities;
  }

  return deviceCapabilities;
}

- (BOOL)deviceSupports:(int)supports
{
  v3 = *&supports;
  deviceCapabilities = [(WiFiUsageInterfaceCapabilities *)self deviceCapabilities];

  if (!deviceCapabilities)
  {
    return 0;
  }

  deviceCapabilities = self->_deviceCapabilities;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  LOBYTE(deviceCapabilities) = [(NSSet *)deviceCapabilities containsObject:v7];

  return deviceCapabilities;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  interfaceName = self->_interfaceName;
  v5 = [WiFiUsagePrivacyFilter getLabelForPhyModes:[(WiFiUsageInterfaceCapabilities *)self supportedPhyModes]];
  v6 = [WiFiUsagePrivacyFilter getLabelForPhyModes:[WiFiUsageLQMTransformations maxPhyModeFrom:self->_supportedPhyModes]];
  v7 = [v3 stringWithFormat:@"%@: supportedPhyModes:%@ maxPhyMode:%@ maxPHYRate:%d", interfaceName, v5, v6, -[WiFiUsageInterfaceCapabilities maxInterfacePHYRate](self, "maxInterfacePHYRate")];

  return v7;
}

- (void)dealloc
{
  if (self->_a11Ref)
  {
    Apple80211Close();
  }

  v3.receiver = self;
  v3.super_class = WiFiUsageInterfaceCapabilities;
  [(WiFiUsageInterfaceCapabilities *)&v3 dealloc];
}

@end