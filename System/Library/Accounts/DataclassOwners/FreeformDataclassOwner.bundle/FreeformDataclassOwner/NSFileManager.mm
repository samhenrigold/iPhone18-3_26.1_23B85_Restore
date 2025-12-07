@interface NSFileManager
- (BOOL)crl_directoryExistsAt:(id)at;
@end

@implementation NSFileManager

- (BOOL)crl_directoryExistsAt:(id)at
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (URL.isFileURL.getter())
  {
    HIBYTE(v12) = 0;
    URL.path.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [(NSFileManager *)selfCopy fileExistsAtPath:v9 isDirectory:&v12 + 7];

    (*(v5 + 8))(v7, v4);
    return v10 & HIBYTE(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

@end