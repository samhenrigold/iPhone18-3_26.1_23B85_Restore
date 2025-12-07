@interface HMDNetworkRouterLANFirewallRuleList
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterLANFirewallRuleList)init;
- (HMDNetworkRouterLANFirewallRuleList)initWithMulticastBridgingRules:(id)rules staticPortRules:(id)portRules dynamicPortRules:(id)dynamicPortRules staticICMPRules:(id)pRules;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterLANFirewallRuleList

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
  staticPortRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
  dynamicPortRules = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
  staticICMPRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
  v8 = [v3 stringWithFormat:@"<HMDNetworkRouterLANFirewallRuleList multicastBridgingRules=%@, staticPortRules=%@, dynamicPortRules=%@, staticICMPRules=%@>", multicastBridgingRules, staticPortRules, dynamicPortRules, staticICMPRules];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
      multicastBridgingRules2 = [(HMDNetworkRouterLANFirewallRuleList *)v6 multicastBridgingRules];
      if (multicastBridgingRules != multicastBridgingRules2)
      {
        multicastBridgingRules3 = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
        [(HMDNetworkRouterLANFirewallRuleList *)v6 multicastBridgingRules];
        v33 = v32 = multicastBridgingRules3;
        if (![multicastBridgingRules3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      staticPortRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
      staticPortRules2 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticPortRules];
      if (staticPortRules != staticPortRules2)
      {
        staticPortRules3 = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
        staticPortRules4 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticPortRules];
        if (![staticPortRules3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (multicastBridgingRules == multicastBridgingRules2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      dynamicPortRules = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
      dynamicPortRules2 = [(HMDNetworkRouterLANFirewallRuleList *)v6 dynamicPortRules];
      v31 = dynamicPortRules;
      v15 = dynamicPortRules == dynamicPortRules2;
      v16 = dynamicPortRules2;
      if (v15)
      {
        v28 = staticPortRules3;
        v29 = staticPortRules2;
      }

      else
      {
        dynamicPortRules3 = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
        dynamicPortRules4 = [(HMDNetworkRouterLANFirewallRuleList *)v6 dynamicPortRules];
        v26 = dynamicPortRules3;
        if (![dynamicPortRules3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = staticPortRules3;
        v29 = staticPortRules2;
      }

      v27 = v16;
      staticICMPRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
      staticICMPRules2 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticICMPRules];
      v20 = staticICMPRules2;
      if (staticICMPRules == staticICMPRules2)
      {

        v10 = 1;
      }

      else
      {
        staticICMPRules3 = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
        staticICMPRules4 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticICMPRules];
        v10 = [staticICMPRules3 isEqual:staticICMPRules4];
      }

      v23 = v31;
      v16 = v27;
      staticPortRules3 = v28;
      staticPortRules2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (staticPortRules == staticPortRules2)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterLANFirewallRuleList allocWithZone:zone];
  multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
  staticPortRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
  dynamicPortRules = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
  staticICMPRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
  v9 = [(HMDNetworkRouterLANFirewallRuleList *)v4 initWithMulticastBridgingRules:multicastBridgingRules staticPortRules:staticPortRules dynamicPortRules:dynamicPortRules staticICMPRules:staticICMPRules];

  return v9;
}

- (id)serializeWithError:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  v84 = 0u;
  v83 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  TLV8BufferInit();
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
  v6 = [multicastBridgingRules countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v57;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v57 != v9)
      {
        objc_enumerationMutation(multicastBridgingRules);
      }

      v11 = *(*(&v56 + 1) + 8 * v10);
      if (v8)
      {
        if (TLV8BufferAppend())
        {
          break;
        }
      }

      v55 = 0;
      v12 = [v11 serializeWithError:&v55];
      v13 = v55;
      if (v13)
      {
LABEL_46:
        v37 = v13;

        if (!error)
        {
          goto LABEL_51;
        }

        v38 = v37;
        v36 = 0;
        *error = v37;
        goto LABEL_52;
      }

      [v12 bytes];
      [v12 length];
      v14 = TLV8BufferAppend();

      if (v14)
      {
        break;
      }

      ++v10;
      v8 = 1;
      if (v7 == v10)
      {
        v7 = [multicastBridgingRules countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
    v15 = [multicastBridgingRules countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v52;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(multicastBridgingRules);
        }

        v20 = *(*(&v51 + 1) + 8 * v19);
        if (v17)
        {
          if (TLV8BufferAppend())
          {
            break;
          }
        }

        v50 = 0;
        v12 = [v20 serializeWithError:&v50];
        v13 = v50;
        if (v13)
        {
          goto LABEL_46;
        }

        [v12 bytes];
        [v12 length];
        v21 = TLV8BufferAppend();

        if (v21)
        {
          break;
        }

        ++v19;
        v17 = 1;
        if (v16 == v19)
        {
          v16 = [multicastBridgingRules countByEnumeratingWithState:&v51 objects:v62 count:16];
          if (v16)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:

      v49 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
      v22 = [multicastBridgingRules countByEnumeratingWithState:&v46 objects:v61 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = *v47;
LABEL_25:
        v26 = 0;
        while (1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(multicastBridgingRules);
          }

          v27 = *(*(&v46 + 1) + 8 * v26);
          if (v24)
          {
            if (TLV8BufferAppend())
            {
              break;
            }
          }

          v45 = 0;
          v12 = [v27 serializeWithError:&v45];
          v13 = v45;
          if (v13)
          {
            goto LABEL_46;
          }

          [v12 bytes];
          [v12 length];
          v28 = TLV8BufferAppend();

          if (v28)
          {
            break;
          }

          ++v26;
          v24 = 1;
          if (v23 == v26)
          {
            v23 = [multicastBridgingRules countByEnumeratingWithState:&v46 objects:v61 count:16];
            if (v23)
            {
              goto LABEL_25;
            }

            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        multicastBridgingRules = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
        v29 = [multicastBridgingRules countByEnumeratingWithState:&v41 objects:v60 count:16];
        if (!v29)
        {
LABEL_45:

          v36 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:?];
          v37 = 0;
          goto LABEL_52;
        }

        v30 = v29;
        v31 = 0;
        v32 = *v42;
LABEL_36:
        v33 = 0;
        while (1)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(multicastBridgingRules);
          }

          v34 = *(*(&v41 + 1) + 8 * v33);
          if (v31)
          {
            if (TLV8BufferAppend())
            {
              break;
            }
          }

          v40 = 0;
          v12 = [v34 serializeWithError:&v40];
          v13 = v40;
          if (v13)
          {
            goto LABEL_46;
          }

          [v12 bytes];
          [v12 length];
          v35 = TLV8BufferAppend();

          if (v35)
          {
            break;
          }

          ++v33;
          v31 = 1;
          if (v30 == v33)
          {
            v30 = [multicastBridgingRules countByEnumeratingWithState:&v41 objects:v60 count:16];
            if (v30)
            {
              goto LABEL_36;
            }

            goto LABEL_45;
          }
        }
      }
    }
  }

  if (error)
  {
    HMErrorFromOSStatus();
    v37 = 0;
    *error = v36 = 0;
  }

  else
  {
    v37 = 0;
LABEL_51:
    v36 = 0;
  }

LABEL_52:
  TLV8BufferFree();

  return v36;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  selfCopy = self;
  dataCopy = data;
  v6 = dataCopy;
  if (error)
  {
    *error = 0;
  }

  bytes = [dataCopy bytes];
  v8 = [v6 length];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  if (!v8)
  {
LABEL_34:
    if ([array count])
    {
      v21 = array;
    }

    else
    {
      v21 = 0;
    }

    [v28 setMulticastBridgingRules:v21];
    v22 = array2;
    if ([array2 count])
    {
      v23 = array2;
    }

    else
    {
      v23 = 0;
    }

    [v28 setStaticPortRules:v23];
    if ([array3 count])
    {
      v24 = array3;
    }

    else
    {
      v24 = 0;
    }

    [v28 setDynamicPortRules:v24];
    if ([array4 count])
    {
      v25 = array4;
    }

    else
    {
      v25 = 0;
    }

    [v28 setStaticICMPRules:v25];
    v12 = 0;
    v18 = 1;
    goto LABEL_49;
  }

  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (error)
      {
        HMErrorFromOSStatus();
        *error = v18 = 0;
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (!v37)
    {
      break;
    }

    if (v38 > 2u)
    {
      if (v38 == 3)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v31 = v12;
        v15 = [HMDNetworkRouterDynamicPortRule parsedFromData:v14 error:&v31];
        v16 = v31;

        if (v16)
        {
          goto LABEL_20;
        }

        v17 = array3;
        goto LABEL_22;
      }

      if (v38 == 4)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v30 = v12;
        v15 = [HMDNetworkRouterStaticICMPRule parsedFromData:v14 error:&v30];
        v16 = v30;

        if (!v16)
        {
          v17 = array4;
          goto LABEL_22;
        }

LABEL_20:
        v12 = v16;
LABEL_23:
      }
    }

    else
    {
      if (v38 == 1)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v33 = v12;
        v15 = [HMDNetworkRouterMulticastBridgingRule parsedFromData:v14 error:&v33];
        v16 = v33;

        if (v16)
        {
          goto LABEL_20;
        }

        v17 = array;
LABEL_22:
        [v17 addObject:{v15, selfCopy}];
        v12 = 0;
        goto LABEL_23;
      }

      if (v38 == 2)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v32 = v12;
        v15 = [HMDNetworkRouterStaticPortRule parsedFromData:v14 error:&v32];
        v16 = v32;

        if (!v16)
        {
          v17 = array2;
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    if (v36)
    {
      free(v36);
    }

    if (v34 == v13)
    {
      goto LABEL_31;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v12 = v19;
LABEL_31:
  if (!v12)
  {
    goto LABEL_34;
  }

  if (error)
  {
    v20 = v12;
    v18 = 0;
    *error = v12;
    goto LABEL_48;
  }

LABEL_47:
  v18 = 0;
LABEL_48:
  v22 = array2;
LABEL_49:

  return v18;
}

- (HMDNetworkRouterLANFirewallRuleList)initWithMulticastBridgingRules:(id)rules staticPortRules:(id)portRules dynamicPortRules:(id)dynamicPortRules staticICMPRules:(id)pRules
{
  rulesCopy = rules;
  portRulesCopy = portRules;
  dynamicPortRulesCopy = dynamicPortRules;
  pRulesCopy = pRules;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterLANFirewallRuleList;
  v15 = [(HMDNetworkRouterLANFirewallRuleList *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_multicastBridgingRules, rules);
    objc_storeStrong(&v16->_staticPortRules, portRules);
    objc_storeStrong(&v16->_dynamicPortRules, dynamicPortRules);
    objc_storeStrong(&v16->_staticICMPRules, pRules);
  }

  return v16;
}

- (HMDNetworkRouterLANFirewallRuleList)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterLANFirewallRuleList;
  return [(HMDNetworkRouterLANFirewallRuleList *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterLANFirewallRuleList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterLANFirewallRuleList *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end