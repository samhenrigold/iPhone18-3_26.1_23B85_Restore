@interface SignPeerPaymentHandler
- (STSSigningSession)parent;
- (SignPeerPaymentHandler)initWithParent:(id)parent;
- (id)signPeerPayment:(id)payment authorization:(id)authorization error:(id *)error;
- (id)startNFSessionWithCompletion:(id)completion;
@end

@implementation SignPeerPaymentHandler

- (SignPeerPaymentHandler)initWithParent:(id)parent
{
  parentCopy = parent;
  v8.receiver = self;
  v8.super_class = SignPeerPaymentHandler;
  v5 = [(SignPeerPaymentHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
  }

  return v6;
}

- (id)startNFSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  nfHardwareManager = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26537D43C;
  v9[3] = &unk_279B93BE0;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [nfHardwareManager startPeerPaymentSession:v9];

  return v7;
}

- (id)signPeerPayment:(id)payment authorization:(id)authorization error:(id *)error
{
  v60[4] = *MEMORY[0x277D85DE8];
  paymentCopy = payment;
  authorizationCopy = authorization;
  activeSTSCredential = [(STSHandler *)self activeSTSCredential];

  if (!activeSTSCredential)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 57, self, @"Credential does not exist!", v12, v13, v49);
    if (!error)
    {
      goto LABEL_19;
    }

    v34 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v59[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v60[0] = v22;
    v60[1] = &unk_2876ED0C8;
    v59[1] = @"Line";
    v59[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v60[2] = v24;
    v59[3] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 59];
    v60[3] = v35;
    v36 = MEMORY[0x277CBEAC0];
    v37 = v60;
    v38 = v59;
LABEL_15:
    v44 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:4];
    v45 = v34;
    v46 = v28;
    v47 = 9;
LABEL_16:
    *error = [v45 errorWithDomain:v46 code:v47 userInfo:v44];

    goto LABEL_17;
  }

  activeSTSCredential2 = [(STSHandler *)self activeSTSCredential];
  identifier = [activeSTSCredential2 identifier];
  v16 = [identifier isEqualToString:0x2876E5030];

  if ((v16 & 1) == 0)
  {
    activeSTSCredential3 = [(STSHandler *)self activeSTSCredential];
    identifier2 = [activeSTSCredential3 identifier];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 65, self, @"AID is not supported by Peer Payment handler - %@", v41, v42, identifier2);

    if (!error)
    {
      goto LABEL_19;
    }

    v43 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v57[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v58[0] = v22;
    v58[1] = &unk_2876ED0E0;
    v57[1] = @"Line";
    v57[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v58[2] = v24;
    v57[3] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 67];
    v58[3] = v35;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
    v45 = v43;
    v46 = v28;
    v47 = 8;
    goto LABEL_16;
  }

  if (!self->_nfPeerPaymentSession)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 74, self, @"NF session does not exist!", v17, v18, v49);
    if (!error)
    {
      goto LABEL_19;
    }

    v34 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v55[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v56[0] = v22;
    v56[1] = &unk_2876ED0F8;
    v55[1] = @"Line";
    v55[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v56[2] = v24;
    v55[3] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 76];
    v56[3] = v35;
    v36 = MEMORY[0x277CBEAC0];
    v37 = v56;
    v38 = v55;
    goto LABEL_15;
  }

  v19 = "is";
  if (!authorizationCopy)
  {
    v19 = "is not";
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 81, self, @"Authorization %s available", v17, v18, v19);
  activeSTSCredential4 = [(STSHandler *)self activeSTSCredential];
  identifier3 = [activeSTSCredential4 identifier];
  v22 = [paymentCopy toNFPeerPaymentRequest:identifier3];

  nfPeerPaymentSession = self->_nfPeerPaymentSession;
  v52 = 0;
  v24 = [(NFPeerPaymentSession *)nfPeerPaymentSession performPeerPayment:authorizationCopy request:v22 error:&v52];
  v25 = v52;
  v28 = v25;
  if (!v25)
  {
    error = [[STSPeerPaymentResponse alloc] initFromNFPeerPaymentResponse:v24];
    goto LABEL_18;
  }

  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 89, self, @"start transaction failed = %@", v26, v27, v25);
  if (error)
  {
    v29 = MEMORY[0x277CCA9B8];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v53[0] = *MEMORY[0x277CCA450];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v30 = *MEMORY[0x277CCA7E8];
    v54[0] = v51;
    v54[1] = v28;
    v53[1] = v30;
    v53[2] = @"Line";
    v54[2] = &unk_2876ED110;
    v53[3] = @"Method";
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v54[3] = v31;
    v53[4] = *MEMORY[0x277CCA068];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 91];
    v54[4] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
    *error = [v29 errorWithDomain:v50 code:10 userInfo:v33];

LABEL_17:
    error = 0;
  }

LABEL_18:

LABEL_19:

  return error;
}

- (STSSigningSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end