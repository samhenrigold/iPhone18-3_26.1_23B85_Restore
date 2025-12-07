uint64_t sub_251975F90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251975FA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F469638;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976004(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + qword_27F469638;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976068()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2519760A8()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2519760F0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251976138()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251976178()
{
  MEMORY[0x253089950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519761B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2519761E8()
{

  return MEMORY[0x2821FE8E8](v0, 27, 7);
}

uint64_t sub_251976220()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251976260()
{

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

uint64_t sub_2519762A0()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_2519762D8()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_251976320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

uint64_t sub_251976394()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519763CC()
{
  v1 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = sub_2519AE4C8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_251976528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_251976620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_251976708()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251976740()
{
  MEMORY[0x253089950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251976778()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519767B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251976800@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25197685C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2519768C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25197691C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976980@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2519769DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F469C68;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976A38(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + qword_27F469C68;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_251976B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_251976C78()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251976CB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251976CF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

uint64_t sub_251976D68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976DB8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_251995C40(v3 + v4, a2, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
}

uint64_t sub_251976E90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251976EEC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_251976F50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthMobilityUI16WeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_251976FAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_251976FFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25197704C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2519770A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

uint64_t sub_251977104()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25197713C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F469FA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251977198(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + qword_27F469FA8;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2519771FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25197726C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519772A4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251977324()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2519773BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519773F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251977434@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F46A110;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_251977490(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + qword_27F46A110;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25197755C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v3 + v4, a2);
}

id WalkingSteadinessOnboardingAnalyticsManager.__allocating_init(healthStore:detailsProvider:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_healthStore] = a1;
  v10 = &v9[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation];
  *v10 = a3;
  *(v10 + 1) = a4;
  *&v9[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_detailsProvider] = a2;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id WalkingSteadinessOnboardingAnalyticsManager.init(healthStore:detailsProvider:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_healthStore] = a1;
  v5 = &v4[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation];
  *v5 = a3;
  *(v5 + 1) = a4;
  *&v4[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_detailsProvider] = a2;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for WalkingSteadinessOnboardingAnalyticsManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2519776EC(char *a1, uint64_t *a2, char a3)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = *a2;
  v8 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_healthStore];
  v9 = *(a2 + 8);
  v11 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation];
  v10 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_presentation + 8];
  v12 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI43WalkingSteadinessOnboardingAnalyticsManager_detailsProvider];
  v13 = *(v12 + 88);
  v14 = *(v12 + 96);
  v15 = type metadata accessor for WalkingSteadinessAnalyticsOnboardingEventDataSource();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_healthStore] = v8;
  v17 = &v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation];
  *v17 = v11;
  v17[1] = v10;
  v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep] = v6;
  v18 = &v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems];
  *v18 = v7;
  v18[8] = v9;
  v19 = &v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems];
  *v19 = v13;
  v19[8] = v14;
  v16[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_acceptDefaults] = a3;
  v28.receiver = v16;
  v28.super_class = v15;

  v20 = v8;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = ObjectType;
  aBlock[4] = sub_251977C00;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251977C0C;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  [v3 submitOnboardingEventWithDataSource:v24 resultHandler:v23];
  _Block_release(v23);
}

void sub_2519778F4(void *a1, unsigned __int8 a2, uint64_t a3)
{
  if ([a1 status] == 1)
  {
    if (qword_27F469470 != -1)
    {
      swift_once();
    }

    v5 = sub_2519AEAE8();
    __swift_project_value_buffer(v5, qword_27F469C00);
    v6 = a1;
    oslog = sub_2519AEAC8();
    v7 = sub_2519AEF38();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136446979;
      v10 = sub_2519AF2A8();
      v12 = sub_251978CDC(v10, v11, &v25);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_251978CDC(0xD000000000000041, 0x80000002519B2AC0, &v25);
      *(v8 + 22) = 2081;
      v13 = 0xEE00736C69617465;
      v14 = 0x446D7269666E6F63;
      v15 = 0x80000002519B2B10;
      v16 = 0xED0000736E6F6974;
      v17 = 0x6163696669746F6ELL;
      if (a2 != 3)
      {
        v17 = 0x6974656C706D6F63;
        v16 = 0xEA00000000006E6FLL;
      }

      if (a2 == 2)
      {
        v17 = 0xD000000000000017;
      }

      else
      {
        v15 = v16;
      }

      if (!a2)
      {
        v14 = 0xD000000000000016;
        v13 = 0x80000002519B2B30;
      }

      if (a2 <= 1u)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      if (a2 <= 1u)
      {
        v19 = v13;
      }

      else
      {
        v19 = v15;
      }

      v20 = sub_251978CDC(v18, v19, &v25);

      *(v8 + 24) = v20;
      *(v8 + 32) = 2082;
      [v6 error];
      sub_251978684(0);
      v21 = sub_2519AEE58();
      v23 = sub_251978CDC(v21, v22, &v25);

      *(v8 + 34) = v23;
      _os_log_impl(&dword_251974000, oslog, v7, "[%{public}s.%{public}s] Unable to submit onboarding analytics for step: %{private}s error: %{public}s", v8, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v9, -1, -1);
      MEMORY[0x2530898E0](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_251977C0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id WalkingSteadinessOnboardingAnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalkingSteadinessOnboardingAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingAnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251977E38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251977E58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_251977EA8(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695B8, type metadata accessor for HKError, &unk_2519B042C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_251977F14(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695B8, type metadata accessor for HKError, &unk_2519B042C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_251977F84(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError, &unk_2519B0470);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_251978010(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError, &unk_2519B0470);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_25197807C(uint64_t a1)
{
  v2 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError, &unk_2519B0470);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2519780E8(void *a1, uint64_t a2)
{
  v4 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError, &unk_2519B0470);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25197819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError, &unk_2519B0470);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_251978218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2519AF258();
  sub_2519AEDF8();
  return sub_2519AF278();
}

void *sub_251978278@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_251978288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251978354(&qword_27F4695F0, type metadata accessor for HKError, &unk_2519B0470);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_251978354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2519784D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_251978568()
{
  result = qword_27F4695E0;
  if (!qword_27F4695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4695E0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_251978684(uint64_t a1)
{
  if (!qword_27F4695F8)
  {
    sub_2519786DC();
    v1 = sub_2519AF0E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4695F8);
    }
  }
}

unint64_t sub_2519786DC()
{
  result = qword_27F469600;
  if (!qword_27F469600)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F469600);
  }

  return result;
}

uint64_t sub_25197874C()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469610);
  v1 = __swift_project_value_buffer(v0, qword_27F469610);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *WalkingSteadinessOnboardingViewControllerFactory.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:detailsProvider:model:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  sub_251975F90(a2, (v10 + 3));
  sub_251975F90(a3, (v10 + 10));
  v10[8] = a4;
  v10[9] = a5;
  return v10;
}

void *WalkingSteadinessOnboardingViewControllerFactory.init(healthStore:healthExperienceStore:pinnedContentManager:detailsProvider:model:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  sub_251975F90(a2, (v5 + 3));
  sub_251975F90(a3, (v5 + 10));
  v5[8] = a4;
  v5[9] = a5;
  return v5;
}

char *sub_2519788E4(_BYTE *a1)
{
  v2 = v1;
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v20 = *(v1 + 64);
      v21 = *(v2 + 16);
      type metadata accessor for ConfirmDetailsValueFormatterImpl();
      v22 = swift_allocObject();
      v22[4] = 0;
      v22[5] = 0;
      v22[2] = v21;
      v23 = objc_opt_self();

      v24 = [v23 sharedInstanceForHealthStore_];
      v25 = [v24 createHKUnitPreferenceController];

      v22[3] = v25;
      v26 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController(0));
      v27 = sub_25197926C(v20, v22, v26);

      return v27;
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingStartViewController());
      return WalkingSteadinessOnboardingStartViewController.init()();
    }
  }

  else if (v3 == 2)
  {
    v7 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingLevelsViewController(0));
    return WalkingSteadinessOnboardingLevelsViewController.init()();
  }

  else if (v3 == 3)
  {
    v4 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingNotificationsViewController());
    return sub_2519A9158();
  }

  else
  {
    v8 = *(*(v1 + 72) + 96);

    os_unfair_lock_lock((v8 + 36));
    v9 = *(v8 + 33);
    os_unfair_lock_unlock((v8 + 36));

    if (v9 == 2)
    {
      if (qword_27F469410 != -1)
      {
        swift_once();
      }

      v10 = sub_2519AEAE8();
      __swift_project_value_buffer(v10, qword_27F469610);
      v11 = sub_2519AEAC8();
      v12 = sub_2519AEF48();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v30[0] = v14;
        *v13 = 136446210;
        v15 = sub_2519AF2A8();
        v17 = sub_251978CDC(v15, v16, v30);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_251974000, v11, v12, "[%{public}s] Setup Complete but notificationsEnabled is nil", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x2530898E0](v14, -1, -1);
        MEMORY[0x2530898E0](v13, -1, -1);
      }

      sub_251979694(v2 + 24, v30);
      sub_251979694(v2 + 80, v29);
      v18 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(0));
      v19 = 0;
    }

    else
    {
      sub_251979694(v2 + 24, v30);
      sub_251979694(v2 + 80, v29);
      v28 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(0));
      v19 = v9 & 1;
    }

    return WalkingSteadinessOnboardingSetupCompleteViewController.init(healthExperienceStore:pinnedContentManager:notificationsEnabled:)(v30, v29, v19);
  }
}

uint64_t WalkingSteadinessOnboardingViewControllerFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  return v0;
}

uint64_t WalkingSteadinessOnboardingViewControllerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

unint64_t sub_251978CDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251978DA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2519796F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_251978DA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251978EB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2519AF178();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_251978EB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_251978F00(a1, a2);
  sub_251979030(&unk_2863D95C8);
  return v3;
}

void *sub_251978F00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25197911C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2519AF178();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2519AEEA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25197911C(v10, 0);
        result = sub_2519AF138();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251979030(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251979184(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25197911C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251979754();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251979184(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251979754();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_25197926C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = type metadata accessor for ConfirmDetailsValueFormatterImpl();
  v17[4] = &protocol witness table for ConfirmDetailsValueFormatterImpl;
  *(a3 + qword_27F469630) = 1;
  v17[0] = a2;
  *(a3 + qword_27F469638 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = (a3 + qword_27F469640);
  *v6 = 0xD00000000000002DLL;
  v6[1] = 0x80000002519B2BE0;
  *(a3 + qword_27F469648) = 0;
  sub_251979694(v17, v16);
  type metadata accessor for ConfirmDetailsModel(0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  v9 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  sub_251975F90(v16, v7 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter);
  type metadata accessor for ConfirmDetailsDataSource(0);
  swift_allocObject();

  *(a3 + qword_27F469650) = ConfirmDetailsDataSource.init(detailsProvider:model:)(a1, v7);
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();

  v10 = sub_2519AE938();
  v11 = *&v10[qword_27F469650] + qword_27F469FA8;
  swift_beginAccess();
  *(v11 + 8) = &protocol witness table for WalkingSteadinessOnboardingConfirmDetailsViewController;
  swift_unknownObjectWeakAssign();
  v12 = v10;
  v13 = [v12 headerView];
  LODWORD(v14) = 1036831949;
  [v13 setTitleHyphenationFactor_];

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return v12;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_251979694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2519796F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251979754()
{
  if (!qword_27F469628)
  {
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469628);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *WalkingSteadinessOnboardingConfirmDetailsViewController.__allocating_init(detailsProvider:valueFormatter:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_25197A62C(a1, v7, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v8;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_251979934(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F469638;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2519799A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469638;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

char *WalkingSteadinessOnboardingConfirmDetailsViewController.init(detailsProvider:valueFormatter:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_25197A2AC(a1, v9, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v11;
}

void sub_251979B44()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v2 = sub_2519AEE28();
  v3 = [v1 addNextButtonWithBaseIdentifier_];

  v4 = *&v1[qword_27F469648];
  *&v1[qword_27F469648] = v3;
  v5 = v3;

  [v5 setEnabled_];
  v6 = sub_2519AEE28();
}

void sub_251979C80(void *a1)
{
  v1 = a1;
  sub_251979B44();
}

void sub_251979CC8(char *a1)
{
  v2 = &a1[qword_27F469638];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_251979D74(char *a1)
{
  v2 = &a1[qword_27F469638];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_251979E20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + qword_27F469650) + qword_27F469FB0);
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_25197A770(v3 + v4, a1);
}

void sub_251979E94(uint64_t a1)
{
  v2 = *(v1 + qword_27F469648);
  if (v2)
  {
    v3 = *(**(a1 + qword_27F469FB0) + 112);
    v4 = v2;
    [v4 setEnabled_];
  }
}

void sub_251979F48(void *a1)
{
  v3 = a1;
  v1 = [v3 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_251979FEC()
{
  sub_25197ABDC(v0 + qword_27F469638);
}

id WalkingSteadinessOnboardingConfirmDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25197A088(uint64_t a1)
{
  sub_25197ABDC(a1 + qword_27F469638);
}

uint64_t (*sub_25197A10C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469638;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

void sub_25197A1AC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_25197A234@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(*v1 + qword_27F469650) + qword_27F469FB0);
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_25197A770(v3 + v4, a1);
}

char *sub_25197A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[3] = a4;
  v21[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + qword_27F469630) = 1;
  *(a3 + qword_27F469638 + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = (a3 + qword_27F469640);
  *v10 = 0xD00000000000002DLL;
  v10[1] = 0x80000002519B2BE0;
  *(a3 + qword_27F469648) = 0;
  sub_251979694(v21, v20);
  type metadata accessor for ConfirmDetailsModel(0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_mostRecentDetails;
  v13 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_visiblePicker) = 3;
  sub_251975F90(v20, v11 + OBJC_IVAR____TtC16HealthMobilityUI19ConfirmDetailsModel_valueFormatter);
  type metadata accessor for ConfirmDetailsDataSource(0);
  swift_allocObject();

  *(a3 + qword_27F469650) = ConfirmDetailsDataSource.init(detailsProvider:model:)(a1, v11);
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();

  v14 = sub_2519AE938();
  v15 = *&v14[qword_27F469650] + qword_27F469FA8;
  swift_beginAccess();
  *(v15 + 8) = &protocol witness table for WalkingSteadinessOnboardingConfirmDetailsViewController;
  swift_unknownObjectWeakAssign();
  v16 = v14;
  v17 = [v16 headerView];
  LODWORD(v18) = 1036831949;
  [v17 setTitleHyphenationFactor_];

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v16;
}

char *sub_25197A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController(0));
  (*(v9 + 16))(v11, a2, a4);
  return sub_25197A2AC(a1, v11, v12, a4, a5);
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingConfirmDetailsViewController(uint64_t a1)
{
  result = qword_27F469660;
  if (!qword_27F469660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25197A770(uint64_t a1, uint64_t a2)
{
  sub_25197A7D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25197A7D4(uint64_t a1)
{
  if (!qword_27F469658)
  {
    type metadata accessor for ConfirmDetailsProvider.Details(255);
    v1 = sub_2519AF0E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469658);
    }
  }
}

void sub_25197A82C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissPresentedViewController];
  v3 = objc_allocWithZone(type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController(0));
  v4 = WalkingSteadinessOnboardingAboutHealthDetailsViewController.init()();
  v5 = [v4 navigationItem];
  [v5 setRightBarButtonItem_];

  v6 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t MultiselectItem.reuseIdentifier.getter()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_25197ACC8();
  return sub_2519AE888();
}

unint64_t sub_25197ACC8()
{
  result = qword_27F469670;
  if (!qword_27F469670)
  {
    type metadata accessor for MultiselectTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469670);
  }

  return result;
}

uint64_t MultiselectItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultiselectItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MultiselectItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MultiselectItem.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall MultiselectItem.init(title:subtitle:state:identifier:)(HealthMobilityUI::MultiselectItem *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::Bool state, Swift::String identifier)
{
  object = subtitle._object;
  countAndFlagsBits = subtitle._countAndFlagsBits;
  v8 = title._object;
  v9 = title._countAndFlagsBits;
  if (state)
  {
    v11 = 0x44455443454C4553;
  }

  else
  {
    v11 = 0x5443454C45534E55;
  }

  if (state)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xEA00000000004445;
  }

  MEMORY[0x253088EC0](v11, v12);

  retstr->uniqueIdentifier = identifier;
  retstr->title._countAndFlagsBits = v9;
  retstr->title._object = v8;
  retstr->subtitle._countAndFlagsBits = countAndFlagsBits;
  retstr->subtitle._object = object;
  retstr->state = state;
}

unint64_t sub_25197AEF0()
{
  result = qword_27F469678;
  if (!qword_27F469678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469678);
  }

  return result;
}

uint64_t sub_25197AF44()
{
  type metadata accessor for MultiselectTableViewCell();
  sub_25197ACC8();
  return sub_2519AE888();
}

uint64_t sub_25197AF7C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25197AFAC(uint64_t a1)
{
  v2 = sub_25197B0BC();

  return MEMORY[0x282169440](a1, v2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25197B014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25197B05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25197B0BC()
{
  result = qword_27F469680;
  if (!qword_27F469680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469680);
  }

  return result;
}

uint64_t sub_25197B110()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469690);
  v1 = __swift_project_value_buffer(v0, qword_27F469690);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id WalkingSteadinessOnboardingCoordinator.__allocating_init(rootViewController:model:factory:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model] = a3;
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_factory] = a4;
  *&v10[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_analyticsManager] = a5;
  v14.receiver = v10;
  v14.super_class = v5;

  v11 = a5;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_25197B43C();

  swift_unknownObjectRelease();

  return v12;
}

id WalkingSteadinessOnboardingCoordinator.init(rootViewController:model:factory:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model] = a3;
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_factory] = a4;
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_analyticsManager] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for WalkingSteadinessOnboardingCoordinator();

  v9 = a5;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_25197B43C();

  swift_unknownObjectRelease();

  return v10;
}

