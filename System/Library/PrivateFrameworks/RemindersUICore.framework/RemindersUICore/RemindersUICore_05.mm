uint64_t sub_21D144C4C()
{

  return swift_deallocObject();
}

uint64_t sub_21D144C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_21D144D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21D144E24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D144E5C()
{

  return swift_deallocObject();
}

uint64_t sub_21D144EA4()
{
  if (*(v0 + 24) != 255)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D144EF0()
{
  v1 = *(type metadata accessor for TTRDateChangeType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v3 = sub_21DBF509C();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21D144FE8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D145034()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

id sub_21D14506C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21D8478FC();
  *a1 = result;
  return result;
}

void sub_21D145098(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView);
  *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView) = *a1;
  v3 = v2;
}

id sub_21D1450E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21D847A30();
  *a1 = result;
  return result;
}

void sub_21D145114(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel);
  *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel) = *a1;
  v3 = v2;
}

id sub_21D145164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21D847BF4();
  *a1 = result;
  return result;
}

void sub_21D145190(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel);
  *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel) = *a1;
  v3 = v2;
}

id sub_21D1451E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21D847E38();
  *a1 = result;
  return result;
}

void sub_21D14520C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton);
  *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton) = *a1;
  v3 = v2;
}

id sub_21D14525C@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_21D848108(a2);
  *a1 = result;
  return result;
}

void sub_21D145288(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton);
  *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton) = *a1;
  v3 = v2;
}

uint64_t sub_21D1452D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D145394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D145480@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1454D0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D145528()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D145560()
{

  sub_21D157478(*(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21D1455AC()
{

  return swift_deallocObject();
}

uint64_t sub_21D1455E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D145640(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1456A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D145714(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D145784()
{
  v1 = *(type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_21DBF5C4C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21D145874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1458C4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_21D145928(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D145934()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D14596C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1459A4()
{

  return swift_deallocObject();
}

uint64_t sub_21D145A00()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D145A3C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  v2 = sub_21DBFA7FC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v8 = (type metadata accessor for TTRAlertSpecification.Action(0, v1, v6, v7) - 8);
  v9 = (v4 + v5 + *(*v8 + 80)) & ~*(*v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(*(v1 - 8) + 8))(v0 + v9 + v8[10], v1);

  return swift_deallocObject();
}

uint64_t sub_21D145BD4()
{

  return swift_deallocObject();
}

uint64_t sub_21D145C0C()
{

  return swift_deallocObject();
}

uint64_t sub_21D145C4C()
{

  return swift_deallocObject();
}

uint64_t sub_21D145C94()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21D145CD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00, &unk_21DC2D5B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D145DA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00, &unk_21DC2D5B8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D145E38()
{
  v1 = sub_21DBFA7FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D145F58()
{
  v1 = *(v0 + 16);
  v2 = sub_21DBFA7FC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v8 = (type metadata accessor for TTRIValueBasedAlertAction(0, v1, v6, v7) - 8);
  v9 = (v4 + v5 + *(*v8 + 80)) & ~*(*v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(*(v1 - 8) + 8))(v0 + v9 + v8[10], v1);

  return swift_deallocObject();
}

uint64_t sub_21D1460EC()
{

  return swift_deallocObject();
}

uint64_t sub_21D146124()
{

  return swift_deallocObject();
}

uint64_t sub_21D146164()
{

  return swift_deallocObject();
}

uint64_t sub_21D1461CC()
{

  return swift_deallocObject();
}

uint64_t sub_21D146204()
{

  return swift_deallocObject();
}

uint64_t sub_21D14623C()
{

  return swift_deallocObject();
}

uint64_t sub_21D146284()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1462BC()
{

  return swift_deallocObject();
}

uint64_t sub_21D14630C()
{

  return swift_deallocObject();
}

uint64_t sub_21D146360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D146418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21D1464D0()
{

  return swift_deallocObject();
}

void sub_21D146554(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_27CE62FE8 = v1;
}

uint64_t sub_21D14659C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D146608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D146678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D146730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF563C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21D1467EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D146858(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D1468D8@<X0>(uint64_t *a1@<X8>)
{
  result = TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D146904(uint64_t *a1, void *a2)
{
  *(*a2 + qword_27CE63038) = *a1;
}

uint64_t sub_21D146950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8, &unk_21DC16EC0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D146A50()
{

  return swift_deallocObject();
}

uint64_t sub_21D146A88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D146AC0()
{

  return swift_deallocObject();
}

uint64_t sub_21D146B00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21D24976C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_21D146B74@<X0>(void *a1@<X8>)
{
  v2 = sub_21D25A450();
  *a1 = v2;

  return v2;
}

uint64_t sub_21D146BE8()
{

  return swift_deallocObject();
}

uint64_t sub_21D146C4C()
{

  return swift_deallocObject();
}

uint64_t sub_21D146CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D146D94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D146E40()
{

  return swift_deallocObject();
}

uint64_t sub_21D146F20()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D146F58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D146FB4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14701C()
{
  v2 = *(v0 + 24);
  v6[0] = *(v0 + 16);
  v1 = v6[0];
  v6[1] = v2;
  v7 = *(v0 + 40);
  v3 = (type metadata accessor for TTRGeoLocationService.FilterResult(0, v6) - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  (*(*(v2 - 8) + 8))(v0 + v4, v2);
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[15], v1);
  return swift_deallocObject();
}

uint64_t sub_21D14713C()
{

  return swift_deallocObject();
}

uint64_t sub_21D14717C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1471B4()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D147204()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D147264()
{
  sub_21D181CB8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1472B8()
{
  sub_21D181CB8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21D147468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21D1475B4()
{

  return swift_deallocObject();
}

uint64_t sub_21D1475F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D147630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D14769C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D147734()
{

  return swift_deallocObject();
}

uint64_t sub_21D14776C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1477AC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D147808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21D24976C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_21D147870(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D1478E4@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20, &qword_21DC26330);
  result = sub_21DBF8EBC();
  *a1 = result;
  return result;
}

uint64_t sub_21D147934@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D147994@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1479E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

BOOL sub_21D147A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21D0CEB98(a1, v17);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  if (v13 == a2 && v14 == a3)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  return v15 == a4 && v16 == a5;
}

uint64_t sub_21D147B44()
{

  return swift_deallocObject();
}

uint64_t sub_21D147B7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D147BC4()
{

  return swift_deallocObject();
}

uint64_t sub_21D147C24()
{

  return swift_deallocObject();
}

uint64_t sub_21D147C5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D147CB8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D147D20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore30TTRReminderLocationPickerModelV9PlacemarkOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D57ED3C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D147DAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D147E08(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_21D8CB144(v3, v2);
}

id sub_21D147E44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D147EB0()
{

  return swift_deallocObject();
}

uint64_t sub_21D147EEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21D147F34(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void sub_21D147F80(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 17);
}

void sub_21D147FCC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 18);
}

void sub_21D1480D8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21D14813C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1481E0()
{

  return swift_deallocObject();
}

uint64_t sub_21D148304@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D148360(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_21D1483F8@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  sub_21DBF8E0C();
  return result;
}

double sub_21D148464@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D148514()
{
  v1 = sub_21DBF5B9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

BOOL sub_21D1485F0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_21D8F991C();
  *a1 = result;
  return result;
}

__n128 sub_21D148654(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21D148660()
{

  return swift_deallocObject();
}

uint64_t sub_21D148698()
{

  return swift_deallocObject();
}

uint64_t sub_21D1486E8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63AD0, &qword_21DC30C60);
  sub_21D176F0C();
  sub_21D8FB590();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_21D148880(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_21D14888C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_21D1488F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRIReminderCompletionButton.preferredSymbolConfiguration.setter(v1);
}

void sub_21D148924(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

unint64_t *_s15RemindersUICore28TTRIReminderCompletionButtonC4IconOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D637AD8(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_21D148A30()
{

  return swift_deallocObject();
}

uint64_t sub_21D148A80()
{

  return swift_deallocObject();
}

uint64_t sub_21D148AD0()
{

  return swift_deallocObject();
}

uint64_t sub_21D148B08()
{
  v1 = sub_21DBF54CC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D148BA8()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D148C44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D148C94(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D148CEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D148D38()
{

  return swift_deallocObject();
}

uint64_t sub_21D148D78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D148DB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D148E08(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

void *_s15RemindersUICore37TTRSECreateRemindersTerminationReasonOwCP_0(void *a1, id *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a1 = v3;
  return a1;
}

uint64_t sub_21D148E98()
{

  return swift_deallocObject();
}

uint64_t sub_21D148ED0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D148F0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D148F44()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D148F8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D148FC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D149014(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14906C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D1490D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D149148()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v18 = v3 + *(v17 + 20);
          if (*(v18 + 8))
          {

            sub_21D179EF0(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64));
            v19 = *(v18 + 120);
            if (v19 != 255)
            {
              sub_21D1078C0(*(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), v19 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 8))(v0 + v2, v16);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(v3 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v3 + v8, v20);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v14 - 8) + 48))(v0 + v2, 1, v14))
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 8))(v0 + v2, v15);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }

    goto LABEL_46;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v2, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  v3 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v3 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:

  return swift_deallocObject();
}

uint64_t sub_21D1495F0()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D149638()
{

  return swift_deallocObject();
}

uint64_t sub_21D149670()
{

  return swift_deallocObject();
}

void *sub_21D1496F0(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 16) = *result;
  *(v2 + 24) = 0;
  return result;
}

uint64_t sub_21D149704()
{

  return swift_deallocObject();
}

uint64_t sub_21D14973C()
{

  return swift_deallocObject();
}

uint64_t sub_21D149774()
{

  return swift_deallocObject();
}

uint64_t sub_21D1497AC()
{

  return swift_deallocObject();
}

uint64_t sub_21D149800()
{

  return swift_deallocObject();
}

uint64_t sub_21D149848()
{

  return swift_deallocObject();
}

uint64_t sub_21D149880()
{

  return swift_deallocObject();
}

uint64_t sub_21D1498C8()
{

  return swift_deallocObject();
}

uint64_t sub_21D149900()
{

  return swift_deallocObject();
}

uint64_t sub_21D149940()
{

  return swift_deallocObject();
}

uint64_t sub_21D149980()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1499B8()
{

  return swift_deallocObject();
}

id sub_21D1499F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

uint64_t sub_21D149A54()
{

  return swift_deallocObject();
}

uint64_t sub_21D149A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27CE8EBC8;
  swift_beginAccess();
  return sub_21D0D3954(v3 + v4, a2, &unk_27CE5F240, &unk_21DC104A0);
}

void sub_21D149B48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRIReminderTitleCellContent.currentText.setter(v1);
}

uint64_t sub_21D149B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_21D149C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D149CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_21D149DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D149E60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27CE8EBF0;
  swift_beginAccess();
  return sub_21D0D3954(v3 + v4, a2, &unk_27CE62920, &unk_21DC2BF30);
}

void sub_21D149F1C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRIReminderNotesCellContent.currentText.setter(v1);
}

uint64_t sub_21D149F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
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

uint64_t sub_21D14A014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21D14A0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF6C1C();
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

    return (v10 + 1);
  }
}

uint64_t sub_21D14A1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF6C1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D14A258()
{

  return swift_deallocObject();
}

uint64_t sub_21D14A2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D14A314(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D14A398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D14A404(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D14A484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D14A4F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21D14A574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D14A62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21D14A6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D14A754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D14A7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21D14A8C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21D14A9E0()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AA18()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AA50()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AA88()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AAC8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D14AB08()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AB50()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D14AB88()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14ABF0()
{

  return swift_deallocObject();
}

id sub_21D14AC34(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D447D8]);

  return [v2 initWithStore_];
}

