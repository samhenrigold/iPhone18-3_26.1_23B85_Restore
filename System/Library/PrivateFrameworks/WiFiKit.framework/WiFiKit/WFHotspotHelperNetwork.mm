@interface WFHotspotHelperNetwork
- (WFHotspotHelperNetwork)initWithSSID:(id)d bundleIdentifier:(id)identifier password:(id)password label:(id)label;
- (id)description;
@end

@implementation WFHotspotHelperNetwork

- (WFHotspotHelperNetwork)initWithSSID:(id)d bundleIdentifier:(id)identifier password:(id)password label:(id)label
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  passwordCopy = password;
  labelCopy = label;
  v28.receiver = self;
  v28.super_class = WFHotspotHelperNetwork;
  v15 = [(WFHotspotHelperNetwork *)&v28 init];
  v16 = v15;
  if (!v15)
  {
    p_super = 0;
LABEL_14:

    goto LABEL_15;
  }

  objc_storeStrong(&v15->_ssid, d);
  if (!v16->_ssid)
  {
    [WFHotspotHelperNetwork initWithSSID:bundleIdentifier:password:label:];
    p_super = &v16->super;
    v16 = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&v16->_password, password);
  if (!v16->_password)
  {
    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(3uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) >= 3 && v17 && os_log_type_enabled(v17, v19))
    {
      ssid = v16->_ssid;
      *buf = 138412290;
      v30 = ssid;
      _os_log_impl(&dword_273ECD000, v17, v19, "Nil password for hotspot helper network ssid: %@", buf, 0xCu);
    }
  }

  objc_storeStrong(&v16->_label, label);
  objc_storeStrong(&v16->_bundleIdentifier, identifier);
  if (!v16->_bundleIdentifier)
  {
    p_super = WFLogForCategory(0);
    v23 = OSLogForWFLogLevel(3uLL);
    v24 = v23;
    if (WFCurrentLogLevel(v23, v25) >= 3 && p_super && os_log_type_enabled(p_super, v24))
    {
      v26 = v16->_ssid;
      *buf = 136315394;
      v30 = "[WFHotspotHelperNetwork initWithSSID:bundleIdentifier:password:label:]";
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_273ECD000, p_super, v24, "%s: missing bundleIdentifier for %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFHotspotHelperNetwork *)self ssid];
  password = [(WFHotspotHelperNetwork *)self password];
  label = [(WFHotspotHelperNetwork *)self label];
  bundleIdentifier = [(WFHotspotHelperNetwork *)self bundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: SSID: %@, Password: %@, Label: %@, Identifier: %@>", v5, ssid, password, label, bundleIdentifier];

  return v10;
}

- (void)initWithSSID:bundleIdentifier:password:label:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v0, v2, "Missing SSID for hotspot helper network", v4, 2u);
  }
}

@end