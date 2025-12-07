@interface MDMHTTPTransaction
+ (id)reauthRequiredMAIDError;
+ (id)reauthRequiredThirdPartyError;
+ (id)unauthorizedByServerError;
- (MDMHTTPTransaction)initWithURL:(id)l data:(id)data identity:(__SecIdentity *)identity pinnedCertificates:(id)certificates pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isCheckin:(BOOL)checkin isCheckout:(BOOL)self0 isShortTransaction:(BOOL)self1 rmAccountID:(id)self2;
- (MDMHTTPTransaction)initWithURL:(id)l downloadURL:(id)rL identity:(__SecIdentity *)identity pinnedCertificates:(id)certificates pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isShortTransaction:(BOOL)transaction rmAccountID:(id)self0;
- (MDMHTTPTransaction)initWithURL:(id)l identity:(__SecIdentity *)identity pinnedCertificates:(id)certificates pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isShortTransaction:(BOOL)transaction rmAccountID:(id)d;
- (void)_commonInit:(__SecIdentity *)init timeout:(unint64_t)timeout pinnedSecCertificateRefs:(id)refs pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message rmAccountID:(id)d;
- (void)_updateAuthentication;
- (void)resetAuthentication;
@end

@implementation MDMHTTPTransaction

- (MDMHTTPTransaction)initWithURL:(id)l data:(id)data identity:(__SecIdentity *)identity pinnedCertificates:(id)certificates pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isCheckin:(BOOL)checkin isCheckout:(BOOL)self0 isShortTransaction:(BOOL)self1 rmAccountID:(id)self2
{
  messageCopy = message;
  requiredCopy = required;
  dataCopy = data;
  certificatesCopy = certificates;
  dCopy = d;
  v21 = *MEMORY[0x277D033A8];
  v27.receiver = self;
  v27.super_class = MDMHTTPTransaction;
  v22 = [(DMCHTTPTransaction *)&v27 initWithURL:l method:v21];
  v23 = v22;
  if (v22)
  {
    if (transaction)
    {
      v24 = 30;
    }

    else
    {
      v24 = 60;
    }

    [(MDMHTTPTransaction *)v22 _commonInit:identity timeout:v24 pinnedSecCertificateRefs:certificatesCopy pinningRevocationCheckRequired:requiredCopy signMessage:messageCopy rmAccountID:dCopy];
    v23->_isCheckIn = checkin;
    v23->_isCheckout = checkout;
    if (checkout)
    {
      [(DMCHTTPTransaction *)v23 setIgnoreAuthenticatorError:1];
    }

    v25 = &kMDMContentTypeCheckin;
    if (!checkin && !checkout)
    {
      v25 = &kMDMContentTypeMDM;
    }

    [(DMCHTTPTransaction *)v23 setContentType:*v25];
    [(DMCHTTPTransaction *)v23 setData:dataCopy];
  }

  return v23;
}

- (MDMHTTPTransaction)initWithURL:(id)l identity:(__SecIdentity *)identity pinnedCertificates:(id)certificates pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isShortTransaction:(BOOL)transaction rmAccountID:(id)d
{
  transactionCopy = transaction;
  messageCopy = message;
  requiredCopy = required;
  certificatesCopy = certificates;
  dCopy = d;
  v17 = *MEMORY[0x277D03398];
  v22.receiver = self;
  v22.super_class = MDMHTTPTransaction;
  v18 = [(DMCHTTPTransaction *)&v22 initWithURL:l method:v17];
  v19 = v18;
  if (v18)
  {
    if (transactionCopy)
    {
      v20 = 60;
    }

    else
    {
      v20 = 120;
    }

    [(MDMHTTPTransaction *)v18 _commonInit:identity timeout:v20 pinnedSecCertificateRefs:certificatesCopy pinningRevocationCheckRequired:requiredCopy signMessage:messageCopy rmAccountID:dCopy];
  }

  return v19;
}

- (MDMHTTPTransaction)initWithURL:(id)l downloadURL:(id)rL identity:(__SecIdentity *)identity pinnedCertificates:(id)certificates pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isShortTransaction:(BOOL)transaction rmAccountID:(id)self0
{
  messageCopy = message;
  requiredCopy = required;
  certificatesCopy = certificates;
  dCopy = d;
  v18 = *MEMORY[0x277D03398];
  v23.receiver = self;
  v23.super_class = MDMHTTPTransaction;
  v19 = [(DMCHTTPTransaction *)&v23 initWithURL:l method:v18 downloadURL:rL];
  v20 = v19;
  if (v19)
  {
    if (transaction)
    {
      v21 = 60;
    }

    else
    {
      v21 = 120;
    }

    [(MDMHTTPTransaction *)v19 _commonInit:identity timeout:v21 pinnedSecCertificateRefs:certificatesCopy pinningRevocationCheckRequired:requiredCopy signMessage:messageCopy rmAccountID:dCopy];
  }

  return v20;
}

- (void)_commonInit:(__SecIdentity *)init timeout:(unint64_t)timeout pinnedSecCertificateRefs:(id)refs pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message rmAccountID:(id)d
{
  messageCopy = message;
  requiredCopy = required;
  timeoutCopy = timeout;
  dCopy = d;
  refsCopy = refs;
  [(DMCHTTPTransaction *)self setTimeout:timeoutCopy];
  [(DMCHTTPTransaction *)self setUserAgent:@"MDM/1.0"];
  [(DMCHTTPTransaction *)self setIdentity:init];
  [(DMCHTTPTransaction *)self setPinnedSecCertificateRefs:refsCopy];

  [(DMCHTTPTransaction *)self setPinningRevocationCheckRequired:requiredCopy];
  [(MDMHTTPTransaction *)self setRmAccountID:dCopy];

  [(MDMHTTPTransaction *)self _updateAuthentication];
  if (messageCopy)
  {

    [(DMCHTTPTransaction *)self setCMSSignatureHeaderName:@"Mdm-Signature"];
  }
}

- (void)resetAuthentication
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E997000, v3, OS_LOG_TYPE_DEBUG, "Reset authentication in MDMHTTPTransaction", v4, 2u);
  }

  [(MDMHTTPTransaction *)self _updateAuthentication];
}

- (void)_updateAuthentication
{
  v12 = *MEMORY[0x277D85DE8];
  rmAccountID = [(MDMHTTPTransaction *)self rmAccountID];

  v4 = *(DMCLogObjects() + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (rmAccountID)
  {
    if (v5)
    {
      v6 = v4;
      rmAccountID2 = [(MDMHTTPTransaction *)self rmAccountID];
      v10 = 138543362;
      v11 = rmAccountID2;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_DEBUG, "RMAccount ID provided to MDMHTTPTransaction: %{public}@", &v10, 0xCu);
    }

    rmAccountID3 = [(MDMHTTPTransaction *)self rmAccountID];
    v9 = [MDMAccountUtilities authenticatorForRMAccountID:rmAccountID3];
    [(DMCHTTPTransaction *)self setAuthenticator:v9];
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_DEBUG, "No RMAccount ID provided to MDMHTTPTransaction", &v10, 2u);
  }
}

+ (id)unauthorizedByServerError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12020 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)reauthRequiredMAIDError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12095 descriptionArray:v4 errorType:{*MEMORY[0x277D03308], 0}];

  return v5;
}

+ (id)reauthRequiredThirdPartyError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12096 descriptionArray:v4 errorType:{*MEMORY[0x277D03308], 0}];

  return v5;
}

@end