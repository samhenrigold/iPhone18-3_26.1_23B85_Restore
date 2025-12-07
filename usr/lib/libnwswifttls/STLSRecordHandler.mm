@interface STLSRecordHandler
- (BOOL)alertSentOrReceived;
- (BOOL)getEPSKOffered;
- (BOOL)getNegotiatedEPSK;
- (BOOL)getPAKEOffered;
- (BOOL)isHandshakeComplete;
- (_TtC10nwswifttls17STLSRecordHandler)init;
- (id)getNegotiatedGroup;
- (id)getOutput;
- (id)init:(id)init alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier logStr:(id)str;
- (id)init:(id)init alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakeClientPasswordVerifier:(id)self0 logStr:(id)self1;
- (id)init:(id)init serverKey:(__SecKey *)key alpn:(id)alpn EPSKs:(id)ks epskSelectionBlock:(id)block rawEPSKsEnabled:(BOOL)enabled enableEarlyData:(BOOL)data logStr:(id)self0;
- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group enableEarlyData:(BOOL)data logStr:(id)self0;
- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group externalPreSharedKey:(id)key rawEPSKsEnabled:(BOOL)self0 enableEarlyData:(BOOL)self1 logStr:(id)self2;
- (int)getErrorCode;
- (int64_t)getAvailableApplicationDataLength;
- (int64_t)getNegotiatedCiphersuite;
- (int64_t)getNegotiatedPAKE;
- (unsigned)getBytesToReadCount;
- (unsigned)getOutgoingBytesCount;
- (void)sendCloseNotify;
- (void)startHandshake;
@end

@implementation STLSRecordHandler

- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group externalPreSharedKey:(id)key rawEPSKsEnabled:(BOOL)self0 enableEarlyData:(BOOL)self1 logStr:(id)self2
{
  groupCopy = group;
  ObjectType = swift_getObjectType();
  if (request)
  {
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v28 = 0;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi0_(v30);
  v32[4] = v30[4];
  v32[5] = v30[5];
  v33[0] = v31[0];
  *(v33 + 9) = *(v31 + 9);
  v32[0] = v30[0];
  v32[1] = v30[1];
  v32[2] = v30[2];
  v32[3] = v30[3];
  objc_allocWithZone(ObjectType);
  strCopy = str;
  initCopy = init;
  nameCopy = name;
  alpnCopy = alpn;
  stateCopy = state;
  keyCopy = key;
  alpnCopy2 = alpn;
  v23 = keyCopy;
  v24 = specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(init, name, alpnCopy2, state, v28, groupCopy, key, enabled, data, v32, strCopy);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v24;
}

- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group enableEarlyData:(BOOL)data logStr:(id)self0
{
  groupCopy = group;
  ObjectType = swift_getObjectType();
  if (request)
  {
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v24 = 0;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi0_(v27);
  v29[4] = v27[4];
  v29[5] = v27[5];
  v30[0] = v28[0];
  *(v30 + 9) = *(v28 + 9);
  v29[0] = v27[0];
  v29[1] = v27[1];
  v29[2] = v27[2];
  v29[3] = v27[3];
  objc_allocWithZone(ObjectType);
  strCopy = str;
  initCopy = init;
  nameCopy = name;
  alpnCopy = alpn;
  stateCopy = state;
  stateCopy2 = state;
  v21 = stateCopy;
  v22 = specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(init, name, alpn, stateCopy2, v24, groupCopy, 0, 0, data, v29, strCopy);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v22;
}

- (id)init:(id)init alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakeClientPasswordVerifier:(id)self0 logStr:(id)self1
{
  if (request)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  initCopy = init;
  alpnCopy = alpn;
  stateCopy = state;
  return STLSRecordHandler.init(_:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:logStr:)(init, alpn, state, v16, context, identity, serverIdentity, verifier, str);
}

- (id)init:(id)init alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier logStr:(id)str
{
  initCopy = init;
  alpnCopy = alpn;
  return STLSRecordHandler.init(_:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:logStr:)(init, alpn, context, identity, serverIdentity, verifier, str);
}

- (id)init:(id)init serverKey:(__SecKey *)key alpn:(id)alpn EPSKs:(id)ks epskSelectionBlock:(id)block rawEPSKsEnabled:(BOOL)enabled enableEarlyData:(BOOL)data logStr:(id)self0
{
  enabledCopy = enabled;
  ObjectType = swift_getObjectType();
  v16 = _Block_copy(block);
  v17 = v16;
  if (!ks)
  {
    v28 = 0;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSExternalPreSharedKey, off_1E7B2E030);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v17 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned @escaping @callee_unowned @convention(block) (@unowned SecExternalPreSharedKey?) -> ()) -> ();
LABEL_6:
  v19 = objc_allocWithZone(ObjectType);
  strCopy = str;
  initCopy = init;
  keyCopy = key;
  alpnCopy = alpn;
  alpnCopy2 = alpn;
  v25 = alpnCopy;
  v26 = specialized STLSRecordHandler.init(_:serverKey:alpn:EPSKs:epskSelectionBlock:rawEPSKsEnabled:pakeServerConfiguration:enableEarlyData:logStr:)(init, key, alpnCopy2, v28, v17, v18, enabledCopy, 0, 0, strCopy);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v17, v18);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v26;
}