uint64_t sub_21D14AC7C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14AD50()
{

  return swift_deallocObject();
}

double sub_21D14AE44@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D14AF44()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AF7C()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AFB8()
{

  return swift_deallocObject();
}

uint64_t sub_21D14AFF0()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B028()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B090()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D14B1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21D14B268()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B2A0()
{
  if (v0[2])
  {
  }

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14B364()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14B3AC()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B3E4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21DBF509C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21D14B538()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B570()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D14B5B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14B60C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14B670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14B6C0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14B720()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore49TTRHashtagAssociationDeleteTagConfirmationMessageVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D14B798()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC25EditingSessionStateResultVwCP_0(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_21D14B818()
{

  return swift_deallocObject();
}

uint64_t sub_21D14B850()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14B888()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = (v0 + v2);
  v4 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    goto LABEL_12;
  }

  v5 = (v3 + *(v4 + 20));
  v6 = type metadata accessor for TTRListType(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v8 = sub_21DBF6C1C();
      (*(*(v8 - 8) + 8))(v5, v8);
      break;
    case 4:

      break;
    case 5:
LABEL_9:

      break;
  }

LABEL_12:

  return swift_deallocObject();
}

uint64_t sub_21D14BA74()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BAEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14BB24()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BB5C()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BB9C()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BBD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_21D14BC24(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return TTRReminderDetailInteractor.delegate.setter(v3, v2);
}

id sub_21D14BC60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void *_s15RemindersUICore35TTRReminderDetailOptimisticReminderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;

  return a1;
}

uint64_t destroy for TTRReminderDetailDatabaseMonitor.MonitoringContext(id *a1)
{
}

id *assignWithTake for TTRReminderDetailDatabaseMonitor.MonitoringContext(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s15RemindersUICore17SubtasksLoadStateOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D9B1764(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D14BDF0()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BE64()
{
  v1 = sub_21DBF509C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D14BF00()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BF68()
{

  return swift_deallocObject();
}

uint64_t sub_21D14BFCC()
{

  return swift_deallocObject();
}

uint64_t sub_21D14C004()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore17TTRReminderEditorC11FilterMatchOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D9D82E8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D14C084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D14C14C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D14C220()
{

  return swift_deallocObject();
}

uint64_t sub_21D14C25C()
{

  return swift_deallocObject();
}

uint64_t sub_21D14C294()
{

  return swift_deallocObject();
}

uint64_t sub_21D14C2DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14C368()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = sub_21DBF509C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21D14C598()
{
  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D14C678(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(ObjectType, v2);
}

uint64_t sub_21D14C6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 32))(ObjectType, v2);
}

unint64_t *_s15RemindersUICore26TTRPermissionConfigurationV6ActionOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D5D5DB0(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_21D14C7B8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(sub_21DBFBA8C() - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(AssociatedTypeWitness - 8);
  if (!(*(v8 + 48))(v0 + v7, 1, AssociatedTypeWitness))
  {
    (*(v8 + 8))(v0 + v7, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_21D14C95C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21D14C9E0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21D14CA18()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

id sub_21D14CA9C@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result > 0;
  return result;
}

uint64_t sub_21D14CAEC()
{

  return swift_deallocObject();
}

uint64_t sub_21D14CB34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14CB6C()
{
  v1 = (type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21D14CCB8()
{
  v1 = (type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D14CDEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21D14CEA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_21D14CFA4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_27CE64978 = v1;
}

uint64_t sub_21D14CFEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  swift_beginAccess();
  return sub_21D9EED0C(v3 + v4, a2);
}

uint64_t sub_21D14D0E4()
{

  return swift_deallocObject();
}

__n128 sub_21D14D148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D14D154()
{

  return swift_deallocObject();
}

uint64_t sub_21D14D18C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14D1C4()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore32TTRReminderCellHashtagTextUpdateV15HashtagAndRangeVwCP_0(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_21D14D26C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D14D2A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21D14D304()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D14D33C()
{
  v1 = (type metadata accessor for TTRRemindersListTips(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for TTRRemindersListTip(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + v1[7];
  v7 = sub_21DBF8D7C();
  v8 = *(*(v7 - 8) + 8);
  v8(v6 + v2, v7);

  v8(v0 + v1[7] + v5, v7);

  return swift_deallocObject();
}

uint64_t sub_21D14D4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(type metadata accessor for TTRRemindersListTip(0) - 8) + 84) == a2)
  {
    v6 = type metadata accessor for TTRRemindersListTips(0);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D14D5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListTip(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 84) == a3)
  {
    v11 = type metadata accessor for TTRRemindersListTips(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_21D14D694()
{

  return swift_deallocObject();
}

uint64_t sub_21D14D6D0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
    v10 = *(*(v9 - 8) + 48);
    v11 = &a1[*(a3 + 20)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_21D14D7A0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D14DACC(uint64_t result)
{
  v1 = *(result + 144) & 0x101FF0101;
  v2 = *(result + 216) & 0x101;
  *(result + 120) &= 1uLL;
  *(result + 144) = v1;
  *(result + 216) = v2;
  return result;
}

uint64_t sub_21D14DB00(uint64_t result)
{
  v1 = *(result + 144) & 0x101FF0101;
  v2 = *(result + 216) & 0x101 | 0x8000;
  *(result + 120) &= 1uLL;
  *(result + 144) = v1;
  *(result + 216) = v2;
  return result;
}

uint64_t sub_21D14DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21D14DC70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC13AuxiliaryDataV5ModelOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D0FF19C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D14DF80()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D14DFB8()
{

  return swift_deallocObject();
}

uint64_t sub_21D14E044(int8x16_t *a1)
{
  v2 = sub_21DBF980C();
  v4 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable(MEMORY[0x277CE0340], v2, &v4);
}

void sub_21D14E0FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

__n128 sub_21D14E1E4@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

void sub_21D14E240(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t sub_21D14E2A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_21D14E304(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_21DA34C9C(v3, v2);
}

id sub_21D14E340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D14E3AC()
{

  return swift_deallocObject();
}

uint64_t sub_21D14E3E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21D14E44C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_21DA40E6C(v3);
}

id sub_21D14E4A0()
{
  v1 = [v0 font];

  return v1;
}

void sub_21D14E4D8(void *a1)
{
  [v1 setFont_];
}

id sub_21D14E520@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

id sub_21D14E580@<X0>(uint64_t *a1@<X8>)
{
  result = UIBarItem.ttr_font.getter();
  *a1 = result;
  return result;
}

void sub_21D14E5AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UIBarItem.ttr_font.setter(v1);
}

uint64_t sub_21D14E608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14E658(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14E6B0()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D14E6E8()
{

  sub_21D5801B4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_21D14E734()
{
  sub_21D5801B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_21D14E778()
{

  return swift_deallocObject();
}

uint64_t sub_21D14E7B0()
{

  return swift_deallocObject();
}

uint64_t sub_21D14E7E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D14E828()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D14E860()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FE8, &qword_21DC38198);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D14E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D14E9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF5C4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D14EBAC()
{

  return swift_deallocObject();
}

void *sub_21D14EBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DA52758(1, 2, 480.0);
  *a1 = result;
  return result;
}

void sub_21D14EC24(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRUserDefaults.sharingExtensionLastSelectedListObjectID.setter(v1);
}

uint64_t sub_21D14ECC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DA536F0(3);
  *a1 = result;
  return result;
}

uint64_t sub_21D14ED20@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21D14ED64@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21D14EDA8@<X0>(_BYTE *a1@<X8>)
{
  result = TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D14EDFC@<X0>(void *a1@<X8>)
{
  result = TTRUserDefaults.smartListsVisibility.getter(&v3);
  *a1 = v3;
  return result;
}

void *sub_21D14EE50@<X0>(void *a1@<X8>)
{
  result = TTRUserDefaults.smartListsDisplayOrder.getter(&v3);
  *a1 = v3;
  return result;
}

RemindersUICore::TTRUserDefaults::WelcomeScreenVersion_optional sub_21D14EEE4@<W0>(_BYTE *a1@<X8>)
{
  result.value = TTRUserDefaults.lastSeenWelcomeScreenVersion.getter(&v3).value;
  *a1 = v3;
  return result;
}

uint64_t sub_21D14EF2C@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.recentlyUsedTimeZones.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D14EF90@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.smartListVersionWarnings.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D14EFE8@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.activitySessionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21D14F1AC@<X0>(uint64_t *a1@<X8>)
{
  result = TTRUserDefaults.lastAppForegroundingDates.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D14F250@<X0>(_BYTE *a1@<X8>)
{
  result = TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D14F2A4@<X0>(_BYTE *a1@<X8>)
{
  result = TTRUserDefaults.reminderDetailNewStyleEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D14F300(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D14F36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s15RemindersUICore15TTRUserDefaultsC22RemindersListLayoutKeyOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D14F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D14F4F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D14F5B0()
{

  return swift_deallocObject();
}

void sub_21D14F5F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  sub_21DBF8E0C();
  sub_21D5968AC(v5, v6, v7);
  *a2 = v4;
  a2[1] = v3;
  *(a2 + 16) = 0;
}

void sub_21D14F650(id *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *a1;
  sub_21D5968AC(v4, v5, v6);
  *a2 = v3;
  a2[1] = 0;
  *(a2 + 16) = 1;
}

__n128 sub_21D14F6C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D14F744()
{

  return swift_deallocObject();
}

uint64_t sub_21D14F7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF563C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D14F87C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF563C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D14F920()
{

  return swift_deallocObject();
}

id sub_21D14FA0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) autocapitalizationType];
  *a2 = result;
  return result;
}

id sub_21D14FA70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) autocorrectionType];
  *a2 = result;
  return result;
}

id sub_21D14FAD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) keyboardType];
  *a2 = result;
  return result;
}

id sub_21D14FB38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) returnKeyType];
  *a2 = result;
  return result;
}

uint64_t sub_21D14FB9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D14FBF8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D14FC7C()
{

  return swift_deallocObject();
}

uint64_t sub_21D14FCE0()
{

  return swift_deallocObject();
}

void sub_21D14FD34(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27CE655A8;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DA7ECAC(v5);
}

void sub_21D14FDAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21DBF8E0C();
  sub_21DA7B5A0(v1, v2);
}

id sub_21D14FE44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + qword_27CE65590) font];
  *a2 = result;
  return result;
}

void sub_21D14FEBC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21DA7BEA0(v1);
}

void sub_21D14FEF8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21DA7C084(v1);
}

void sub_21D14FF34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21DA7C390(v1);
}

uint64_t sub_21D14FFA0()
{

  return swift_deallocObject();
}

uint64_t sub_21D14FFF0()
{

  return swift_deallocObject();
}

uint64_t sub_21D150038()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC15SelectionParamsVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t sub_21D1500F8()
{

  return swift_deallocObject();
}

__n128 sub_21D150148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D150154()
{

  return swift_deallocObject();
}

uint64_t sub_21D1501A4()
{

  return swift_deallocObject();
}

void sub_21D1501E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