void sub_25197B43C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model);
  v14 = 5;
  (*(*v2 + 224))(&v15, &v14);
  if (v15 == 5)
  {
    sub_2519AF198();
    __break(1u);
  }

  else
  {
    v13 = v15;
    v12 = sub_25197B810(&v13);
    v3 = v1 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      sub_251980184(0, &qword_27F469750, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2519B0810;
      *(v6 + 32) = v12;
      v7 = *(v4 + 24);
      v8 = v12;
      v7(v6, 0, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v3 + 8);
      v10 = swift_getObjectType();
      v11 = (*(v9 + 8))(v10, v9);
      swift_unknownObjectRelease();
      if (v11)
      {
        [v11 setDelegate_];
      }
    }
  }
}

void sub_25197B66C(_BYTE *a1, unsigned __int8 *a2, char a3)
{
  v5 = *a2;
  LOBYTE(v20[0]) = *a1;
  v6 = sub_25197B810(v20);
  v7 = v3 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    memset(v20, 0, sizeof(v20));
    (*(v9 + 32))(v6, v20, ObjectType, v9);
    swift_unknownObjectRelease();
    Strong = sub_25198001C(v20, &unk_27F469748, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251980184);
  }

  v19 = v5;
  v11 = *(**(v3 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model) + 184);
  v12 = v11(v20, Strong);
  v17 = *&v20[0];
  v18 = BYTE8(v20[0]);
  if (v5 == 3)
  {
    v14 = (a3 & 1) == 0;
  }

  else
  {
    if (v5 != 1 || (v11(&v15, v12), (v16 & 1) != 0))
    {
      v13 = 1;
      goto LABEL_12;
    }

    v14 = v15 == 0;
  }

  v13 = v14;
LABEL_12:
  sub_2519776EC(&v19, &v17, v13);
}

void *sub_25197B810(char *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_factory);
  v12 = *a1;
  v3 = (*(*v2 + 128))(&v12);
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = [v3 navigationItem];
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v8 = sub_2519AEE28();

  [v7 setBackButtonTitle_];

  v9 = *(v5 + 24);
  v10 = swift_unknownObjectRetain();
  v9(v10, &protocol witness table for WalkingSteadinessOnboardingCoordinator, ObjectType, v5);
  return v3;
}

uint64_t sub_25197B994(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v7 = sub_2519AEAE8();
  __swift_project_value_buffer(v7, qword_27F469690);
  v8 = a1;
  v9 = sub_2519AEAC8();
  v10 = sub_2519AEF58();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136446722;
    v12 = sub_2519AF2A8();
    v29 = ObjectType;
    v14 = sub_251978CDC(v12, v13, &v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_251978CDC(0xD00000000000002FLL, 0x80000002519B2DA0, &v31);
    *(v11 + 22) = 2082;
    v15 = swift_getObjectType();
    v16 = *(a2 + 8);
    v16(&v30, v15, a2);
    v17 = sub_2519AEE58();
    v19 = sub_251978CDC(v17, v18, &v31);

    *(v11 + 24) = v19;
    ObjectType = v29;
    _os_log_impl(&dword_251974000, v9, v10, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v28, -1, -1);
    MEMORY[0x2530898E0](v11, -1, -1);
  }

  else
  {

    v16 = *(a2 + 8);
  }

  v20 = swift_getObjectType();
  v16(&v33, v20, a2);
  v21 = v33;
  v22 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v32 = v33;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v3;
  *(v23 + 32) = 0;
  *(v23 + 40) = v8;
  *(v23 + 48) = a2;
  *(v23 + 56) = ObjectType;
  v24 = *(*v22 + 232);
  v25 = v8;
  v26 = v3;
  v24(&v32, v25, a2, 1, sub_25197FAE0, v23);
}

uint64_t sub_25197BC84(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v7 = sub_2519AEAE8();
  __swift_project_value_buffer(v7, qword_27F469690);
  v8 = a1;
  v9 = sub_2519AEAC8();
  v10 = sub_2519AEF58();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136446722;
    v12 = sub_2519AF2A8();
    v29 = ObjectType;
    v14 = sub_251978CDC(v12, v13, &v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_251978CDC(0xD000000000000031, 0x80000002519B2DD0, &v31);
    *(v11 + 22) = 2082;
    v15 = swift_getObjectType();
    v16 = *(a2 + 8);
    v16(&v30, v15, a2);
    v17 = sub_2519AEE58();
    v19 = sub_251978CDC(v17, v18, &v31);

    *(v11 + 24) = v19;
    ObjectType = v29;
    _os_log_impl(&dword_251974000, v9, v10, "[%{public}s.%{public}s]: Secondary button tapped for stage: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v28, -1, -1);
    MEMORY[0x2530898E0](v11, -1, -1);
  }

  else
  {

    v16 = *(a2 + 8);
  }

  v20 = swift_getObjectType();
  v16(&v33, v20, a2);
  v21 = v33;
  v22 = *&v3[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v32 = v33;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v3;
  *(v23 + 32) = 1;
  *(v23 + 40) = v8;
  *(v23 + 48) = a2;
  *(v23 + 56) = ObjectType;
  v24 = *(*v22 + 232);
  v25 = v8;
  v26 = v3;
  v24(&v32, v25, a2, 0, sub_251980214, v23);
}

uint64_t sub_25197BF7C(unsigned __int8 *a1, char a2, void *a3, char a4, id a5, uint64_t a6, uint64_t a7)
{
  v73 = a3;
  v12 = sub_2519AED48();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2519AED78();
  v19 = MEMORY[0x28223BE20](v17, v18);
  v22 = *a1;
  if (v22 >> 6)
  {
    v23 = a4;
    v24 = swift_allocObject();
    v25 = v73;
    *(v24 + 16) = v73;
    if (v22 >> 6 == 1)
    {
      *(v24 + 24) = a5;
      *(v24 + 32) = a6;
      *(v24 + 40) = a2;
      *(v24 + 41) = a4 & 1;
      v26 = a5;
      v27 = sub_2519800E4;
    }

    else
    {
      *(v24 + 24) = a2;
      *(v24 + 25) = a4 & 1;
      v27 = sub_25198012C;
    }

    v42 = v27;
    if (a2 == 3)
    {
      v43 = (v23 & 1) == 0;
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v24;
      v25;

      sub_25197E7B8(v43, a5, a6, sub_2519800F8, v44);
    }

    else
    {
      v27(v25);
    }
  }

  else
  {
    v69 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v70 = v21;
    v71 = v13;
    v72 = v19;
    if (a2 == 3 && v22 == 3)
    {
      v28 = v12;
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v29 = sub_2519AEAE8();
      __swift_project_value_buffer(v29, qword_27F469690);
      v30 = sub_2519AEAC8();
      v31 = sub_2519AEF58();
      v32 = v16;
      if (os_log_type_enabled(v30, v31))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock = v34;
        *v33 = 136446466;
        v35 = sub_2519AF2A8();
        v37 = sub_251978CDC(v35, v36, &aBlock);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        *(v33 + 14) = sub_251978CDC(0xD000000000000028, 0x80000002519B3280, &aBlock);
        _os_log_impl(&dword_251974000, v30, v31, "[%{public}s.%{public}s]: User previously denied notification authorization, alerting but not proceeding", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530898E0](v34, -1, -1);
        MEMORY[0x2530898E0](v33, -1, -1);
      }

      sub_25197FBF8();
      v38 = sub_2519AF038();
      v39 = swift_allocObject();
      v40 = v73;
      v39[2] = v73;
      v39[3] = a5;
      v39[4] = a6;
      v79 = sub_2519800BC;
      v80 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v41 = &block_descriptor_66;
    }

    else
    {
      v28 = v12;
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v46 = sub_2519AEAE8();
      __swift_project_value_buffer(v46, qword_27F469690);
      a5 = a5;
      v47 = sub_2519AEAC8();
      v48 = sub_2519AEF58();

      v32 = v16;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock = v68;
        *v49 = 136446978;
        v50 = sub_2519AF2A8();
        v67 = v48;
        v52 = sub_251978CDC(v50, v51, &aBlock);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2082;
        *(v49 + 14) = sub_251978CDC(0xD000000000000028, 0x80000002519B3280, &aBlock);
        *(v49 + 22) = 2080;
        ObjectType = swift_getObjectType();
        (*(a6 + 8))(&v74, ObjectType, a6);
        v54 = sub_2519AEE58();
        v56 = sub_251978CDC(v54, v55, &aBlock);

        *(v49 + 24) = v56;
        *(v49 + 32) = 2080;
        v74 = v22;
        v57 = sub_2519AEE58();
        v59 = sub_251978CDC(v57, v58, &aBlock);

        *(v49 + 34) = v59;
        _os_log_impl(&dword_251974000, v47, v67, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v49, 0x2Au);
        v60 = v68;
        swift_arrayDestroy();
        MEMORY[0x2530898E0](v60, -1, -1);
        MEMORY[0x2530898E0](v49, -1, -1);
      }

      sub_25197FBF8();
      v38 = sub_2519AF038();
      v61 = swift_allocObject();
      v40 = v73;
      *(v61 + 16) = v73;
      *(v61 + 24) = v22;
      *(v61 + 32) = a5;
      *(v61 + 40) = a6;
      v79 = sub_25198007C;
      v80 = v61;
      aBlock = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v41 = &block_descriptor_60;
    }

    v77 = sub_2519839F0;
    v78 = v41;
    v62 = _Block_copy(&aBlock);
    v63 = a5;
    v64 = v40;

    v65 = v69;
    sub_2519AED68();
    aBlock = MEMORY[0x277D84F90];
    sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v65, v32, v62);
    _Block_release(v62);

    (*(v71 + 8))(v32, v28);
    return (*(v70 + 8))(v65, v72);
  }
}

uint64_t sub_25197C7D0(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a4;
  *(v9 + 25) = a5 & 1;

  sub_25197D098(v10, a2, v11, sub_251980174, v9);
}

void sub_25197C8A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a4;
    sub_25197C92C(&v11, a5 & 1, a1, a2);
  }
}

void sub_25197C92C(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a2;
  swift_getObjectType();
  v9 = sub_2519AED48();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2519AED78();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v17 = *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v18 = *a1;
  LOBYTE(v71) = *a1;
  (*(*v17 + 224))(&aBlock, &v71);
  v19 = aBlock;
  if (aBlock == 5)
  {
    if (qword_27F469418 != -1)
    {
      swift_once();
    }

    v20 = sub_2519AEAE8();
    __swift_project_value_buffer(v20, qword_27F469690);
    v21 = sub_2519AEAC8();
    v22 = sub_2519AEF58();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446722;
      v25 = sub_2519AF2A8();
      v27 = sub_251978CDC(v25, v26, &aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_251978CDC(0xD000000000000035, 0x80000002519B3210, &aBlock);
      *(v23 + 22) = 2080;
      LOBYTE(v71) = v18;
      v28 = sub_2519AEE58();
      v30 = sub_251978CDC(v28, v29, &aBlock);

      *(v23 + 24) = v30;
      _os_log_impl(&dword_251974000, v21, v22, "[%{public}s.%{public}s]: No stage after %s, finishing", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v24, -1, -1);
      MEMORY[0x2530898E0](v23, -1, -1);
    }

    v73 = v18;
    v31 = *(*v17 + 184);
    v32 = v31(&aBlock);
    v71 = aBlock;
    v72 = v64;
    if (v18 == 3)
    {
      v54 = (v61 & 1) == 0;
    }

    else
    {
      if (v18 != 1 || ((v31)(&v69, v32), (v70 & 1) != 0))
      {
        v33 = 1;
LABEL_20:
        sub_2519776EC(&v73, &v71, v33);
        sub_25197EFBC(1, 1, a3, a4);
        return;
      }

      v54 = v69 == 0;
    }

    v33 = v54;
    goto LABEL_20;
  }

  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v57 = v9;
  v34 = sub_2519AEAE8();
  __swift_project_value_buffer(v34, qword_27F469690);
  v35 = sub_2519AEAC8();
  v36 = sub_2519AEF18();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v37 = 136446978;
    v38 = sub_2519AF2A8();
    v40 = sub_251978CDC(v38, v39, &aBlock);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_251978CDC(0xD000000000000035, 0x80000002519B3210, &aBlock);
    *(v37 + 22) = 2080;
    LOBYTE(v71) = v18;
    v41 = sub_2519AEE58();
    v43 = sub_251978CDC(v41, v42, &aBlock);

    *(v37 + 24) = v43;
    *(v37 + 32) = 2080;
    LOBYTE(v71) = v19;
    v44 = sub_2519AEE58();
    v46 = sub_251978CDC(v44, v45, &aBlock);

    *(v37 + 34) = v46;
    _os_log_impl(&dword_251974000, v35, v36, "[%{public}s.%{public}s]: Transitioning from %s to %s", v37, 0x2Au);
    v47 = v56;
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v47, -1, -1);
    MEMORY[0x2530898E0](v37, -1, -1);
  }

  sub_25197FBF8();
  v48 = sub_2519AF038();
  v49 = swift_allocObject();
  v50 = v62;
  *(v49 + 16) = v62;
  *(v49 + 24) = v19;
  *(v49 + 25) = v18;
  *(v49 + 26) = v61 & 1;
  v67 = sub_25197FFD0;
  v68 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_2519839F0;
  v66 = &block_descriptor_54;
  v51 = _Block_copy(&aBlock);
  v52 = v50;

  sub_2519AED68();
  aBlock = MEMORY[0x277D84F90];
  sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();
  v53 = v57;
  sub_2519AF108();
  MEMORY[0x253089080](0, v16, v12, v51);
  _Block_release(v51);

  (*(v60 + 8))(v12, v53);
  (*(v58 + 8))(v16, v59);
}

void sub_25197D098(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;

  v8 = sub_2519AEE28();

  v37 = sub_25197FF50;
  v38 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_251977C0C;
  v36 = &block_descriptor_42;
  v9 = _Block_copy(&aBlock);

  v10 = objc_opt_self();
  v30 = a4;
  v11 = [v10 actionWithTitle:v8 style:0 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  v31 = v11;
  sub_2519AE4D8();
  sub_2519AE4D8();
  v12 = sub_2519AEE28();

  v13 = sub_2519AEE28();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:{0, 0xE000000000000000}];

  sub_2519AE4D8();
  v15 = swift_allocObject();
  *(v15 + 16) = v30;
  *(v15 + 24) = a5;

  v16 = sub_2519AEE28();

  v37 = sub_25197FF90;
  v38 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_251977C0C;
  v36 = &block_descriptor_48;
  v17 = _Block_copy(&aBlock);

  v18 = [v10 actionWithTitle:v16 style:1 handler:{v17, 0xE000000000000000}];
  _Block_release(v17);

  [v14 addAction_];
  if (v31)
  {
    [v14 addAction_];
  }

  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v19 = sub_2519AEAE8();
  __swift_project_value_buffer(v19, qword_27F469690);
  v20 = sub_2519AEAC8();
  v21 = sub_2519AEF58();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446722;
    v24 = sub_2519AF2A8();
    v26 = sub_251978CDC(v24, v25, &aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_251978CDC(0xD000000000000038, 0x80000002519B31D0, &aBlock);
    *(v22 + 22) = 2082;
    v27 = sub_2519AEE58();
    v29 = sub_251978CDC(v27, v28, &aBlock);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_251974000, v20, v21, "[%{public}s.%{public}s]: Showing warning due to reason %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v23, -1, -1);
    MEMORY[0x2530898E0](v22, -1, -1);
  }

  [a2 presentViewController:v14 animated:1 completion:0];
}

