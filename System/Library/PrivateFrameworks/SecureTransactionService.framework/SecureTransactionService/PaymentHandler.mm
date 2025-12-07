@interface PaymentHandler
- (id)setActiveCredential:(id)credential;
- (id)startNFSessionWithCompletion:(id)completion;
- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options;
- (id)stopTransaction;
- (void)loyaltyAndPaymentSession:(id)session didDetectField:(BOOL)field;
- (void)loyaltyAndPaymentSession:(id)session didEndTransaction:(id)transaction;
- (void)loyaltyAndPaymentSession:(id)session didEnterFieldWithNotification:(id)notification;
- (void)loyaltyAndPaymentSession:(id)session didExpireTransactionForApplet:(id)applet;
- (void)loyaltyAndPaymentSession:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object;
- (void)loyaltyAndPaymentSession:(id)session didFailDeferredAuthorization:(BOOL)authorization;
- (void)loyaltyAndPaymentSession:(id)session didPerformValueAddedServiceTransactions:(id)transactions;
- (void)loyaltyAndPaymentSession:(id)session didStartTransaction:(id)transaction;
- (void)loyaltyAndPaymentSessionDidReceiveActivityTimeout:(id)timeout result:(id)result;
- (void)loyaltyAndPaymentSessionHasPendingServerRequest:(id)request;
@end

@implementation PaymentHandler

- (id)startNFSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  nfHardwareManager = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2653878F0;
  v9[3] = &unk_279B93F68;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [nfHardwareManager startLoyaltyAndContactlessPaymentSession:v9];

  return v7;
}

- (id)setActiveCredential:(id)credential
{
  v53[4] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v47.receiver = self;
  v47.super_class = PaymentHandler;
  v6 = [(STSHandler *)&v47 setActiveCredential:credentialCopy];
  if (!credentialCopy)
  {
    goto LABEL_13;
  }

  identifier = [credentialCopy identifier];

  if (!identifier)
  {
    goto LABEL_13;
  }

  identifier2 = [credentialCopy identifier];
  if ([identifier2 hasPrefix:0x2876E4FF0])
  {

LABEL_6:
    identifier3 = [credentialCopy identifier];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setActiveCredential:]", 60, self, @"AID is not supported by payment handler - %@", v12, v13, identifier3);

    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v52[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v53[0] = v16;
    v53[1] = &unk_2876ED338;
    v52[1] = @"Line";
    v52[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v53[2] = v17;
    v52[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 61];
    v53[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:4];
    v20 = [v14 errorWithDomain:v15 code:8 userInfo:v19];

    goto LABEL_17;
  }

  identifier4 = [credentialCopy identifier];
  v10 = [identifier4 hasPrefix:0x2876E5010];

  if (v10)
  {
    goto LABEL_6;
  }

  v21 = 64;
  nfSession = self->_nfSession;
  identifier5 = [credentialCopy identifier];
  v15 = [(NFLoyaltyAndPaymentSession *)nfSession appletWithIdentifier:identifier5];

  if (!v15)
  {
LABEL_13:
    identifier6 = [credentialCopy identifier];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler setActiveCredential:]", 74, self, @"applet not found for identifier = %@", v39, v40, identifier6);

    v41 = MEMORY[0x277CCA9B8];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v48[0] = *MEMORY[0x277CCA450];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v49[0] = v32;
    v49[1] = &unk_2876ED368;
    v48[1] = @"Line";
    v48[2] = @"Method";
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v49[2] = v21;
    v48[3] = *MEMORY[0x277CCA068];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 75];
    v49[3] = v33;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
    v37 = [v41 errorWithDomain:v31 code:8 userInfo:v42];

    v15 = 0;
LABEL_14:

LABEL_15:
    v28 = v37;
    goto LABEL_16;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler setActiveCredential:]", 68, self, @"applet %@", v24, v25, v15);
  v26 = self->_nfSession;
  v46 = v6;
  v27 = [(NFLoyaltyAndPaymentSession *)v26 setActivePaymentApplet:v15 error:&v46];
  v28 = v46;

  if ((v27 & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setActiveCredential:]", 70, self, @"set active applet failed = %@", v29, v30, v28);
    v45 = MEMORY[0x277CCA9B8];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v50[0] = *MEMORY[0x277CCA450];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v51[0] = v32;
    v50[1] = *MEMORY[0x277CCA7E8];
    v33 = v28;
    if (!v28)
    {
      v34 = MEMORY[0x277CCA9B8];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v33 = [v34 errorWithDomain:v21 code:5 userInfo:0];
    }

    v51[1] = v33;
    v51[2] = &unk_2876ED350;
    v50[2] = @"Line";
    v50[3] = @"Method";
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v51[3] = v44;
    v50[4] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 71];
    v51[4] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:5];
    v37 = [v45 errorWithDomain:v31 code:10 userInfo:v36];

    if (v28)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v20 = v28;
  v6 = v20;
