@interface STLSServerHandshaker
- (BOOL)getEarlyDataAccepted;
- (_TtC10nwswifttls20STLSServerHandshaker)init;
- (id)continueHandshake:(id)handshake;
- (id)getEncryptionSecretWithWrite:(BOOL)write;
- (id)getNegotiatedGroup;
- (id)getPeerQUICTransportParameters;
- (id)init:(id)init quicTransportParameters:(id)parameters alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier;
- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn;
- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn EPSKs:(id)ks rawEPSKsEnabled:(BOOL)enabled epskSelectionBlock:(id)block enableEarlyData:(BOOL)self0;
- (int)getErrorCode;
- (int64_t)getEncryptionLevelWithWrite:(BOOL)write;
@end

@implementation STLSServerHandshaker

- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn EPSKs:(id)ks rawEPSKsEnabled:(BOOL)enabled epskSelectionBlock:(id)block enableEarlyData:(BOOL)self0
{
  enabledCopy = enabled;
  ObjectType = swift_getObjectType();
  v16 = _Block_copy(block);
  if (ks)
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSExternalPreSharedKey, off_1E7B2E030);
    ks = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned @escaping @callee_unowned @convention(block) (@unowned SecExternalPreSharedKey?) -> ()) -> ();
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(ObjectType);
  initCopy = init;
  keyCopy = key;
  parametersCopy = parameters;
  alpnCopy = alpn;
  v23 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(init, key, parameters, alpn, ks, v16, v17, enabledCopy, 0, data);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v23;
}

- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn
{
  v10 = objc_allocWithZone(swift_getObjectType());
  initCopy = init;
  keyCopy = key;
  parametersCopy = parameters;
  alpnCopy = alpn;
  v15 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(init, key, parameters, alpn, 0, 0, 0, 0, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

- (id)init:(id)init quicTransportParameters:(id)parameters alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier
{
  initCopy = init;
  parametersCopy = parameters;
  alpnCopy = alpn;
  return STLSServerHandshaker.init(_:quicTransportParameters:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:)(init, parameters, alpn, context, identity, serverIdentity, verifier);
}

- (id)continueHandshake:(id)handshake
{
  handshakeCopy = handshake;
  selfCopy = self;
  v10.value.super.isa = handshake;
  v7 = STLSServerHandshaker.continueHandshake(_:)(v10);

  return v7;
}

- (int)getErrorCode
{
  selfCopy = self;
  v3 = STLSServerHandshaker.getErrorCode()();

  return v3;
}

- (int64_t)getEncryptionLevelWithWrite:(BOOL)write
{
  selfCopy = self;
  v5 = STLSServerHandshaker.getEncryptionLevel(write:)(write);

  return v5;
}

- (id)getEncryptionSecretWithWrite:(BOOL)write
{
  selfCopy = self;
  v5 = STLSServerHandshaker.getEncryptionSecret(write:)(write);

  return v5;
}

- (id)getPeerQUICTransportParameters
{
  selfCopy = self;
  v3 = STLSServerHandshaker.getPeerQUICTransportParameters()();

  return v3;
}

- (id)getNegotiatedGroup
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(self + v6, v5, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v7 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    v10 = ServerHandshakeStateMachine.negotiatedGroup.getter();
    v12 = v11;
    outlined destroy of ServerHandshakeStateMachine(v5, type metadata accessor for ServerHandshakeStateMachine);

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = MEMORY[0x1B274D5C0](v13, v14);

    return v15;
  }

  return result;
}

- (BOOL)getEarlyDataAccepted
{
  v3 = type metadata accessor for ServerHandshakeStateMachine(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v4 + 48))(self + v7, 1, v3))
  {
    v8 = 0;
  }

  else
  {
    outlined init with copy of ServerHandshakeStateMachine(self + v7, v6, type metadata accessor for ServerHandshakeStateMachine);
    v8 = ServerHandshakeStateMachine.earlyDataAccepted.getter();
    outlined destroy of ServerHandshakeStateMachine(v6, type metadata accessor for ServerHandshakeStateMachine);
  }

  return v8 & 1;
}

- (_TtC10nwswifttls20STLSServerHandshaker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end