@interface NGMMessageFormatter
+ (id)formatOutgoingInnerMessageWithPayload:(id)payload attributes:(id)attributes destinationIdentity:(id)identity sendingIdentity:(id)sendingIdentity error:(id *)error;
+ (id)formatOutgoingMessageWithEncryptedPayload:(id)payload ephemeral:(id)ephemeral signature:(id)signature keyValidator:(id)validator;
@end

@implementation NGMMessageFormatter

+ (id)formatOutgoingMessageWithEncryptedPayload:(id)payload ephemeral:(id)ephemeral signature:(id)signature keyValidator:(id)validator
{
  validatorCopy = validator;
  signatureCopy = signature;
  ephemeralCopy = ephemeral;
  payloadCopy = payload;
  v13 = objc_alloc_init(NGMPBOuterMessage);
  [(NGMPBOuterMessage *)v13 setEncryptedPayload:payloadCopy];

  dataRepresentation = [ephemeralCopy dataRepresentation];

  [(NGMPBOuterMessage *)v13 setEphemeralPubKey:dataRepresentation];
  [(NGMPBOuterMessage *)v13 setSignature:signatureCopy];

  [(NGMPBOuterMessage *)v13 setKeyValidator:validatorCopy];
  data = [(NGMPBOuterMessage *)v13 data];

  return data;
}

+ (id)formatOutgoingInnerMessageWithPayload:(id)payload attributes:(id)attributes destinationIdentity:(id)identity sendingIdentity:(id)sendingIdentity error:(id *)error
{
  payloadCopy = payload;
  attributesCopy = attributes;
  v24 = 0;
  sendingIdentityCopy = sendingIdentity;
  identityCopy = identity;
  v15 = objc_alloc_init(NGMPBInnerMessage);
  v16 = +[NGMReplayManager sharedManager];
  v17 = [v16 counterForDestinationWithIdentityKey:identityCopy sendingIdentity:sendingIdentityCopy error:error success:&v24];

  [(NGMPBInnerMessage *)v15 setCounter:v17];
  if (attributesCopy)
  {
    v19 = [attributesCopy objectForKeyedSubscript:NGMEncryptedAttributeKTGossipData];

    if (v19)
    {
      v20 = [attributesCopy objectForKeyedSubscript:NGMEncryptedAttributeKTGossipData];
      [(NGMPBInnerMessage *)v15 setKtGossipData:v20];
    }
  }

  if (v24)
  {
    [(NGMPBInnerMessage *)v15 setMessage:payloadCopy];
    data = [(NGMPBInnerMessage *)v15 data];
  }

  else
  {
    if (*error)
    {
      v22 = MessageProtectionLog(v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NGMMessageFormatter formatOutgoingInnerMessageWithPayload:error attributes:v22 destinationIdentity:? sendingIdentity:? error:?];
      }
    }

    else
    {
      MPLogAndAssignError(6, error, @"Error while obtaining counter");
    }

    data = 0;
  }

  return data;
}

+ (void)formatOutgoingInnerMessageWithPayload:(id *)a1 attributes:(NSObject *)a2 destinationIdentity:sendingIdentity:error:.cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Error while obtaining counter %@", &v4, 0xCu);
}

@end