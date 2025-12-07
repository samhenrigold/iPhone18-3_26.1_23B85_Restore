@interface IMMessageMomentShareProcessingPipelineComponent
- (IMMessageMomentShareProcessingPipelineComponent)initWithTrustedData:(id)data;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMMessageMomentShareProcessingPipelineComponent

- (IMMessageMomentShareProcessingPipelineComponent)initWithTrustedData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = IMMessageMomentShareProcessingPipelineComponent;
  v5 = [(IMMessageMomentShareProcessingPipelineComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMMessageMomentShareProcessingPipelineComponent *)v5 setTrustedData:dataCopy];
  }

  return v6;
}

- (id)runIndividuallyWithInput:(id)input
{
  v49 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      messageItems = [inputCopy messageItems];
      *buf = 138412290;
      v44 = messageItems;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "<IMMessageMomentShareProcessingPipelineComponent> Started processing for Messages: %@", buf, 0xCu);
    }
  }

  messageItems2 = [inputCopy messageItems];
  v6 = [messageItems2 count] == 0;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "<IMMessageMomentShareProcessingPipelineComponent> Failed to find any message items", buf, 2u);
      }
    }

    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = [v28 initWithDomain:*MEMORY[0x277D18DF8] code:10 userInfo:0];
    v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v29];
  }

  else
  {
    v32 = objc_alloc_init(MEMORY[0x277D18E08]);
    chat = [inputCopy chat];
    if (chat)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      messageItems3 = [inputCopy messageItems];
      v8 = [messageItems3 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (!v8)
      {
        goto LABEL_35;
      }

      LOBYTE(v36) = 0;
      v9 = 0;
      v10 = *v40;
      obj = messageItems3;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          if (([v12 isTypingMessage] & 1) == 0)
          {
            v38 = 0;
            v13 = MEMORY[0x277D1AAB0];
            balloonBundleID = [v12 balloonBundleID];
            body = [v12 body];
            payloadData = [v12 payloadData];
            v17 = [v13 photoShareURLFromPluginBundleID:balloonBundleID contentString:body payload:payloadData shouldAccept:&v38];

            if (v17)
            {
              if (v9)
              {
                if (v36)
                {
                  goto LABEL_16;
                }

LABEL_19:
                v36 = 0;
LABEL_21:
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMEventCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    if (v36)
                    {
                      v25 = @"YES";
                    }

                    else
                    {
                      v25 = @"NO";
                    }

                    *buf = 138412546;
                    if (v38)
                    {
                      v26 = @"YES";
                    }

                    else
                    {
                      v26 = @"NO";
                    }

                    v44 = v25;
                    v45 = 2112;
                    v46 = v26;
                    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Not accepting moment share, both isFromKnownSender (%@) and shouldAccept (%@) must be true", buf, 0x16u);
                  }
                }
              }

              else
              {
                trustedData = [(IMMessageMomentShareProcessingPipelineComponent *)self trustedData];
                fromIdentifier = [trustedData fromIdentifier];
                _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
                v47 = _stripFZIDPrefix;
                v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
                v23 = IMDAreAllAliasesUnknown();

                if (v23)
                {
                  goto LABEL_19;
                }

LABEL_16:
                if (v38 != 1)
                {
                  v36 = 1;
                  goto LABEL_21;
                }

                v18 = +[IMDMomentShareManager sharedInstance];
                [v18 registerAndAcceptMomentShareForMessage:v12 inChat:chat resetAssetTransfers:1];

                LOBYTE(v36) = 1;
              }

              v9 = 1;
            }

            continue;
          }
        }

        messageItems3 = obj;
        v8 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (!v8)
        {
LABEL_35:

          goto LABEL_45;
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = @"NO";
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not accepting moment share hasChat: %@", buf, 0xCu);
      }
    }

LABEL_45:
    [v32 fullfillWithValue:inputCopy];
  }

  return v32;
}

@end