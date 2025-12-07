@interface MPStatusKitIncomingRatchet
- (MPStatusKitIncomingRatchet)initWithData:(id)data error:(id *)error;
- (MPStatusKitIncomingRatchet)initWithIndex:(unsigned __int16)index chainKey:(id)key signingKey:(id)signingKey error:(id *)error;
- (id)serializedData;
- (id)signingKeyIdentifier;
- (id)unsealStatusWithIndex:(unsigned __int16)index encryptedMessage:(id)message authenticating:(id)authenticating signature:(id)signature error:(id *)error;
@end

@implementation MPStatusKitIncomingRatchet

- (MPStatusKitIncomingRatchet)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MPStatusKitIncomingRatchet;
  v7 = [(MPStatusKitIncomingRatchet *)&v11 init];
  if (!v7 || (v8 = [[_TtC17MessageProtection17SKIncomingRatchet alloc] initWithData:dataCopy error:error], [(MPStatusKitIncomingRatchet *)v7 setRatchet:v8], v8, [(MPStatusKitIncomingRatchet *)v7 ratchet], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v9 = v7;
  }

  return v9;
}

- (MPStatusKitIncomingRatchet)initWithIndex:(unsigned __int16)index chainKey:(id)key signingKey:(id)signingKey error:(id *)error
{
  indexCopy = index;
  keyCopy = key;
  signingKeyCopy = signingKey;
  v16.receiver = self;
  v16.super_class = MPStatusKitIncomingRatchet;
  v12 = [(MPStatusKitIncomingRatchet *)&v16 init];
  if (!v12 || (v13 = [[_TtC17MessageProtection17SKIncomingRatchet alloc] initWithKey:keyCopy index:indexCopy signingKey:signingKeyCopy error:error], [(MPStatusKitIncomingRatchet *)v12 setRatchet:v13], v13, [(MPStatusKitIncomingRatchet *)v12 ratchet], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v14 = v12;
  }

  return v14;
}

- (id)unsealStatusWithIndex:(unsigned __int16)index encryptedMessage:(id)message authenticating:(id)authenticating signature:(id)signature error:(id *)error
{
  indexCopy = index;
  signatureCopy = signature;
  authenticatingCopy = authenticating;
  messageCopy = message;
  ratchet = [(MPStatusKitIncomingRatchet *)self ratchet];
  v16 = [ratchet openStatusWithIndex:indexCopy encryptedMessage:messageCopy authenticating:authenticatingCopy signature:signatureCopy error:error];

  return v16;
}

- (id)serializedData
{
  ratchet = [(MPStatusKitIncomingRatchet *)self ratchet];
  serializedData = [ratchet serializedData];

  return serializedData;
}

- (id)signingKeyIdentifier
{
  ratchet = [(MPStatusKitIncomingRatchet *)self ratchet];
  signingKeyIdentifier = [ratchet signingKeyIdentifier];

  return signingKeyIdentifier;
}

@end