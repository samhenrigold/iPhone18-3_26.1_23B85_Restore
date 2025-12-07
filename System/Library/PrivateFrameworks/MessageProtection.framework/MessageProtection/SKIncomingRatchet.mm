@interface SKIncomingRatchet
- (_TtC17MessageProtection17SKIncomingRatchet)init;
- (_TtC17MessageProtection17SKIncomingRatchet)initWithKey:(id)key index:(unsigned __int16)index signingKey:(id)signingKey error:(id *)error;
- (id)openStatusWithIndex:(unint64_t)index encryptedMessage:(id)message authenticating:(id)authenticating signature:(id)signature error:(id *)error;
@end

@implementation SKIncomingRatchet

- (_TtC17MessageProtection17SKIncomingRatchet)initWithKey:(id)key index:(unsigned __int16)index signingKey:(id)signingKey error:(id *)error
{
  indexCopy = index;
  keyCopy = key;
  signingKeyCopy = signingKey;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  return SKIncomingRatchet.init(key:index:signingKey:)(v10, v12, indexCopy, v13, v15);
}

- (id)openStatusWithIndex:(unint64_t)index encryptedMessage:(id)message authenticating:(id)authenticating signature:(id)signature error:(id *)error
{
  messageCopy = message;
  authenticatingCopy = authenticating;
  signatureCopy = signature;
  selfCopy = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  SKIncomingRatchet.openStatus(index:encryptedMessage:authenticating:signature:)(index, v15, v17, v18, v20, v21, v23);
  v25 = v24;
  v27 = v26;

  outlined consume of Data._Representation(v21, v23);
  outlined consume of Data._Representation(v18, v20);
  outlined consume of Data._Representation(v15, v17);
  v28.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v25, v27);

  return v28.super.isa;
}

- (_TtC17MessageProtection17SKIncomingRatchet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end