void sub_21D150240(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_21D150298(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_21DA8CA2C();
}

uint64_t sub_21D1502F0()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21D15033C()
{

  return swift_deallocObject();
}

uint64_t sub_21D150378()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D1503E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D150440()
{

  return swift_deallocObject();
}

uint64_t sub_21D150480()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1504B8()
{

  return swift_deallocObject();
}

uint64_t sub_21D1504F0()
{

  return swift_deallocObject();
}

uint64_t sub_21D150528()
{

  return swift_deallocObject();
}

id sub_21D1505D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_21D150634@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D150690(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_21D1506F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21D150750()
{

  return swift_deallocObject();
}

double sub_21D150790@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D150818()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D150860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D1508D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D150954()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D15098C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1509DC()
{

  return swift_deallocObject();
}

uint64_t sub_21D150A1C()
{

  return swift_deallocObject();
}

uint64_t sub_21D150A6C()
{

  return swift_deallocObject();
}

uint64_t sub_21D150ABC()
{

  return swift_deallocObject();
}

uint64_t sub_21D150AF4()
{

  return swift_deallocObject();
}

uint64_t sub_21D150B2C()
{

  return swift_deallocObject();
}

uint64_t sub_21D150B74()
{

  return swift_deallocObject();
}

uint64_t sub_21D150BAC()
{

  return swift_deallocObject();
}

uint64_t sub_21D150BEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D150C48(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D150CB0()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D150D18()
{

  return swift_deallocObject();
}

uint64_t sub_21D150D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_21D150DB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_21D150E1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D150E88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21D150F44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D150FF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D151048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21D1510C0()
{

  return swift_deallocObject();
}

uint64_t sub_21D1510FC()
{

  return swift_deallocObject();
}

uint64_t sub_21D15116C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1511B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D151270(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBFB32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D15132C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D1513A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_21D151420@<X0>(uint64_t *a1@<X8>)
{
  result = TTRReminderDetailEditingSession.pendingMoveTargetList.getter();
  *a1 = result;
  return result;
}

double sub_21D151450@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a2 = *(v3 + 16);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D1514BC()
{

  return swift_deallocObject();
}

uint64_t sub_21D1514FC()
{

  return swift_deallocObject();
}

void sub_21D151554(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

uint64_t sub_21D1515E4()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D15161C()
{

  return swift_deallocObject();
}

uint64_t sub_21D15166C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1516C8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_21D151778@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D1518A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_21D15194C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D1519F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRTemplatePublicLinkData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21D151AA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRTemplatePublicLinkData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D151B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
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

    return (v10 + 1);
  }
}

uint64_t sub_21D151C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D151CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21DBF79FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21D151DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21DBF79FC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21D151EEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D151F24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D151F74(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D151FDC()
{
  v1 = *(v0 + 40);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

void *_s15RemindersUICore49TTRQuickEntryReminderCreationInteractorCapabilityC17DefaultListOptionOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  LODWORD(v3) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v4 = v3 + 1;
  if (v2)
  {
    v5 = v4 > 1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = result;
    v7 = v2;
    result = v6;
  }

  *result = v2;
  return result;
}

uint64_t sub_21D152078()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1520FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_21D1521C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21D152284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21D1523B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21D1524E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21DBF563C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21D152620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21D1527E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D152858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D152908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_21D1529E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21D152AA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[24];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[25];

  return v18(v19, a2, v17);
}

uint64_t sub_21D152C98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[24];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[25];

  return v18(v19, a2, a2, v17);
}

void *_s15RemindersUICore25TTRRemindersListViewModelC15ListSharingInfoV6StatusOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  LODWORD(v3) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  if (v3 - 1 < 0)
  {
    v4 = result;
    v5 = v2;
    result = v4;
  }

  *result = v2;
  return result;
}

__n128 sub_21D152F10@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  result = *v2;
  v6 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

void sub_21D152F48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = v1;
  v6 = v2;
  sub_21D113874(v4);
}

id sub_21D152F98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView) image];
  *a2 = result;
  return result;
}

void sub_21D152FE0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21D112D3C(v1);
}

double sub_21D153020@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_21D1530A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_21D153108(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21D114670(v1);
}

void sub_21D15314C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_21DB3797C();
}

uint64_t sub_21D1531B8(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v8[0] = v2;
  *(v8 + 13) = *(a1 + 93);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  sub_21DB3AD74(v7, v6);
  return sub_21DB3634C(a1);
}

__n128 sub_21D153224@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_21D15328C@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D153324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  return sub_21DB3ADDC(v3 + v4, a2);
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC11ImageParamsVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = v3;
  return a1;
}

id sub_21D1533C4()
{
  v1 = [*v0 title];

  return v1;
}

id sub_21D153400()
{
  v1 = [*v0 notes];

  return v1;
}

id sub_21D1534E0()
{
  v1 = [*v0 displayDate];

  return v1;
}

id sub_21D1535A0()
{
  v1 = [*v0 userActivity];

  return v1;
}

id sub_21D1535D8()
{
  v1 = [*v0 contactHandles];

  return v1;
}

id sub_21D1536E8()
{
  v1 = [*v0 currentAssignment];

  return v1;
}

