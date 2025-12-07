@interface BCSNFCCodeParser
- (void)postNotificationForURL:(id)l payload:(id)payload completionHandler:(id)handler;
@end

@implementation BCSNFCCodeParser

- (void)postNotificationForURL:(id)l payload:(id)payload completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  handlerCopy = handler;
  v10 = [BCSURLDataParser parseURL:l];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      type = [v10 type];
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNFCCodeParser: Detected NFC URL has type %ld", buf, 0xCu);
    }

    if (!self->_notificationServiceConnection)
    {
      v11 = objc_alloc_init(BCSNotificationServiceConnection);
      notificationServiceConnection = self->_notificationServiceConnection;
      self->_notificationServiceConnection = v11;
    }

    v13 = [[BCSNFCCodePayload alloc] initWithNFCPayload:payloadCopy];
    v14 = self->_notificationServiceConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke;
    v15[3] = &unk_278CFF398;
    v16 = handlerCopy;
    [(BCSNotificationServiceConnection *)v14 notifyParsedCodeWithData:v10 codePayload:v13 shouldReplacePreviousNotifications:0 withReply:v15];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSNFCCodeParser postNotificationForURL:payload:completionHandler:];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:3 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke_cold_1(v5);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNFCCodeParser: Finished posting notification", v9, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke_cold_1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSNFCCodeParser: Error posting notification: %@", &v2, 0xCu);
}

@end