LABEL_17:

  return v20;
}

- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options
{
  v51[4] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v45.receiver = self;
  v45.super_class = PaymentHandler;
  v10 = [(STSTransactionHandler *)&v45 startTransactionWithAuthorization:authorizationCopy options:options];
  if (!self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 85, self, @"NF session does not exist!", v8, v9, v41);
    v25 = MEMORY[0x277CCA9B8];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v50[0] = *MEMORY[0x277CCA450];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v51[0] = v27;
    v51[1] = &unk_2876ED380;
    v50[1] = @"Line";
    v50[2] = @"Method";
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v51[2] = v28;
    v50[3] = *MEMORY[0x277CCA068];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 86];
    v51[3] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
    v31 = [v25 errorWithDomain:v26 code:9 userInfo:v30];

    goto LABEL_16;
  }

  if (options)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 91, self, @"deferred auth: %@", v8, v9, authorizationCopy);
    nfSession = self->_nfSession;
    v44 = v10;
    v33 = [(NFLoyaltyAndPaymentSession *)nfSession startDeferredCardEmulation:1 authorization:authorizationCopy error:&v44];
    v13 = v44;

    if ((v33 & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 95, self, @"start deferred transaction failed = %@", v34, v35, v13);
      v36 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v48[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v49[0] = v18;
      v48[1] = *MEMORY[0x277CCA7E8];
      v19 = v13;
      if (!v13)
      {
        v37 = MEMORY[0x277CCA9B8];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v19 = [v37 errorWithDomain:? code:? userInfo:?];
      }

      v49[1] = v19;
      v49[2] = &unk_2876ED398;
      v48[2] = @"Line";
      v48[3] = @"Method";
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v49[3] = v21;
      v48[4] = *MEMORY[0x277CCA068];
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 96];
      v49[4] = v38;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];
      v24 = [v36 errorWithDomain:v17 code:10 userInfo:v39];

      goto LABEL_12;
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 100, self, @"auth: %@", v8, v9, authorizationCopy);
    v11 = self->_nfSession;
    v43 = v10;
    v12 = [(NFLoyaltyAndPaymentSession *)v11 startCardEmulation:1 authorization:authorizationCopy error:&v43];
    v13 = v43;

    if ((v12 & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 102, self, @"start transaction failed = %@", v14, v15, v13);
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v46[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v47[0] = v18;
      v46[1] = *MEMORY[0x277CCA7E8];
      v19 = v13;
      if (!v13)
      {
        v20 = MEMORY[0x277CCA9B8];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v19 = [v20 errorWithDomain:? code:? userInfo:?];
      }

      v47[1] = v19;
      v47[2] = &unk_2876ED3B0;
      v46[2] = @"Line";
      v46[3] = @"Method";
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v47[3] = v21;
      v46[4] = *MEMORY[0x277CCA068];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 103];
      v47[4] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:5];
      v24 = [v16 errorWithDomain:v17 code:10 userInfo:v23];

LABEL_12:
      if (!v13)
      {
      }

      v13 = v24;
    }
  }

  v31 = v13;
  v10 = v31;
LABEL_16:

  return v31;
}

- (id)stopTransaction
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = PaymentHandler;
  stopTransaction = [(STSTransactionHandler *)&v19 stopTransaction];
  if (self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[PaymentHandler stopTransaction]", 118, self, &stru_2876E3E50, v4, v5, v17);
    nfSession = self->_nfSession;
    v18 = stopTransaction;
    [(NFLoyaltyAndPaymentSession *)nfSession stopCardEmulation:&v18];
    v8 = v18;

    v9 = v8;
    stopTransaction = v9;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler stopTransaction]", 114, self, @"NF session does not exist!", v4, v5, v17);
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v20[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v21[0] = v12;
    v21[1] = &unk_2876ED3C8;
    v20[1] = @"Line";
    v20[2] = @"Method";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v21[2] = v13;
    v20[3] = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 115];
    v21[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v9 = [v10 errorWithDomain:v11 code:9 userInfo:v15];
  }

  return v9;
}

- (void)loyaltyAndPaymentSession:(id)session didDetectField:(BOOL)field
{
  fieldCopy = field;
  if (field)
  {
    v8 = @"Field On";
  }

  else
  {
    v8 = @"Field Off";
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didDetectField:]", 252, self, v8, v4, v5, v9);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireFieldDetectEvent:fieldCopy];
}

