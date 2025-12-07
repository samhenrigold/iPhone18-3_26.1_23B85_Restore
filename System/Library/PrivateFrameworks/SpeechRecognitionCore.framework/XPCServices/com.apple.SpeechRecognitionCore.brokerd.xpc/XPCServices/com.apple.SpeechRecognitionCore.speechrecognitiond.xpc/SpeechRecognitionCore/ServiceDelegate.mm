@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100051D0C(connectionCopy);

  return v9 & 1;
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond15ServiceDelegate)init
{
  sub_10005F190();

  sub_1000C96B4();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ServiceDelegate(0);
  return [(ServiceDelegate *)&v4 init];
}

@end