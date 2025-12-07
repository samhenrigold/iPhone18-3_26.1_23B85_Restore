@interface WFPrivateAddressConfig
- (BOOL)isEqual:(id)equal;
- (WFPrivateAddressConfig)initWithPrivateAddressConfigDictionary:(id)dictionary ssid:(id)ssid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFPrivateAddressConfig

- (WFPrivateAddressConfig)initWithPrivateAddressConfigDictionary:(id)dictionary ssid:(id)ssid
{
  v38 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  ssidCopy = ssid;
  if (!dictionaryCopy || ![dictionaryCopy count])
  {
    goto LABEL_35;
  }

  if (!ssidCopy)
  {
    [WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:];
    goto LABEL_35;
  }

  v33.receiver = self;
  v33.super_class = WFPrivateAddressConfig;
  v8 = [(WFPrivateAddressConfig *)&v33 init];
  self = v8;
  if (!v8)
  {
LABEL_35:

    self = 0;
    goto LABEL_36;
  }

  objc_storeStrong(&v8->_ssid, ssid);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(4uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 4 && v9 && os_log_type_enabled(v9, v11))
  {
    ssid = self->_ssid;
    *buf = 136315650;
    v35 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
    v36 = 2112;
    *v37 = ssid;
    *&v37[8] = 2112;
    *&v37[10] = dictionaryCopy;
    _os_log_impl(&dword_273ECD000, v9, v11, "%s: %@ private address config: %@", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D298E0];
  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D298E0]];

  if (v15)
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:v14];
    self->_carrierBundleBased = [v16 BOOLValue];
  }

  v17 = *MEMORY[0x277D298C0];
  v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D298C0]];

  if (!v18)
  {
    v22 = WFLogForCategory(0);
    v23 = OSLogForWFLogLevel(4uLL);
    v24 = v23;
    v21 = 0;
    if (WFCurrentLogLevel(v23, v25) >= 4 && v22)
    {
      if (os_log_type_enabled(v22, v24))
      {
        v26 = self->_ssid;
        *buf = 136315394;
        v35 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
        v36 = 2112;
        *v37 = v26;
        _os_log_impl(&dword_273ECD000, v22, v24, "%s: missing disabled reason key for %@, defaulting to none", buf, 0x16u);
      }

      v21 = 0;
    }

    goto LABEL_33;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:v17];
  intValue = [v19 intValue];

  v21 = 0;
  if (intValue > 2)
  {
    if (intValue == 3)
    {
      v21 = 1;
      goto LABEL_28;
    }

    if (intValue == 4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (intValue != 1)
    {
      if (intValue != 2)
      {
        goto LABEL_28;
      }

LABEL_23:
      v21 = 2;
      goto LABEL_28;
    }

    if (self->_carrierBundleBased)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }
  }

LABEL_28:
  v22 = WFLogForCategory(0);
  v27 = OSLogForWFLogLevel(3uLL);
  v28 = v27;
  if (WFCurrentLogLevel(v27, v29) >= 3 && v22)
  {
    v22 = v22;
    if (os_log_type_enabled(v22, v28))
    {
      v30 = *(&off_279EBE430 + v21);
      v31 = self->_ssid;
      *buf = 136315906;
      v35 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
      v36 = 1024;
      *v37 = intValue;
      *&v37[4] = 2112;
      *&v37[6] = v30;
      *&v37[14] = 2112;
      *&v37[16] = v31;
      _os_log_impl(&dword_273ECD000, v22, v28, "%s: disable reason: %d (%@) for %@", buf, 0x26u);
    }
  }

LABEL_33:

  self->_disabledReason = v21;
LABEL_36:

  return self;
}

- (unint64_t)hash
{
  ssid = [(WFPrivateAddressConfig *)self ssid];
  v4 = [ssid hash];
  disabledReason = [(WFPrivateAddressConfig *)self disabledReason];

  return disabledReason ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ssid = [v5 ssid];
    ssid2 = [(WFPrivateAddressConfig *)self ssid];
    if ([ssid isEqualToString:ssid2])
    {
      disabledReason = [v5 disabledReason];
      v9 = disabledReason == [(WFPrivateAddressConfig *)self disabledReason];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFPrivateAddressConfig *)self ssid];
  disabledReason = [(WFPrivateAddressConfig *)self disabledReason];
  if (disabledReason > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_279EBE430 + disabledReason);
  }

  v9 = [v3 stringWithFormat:@"<%@ : %p %@ disabled reason: %@>", v5, self, ssid, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    [v5 setDisabledReason:{-[WFPrivateAddressConfig disabledReason](self, "disabledReason")}];
    [v5 setCarrierBundleBased:{-[WFPrivateAddressConfig isCarrierBundleBased](self, "isCarrierBundleBased")}];
    ssid = [(WFPrivateAddressConfig *)self ssid];
    v7 = [ssid copyWithZone:zone];
    [v5 setSsid:v7];
  }

  return v5;
}

- (void)initWithPrivateAddressConfigDictionary:ssid:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v4 = 136315138;
    v5 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
    _os_log_impl(&dword_273ECD000, v0, v2, "%s: ssid is null", &v4, 0xCu);
  }
}

@end