uint64_t sub_21D153768()
{
  v1 = sub_21DBF647C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D153838@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D153888(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t _s15RemindersUICore27TTRReminderListPickerActionOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D1B29D8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_21D153928()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D153960()
{

  return swift_deallocObject();
}

uint64_t sub_21D1539A8()
{

  return swift_deallocObject();
}

uint64_t sub_21D1539E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D153A30(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D153A88()
{

  if (v0[6] != 1)
  {
    v1 = v0[3];
    if (v1 != 1)
    {
    }

    v2 = v0[4];
    if (v2 != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D153AF4()
{

  return swift_deallocObject();
}

void sub_21D153B50(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC15RemindersUICore41TTRIInlinePermissionPrimaryButtonViewCell_appliedConfiguration);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *a2 = *v2;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  sub_21D5D5DC4(v3, v4, v5, v6);
}

uint64_t sub_21D153B90()
{

  return swift_deallocObject();
}

uint64_t sub_21D153BC8()
{

  return swift_deallocObject();
}

uint64_t sub_21D153C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for TTRValueBasedMenuItem(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[13], v5);

  return swift_deallocObject();
}

uint64_t sub_21D153D14()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D153D64()
{

  return swift_deallocObject();
}

uint64_t sub_21D153DB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D153E00(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_21D153E64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D153E74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowAssignedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D153ED0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowAssignedDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D153F34()
{

  return swift_deallocObject();
}

uint64_t sub_21D153F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21D15403C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21D1540F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D15412C()
{

  return swift_deallocObject();
}

uint64_t sub_21D154164()
{

  return swift_deallocObject();
}

uint64_t sub_21D15419C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21D15421C()
{

  return swift_deallocObject();
}

__n128 sub_21D154290(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D1542B0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  v6 = *(sub_21DBFC84C() - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_21D154494()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  v2 = *(sub_21DBFC84C() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(sub_21DBFBA8C() - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  v8 = *(v5 - 8);
  if (!(*(v8 + 48))(v0 + v7, 1, v5))
  {
    (*(v8 + 8))(v0 + v7, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21D154700()
{

  return swift_deallocObject();
}

uint64_t sub_21D154748()
{

  return swift_deallocObject();
}

uint64_t sub_21D154788()
{

  return swift_deallocObject();
}

uint64_t sub_21D1547C0()
{

  return swift_deallocObject();
}

uint64_t sub_21D154810()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D15484C()
{

  return swift_deallocObject();
}

uint64_t sub_21D154884()
{
  v1 = *(v0 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for TTRDataViewMonitor.ResultTransition(0, v1, AssociatedConformanceWitness, v3);
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);

  v6 = (v0 + v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21DBFC84C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5, AssociatedTypeWitness);
  }

  v8 = *(v4 + 36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v6 + v8, AssociatedTypeWitness);
  }

  v9 = *(v4 + 40);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_21D154B04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D154B64()
{
  v1 = *(type metadata accessor for TTREditTodaySectionsViewModel.OptimisticApply(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21D154C94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D154CCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D154DA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D154DF4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D154E4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D154E9C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_21D154EFC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D154F4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D154F9C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D154FF4()
{
  v1 = sub_21DBF8B0C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1550E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21DBF8B0C();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 52));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_21D1551A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21DBF8B0C();
  result = sub_21DBFBA8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

uint64_t sub_21D155264()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v12 = *(v0 + 2);
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = *(type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots(0, &v12) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v12 = v1;
  v13 = v2;
  v8 = (v6 + 48) & ~v6;
  v14 = v3;
  v15 = v4;
  v9 = sub_21DBF8B0C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v0[v8], 1, v9))
  {
    (*(v10 + 8))(&v0[v8], v9);
  }

  return swift_deallocObject();
}

uint64_t sub_21D1553E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowAllRemindersDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D155440(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowAllRemindersDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1554A4()
{

  return swift_deallocObject();
}

id sub_21D1554DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_21D155518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21D1555E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D1556AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D155758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D1557FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21D155920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21D155AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21DBF5C4C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21D155B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21DBF5C4C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21D155C8C()
{

  return swift_deallocObject();
}

uint64_t sub_21D155CD8()
{

  return swift_deallocObject();
}

uint64_t sub_21D155D28()
{

  return swift_deallocObject();
}

uint64_t sub_21D155D90@<X0>(uint64_t *a1@<X8>)
{
  result = NSUndoManager.associatedSaveRequest.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D155DC0@<X0>(_BYTE *a1@<X8>)
{
  result = NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21D155DF4()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D155E2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D155E64()
{

  return swift_deallocObject();
}

uint64_t sub_21D155EAC()
{

  return swift_deallocObject();
}

uint64_t sub_21D155EE4()
{

  return swift_deallocObject();
}

uint64_t sub_21D155F2C()
{

  return swift_deallocObject();
}

uint64_t sub_21D155F7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D155FCC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D156024()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D156098()
{

  return swift_deallocObject();
}

uint64_t sub_21D156110()
{

  return swift_deallocObject();
}

uint64_t sub_21D15615C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *_s15RemindersUICore30CheckUpdateMonitorableDataViewC11FetchResultVwCP_0(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 != 1)
  {
    v5 = v4;
  }

  v6 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v6;
  v7 = v6;
  return a1;
}

uint64_t sub_21D1561F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D156240(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D156298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1562E8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D156350()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D156398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1563E8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_21D15644C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_21D156458(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 49);
}

uint64_t sub_21D1564D4@<X0>(uint64_t *a1@<X8>)
{
  result = TTRITableCell.assignedCell.getter();
  *a1 = result;
  return result;
}

void sub_21D156500(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRITableCell.assignedCell.setter(v1);
}

uint64_t sub_21D156544()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D156584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_21D156640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D1566F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21DBF647C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21D1567A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21DBF647C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D156848()
{
  v1 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:
      swift_unknownObjectRelease();
      v5 = *(type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingParams(0) + 20);
      v6 = sub_21DBF647C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
      break;
  }

  v7 = *(v3 + *(v1 + 24));
  if (v7 >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1569BC()
{
  v1 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:
      swift_unknownObjectRelease();
      v5 = *(type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingParams(0) + 20);
      v6 = sub_21DBF647C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
      break;
  }

  v7 = *(v3 + *(v1 + 24));
  if (v7 >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D156B50()
{
  v1 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:
      swift_unknownObjectRelease();
      v6 = *(type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingParams(0) + 20);
      v7 = sub_21DBF647C();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      break;
  }

  v8 = *(v4 + *(v1 + 24));
  if (v8 >= 2)
  {
  }

  return swift_deallocObject();
}

void sub_21D156CD4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21DBE9A3C(v1);
}

__n128 sub_21D156D30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21D156D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF8A0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 80);
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

uint64_t sub_21D156E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF8A0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 80) = a2;
  }

  return result;
}

uint64_t sub_21D156F20()
{

  return swift_deallocObject();
}

uint64_t sub_21D156F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D156FAC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D157004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_21DBEEFA8(v3 + 32, a2);
}

uint64_t sub_21D157054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_21DBEEFA8(v3 + 112, a2);
}

void sub_21D1570A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 200);
}

uint64_t sub_21D157120(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF8A0C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D15718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF8A0C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D15722C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1572AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1572FC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D157354()
{

  return swift_deallocObject();
}

uint64_t sub_21D1573C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_21D15746C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_21D157478(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_21D157494(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21D1574AC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_21D1574EC@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

id sub_21D15751C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRTemplatePublicLinkData.Capabilities(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRTemplatePublicLinkData.Capabilities(uint64_t result, int a2, int a3)
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

uint64_t *assignWithCopy for TTRProcessEnvironment(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  return a1;
}

uint64_t *assignWithTake for TTRProcessEnvironment(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void destroy for TTRReminderDetailReminderSnapshot(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t assignWithTake for TTRReminderDetailReminderSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithTake for TTRIReminderCellQuickBarLocationViewModel(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void sub_21D1576C8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

double sub_21D157714@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_21D157724(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;

    sub_21DBF8E0C();
  }

  return result;
}

id sub_21D157764()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  return [v0 init];
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.SubtaskState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.SubtaskState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21D157808(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D157824(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

id sub_21D157850(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_21D157864(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_21D157878(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_21D157888()
{
  v1 = [*v0 accountCapabilities];

  return v1;
}

double destroy for TTRRemindersListItemSeparatorStates(void *a1)
{

  return result;
}

void *sub_21D1578FC(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_21D159CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

void sub_21D166DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id RemindersUICoreBundleGet(uint64_t a1)
{
  if (RemindersUICoreBundleGet_onceToken[0] != -1)
  {
    RemindersUICoreBundleGet_cold_1();
  }

  v2 = RemindersUICoreBundleGet_bundle;

  return v2;
}

void __RemindersUICoreBundleGet_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = RemindersUICoreBundleGet_bundle;
  RemindersUICoreBundleGet_bundle = v2;
}

uint64_t TTRImageContainsTranslucentPixels(CGImage *a1)
{
  AlphaInfo = CGImageGetAlphaInfo(a1);
  if (AlphaInfo > kCGImageAlphaOnly)
  {
    v3 = [MEMORY[0x277D446D8] ui];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      TTRImageContainsTranslucentPixels_cold_4();
    }
  }

  else
  {
    if (((1 << AlphaInfo) & 0x61) != 0)
    {
      v4 = [MEMORY[0x277D446D8] ui];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        TTRImageContainsTranslucentPixels_cold_3();
      }

      return 0;
    }

    if (((1 << AlphaInfo) & 0x98) != 0)
    {
      v3 = [MEMORY[0x277D446D8] ui];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        TTRImageContainsTranslucentPixels_cold_2();
      }
    }

    else
    {
      v3 = [MEMORY[0x277D446D8] ui];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        TTRImageContainsTranslucentPixels_cold_1();
      }
    }
  }

  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if (BitsPerComponent >= 9)
  {
    v7 = 16;
  }

  else
  {
    v7 = 8;
  }

  v8 = [MEMORY[0x277D446D8] ui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    TTRImageContainsTranslucentPixels_cold_5();
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v11 = Height;
  if (BitsPerComponent < 9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 8;
  }

  if (BitsPerComponent >= 9)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  if (!is_mul_ok(Width, Height) || (v14 = Width * Height, !is_mul_ok(Width * Height, v12)))
  {
    v15 = [MEMORY[0x277D446D8] ui];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      TTRImageContainsTranslucentPixels_cold_11();
    }

LABEL_28:

    return 1;
  }

  v17 = [MEMORY[0x277D446D8] ui];
  v18 = v17;
  if (v14 * v12 >= 0x2FAF081)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      TTRImageContainsTranslucentPixels_cold_10(v14 * v12, v18);
    }

    return 1;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    TTRImageContainsTranslucentPixels_cold_6();
  }

  v19 = malloc_type_calloc(Width * v11, v12, 0xF250D223uLL);
  if (!v19)
  {
    v15 = [MEMORY[0x277D446D8] ui];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      TTRImageContainsTranslucentPixels_cold_9();
    }

    goto LABEL_28;
  }

  v20 = v19;
  if (BitsPerComponent >= 9)
  {
    v22 = 1;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = 0;
    v22 = 7;
  }

  v23 = CGBitmapContextCreate(v20, Width, v11, v7, Width << v13, DeviceRGB, v22);
  if (!v23)
  {
    v31 = [MEMORY[0x277D446D8] ui];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      TTRImageContainsTranslucentPixels_cold_8();
    }

    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
    }

    return 1;
  }

  v24 = v23;
  v33.size.width = Width;
  v33.size.height = v11;
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  CGContextDrawImage(v23, v33, a1);
  if (!v11)
  {
LABEL_54:
    v5 = 0;
    goto LABEL_60;
  }

  v25 = 0;
  v26 = v20 + 3;
  v27 = v20;
  while (!Width)
  {
LABEL_53:
    ++v25;
    v26 += 4 * Width;
    v27 += Width;
    if (v25 == v11)
    {
      goto LABEL_54;
    }
  }

  v28 = v27;
  v29 = v26;
  v30 = Width;
  while (BitsPerComponent <= 8)
  {
    if (*v28 != 255)
    {
      goto LABEL_59;
    }

LABEL_52:
    v29 += 4;
    ++v28;
    if (!--v30)
    {
      goto LABEL_53;
    }
  }

  if (*v29 == -1)
  {
    goto LABEL_52;
  }

LABEL_59:
  v5 = 1;
LABEL_60:
  v32 = [MEMORY[0x277D446D8] ui];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    TTRImageContainsTranslucentPixels_cold_7();
  }

  CFRelease(v24);
  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }

  free(v20);
  return v5;
}

void TTR_CGPathAddRoundRect(CGPath *a1, int a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  IsNull = CGRectIsNull(*&a3);
  if (fabs(a7) != INFINITY && !IsNull)
  {
    if (a7 <= 0.0)
    {
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;

      CGPathAddRect(a1, 0, *&v19);
    }

    else
    {
      if (a2)
      {
        v16 = a3 + a5;
        v17 = a4 + a6;
        CGPathMoveToPoint(a1, 0, a3, a4 + a7 * 1.528665);
        v27 = a3 + a7 * 0.0749114;
        CGPathAddCurveToPoint(a1, 0, a3, a4 + a7 * 1.08849, a3, a4 + a7 * 0.868407, v27, a4 + a7 * 0.631494);
        CGPathAddCurveToPoint(a1, 0, a3 + a7 * 0.16906, a4 + a7 * 0.372824, a3 + a7 * 0.372824, a4 + a7 * 0.16906, a3 + a7 * 0.631494, a4 + a7 * 0.0749114);
        v26 = a3 + a7 * 1.08849;
        CGPathAddCurveToPoint(a1, 0, a3 + a7 * 0.868407, a4, v26, a4, a3 + a7 * 1.52866, a4);
        CGPathAddLineToPoint(a1, 0, v16 - a7 * 1.528665, a4);
        CGPathAddCurveToPoint(a1, 0, v16 - a7 * 1.08849, a4, v16 - a7 * 0.868407, a4, v16 - a7 * 0.631494, a4 + a7 * 0.0749114);
        CGPathAddCurveToPoint(a1, 0, v16 - a7 * 0.372824, a4 + a7 * 0.16906, v16 - a7 * 0.16906, a4 + a7 * 0.372824, v16 - a7 * 0.0749114, a4 + a7 * 0.631494);
        CGPathAddCurveToPoint(a1, 0, v16, a4 + a7 * 0.868407, v16, a4 + a7 * 1.08849, v16, a4 + a7 * 1.52866);
        CGPathAddLineToPoint(a1, 0, v16, v17 - a7 * 1.528665);
        v28 = v17 - a7 * 1.08849;
        CGPathAddCurveToPoint(a1, 0, v16, v28, v16, v17 - a7 * 0.868407, v16 - a7 * 0.0749114, v17 - a7 * 0.631494);
        v18 = v17 - a7 * 0.0749114;
        CGPathAddCurveToPoint(a1, 0, v16 - a7 * 0.16906, v17 - a7 * 0.372824, v16 - a7 * 0.372824, v17 - a7 * 0.16906, v16 - a7 * 0.631494, v18);
        CGPathAddCurveToPoint(a1, 0, v16 - a7 * 0.868407, v17, v16 - a7 * 1.08849, v17, v16 - a7 * 1.52866, v17);
        CGPathAddLineToPoint(a1, 0, a3 + a7 * 1.528665, v17);
        CGPathAddCurveToPoint(a1, 0, v26, v17, a3 + a7 * 0.868407, v17, a3 + a7 * 0.631494, v18);
        CGPathAddCurveToPoint(a1, 0, a3 + a7 * 0.372824, v17 - a7 * 0.16906, a3 + a7 * 0.16906, v17 - a7 * 0.372824, v27, v17 - a7 * 0.631494);
        CGPathAddCurveToPoint(a1, 0, a3, v17 - a7 * 0.868407, a3, v28, a3, v17 - a7 * 1.52866);
      }

      else
      {
        v23 = a3 + a7;
        CGPathMoveToPoint(a1, 0, a3 + a7, a4);
        v24 = a3 + a5 - a7;
        CGPathAddArc(a1, 0, v24, a4 + a7, a7, 4.71238898, 0.0, 0);
        v25 = a4 + a6 - a7;
        CGPathAddArc(a1, 0, v24, v25, a7, 0.0, 1.57079633, 0);
        CGPathAddArc(a1, 0, v23, v25, a7, 1.57079633, 3.14159265, 0);
        CGPathAddArc(a1, 0, v23, a4 + a7, a7, 3.14159265, 4.71238898, 0);
      }

      CGPathCloseSubpath(a1);
    }
  }
}

uint64_t TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = type metadata accessor for TTRBoardReminderInCellModuleState(0, a3, a4, a4);
  v10 = v9[9];
  v13 = type metadata accessor for TTRRemindersListInCellModule(0, a3, v11, v12);
  v14 = *(*(v13 - 8) + 56);
  v14(&a5[v10], 1, 1, v13);
  v15 = &a5[v9[10]];
  *v15 = 0;
  v15[8] = 1;
  v14(&a5[v9[11]], 1, 1, v13);
  v16 = v9[12];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = (*(*(TupleTypeMetadata2 - 8) + 56))(&a5[v16], 1, 1, TupleTypeMetadata2);
  *a5 = a1;
  *(a5 + 1) = a2;
  return result;
}

uint64_t TTRBoardReminderInCellModuleState.receive(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_21DBFBA8C();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = *v2;
  v39 = *(v2 + 1);
  v40 = v13;
  v14 = *(v5 - 8);
  v15 = *(v14 + 16);
  v36 = a1;
  v34 = v15;
  (v15)(&v33 - v11, a1, v5, v10);
  v16 = *(v14 + 56);
  v17 = 1;
  v16(v12, 0, 1, v5);
  v37 = a2;
  v18 = *(a2 + 36);
  v21 = type metadata accessor for TTRRemindersListInCellModule(0, v5, v19, v20);
  v35 = *(v21 - 8);
  v22 = *(v35 + 48);
  v38 = v2;
  if (!v22(&v2[v18], 1, v21))
  {
    v34(v8, &v38[v18], v5);
    v17 = 0;
  }

  v16(v8, v17, 1, v5);
  v23 = v40(v12, v8);
  v24 = v42;
  v25 = *(v41 + 8);
  v25(v8, v42);
  result = (v25)(v12, v24);
  if ((v23 & 1) == 0)
  {
    v27 = v37;
    v28 = *(v37 + 44);
    v29 = sub_21DBFBA8C();
    v30 = v38;
    (*(*(v29 - 8) + 8))(&v38[v28], v29);
    v31 = v35;
    (*(v35 + 16))(&v30[v28], v36, v21);
    result = (*(v31 + 56))(&v30[v28], 0, 1, v21);
    v32 = &v30[*(v27 + 40)];
    *v32 = 0;
    v32[8] = 1;
  }

  return result;
}

{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRBoardReminderCellOptionalUpdate(0, v5, v9, v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  (*(v15 + 16))(&v25 - v13, a1, v12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = (*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2);
  if (result != 1)
  {
    v18 = *&v14[*(TupleTypeMetadata2 + 48)];
    v19 = *(v6 + 32);
    v19(v8, v14, v5);
    v20 = v2 + *(a2 + 40);
    if ((*(v20 + 8) & 1) != 0 || v18 != *v20)
    {
      v21 = (v2 + *(a2 + 48));
      v22 = swift_getTupleTypeMetadata2();
      v23 = sub_21DBFBA8C();
      (*(*(v23 - 8) + 8))(v21, v23);
      v24 = *(v22 + 48);
      v19(v21, v8, v5);
      *&v21[v24] = v18;
      return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
    }

    else
    {
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t TTRBoardReminderInCellModuleState.consume()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v4 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v112 = sub_21DBFBA8C();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = v102 - v5;
  v105 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v105);
  v103 = v102 - v6;
  v113 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v104 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v4;
  v123 = sub_21DBFBA8C();
  v116 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v106 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v129 = v102 - v11;
  v12 = *(a1 + 16);
  v122 = sub_21DBFBA8C();
  v111 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v125 = v102 - v13;
  v131 = v12;
  v16 = type metadata accessor for TTRRemindersListInCellModule(255, v12, v14, v15);
  v17 = sub_21DBFBA8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v108 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = v102 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v102 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v102 - v26;
  v28 = *(v16 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v128 = v102 - v31;
  v32 = a1;
  v33 = *(a1 + 44);
  v119 = v18;
  v34 = *(v18 + 16);
  v121 = v33;
  v117 = v35;
  v34(v24, &v33[v2], v30);
  v36 = *(v28 + 48);
  v37 = v36(v24, 1, v16);
  v126 = v2;
  v127 = v36;
  v120 = v34;
  v115 = v32;
  v118 = v18 + 16;
  if (v37 == 1)
  {
    v38 = v2 + *(v32 + 36);
    v39 = v117;
    (v34)(v27, v38, v117);
    v40 = v36(v24, 1, v16);
    v41 = v28;
    v42 = v119;
    v43 = v28 + 48;
    if (v40 != 1)
    {
      (*(v119 + 8))(v24, v39);
    }
  }

  else
  {
    (*(v28 + 32))(v27, v24, v16);
    (*(v28 + 56))(v27, 0, 1, v16);
    v41 = v28;
    v42 = v119;
    v39 = v117;
    v43 = v28 + 48;
  }

  v44 = v127;
  if (v127(v27, 1, v16) == 1)
  {
    v45 = (*(v42 + 8))(v27, v39);
    MEMORY[0x28223BE20](v45);
    strcpy(&v102[-12], "moduleInterface needsSetupModule viewModelToApply oldModuleInterfaceToTearDown ");
    v132 = v131;
    v133 = MEMORY[0x277D839B0];
    v134 = v123;
    v135 = v122;
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    return (*(*(TupleTypeMetadata - 8) + 56))(v124, 1, 1, TupleTypeMetadata);
  }

  v119 = v41;
  (*(v41 + 32))(v128, v27, v16);
  v48 = v126;
  v49 = v107;
  v120(v107, &v121[v126], v39);
  v50 = v44(v49, 1, v16);
  v51 = *(v42 + 8);
  v51(v49, v39);
  v117 = v16;
  v102[1] = v43;
  if (v50 == 1)
  {
    v52 = v131;
    v107 = *(v131 - 8);
    v53 = v107;
    v54 = v115;
  }

  else
  {
    v54 = v115;
    v55 = *(v115 + 36);
    v50 = 1;
    v56 = v44((v48 + v55), 1, v16);
    v52 = v131;
    v107 = *(v131 - 8);
    v53 = v107;
    if (!v56)
    {
      (*(v107 + 2))(v125, v48 + v55, v131);
      v52 = v131;
      v50 = 0;
    }
  }

  v53[7](v125, v50, 1, v52);
  v57 = *(v54 + 36);
  v58 = v126;
  v51((v126 + v57), v39);
  v59 = v119;
  v60 = v39;
  v61 = v117;
  (*(v119 + 16))(v58 + v57, v128, v117);
  v62 = v54;
  v63 = *(v59 + 56);
  v63(v58 + v57, 0, 1, v61);
  v64 = v121;
  v65 = v108;
  v120(v108, &v121[v58], v60);
  LODWORD(v127) = v127(v65, 1, v61);
  v51(v65, v60);
  v51(&v64[v58], v60);
  v63(&v64[v58], 1, 1, v61);
  v66 = v113;
  v67 = v130;
  v121 = *(v113 + 56);
  (v121)(v129, 1, 1, v130);
  v68 = *(v62 + 48);
  v69 = v110;
  v70 = v109;
  v71 = v112;
  (*(v110 + 16))(v109, v58 + v68, v112);
  v72 = TupleTypeMetadata2;
  v73 = *(TupleTypeMetadata2 - 8);
  if ((*(v73 + 48))(v70, 1, TupleTypeMetadata2) == 1)
  {
    v74 = (*(v69 + 8))(v70, v71);
    v75 = v123;
    v76 = v129;
  }

  else
  {
    v120 = *&v70[*(v72 + 48)];
    v77 = v105;
    v78 = *(v105 + 48);
    v79 = *(v66 + 32);
    v80 = v103;
    v79(v103, v70, v130);
    *&v80[v78] = v120;
    v75 = v123;
    (*(v116 + 8))(v129, v123);
    v81 = *&v80[*(v77 + 48)];
    v82 = v104;
    v79(v104, v80, v130);
    v83 = v126;
    (*(v69 + 8))(v126 + v68, v112);
    (*(v73 + 56))(v83 + v68, 1, 1, TupleTypeMetadata2);
    v79(v129, v82, v130);
    v76 = v129;
    v67 = v130;
    v74 = (v121)(v129, 0, 1, v130);
    v84 = v83 + *(v115 + 40);
    *v84 = v81;
    *(v84 + 8) = 0;
  }

  v85 = v127;
  if (v127 == 1)
  {
    v86 = v116;
    v87 = v106;
    (*(v116 + 16))(v106, v76, v75);
    v88 = (*(v113 + 48))(v87, 1, v67);
    v89 = *(v86 + 8);
    v74 = v89(v87, v75);
    if (v88 == 1)
    {
      v89(v76, v75);
      v90 = v122;
      (*(v111 + 8))(v125, v122);
      v91 = (*(v119 + 8))(v128, v117);
      MEMORY[0x28223BE20](v91);
      strcpy(&v102[-12], "moduleInterface needsSetupModule viewModelToApply oldModuleInterfaceToTearDown ");
      v132 = v131;
      v133 = MEMORY[0x277D839B0];
      v134 = v75;
      v135 = v90;
      goto LABEL_7;
    }
  }

  LODWORD(v130) = v85 != 1;
  MEMORY[0x28223BE20](v74);
  strcpy(&v102[-12], "moduleInterface needsSetupModule viewModelToApply oldModuleInterfaceToTearDown ");
  v92 = v131;
  v132 = v131;
  v133 = MEMORY[0x277D839B0];
  v93 = v76;
  v94 = v122;
  v134 = v75;
  v135 = v122;
  v95 = swift_getTupleTypeMetadata();
  v96 = v95[12];
  v97 = v95[16];
  v98 = v95[20];
  v99 = v75;
  v100 = v124;
  v101 = v128;
  (*(v107 + 2))(v124, v128, v92);
  (*(v119 + 8))(v101, v117);
  *(v100 + v96) = v130;
  (*(v116 + 32))(v100 + v97, v93, v99);
  (*(v111 + 32))(v100 + v98, v125, v94);
  return (*(*(v95 - 1) + 56))(v100, 0, 1, v95);
}

uint64_t sub_21D16CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRRemindersListInCellModule(255, *(a1 + 16), a3, a4);
  result = sub_21DBFBA8C();
  if (v5 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    result = sub_21DBFBA8C();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *sub_21D16CBEC(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = v6 & 0xF8 | 7;
  v9 = *(v5 + 64);
  v10 = v9 + 7;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v14 & 0xF8 | 7;
  v16 = *(v13 + 64) + 7;
  if (*(v13 + 84))
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  v18 = v17 + ((((v8 + v11 + (((v6 & 0xF8) + 23) & ~v8) + 9) & ~v8) + v11 + v15) & ~v15);
  v19 = (v14 | v6) & 0x100000;
  v20 = *a2;
  if ((v15 | v8) != 7 || v19 != 0 || v18 > 0x18)
  {
    *a1 = v20;
    a1 = (v20 + (((v15 | v8) + 16) & ~(v15 | v8)));

    return a1;
  }

  v44 = *(v13 + 64) + 7;
  v45 = v17;
  v46 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
  v47 = *(v13 + 84);
  v23 = a2[1];
  *a1 = v20;
  a1[1] = v23;
  v24 = a2 + 23;

  v48 = v12;
  if (v7 < 0x7FFFFFFF)
  {
    v26 = *((((v24 | 7) + v9) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v25 = a1 + 23;
    if (v26 != -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = a1 + 23;
    if ((*(v5 + 48))(v24 & 0xFFFFFFFFFFFFFFF8, v7, v4))
    {
LABEL_15:
      memcpy((v25 & 0xFFFFFFFFFFFFFFF8), (v24 & 0xFFFFFFFFFFFFFFF8), ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
      goto LABEL_20;
    }
  }

  (*(v5 + 16))(v25 & 0xFFFFFFFFFFFFFFF8, v24 & 0xFFFFFFFFFFFFFFF8, v4);
  v27 = *((((v24 | 7) + v9) & 0xFFFFFFFFFFFFFFF8) + 24);
  *((((v25 | 7) + v9) & 0xFFFFFFFFFFFFFFF8) + 24) = v27;
  (**(v27 - 8))();
LABEL_20:
  v28 = (v11 + v25) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v11 + v24) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  *(v28 + 8) = *(v29 + 8);
  *v28 = v30;
  v31 = (v28 + 16);
  v32 = (v29 + 16);
  if (v7 < 0x7FFFFFFF)
  {
    v34 = *((&v32[v10] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    v33 = v48;
    if (v34 != -1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v33 = v48;
    if ((*(v5 + 48))(v32, v7, v4))
    {
LABEL_22:
      memcpy(v31, v32, v11);
      goto LABEL_27;
    }
  }

  (*(v5 + 16))(v31, v32, v4);
  v35 = *((&v32[v10] & 0xFFFFFFFFFFFFFFF8) + 24);
  *((&v31[v10] & 0xFFFFFFFFFFFFFFF8) + 24) = v35;
  (**(v35 - 8))();
LABEL_27:
  v36 = &v31[v11];
  v37 = &v32[v11];
  if (!v47)
  {
    v39 = v45;
    v40 = v46;
    if (!v37[v46])
    {
      goto LABEL_35;
    }

    v41 = v37[v46] - 1;
    v42 = v46 & 0xFFFFFFF8;
    if ((v46 & 0xFFFFFFF8) != 0)
    {
      v41 = 0;
      v42 = *v37;
    }

    if ((v42 | v41) == 0xFFFFFFFF)
    {
      goto LABEL_35;
    }

LABEL_34:
    memcpy(v36, v37, v39);
    return a1;
  }

  v38 = (*(v13 + 48))(v37, v47, v33);
  v39 = v45;
  v40 = v46;
  if (v38)
  {
    goto LABEL_34;
  }

LABEL_35:
  (*(v13 + 16))(v36, v37, v33);
  *(&v36[v44] & 0xFFFFFFFFFFFFFFF8) = *(&v37[v44] & 0xFFFFFFFFFFFFFFF8);
  if (!v47)
  {
    v36[v40] = 0;
  }

  return a1;
}

uint64_t sub_21D16D028(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8 | 7;
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = *(v5 + 64) + 7;
  if (v6 < 0x7FFFFFFF)
  {
    v11 = *(((v9 + v8) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v10 = v11 + 1;
  }

  else
  {
    v10 = (*(v5 + 48))(v8, *(v5 + 84), v4);
  }

  v12 = (v9 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (!v10)
  {
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(((v9 + v8) & 0xFFFFFFFFFFFFFFF8));
  }

  v13 = (v7 + v12 + v8 + 9) & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    if ((*(v5 + 48))(v13, v6, v4))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = *(((v9 + v13) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if (v14 == -1)
  {
LABEL_14:
    (*(v5 + 8))(v13, v4);
    __swift_destroy_boxed_opaque_existential_0(((v9 + v13) & 0xFFFFFFFFFFFFFFF8));
  }

LABEL_15:
  v15 = *(a2 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = ((v13 + v12 + (*(v16 + 80) & 0xF8 | 7)) & ~(*(v16 + 80) & 0xF8 | 7));
  if (v17)
  {
    v26 = *(v15 - 8);
    result = (*(v16 + 48))(v18, v17, v15);
    v16 = v26;
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  v20 = ((*(*(v15 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(v18 + v20) || ((v21 = v20 & 0xFFFFFFF8, (v20 & 0xFFFFFFF8) != 0) ? (v22 = 0) : (v22 = *(v18 + v20) - 1), !v21 ? (v23 = 0) : (v23 = *v18), v24 = v23 | v22, result = (v24 + 1), v24 == -1))
  {
LABEL_27:
    v25 = *(v16 + 8);

    return v25(v18, v15);
  }

  return result;
}

void *sub_21D16D2FC(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80) & 0xF8;
  v9 = v8 | 7;
  v8 += 23;
  v10 = ((a1 + v8) & ~v9);
  v11 = ((a2 + v8) & ~v9);
  v12 = *(v6 + 64) + 7;
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;

  if (v7 < 0x7FFFFFFF)
  {
    v15 = *((&v11[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v14 = ~v9;
    if (v15 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = ~v9;
    if ((*(v6 + 48))(v11, v7, v5))
    {
LABEL_3:
      memcpy(v10, v11, (v12 & 0xFFFFFFFFFFFFFFF8) + 32);
      goto LABEL_8;
    }
  }

  (*(v6 + 16))(v10, v11, v5);
  v16 = *((&v11[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
  *((&v10[v12] & 0xFFFFFFFFFFFFFFF8) + 24) = v16;
  (**(v16 - 8))();
LABEL_8:
  v17 = &v10[v13];
  v18 = &v11[v13];
  v19 = *&v11[v13];
  v17[8] = v11[v13 + 8];
  *v17 = v19;
  v20 = (&v10[v13 + 9 + v9] & v14);
  v21 = (&v18[v9 + 9] & v14);
  if (v7 < 0x7FFFFFFF)
  {
    v22 = *((&v21[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    if (v22 != -1)
    {
      goto LABEL_10;
    }
  }

  else if ((*(v6 + 48))(v21, v7, v5))
  {
LABEL_10:
    memcpy(v20, v21, (v12 & 0xFFFFFFFFFFFFFFF8) + 32);
    goto LABEL_15;
  }

  (*(v6 + 16))(v20, v21, v5);
  v23 = *((&v21[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
  *(((v20 + v12) & 0xFFFFFFFFFFFFFFF8) + 24) = v23;
  (**(v23 - 8))();
LABEL_15:
  v24 = *(a3 + 24);
  v25 = &v21[v13];
  v26 = *(v24 - 8);
  v27 = *(v26 + 84);
  v28 = *(v26 + 80) & 0xF8 | 7;
  v29 = ((v20 + v13 + v28) & ~v28);
  v30 = (&v25[v28] & ~v28);
  v31 = *(v26 + 64) + 7;
  v32 = v31 & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v27)
  {
    if (!(*(v26 + 48))(&v25[v28] & ~v28, v27, v24))
    {
LABEL_26:
      (*(v26 + 16))(v29, v30, v24);
      *(&v29[v31] & 0xFFFFFFFFFFFFFFF8) = *((v30 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (!v27)
      {
        v29[v33] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(v30 + v33))
    {
      goto LABEL_26;
    }

    v34 = *(v30 + v33) - 1;
    v35 = v33 & 0xFFFFFFF8;
    if ((v33 & 0xFFFFFFF8) != 0)
    {
      v34 = 0;
      v35 = *v30;
    }

    if ((v35 | v34) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }
  }

  if (v27)
  {
    v36 = v32 + 8;
  }

  else
  {
    v36 = v32 + 9;
  }

  memcpy(v29, v30, v36);
  return a1;
}

void *sub_21D16D6CC(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v64 = a3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 1);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8;
  v11 = v10 | 7;
  v10 += 23;
  v69 = a1;
  v12 = ~v11;
  v13 = ((a1 + v10) & ~v11);
  v14 = ((a2 + v10) & ~v11);
  v15 = *(v8 + 64) + 7;
  v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + 32;
  v65 = v8;
  __dst = v7;
  if (v9 < 0x7FFFFFFF)
  {
    v23 = *((&v14[v15] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v20 = v23 + 1;
    if (*((&v13[v15] & 0xFFFFFFFFFFFFFFF8) + 24) < 0xFFFFFFFFuLL)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __n = (v15 & 0xFFFFFFFFFFFFFFF8) + 32;
    v17 = *(v8 + 64) + 7;
    v18 = *(v8 + 48);
    v19 = v18(v13, v9, v7);
    v20 = v18(v14, v9, v7);
    v12 = ~v11;
    v15 = v17;
    v16 = __n;
    if (v19)
    {
LABEL_3:
      if (v20)
      {
        memcpy(v13, v14, v16);
        v22 = v65;
        v21 = __dst;
      }

      else
      {
        v22 = v65;
        v21 = __dst;
        (*(v65 + 16))(v13, v14, __dst);
        v25 = *((&v14[v15] & 0xFFFFFFFFFFFFFFF8) + 24);
        *((&v13[v15] & 0xFFFFFFFFFFFFFFF8) + 24) = v25;
        (**(v25 - 8))();
      }

      goto LABEL_12;
    }
  }

  v24 = &v13[v15];
  v22 = v65;
  v21 = __dst;
  if (v20)
  {
    (*(v65 + 8))(v13, __dst);
    __swift_destroy_boxed_opaque_existential_0((v24 & 0xFFFFFFFFFFFFFFF8));
    memcpy(v13, v14, v16);
  }

  else
  {
    (*(v65 + 24))(v13, v14, __dst);
    __swift_assign_boxed_opaque_existential_0((v24 & 0xFFFFFFFFFFFFFFF8), (&v14[v15] & 0xFFFFFFFFFFFFFFF8));
  }

LABEL_12:
  v26 = &v13[v16];
  v27 = &v14[v16];
  v28 = *&v14[v16];
  v26[8] = v14[v16 + 8];
  *v26 = v28;
  v29 = (&v13[v16 + 9 + v11] & v12);
  v30 = (&v27[v11 + 9] & v12);
  if (v9 < 0x7FFFFFFF)
  {
    v36 = *((&v30[v15] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v34 = v36 + 1;
    if (*((&v29[v15] & 0xFFFFFFFFFFFFFFF8) + 24) < 0xFFFFFFFFuLL)
    {
LABEL_14:
      if (!v34)
      {
        (*(v22 + 16))(v29, v30, v21);
        v35 = *((&v30[v15] & 0xFFFFFFFFFFFFFFF8) + 24);
        *((&v29[v15] & 0xFFFFFFFFFFFFFFF8) + 24) = v35;
        (**(v35 - 8))();
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v31 = v15;
    v32 = *(v22 + 48);
    v33 = v32(v29, v9, v21);
    v34 = v32(v30, v9, v21);
    v15 = v31;
    if (v33)
    {
      goto LABEL_14;
    }
  }

  v37 = &v29[v15];
  if (v34)
  {
    (*(v22 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_0((v37 & 0xFFFFFFFFFFFFFFF8));
LABEL_21:
    memcpy(v29, v30, v16);
    goto LABEL_23;
  }

  (*(v22 + 24))(v29, v30, v21);
  __swift_assign_boxed_opaque_existential_0((v37 & 0xFFFFFFFFFFFFFFF8), (&v30[v15] & 0xFFFFFFFFFFFFFFF8));
LABEL_23:
  v38 = &v29[v16];
  v39 = &v30[v16];
  v40 = *(*(v64 + 24) - 8);
  v41 = *(v40 + 84);
  v42 = *(v40 + 80) & 0xF8 | 7;
  v43 = (&v38[v42] & ~v42);
  v44 = (&v39[v42] & ~v42);
  v45 = *(v40 + 64);
  v46 = v45 + 7;
  v47 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = v47 + 8;
  v66 = *(v64 + 24);
  if (!v41)
  {
    if (*(v43 + v48))
    {
      v55 = *(v43 + v48) - 1;
      if (v47 == -8)
      {
        v56 = 0;
      }

      else
      {
        v55 = 0;
        v56 = *v43;
      }

      if ((v56 | v55) != 0xFFFFFFFF)
      {
        if (!*(v44 + v48))
        {
          goto LABEL_51;
        }

        v57 = *(v44 + v48) - 1;
        if (v47 == -8)
        {
          v58 = 0;
        }

        else
        {
          v57 = 0;
          v58 = *v44;
        }

        if ((v58 | v57) == 0xFFFFFFFF)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }
    }

    if (!*(v44 + v48))
    {
LABEL_48:
      (*(v40 + 24))(v43, v44);
      *((v43 + v46) & 0xFFFFFFFFFFFFFFF8) = *((v44 + v46) & 0xFFFFFFFFFFFFFFF8);
      return v69;
    }

    v59 = *(v44 + v48) - 1;
    if (v47 != -8)
    {
      v59 = 0;
    }

    __dsta = v43;
    if (v47 == -8)
    {
      v60 = 0;
    }

    else
    {
      v60 = *v44;
    }

    v54 = (v60 | v59) + 1;
LABEL_42:
    v43 = __dsta;
    if (v54)
    {
      (*(v40 + 8))(__dsta, v66);
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  v49 = v45 + 7;
  v50 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = *(v40 + 48);
  __dsta = (&v38[v42] & ~v42);
  v52 = *(v64 + 24);
  v53 = v51(v43, v41);
  v54 = (v51)(v44, v41, v52);
  v47 = v50;
  v46 = v49;
  if (!v53)
  {
    goto LABEL_42;
  }

  v43 = __dsta;
  if (!v54)
  {
LABEL_51:
    (*(v40 + 16))(v43, v44, v66);
    *((v43 + v46) & 0xFFFFFFFFFFFFFFF8) = *((v44 + v46) & 0xFFFFFFFFFFFFFFF8);
    if (!v41)
    {
      *(v43 + v48) = 0;
    }

    return v69;
  }

LABEL_44:
  if (v41)
  {
    v61 = v48;
  }

  else
  {
    v61 = v47 + 9;
  }

  memcpy(v43, v44, v61);
  return v69;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

_OWORD *sub_21D16DF24(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = v7 + 23;
  v10 = ((a1 + v9) & ~v8);
  v11 = ((a2 + v9) & ~v8);
  v12 = *(v5 + 64) + 7;
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 < 0x7FFFFFFF)
  {
    v15 = *((&v11[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v14 = ~v8;
    if (v15 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = ~v8;
    if ((*(v5 + 48))((a2 + v9) & ~v8, v6, v4))
    {
LABEL_3:
      memcpy(v10, v11, (v12 & 0xFFFFFFFFFFFFFFF8) + 32);
      goto LABEL_8;
    }
  }

  (*(v5 + 32))(v10, v11, v4);
  v16 = (&v11[v12] & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  v18 = (&v10[v12] & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v16;
  v18[1] = v17;
LABEL_8:
  v19 = &v10[v13];
  v20 = &v11[v13];
  v21 = *&v11[v13];
  v19[8] = v11[v13 + 8];
  *v19 = v21;
  v22 = (&v10[v13 + 9 + v8] & v14);
  v23 = (&v20[v8 + 9] & v14);
  if (v6 < 0x7FFFFFFF)
  {
    v24 = *((&v23[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if (v24 != -1)
    {
      goto LABEL_10;
    }
  }

  else if ((*(v5 + 48))(v23, v6, v4))
  {
LABEL_10:
    memcpy(v22, v23, (v12 & 0xFFFFFFFFFFFFFFF8) + 32);
    goto LABEL_15;
  }

  (*(v5 + 32))(v22, v23, v4);
  v25 = (&v23[v12] & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  v27 = (&v22[v12] & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v25;
  v27[1] = v26;
LABEL_15:
  v28 = &v22[v13];
  v29 = *(a3 + 24);
  v30 = &v23[v13];
  v31 = *(v29 - 8);
  v32 = *(v31 + 84);
  v33 = *(v31 + 80) & 0xF8 | 7;
  v34 = (&v28[v33] & ~v33);
  v35 = (&v30[v33] & ~v33);
  v36 = *(v31 + 64) + 7;
  v37 = v36 & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32)
  {
    if (!(*(v31 + 48))(&v30[v33] & ~v33, v32, v29))
    {
LABEL_26:
      (*(v31 + 32))(v34, v35, v29);
      *(&v34[v36] & 0xFFFFFFFFFFFFFFF8) = *((v35 + v36) & 0xFFFFFFFFFFFFFFF8);
      if (!v32)
      {
        v34[v38] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(v35 + v38))
    {
      goto LABEL_26;
    }

    v39 = *(v35 + v38) - 1;
    v40 = v38 & 0xFFFFFFF8;
    if ((v38 & 0xFFFFFFF8) != 0)
    {
      v39 = 0;
      v40 = *v35;
    }

    if ((v40 | v39) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }
  }

  if (v32)
  {
    v41 = v37 + 8;
  }

  else
  {
    v41 = v37 + 9;
  }

  memcpy(v34, v35, v41);
  return a1;
}

_OWORD *sub_21D16E27C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v9 += 23;
  v73 = a1;
  v11 = a1 + v9;
  v12 = ~v10;
  v13 = (v11 & ~v10);
  v14 = ((a2 + v9) & ~v10);
  v15 = *(v7 + 64) + 7;
  v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + 32;
  __dst = v7;
  if (v8 < 0x7FFFFFFF)
  {
    v20 = *((&v14[v15] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v19 = v20 + 1;
    if (*((&v13[v15] & 0xFFFFFFFFFFFFFFF8) + 24) < 0xFFFFFFFFuLL)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *(v7 + 48);
    v18 = v17(v11 & ~v10, v8, v6);
    v19 = v17(v14, v8, v6);
    v12 = ~v10;
    v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + 32;
    if (v18)
    {
LABEL_3:
      if (v19)
      {
        memcpy(v13, v14, v16);
      }

      else
      {
        __dst[4](v13, v14, v6);
        v22 = (&v14[v15] & 0xFFFFFFFFFFFFFFF8);
        v23 = v22[1];
        v24 = (&v13[v15] & 0xFFFFFFFFFFFFFFF8);
        *v24 = *v22;
        v24[1] = v23;
      }

      goto LABEL_12;
    }
  }

  v21 = &v13[v15] & 0xFFFFFFFFFFFFFFF8;
  if (v19)
  {
    (__dst[1])(v13, v6);
    __swift_destroy_boxed_opaque_existential_0((&v13[v15] & 0xFFFFFFFFFFFFFFF8));
    memcpy(v13, v14, v16);
  }

  else
  {
    __dst[5](v13, v14, v6);
    v25 = &v14[v15];
    v71 = v15;
    v26 = v12;
    v27 = (v25 & 0xFFFFFFFFFFFFFFF8);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v28 = *v27;
    v29 = v27[1];
    v12 = v26;
    v15 = v71;
    *v21 = v28;
    *(v21 + 16) = v29;
  }

LABEL_12:
  v30 = &v13[v16];
  v31 = &v14[v16];
  v32 = *&v14[v16];
  v30[8] = v14[v16 + 8];
  *v30 = v32;
  v33 = (&v13[v16 + 9 + v10] & v12);
  v34 = (&v31[v10 + 9] & v12);
  if (v8 < 0x7FFFFFFF)
  {
    v41 = *((&v34[v15] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v41 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    v37 = v41 + 1;
    if (*((&v33[v15] & 0xFFFFFFFFFFFFFFF8) + 24) < 0xFFFFFFFFuLL)
    {
LABEL_14:
      if (!v37)
      {
        __dst[4](v33, v34, v6);
        v38 = (&v34[v15] & 0xFFFFFFFFFFFFFFF8);
        v39 = v38[1];
        v40 = (&v33[v15] & 0xFFFFFFFFFFFFFFF8);
        *v40 = *v38;
        v40[1] = v39;
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v35 = __dst[6];
    v36 = v35(v33, v8, v6);
    v37 = v35(v34, v8, v6);
    if (v36)
    {
      goto LABEL_14;
    }
  }

  v42 = (&v33[v15] & 0xFFFFFFFFFFFFFFF8);
  if (v37)
  {
    (__dst[1])(v33, v6);
    __swift_destroy_boxed_opaque_existential_0((&v33[v15] & 0xFFFFFFFFFFFFFFF8));
LABEL_21:
    memcpy(v33, v34, v16);
    goto LABEL_23;
  }

  __dst[5](v33, v34, v6);
  v43 = (&v34[v15] & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_0((&v33[v15] & 0xFFFFFFFFFFFFFFF8));
  v44 = v43[1];
  *v42 = *v43;
  v42[1] = v44;
LABEL_23:
  v45 = &v33[v16];
  v46 = *(a3 + 24);
  v47 = &v34[v16];
  v48 = *(v46 - 8);
  v49 = *(v48 + 84);
  v50 = *(v48 + 80) & 0xF8 | 7;
  v51 = (&v45[v50] & ~v50);
  v52 = (&v47[v50] & ~v50);
  v53 = *(v48 + 64);
  v54 = v53 + 7;
  v55 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = v55 + 8;
  v72 = v46;
  if (!v49)
  {
    if (*(v51 + v56))
    {
      v63 = *(v51 + v56) - 1;
      if (v55 == -8)
      {
        v64 = 0;
      }

      else
      {
        v63 = 0;
        v64 = *v51;
      }

      if ((v64 | v63) != 0xFFFFFFFF)
      {
        if (!*(v52 + v56))
        {
          goto LABEL_51;
        }

        v65 = *(v52 + v56) - 1;
        if (v55 == -8)
        {
          v66 = 0;
        }

        else
        {
          v65 = 0;
          v66 = *v52;
        }

        if ((v66 | v65) == 0xFFFFFFFF)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }
    }

    if (!*(v52 + v56))
    {
LABEL_48:
      (*(v48 + 40))(v51, v52);
      *((v51 + v54) & 0xFFFFFFFFFFFFFFF8) = *((v52 + v54) & 0xFFFFFFFFFFFFFFF8);
      return v73;
    }

    v67 = *(v52 + v56) - 1;
    if (v55 != -8)
    {
      v67 = 0;
    }

    __dsta = v51;
    if (v55 == -8)
    {
      v68 = 0;
    }

    else
    {
      v68 = *v52;
    }

    v62 = (v68 | v67) + 1;
LABEL_42:
    v51 = __dsta;
    if (v62)
    {
      (*(v48 + 8))(__dsta, v72);
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  v57 = v53 + 7;
  v58 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v48 + 48);
  __dsta = (&v45[v50] & ~v50);
  v60 = v46;
  v61 = v59(v51, v49);
  v62 = (v59)(v52, v49, v60);
  v55 = v58;
  v54 = v57;
  if (!v61)
  {
    goto LABEL_42;
  }

  v51 = __dsta;
  if (!v62)
  {
LABEL_51:
    (*(v48 + 32))(v51, v52, v72);
    *((v51 + v54) & 0xFFFFFFFFFFFFFFF8) = *((v52 + v54) & 0xFFFFFFFFFFFFFFF8);
    if (!v49)
    {
      *(v51 + v56) = 0;
    }

    return v73;
  }

LABEL_44:
  if (v49)
  {
    v69 = v56;
  }

  else
  {
    v69 = v55 + 9;
  }

  memcpy(v51, v52, v69);
  return v73;
}

uint64_t sub_21D16E874(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v10)
  {
    v14 = 8;
  }

  else
  {
    v14 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 80) & 0xF8;
  v16 = v15 | 7;
  v17 = *(*(*(a3 + 16) - 8) + 64) + 7;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 32;
  v19 = (v15 | 7) + v18 + 9;
  v20 = *(v9 + 80) & 0xF8 | 7;
  v21 = v18 + v20;
  v22 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_38;
  }

  v23 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + ((v21 + ((v19 + ((v15 + 23) & ~v16)) & ~v16)) & ~v20);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_18;
  }

  v26 = ((v22 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v26))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_38:
    if ((v12 & 0x80000000) == 0)
    {
      v30 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }

    v32 = (a1 + v16 + 16) & ~v16;
    if (v7 == v13)
    {
      if (v5 < 0x7FFFFFFF)
      {
        v36 = *(((v17 + v32) & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        v33 = v36 + 1;
      }

      else
      {
        v33 = (*(v4 + 48))(v32);
      }

      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    if (v10)
    {
      v34 = (*(v9 + 48))((v21 + ((v19 + v32) & ~v16)) & ~v20, v10, v8);
      v35 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v35)
      {
        return result;
      }
    }

    return 0;
  }

  if (v26 > 0xFF)
  {
    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v26 < 2)
  {
    goto LABEL_38;
  }

LABEL_18:
  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_38;
  }

LABEL_25:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = v23;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v13 + (v29 | v27) + 1;
}

void sub_21D16EB54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = *(*(*(a4 + 16) - 8) + 64);
  v15 = v9 - 1;
  v16 = v12 - 1;
  if (!v12)
  {
    v16 = 0;
  }

  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v9 - 1;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v13 & 0xF8 | 7;
  v20 = v14 + 7;
  v21 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v22 = v19 + v21 + 9;
  v23 = (v22 + (((v13 & 0xF8) + 23) & ~v19)) & ~v19;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v21 + v24;
  v26 = (v21 + v24 + v23) & ~v24;
  v27 = (*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v27 + 8;
  v29 = v27 + 9;
  if (v12)
  {
    v29 = v28;
  }

  v30 = v26 + v29;
  v31 = a3 >= v18;
  v32 = a3 - v18;
  if (v32 == 0 || !v31)
  {
LABEL_25:
    if (v18 < a2)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  if (v30 <= 3)
  {
    v33 = ((v32 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
    if (HIWORD(v33))
    {
      v6 = 4;
      if (v18 < a2)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    if (v33 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v33 < 2)
    {
      v6 = 0;
    }

    goto LABEL_25;
  }

  v6 = 1;
  if (v18 < a2)
  {
LABEL_26:
    v34 = ~v18 + a2;
    if (v30 < 4)
    {
      v35 = (v34 >> (8 * v30)) + 1;
      if (v30)
      {
        bzero(a1, v30);
        *a1 = v34;
      }
    }

    else
    {
      bzero(a1, v30);
      *a1 = v34;
      v35 = 1;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *&a1[v30] = v35;
      }

      else
      {
        *&a1[v30] = v35;
      }
    }

    else if (v6)
    {
      a1[v30] = v35;
    }

    return;
  }

LABEL_36:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v30] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v30] = 0;
  }

  else if (v6)
  {
    a1[v30] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }

    return;
  }

  v36 = &a1[v19 + 16];
  v37 = (v36 & ~v19);
  if (v15 == v18)
  {
    v38 = a2 - v9;
    if (a2 < v9)
    {
      if (v8 < 0x7FFFFFFF)
      {
        v46 = ((v37 + v20) & 0xFFFFFFFFFFFFFFF8);
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v46[2] = 0;
          v46[3] = 0;
          *v46 = a2 - 0x7FFFFFFF;
          v46[1] = 0;
        }

        else
        {
          v46[3] = a2;
        }
      }

      else
      {
        v39 = *(v7 + 56);
        v40 = v36 & ~v19;
        v41 = a2 + 1;

        v39(v40, v41);
      }

      return;
    }

    if (!v21)
    {
      return;
    }

    v42 = (v36 & ~v19);
    v45 = v21;
LABEL_64:
    bzero(v42, v45);
    *v37 = v38;
    return;
  }

  v42 = ((v25 + ((v37 + v22) & ~v19)) & ~v24);
  v38 = a2 - v12;
  if (a2 >= v12)
  {
    if (!v28)
    {
      return;
    }

    v37 = ((v25 + ((v37 + v22) & ~v19)) & ~v24);
    v45 = v28;
    goto LABEL_64;
  }

  v43 = *(v11 + 56);
  v44 = a2 + 1;

  v43(v42, v44, v12, v10);
}

uint64_t sub_21D16EF18(uint64_t a1, int a2)
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

uint64_t sub_21D16EF38(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21D16F2E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223D43210](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_21D16F338(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x223D43220](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_21D16F438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9, a3, a4);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_21D16F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10, a3, a4);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_21D16F504@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBFABFC();
  *a1 = result;
  return result;
}

uint64_t sub_21D16F5A4(uint64_t a1, id *a2)
{
  v3 = sub_21DBFA15C();
  *a2 = 0;
  return v3 & 1;
}

void sub_21D16F624(uint64_t *a2@<X8>)
{
  sub_21DBFA16C();
  v3 = sub_21DBFA12C();

  *a2 = v3;
}

uint64_t sub_21D16F674()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D16F6BC(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

void sub_21D16F700(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21D171B34(a1);

  *a2 = v3;
}

uint64_t sub_21D16F740(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C18, type metadata accessor for REMSortingStyle, byte_21DC073E8);
  sub_21D110164(&qword_27CE57C20, type metadata accessor for REMSortingStyle, byte_21DC07390);

  return sub_21DBFC44C();
}

void sub_21D16F7FC(uint64_t *a2@<X8>)
{
  v3 = sub_21DA9B570();

  *a2 = v3;
}

uint64_t sub_21D16F83C(uint64_t a1)
{
  sub_21D110164(&qword_27CE57F18, type metadata accessor for DocumentReadingOptionKey, aI_11);
  sub_21D110164(&qword_27CE57F20, type metadata accessor for DocumentReadingOptionKey, aYCd_0);

  return sub_21DBFC44C();
}

uint64_t sub_21D16F8F8(uint64_t a1)
{
  sub_21D110164(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  sub_21D110164(&qword_27CE57CB8, type metadata accessor for Key, byte_21DC06754);

  return sub_21DBFC44C();
}

uint64_t sub_21D16FA44(uint64_t a1)
{
  sub_21D110164(&qword_27CE57BE8, type metadata accessor for Identifier, "9!cdܫ\b");
  sub_21D110164(&qword_27CE57BF0, type metadata accessor for Identifier, aCd);

  return sub_21DBFC44C();
}

float sub_21D16FB00@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_21D16FB0C(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C80, type metadata accessor for UILayoutPriority, aM4cd0);
  sub_21D110164(&qword_27CE57C88, type metadata accessor for UILayoutPriority, byte_21DC06B0C);
  return sub_21DBFC44C();
}

uint64_t sub_21D16FBC8(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C08, type metadata accessor for REMListBadgeEmblem, byte_21DC07628);
  sub_21D110164(&qword_27CE57C10, type metadata accessor for REMListBadgeEmblem, "Y5cd̶\b");

  return sub_21DBFC44C();
}

double sub_21D16FC84@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_21D16FC90(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C48, type metadata accessor for Weight, byte_21DC07034);
  sub_21D110164(&qword_27CE57C50, type metadata accessor for Weight, aUCd);
  sub_21D171564();
  return sub_21DBFC44C();
}

uint64_t sub_21D16FD58(uint64_t a1)
{
  sub_21D110164(&qword_27CE57CA0, type metadata accessor for REMSmartListType, byte_21DC068B8);
  sub_21D110164(&unk_27CE57CA8, type metadata accessor for REMSmartListType, byte_21DC06860);

  return sub_21DBFC44C();
}

uint64_t sub_21D16FEEC(uint64_t a1)
{
  sub_21D110164(&qword_27CE57BD8, type metadata accessor for Name, aE_4);
  sub_21D110164(&qword_27CE57BE0, type metadata accessor for Name, a5Cd);

  return sub_21DBFC44C();
}

uint64_t sub_21D16FFA8(uint64_t a1)
{
  sub_21D110164(&qword_27CE57BF8, type metadata accessor for UIBackgroundTaskIdentifier, aACd);
  sub_21D110164(&qword_27CE57C00, type metadata accessor for UIBackgroundTaskIdentifier, byte_21DC07718);
  return sub_21DBFC44C();
}

uint64_t sub_21D170064(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C70, type metadata accessor for FileProtectionType, byte_21DC06D24);
  sub_21D110164(&qword_27CE57C78, type metadata accessor for FileProtectionType, aECd);

  return sub_21DBFC44C();
}

uint64_t sub_21D170120(uint64_t a1)
{
  sub_21D110164(&qword_27CE57F38, type metadata accessor for OptionsKey, byte_21DC08BD4);
  sub_21D110164(&qword_27CE57F40, type metadata accessor for OptionsKey, aCdp);

  return sub_21DBFC44C();
}

uint64_t sub_21D1701DC(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C90, type metadata accessor for URLResourceKey, byte_21DC06A08);
  sub_21D110164(&qword_27CE57C98, type metadata accessor for URLResourceKey, byte_21DC069A8);

  return sub_21DBFC44C();
}

uint64_t sub_21D170400(uint64_t a1)
{
  sub_21D110164(&qword_27CE57F28, type metadata accessor for NSKeyValueChangeKey, asc_21DC08B90);
  sub_21D110164(&qword_27CE57F30, type metadata accessor for NSKeyValueChangeKey, aECd_0);

  return sub_21DBFC44C();
}

uint64_t sub_21D1704BC(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C60, type metadata accessor for TraitKey, byte_21DC06EDC);
  sub_21D110164(&qword_27CE57C68, type metadata accessor for TraitKey, byte_21DC06E7C);

  return sub_21DBFC44C();
}

uint64_t sub_21D170578(uint64_t a1)
{
  sub_21D110164(&qword_280D17718, type metadata accessor for AttributeName, byte_21DC082A4);
  sub_21D110164(&qword_27CE57C40, type metadata accessor for AttributeName, byte_21DC0712C);

  return sub_21DBFC44C();
}

void sub_21D170634(uint64_t *a2@<X8>)
{
  v3 = sub_21DBFA12C();

  *a2 = v3;
}

uint64_t sub_21D17067C(uint64_t a1)
{
  sub_21D110164(&qword_27CE57C28, type metadata accessor for InfoKey, byte_21DC072A0);
  sub_21D110164(&unk_27CE57C30, type metadata accessor for InfoKey, byte_21DC07240);

  return sub_21DBFC44C();
}

uint64_t sub_21D1707A0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x223D44FD0](*&v1);
}

uint64_t sub_21D170804()
{
  v0 = sub_21DBFA16C();
  v1 = MEMORY[0x223D42B60](v0);

  return v1;
}

double sub_21D170840(uint64_t a1)
{
  sub_21DBFA16C();
  sub_21DBFA27C();

  return result;
}

unint64_t sub_21D171564()
{
  result = qword_27CE57C58;
  if (!qword_27CE57C58)
  {
    result = swift_getWitnessTable(MEMORY[0x277D85068], MEMORY[0x277D85048], v0, v1);
    atomic_store(result, &qword_27CE57C58);
  }

  return result;
}

uint64_t sub_21D171B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t TTRReminderPrintingHTMLGenerator.__allocating_init(isRightToLeft:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = sub_21D1769A8(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t TTRReminderPrintingHTMLGenerator.init(isRightToLeft:)(char a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = sub_21D1769A8(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  return v1;
}

char *TTRReminderPrintingHTMLGenerator.generateHTML(for:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  result = sub_21D172200(v3);
  if (!v2)
  {
    v10 = v9;
    v44 = result;
    v45 = v9;
    v11 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE580E8, &qword_21DC08D68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v13 = a1[2];
    *(inited + 32) = v13;
    strcpy((inited + 40), "--list-color");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    sub_21DBF8E0C();
    v14 = v13;
    v15 = sub_21D1769A8(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE580F0, &unk_21DC08D70);
    swift_beginAccess();
    *(v3 + 40) = v15;

    v16 = sub_21D176AF0(a1);
    v18 = v17;
    MEMORY[0x28223BE20](v16);
    v46 = v3;
    v35 = v3;
    v36 = a1;
    v20 = sub_21D1737DC(sub_21D176EA4, &v37[-4], v19, type metadata accessor for TTRRemindersPrintingViewModel.Item);
    v37[1] = 0;
    v42 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v21 = sub_21DBFA07C();
    v23 = v22;

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_21DBFBEEC();

    v42 = v16;
    v43 = v18;
    MEMORY[0x223D42AA0](0xD000000000000024, 0x800000021DC43ED0);
    MEMORY[0x223D42AA0](v21, v23);

    MEMORY[0x223D42AA0](0x3E7669642F3C0ALL, 0xE700000000000000);
    v24 = v43;
    v38 = v42;
    v42 = v11;
    v43 = v10;
    v40 = 0xD000000000000019;
    v41 = 0x800000021DC43F00;
    v25 = sub_21DBF582C();
    v39 = *(*(v25 - 8) + 56);
    v39(v7, 1, 1, v25);
    v26 = sub_21D176F0C();
    v35 = v26;
    v36 = v26;
    sub_21DBFBBAC();
    v28 = v27;
    sub_21D0CF7E0(v7, &unk_27CE65010, &qword_21DC08D60);

    if (v28 & 1) != 0 || (v42 = v38, v43 = v24, v38 = sub_21D176FB4(), sub_21DBFA20C(), , v29 = sub_21D1748E8(), v31 = v30, v42 = v44, v43 = v45, v40 = 0xD000000000000015, v41 = 0x800000021DC43F20, v39(v7, 1, 1, v25), sub_21DBF8E0C(), v35 = v26, v36 = v26, sub_21DBFBBAC(), v33 = v32, sub_21D0CF7E0(v7, &unk_27CE65010, &qword_21DC08D60), , (v33))
    {

      sub_21D176F60();
      swift_allocError();
      *v34 = 1;
      return swift_willThrow();
    }

    else
    {
      v42 = v29;
      v43 = v31;
      sub_21DBFA20C();

      return v44;
    }
  }

  return result;
}