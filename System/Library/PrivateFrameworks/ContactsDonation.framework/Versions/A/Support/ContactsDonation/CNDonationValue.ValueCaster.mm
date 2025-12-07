@interface CNDonationValue.ValueCaster
- (_TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster)init;
- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label;
- (void)visitDonationValue:(id)value imageData:(id)data;
- (void)visitDonationValue:(id)value nameComponents:(id)components;
- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label;
- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label;
@end

@implementation CNDonationValue.ValueCaster

- (void)visitDonationValue:(id)value nameComponents:(id)components
{
  v5 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PersonNameComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v10 + 32))(v8, v13, v9);
  v14 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  selfCopy = self;
  sub_1000083DC(v8, self + v15);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label
{
  v6 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v18 - v8);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *v9 = v10;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v14;
  v15 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  selfCopy = self;
  sub_1000083DC(v9, self + v16);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label
{
  v7 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = (&v22 - v9);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  numberCopy = number;
  selfCopy = self;
  stringValue = [numberCopy stringValue];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *v10 = v17;
  v10[1] = v19;
  v10[2] = v11;
  v10[3] = v13;
  v20 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  v21 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_1000083DC(v10, selfCopy + v21);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label
{
  v9 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = (&v19 - v11);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *v12 = address;
  v12[1] = style;
  v12[2] = v13;
  v12[3] = v14;
  v15 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  addressCopy = address;
  selfCopy = self;
  sub_1000083DC(v12, self + v16);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value imageData:(id)data
{
  v6 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v17 - v8);
  dataCopy = data;
  selfCopy = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *v9 = v12;
  v9[1] = v14;
  v15 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_1000083DC(v9, selfCopy + v16);
  swift_endAccess();
}

- (_TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end