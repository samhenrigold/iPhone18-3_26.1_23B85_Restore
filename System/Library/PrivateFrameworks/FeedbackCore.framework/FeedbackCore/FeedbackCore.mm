uint64_t sub_1E54C0858(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1E56055B8();

    return sub_1E56052C8();
  }

  else
  {
    sub_1E5605338();
    swift_getWitnessTable();
    sub_1E5605558();
    sub_1E56052C8();
    sub_1E5606078();
    swift_getWitnessTable();
    sub_1E5605338();
    swift_getWitnessTable();
    sub_1E5605558();
    return sub_1E56052C8();
  }
}

uint64_t sub_1E54C09BC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1E56055B8();
    sub_1E56052C8();
  }

  else
  {
    sub_1E5605338();
    swift_getWitnessTable();
    sub_1E5605558();
    sub_1E56052C8();
    sub_1E5606078();
    swift_getWitnessTable();
    sub_1E5605338();
    swift_getWitnessTable();
    sub_1E5605558();
    sub_1E56052C8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1E54C0C04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1E54C0C28(void *a1, uint64_t *a2)
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

uint64_t sub_1E54C0C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5605BB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E54C0CD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore17FBKTargetedSurvey_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C0D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore17FBKTargetedSurvey_teamId;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E54C0D84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12FeedbackCore17FBKTargetedSurvey_teamId;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E54C0DD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C0E10()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E54C0E78()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C0EB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C0F28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C0F60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C0F98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C0FD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C1018()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C1058()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E54C10A0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C10D8()
{
  v1 = sub_1E5604C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
  }

  v5 = (v3 + 40) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1E54C11AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E54C11C0()
{
  v1 = sub_1E5604C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 24))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1E54C12B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E54C12C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C12FC()
{
  v1 = sub_1E5604C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 40))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1E54C1404()
{
  v1 = sub_1E5604C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 40))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1E54C154C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1584@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore15FBKDateTimeCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C15E0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1E54C1718()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C177C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore16FBKFixtureLoader_testFixtureDir);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C17D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1810()
{

  sub_1E5566D88(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C18D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1910()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C1960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5604AC8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E54C19CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5604AC8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E54C1A40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1A78()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E54C1AC8()
{
  v1 = sub_1E5604C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E54C1B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C1BD0()
{
  v1 = sub_1E5604C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E54C1CA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C1D04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C1DB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore29FBKAttachmentDiffableCellView_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C1E10@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ECFEF208;
  *a1 = qword_1ECFEF200;
  a1[1] = v2;
}

uint64_t sub_1E54C1E74@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5605408();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E54C1F18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore11FBKUserCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C1F74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1FAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C1FE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C2024@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore21FBKAddAttachmentsCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void *sub_1E54C2084(void *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC12FeedbackCore21FBKAddAttachmentsCell_button);
  if (v2)
  {
    return [v2 setMenu_];
  }

  __break(1u);
  return result;
}

double sub_1E54C20B0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore21FBKAddAttachmentsCell_horizontalFrameInset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1E54C2108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12FeedbackCore21FBKAddAttachmentsCell_horizontalFrameInset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E54C215C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF5B0, qword_1E5614EA0);
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

uint64_t sub_1E54C2228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF5B0, qword_1E5614EA0);
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

uint64_t sub_1E54C2318()
{
  v1 = *(type metadata accessor for EnhancedLoggingView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEED50, &qword_1E5614160);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF5D0, qword_1E5614ED8) + 32);
    v7 = sub_1E5605308();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E54C2494()
{
  v1 = *(type metadata accessor for EnhancedLoggingView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEED50, &qword_1E5614160);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF5D0, qword_1E5614ED8) + 32);
    v7 = sub_1E5605308();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E54C261C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF660, &qword_1E5614FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E54C268C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E56053E8();
  *a1 = result;
  return result;
}

uint64_t sub_1E54C26E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E56053C8();
  *a1 = result;
  return result;
}

uint64_t sub_1E54C2738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF6E8, &qword_1E5615098);
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

uint64_t sub_1E54C2800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF6E8, &qword_1E5615098);
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

uint64_t sub_1E54C2908()
{
  v1 = *(type metadata accessor for DiagnosticsList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFEF620, &unk_1E5614F90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E56051F8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E54C2A30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFEF728, &qword_1E5615110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFEF720, &qword_1E5615108);
  sub_1E5605548();
  sub_1E559C234(&qword_1ECFEF780, &qword_1ECFEF720, &qword_1E5615108, MEMORY[0x1E697CD20]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E54C2BA0()
{
  MEMORY[0x1E692BCA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C2BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore21FBKExpandedChoiceCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C2C34@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1E54C2CF8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E55AE82C(v1);
}

void sub_1E54C2D34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E55AE9E0(v1);
}

uint64_t sub_1E54C2D64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore21FBKExpandedChoiceCell_showError;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1E54C2DE8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E55B045C(v1);
}

uint64_t sub_1E54C2E18()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1E54C2E58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E55B074C(v1);
}

