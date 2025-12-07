@interface DigitalCarKeyHandler
- (id)setActiveCredential:(id)credential;
- (id)setActiveCredentials:(id)credentials;
- (id)startNFSessionWithCompletion:(id)completion;
- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options;
- (id)stopTransaction;
- (void)session:(id)session didEndTransaction:(id)transaction;
- (void)session:(id)session didEnterFieldWithNotification:(id)notification;
- (void)session:(id)session didExpireTransactionForApplet:(id)applet;
- (void)session:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object;
- (void)session:(id)session didReceivePassthroughMessage:(id)message;
- (void)session:(id)session didStartTransaction:(id)transaction;
- (void)session:(id)session event:(id)event;
- (void)sessionDidExitField:(id)field;
- (void)sessionDidFailDeferredAuthorization:(id)authorization;
- (void)sessionDidReceiveActivityTimeout:(id)timeout result:(id)result;
@end

@implementation DigitalCarKeyHandler

- (id)startNFSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  nfHardwareManager = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_265394EA8;
  v9[3] = &unk_279B940F8;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [nfHardwareManager startDigitalCarKeySession:v9];

  return v7;
}

- (id)setActiveCredential:(id)credential
{
  v44[5] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v38.receiver = self;
  v38.super_class = DigitalCarKeyHandler;
  v8 = [(STSHandler *)&v38 setActiveCredential:credentialCopy];
  if (!credentialCopy || ([credentialCopy identifier], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler setActiveCredential:]", 67, self, @"Invalid credential", v6, v7, v34);
    v27 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v39[0] = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v40[0] = v20;
    v40[1] = &unk_2876ED8C0;
    v39[1] = @"Line";
    v39[2] = @"Method";
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v40[2] = v21;
    v39[3] = *MEMORY[0x277CCA068];
    subIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 68];
    v40[3] = subIdentifier;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v26 = [v27 errorWithDomain:v12 code:9 userInfo:v22];
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  nfSession = self->_nfSession;
  identifier = [credentialCopy identifier];
  v12 = [(NFDigitalCarKeySession *)nfSession appletWithIdentifier:identifier];

  if (!v12)
  {
    identifier2 = [credentialCopy identifier];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler setActiveCredential:]", 63, self, @"applet not found for identifier = %@", v30, v31, identifier2);

    v32 = MEMORY[0x277CCA9B8];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v41[0] = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v42[0] = v21;
    v42[1] = &unk_2876ED8A8;
    v41[1] = @"Line";
    v41[2] = @"Method";
    subIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v42[2] = subIdentifier;
    v41[3] = *MEMORY[0x277CCA068];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 64];
    v42[3] = v22;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
    v26 = [v32 errorWithDomain:v20 code:10 userInfo:v33];

    v12 = 0;
    v8 = v33;
    goto LABEL_10;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler setActiveCredential:]", 57, self, @"applet %@", v13, v14, v12);
  v15 = self->_nfSession;
  subIdentifier = [credentialCopy subIdentifier];
  v37 = v8;
  LOBYTE(v15) = [(NFDigitalCarKeySession *)v15 setActiveApplet:v12 key:subIdentifier outError:&v37];
  v17 = v37;

  if (v15)
  {
    goto LABEL_13;
  }

  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler setActiveCredential:]", 59, self, @"set active applet failed = %@", v18, v19, v17);
  v36 = MEMORY[0x277CCA9B8];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v43[0] = *MEMORY[0x277CCA450];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v44[0] = v21;
  v43[1] = *MEMORY[0x277CCA7E8];
  v22 = v17;
  if (!v17)
  {
    v23 = MEMORY[0x277CCA9B8];
    subIdentifier = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v22 = [v23 errorWithDomain:subIdentifier code:5 userInfo:0];
  }

  v44[1] = v22;
  v44[2] = &unk_2876ED890;
  v43[2] = @"Line";
  v43[3] = @"Method";
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v44[3] = v35;
  v43[4] = *MEMORY[0x277CCA068];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 60];
  v44[4] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];
  v26 = [v36 errorWithDomain:v20 code:10 userInfo:v25];

  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_12:

  v17 = v26;
LABEL_13:

  return v17;
}

