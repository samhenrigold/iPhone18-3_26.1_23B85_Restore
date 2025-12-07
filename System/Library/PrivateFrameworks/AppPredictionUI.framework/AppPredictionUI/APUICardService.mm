@interface APUICardService
- (BOOL)canSatisfyCardRequest:(id)request;
- (NSString)serviceIdentifier;
- (unint64_t)servicePriorityForRequest:(id)request;
- (void)requestCard:(id)card reply:(id)reply;
@end

@implementation APUICardService

- (NSString)serviceIdentifier
{
  v2 = [kAPUICardServiceIdentifier copy];

  return v2;
}

- (BOOL)canSatisfyCardRequest:(id)request
{
  requestCopy = request;
  v4 = +[APUICardRequestSatisfactionCriteria generalSatisfactionCriteria];
  v5 = [v4 canSatisfyCardRequest:requestCopy];

  return v5;
}

- (unint64_t)servicePriorityForRequest:(id)request
{
  requestCopy = request;
  v4 = +[APUICardRequestSatisfactionCriteria customIntentSatisfactionCriteria];
  v5 = [v4 servicePriorityForRequest:requestCopy];

  v6 = +[APUICardRequestSatisfactionCriteria compactSatisfactionCriteria];
  v7 = [v6 servicePriorityForRequest:requestCopy];

  if (v5 <= v7)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (void)requestCard:(id)card reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(APUICardService *)self canSatisfyCardRequest:cardCopy];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        cardViewConfig = [cardCopy cardViewConfig];
      }

      else
      {
        cardViewConfig = objc_alloc_init(APUIActionCardViewConfig);
        [(APUIActionCardViewConfig *)cardViewConfig setStyle:2];
        [(APUIActionCardViewConfig *)cardViewConfig setShowThumbnailImage:1];
        [(APUIActionCardViewConfig *)cardViewConfig setShowAppFootnote:1];
        [(APUIActionCardViewConfig *)cardViewConfig setShowActionButton:1];
      }

      content = [cardCopy content];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = content;
        bundleId = [(APUIActionCardViewConfig *)cardViewConfig bundleId];
        v15 = [bundleId length];

        if (!v15)
        {
          _bundleIdForDisplay = [v13 _bundleIdForDisplay];
          [(APUIActionCardViewConfig *)cardViewConfig setBundleId:_bundleIdForDisplay];
        }

        v10 = [APUIActionCardUtils cardSectionForATXAction:v13 withConfig:cardViewConfig];
        intent = [v13 intent];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = content;
          intent = [v19 intent];
          intentResponse = [v19 intentResponse];
          v10 = [APUIActionCardUtils cardSectionForINInteraction:v19 withConfig:cardViewConfig];

          goto LABEL_25;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [APUIActionCardUtils cardSectionForNSUserActivity:content withConfig:cardViewConfig];
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              v37 = __atxlog_handle_ui(isKindOfClass);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                [APUICardService requestCard:cardCopy reply:v37];
              }

              intentResponse = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
              replyCopy[2](replyCopy, 0, intentResponse);
              intent = 0;
              v10 = 0;
              goto LABEL_36;
            }

            v20 = [APUIActionCardUtils cardSectionForHeroApp:content withConfig:cardViewConfig];
          }

          v10 = v20;
          intentResponse = 0;
          intent = 0;
LABEL_25:
          v22 = [APUIActionCardUtils cardForCardSection:v10];
          v23 = v22;
          if (intent)
          {
            backingStore = [intent backingStore];
            data = [backingStore data];
            [v23 setIntentMessageData:data];

            _intentInstanceDescription = [intent _intentInstanceDescription];
            type = [_intentInstanceDescription type];
            [v23 setIntentMessageName:type];
          }

          if (intentResponse)
          {
            v28 = __atxlog_handle_ui(v22);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v38) = 0;
              _os_log_impl(&dword_240026000, v28, OS_LOG_TYPE_DEFAULT, "settings ActionCardService intentResponse...", &v38, 2u);
            }

            backingStore2 = [intentResponse backingStore];
            data2 = [backingStore2 data];
            [v23 setIntentResponseMessageData:data2];

            _payloadResponseTypeName = [intentResponse _payloadResponseTypeName];
            [v23 setIntentResponseMessageName:_payloadResponseTypeName];

            v33 = __atxlog_handle_ui(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [APUICardService requestCard:v23 reply:v33];
            }

            v35 = __atxlog_handle_ui(v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              intentResponseMessageName = [v23 intentResponseMessageName];
              v38 = 138412290;
              v39 = intentResponseMessageName;
              _os_log_impl(&dword_240026000, v35, OS_LOG_TYPE_DEFAULT, "name: %@", &v38, 0xCu);
            }
          }

          (replyCopy)[2](replyCopy, v23, 0);

LABEL_36:
          goto LABEL_37;
        }

        intent = content;
        v10 = [APUIActionCardUtils cardSectionForINIntent:intent withConfig:cardViewConfig];
      }

      intentResponse = 0;
      goto LABEL_25;
    }

    v11 = __atxlog_handle_ui(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [APUICardService requestCard:cardCopy reply:v11];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    v10 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [APUICardService requestCard:v10 reply:?];
    }
  }

LABEL_37:
}

- (void)requestCard:(uint64_t)a1 reply:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = 5501;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_240026000, a2, OS_LOG_TYPE_ERROR, "e:%ld * We cannot satisfy the card request: %@", &v2, 0x16u);
}

- (void)requestCard:(void *)a1 reply:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 content];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_240026000, a2, OS_LOG_TYPE_FAULT, "e:fault The cardContent is not something we can render: %@", &v4, 0xCu);
}

- (void)requestCard:(void *)a1 reply:(NSObject *)a2 .cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 intentResponseMessageData];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_240026000, a2, OS_LOG_TYPE_DEBUG, "data: %@", &v4, 0xCu);
}

- (void)requestCard:(os_log_t)log reply:.cold.4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 5501;
  _os_log_error_impl(&dword_240026000, log, OS_LOG_TYPE_ERROR, "e:%ld * No reply block specified for cardRequest!", &v1, 0xCu);
}

@end