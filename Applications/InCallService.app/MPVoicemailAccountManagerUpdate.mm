@interface MPVoicemailAccountManagerUpdate
+ (MPVoicemailAccountManagerUpdate)accounts;
+ (MPVoicemailAccountManagerUpdate)all;
+ (MPVoicemailAccountManagerUpdate)capabilities;
+ (MPVoicemailAccountManagerUpdate)greeting;
+ (MPVoicemailAccountManagerUpdate)onlineStatus;
+ (MPVoicemailAccountManagerUpdate)storageUsage;
+ (MPVoicemailAccountManagerUpdate)subscriptionStatus;
+ (MPVoicemailAccountManagerUpdate)syncInProgress;
+ (MPVoicemailAccountManagerUpdate)transcribingStatus;
+ (MPVoicemailAccountManagerUpdate)voicemails;
+ (NSArray)allCases;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation MPVoicemailAccountManagerUpdate

+ (NSArray)allCases
{
  swift_getObjCClassMetadata();
  sub_1001BEA08();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (MPVoicemailAccountManagerUpdate)onlineStatus
{
  v2 = sub_1001BEDD0(&qword_1003AA008, &qword_1003B8A30, sub_1001BEAB8);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)capabilities
{
  v2 = sub_1001BEDD0(&qword_1003AA010, &qword_1003B8A38, sub_1001BEB10);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)subscriptionStatus
{
  v2 = sub_1001BEDD0(&qword_1003AA018, &qword_1003B8A40, sub_1001BEB68);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)syncInProgress
{
  v2 = sub_1001BEDD0(&qword_1003AA020, &qword_1003B8A48, sub_1001BEBC0);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)storageUsage
{
  v2 = sub_1001BEDD0(&qword_1003AA028, &qword_1003B8A50, sub_1001BEC18);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)transcribingStatus
{
  v2 = sub_1001BEDD0(&qword_1003AA030, &qword_1003B8A58, sub_1001BEC70);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)accounts
{
  v2 = sub_1001BEDD0(&qword_1003AA038, &qword_1003B8A60, sub_1001BECC8);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)greeting
{
  v2 = sub_1001BEDD0(&qword_1003AA040, &qword_1003B8A68, sub_1001BED20);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)voicemails
{
  v2 = sub_1001BEDD0(&qword_1003AA048, &qword_1003B8A70, sub_1001BED78);

  return v2;
}

+ (MPVoicemailAccountManagerUpdate)all
{
  v2 = sub_1001BEDD0(&qword_1003AA050, &qword_1003B8A78, sub_1001BEE1C);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1001BEED8(v8);

  sub_10015E258(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_1001BFD68();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end