uint64_t sub_25197D65C()
{
  v0 = [objc_opt_self() internalPrivacySettingsURLString];
  sub_2519AEE38();

  MEMORY[0x253088EC0](0x4E4F49544F4D2FLL, 0xE700000000000000);
  sub_2519AEE68();
}

void sub_25197D6FC(_BYTE *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (*a1 <= 1u)
  {
    if (!*a1)
    {

      sub_25197D098(ObjectType, a2, v6, sub_25197DC20, 0);
      return;
    }

    if (qword_27F469440 == -1)
    {
      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  if (*a1 != 2)
  {
    if (qword_27F469418 != -1)
    {
      swift_once();
    }

    v7 = sub_2519AEAE8();
    __swift_project_value_buffer(v7, qword_27F469690);
    v8 = sub_2519AEAC8();
    v9 = sub_2519AEF48();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136446722;
      v12 = sub_2519AF2A8();
      v14 = sub_251978CDC(v12, v13, &v32);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_251978CDC(0xD00000000000002BLL, 0x80000002519B30C0, &v32);
      *(v10 + 22) = 2082;
      v15 = sub_2519AEE58();
      v17 = sub_251978CDC(v15, v16, &v32);

      *(v10 + 24) = v17;
      _os_log_impl(&dword_251974000, v8, v9, "[%{public}s.%{public}s]: Handling notification authorization cannot progress reason %{public}s where it should have been handled in a separate pathway.", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v11, -1, -1);
      MEMORY[0x2530898E0](v10, -1, -1);
    }

    if (qword_27F469440 != -1)
    {
      swift_once();
    }

    goto LABEL_17;
  }

  if (qword_27F469440 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v18 = sub_2519AE4D8();
  v20 = v19;
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v21 = sub_2519AEAE8();
  __swift_project_value_buffer(v21, qword_27F469690);
  v22 = sub_2519AEAC8();
  v23 = sub_2519AEF58();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136446722;
    v26 = sub_2519AF2A8();
    v28 = sub_251978CDC(v26, v27, &v32);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_251978CDC(0xD00000000000002BLL, 0x80000002519B30C0, &v32);
    *(v24 + 22) = 2082;
    v29 = sub_2519AEE58();
    v31 = sub_251978CDC(v29, v30, &v32);

    *(v24 + 24) = v31;
    _os_log_impl(&dword_251974000, v22, v23, "[%{public}s.%{public}s]: Showing blocking alert due to reason %{public}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v25, -1, -1);
    MEMORY[0x2530898E0](v24, -1, -1);
  }

  sub_25197FD84(v18, v20, a2);
}

void sub_25197DC48(void *a1)
{
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();
  v1 = sub_2519AEE28();

  v2 = sub_2519AEE28();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_2519AE4D8();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_2519AEE28();

  v18 = sub_25197FEF8;
  v19 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_251977C0C;
  v17 = &block_descriptor_32;
  v6 = _Block_copy(&aBlock);

  v7 = objc_opt_self();
  v12 = [v7 actionWithTitle:v5 style:1 handler:{v6, 0xE000000000000000}];
  _Block_release(v6);

  sub_2519AE4D8();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_2519AEE28();

  v18 = sub_25197FF00;
  v19 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_251977C0C;
  v17 = &block_descriptor_36;
  v10 = _Block_copy(&aBlock);

  v11 = [v7 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  [v3 addAction_];
  [v3 addAction_];
  [v3 setPreferredAction_];
  [a1 presentViewController:v3 animated:1 completion:0];
}

void *sub_25197E08C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2519AE988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2519AE9A8();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2519AE978();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v23 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    (*(v12 + 104))(v19, *MEMORY[0x277D11170], v11);
    (*(v3 + 104))(v6, *MEMORY[0x277D11180], v2);
    (*(v12 + 16))(v16, v19, v11);
    sub_2519AE998();
    v21 = sub_2519AE7B8();
    v22 = sub_2519AE7A8();
    v25[3] = v21;
    v25[4] = MEMORY[0x277D10CD0];
    v25[0] = v22;
    sub_25197FF08(&qword_27F469740, MEMORY[0x277D11188], MEMORY[0x277D11150]);
    sub_2519AE7F8();
    (*(v24 + 8))(v10, v7);
    (*(v12 + 8))(v19, v11);
    return __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  return result;
}

uint64_t sub_25197E3C0(uint64_t a1, uint64_t a2)
{
  v32 = sub_2519AE7D8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2519AE988();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2519AE9A8();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2519AE978();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    (*(v15 + 104))(v22, *MEMORY[0x277D11158], v14);
    (*(v6 + 104))(v9, *MEMORY[0x277D11180], v29);
    (*(v15 + 16))(v19, v22, v14);
    sub_2519AE998();
    v24 = sub_2519AE7B8();
    v25 = sub_2519AE7A8();
    v33[3] = v24;
    v33[4] = MEMORY[0x277D10CD0];
    v33[0] = v25;
    sub_25197FF08(&qword_27F469740, MEMORY[0x277D11188], MEMORY[0x277D11150]);
    v26 = v31;
    sub_2519AE7F8();
    (*(v30 + 8))(v13, v26);
    (*(v15 + 8))(v22, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  v27 = v32;
  (*(v2 + 104))(v5, *MEMORY[0x277D10CD8], v32);
  sub_2519AE7C8();
  return (*(v2 + 8))(v5, v27);
}

uint64_t sub_25197E7B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = *&v5[OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_model];
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v6;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = ObjectType;
  v15 = *(*v13 + 240);

  v16 = v6;
  v17 = a2;
  v15(a1, sub_25197FD68, v14);
}

uint64_t sub_25197E8AC(char a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v66 = a7;
  v67 = a5;
  v13 = sub_2519AED48();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2519AED78();
  v20 = MEMORY[0x28223BE20](v18, v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v62 = v21;
    v63 = v20;
    v64 = v14;
    v65 = a4;
    v61 = a6;
    if (a2)
    {
      v25 = a2;
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v26 = sub_2519AEAE8();
      __swift_project_value_buffer(v26, qword_27F469690);
      v27 = a2;
      v28 = sub_2519AEAC8();
      v29 = sub_2519AEF38();

      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_14;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = a3;
      v32 = v31;
      aBlock[0] = v31;
      *v30 = 136446722;
      v33 = sub_2519AF2A8();
      v35 = sub_251978CDC(v33, v34, aBlock);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_251978CDC(0xD00000000000004CLL, 0x80000002519B2F20, aBlock);
      *(v30 + 22) = 2082;
      v68 = a2;
      v36 = a2;
      sub_2519786DC();
      v37 = sub_2519AEE58();
      v39 = sub_251978CDC(v37, v38, aBlock);

      *(v30 + 24) = v39;
      _os_log_impl(&dword_251974000, v28, v29, "[%{public}s.%{public}s]: Attempted to complete onboarding but received error: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      v40 = v32;
      a3 = v60;
      MEMORY[0x2530898E0](v40, -1, -1);
      MEMORY[0x2530898E0](v30, -1, -1);
    }

    else
    {
      if (qword_27F469418 != -1)
      {
        swift_once();
      }

      v41 = sub_2519AEAE8();
      __swift_project_value_buffer(v41, qword_27F469690);
      v28 = sub_2519AEAC8();
      v42 = sub_2519AEF38();
      if (os_log_type_enabled(v28, v42))
      {
        v43 = swift_slowAlloc();
        v44 = a3;
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v43 = 136446466;
        v46 = sub_2519AF2A8();
        v48 = sub_251978CDC(v46, v47, aBlock);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_251978CDC(0xD00000000000004CLL, 0x80000002519B2F20, aBlock);
        _os_log_impl(&dword_251974000, v28, v42, "[%{public}s.%{public}s]: Attempted to complete onboarding but received error: UNKNOWN", v43, 0x16u);
        swift_arrayDestroy();
        v49 = v45;
        a3 = v44;
        MEMORY[0x2530898E0](v49, -1, -1);
        MEMORY[0x2530898E0](v43, -1, -1);
      }
    }

LABEL_14:
    sub_25197FBF8();
    v50 = sub_2519AF038();
    v51 = swift_allocObject();
    v52 = v66;
    v53 = v67;
    v54 = v61;
    v51[2] = v67;
    v51[3] = v54;
    v51[4] = v52;
    aBlock[4] = sub_25197FD78;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519839F0;
    aBlock[3] = &block_descriptor_26;
    v55 = _Block_copy(aBlock);
    v56 = v53;
    v57 = v54;

    sub_2519AED68();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v23, v17, v55);
    _Block_release(v55);

    (*(v64 + 8))(v17, v13);
    (*(v62 + 8))(v23, v63);
    v24 = 0;
    return a3(v24);
  }

  v24 = 1;
  return a3(v24);
}

uint64_t sub_25197EEF4(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  v4 = sub_2519AE4D8();
  sub_25197FD84(v4, v5, a2);
}

void sub_25197EFBC(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  LODWORD(v5) = a2;
  swift_getObjectType();
  v7 = sub_2519AED48();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2519AED78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v15 = sub_2519AEAE8();
  __swift_project_value_buffer(v15, qword_27F469690);
  v16 = sub_2519AEAC8();
  v17 = sub_2519AEF18();
  if (!os_log_type_enabled(v16, v17))
  {

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v18 = swift_slowAlloc();
  v43 = v5;
  v5 = v18;
  v42 = swift_slowAlloc();
  aBlock[0] = v42;
  *v5 = 136446466;
  v19 = sub_2519AF2A8();
  v21 = sub_251978CDC(v19, v20, aBlock);
  v41 = v16;
  v22 = a4;
  v23 = v12;
  v24 = v10;
  v25 = v11;
  v26 = v7;
  v27 = a1;
  v28 = v21;

  *(v5 + 4) = v28;
  LOBYTE(v28) = v27;
  v7 = v26;
  v11 = v25;
  v10 = v24;
  v12 = v23;
  a4 = v22;
  *(v5 + 12) = 2082;
  *(v5 + 14) = sub_251978CDC(0xD000000000000035, 0x80000002519B2EE0, aBlock);
  v29 = v17;
  v30 = v41;
  _os_log_impl(&dword_251974000, v41, v29, "[%{public}s.%{public}s]: Onboarding finished", v5, 0x16u);
  v31 = v42;
  swift_arrayDestroy();
  MEMORY[0x2530898E0](v31, -1, -1);
  v32 = v5;
  LOBYTE(v5) = v43;
  MEMORY[0x2530898E0](v32, -1, -1);

  if (v28)
  {
LABEL_7:
    sub_25197FBF8();
    v33 = sub_2519AF038();
    v34 = swift_allocObject();
    v36 = v45;
    v35 = v46;
    *(v34 + 16) = v45;
    *(v34 + 24) = v5 & 1;
    *(v34 + 32) = v35;
    *(v34 + 40) = a4;
    aBlock[4] = sub_25197FC44;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519839F0;
    aBlock[3] = &block_descriptor_0;
    v37 = _Block_copy(aBlock);
    v38 = v36;
    sub_25197FC6C(v35, a4);

    v39 = v47;
    sub_2519AED68();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25197FF08(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_25197FD04(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v39, v10, v37);
    _Block_release(v37);

    (*(v44 + 8))(v10, v7);
    (*(v12 + 8))(v39, v11);
  }
}

uint64_t sub_25197F474(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_25197FD04(0, &qword_27F469730, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = a1 + OBJC_IVAR____TtC16HealthMobilityUI38WalkingSteadinessOnboardingCoordinator_rootViewController;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v16 = HKMobilityWalkingSteadinessDetailRoomURL();
    sub_2519AE588();

    v17 = sub_2519AE598();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    (*(v14 + 40))(a2 & 1, v11, a3, a4, ObjectType, v14);
    swift_unknownObjectRelease();
    return sub_25198001C(v11, &qword_27F469730, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_25197FD04);
  }

  return result;
}

id WalkingSteadinessOnboardingCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalkingSteadinessOnboardingCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25197F770()
{
  swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v0 = sub_2519AEAE8();
  __swift_project_value_buffer(v0, qword_27F469690);
  v1 = sub_2519AEAC8();
  v2 = sub_2519AEF58();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_2519AF2A8();
    v7 = sub_251978CDC(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_251978CDC(0xD00000000000002ELL, 0x80000002519B3250, &v8);
    _os_log_impl(&dword_251974000, v1, v2, "[%{public}s.%{public}s]: User pressed cancel button", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v4, -1, -1);
    MEMORY[0x2530898E0](v3, -1, -1);
  }

  sub_25197EFBC(1, 0, 0, 0);
}

void sub_25197F928()
{
  swift_getObjectType();
  if (qword_27F469418 != -1)
  {
    swift_once();
  }

  v0 = sub_2519AEAE8();
  __swift_project_value_buffer(v0, qword_27F469690);
  v1 = sub_2519AEAC8();
  v2 = sub_2519AEF18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_2519AF2A8();
    v7 = sub_251978CDC(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_251978CDC(0xD000000000000025, 0x80000002519B32B0, &v8);
    _os_log_impl(&dword_251974000, v1, v2, "[%{public}s.%{public}s]: User dismissed modal view", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v4, -1, -1);
    MEMORY[0x2530898E0](v3, -1, -1);
  }

  sub_25197EFBC(0, 0, 0, 0);
}

unint64_t sub_25197FBF8()
{
  result = qword_280DD9200;
  if (!qword_280DD9200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DD9200);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25197FC6C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25197FC7C()
{
  result = qword_280DD9220;
  if (!qword_280DD9220)
  {
    sub_25197FD04(255, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD9220);
  }

  return result;
}

void sub_25197FD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25197FD84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2519AEE28();
  v7 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:1];

  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v5 = sub_2519AEE28();

  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:{0, 0xE000000000000000}];

  [v7 addAction_];
  [a3 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_25197FF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25197FFD0()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v3 = v1;
  sub_25197B66C(&v4, &v3, v2);
}

uint64_t sub_25198001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_25198007C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_25197D6FC(&v3, v1, v2);
}

uint64_t sub_2519800F8(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

void sub_25198012C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 24);
  sub_25197C92C(&v2, v1, 0, 0);
}

void sub_251980184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251980218()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F4697C0);
  v1 = __swift_project_value_buffer(v0, qword_27F4697C0);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2519802E0(uint64_t a1, uint64_t *a2)
{
  sub_251980888(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_251980988(v6, v3 + v4);
  swift_endAccess();
  sub_251980368();
  return sub_251981074(v6, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
}

void sub_251980368()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_251980888(&v0[v1], &v28);
  if (*(&v29 + 1))
  {
    sub_25198112C(0, &qword_27F4697E8, MEMORY[0x277D10D48], 1);
    sub_25198112C(0, &qword_27F4698D0, &protocol descriptor for PickerTableViewCellSource, 0);
    if (swift_dynamicCast())
    {
      v2 = v25;
      v3 = *&v0[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView];
      ObjectType = swift_getObjectType();
      [v3 setDelegate_];
      [v3 setDataSource_];
      [v3 reloadAllComponents];
      v5 = (*(v26 + 8))(ObjectType, v26);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = (v5 + 40);
        do
        {
          [v3 selectRow:*(v7 - 1) inComponent:*v7 animated:0];
          v7 += 2;
          --v6;
        }

        while (v6);
      }

      sub_251980888(&v0[v1], &v25);
      if (v27)
      {
        sub_25198112C(0, &unk_27F4698E0, MEMORY[0x277D11118], 1);
        if (swift_dynamicCast())
        {
          if (*(&v29 + 1))
          {
            __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
            v8 = sub_2519AE968();
            v10 = v9;
            __swift_destroy_boxed_opaque_existential_0Tm(&v28);
            v11 = v8;
            goto LABEL_19;
          }
        }

        else
        {
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
        }
      }

      else
      {
        sub_251981074(&v25, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0;
      }

      sub_251981074(&v28, &qword_27F4698D8, &unk_27F4698E0, MEMORY[0x277D11118]);
      v11 = 0;
      v10 = 0;
LABEL_19:
      sub_251980B5C(v11, v10);

      if ([v2 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        [v2 pickerView:v3 didSelectRow:objc_msgSend(v3 inComponent:{sel_selectedRowInComponent_, 0), 0}];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }
  }

  else
  {
    sub_251981074(&v28, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
  }

  if (qword_27F469420 != -1)
  {
    swift_once();
  }

  v12 = sub_2519AEAE8();
  __swift_project_value_buffer(v12, qword_27F4697C0);
  v13 = v0;
  v14 = sub_2519AEAC8();
  v15 = sub_2519AEF38();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v28 = v17;
    *v16 = 136446722;
    v18 = sub_2519AF2A8();
    v20 = sub_251978CDC(v18, v19, &v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_251978CDC(1835365481, 0xE400000000000000, &v28);
    *(v16 + 22) = 2082;
    sub_2519810D0(0, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
    v25 = v21;
    sub_251981014();
    v22 = sub_2519AEE58();
    v24 = sub_251978CDC(v22, v23, &v28);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_251974000, v14, v15, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to PickerTableViewCellSource", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530898E0](v17, -1, -1);
    MEMORY[0x2530898E0](v16, -1, -1);
  }
}

uint64_t sub_251980830@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_251980888(v1 + v3, a1);
}

uint64_t sub_251980888(uint64_t a1, uint64_t a2)
{
  sub_2519810D0(0, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251980904(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_251980988(a1, v1 + v3);
  swift_endAccess();
  sub_251980368();
  return sub_251981074(a1, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
}

uint64_t sub_251980988(uint64_t a1, uint64_t a2)
{
  sub_2519810D0(0, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_251980A04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_251980A68;
}

void sub_251980A68(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_251980368();
  }
}

void sub_251980B5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView);
    sub_251980C7C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2519B08A0;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    *(v6 + 48) = 0x72656B636950;
    *(v6 + 56) = 0xE600000000000000;

    v7 = sub_2519AEEB8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView);

    [v8 setAccessibilityIdentifier_];
  }
}

void sub_251980C7C()
{
  if (!qword_27F4697F8)
  {
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4697F8);
    }
  }
}

id PickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_251980EAC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277D75840]) init];
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView] = v5;
  if (a2)
  {
    v6 = sub_2519AEE28();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for PickerTableViewCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, 0, v6);

  v8 = OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView;
  v9 = *&v7[OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_pickerView];
  v10 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = *&v7[v8];
  v13 = [v10 contentView];

  [v12 hk:v13 alignConstraintsWithView:?];
  return v10;
}