- (id)setActiveCredentials:(id)credentials
{
  v65 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[DigitalCarKeyHandler setActiveCredentials:]", 75, self, @"credentials=%@", v6, v7, credentialsCopy);
  if ([credentialsCopy count] != 1)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler setActiveCredentials:]", 77, self, @"Currently only support 1 credential for this handler", v8, v9, v47);
  }

  v59.receiver = self;
  v59.super_class = DigitalCarKeyHandler;
  v10 = [(STSHandler *)&v59 setActiveCredentials:credentialsCopy];
  if (v10)
  {
    v13 = v10;
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler setActiveCredentials:]", 82, self, @"Invalid credentials", v11, v12, v47);
    v14 = v13;
    v15 = v14;
    goto LABEL_27;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v52 = credentialsCopy;
  obj = credentialsCopy;
  v16 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (!v16)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v17 = v16;
  sel = a2;
  v18 = 0;
  v19 = *v56;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v56 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v55 + 1) + 8 * i);
      identifier = [v21 identifier];

      if (identifier)
      {
        nfSession = self->_nfSession;
        identifier2 = [v21 identifier];
        v25 = [(NFDigitalCarKeySession *)nfSession appletWithIdentifier:identifier2];

        if (v25)
        {
          sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler setActiveCredentials:]", 95, self, @"applet %@", v26, v27, v25);
          v28 = self->_nfSession;
          subIdentifier = [v21 subIdentifier];
          v54 = v18;
          LOBYTE(v28) = [(NFDigitalCarKeySession *)v28 setActiveApplet:v25 key:subIdentifier outError:&v54];
          v14 = v54;

          if (v28)
          {

            v18 = v14;
            continue;
          }

          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler setActiveCredentials:]", 97, self, @"set active applet failed = %@", v30, v31, v14);
          v49 = MEMORY[0x277CCA9B8];
          v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v60[0] = *MEMORY[0x277CCA450];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
          v61[0] = v50;
          v60[1] = *MEMORY[0x277CCA7E8];
          v39 = v14;
          if (!v14)
          {
            v42 = MEMORY[0x277CCA9B8];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v39 = [v42 errorWithDomain:? code:? userInfo:?];
          }

          v61[1] = v39;
          v61[2] = &unk_2876ED8F0;
          v60[2] = @"Line";
          v60[3] = @"Method";
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel)];
          v61[3] = v43;
          v60[4] = *MEMORY[0x277CCA068];
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel), 98];
          v61[4] = v44;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:5];
          v15 = [v49 errorWithDomain:v41 code:10 userInfo:v45];

          if (v14)
          {
            credentialsCopy = v52;
            v36 = v41;
            v37 = v50;
LABEL_26:

            goto LABEL_27;
          }

          v18 = 0;
          credentialsCopy = v52;
          v36 = v41;
          v37 = v50;
          v38 = v48;
        }

        else
        {
          identifier3 = [v21 identifier];
          sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler setActiveCredentials:]", 91, self, @"applet not found for identifier = %@", v33, v34, identifier3);

          v35 = MEMORY[0x277CCA9B8];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v62[0] = *MEMORY[0x277CCA450];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
          v63[0] = v37;
          v63[1] = &unk_2876ED8D8;
          v62[1] = @"Line";
          v62[2] = @"Method";
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel)];
          v63[2] = v38;
          v62[3] = *MEMORY[0x277CCA068];
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel), 92];
          v63[3] = v39;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:4];
          v15 = [v35 errorWithDomain:v36 code:10 userInfo:v40];

          credentialsCopy = v52;
        }

        v14 = v18;
        goto LABEL_26;
      }
    }

    v17 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v15 = 0;
  v14 = v18;
  credentialsCopy = v52;
LABEL_27:

  return v15;
}

- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options
{
  v40[4] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v36.receiver = self;
  v36.super_class = DigitalCarKeyHandler;
  v10 = [(STSTransactionHandler *)&v36 startTransactionWithAuthorization:authorizationCopy options:options];
  if (self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler startTransactionWithAuthorization:options:]", 113, self, @"auth: %@", v8, v9, authorizationCopy);
    nfSession = self->_nfSession;
    v35 = v10;
    v12 = [(NFDigitalCarKeySession *)nfSession startCardEmulationAuthorization:authorizationCopy deferred:0 error:&v35];
    v13 = v35;

    if ((v12 & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler startTransactionWithAuthorization:options:]", 115, self, @"start transaction failed = %@", v14, v15, v13);
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v37[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v38[0] = v18;
      v37[1] = *MEMORY[0x277CCA7E8];
      v19 = v13;
      if (!v13)
      {
        v20 = MEMORY[0x277CCA9B8];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v19 = [v20 errorWithDomain:? code:? userInfo:?];
      }

      v38[1] = v19;
      v38[2] = &unk_2876ED920;
      v37[2] = @"Line";
      v37[3] = @"Method";
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v38[3] = v21;
      v37[4] = *MEMORY[0x277CCA068];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 116];
      v38[4] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
      v24 = [v16 errorWithDomain:v17 code:10 userInfo:v23];

      if (!v13)
      {
      }

      v13 = v24;
    }

    v25 = v13;
    v10 = v25;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler startTransactionWithAuthorization:options:]", 109, self, @"NF session does not exist!", v8, v9, v33);
    v26 = MEMORY[0x277CCA9B8];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v39[0] = *MEMORY[0x277CCA450];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v40[0] = v28;
    v40[1] = &unk_2876ED908;
    v39[1] = @"Line";
    v39[2] = @"Method";
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v40[2] = v29;
    v39[3] = *MEMORY[0x277CCA068];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 110];
    v40[3] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v25 = [v26 errorWithDomain:v27 code:9 userInfo:v31];
  }

  return v25;
}

