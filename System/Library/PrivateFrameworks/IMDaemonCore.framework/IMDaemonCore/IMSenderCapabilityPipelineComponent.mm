@interface IMSenderCapabilityPipelineComponent
- (IMSenderCapabilityPipelineComponent)initWithRegistrationProperties:(id)properties pushToken:(id)token;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMSenderCapabilityPipelineComponent

- (IMSenderCapabilityPipelineComponent)initWithRegistrationProperties:(id)properties pushToken:(id)token
{
  propertiesCopy = properties;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = IMSenderCapabilityPipelineComponent;
  v9 = [(IMSenderCapabilityPipelineComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_registrationProperties, properties);
    objc_storeStrong(&v10->_pushToken, token);
  }

  return v10;
}

- (id)runIndividuallyWithInput:(id)input
{
  v65 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  fromIdentifier = [inputCopy fromIdentifier];
  if ([fromIdentifier length])
  {
    toIdentifier = [inputCopy toIdentifier];
    v5 = [toIdentifier length];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277D18A48]);
      toIdentifier2 = [inputCopy toIdentifier];
      v35 = [v6 initWithUnprefixedURI:toIdentifier2];

      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = MEMORY[0x277D1AA00];
      fromIdentifier2 = [inputCopy fromIdentifier];
      v60 = fromIdentifier2;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      v34 = [v9 _currentCachedRemoteDevicesForDestinations:v11 service:@"com.apple.madrid" preferredFromID:v35 listenerID:@"IMSenderCapabilityPipelineComponent"];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v34 allValues];
      v37 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v37)
      {
        v12 = 0;
        v36 = *v54;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v54 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v53 + 1) + 8 * i);
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v41 = v13;
            v43 = [v41 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v43)
            {
              v42 = *v50;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v50 != v42)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v15 = *(*(&v49 + 1) + 8 * j);
                  pushToken = [v15 pushToken];
                  pushToken2 = [(IMSenderCapabilityPipelineComponent *)self pushToken];
                  v18 = [pushToken isEqualToData:pushToken2];

                  if (v18)
                  {
                    v47 = 0u;
                    v48 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    registrationProperties = [(IMSenderCapabilityPipelineComponent *)self registrationProperties];
                    v20 = [registrationProperties countByEnumeratingWithState:&v45 objects:v57 count:16];
                    if (v20)
                    {
                      v21 = *v46;
                      do
                      {
                        for (k = 0; k != v20; ++k)
                        {
                          if (*v46 != v21)
                          {
                            objc_enumerationMutation(registrationProperties);
                          }

                          v23 = *(*(&v45 + 1) + 8 * k);
                          capabilities = [v15 capabilities];
                          v25 = [capabilities valueForCapability:v23];

                          if (v25)
                          {
                            [v8 addObject:v23];
                          }
                        }

                        v20 = [registrationProperties countByEnumeratingWithState:&v45 objects:v57 count:16];
                      }

                      while (v20);
                    }

                    v12 = 1;
                  }
                }

                v43 = [v41 countByEnumeratingWithState:&v49 objects:v58 count:16];
              }

              while (v43);
            }
          }

          v37 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v37);
      }

      else
      {
        v12 = 0;
      }

      [inputCopy setSenderRegistrationProperties:v8];
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = @"NO";
          if (v12)
          {
            v33 = @"YES";
          }

          *buf = 138412546;
          v62 = v8;
          v63 = 2112;
          v64 = v33;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "<IMSenderCapabilityPipelineComponent> Final capabilities: %@ foundEndpoint: %@", buf, 0x16u);
        }
      }

      v30 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

      goto LABEL_35;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      fromIdentifier3 = [inputCopy fromIdentifier];
      toIdentifier3 = [inputCopy toIdentifier];
      *buf = 138412546;
      v62 = fromIdentifier3;
      v63 = 2112;
      v64 = toIdentifier3;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "<IMSenderCapabilityPipelineComponent> Incomplete identifier(s), returning empty capabilities (from: %@, to: %@)", buf, 0x16u);
    }
  }

  v29 = [MEMORY[0x277CBEB98] set];
  [inputCopy setSenderRegistrationProperties:v29];

  v30 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_35:

  return v30;
}

@end