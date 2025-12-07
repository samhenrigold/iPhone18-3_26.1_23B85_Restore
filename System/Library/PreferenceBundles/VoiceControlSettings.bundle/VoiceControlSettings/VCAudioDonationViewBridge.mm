@interface VCAudioDonationViewBridge
+ (id)makeViewController;
- (_TtC20VoiceControlSettings25VCAudioDonationViewBridge)init;
@end

@implementation VCAudioDonationViewBridge

+ (id)makeViewController
{
  v2 = type metadata accessor for VCAudioDonationView(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = swift_getKeyPath();
  sub_12210(&qword_2F628, &qword_1C2A0);
  swift_storeEnumTagMultiPayload();
  v6 = (v5 + *(v3 + 28));
  *v6 = 0xD000000000000024;
  v6[1] = 0x8000000000021750;
  v7 = *(v3 + 32);
  *(v5 + v7) = [objc_allocWithZone(UIViewController) init];
  v8 = objc_allocWithZone(sub_12210(&qword_2F630, &qword_1C2A8));
  v9 = sub_16FF4();

  return v9;
}

- (_TtC20VoiceControlSettings25VCAudioDonationViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VCAudioDonationViewBridge();
  return [(VCAudioDonationViewBridge *)&v3 init];
}

@end