- (void)startHandshake
{
  selfCopy = self;
  STLSRecordHandler.startHandshake()();
}

- (BOOL)alertSentOrReceived
{
  selfCopy = self;
  v3 = STLSRecordHandler.alertSentOrReceived()();

  return v3;
}

- (void)sendCloseNotify
{
  selfCopy = self;
  STLSRecordHandler.sendCloseNotify()();
}

- (unsigned)getBytesToReadCount
{
  selfCopy = self;
  v3 = STLSRecordHandler.getBytesToReadCount()();

  return v3;
}

- (BOOL)isHandshakeComplete
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TLSRecordHandler(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(self + v10, v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v5, v9, type metadata accessor for TLSRecordHandler);
    v11 = TLSRecordHandler.handshakeComplete.getter();
    outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
  }

  return v11;
}

- (int64_t)getAvailableApplicationDataLength
{
  selfCopy = self;
  v3 = STLSRecordHandler.getAvailableApplicationDataLength()();

  return v3;
}

- (id)getOutput
{
  selfCopy = self;
  STLSRecordHandler.getOutput()();
  v4 = v3;
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of ByteBuffer?(v4, v6);
    v7 = isa;
  }

  return v7;
}

- (unsigned)getOutgoingBytesCount
{
  selfCopy = self;
  v3 = STLSRecordHandler.getOutgoingBytesCount()();

  return v3;
}

- (int64_t)getNegotiatedCiphersuite
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TLSRecordHandler(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(self + v10, v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v5, v9, type metadata accessor for TLSRecordHandler);
    v12 = TLSRecordHandler.getNegotiatedCiphersuite.getter();
    outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
    return v12;
  }
}

- (int64_t)getNegotiatedPAKE
{
  selfCopy = self;
  v3 = STLSRecordHandler.getNegotiatedPAKE()();

  return v3;
}

- (BOOL)getNegotiatedEPSK
{
  v3 = type metadata accessor for TLSRecordHandler(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  if ((*(v4 + 48))(self + v7, 1, v3))
  {
    v8 = 0;
  }

  else
  {
    outlined init with copy of TLSRecordHandler(self + v7, v6, type metadata accessor for TLSRecordHandler);
    v8 = TLSRecordHandler.getNegotiatedEPSK.getter();
    outlined destroy of TLSRecordHandler(v6, type metadata accessor for TLSRecordHandler);
  }

  return v8 & 1;
}

- (BOOL)getEPSKOffered
{
  selfCopy = self;
  v3 = STLSRecordHandler.getEPSKOffered()(HandshakeStateMachine.epskOffered.getter, ServerHandshakeStateMachine.epskOffered.getter);

  return v3 & 1;
}

- (BOOL)getPAKEOffered
{
  selfCopy = self;
  v3 = STLSRecordHandler.getEPSKOffered()(HandshakeStateMachine.pakeOffered.getter, ServerHandshakeStateMachine.pakeOffered.getter);

  return v3 & 1;
}

- (int)getErrorCode
{
  selfCopy = self;
  v3 = STLSRecordHandler.getErrorCode()();

  return v3;
}

- (id)getNegotiatedGroup
{
  selfCopy = self;
  v3 = STLSRecordHandler.getNegotiatedGroup()();

  v4 = MEMORY[0x1B274D5C0](v3._countAndFlagsBits, v3._object);

  return v4;
}

- (_TtC10nwswifttls17STLSRecordHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end