unint64_t sub_251981014()
{
  result = qword_27F4698C8;
  if (!qword_27F4698C8)
  {
    sub_2519810D0(255, &qword_27F4697E0, &qword_27F4697E8, MEMORY[0x277D10D48]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4698C8);
  }

  return result;
}

uint64_t sub_251981074(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2519810D0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2519810D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25198112C(255, a3, a4, 1);
    v5 = sub_2519AF0E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25198112C(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t WeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251981334();
  return sub_2519AE888();
}

unint64_t sub_251981334()
{
  result = qword_27F4698F0;
  if (!qword_27F4698F0)
  {
    type metadata accessor for TitleValueTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4698F0);
  }

  return result;
}

uint64_t WeightItem.uniqueIdentifier.getter()
{
  sub_251981444();
  v1 = sub_2519AEE58();
  v2 = *v0;
  sub_25198148C(0);
  v3 = v2;
  v4 = sub_2519AEE58();
  v6 = v5;

  MEMORY[0x253088EC0](v4, v6);

  return v1;
}

unint64_t sub_251981444()
{
  result = qword_27F4698F8;
  if (!qword_27F4698F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4698F8);
  }

  return result;
}

void sub_25198148C(uint64_t a1)
{
  if (!qword_27F469900)
  {
    sub_2519814E4();
    v1 = sub_2519AF0E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469900);
    }
  }
}

unint64_t sub_2519814E4()
{
  result = qword_27F469908;
  if (!qword_27F469908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469908);
  }

  return result;
}

uint64_t WeightItem.baseIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WeightItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WeightItem.init(weight:valueFormatter:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[6] = 0;
  a3[7] = 0;
  *a3 = a1;
  return sub_251975F90(a2, (a3 + 1));
}

uint64_t sub_2519815D0()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251981334();
  return sub_2519AE888();
}

uint64_t sub_251981608()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_251981638(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_251981690(uint64_t a1)
{
  sub_251981444();
  v2 = sub_2519AEE58();
  v3 = *v1;
  sub_25198148C(0);
  v4 = v3;
  v5 = sub_2519AEE58();
  v7 = v6;

  MEMORY[0x253088EC0](v5, v7);

  return v2;
}

uint64_t sub_251981740(uint64_t a1)
{
  v2 = sub_251981AC4();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t WeightItem.title.getter()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t WeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 0;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
  }

  else
  {
    if (qword_27F469438 != -1)
    {
      swift_once();
    }

    return sub_2519AE4D8();
  }
}

uint64_t sub_251981920()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

unint64_t sub_2519819B4()
{
  result = qword_27F469910;
  if (!qword_27F469910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469910);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251981A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251981A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251981AC4()
{
  result = qword_27F469918;
  if (!qword_27F469918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469918);
  }

  return result;
}

uint64_t sub_251981B18()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469920);
  v1 = __swift_project_value_buffer(v0, qword_27F469920);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_251981C04()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 dateOfBirthComponentsWithError_];
  v2 = v6[0];
  if (v1)
  {
    v3 = v1;
    sub_2519AE4B8();
    v4 = v2;
  }

  else
  {
    v5 = v6[0];
    sub_2519AE568();

    swift_willThrow();
  }
}

id sub_251981D20(SEL *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2519AE568();

    swift_willThrow();
  }

  return v2;
}

id sub_251981DF8(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - v6;
  sub_251982240(a1, v14 - v6);
  v8 = sub_2519AE4C8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_2519AE4A8();
    (*(v9 + 8))(v7, v8);
  }

  v14[0] = 0;
  v11 = [v2 _setDateOfBirthComponents_error_];

  if (v11)
  {
    return v14[0];
  }

  v13 = v14[0];
  sub_2519AE568();

  return swift_willThrow();
}

id sub_251982010(uint64_t a1, SEL *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([v2 *a2])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_2519AE568();

  return swift_willThrow();
}

uint64_t ConfirmDetailsProvider.Details.init(dateOfBirthComponents:weight:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2519AE4C8();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v10 = *(v9 + 20);
  v11 = *(v9 + 24);
  result = sub_2519821A0(a1, a4);
  *(a4 + v10) = a2;
  *(a4 + v11) = a3;
  return result;
}

uint64_t type metadata accessor for ConfirmDetailsProvider.Details(uint64_t a1)
{
  result = qword_27F469970;
  if (!qword_27F469970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2519821A0(uint64_t a1, uint64_t a2)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251982240(uint64_t a1, uint64_t a2)
{
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ConfirmDetailsProvider.Details.weight.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 20));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.weight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 20);

  *(v1 + v3) = a1;
}

void *ConfirmDetailsProvider.Details.height.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 24));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.height.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 24);

  *(v1 + v3) = a1;
}

