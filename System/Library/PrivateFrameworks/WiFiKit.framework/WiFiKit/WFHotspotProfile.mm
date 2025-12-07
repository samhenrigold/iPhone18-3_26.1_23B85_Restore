@interface WFHotspotProfile
- (WFHotspotProfile)initWithProfile:(id)profile anqpResponse:(id)response;
@end

@implementation WFHotspotProfile

- (WFHotspotProfile)initWithProfile:(id)profile anqpResponse:(id)response
{
  profileCopy = profile;
  responseCopy = response;
  v8 = responseCopy;
  if (!profileCopy)
  {
    [WFHotspotProfile initWithProfile:? anqpResponse:?];
LABEL_9:

    v11 = 0;
    goto LABEL_5;
  }

  if (!responseCopy)
  {
    [WFHotspotProfile initWithProfile:? anqpResponse:?];
    goto LABEL_9;
  }

  [profileCopy scanAttributes];
  v9 = WiFiNetworkCreate();
  if (!v9)
  {
    [WFHotspotProfile initWithProfile:profileCopy anqpResponse:&v13];
    goto LABEL_9;
  }

  v10 = v9;
  WiFiNetworkMerge();
  v11 = [(WFNetworkProfile *)self initWithNetworkRef:v10];
  CFRelease(v10);
LABEL_5:

  return v11;
}

- (void)initWithProfile:(uint64_t)a1 anqpResponse:(NSObject *)a2 .cold.1(uint64_t a1, NSObject **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFHotspotProfile initWithProfile:anqpResponse:]";
    v10 = 2112;
    v11 = a1;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: failed to create network from profile %@", &v8, 0x16u);
  }

  *a2 = v4;
}

- (void)initWithProfile:(NSObject *)a1 anqpResponse:.cold.2(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFHotspotProfile initWithProfile:anqpResponse:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil anqp response", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)initWithProfile:(NSObject *)a1 anqpResponse:.cold.3(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFHotspotProfile initWithProfile:anqpResponse:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil profile", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

@end