@interface STLSClientHandshaker
- (BOOL)getEarlyDataAccepted;
- (BOOL)hasSessionState;
- (_TtC10nwswifttls20STLSClientHandshaker)init;
- (id)continueHandshake:(id)handshake;
- (id)getClientRandom;
- (id)getEncryptionSecretWithWrite:(BOOL)write;
- (id)getNegotiatedGroup;
- (id)getPeerQUICTransportParameters;
- (id)getSessionState;
- (id)init:(id)init quicTransportParameters:(id)parameters alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)self0 pakeClientPasswordVerifier:(id)self1;
- (id)init:(id)init serverName:(id)name quicTransportParameters:(id)parameters alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group enableEarlyData:(BOOL)self0;
- (id)init:(id)init serverName:(id)name quicTransportParameters:(id)parameters alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group externalPreSharedKey:(id)self0 rawEPSKsEnabled:(BOOL)self1 enableEarlyData:(BOOL)self2;
- (id)startHandshake;
- (id)validateAuthenticatorWithAuthenticator:(id)authenticator context:(id)context keyParser:(id)parser;
- (int)getErrorCode;
- (int64_t)getEncryptionLevelWithWrite:(BOOL)write;
@end

@implementation STLSClientHandshaker

- (id)init:(id)init serverName:(id)name quicTransportParameters:(id)parameters alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group externalPreSharedKey:(id)self0 rawEPSKsEnabled:(BOOL)self1 enableEarlyData:(BOOL)self2
{
  ObjectType = swift_getObjectType();
  if (request)
  {
    request = static Array._unconditionallyBridgeFromObjectiveC(_:)();
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
  initCopy = init;
  nameCopy = name;
  parametersCopy = parameters;
  alpnCopy = alpn;
  stateCopy = state;
  keyCopy = key;
  v25 = STLSClientHandshaker.init(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:)(init, name, parameters, alpn, state, request, group, key, enabled, data, v29);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

- (int64_t)getEncryptionLevelWithWrite:(BOOL)write
{
  selfCopy = self;
  v5 = STLSClientHandshaker.getEncryptionLevel(write:)(write);

  return v5;
}

- (id)continueHandshake:(id)handshake
{
  handshakeCopy = handshake;
  selfCopy = self;
  v10.value.super.isa = handshake;
  v7 = STLSClientHandshaker.continueHandshake(_:)(v10);

  return v7;
}

- (id)startHandshake
{
  selfCopy = self;
  v3 = STLSClientHandshaker.startHandshake()();

  return v3;
}

- (id)getPeerQUICTransportParameters
{
  selfCopy = self;
  v3 = STLSClientHandshaker.getPeerQUICTransportParameters()();

  return v3;
}

- (BOOL)hasSessionState
{
  v3 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2] != 0;
}

- (BOOL)getEarlyDataAccepted
{
  v3 = type metadata accessor for HandshakeStateMachine(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v4 + 48))(self + v7, 1, v3))
  {
    v8 = 0;
  }

  else
  {
    outlined init with copy of HandshakeStateMachine(self + v7, v6, type metadata accessor for HandshakeStateMachine);
    v8 = HandshakeStateMachine.earlyDataAccepted.getter();
    outlined destroy of ExportedAuthenticator(v6, type metadata accessor for HandshakeStateMachine);
  }

  return v8 & 1;
}

- (int)getErrorCode
{
  selfCopy = self;
  v3 = STLSClientHandshaker.getErrorCode()();

  return v3;
}

- (id)getEncryptionSecretWithWrite:(BOOL)write
{
  selfCopy = self;
  v5 = STLSClientHandshaker.getEncryptionSecret(write:)(write);

  return v5;
}

- (id)getSessionState
{
  selfCopy = self;
  v3 = STLSClientHandshaker.getSessionState()();

  return v3;
}

- (id)init:(id)init serverName:(id)name quicTransportParameters:(id)parameters alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group enableEarlyData:(BOOL)self0
{
  if (request)
  {
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  initCopy = init;
  nameCopy = name;
  parametersCopy = parameters;
  alpnCopy = alpn;
  stateCopy = state;
  return STLSClientHandshaker.init(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:enableEarlyData:)(init, name, parameters, alpn, state, v15, group, data);
}

- (id)init:(id)init quicTransportParameters:(id)parameters alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)self0 pakeClientPasswordVerifier:(id)self1
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
  parametersCopy = parameters;
  alpnCopy = alpn;
  stateCopy = state;
  return STLSClientHandshaker.init(_:quicTransportParameters:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:)(init, parameters, alpn, state, v16, context, identity, serverIdentity, verifier);
}

- (id)getClientRandom
{
  selfCopy = self;
  v3 = STLSClientHandshaker.getClientRandom()();

  return v3;
}

- (id)getNegotiatedGroup
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(self + v6, v5, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v7 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    v10 = HandshakeStateMachine.negotiatedGroup.getter();
    v12 = v11;
    outlined destroy of ExportedAuthenticator(v5, type metadata accessor for HandshakeStateMachine);

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

- (id)validateAuthenticatorWithAuthenticator:(id)authenticator context:(id)context keyParser:(id)parser
{
  v8 = _Block_copy(parser);
  authenticatorCopy = authenticator;
  selfCopy = self;
  contextCopy = context;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (contextCopy)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  MEMORY[0x1EEE9AC00](v15);
  v21[2] = v8;
  specialized STLSClientHandshaker.validateAuthenticator(authenticator:context:keyParser:)(v12, v14, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSData) -> (@autoreleased NSData?), v21);
  _Block_release(v8);
  outlined consume of ByteBuffer?(v16, v18);
  outlined consume of Data._Representation(v12, v14);

  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v19.super.isa;
}

- (_TtC10nwswifttls20STLSClientHandshaker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end