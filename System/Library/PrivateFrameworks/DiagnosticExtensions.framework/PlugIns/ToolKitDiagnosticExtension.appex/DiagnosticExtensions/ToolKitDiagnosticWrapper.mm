@interface ToolKitDiagnosticWrapper
+ (_TtC26ToolKitDiagnosticExtension24ToolKitDiagnosticWrapper)shared;
- (id)getToolKitDatabaseURL;
@end

@implementation ToolKitDiagnosticWrapper

+ (_TtC26ToolKitDiagnosticExtension24ToolKitDiagnosticWrapper)shared
{
  v2 = static ToolKitDiagnosticWrapper.shared.getter();

  return v2;
}

- (id)getToolKitDatabaseURL
{
  v3 = sub_1000016A4(&qword_100014380, &qword_10000B3B0);
  sub_100009970(v3);
  sub_100009A20();
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  selfCopy = self;
  ToolKitDiagnosticWrapper.getToolKitDatabaseURL()();

  v8 = sub_10000A820();
  v10 = 0;
  if (sub_1000082E8(v6, 1, v8) != 1)
  {
    sub_10000A7F0(v9);
    v10 = v11;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v10;
}

@end