@interface TUMetadataDestinationID
+ (id)metadataDestinationIDWithVoicemailMessage:(id)message;
+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails;
@end

@implementation TUMetadataDestinationID

+ (id)metadataDestinationIDWithVoicemailMessage:(id)message
{
  swift_getObjCClassMetadata();
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100070B94(v5, KeyPath, v4);
  swift_unknownObjectRelease();

  return v6;
}

+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails
{
  sub_100030744(&unk_1000C5360, &qword_1000A1A00);
  v3 = sub_10007B528();
  swift_getObjCClassMetadata();
  sub_100070DFC(v3);

  sub_100055038(0, &qword_1000C5E00, TUMetadataDestinationID_ptr);
  v4.super.isa = sub_10007B518().super.isa;

  return v4.super.isa;
}

@end