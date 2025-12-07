@interface HPRFMindSettingsNavigationDonation
+ (uint64_t)donateUserVisitForBreathRateSettings;
+ (uint64_t)donateUserVisitForHapticSettings;
+ (uint64_t)donateUserVisitForMindfulnessSettings;
- (HPRFMindSettingsNavigationDonation)init;
@end

@implementation HPRFMindSettingsNavigationDonation

- (HPRFMindSettingsNavigationDonation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MindSettingsNavigationDonation();
  return [(HPRFMindSettingsNavigationDonation *)&v3 init];
}

+ (uint64_t)donateUserVisitForMindfulnessSettings
{
  v0 = sub_EC88();
  __chkstk_darwin(v0 - 8, v1);
  v2 = sub_EB98();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_EF28();
  __chkstk_darwin(v7 - 8, v8);
  v9 = sub_EBA8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_EF18();
  *v6 = type metadata accessor for MindSettingsNavigationDonation();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v2);
  sub_EC78();
  sub_EBB8();
  v14 = sub_C014();
  sub_C0F0(v13, &_swiftEmptyArrayStorage, v14, v15);

  return (*(v10 + 8))(v13, v9);
}

+ (uint64_t)donateUserVisitForBreathRateSettings
{
  v0 = sub_EC88();
  __chkstk_darwin(v0 - 8, v1);
  v28 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_EB98();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_EF28();
  __chkstk_darwin(v8 - 8, v9);
  v30 = sub_EBA8();
  v25[0] = *(v30 - 8);
  __chkstk_darwin(v30, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF18();
  v27 = type metadata accessor for MindSettingsNavigationDonation();
  *v7 = v27;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v4 + 104);
  v25[1] = v4 + 104;
  v26 = v14;
  v14(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_EC78();
  v15 = v25[0];
  v29 = v12;
  sub_EBB8();
  sub_B124(&qword_1DBB0, &qword_11140);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_11100;
  sub_EF18();
  v17 = v26;
  *v7 = v27;
  v17(v7, v13, v3);
  sub_EC78();
  sub_EBB8();
  v18 = sub_C014();
  v20 = v18;
  if (v19)
  {
    v33 = 0xD00000000000001ALL;
    v34 = 0x8000000000011B10;
    v31 = v18;
    v32 = v19;
    v31 = sub_EF88();
    v32 = v21;
    sub_EF58();
    v20 = v31;
    v22 = v32;
  }

  else
  {
    v22 = 0;
  }

  v23 = v29;
  sub_C0F0(v29, v16, v20, v22);

  return (*(v15 + 8))(v23, v30);
}

+ (uint64_t)donateUserVisitForHapticSettings
{
  v0 = sub_EC88();
  __chkstk_darwin(v0 - 8, v1);
  v28 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_EB98();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_EF28();
  __chkstk_darwin(v8 - 8, v9);
  v30 = sub_EBA8();
  v25[0] = *(v30 - 8);
  __chkstk_darwin(v30, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF18();
  v27 = type metadata accessor for MindSettingsNavigationDonation();
  *v7 = v27;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v4 + 104);
  v25[1] = v4 + 104;
  v26 = v14;
  v14(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_EC78();
  v15 = v25[0];
  v29 = v12;
  sub_EBB8();
  sub_B124(&qword_1DBB0, &qword_11140);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_11100;
  sub_EF18();
  v17 = v26;
  *v7 = v27;
  v17(v7, v13, v3);
  sub_EC78();
  sub_EBB8();
  v18 = sub_C014();
  v20 = v18;
  if (v19)
  {
    v33 = 0xD000000000000015;
    v34 = 0x8000000000011AB0;
    v31 = v18;
    v32 = v19;
    v31 = sub_EF88();
    v32 = v21;
    sub_EF58();
    v20 = v31;
    v22 = v32;
  }

  else
  {
    v22 = 0;
  }

  v23 = v29;
  sub_C0F0(v29, v16, v20, v22);

  return (*(v15 + 8))(v23, v30);
}

@end