BOOL sub_251982500(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_251982530@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25198255C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_251982638@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_251982690()
{
  sub_251984BB0(0);
  sub_25198585C(&qword_27F469948, sub_251984BB0, MEMORY[0x277CBCE48]);
  return sub_2519AECF8();
}

uint64_t ConfirmDetailsProvider.__allocating_init(source:dateGenerator:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_251984CAC(a1, a2, a3);

  return v6;
}

uint64_t ConfirmDetailsProvider.init(source:dateGenerator:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_251984CAC(a1, a2, a3);

  return v3;
}

uint64_t sub_2519827AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v26 = a2;
  v27 = v6;
  v7 = sub_2519AED48();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2519AED78();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v28 = v3[9];
  sub_25198504C(a1, &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v21[2] = v26;
  v21[3] = a3;
  v21[4] = v19;
  v21[5] = v3;
  sub_2519850B0(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  *(v21 + ((v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_251985114;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_1;
  v22 = _Block_copy(aBlock);

  sub_2519AED68();
  v32 = MEMORY[0x277D84F90];
  sub_25198585C(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v23 = MEMORY[0x277D85198];
  sub_251984C48(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2519858A4(&qword_280DD9220, &unk_280DD9230, v23);
  sub_2519AF108();
  MEMORY[0x253089080](0, v14, v10, v22);
  _Block_release(v22);
  (*(v31 + 8))(v10, v7);
  (*(v29 + 8))(v14, v30);
}

uint64_t sub_251982BA4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27F469428 != -1)
  {
    swift_once();
  }

  v9 = sub_2519AEAE8();
  __swift_project_value_buffer(v9, qword_27F469920);

  v10 = sub_2519AEAC8();
  v11 = sub_2519AEF58();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a3;
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136446722;
    v14 = sub_2519AF2A8();
    v16 = sub_251978CDC(v14, v15, v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_251978CDC(0xD00000000000001FLL, 0x80000002519B3600, v20);
    *(v12 + 22) = 2082;
    *(v12 + 24) = sub_251978CDC(a1, a2, v20);
    _os_log_impl(&dword_251974000, v10, v11, "[%{public}s.%{public}s]: Saving changes to characteristic %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    v17 = v13;
    a3 = v19;
    MEMORY[0x2530898E0](v17, -1, -1);
    MEMORY[0x2530898E0](v12, -1, -1);
  }

  return a3();
}

void sub_251982F88(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a5;
  v74 = a6;
  v75 = a3;
  v76 = a2;
  v77 = a1;
  v7 = sub_2519AE4C8();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v71 = &v68 - v13;
  sub_2519856B4(0);
  v15 = v14;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251984C48(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, v10);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v68 - v21;
  v23 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = 0;
  v28 = a4;

  sub_2519AECB8();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_251985644(v22, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
    if (qword_27F469428 != -1)
    {
      swift_once();
    }

    v29 = sub_2519AEAE8();
    __swift_project_value_buffer(v29, qword_27F469920);
    v30 = sub_2519AEAC8();
    v31 = sub_2519AEF48();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80[0] = v33;
      *v32 = 136446466;
      v34 = sub_2519AF2A8();
      v36 = sub_251978CDC(v34, v35, v80);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_251978CDC(0xD000000000000021, 0x80000002519B35D0, v80);
      _os_log_impl(&dword_251974000, v30, v31, "[%{public}s.%{public}s]: Attempted to save new details before we received our first set of details.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v33, -1, -1);
      MEMORY[0x2530898E0](v32, -1, -1);
    }

    v37 = v75;
    swift_beginAccess();
    v38 = *(v37 + 16);
    goto LABEL_29;
  }

  sub_2519850B0(v22, v27);
  v39 = *(v15 + 48);
  v69 = v27;
  sub_251982240(v27, v18);
  sub_251982240(v73, &v18[v39]);
  v40 = v72;
  v41 = *(v72 + 48);
  if (v41(v18, 1, v7) == 1)
  {
    v42 = v41(&v18[v39], 1, v7);
    v43 = a4;
    v45 = v73;
    v44 = v74;
    if (v42 == 1)
    {
      v46 = sub_251985644(v18, &qword_27F469938, MEMORY[0x277CC8990]);
      v48 = v75;
      v49 = v69;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v50 = v71;
  sub_251982240(v18, v71);
  v43 = v28;
  if (v41(&v18[v39], 1, v7) == 1)
  {
    (*(v40 + 8))(v50, v7);
    v45 = v73;
    v44 = v74;
LABEL_12:
    v46 = sub_2519857B4(v18, sub_2519856B4);
    v48 = v75;
    v49 = v69;
LABEL_13:
    MEMORY[0x28223BE20](v46, v47);
    *(&v68 - 4) = v43;
    *(&v68 - 3) = v45;
    *(&v68 - 2) = &v81;
    v46 = sub_251982BA4(0x20666F2065746144, 0xED00006874726942, sub_251985754, (&v68 - 6), v48, v44);
    goto LABEL_14;
  }

  v65 = v70;
  (*(v40 + 32))(v70, &v18[v39], v7);
  sub_25198585C(&qword_27F469988, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v66 = sub_2519AEE18();
  v67 = *(v40 + 8);
  v67(v65, v7);
  v67(v50, v7);
  v46 = sub_251985644(v18, &qword_27F469938, MEMORY[0x277CC8990]);
  v44 = v74;
  v48 = v75;
  v45 = v73;
  v49 = v69;
  if ((v66 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v51 = *(v23 + 20);
  v52 = *(v49 + v51);
  v53 = *(v45 + v51);
  if (!v52)
  {
    if (!v53)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v53 || (sub_251985814(0, &qword_27F469908, 0x277CCD7E8), v54 = v53, v55 = v52, v56 = sub_2519AF0C8(), v55, v54, (v56 & 1) == 0))
  {
LABEL_19:
    MEMORY[0x28223BE20](v46, v47);
    *(&v68 - 4) = v43;
    *(&v68 - 3) = v45;
    *(&v68 - 2) = &v81;
    v46 = sub_251982BA4(0x746867696557, 0xE600000000000000, sub_251985774, (&v68 - 6), v48, v44);
  }

LABEL_20:
  v57 = *(v23 + 24);
  v58 = *(v49 + v57);
  v59 = *(v45 + v57);
  if (v58)
  {
    if (v59)
    {
      sub_251985814(0, &qword_27F469908, 0x277CCD7E8);
      v60 = v59;
      v61 = v58;
      v62 = sub_2519AF0C8();

      if (v62)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  if (v59)
  {
LABEL_25:
    MEMORY[0x28223BE20](v46, v47);
    *(&v68 - 4) = v43;
    *(&v68 - 3) = v45;
    *(&v68 - 2) = &v81;
    sub_251982BA4(0x746867696548, 0xE600000000000000, sub_251985794, (&v68 - 6), v48, v44);
  }

LABEL_26:
  if (v81)
  {
    sub_251983A34();
  }

  sub_2519857B4(v49, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_beginAccess();
  v38 = *(v48 + 16);
LABEL_29:
  v63 = v81;
  if (v38)
  {
    v63 = v38;
  }

  v78 = v63;
  v79 = v38 != 0;
  v64 = v38;
  v77(&v78);
  sub_251985748(v78, v79);
}

uint64_t sub_251983840(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  result = (*(v7 + 32))(a2, v6, v7);
  if (!v3 && (*a3 & 2) == 0)
  {
    *a3 |= 2uLL;
  }

  return result;
}

uint64_t sub_2519838C8(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  v8 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  result = (*(v7 + 40))(*(a2 + *(v8 + 20)), v6, v7);
  if (!v3 && (*a3 & 4) == 0)
  {
    *a3 |= 4uLL;
  }

  return result;
}

uint64_t sub_25198395C(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  v8 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  result = (*(v7 + 48))(*(a2 + *(v8 + 24)), v6, v7);
  if (!v3 && (*a3 & 8) == 0)
  {
    *a3 |= 8uLL;
  }

  return result;
}

uint64_t sub_2519839F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_251983A34()
{
  v1 = *v0;
  v2 = sub_2519AED48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2519AED78();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = v0[9];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2519855E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);

  sub_2519AED68();
  v17 = MEMORY[0x277D84F90];
  sub_25198585C(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v13 = MEMORY[0x277D85198];
  sub_251984C48(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2519858A4(&qword_280DD9220, &unk_280DD9230, v13);
  sub_2519AF108();
  MEMORY[0x253089080](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_25198420C(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_251984C48(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v27 - v5;
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], v2);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27 - v13;
  sub_251983D38(0x20666F2065746164, 0xED00006874726962, sub_2519855F0);
  v15 = sub_251983FBC(0x746867696568, 0xE600000000000000, sub_25198560C);
  v16 = sub_251983FBC(0x746867696577, 0xE600000000000000, sub_251985628);
  if (*(a1 + 96) == 1)
  {
    v17 = sub_2519AE4C8();
    v18 = (*(*(v17 - 8) + 48))(v14, 1, v17) != 1;
    if (v15)
    {
      v19 = (2 * v18) | 8;
    }

    else
    {
      v19 = 2 * v18;
    }

    if (v16)
    {
      v19 |= 4uLL;
    }

    *(a1 + 88) = v19;
    *(a1 + 96) = 0;
  }

  sub_251982240(v14, v11);
  v20 = sub_2519AE4C8();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v28 = v14;
  v23 = *(v21 + 20);
  v22 = *(v21 + 24);
  v24 = v15;

  v25 = v16;
  sub_2519821A0(v11, v6);
  *&v6[v23] = v16;
  *&v6[v22] = v15;
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  sub_2519AECA8();

  sub_251985644(v6, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details);
  return sub_251985644(v28, &qword_27F469938, MEMORY[0x277CC8990]);
}

uint64_t sub_251984598@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    v7 = sub_2519AE4C8();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_251984650@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2519846C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 24))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ConfirmDetailsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t ConfirmDetailsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 98, 7);
}

uint64_t _s16HealthMobilityUI22ConfirmDetailsProviderC0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2519AE4C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251984C48(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  sub_2519856B4(0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_251982240(a1, v17);
  sub_251982240(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_251982240(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_25198585C(&qword_27F469988, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v21 = sub_2519AEE18();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_251985644(v17, &qword_27F469938, MEMORY[0x277CC8990]);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_2519857B4(v17, sub_2519856B4);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251985644(v17, &qword_27F469938, MEMORY[0x277CC8990]);
LABEL_10:
  v23 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v24 = *(v23 + 20);
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    sub_251985814(0, &qword_27F469908, 0x277CCD7E8);
    v27 = v26;
    v28 = v25;
    v29 = sub_2519AF0C8();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v30 = *(v23 + 24);
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31)
  {
    if (v32)
    {
      sub_251985814(0, &qword_27F469908, 0x277CCD7E8);
      v33 = v32;
      v34 = v31;
      v35 = sub_2519AF0C8();

      if (v35)
      {
        return 1;
      }
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

void sub_251984BB0(uint64_t a1)
{
  if (!qword_27F469940)
  {
    sub_251984C48(255, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
    v1 = sub_2519AECC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469940);
    }
  }
}

void sub_251984C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251984CAC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  sub_251984C48(0, &qword_27F469658, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v23 = v21 - v6;
  v22 = sub_2519AF028();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2519AEFF8();
  MEMORY[0x28223BE20](v11, v12);
  v13 = sub_2519AED78();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = sub_251985814(0, &qword_280DD9200, 0x277D85C78);
  v21[0] = "setOrLog(characteristic:block:)";
  v21[1] = v15;
  sub_2519AED68();
  v27 = MEMORY[0x277D84F90];
  sub_25198585C(&qword_280DD9208, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v16 = MEMORY[0x277D85230];
  sub_251984C48(0, &qword_280DD9218, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2519858A4(&qword_280DD9210, &qword_280DD9218, v16);
  sub_2519AF108();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v22);
  *(v3 + 72) = sub_2519AF058();
  v17 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
  sub_251984BB0(0);
  swift_allocObject();
  *(v3 + 80) = sub_2519AECD8();
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;
  v18 = v24;
  sub_251979694(v24, v3 + 16);
  v19 = v26;
  *(v3 + 56) = v25;
  *(v3 + 64) = v19;

  sub_251983A34();
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v3;
}

uint64_t sub_25198504C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2519850B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251985114()
{
  v1 = *(type metadata accessor for ConfirmDetailsProvider.Details(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_251982F88(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2519851C4()
{
  result = qword_27F469950;
  if (!qword_27F469950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469950);
  }

  return result;
}

unint64_t sub_25198521C()
{
  result = qword_27F469958;
  if (!qword_27F469958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469958);
  }

  return result;
}

unint64_t sub_251985274()
{
  result = qword_27F469960;
  if (!qword_27F469960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469960);
  }

  return result;
}

unint64_t sub_2519852CC()
{
  result = qword_27F469968;
  if (!qword_27F469968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469968);
  }

  return result;
}

void sub_2519854D0(uint64_t a1)
{
  sub_251984C48(319, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25198148C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ConfirmDetailsProvider.DetailItems(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConfirmDetailsProvider.DetailItems(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_251985644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251984C48(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2519856B4(uint64_t a1)
{
  if (!qword_27F469980)
  {
    sub_251984C48(255, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F469980);
    }
  }
}

void sub_251985748(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2519857B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251985814(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25198585C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2519858A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251984C48(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id HKMobilityWalkingSteadinessFeatureStatusManager.makeFeatureStatusPublisher(queue:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() defaultCenter];
  *a2 = v2;
  a2[1] = v4;
  a2[2] = a1;
  v5 = v2;

  return a1;
}

uint64_t HKMobilityWalkingSteadinessFeatureStatusManager.FeatureStatusPublisher.init(featureStatusManager:notificationCenter:queue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t HKMobilityWalkingSteadinessFeatureStatusManager.FeatureStatusPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = _s22FeatureStatusPublisherV5InnerCMa(0, a2, a3, a4);
  v10 = sub_2519888C0(a1, v6, v7, v8);
  v12[3] = v9;
  v12[4] = swift_getWitnessTable();
  v12[0] = v10;
  sub_2519AEC68();
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_251985B50@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_2519AEAA8();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_251985C24(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_2519AEAA8();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_251985E14()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = sub_2519AED48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2519AED78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *(v0 + *((v2 & v1) + 0x80));
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = *((v2 & v1) + 0x50);
  v14[3] = *((v2 & v1) + 0x58);
  v14[4] = v13;
  aBlock[4] = sub_251988D94;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_29;
  v15 = _Block_copy(aBlock);

  sub_2519AED68();
  v17[1] = MEMORY[0x277D84F90];
  sub_251988FA8(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_251988D00(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();
  sub_2519AF108();
  MEMORY[0x253089080](0, v12, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_251986158()
{
  v1 = v0;
  v56[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v54 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v55 = v5;
  sub_2519AEA88();
  swift_getWitnessTable();
  v6 = sub_2519AF298();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v48 - v9;
  v11 = (v0 + *((v4 & v3) + 0x60));
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2519AE9D8();
  v12 = *(v1 + *((*v2 & *v1) + 0x70));
  v56[0] = 0;
  v13 = [v12 onboardingStatusWithError_];
  v14 = v56[0];
  if (v13)
  {
    v15 = *((*v2 & *v0) + 0x88);
    v16 = *(v0 + v15);
    *(v0 + v15) = v13;
    v17 = v13;
    v18 = v14;

    v56[0] = 0;
    v19 = [v12 notificationStatusWithError_];
    v20 = v56[0];
    if (v19)
    {
      v21 = *((*v2 & *v1) + 0x90);
      v22 = *(v1 + v21);
      *(v1 + v21) = v19;
      v23 = v19;
      v24 = v20;
      v25 = v23;

      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v26 = v17;
      v27 = v25;
      sub_2519AE9E8();
      v56[0] = v26;
      v56[1] = v27;
      _s22FeatureStatusPublisherV5InnerCMa(0, v55, v54, v28);
      swift_getWitnessTable();
      sub_2519AEA48();

      (*(v7 + 8))(v10, v6);
      return sub_251986708();
    }

    v53 = v6;
    v31 = v56[0];
    v30 = sub_2519AE568();

    swift_willThrow();
  }

  else
  {
    v53 = v6;
    v29 = v56[0];
    v30 = sub_2519AE568();

    swift_willThrow();
  }

  v52 = v7;
  if (qword_280DD9248 != -1)
  {
    swift_once();
  }

  v32 = sub_2519AEAE8();
  __swift_project_value_buffer(v32, qword_280DD9250);
  v33 = v1;
  v34 = v30;
  v35 = sub_2519AEAC8();
  v36 = sub_2519AEF38();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50 = v38;
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v37 = 138543618;
    *(v37 + 4) = v33;
    *v38 = v1;
    *(v37 + 12) = 2082;
    swift_getErrorValue();
    v49 = v36;
    v39 = v33;
    v40 = sub_2519AF238();
    v42 = sub_251978CDC(v40, v41, v56);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_251974000, v35, v49, "[%{public}@] Failed to create feature status: %{public}s", v37, 0x16u);
    v43 = v50;
    sub_251988B9C(v50);
    MEMORY[0x2530898E0](v43, -1, -1);
    v44 = v51;
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x2530898E0](v44, -1, -1);
    MEMORY[0x2530898E0](v37, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2519AE9E8();
  v56[0] = v30;
  v45 = v30;
  _s22FeatureStatusPublisherV5InnerCMa(0, v55, v54, v46);
  swift_getWitnessTable();
  sub_2519AEA58();

  (*(v52 + 8))(v10, v53);
  return sub_251986708();
}

uint64_t sub_251986708()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  v6 = *((*MEMORY[0x277D85000] & v3) + 0x58);
  v7 = sub_2519AEAA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - v10;
  __swift_project_boxed_opaque_existential_1((v1 + *((v4 & v3) + 0x60)), *(v1 + *((v4 & v3) + 0x60) + 24));
  sub_2519AE9D8();
  sub_251985B50(v11);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D11320])
  {
    (*(v8 + 96))(v11, v7);
    (*(*(v5 - 8) + 8))(v11, v5);
    [*(v1 + *((*v2 & *v1) + 0x70)) addObserver:v1 queue:*(v1 + *((*v2 & *v1) + 0x80))];
    v12 = *(v1 + *((*v2 & *v1) + 0x78));
    v13 = sub_2519AF078();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v14;
    aBlock[4] = sub_251988D64;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251986DBC;
    aBlock[3] = &block_descriptor_16;
    v16 = _Block_copy(aBlock);

    v17 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  return sub_251986A3C(v1);
}

uint64_t sub_251986A3C(void *a1)
{
  v1 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0x60));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_2519AE9E8();
}

void *sub_251986AA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2519AED48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2519AED78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17[1] = *(result + *((*MEMORY[0x277D85000] & *result) + 0x80));
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_251988D70;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519839F0;
    aBlock[3] = &block_descriptor_22;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    sub_2519AED68();
    v17[2] = MEMORY[0x277D84F90];
    sub_251988FA8(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_251988D00(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_25197FC7C();
    sub_2519AF108();
    MEMORY[0x253089080](0, v11, v6, v15);
    _Block_release(v15);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_251986DBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2519AE498();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_2519AE488();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void sub_251986EE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_251988DC8(v7);
}

void sub_251986F60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_251988EA0(v7);
}

uint64_t sub_251986FD8()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v38 = sub_2519AED38();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2519AED98();
  v35 = *(v37 - 8);
  v8 = MEMORY[0x28223BE20](v37, v7);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v34 = &v32 - v11;
  v12 = sub_2519AED48();
  MEMORY[0x28223BE20](v12, v13);
  if (qword_280DD9248 != -1)
  {
    swift_once();
  }

  v14 = sub_2519AEAE8();
  __swift_project_value_buffer(v14, qword_280DD9250);
  v15 = v0;
  v16 = sub_2519AEAC8();
  v17 = sub_2519AEF58();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v1;
    v20 = v15;
    _os_log_impl(&dword_251974000, v16, v17, "[%{public}@] Enqueuing send feature status", v18, 0xCu);
    sub_251988B9C(v19);
    v21 = v19;
    v2 = MEMORY[0x277D85000];
    MEMORY[0x2530898E0](v21, -1, -1);
    MEMORY[0x2530898E0](v18, -1, -1);
  }

  if (*(v15 + *((*v2 & *v15) + 0x98)))
  {

    sub_2519AEDB8();
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = *(v3 + 80);
  v23[3] = *(v3 + 88);
  v23[4] = v22;
  aBlock[4] = sub_251988CB4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2519839F0;
  aBlock[3] = &block_descriptor_2;
  _Block_copy(aBlock);
  v39 = MEMORY[0x277D84F90];
  sub_251988FA8(&qword_280DD9240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_251988D00(0, &unk_280DD9230, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25197FC7C();

  sub_2519AF108();
  sub_2519AEDC8();
  swift_allocObject();
  v24 = sub_2519AEDA8();

  *(v15 + *((*MEMORY[0x277D85000] & *v15) + 0x98)) = v24;

  v25 = v33;
  sub_2519AED88();
  *v6 = 100;
  v26 = v36;
  v27 = v38;
  (*(v36 + 104))(v6, *MEMORY[0x277D85178], v38);
  v28 = v34;
  MEMORY[0x253088E10](v25, v6);
  (*(v26 + 8))(v6, v27);
  v29 = *(v35 + 8);
  v30 = v37;
  v29(v25, v37);
  sub_2519AF008();

  return (v29)(v28, v30);
}

void sub_2519875A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

void sub_251987600()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v24 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2519AEA88();
  swift_getWitnessTable();
  v5 = sub_2519AF298();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  v10 = (v0 + *((v3 & v2) + 0x60));
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2519AE9D8();
  sub_25198793C(&v25);
  v11 = v25;
  if (v25)
  {
    v22 = v26;
    v23 = v4;
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_2519AE9E8();
    if (qword_280DD9248 != -1)
    {
      swift_once();
    }

    v12 = sub_2519AEAE8();
    __swift_project_value_buffer(v12, qword_280DD9250);
    v13 = v0;
    v14 = sub_2519AEAC8();
    v15 = sub_2519AEF58();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v1;
      v18 = v13;
      _os_log_impl(&dword_251974000, v14, v15, "[%{public}@] Sending feature status", v16, 0xCu);
      sub_251988B9C(v17);
      MEMORY[0x2530898E0](v17, -1, -1);
      MEMORY[0x2530898E0](v16, -1, -1);
    }

    v19 = v22;
    v25 = v11;
    v26 = v22;
    _s22FeatureStatusPublisherV5InnerCMa(0, v23, v24, v20);
    swift_getWitnessTable();
    sub_2519AEA48();
    (*(v6 + 8))(v9, v5);
    sub_251988C74(v11, v19);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_2519AE9E8();
  }
}

void sub_25198793C(void *a1@<X8>)
{
  v2 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  if (v2 && (v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90))) != 0)
  {
    *a1 = v2;
    a1[1] = v3;
    v6 = v3;
    v4 = v2;

    v5 = v6;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_2519879E8()
{
  v1 = v0;
  v45 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2519AEA88();
  swift_getWitnessTable();
  v5 = sub_2519AF298();
  v41 = *(v5 - 1);
  v42 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v40 = &v39 - v7;
  if (qword_280DD93D8 != -1)
  {
    swift_once();
  }

  v39 = sub_2519AEAE8();
  __swift_project_value_buffer(v39, qword_280DD93E0);
  v8 = v0;
  v9 = sub_2519AEAC8();
  v10 = sub_2519AEF58();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v1;
    *(v11 + 12) = 2082;
    v14 = v8;
    v2 = MEMORY[0x277D85000];
    *(v11 + 14) = sub_251978CDC(0xD000000000000028, 0x80000002519B3740, &v43);
    _os_log_impl(&dword_251974000, v9, v10, "[%{public}@.%{public}s] Notified that notification settings changed, updating downstream.", v11, 0x16u);
    sub_251988B9C(v12);
    MEMORY[0x2530898E0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2530898E0](v13, -1, -1);
    MEMORY[0x2530898E0](v11, -1, -1);
  }

  v15 = (v8 + *((*v2 & *v8) + 0x60));
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_2519AE9D8();
  v16 = *(v8 + *((*v2 & *v8) + 0x70));
  v43 = 0;
  v17 = [v16 notificationStatusWithError_];
  v18 = v43;
  if (v17)
  {
    v19 = *((*v2 & *v8) + 0x90);
    v20 = *(v8 + v19);
    *(v8 + v19) = v17;
    v21 = v18;

    sub_25198793C(&v43);
    v22 = v43;
    if (v43)
    {
      v23 = v44;
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_2519AE9E8();
      v43 = v22;
      v44 = v23;
      _s22FeatureStatusPublisherV5InnerCMa(0, v3, v4, v24);
      swift_getWitnessTable();
      v25 = v40;
      sub_2519AEA48();
      (*(v41 + 8))(v25, v42);
      sub_251988C74(v22, v23);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_2519AE9E8();
    }
  }

  else
  {
    v26 = v43;
    v27 = sub_2519AE568();

    swift_willThrow();
    if (qword_280DD9248 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v39, qword_280DD9250);
    v28 = v8;
    v29 = v27;
    v30 = sub_2519AEAC8();
    v31 = sub_2519AEF38();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v32 = 138543618;
      *(v32 + 4) = v28;
      *v33 = v1;
      *(v32 + 12) = 2082;
      swift_getErrorValue();
      v34 = v28;
      v35 = sub_2519AF238();
      v37 = sub_251978CDC(v35, v36, &v43);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_251974000, v30, v31, "[%{public}@] Failed to create feature status: %{public}s", v32, 0x16u);
      sub_251988B9C(v33);
      MEMORY[0x2530898E0](v33, -1, -1);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x2530898E0](v38, -1, -1);
      MEMORY[0x2530898E0](v32, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_2519AE9E8();
  }
}

id sub_251988008(void *a1)
{
  v1 = a1;
  sub_251988070();

  v2 = sub_2519AEE28();

  return v2;
}

uint64_t sub_251988070()
{
  MEMORY[0x253088EC0](60, 0xE100000000000000);
  MEMORY[0x253088EC0](0xD000000000000046, 0x80000002519B37B0);

  MEMORY[0x253088EC0](32, 0xE100000000000000);
  sub_2519AF188();
  MEMORY[0x253088EC0](62, 0xE100000000000000);
  return 0;
}

id sub_25198816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s22FeatureStatusPublisherV5InnerCMa(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2519881DC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  __swift_destroy_boxed_opaque_existential_0Tm(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_2519AEAA8();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
}

uint64_t (*sub_2519883A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_251985D00(v2);
  return sub_251988414;
}

void sub_251988414(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_25198845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s22FeatureStatusPublisherV5InnerCMa(0, *(a2 + 80), *(a2 + 88), a4);

  return sub_2519AEA48();
}

uint64_t sub_2519884BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s22FeatureStatusPublisherV5InnerCMa(0, *(a2 + 80), *(a2 + 88), a4);

  return sub_2519AEA58();
}

id sub_251988604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v6 = *v4;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & v6) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & v6) + 0x58);
  v11 = sub_2519AEAA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - v14;
  v16 = &v5[*((v8 & v6) + 0x60)];
  v17 = sub_2519AE738();
  swift_allocObject();
  v18 = sub_2519AE728();
  v16[3] = v17;
  v16[4] = sub_251988FA8(&qword_280DD93B8, MEMORY[0x277D11D58], MEMORY[0x277D11D50]);
  *v16 = v18;
  *&v5[*((*v7 & *v5) + 0x88)] = 0;
  *&v5[*((*v7 & *v5) + 0x90)] = 0;
  *&v5[*((*v7 & *v5) + 0x98)] = 0;
  sub_2519AEA98();
  (*(v12 + 32))(&v5[*((*v7 & *v5) + 0x68)], v15, v11);
  *&v5[*((*v7 & *v5) + 0x70)] = v23;
  *&v5[*((*v7 & *v5) + 0x78)] = v24;
  *&v5[*((*v7 & *v5) + 0x80)] = v25;
  v20 = _s22FeatureStatusPublisherV5InnerCMa(0, v9, v10, v19);
  v26.receiver = v5;
  v26.super_class = v20;
  return objc_msgSendSuper2(&v26, sel_init, v22);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25198893C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251988984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519889E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251988A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251988A80(uint64_t a1)
{
  result = sub_2519AEAA8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_251988B9C(uint64_t a1)
{
  sub_251988D00(0, &qword_280DD9160, sub_251988C28, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251988C28()
{
  result = qword_280DD9168;
  if (!qword_280DD9168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DD9168);
  }

  return result;
}

void sub_251988C74(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251988D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251988DC8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2519AE9D8();
  v6 = *((*v4 & *v1) + 0x88);
  v7 = *(v1 + v6);
  *(v2 + v6) = a1;
  v8 = a1;

  sub_251986FD8();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  return sub_2519AE9E8();
}

uint64_t sub_251988EA0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2519AE9D8();
  v6 = *((*v4 & *v1) + 0x90);
  v7 = *(v1 + v6);
  *(v2 + v6) = a1;
  v8 = a1;

  sub_251986FD8();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  return sub_2519AE9E8();
}

uint64_t sub_251988FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251989064()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F4699F0);
  v1 = __swift_project_value_buffer(v0, qword_27F4699F0);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_251989190(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2519891FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

id WalkingSteadinessOnboardingStartViewController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_baseIdentifier];
  *v1 = 0xD000000000000024;
  v1[1] = 0x80000002519B3800;
  v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_stage] = 0;
  *&v0[OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v2 = sub_2519AEE28();

  sub_2519AE4D8();
  v3 = sub_2519AEE28();

  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v4 = qword_280DD9178;
  v5 = sub_2519AEE28();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  v13.receiver = v0;
  v13.super_class = type metadata accessor for WalkingSteadinessOnboardingStartViewController();
  v7 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v2, v3, v6, 2);

  v8 = v7;
  v9 = [v8 headerView];
  LODWORD(v10) = 1036831949;
  [v9 setTitleHyphenationFactor_];

  v11 = [v8 headerView];
  [v11 setAllowFullWidthIcon_];

  return v8;
}

void sub_251989548()
{
  ObjectType = swift_getObjectType();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for WalkingSteadinessOnboardingStartViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_25198A0F8(0, &qword_27F469A20, sub_251989F7C, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2519B0FA0;
  v3 = sub_2519AEB08();
  v4 = MEMORY[0x277D74BF0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(swift_allocObject() + 16) = ObjectType;
  sub_2519AEFA8();
  swift_unknownObjectRelease();

  v5 = sub_2519AEE28();

  v6 = sub_2519AEE28();
}

void sub_251989714(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 traitCollection];
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v5 = qword_280DD9178;
  v6 = sub_2519AEE28();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:v4];

  if (v7)
  {
    oslog = [a1 headerView];
    [oslog setIcon:v7 accessibilityLabel:0];
  }

  else
  {
    if (qword_27F469430 != -1)
    {
      swift_once();
    }

    v8 = sub_2519AEAE8();
    __swift_project_value_buffer(v8, qword_27F4699F0);
    v9 = a1;
    oslog = sub_2519AEAC8();
    v10 = sub_2519AEF48();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      v14 = sub_2519AF2A8();
      v16 = sub_251978CDC(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = [v9 traitCollection];
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&dword_251974000, oslog, v10, "[%{public}s] Unable to load icon for %@", v11, 0x16u);
      sub_251988B9C(v12);
      MEMORY[0x2530898E0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2530898E0](v13, -1, -1);
      MEMORY[0x2530898E0](v11, -1, -1);
    }
  }
}

id WalkingSteadinessOnboardingStartViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2519AEE28();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2519AEE28();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2519AEE28();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id WalkingSteadinessOnboardingStartViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2519AEE28();

  if (a4)
  {
    v12 = sub_2519AEE28();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id WalkingSteadinessOnboardingStartViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WalkingSteadinessOnboardingStartViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t (*sub_251989EB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI46WalkingSteadinessOnboardingStartViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

unint64_t sub_251989F7C()
{
  result = qword_27F469A28;
  if (!qword_27F469A28)
  {
    sub_251989FC4();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F469A28);
  }

  return result;
}

unint64_t sub_251989FC4()
{
  result = qword_27F469A30;
  if (!qword_27F469A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F469A30);
  }

  return result;
}

void sub_25198A0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25198A15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep);
  if (v1 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep))
    {
      return 0x446D7269666E6F63;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000017;
  }

  else if (v1 == 3)
  {
    return 0x6163696669746F6ELL;
  }

  else
  {
    return 0x6974656C706D6F63;
  }
}

uint64_t sub_25198A3DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation);

  return v1;
}

uint64_t sub_25198A478()
{
  v0 = [objc_opt_self() activeWatchProductType];
  v1 = sub_2519AEE38();

  return v1;
}

void *sub_25198A55C(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if ((*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems + 8) & 1) == 0)
  {
    return sub_2519AEED8();
  }

  if (result)
  {
    v2 = result;
    type metadata accessor for HKError(0);
    sub_25198AF28(MEMORY[0x277D84F90]);
    sub_25198B02C();
    sub_2519AE548();
    v3 = sub_2519AE558();

    v4 = v3;
    result = 0;
    *v2 = v3;
  }

  return result;
}

void *sub_25198A680(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if ((*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_defaultDetailItems + 8) & 1) == 0)
  {
    return sub_2519AEED8();
  }

  if (result)
  {
    v2 = result;
    type metadata accessor for HKError(0);
    sub_25198AF28(MEMORY[0x277D84F90]);
    sub_25198B02C();
    sub_2519AE548();
    v3 = sub_2519AE558();

    v4 = v3;
    result = 0;
    *v2 = v3;
  }

  return result;
}

void *sub_25198A7A4(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if ((*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems + 8) & 1) == 0)
  {
    return sub_2519AEED8();
  }

  if (result)
  {
    v2 = result;
    type metadata accessor for HKError(0);
    sub_25198AF28(MEMORY[0x277D84F90]);
    sub_25198B02C();
    sub_2519AE548();
    v3 = sub_2519AE558();

    v4 = v3;
    result = 0;
    *v2 = v3;
  }

  return result;
}

void *sub_25198A8CC(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) != 1)
  {
    return 0;
  }

  if ((*(v1 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_changedDetailItems + 8) & 1) == 0)
  {
    return sub_2519AEED8();
  }

  if (result)
  {
    v2 = result;
    type metadata accessor for HKError(0);
    sub_25198AF28(MEMORY[0x277D84F90]);
    sub_25198B02C();
    sub_2519AE548();
    v3 = sub_2519AE558();

    v4 = v3;
    result = 0;
    *v2 = v3;
  }

  return result;
}

uint64_t sub_25198A9F4()
{
  if (*(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) == 3 && *(v0 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_acceptDefaults) != 2)
  {
    return sub_2519AEED8();
  }

  else
  {
    return 0;
  }
}

id sub_25198AAAC(void *a1)
{

  return sub_25198ABB8(a1, &selRef_ageWithHealthStore_error_);
}

id sub_25198AB58(void *a1)
{

  return sub_25198ABB8(a1, &selRef_biologicalSexWithHealthStore_error_);
}

id sub_25198ABB8(void *a1, SEL *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_healthStore);
  v12[0] = 0;
  v7 = [v5 *a2];
  v8 = v12[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_2519AE568();

    swift_willThrow();
    if (a1)
    {
      *a1 = sub_2519AE558();
    }

    return 0;
  }

  return v7;
}

id WalkingSteadinessAnalyticsOnboardingEventDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalkingSteadinessAnalyticsOnboardingEventDataSource.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WalkingSteadinessAnalyticsOnboardingEventDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_25198ADF8(uint64_t a1, uint64_t a2)
{
  sub_2519AF258();
  sub_2519AEE78();
  v4 = sub_2519AF278();

  return sub_25198AE70(a1, a2, v4);
}

unint64_t sub_25198AE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2519AF208())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25198AF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25198B2FC();
    v3 = sub_2519AF1B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25198B360(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25198ADF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25198B428(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25198B02C()
{
  result = qword_27F4695F0;
  if (!qword_27F4695F0)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4695F0);
  }

  return result;
}

void sub_25198B2FC()
{
  if (!qword_27F469AE0)
  {
    v0 = sub_2519AF1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469AE0);
    }
  }
}

uint64_t sub_25198B360(uint64_t a1, uint64_t a2)
{
  sub_25198B3C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25198B3C4()
{
  if (!qword_27F469AE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F469AE8);
    }
  }
}

_OWORD *sub_25198B428(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25198B438()
{
  type metadata accessor for PickerTableViewCell();
  sub_25198C798(&qword_27F469AF0, 255, type metadata accessor for PickerTableViewCell, &protocol conformance descriptor for PickerTableViewCell);
  return sub_2519AE888();
}

uint64_t sub_25198B4A4()
{
  swift_getObjectType();
  sub_25198B4E0(0, v0);
  return sub_2519AEE58();
}

unint64_t sub_25198B4E0(uint64_t a1, uint64_t a2)
{
  result = qword_27F469AF8;
  if (!qword_27F469AF8)
  {
    type metadata accessor for HeightPickerItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469AF8);
  }

  return result;
}

uint64_t sub_25198B598(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25198B604(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197A1AC;
}

uint64_t sub_25198B6A4()
{
  v1 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits);
  if (v2 == 2)
  {
    sub_25198C9C0();
    v3 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 24);
    v4 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter), v3);
    v8 = 1;
    v5 = (*(v4 + 8))(&v8, v3, v4);
    v6 = [objc_opt_self() footUnit];
    LOBYTE(v2) = sub_2519AF0C8();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_25198B794(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25198B800()
{
  v1 = (v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25198B858(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id HeightPickerItem.__allocating_init(initialValue:valueFormatter:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight;
  *&v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight] = 0;
  v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  v7 = &v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier];
  *v7 = 0;
  v7[1] = 0;
  *&v5[v6] = a1;
  sub_251979694(a2, &v5[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter]);
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v8;
}

id HeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight;
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight] = 0;
  v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  v6 = &v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier];
  *v6 = 0;
  v6[1] = 0;
  *&v2[v5] = a1;
  sub_251979694(a2, &v2[OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HeightPickerItem();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v7;
}

id HeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25198BBC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25198BC24(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25198BCEC()
{
  swift_getObjectType();
  sub_25198B4E0(0, v0);
  return sub_2519AEE58();
}

uint64_t sub_25198BD28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

void HeightPickerItem.initialSelections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight);
  }

  else
  {
    v3 = [objc_opt_self() meterUnitWithMetricPrefix_];
    [objc_opt_self() defaultCentimeterValue];
    v2 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v4];

    v1 = 0;
  }

  v5 = v1;
  if (sub_25198B6A4())
  {
    sub_25198C1D4(v2);
    v7 = v6;
    v9 = v8;
    sub_25198BEE8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2519B08A0;
    if (!__OFSUB__(v7, 1))
    {
      *(v10 + 32) = v7 - 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = v9;
      *(v10 + 56) = 1;
LABEL_9:

      return;
    }

    __break(1u);
  }

  else
  {
    sub_25198BEE8(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2519B0FA0;
    sub_25198C2E0(v2);
    if (!__OFSUB__(v12, 30))
    {
      *(v11 + 32) = v12 - 30;
      *(v11 + 40) = 0;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_25198BEE8(uint64_t a1)
{
  if (!qword_27F469EE0)
  {
    sub_25198BF40();
    v1 = sub_2519AF1F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469EE0);
    }
  }
}

void sub_25198BF40()
{
  if (!qword_27F469B30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F469B30);
    }
  }
}