- (id)stopTransaction
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = DigitalCarKeyHandler;
  stopTransaction = [(STSTransactionHandler *)&v19 stopTransaction];
  if (self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[DigitalCarKeyHandler stopTransaction]", 130, self, &stru_2876E3E50, v4, v5, v17);
    nfSession = self->_nfSession;
    v18 = stopTransaction;
    [(NFDigitalCarKeySession *)nfSession stopCardEmulation:&v18];
    v8 = v18;

    v9 = v8;
    stopTransaction = v9;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler stopTransaction]", 126, self, @"NF session does not exist!", v4, v5, v17);
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v20[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v21[0] = v12;
    v21[1] = &unk_2876ED938;
    v20[1] = @"Line";
    v20[2] = @"Method";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v21[2] = v13;
    v20[3] = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 127];
    v21[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v9 = [v10 errorWithDomain:v11 code:9 userInfo:v15];
  }

  return v9;
}

- (void)session:(id)session event:(id)event
{
  eventCopy = event;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:event:]", 209, self, @"%@", v5, v6, eventCopy);
  v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D2C828]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler session:event:]", 213, self, @"Received invalid key=%@ for payload=%@", v8, v9, v7);
    goto LABEL_13;
  }

  parent = [(STSTransactionHandler *)self parent];
  if (parent)
  {
    v13 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D2C818]];
    v14 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D2C820]];
    if ([v7 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.unlock"])
    {
      v15 = [STSExpressEventInfoWithIdentifiers alloc];
      v16 = 10;
    }

    else
    {
      if (![v7 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.lock"])
      {
        [parent fireDigitalCarKeyEventPayload:eventCopy];
        goto LABEL_11;
      }

      v15 = [STSExpressEventInfoWithIdentifiers alloc];
      v16 = 9;
    }

    v17 = [(STSExpressEventInfoWithIdentifiers *)v15 initWithState:v16 appletIdentifier:v13 keyIdentifier:v14];
    [parent fireExpressModeStateChangeWithInfo:v17];

LABEL_11:
    goto LABEL_12;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:event:]", 219, self, @"Parent session is no longer available", v10, v11, v18);
LABEL_12:

LABEL_13:
}

- (void)session:(id)session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:didEnterFieldWithNotification:]", 244, self, @"%@", v6, v7, notificationCopy);
  v9 = sub_265399348(notificationCopy);

  parent = [(STSTransactionHandler *)self parent];
  [parent fireFieldNotificationEvent:v9];
}

- (void)sessionDidExitField:(id)field
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler sessionDidExitField:]", 250, self, @"Field Off", v3, v4, v6);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireFieldDetectEvent:0];
}

- (void)session:(id)session didExpireTransactionForApplet:(id)applet
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:didExpireTransactionForApplet:]", 255, self, @"EXPIRED: %@", v4, v5, applet);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidExpireTransaction:1];
}

- (void)session:(id)session didStartTransaction:(id)transaction
{
  transactionCopy = transaction;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:didStartTransaction:]", 260, self, @"START: %@", v6, v7, transactionCopy);
  v8 = [STSTransactionStartEvent alloc];
  activeSTSCredential = [(STSHandler *)self activeSTSCredential];
  v11 = [(STSTransactionStartEvent *)v8 initWithCredential:activeSTSCredential andDigitalCarKeyStartEvent:transactionCopy];

  parent = [(STSTransactionHandler *)self parent];
  [parent fireTransactionStartEvent:v11];
}

- (void)session:(id)session didEndTransaction:(id)transaction
{
  transactionCopy = transaction;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:didEndTransaction:]", 267, self, @"END: %@", v6, v7, transactionCopy);
  v8 = [STSTransactionEndEvent alloc];
  activeSTSCredential = [(STSHandler *)self activeSTSCredential];
  v11 = [(STSTransactionEndEvent *)v8 initWithCredential:activeSTSCredential andDigitalCarKeyEndEvent:transactionCopy];

  parent = [(STSTransactionHandler *)self parent];
  [parent fireTransactionEndEvent:v11];
}

- (void)sessionDidFailDeferredAuthorization:(id)authorization
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler sessionDidFailDeferredAuthorization:]", 274, self, @"Failed deferred authorization", v3, v4, v6);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidFailDeferredAuth:1];
}

- (void)session:(id)session didExpressModeStateChange:(unsigned int)change withObject:(id)object
{
  v5 = *&change;
  objectCopy = object;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:didExpressModeStateChange:withObject:]", 281, self, @"%d - %@", v7, v8, v5);
  v11 = [[STSExpressEventInfoWithDetail alloc] initWithState:sub_265399324(v5) detail:objectCopy];

  parent = [(STSTransactionHandler *)self parent];
  [parent fireExpressModeStateChangeWithInfo:v11];
}

- (void)sessionDidReceiveActivityTimeout:(id)timeout result:(id)result
{
  resultCopy = result;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler sessionDidReceiveActivityTimeout:result:]", 288, self, @"Activity Timeout : %@", v6, v7, resultCopy);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidReceiveActivityTimeout:resultCopy];
}

- (void)session:(id)session didReceivePassthroughMessage:(id)message
{
  messageCopy = message;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler session:didReceivePassthroughMessage:]", 295, self, @"Received passhtrough message", v6, v7, v8);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidReceivePassthroughMessage:messageCopy];
}

@end