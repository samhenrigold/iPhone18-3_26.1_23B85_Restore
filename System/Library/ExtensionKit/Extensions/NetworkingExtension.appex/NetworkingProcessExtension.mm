@interface NetworkingProcessExtension
- (_TtC19NetworkingExtension26NetworkingProcessExtension)init;
- (void)lockdownSandbox:(id)sandbox;
@end

@implementation NetworkingProcessExtension

- (_TtC19NetworkingExtension26NetworkingProcessExtension)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NetworkingProcessExtension();
  v2 = [(NetworkingProcessExtension *)&v4 init];
  [(NetworkingProcessExtension *)v2 setSharedInstance:v2];
  return v2;
}

- (void)lockdownSandbox:(id)sandbox
{
  v4 = sub_100007794();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000077C4() == 3157553 && v8 == 0xE300000000000000)
  {
    selfCopy = self;

LABEL_5:
    v13[1] = self;
    (*(v5 + 104))(v7, enum case for RestrictedSandboxRevision.revision1(_:), v4);
    type metadata accessor for NetworkingProcessExtension();
    sub_100007330(&qword_10000C120, v11, type metadata accessor for NetworkingProcessExtension, &unk_100007998);
    sub_1000077A4();
    (*(v5 + 8))(v7, v4);

    return;
  }

  v10 = sub_1000077D4();
  v13[0] = self;

  if (v10)
  {
    goto LABEL_5;
  }

  v12 = v13[0];
}

@end