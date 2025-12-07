@interface CRKCertificateExchangeBroadcastHandler
- (CRKCertificateExchangeBroadcastHandler)initWithIDSPrimitives:(id)primitives appleIDProvider:(id)provider;
- (CRKCertificateExchangeBroadcastHandlerDelegate)delegate;
- (void)processMessage:(id)message senderAppleID:(id)d senderAddress:(id)address;
@end

@implementation CRKCertificateExchangeBroadcastHandler

- (CRKCertificateExchangeBroadcastHandler)initWithIDSPrimitives:(id)primitives appleIDProvider:(id)provider
{
  primitivesCopy = primitives;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CRKCertificateExchangeBroadcastHandler;
  v9 = [(CRKCertificateExchangeBroadcastHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_IDSPrimitives, primitives);
    objc_storeStrong(&v10->_appleIDProvider, provider);
  }

  return v10;
}

- (void)processMessage:(id)message senderAppleID:(id)d senderAddress:(id)address
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  addressCopy = address;
  v10 = [CRKIDSMessagePayload instanceWithDictionary:message];
  appleIDProvider = [(CRKCertificateExchangeBroadcastHandler *)self appleIDProvider];
  appleID = [appleIDProvider appleID];

  if (v10)
  {
    messageMetadata = [v10 messageMetadata];
    if ([messageMetadata messageType] != 1 || appleID == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    delegate = [(CRKCertificateExchangeBroadcastHandler *)self delegate];

    if (delegate)
    {
      messageContent = [v10 messageContent];
      messageMetadata = [CRKRequestCertificatesIDSMessage instanceWithDictionary:messageContent];

      if (messageMetadata)
      {
        v47 = addressCopy;
        v18 = _CRKLogASM(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138543874;
          v52 = v20;
          v53 = 2048;
          selfCopy3 = self;
          v55 = 2114;
          v56 = dCopy;
          _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Received certificate request from (%{public}@)", buf, 0x20u);
        }

        delegate2 = [(CRKCertificateExchangeBroadcastHandler *)self delegate];
        sourceRole = [messageMetadata sourceRole];
        destinationRole = [messageMetadata destinationRole];
        controlGroupIdentifier = [messageMetadata controlGroupIdentifier];
        destinationDeviceIdentifier = [messageMetadata destinationDeviceIdentifier];
        v26 = messageMetadata;
        v27 = destinationDeviceIdentifier;
        v48 = v26;
        requesterCertificate = [v26 requesterCertificate];
        v50 = 0;
        v29 = [delegate2 certificateExchangeHandler:self needsCertificatesForRequester:dCopy sourceRole:sourceRole destinationRole:destinationRole controlGroupIdentifier:controlGroupIdentifier destinationDeviceIdentifier:v27 requesterCertificate:requesterCertificate error:&v50];
        v30 = v50;

        if (v29)
        {
          isValidRequest = [v29 isValidRequest];
          v33 = isValidRequest;
          v34 = _CRKLogASM(isValidRequest);
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          if (v33)
          {
            if (v35)
            {
              v36 = objc_opt_class();
              v37 = NSStringFromClass(v36);
              *buf = 138543618;
              v52 = v37;
              v53 = 2048;
              selfCopy3 = self;
              _os_log_impl(&dword_243550000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Valid cert request processed. Replying with cert.", buf, 0x16u);
            }

            v38 = [CRKRequestCertificatesResponseIDSMessage alloc];
            requestIdentifier = [v48 requestIdentifier];
            certificateDataCollection = [v29 certificateDataCollection];
            v34 = [(CRKRequestCertificatesResponseIDSMessage *)v38 initWithRequestIdentifier:requestIdentifier certificateDataCollection:certificateDataCollection error:v30];

            v41 = [CRKIDSMessageCannon alloc];
            iDSPrimitives = [(CRKCertificateExchangeBroadcastHandler *)self IDSPrimitives];
            v43 = [(CRKIDSMessageCannon *)v41 initWithIDSPrimitives:iDSPrimitives];

            messageMetadata = v48;
            v44 = objc_opt_new();
            [v44 setFireAndForget:1];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke;
            v49[3] = &unk_278DC0F68;
            v49[4] = self;
            [(CRKIDSMessageCannon *)v43 sendIDSMessage:v34 destinationAddress:v47 sourceAppleID:appleID options:v44 completion:v49];

            addressCopy = v47;
          }

          else
          {
            messageMetadata = v48;
            if (v35)
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              *buf = 138543618;
              v52 = v46;
              v53 = 2048;
              selfCopy3 = self;
              _os_log_impl(&dword_243550000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Cert request is invalid. Dropping message.", buf, 0x16u);
            }

            addressCopy = v47;
          }
        }

        else
        {
          v34 = _CRKLogASM(v31);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CRKCertificateExchangeBroadcastHandler processMessage:v30 senderAppleID:? senderAddress:?];
          }

          addressCopy = v47;
          messageMetadata = v48;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_23:
}

void __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _CRKLogASM(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke_cold_1(a1, v4);
    }
  }
}

- (CRKCertificateExchangeBroadcastHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processMessage:(uint64_t)a1 senderAppleID:(void *)a2 senderAddress:.cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243550000, v6, v7, "%{public}@ - %p: Failed to acquire certificate to exchange. Error = %{public}@", v8, v9, v10, v11);
}

void __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243550000, v6, v7, "%{public}@ - %p: Failed to respond to request cert message. Error = %{public}@", v8, v9, v10, v11);
}

@end