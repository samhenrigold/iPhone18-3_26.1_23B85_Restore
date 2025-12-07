@interface HPRFSessionTrackerAppSettingsNavigationDonation
+ (uint64_t)donateUserVisitForCyclingPowerSettings;
+ (uint64_t)donateUserVisitForMirroringSettings;
+ (uint64_t)donateUserVisitForSessionTrackerAppSettings;
+ (uint64_t)donateUserVisitForUnitsOfMeasureSettings;
+ (uint64_t)donateUserVisitForWorkoutPlaylistSettings;
- (HPRFSessionTrackerAppSettingsNavigationDonation)init;
@end

@implementation HPRFSessionTrackerAppSettingsNavigationDonation

- (HPRFSessionTrackerAppSettingsNavigationDonation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(self, a2);
  return [(HPRFSessionTrackerAppSettingsNavigationDonation *)&v3 init];
}

+ (uint64_t)donateUserVisitForSessionTrackerAppSettings
{
  v0 = sub_22284();
  __chkstk_darwin(v0 - 8);
  v1 = sub_221C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_221D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22844();
  *v4 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v10, v11);
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  sub_22274();
  v12 = sub_221E4();
  v14 = sub_1A0E4(v12, v13);
  sub_19CFC(v9, _swiftEmptyArrayStorage, v14, v15);

  return (*(v7 + 8))(v9, v6);
}

+ (uint64_t)donateUserVisitForCyclingPowerSettings
{
  v0 = sub_22284();
  __chkstk_darwin(v0 - 8);
  v24 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_221C4();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_221D4();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v22[0] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22844();
  v22[1] = &qword_30E10;
  v11 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v9, v10);
  *v4 = v11;
  v12 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v13 = *(v2 + 104);
  v22[2] = v2 + 104;
  v14 = v23;
  v13(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v23);
  sub_22274();
  v15 = v22[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_30E20;
  sub_22844();
  *v4 = v11;
  v13(v4, v12, v14);
  sub_22274();
  v17 = sub_221E4();
  v19 = sub_1A458(v17, v18);
  sub_19CFC(v15, v16, v19, v20);

  return (*(v26 + 8))(v15, v25);
}

+ (uint64_t)donateUserVisitForWorkoutPlaylistSettings
{
  v0 = sub_22284();
  __chkstk_darwin(v0 - 8);
  v24 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_221C4();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22854();
  __chkstk_darwin(v6 - 8);
  v25 = sub_221D4();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22844();
  v21[1] = &qword_30E10;
  v10 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v8, v9);
  *v5 = v10;
  v11 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v12 = *(v3 + 104);
  v21[2] = v3 + 104;
  v12(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v2);
  sub_22274();
  v13 = v21[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v14 = v23;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_30E20;
  sub_22844();
  *v5 = v10;
  v12(v5, v11, v22);
  sub_22274();
  v16 = sub_221E4();
  v18 = sub_1ADDC(v16, v17);
  sub_19CFC(v13, v15, v18, v19);

  return (*(v14 + 8))(v13, v25);
}

+ (uint64_t)donateUserVisitForUnitsOfMeasureSettings
{
  v0 = sub_22284();
  __chkstk_darwin(v0 - 8);
  v24 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_221C4();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22854();
  __chkstk_darwin(v6 - 8);
  v25 = sub_221D4();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22844();
  v21[1] = &qword_30E10;
  v10 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v8, v9);
  *v5 = v10;
  v11 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v12 = *(v3 + 104);
  v21[2] = v3 + 104;
  v12(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v2);
  sub_22274();
  v13 = v21[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v14 = v23;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_30E20;
  sub_22844();
  *v5 = v10;
  v12(v5, v11, v22);
  sub_22274();
  v16 = sub_221E4();
  v18 = sub_1B3AC(v16, v17);
  sub_19CFC(v13, v15, v18, v19);

  return (*(v14 + 8))(v13, v25);
}

+ (uint64_t)donateUserVisitForMirroringSettings
{
  v0 = sub_22284();
  __chkstk_darwin(v0 - 8);
  v24 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_221C4();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22854();
  __chkstk_darwin(v6 - 8);
  v25 = sub_221D4();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22844();
  v21[1] = &qword_30E10;
  v10 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v8, v9);
  *v5 = v10;
  v11 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v12 = *(v3 + 104);
  v21[2] = v3 + 104;
  v12(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v2);
  sub_22274();
  v13 = v21[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v14 = v23;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_30E20;
  sub_22844();
  *v5 = v10;
  v12(v5, v11, v22);
  sub_22274();
  v16 = sub_221E4();
  v18 = sub_1B864(v16, v17);
  sub_19CFC(v13, v15, v18, v19);

  return (*(v14 + 8))(v13, v25);
}

@end