uint64_t sub_1E54C2E90()
{
  MEMORY[0x1E692BCA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1E54C2ED0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_1E54C2F18()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C2F50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C2F88()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C2FDC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C3030()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C3078()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C3108@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore21FBKToggleQuestionCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C3164@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ECFEFA38;
  *a1 = qword_1ECFEFA30;
  a1[1] = v2;
}

uint64_t sub_1E54C31B8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1E54C32F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore12FBKTopicCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C334C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id sub_1E54C3404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore12FBKTopicCell_formStub;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1E54C3470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore12FBKTopicCell_disclosesMoreForms;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

double sub_1E54C34F0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore12FBKTopicCell_horizontalFrameInset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1E54C3548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12FeedbackCore12FBKTopicCell_horizontalFrameInset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E54C359C()
{
  MEMORY[0x1E692BCA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C35D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C3624()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C366C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C36A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C36DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C372C()
{
  MEMORY[0x1E692BCA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C3764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore26FBKBugFormPickerController_context;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E54C37BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12FeedbackCore26FBKBugFormPickerController_context;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E54C3868@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1E54C3920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5604CA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E54C39DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5604CA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1E54C3AA0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E55C43D0(v1);
}

uint64_t sub_1E54C3AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore23FBKTeamPickerController_teams;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E54C3B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore23FBKTeamPickerController_showsDismissButton;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1E54C3BC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12FeedbackCore23FBKTeamPickerController_showsDismissButton;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1E55C5004();
}

uint64_t sub_1E54C3C18@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1E54C3CD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C3D0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C3D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E54C3D94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E54C3DD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C3E14()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C3E54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore37FBKDeviceDiagnosticsControllerCombine_attachmentCollectionsChanged;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E54C3EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E55C9B54();
  *a1 = result;
  return result;
}

uint64_t sub_1E54C3F0C(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC12FeedbackCore37FBKDeviceDiagnosticsControllerCombine____lazy_storage___filesBeingAttachedCountPublisher) = *a1;
}

uint64_t sub_1E54C3F84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C3FBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E54C4004()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C403C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E54C408C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E54C40C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore13FBKSliderCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C4124@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1E54C423C()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1E54C4274()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1E54C42CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FeedbackCore20FBKModalQuestionCell_question;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1E54C4334(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E55F8F10(v1);
}

uint64_t sub_1E54C4364@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FeedbackCore20FBKModalQuestionCell_itemIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E54C43C0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ECFF0188;
  *a1 = qword_1ECFF0180;
  a1[1] = v2;
}

id FBAAlertLog(uint64_t a1)
{
  if (FBAAlertLog_onceToken1 != -1)
  {
    FBAAlertLog_cold_1();
  }

  v2 = FBAAlertLog_handle;

  return v2;
}

uint64_t __FBAAlertLog_block_invoke()
{
  FBAAlertLog_handle = os_log_create("com.apple.FeedbackCore", "fbaAlert");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __commonImageFormats_block_invoke()
{
  commonImageFormats__commonExtensions = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"png", @"jpg", @"gif", @"tif", @"bmp", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PowerlogDatabaseReaderLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = PowerlogDatabaseReaderLibraryCore_frameworkLibrary;
  v6 = PowerlogDatabaseReaderLibraryCore_frameworkLibrary;
  if (!PowerlogDatabaseReaderLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E8771C10;
    v8 = *off_1E8771C20;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PowerlogDatabaseReaderLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1E54C8E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PowerlogDatabaseReaderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PowerlogDatabaseReaderLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PowerlogDatabaseReaderLibrary()
{
  v3 = 0;
  v0 = PowerlogDatabaseReaderLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id getPLDatabaseReaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLDatabaseReaderClass_softClass;
  v7 = getPLDatabaseReaderClass_softClass;
  if (!getPLDatabaseReaderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPLDatabaseReaderClass_block_invoke;
    v3[3] = &unk_1E8771C68;
    v3[4] = &v4;
    __getPLDatabaseReaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1E54C8FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLDatabaseReaderClass_block_invoke(uint64_t a1)
{
  PowerlogDatabaseReaderLibrary();
  result = objc_getClass("PLDatabaseReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLDatabaseReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPLDatabaseReaderClass_block_invoke_cold_1();
    return [(FBKPowerLogIndexViewController *)v3 canDisplayURL:v4, v5];
  }

  return result;
}