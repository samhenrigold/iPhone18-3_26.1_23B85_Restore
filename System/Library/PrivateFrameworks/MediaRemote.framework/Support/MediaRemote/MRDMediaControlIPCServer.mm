@interface MRDMediaControlIPCServer
- (MRDMediaControlIPCServer)init;
- (void)collectDiagnostic:(id)diagnostic;
- (void)start;
@end

@implementation MRDMediaControlIPCServer

- (void)start
{
  v2 = type metadata accessor for Features.MediaRemote();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for Features.MediaRemote.cayenne(_:), v2);
  v6 = Features.MediaRemote.isEnabled.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100534C70 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = *(*qword_1005385A0 + 256);

    v7(v8);
  }
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  selfCopy = self;
  sub_10034A328(diagnostic);
}

- (MRDMediaControlIPCServer)init
{
  v3.receiver = self;
  v3.super_class = MRDMediaControlIPCServer;
  return [(MRDMediaControlIPCServer *)&v3 init];
}

@end