Swift::Int __swiftcall HeightPickerItem.numberOfComponents(in:)(UIPickerView *in)
{
  if (sub_25198B6A4())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int __swiftcall HeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  v3 = sub_25198B6A4();
  v4 = 246;
  if (numberOfRowsInComponent)
  {
    v4 = 0;
  }

  v5 = 12;
  if (numberOfRowsInComponent != 1)
  {
    v5 = 0;
  }

  if (!numberOfRowsInComponent)
  {
    v5 = 9;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

Swift::String_optional __swiftcall HeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v3 = sub_25198C3D4(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_25198C1D4(void *a1)
{
  v2 = [objc_opt_self() inchUnit];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_2519AEE08();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_25198C2E0(void *a1)
{
  v2 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_2519AEE08();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_25198C3D4(uint64_t a1, uint64_t a2)
{
  if ((sub_25198B6A4() & 1) == 0)
  {
    if (!a2)
    {
      result = [objc_opt_self() meterUnitWithMetricPrefix_];
      if (!__OFADD__(a1, 30))
      {
        v8 = result;
        v9 = [objc_opt_self() quantityWithUnit:result doubleValue:(a1 + 30)];

        v10 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 24);
        v11 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_valueFormatter), v10);
        v14 = 1;
        v12 = (*(v11 + 16))(&v14, v9, v10, v11);
LABEL_14:
        v13 = v12;

        return v13;
      }

      __break(1u);
      goto LABEL_17;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      result = [objc_opt_self() sharedFormatter];
      if (!result)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (!__OFADD__(a1, 1))
      {
        v6 = result;
        v7 = [result formattedValueForFeet_];
        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    return 0;
  }

  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    v6 = result;
    v7 = [result formattedValueForInches_];
LABEL_12:
    v9 = v7;

    if (v9)
    {
      v12 = sub_2519AEE38();
      goto LABEL_14;
    }

    return 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

void _s16HealthMobilityUI16HeightPickerItemC10pickerView_12didSelectRow11inComponentySo08UIPickerH0C_S2itF_0(void *a1, uint64_t a2)
{
  if (sub_25198B6A4())
  {
    v5 = [a1 selectedRowInComponent_];
    v6 = (v5 + 1);
    if (!__OFADD__(v5, 1))
    {
      v7 = [a1 selectedRowInComponent_];
      v8 = 12 * v6;
      if ((v6 * 12) >> 64 == (12 * v6) >> 63)
      {
        v9 = v7 + v8;
        if (!__OFADD__(v8, v7))
        {
          v10 = [objc_opt_self() inchUnit];
          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFADD__(a2, 30);
  v9 = a2 + 30;
  if (v11)
  {
    goto LABEL_12;
  }

  v10 = [objc_opt_self() meterUnitWithMetricPrefix_];
LABEL_8:
  v12 = v10;
  v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:v9];

  v14 = *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight);
  *(v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_currentHeight) = v13;
  v15 = v13;

  v16 = v2 + OBJC_IVAR____TtC16HealthMobilityUI16HeightPickerItem_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v2, v15, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_25198C798(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25198C9C0()
{
  result = qword_27F469B48;
  if (!qword_27F469B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469B48);
  }

  return result;
}

id sub_25198CA10()
{
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v1 = qword_280DD9178;
  qword_27F469B50 = qword_280DD9178;
  *algn_27F469B58 = 0xD00000000000001CLL;
  qword_27F469B60 = 0x80000002519B3C60;

  return v1;
}

HealthMobilityUI::LocalizationSource __swiftcall LocalizationSource.init(bundle:table:)(NSBundle bundle, Swift::String table)
{
  *v2 = bundle;
  *(v2 + 8) = table;
  result.table = table;
  result.bundle = bundle;
  return result;
}

uint64_t static LocalizationSource.main.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469438 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B50;
  v2 = *algn_27F469B58;
  v3 = qword_27F469B60;
  *a1 = qword_27F469B50;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_25198CB24()
{
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v1 = qword_280DD9178;
  qword_27F469B68 = qword_280DD9178;
  unk_27F469B70 = 0xD00000000000001DLL;
  qword_27F469B78 = 0x80000002519B3C40;

  return v1;
}

uint64_t static LocalizationSource.walkingSteadiness.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469440 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B68;
  v2 = unk_27F469B70;
  v3 = qword_27F469B78;
  *a1 = qword_27F469B68;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_25198CC2C()
{
  if (qword_27F4694C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F46CD30;
  qword_27F469B80 = qword_27F46CD30;
  *algn_27F469B88 = 0xD000000000000014;
  qword_27F469B90 = 0x80000002519B3C20;

  return v1;
}

uint64_t static LocalizationSource.healthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469448 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B80;
  v2 = *algn_27F469B88;
  v3 = qword_27F469B90;
  *a1 = qword_27F469B80;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_25198CD34()
{
  if (qword_27F4694D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F46CD38;
  qword_27F469B98 = qword_27F46CD38;
  unk_27F469BA0 = 0xD00000000000001DLL;
  qword_27F469BA8 = 0x80000002519B3C00;

  return v1;
}

uint64_t static LocalizationSource.legacy.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F469450 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F469B98;
  v2 = unk_27F469BA0;
  v3 = qword_27F469BA8;
  *a1 = qword_27F469B98;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_25198CE48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_2519AE4D8();
  if (*(a9 + 16))
  {
    v10 = sub_2519AEE48();

    return v10;
  }

  return result;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_2519AE4D8();
  if (*(a8 + 16))
  {
    v10 = sub_2519AEE48();

    return v10;
  }

  return result;
}

id HKMobilityLocalizedString(uint64_t a1)
{
  sub_2519AEE38();
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();

  v1 = sub_2519AEE28();

  return v1;
}

Swift::String __swiftcall localizedStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  v1 = sub_2519AE4D8();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id HKMobilityHBXLocalizedString(uint64_t a1)
{
  sub_2519AEE38();
  if (qword_27F469450 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();

  v1 = sub_2519AEE28();

  return v1;
}

Swift::String __swiftcall localizedHBXStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F469450 != -1)
  {
    swift_once();
  }

  v1 = sub_2519AE4D8();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static DeepLink.openMotionAndFitnessSettings()()
{
  v0 = [objc_opt_self() internalPrivacySettingsURLString];
  sub_2519AEE38();

  MEMORY[0x253088EC0](0x4E4F49544F4D2FLL, 0xE700000000000000);
  sub_2519AEE68();
}

uint64_t static DeepLink.motionAndFitnessSettingsLink.getter()
{
  v0 = [objc_opt_self() internalPrivacySettingsURLString];
  v1 = sub_2519AEE38();

  MEMORY[0x253088EC0](0x4E4F49544F4D2FLL, 0xE700000000000000);
  return v1;
}

uint64_t static DeepLink.heightDataTypeDetailLink.getter()
{
  sub_25198D5CC(0);
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D0FD60]) init];
  sub_25198D624();
  v9 = MEMORY[0x253088FA0](*MEMORY[0x277CCCBA8]);
  v10 = [v8 URLForDataTypeDetailWithObjectType_];

  if (v10)
  {
    sub_2519AE588();

    v11 = sub_2519AE598();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v11 = sub_2519AE598();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  sub_25198D670(v4, v7);
  sub_2519AE598();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_25198D6D4(v7);
    v13 = 0;
  }

  else
  {
    v13 = sub_2519AE578();
    (*(v12 + 8))(v7, v11);
  }

  return v13;
}

void sub_25198D5CC(uint64_t a1)
{
  if (!qword_27F469730)
  {
    sub_2519AE598();
    v1 = sub_2519AF0E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469730);
    }
  }
}

unint64_t sub_25198D624()
{
  result = qword_27F469BB0;
  if (!qword_27F469BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469BB0);
  }

  return result;
}

uint64_t sub_25198D670(uint64_t a1, uint64_t a2)
{
  sub_25198D5CC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25198D6D4(uint64_t a1)
{
  sub_25198D5CC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DeepLink(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeepLink(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25198D870()
{
  result = sub_2519AEE98();
  qword_280DD93C8 = result;
  unk_280DD93D0 = v1;
  return result;
}

uint64_t sub_25198D9CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  if (qword_280DD93C0 != -1)
  {
    swift_once();
  }

  sub_2519AEE98();
  return sub_2519AEAD8();
}

uint64_t sub_25198DAA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2519AEAE8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void *WalkingSteadinessOnboardingAboutHealthDetailsViewController.init()()
{
  type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsDataSource(0);
  swift_allocObject();
  sub_251992B48();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();

  v0 = sub_2519AE938();
  [v0 setModalInPresentation_];

  return v0;
}

void sub_25198DD04()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setSeparatorStyle_];

    v3 = [v0 tableView];
    if (v3)
    {
      v4 = v3;
      [v3 setContentInset_];

      v5 = [v0 headerView];
      LODWORD(v6) = 1036831949;
      [v5 setTitleHyphenationFactor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25198DDFC(void *a1)
{
  v1 = a1;
  sub_25198DD04();
}

id WalkingSteadinessOnboardingAboutHealthDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsViewController(uint64_t a1)
{
  result = qword_27F469C18;
  if (!qword_27F469C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmDetailsFooterView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView_configuration;
  v4 = sub_2519AEBF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_25198E010()
{
  v1 = v0;
  v2 = sub_2519AEB68();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel;
  v12 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel);
  }

  else
  {
    sub_2519AEB88();
    v14 = sub_2519AEB28();
    v15 = *(v3 + 8);
    v15(v10, v2);
    sub_2519AEB88();
    v16 = sub_2519AEB48();
    v15(v7, v2);
    sub_2519AEBB8();
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v19 setNumberOfLines_];
    [v19 setFont_];
    [v19 setTextColor_];
    if (v18)
    {
      v20 = sub_2519AEE28();

      [v19 setText_];
    }

    v21 = *(v1 + v11);
    *(v1 + v11) = v19;
    v13 = v19;

    v12 = 0;
  }

  v22 = v12;
  return v13;
}

char *sub_25198E228(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel] = 0;
  v5 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView_configuration;
  v6 = sub_2519AEBF8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v30.receiver = v2;
  v30.super_class = type metadata accessor for ConfirmDetailsFooterView(0);
  v8 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = sub_25198E010();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel;
  [*&v8[OBJC_IVAR____TtC16HealthMobilityUI24ConfirmDetailsFooterView____lazy_storage___titleLabel] setPreferredMaxLayoutWidth_];
  v11 = *&v8[v10];
  v12 = v8;
  [v12 addSubview_];
  v28 = objc_opt_self();
  sub_25198E884();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2519B1270;
  v14 = [*&v8[v10] topAnchor];
  v15 = [v12 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:18.0];

  *(v13 + 32) = v16;
  v17 = [*&v8[v10] leadingAnchor];
  v18 = [v12 leadingAnchor];

  v19 = [v17 constraintEqualToAnchor:v18 constant:0.0];
  *(v13 + 40) = v19;
  v20 = [*&v8[v10] trailingAnchor];
  v21 = [v12 trailingAnchor];

  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-0.0];
  *(v13 + 48) = v22;
  v23 = [*&v8[v10] bottomAnchor];
  v24 = [v12 bottomAnchor];

  v25 = [v23 constraintEqualToAnchor:v24 constant:-18.0];
  *(v13 + 56) = v25;
  sub_25198E8D8();
  v26 = sub_2519AEEB8();

  [v28 activateConstraints_];

  (*(v7 + 8))(a1, v6);
  return v12;
}

id ConfirmDetailsFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConfirmDetailsFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmDetailsFooterView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConfirmDetailsFooterView(uint64_t a1)
{
  result = qword_27F469C30;
  if (!qword_27F469C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25198E7D4(uint64_t a1)
{
  result = sub_2519AEBF8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_25198E884()
{
  if (!qword_27F469750)
  {
    v0 = sub_2519AF1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469750);
    }
  }
}

unint64_t sub_25198E8D8()
{
  result = qword_27F469C40;
  if (!qword_27F469C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F469C40);
  }

  return result;
}

id WalkingSteadinessOnboardingSetupCompleteViewController.__allocating_init(healthExperienceStore:pinnedContentManager:notificationsEnabled:)(void *a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return WalkingSteadinessOnboardingSetupCompleteViewController.init(healthExperienceStore:pinnedContentManager:notificationsEnabled:)(a1, a2, v4);
}

uint64_t sub_25198E970()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469C48);
  v1 = __swift_project_value_buffer(v0, qword_27F469C48);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25198EA9C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F469C68;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_25198EB08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469C68;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251979A40;
}

id WalkingSteadinessOnboardingSetupCompleteViewController.init(healthExperienceStore:pinnedContentManager:notificationsEnabled:)(void *a1, void *a2, char a3)
{
  *(v3 + qword_27F469C60) = 4;
  *(v3 + qword_27F469C68 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = (v3 + qword_27F469C70);
  *v6 = 0xD000000000000028;
  v6[1] = 0x80000002519B3F20;
  v7 = HKMobilityWalkingSteadinessType();
  v19 = a1;
  sub_251979694(a1, v21);
  sub_251979694(a2, v20);
  sub_2519AE958();
  swift_allocObject();
  *(v3 + qword_27F469C78) = sub_2519AE948();
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  sub_2519AE4D8();

  v8 = qword_280DD9170;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_280DD9178;
  v10 = sub_2519AEE28();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  LOWORD(v18) = 0;
  v12 = sub_2519AE938();
  v13 = [v12 headerView];
  LODWORD(v14) = 1036831949;
  [v13 setTitleHyphenationFactor_];

  v15 = [v12 headerView];
  [v15 setAllowFullWidthIcon_];

  sub_251985814(0, &qword_27F469BB0, 0x277CCD830);
  v16 = MEMORY[0x253088FA0](*MEMORY[0x277CCC948]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2519AE758();

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v12;
}

void sub_25198EF68()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  sub_2519AE4D8();
  v1 = sub_2519AEE28();

  sub_251980C7C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2519B12D0;
  v3 = *&v0[qword_27F469C70 + 8];
  *(v2 + 32) = *&v0[qword_27F469C70];
  *(v2 + 40) = v3;
  *(v2 + 48) = 1701736260;
  *(v2 + 56) = 0xE400000000000000;
  *(v2 + 64) = 0x6E6F74747542;
  *(v2 + 72) = 0xE600000000000000;

  v4 = sub_2519AEEB8();

  v5 = HKUIJoinStringsForAutomationIdentifier();
}

void sub_25198F0FC(void *a1)
{
  v1 = a1;
  sub_25198EF68();
}

void sub_25198F144(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(0);
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a3);
  v5 = [v4 navigationItem];
  [v5 setHidesBackButton_];
}

void sub_25198F1D8(char *a1)
{
  v2 = &a1[qword_27F469C68];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_25198F284(char *a1)
{
  v2 = &a1[qword_27F469C68];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

void sub_25198F330(void *a1)
{
  swift_getObjectType();
  v23.receiver = v1;
  v23.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(0);
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];
  if (a1 && v4 == [a1 userInterfaceStyle])
  {
  }

  else
  {
    v5 = qword_280DD9170;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_280DD9178;
    v8 = sub_2519AEE28();
    v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 compatibleWithTraitCollection:v6];

    if (v9)
    {
      v10 = [v1 headerView];
      [v10 setIcon:v9 accessibilityLabel:0];
    }

    else
    {
      if (qword_27F469478 != -1)
      {
        swift_once();
      }

      v11 = sub_2519AEAE8();
      __swift_project_value_buffer(v11, qword_27F469C48);
      v12 = v6;
      v13 = sub_2519AEAC8();
      v14 = sub_2519AEF48();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v15 = 136446466;
        v18 = sub_2519AF2A8();
        v20 = sub_251978CDC(v18, v19, &v22);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2112;
        *(v15 + 14) = v12;
        *v16 = v3;
        v21 = v12;
        _os_log_impl(&dword_251974000, v13, v14, "[%{public}s] Unable to load icon for %@", v15, 0x16u);
        sub_251988B9C(v16);
        MEMORY[0x2530898E0](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x2530898E0](v17, -1, -1);
        MEMORY[0x2530898E0](v15, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_25198F644(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_25198F330(a3);
}

uint64_t sub_25198F6E0()
{
  sub_25197ABDC(v0 + qword_27F469C68);
}

id WalkingSteadinessOnboardingSetupCompleteViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25198F76C(uint64_t a1)
{
  sub_25197ABDC(a1 + qword_27F469C68);
}

uint64_t (*sub_25198F7E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F469C68;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25197AC8C;
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingSetupCompleteViewController(uint64_t a1)
{
  result = qword_27F469C80;
  if (!qword_27F469C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25198F8CC(uint64_t a1)
{
  if (!qword_280DD9160)
  {
    sub_251985814(255, &qword_280DD9168, 0x277D82BB8);
    v1 = sub_2519AF0E8();
    if (!v2)
    {
      atomic_store(v1, &qword_280DD9160);
    }
  }
}

uint64_t sub_25198FAF0()
{
  v0 = sub_2519AEAE8();
  __swift_allocate_value_buffer(v0, qword_27F469C90);
  v1 = __swift_project_value_buffer(v0, qword_27F469C90);
  if (qword_27F469468 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F469BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_25198FBB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  qword_27F469CA8 = v0;
  return result;
}

id sub_25198FC1C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  qword_27F469CB0 = result;
  return result;
}

uint64_t sub_25198FC50()
{
  v0 = sub_2519AE658();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2519AE6C8();
  __swift_allocate_value_buffer(v5, qword_27F469CB8);
  __swift_project_value_buffer(v5, qword_27F469CB8);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_2519AE668();
  return (*(v1 + 8))(v4, v0);
}

uint64_t DateOfBirthItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251991254(&qword_27F4698F0, type metadata accessor for TitleValueTableViewCell, &protocol conformance descriptor for TitleValueTableViewCell);
  return sub_2519AE888();
}

uint64_t DateOfBirthItem.uniqueIdentifier.getter()
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v13 - v3;
  v5 = type metadata accessor for DateOfBirthItem(0);
  v13[0] = v5;
  sub_25198FF50();
  v6 = sub_2519AEE58();
  v8 = v7;
  sub_251982240(v0 + *(v5 + 20), v4);
  v9 = sub_2519AEE58();
  v11 = v10;
  v13[0] = v6;
  v13[1] = v8;

  MEMORY[0x253088EC0](v9, v11);

  return v13[0];
}

uint64_t type metadata accessor for DateOfBirthItem(uint64_t a1)
{
  result = qword_27F469CE0;
  if (!qword_27F469CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25198FF50()
{
  result = qword_27F469CD0;
  if (!qword_27F469CD0)
  {
    type metadata accessor for DateOfBirthItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F469CD0);
  }

  return result;
}

uint64_t DateOfBirthItem.baseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DateOfBirthItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DateOfBirthItem.init(dateOfBirthComponents:dateGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for DateOfBirthItem(0);
  *a4 = 0;
  a4[1] = 0;
  result = sub_25199008C(a1, a4 + *(v8 + 20));
  v10 = (a4 + *(v8 + 24));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_25199008C(uint64_t a1, uint64_t a2)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251990120()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_251991254(&qword_27F4698F0, type metadata accessor for TitleValueTableViewCell, &protocol conformance descriptor for TitleValueTableViewCell);
  return sub_2519AE888();
}

uint64_t sub_251990188(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2519901E0(uint64_t a1)
{
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v14 - v5;
  v14[0] = a1;
  sub_25198FF50();
  v7 = sub_2519AEE58();
  v9 = v8;
  sub_251982240(v1 + *(a1 + 20), v6);
  v10 = sub_2519AEE58();
  v12 = v11;
  v14[0] = v7;
  v14[1] = v9;

  MEMORY[0x253088EC0](v10, v12);

  return v14[0];
}

uint64_t sub_251990304(uint64_t a1)
{
  v2 = sub_251991254(&qword_27F469D00, type metadata accessor for DateOfBirthItem, &protocol conformance descriptor for DateOfBirthItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t DateOfBirthItem.title.getter()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

uint64_t DateOfBirthItem.value.getter()
{
  v1 = sub_2519AE4C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25199129C(0, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for DateOfBirthItem(0);
  sub_251982240(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    if (qword_27F469438 != -1)
    {
      swift_once();
    }

    return sub_2519AE4D8();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v12 = sub_25199062C(v5);
    (*(v2 + 8))(v5, v1);
    return v12;
  }
}

uint64_t sub_25199062C(uint64_t a1)
{
  v3 = sub_2519AE4C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_25199129C(0, &qword_27F469D08, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v67 = &v66 - v11;
  sub_25199129C(0, &qword_27F469D10, MEMORY[0x277CC9578], v8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v66 - v14;
  v16 = sub_2519AE608();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v68 = &v66 - v23;
  if (qword_27F469498 != -1)
  {
    swift_once();
  }

  v24 = sub_2519AE6C8();
  __swift_project_value_buffer(v24, qword_27F469CB8);
  sub_2519AE688();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2519913B8(v15, &qword_27F469D10, MEMORY[0x277CC9578]);
    if (qword_27F469480 != -1)
    {
      swift_once();
    }

    v25 = sub_2519AEAE8();
    __swift_project_value_buffer(v25, qword_27F469C90);
    v26 = v4;
    (*(v4 + 16))(v7, a1, v3);
    v27 = sub_2519AEAC8();
    v28 = sub_2519AEF48();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v69 = v30;
      *v29 = 136446722;
      *(v29 + 4) = sub_251978CDC(0x6942664F65746144, 0xEF6D657449687472, &v69);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_251978CDC(0xD000000000000020, 0x80000002519B4110, &v69);
      *(v29 + 22) = 2080;
      sub_251991254(&qword_27F469D18, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v31 = sub_2519AF1E8();
      v33 = v32;
      (*(v26 + 8))(v7, v3);
      v34 = sub_251978CDC(v31, v33, &v69);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_251974000, v27, v28, "[%{public}s.%{public}s]: Unable to create date from birth day components: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v30, -1, -1);
      MEMORY[0x2530898E0](v29, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v7, v3);
    }

    return 0;
  }

  (*(v17 + 32))(v68, v15, v16);
  v35 = sub_2519AE4A8();
  v36 = type metadata accessor for DateOfBirthItem(0);
  (*(v1 + *(v36 + 24)))();
  v37 = sub_2519AE5D8();
  v38 = *(v17 + 8);
  v38(v21, v16);
  v39 = [v35 hk:v37 ageWithCurrentDate:?];

  if (qword_27F469490 != -1)
  {
    swift_once();
  }

  v40 = qword_27F469CB0;
  v41 = sub_2519AEEF8();
  v42 = [v40 stringFromNumber_];

  v43 = v67;
  if (!v42)
  {
    if (qword_27F469480 != -1)
    {
      swift_once();
    }

    v60 = sub_2519AEAE8();
    __swift_project_value_buffer(v60, qword_27F469C90);
    v61 = sub_2519AEAC8();
    v62 = sub_2519AEF48();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v63 = 136446723;
      *(v63 + 4) = sub_251978CDC(0x6942664F65746144, 0xEF6D657449687472, &v69);
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_251978CDC(0xD000000000000020, 0x80000002519B4110, &v69);
      *(v63 + 22) = 2049;
      *(v63 + 24) = v39;
      _os_log_impl(&dword_251974000, v61, v62, "[%{public}s.%{public}s]: Unable to create age string from age: %{private}ld", v63, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530898E0](v64, -1, -1);
      MEMORY[0x2530898E0](v63, -1, -1);
    }

    v38(v68, v16);
    return 0;
  }

  v66 = v38;
  v44 = sub_2519AEE38();
  v46 = v45;

  v47 = sub_2519AE648();
  (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
  sub_25199129C(0, &qword_27F469D20, sub_251991300, MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2519B08A0;
  if (qword_27F469488 != -1)
  {
    swift_once();
  }

  v49 = qword_27F469CA8;
  v50 = sub_2519AE5D8();
  v51 = [v49 stringFromDate_];

  v52 = sub_2519AEE38();
  v54 = v53;

  v55 = MEMORY[0x277D837D0];
  *(v48 + 56) = MEMORY[0x277D837D0];
  v56 = sub_251991364();
  *(v48 + 32) = v52;
  *(v48 + 40) = v54;
  *(v48 + 96) = v55;
  *(v48 + 104) = v56;
  *(v48 + 64) = v56;
  *(v48 + 72) = v44;
  *(v48 + 80) = v46;
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  v57 = sub_2519AE4D8();
  v58 = v66;
  if (*(v48 + 16))
  {
    v59 = sub_2519AEE48();
  }

  else
  {
    v59 = v57;
  }

  sub_2519913B8(v43, &qword_27F469D08, MEMORY[0x277CC9788]);
  v58(v68, v16);
  return v59;
}

uint64_t sub_251991030()
{
  if (qword_27F469438 != -1)
  {
    swift_once();
  }

  return sub_2519AE4D8();
}

void sub_2519910E8(uint64_t a1)
{
  sub_2519911B4();
  if (v1 <= 0x3F)
  {
    sub_25199129C(319, &qword_27F469938, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251991204();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2519911B4()
{
  if (!qword_27F469CF0)
  {
    v0 = sub_2519AF0E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469CF0);
    }
  }
}

unint64_t sub_251991204()
{
  result = qword_27F469CF8;
  if (!qword_27F469CF8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F469CF8);
  }

  return result;
}

uint64_t sub_251991254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25199129C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251991300()
{
  result = qword_27F469D28;
  if (!qword_27F469D28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F469D28);
  }

  return result;
}

unint64_t sub_251991364()
{
  result = qword_27F469D30;
  if (!qword_27F469D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469D30);
  }

  return result;
}

uint64_t sub_2519913B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25199129C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25199143C(uint64_t a1, uint64_t a2)
{
  sub_2519914A0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2519914A0(uint64_t a1)
{
  if (!qword_27F469D38)
  {
    sub_2519AE768();
    sub_2519AE748();
    sub_251992A08(&qword_27F469D40, MEMORY[0x277D12068], MEMORY[0x277D12070]);
    v1 = sub_2519AF298();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469D38);
    }
  }
}

uint64_t WalkingSteadinessAdvertisableFeatureSourceProvider.__allocating_init(context:)(uint64_t a1)
{
  sub_2519914A0(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AE848();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2519AE868();
  v6 = sub_2519AE858();
  (*(*(v6 - 8) + 8))(a1, v6);
  type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider(0);
  v7 = swift_allocObject();
  sub_251991728(v5, v7 + OBJC_IVAR____TtC16HealthMobilityUI50WalkingSteadinessAdvertisableFeatureSourceProvider_currentCountry);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v7;
}

uint64_t WalkingSteadinessAdvertisableFeatureSourceProvider.__allocating_init(currentCountry:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_251991728(a1, v2 + OBJC_IVAR____TtC16HealthMobilityUI50WalkingSteadinessAdvertisableFeatureSourceProvider_currentCountry);
  return v2;
}

uint64_t type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider(uint64_t a1)
{
  result = qword_27F469D58;
  if (!qword_27F469D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251991728(uint64_t a1, uint64_t a2)
{
  sub_2519914A0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25199178C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10D08];
  v3 = sub_2519AE7E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_251991810()
{
  if (qword_27F469440 != -1)
  {
    swift_once();
  }

  v0 = sub_2519AE4D8();
  v2 = v1;
  v3 = sub_2519AE4D8();
  v5 = v4;
  if (qword_280DD9170 != -1)
  {
    swift_once();
  }

  v6 = qword_280DD9178;
  v7 = sub_2519AEE28();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:{v6, 0xE000000000000000}];

  return MEMORY[0x282169518](v0, v2, v3, v5, v8);
}

id sub_2519919D0()
{
  v0 = sub_2519AE9C8();
  v1 = [v0 areAllRequirementsSatisfied];

  return v1;
}

uint64_t sub_251991A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2519AEAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3;
  sub_2519AEAB8();
  type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider(0);
  sub_251992A08(&qword_27F469D48, type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider, &protocol conformance descriptor for WalkingSteadinessAdvertisableFeatureSourceProvider);
  sub_2519AE778();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_251991B60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v6 = a2;
  v8 = *v4;
  sub_251992744();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519AE788();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_2519AE9F8();
  swift_getObjectType();
  sub_2519AEE38();
  sub_2519AEFB8();
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  *(v15 + 40) = v6;
  *(v15 + 48) = v8;

  v16 = a1;
  sub_2519AF088();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v14, v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t sub_251991D3C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v45 = a6;
  v46 = a5;
  sub_251992968(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251992744();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2519AEAE8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2519AEAB8();
    v24 = sub_2519AEAC8();
    v25 = sub_2519AEF58();
    v26 = os_log_type_enabled(v24, v25);
    v41 = a7;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47[0] = v39;
      *v27 = 136446210;
      v28 = sub_2519AF2A8();
      v40 = v15;
      v30 = a3;
      v31 = a4;
      v32 = sub_251978CDC(v28, v29, v47);
      v15 = v40;

      *(v27 + 4) = v32;
      a4 = v31;
      a3 = v30;
      _os_log_impl(&dword_251974000, v24, v25, "[%{public}s] Notification defaults written and synced", v27, 0xCu);
      v33 = v39;
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x2530898E0](v33, -1, -1);
      MEMORY[0x2530898E0](v27, -1, -1);
    }

    (*(v20 + 8))(v23, v19);
    sub_2519AE798();
    if (v45)
    {
      sub_2519AE788();
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      sub_2519AE9F8();
      swift_getObjectType();
      v34 = v42;
      sub_2519AEFC8();
      v35 = swift_allocObject();
      v35[2] = a3;
      v35[3] = a4;
      v35[4] = v41;

      sub_2519AF088();
      swift_unknownObjectRelease();

      (*(v43 + 8))(v34, v44);
      return __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    sub_2519AE828();
    sub_251992A08(&qword_27F469D70, MEMORY[0x277D10D50], MEMORY[0x277D10D58]);
    sub_2519AF288();
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      sub_2519AF238();
    }

    else
    {
      v47[0] = 0;
      v47[1] = 0xE000000000000000;
      sub_2519AF148();
      MEMORY[0x253088EC0](91, 0xE100000000000000);
      v37 = sub_2519AF2A8();
      MEMORY[0x253088EC0](v37);

      MEMORY[0x253088EC0](0xD000000000000055, 0x80000002519B42A0);
    }

    sub_2519AE818();
    swift_storeEnumTagMultiPayload();
  }

  a3(v15);
  return sub_251992A50(v15, sub_251992968);
}

uint64_t sub_2519921DC(char a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  sub_251992968(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2519AEAE8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29[1] = a4;
    sub_2519AEAB8();
    v18 = sub_2519AEAC8();
    v19 = sub_2519AEF58();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29[0] = a3;
      v22 = v21;
      v30[0] = v21;
      *v20 = 136446210;
      v23 = sub_2519AF2A8();
      v25 = sub_251978CDC(v23, v24, v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_251974000, v18, v19, "[%{public}s] Onboarding acknowledged written and synced", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v26 = v22;
      a3 = v29[0];
      MEMORY[0x2530898E0](v26, -1, -1);
      MEMORY[0x2530898E0](v20, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    sub_2519AE828();
    sub_251992A08(&qword_27F469D70, MEMORY[0x277D10D50], MEMORY[0x277D10D58]);
    sub_2519AF288();
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      sub_2519AF238();
    }

    else
    {
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_2519AF148();
      MEMORY[0x253088EC0](91, 0xE100000000000000);
      v27 = sub_2519AF2A8();
      MEMORY[0x253088EC0](v27);

      MEMORY[0x253088EC0](0xD000000000000068, 0x80000002519B4300);
    }

    sub_2519AE818();
    swift_storeEnumTagMultiPayload();
  }

  a3(v12);
  return sub_251992A50(v12, sub_251992968);
}

uint64_t WalkingSteadinessAdvertisableFeatureSourceProvider.__deallocating_deinit()
{
  sub_251992A50(v0 + OBJC_IVAR____TtC16HealthMobilityUI50WalkingSteadinessAdvertisableFeatureSourceProvider_currentCountry, sub_2519914A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25199260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_2519AEAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *v5;
  sub_2519AEAB8();
  type metadata accessor for WalkingSteadinessAdvertisableFeatureSourceProvider(0);
  sub_2519AE778();
  return (*(v7 + 8))(v10, v6);
}

void sub_251992744()
{
  if (!qword_27F469D50)
  {
    v0 = sub_2519AEFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F469D50);
    }
  }
}

void sub_2519927B0(uint64_t a1)
{
  sub_2519914A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_251992968(uint64_t a1)
{
  if (!qword_27F469D68)
  {
    sub_2519AE828();
    sub_251992A08(&qword_27F469D70, MEMORY[0x277D10D50], MEMORY[0x277D10D58]);
    v1 = sub_2519AF298();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469D68);
    }
  }
}

uint64_t sub_251992A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251992A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsDataSource(uint64_t a1)
{
  result = qword_27F469D78;
  if (!qword_27F469D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251992B48()
{
  v0 = sub_2519AE638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251992E84(0);
  sub_2519AE8C8();
  *(swift_allocObject() + 16) = xmmword_2519B0FA0;
  sub_251994B64(&unk_2863D9678);
  sub_2519AE628();
  sub_2519AE618();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_2519AE8B8();
  v10[0] = 0x3C53447961727241;
  v10[1] = 0xE800000000000000;
  sub_2519AE628();
  v6 = sub_2519AE618();
  v8 = v7;
  v5(v4, v0);
  MEMORY[0x253088EC0](v6, v8);

  MEMORY[0x253088EC0](62, 0xE100000000000000);
  return sub_2519AE898();
}

uint64_t sub_251992DB4()
{
  v0 = sub_2519AE8A8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_251992DEC()
{
  type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell(0);
  sub_251992E2C();
  return sub_2519AEF08();
}

unint64_t sub_251992E2C()
{
  result = qword_27F469D88;
  if (!qword_27F469D88)
  {
    type metadata accessor for WalkingSteadinessOnboardingAboutHealthDetailsCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F469D88);
  }

  return result;
}

void sub_251992E84(uint64_t a1)
{
  if (!qword_27F469D90)
  {
    sub_2519AE8C8();
    v1 = sub_2519AF1F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F469D90);
    }
  }
}

HealthMobilityUI::WalkingSteadinessOnboardingAboutHealthDetailsItem_optional __swiftcall WalkingSteadinessOnboardingAboutHealthDetailsItem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2519AF1D8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WalkingSteadinessOnboardingAboutHealthDetailsItem.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E41746867696568;
  }

  else
  {
    return 0x6942664F65746164;
  }
}

uint64_t sub_251992F90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E41746867696568;
  }

  else
  {
    v3 = 0x6942664F65746164;
  }

  if (v2)
  {
    v4 = 0xEB00000000687472;
  }

  else
  {
    v4 = 0xEF74686769655764;
  }

  if (*a2)
  {
    v5 = 0x6E41746867696568;
  }

  else
  {
    v5 = 0x6942664F65746164;
  }

  if (*a2)
  {
    v6 = 0xEF74686769655764;
  }

  else
  {
    v6 = 0xEB00000000687472;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2519AF208();
  }

  return v8 & 1;
}

uint64_t sub_25199304C()
{
  sub_2519AF258();
  sub_2519AEE78();

  return sub_2519AF278();
}

uint64_t sub_2519930E4(uint64_t a1)
{
  sub_2519AEE78();
}

uint64_t sub_251993168()
{
  sub_2519AF258();
  sub_2519AEE78();

  return sub_2519AF278();
}