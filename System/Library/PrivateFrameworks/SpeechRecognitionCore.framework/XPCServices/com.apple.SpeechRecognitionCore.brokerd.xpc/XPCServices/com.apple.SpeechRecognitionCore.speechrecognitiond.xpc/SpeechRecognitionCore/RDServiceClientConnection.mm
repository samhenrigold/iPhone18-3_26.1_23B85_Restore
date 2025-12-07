@interface RDServiceClientConnection
- (SRDInternalClientProtocol)proxy;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)initWithConnection:(id)connection;
@end

@implementation RDServiceClientConnection

- (SRDInternalClientProtocol)proxy
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_10005EBE0(connectionCopy, v4);

  return v5;
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end