- (void)loyaltyAndPaymentSession:(id)session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didEnterFieldWithNotification:]", 258, self, @"%@", v6, v7, notificationCopy);
  v9 = sub_265399348(notificationCopy);

  parent = [(STSTransactionHandler *)self parent];
  [parent fireFieldNotificationEvent:v9];
}

- (void)loyaltyAndPaymentSession:(id)session didExpireTransactionForApplet:(id)applet
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didExpireTransactionForApplet:]", 276, self, @"EXPIRED: %@", v4, v5, applet);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidExpireTransaction:1];
}

- (void)loyaltyAndPaymentSession:(id)session didStartTransaction:(id)transaction
{
  transactionCopy = transaction;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didStartTransaction:]", 282, self, @"START: %@", v6, v7, transactionCopy);
  v8 = [STSTransactionStartEvent alloc];
  activeSTSCredential = [(STSHandler *)self activeSTSCredential];
  v11 = [(STSTransactionStartEvent *)v8 initWithCredential:activeSTSCredential andNearFieldStartEvent:transactionCopy];

  parent = [(STSTransactionHandler *)self parent];
  [parent fireTransactionStartEvent:v11];
}

- (void)loyaltyAndPaymentSession:(id)session didEndTransaction:(id)transaction
{
  transactionCopy = transaction;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didEndTransaction:]", 290, self, @"END: %@", v6, v7, transactionCopy);
  v8 = [STSTransactionEndEvent alloc];
  activeSTSCredential = [(STSHandler *)self activeSTSCredential];
  v11 = [(STSTransactionEndEvent *)v8 initWithCredential:activeSTSCredential andNearFieldEndEvent:transactionCopy];

  parent = [(STSTransactionHandler *)self parent];
  [parent fireTransactionEndEvent:v11];
}

- (void)loyaltyAndPaymentSession:(id)session didFailDeferredAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didFailDeferredAuthorization:]", 297, self, @"Failed deferred authorization", v4, v5, v8);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidFailDeferredAuth:authorizationCopy];
}

- (void)loyaltyAndPaymentSessionHasPendingServerRequest:(id)request
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSessionHasPendingServerRequest:]", 302, self, @"Pending priority server request", v3, v4, v6);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireHasPendingServerRequest:1];
}

- (void)loyaltyAndPaymentSession:(id)session didPerformValueAddedServiceTransactions:(id)transactions
{
  v43 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didPerformValueAddedServiceTransactions:]", 313, self, @"HCE transactions: %@", v6, v7, transactionsCopy);
  v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(transactionsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = transactionsCopy;
  v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    v28 = *v38;
    selfCopy = self;
    do
    {
      v11 = 0;
      v30 = v9;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v14 = self->_vasCredentials;
          v15 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v15)
          {
            v16 = *v34;
            while (2)
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v34 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v33 + 1) + 8 * i);
                merchantId = [v13 merchantId];
                merchantId2 = [v18 merchantId];
                v21 = [merchantId isEqualToData:merchantId2];

                if (v21)
                {
                  v15 = v18;
                  goto LABEL_18;
                }
              }

              v15 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v10 = v28;
            self = selfCopy;
            v9 = v30;
          }

          asDictionary = [v13 asDictionary];
          v26 = [STSVASTransaction vasTransactionForCredential:v15 withDictionary:asDictionary];

          [v31 addObject:v26];
        }

        else
        {
          v22 = objc_opt_class();
          v13 = NSStringFromClass(v22);
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler loyaltyAndPaymentSession:didPerformValueAddedServiceTransactions:]", 320, self, @"Wrong transaction class: %@", v23, v24, v13);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidPerformAuxiliaryTransactions:v31];
}

- (void)loyaltyAndPaymentSession:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object
{
  v5 = *&change;
  objectCopy = object;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didExpressModeStateChange:withObject:]", 351, self, @"%d - %@", v7, v8, v5);
  v11 = [[STSExpressEventInfoWithDetail alloc] initWithState:sub_265399324(v5) detail:objectCopy];

  parent = [(STSTransactionHandler *)self parent];
  [parent fireExpressModeStateChangeWithInfo:v11];
}

- (void)loyaltyAndPaymentSessionDidReceiveActivityTimeout:(id)timeout result:(id)result
{
  resultCopy = result;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSessionDidReceiveActivityTimeout:result:]", 359, self, @"Activity Timeout : %@", v6, v7, resultCopy);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidReceiveActivityTimeout:resultCopy];
}

@end