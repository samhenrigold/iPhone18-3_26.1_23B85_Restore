uint64_t sub_21BB56314(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v15 = sub_21BE2934C();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21BB56498()
{
  v1 = type metadata accessor for DisclosureModalHostingView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_21BE25B9C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  v8 = sub_21BE2934C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_21BB566D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB56708()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB56754()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56794()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB56830()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB56918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD80, &unk_21BE48EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB569D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB56A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB56B6C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56C18()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56C50()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56CDC()
{
  sub_21BE279AC();
  sub_21BD8E0DC(&qword_27CDBC0E8, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB56DC0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56E14()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB56EB0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB56EEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB56F34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB56F74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5704C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5709C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB570F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC660, &qword_21BE4AB00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC668, &qword_21BE4AB30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC670, &unk_21BE4AB38);
  sub_21BB3B038(&qword_27CDBC678, &qword_27CDBC668, &qword_21BE4AB30, MEMORY[0x277CE04B0]);
  sub_21BD9784C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB57214@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21BB57270(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BB572E4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5739C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE278CC();
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

uint64_t sub_21BB574CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BE278CC();
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

uint64_t sub_21BB57584()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC8B8, &qword_21BE4B558);
  sub_21BB3B038(&qword_27CDBC8D0, &qword_27CDBC8B8, &qword_21BE4B558, MEMORY[0x277CDD7A8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB5761C()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB576FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA10, &qword_21BE4B868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB5776C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA10, &qword_21BE4B868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB577E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB57820()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57860()
{

  return swift_deallocObject();
}

uint64_t sub_21BB578B0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB578F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5794C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB57A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB57C24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57C6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB57CB8()
{
  MEMORY[0x21CF05D90](v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB57CFC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21BB57DB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB57E90@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BE274FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21BB57EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2737C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB57F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE50, &qword_21BE4CC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB57FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C0, &qword_21BE31098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB58050()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEC8, &qword_21BE4CD30);
  sub_21BDBCF00();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB58168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD070, &unk_21BE4D198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB58248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21BB582A8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB582F4()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB58360()
{

  return swift_deallocObject();
}

uint64_t sub_21BB583AC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21BB5842C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB58474()
{

  return swift_deallocObject();
}

void sub_21BB584B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AgeRangeAlertFlowStore.ageRangeRequestModel.setter(v1);
}

void sub_21BB584EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AgeRangeAlertFlowStore.ageRangeAlertModel.setter(v1);
}

void sub_21BB58520(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AgeRangeAlertFlowStore.privacyVersion.setter(v1);
}

void *sub_21BB58564@<X0>(void *a1@<X8>)
{
  sub_21BDC6168();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BB585C4()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB585FC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5863C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5868C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB586C4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB58708()
{
  sub_21BB47CD0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB58744()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD290, &qword_21BE4D968);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD288, &qword_21BE4D960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD280, &qword_21BE4D958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD278, &qword_21BE4D950);
  sub_21BDD0EAC();
  sub_21BB41FA4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB58880()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB588BC()
{
  v1 = sub_21BE25D1C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB58980()
{

  return swift_deallocObject();
}

uint64_t sub_21BB589C0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB589F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB58A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB58B88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB58CCC()
{
  v1 = type metadata accessor for StaticSelectableCellTemplate(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  MEMORY[0x21CF05D90](v3 + v1[7]);

  if (*(v3 + v1[10]))
  {
  }

  v7 = v1[18];
  v8 = sub_21BE2934C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_21BB58ED4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB58FB8()
{

  if (*(v0 + 72))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_21BB5904C()
{

  if (*(v0 + 56))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_21BB59128()
{

  if (*(v0 + 72))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_21BB59230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FamilyNavigationHost(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE2693C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v5 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE2690C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB593DC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBD810, &qword_21BE4EA08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21BB59518(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBD810, &qword_21BE4EA08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB59654(uint64_t *a1)
{
  type metadata accessor for NavigationManager(255);
  sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  swift_getOpaqueTypeMetadata2();
  sub_21BE2693C();
  swift_getOpaqueTypeConformance2();
  sub_21BDE3AFC(&qword_27CDBD800, MEMORY[0x277D402D0], MEMORY[0x277D402D8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB59790()
{
  v1 = sub_21BE2693C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB59828()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB59978()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F88, &qword_21BE3AA38);
  sub_21BC5E0E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB599E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD910, &qword_21BE4EFF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB59A5C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB59AFC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB59B34()
{

  return swift_deallocObject();
}

uint64_t sub_21BB59B74()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB59BB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7020, &qword_21BE39520);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDAD0, qword_21BE4F398);
  sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDAC8, &qword_21BE4F390);
  sub_21BE2760C();
  sub_21BB3B038(&qword_27CDBDAD8, &qword_27CDBDAC8, &qword_21BE4F390, MEMORY[0x277CDF028]);
  sub_21BDEF9DC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB59D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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

uint64_t sub_21BB59E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB59EDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB59F64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB59FB0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB59FF4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A03C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCA0, &qword_21BE4FF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB5A108()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A1C8()
{

  sub_21BCBC920(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_21BB5A21C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE00, &qword_21BE502B8);
  sub_21BDFFCE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB5A280(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
  swift_getTupleTypeMetadata3();
  v1 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v1);
  v2 = sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v3 = sub_21BE2719C();
  v9[0] = swift_getWitnessTable(MEMORY[0x277CE1138], v2);
  v9[1] = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
  v4 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v9);
  v5 = sub_21BE2846C();
  v6 = sub_21BE2719C();
  v8[0] = swift_getWitnessTable(MEMORY[0x277CDF028], v5);
  v8[1] = MEMORY[0x277CDF900];
  swift_getWitnessTable(v4, v6, v8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB5A454()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A4BC()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB5A4F4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A538()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A5E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB5A618()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A658()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5A7F0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A828()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5A884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
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

uint64_t sub_21BB5A950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB5AA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
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

uint64_t sub_21BB5AB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB5AC0C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB5AC44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5ACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
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
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB5ADA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB5AEC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_21BB5B1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTFamilyCircleViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F29A8;
    v6 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STFamilyCircleViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTFamilyCircleViewControllerProviderClass_block_invoke_cold_1();
  }

  getSTFamilyCircleViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21BB5C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHUAddPeopleViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HomeUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HomeUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F2A50;
    v6 = 0;
    HomeUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HomeUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HUAddPeopleViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHUAddPeopleViewControllerClass_block_invoke_cold_1();
  }

  getHUAddPeopleViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HomeUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getHFHomeURLSchemeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HomeLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HomeLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F2A68;
    v7 = 0;
    HomeLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = HomeLibraryCore_frameworkLibrary;
    if (HomeLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = HomeLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "HFHomeURLScheme");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHFHomeURLSchemeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HomeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21BB5D7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB5F678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getGDPersonEntityTagEventIDSetClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GDPersonEntityTagEventIDSet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDPersonEntityTagEventIDSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGDPersonEntityTagEventIDSetClass_block_invoke_cold_1();
    IntelligencePlatformLibrary();
  }
}

void IntelligencePlatformLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __IntelligencePlatformLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F2B18;
    v3 = 0;
    IntelligencePlatformLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __IntelligencePlatformLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IntelligencePlatformLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  result = objc_getClass("GDPersonEntityTaggingStatefulFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDPersonEntityTaggingStatefulFeedbackClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke_cold_1();
    return __getGDConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __getGDConfigurationClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  result = objc_getClass("GDConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGDConfigurationClass_block_invoke_cold_1();
    return __getGDEntityTaggingServiceClass_block_invoke(v3);
  }

  return result;
}

FAImageMarqueeViewControllerWrapper *__getGDEntityTaggingServiceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  result = objc_getClass("GDEntityTaggingService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDEntityTaggingServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGDEntityTaggingServiceClass_block_invoke_cold_1();
    return [(FAImageMarqueeViewControllerWrapper *)v3 initWithFamilyCircle:v4, v5];
  }

  return result;
}

void sub_21BB61398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB617A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB61B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary();
  }
}

void HealthKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F2E68;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getHKMedicalIDStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKMedicalIDStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKMedicalIDStoreClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0();
  }
}

void sub_21BB68E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_21BB69D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB69FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB6A3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getSOSUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass;
  v7 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB6A944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _EmergencyContactsDidChangeNotification()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D08118] object:0];
}

uint64_t getkHKMedicalIDEmergencyContactsDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr;
  v8 = getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr;
  if (!getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = HealthKitLibrary_0();
    v6[3] = dlsym(v1, "kHKMedicalIDEmergencyContactsDidChangeNotification");
    getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    +[FAHomeUISoftLinking getURLScheme];
    v4 = v3;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return *v0;
}

void sub_21BB6ADC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthStoreClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    return HealthKitLibrary_0();
  }

  return result;
}

uint64_t HealthKitLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __HealthKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782F3118;
    v5 = 0;
    HealthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getHKMedicalIDStoreClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKMedicalIDStoreClass_block_invoke_cold_1();
    return __get_HKMedicalIDDataClass_block_invoke(v3);
  }

  return result;
}

void __getMIUIDisplayConfigurationClass_block_invoke(uint64_t a1)
{
  MedicalIDUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MIUIDisplayConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIDisplayConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMIUIDisplayConfigurationClass_block_invoke_cold_1();
    MedicalIDUILibrary();
  }
}

void MedicalIDUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!MedicalIDUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __MedicalIDUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F3130;
    v3 = 0;
    MedicalIDUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MedicalIDUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MedicalIDUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MedicalIDUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMIUIMedicalIDViewControllerClass_block_invoke(uint64_t a1)
{
  MedicalIDUILibrary();
  result = objc_getClass("MIUIMedicalIDViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIMedicalIDViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMIUIMedicalIDViewControllerClass_block_invoke_cold_1();
    return __getSOSUtilitiesClass_block_invoke(v3);
  }

  return result;
}

Class __getSOSUtilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SOSLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F3148;
    v6 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SOSLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1();
  }

  getSOSUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SOSLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary_0();
  result = dlsym(v2, "kHKMedicalIDEmergencyContactsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHKMedicalIDEmergencyContactsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKHealthChecklistUtilitiesClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKHealthChecklistUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthChecklistUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKHealthChecklistUtilitiesClass_block_invoke_cold_1();
    return [(FAAgeRangeViewControllerProvider *)v3 ageRangeViewControllerForAccount:v4, v5];
  }

  return result;
}

void sub_21BB6DF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getSTChildSetupControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTChildSetupControllerClass_softClass;
  v7 = getSTChildSetupControllerClass_softClass;
  if (!getSTChildSetupControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSTChildSetupControllerClass_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSTChildSetupControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB6E0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTChildSetupControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeSettingsUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F3220;
    v6 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STChildSetupController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTChildSetupControllerClass_block_invoke_cold_1();
  }

  getSTChildSetupControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_21BB70F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary_1();
  }
}

void HealthKitLibrary_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F34B8;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getHKMedicalIDStoreClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_1();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKMedicalIDStoreClass_block_invoke_cold_1();
    return __get_HKMedicalIDDataClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSTSetupClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F34D0;
    v6 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STSetupClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTSetupClientClass_block_invoke_cold_1();
  }

  getSTSetupClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void *_AAUIHandleFamilyDidChangeNotification(uint64_t a1, void *a2)
{
  v3 = s_knownObservers;
  v6.length = CFArrayGetCount(s_knownObservers);
  v6.location = 0;
  result = CFArrayContainsValue(v3, v6, a2);
  if (result)
  {

    return [a2 _didReceiveNotification];
  }

  return result;
}

uint64_t getINFamilyDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getINFamilyDidChangeNotificationSymbolLoc_ptr;
  v8 = getINFamilyDidChangeNotificationSymbolLoc_ptr;
  if (!getINFamilyDidChangeNotificationSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getINFamilyDidChangeNotificationSymbolLoc_block_invoke;
    v4[3] = &unk_2782F2988;
    v4[4] = &v5;
    __getINFamilyDidChangeNotificationSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    +[FAHomeUISoftLinking getURLScheme];
    v3 = v2;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void *__getINFamilyDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F3540;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = iCloudNotificationLibraryCore_frameworkLibrary;
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = iCloudNotificationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "INFamilyDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINFamilyDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21BB761B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB77370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB78600(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21BB79310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21BB79CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB7A4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB7A810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKPeerPaymentAssociatedAccountsControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPeerPaymentAssociatedAccountsController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPeerPaymentAssociatedAccountsControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKPeerPaymentAssociatedAccountsControllerClass_block_invoke_cold_1();
    PassKitUILibrary();
  }
}

void PassKitUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PassKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F3830;
    v3 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PassKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPKPeerPaymentAssociatedAccountPresentationContextClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPeerPaymentAssociatedAccountPresentationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPeerPaymentAssociatedAccountPresentationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPeerPaymentAssociatedAccountPresentationContextClass_block_invoke_cold_1();
    return __getPKPassbookSettingsDefaultBehaviorClass_block_invoke(v3);
  }

  return result;
}

Class __getPKPassbookSettingsDefaultBehaviorClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPassbookSettingsDefaultBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassbookSettingsDefaultBehaviorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPassbookSettingsDefaultBehaviorClass_block_invoke_cold_1();
    return __getPKPaymentPassDetailViewControllerClass_block_invoke(v3);
  }

  return result;
}

FASharedSubscriptionSpecifierProvider *__getPKPaymentPassDetailViewControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPaymentPassDetailViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentPassDetailViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKPaymentPassDetailViewControllerClass_block_invoke_cold_1();
    return [(FASharedSubscriptionSpecifierProvider *)v3 initWithAppleAccount:v4 presenter:v5, v6];
  }

  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_21BB7F894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTRootViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeSettingsUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F3A40;
    v6 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STRootViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTRootViewControllerProviderClass_block_invoke_cold_1();
  }

  getSTRootViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_21BB81E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB8262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB82D50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21BB85880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB85BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB87D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB88B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PassKitUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_21BB8BB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 224), 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB8DB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getINFamilyDidChangeNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F3F98;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = iCloudNotificationLibraryCore_frameworkLibrary_0;
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = iCloudNotificationLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "INFamilyDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINFamilyDidChangeNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB8FD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _FALogSystem(uint64_t a1)
{
  if (_FALogSystem_onceToken != -1)
  {
    _FALogSystem_cold_1();
  }

  v2 = _FALogSystem_log;

  return v2;
}

id _FAAgeAttestationLogSystem(uint64_t a1)
{
  if (_FAAgeAttestationLogSystem_onceToken != -1)
  {
    _FAAgeAttestationLogSystem_cold_1();
  }

  v2 = _FAAgeAttestationLogSystem_log;

  return v2;
}

id _FASignpostLogSystem(uint64_t a1)
{
  if (_FASignpostLogSystem_onceToken != -1)
  {
    _FASignpostLogSystem_cold_1();
  }

  v2 = _FASignpostLogSystem_log;

  return v2;
}

os_signpost_id_t _FASignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

unint64_t _FASignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_FASignpostGetNanoseconds_onceToken != -1)
  {
    _FASignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _FASignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_27CDBE4EC;
  return (v4 / v5 * (v3 - a2));
}

__CFString *FALogStringForQualityOfService(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"Default";
    }

    if (a1 == 9)
    {
      return @"Background";
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return @"Utility";
      case 33:
        return @"UserInteractive";
      case 25:
        return @"UserInitiated";
    }
  }

  return @"Unknown";
}

void sub_21BB91A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTCommunicationLimitsViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenTimeSettingsUILibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeSettingsUILibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F40C0;
    v6 = 0;
    ScreenTimeSettingsUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeSettingsUILibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STCommunicationLimitsViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTCommunicationLimitsViewControllerProviderClass_block_invoke_cold_1();
  }

  getSTCommunicationLimitsViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeSettingsUILibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeSettingsUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_21BB96494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB96E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSTManagementStateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTManagementStateClass_softClass;
  v7 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSTManagementStateClass_block_invoke;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSTManagementStateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB9C644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB9D31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BB9D618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB9D83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB9DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOSUtilitiesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass_0;
  v7 = getSOSUtilitiesClass_softClass_0;
  if (!getSOSUtilitiesClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke_0;
    v3[3] = &unk_2782F2988;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21BB9E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHKHealthStoreClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary_2();
  }
}

void HealthKitLibrary_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __HealthKitLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F4348;
    v3 = 0;
    HealthKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HealthKitLibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HealthKitLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getHKMedicalIDStoreClass_block_invoke_2(uint64_t a1)
{
  HealthKitLibrary_2();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKMedicalIDStoreClass_block_invoke_cold_1();
    return __get_HKMedicalIDDataClass_block_invoke_1(v3);
  }

  return result;
}

void __getSTSetupClientClass_block_invoke_0(uint64_t a1)
{
  ScreenTimeCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STSetupClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTSetupClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTSetupClientClass_block_invoke_cold_1();
    ScreenTimeCoreLibrary();
  }
}

void ScreenTimeCoreLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ScreenTimeCoreLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F4360;
    v3 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSTManagementStateClass_block_invoke(uint64_t a1)
{
  ScreenTimeCoreLibrary();
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTManagementStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTManagementStateClass_block_invoke_cold_1();
    return __getMIUIDisplayConfigurationClass_block_invoke_0(v3);
  }

  return result;
}

void __getMIUIDisplayConfigurationClass_block_invoke_0(uint64_t a1)
{
  MedicalIDUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MIUIDisplayConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIDisplayConfigurationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMIUIDisplayConfigurationClass_block_invoke_cold_1();
    MedicalIDUILibrary_0();
  }
}

void MedicalIDUILibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!MedicalIDUILibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __MedicalIDUILibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2782F4378;
    v3 = 0;
    MedicalIDUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MedicalIDUILibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MedicalIDUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MedicalIDUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMIUIMedicalIDViewControllerClass_block_invoke_0(uint64_t a1)
{
  MedicalIDUILibrary_0();
  result = objc_getClass("MIUIMedicalIDViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMIUIMedicalIDViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMIUIMedicalIDViewControllerClass_block_invoke_cold_1();
    return __getSOSUtilitiesClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSOSUtilitiesClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SOSLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F4390;
    v6 = 0;
    SOSLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SOSLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1();
  }

  getSOSUtilitiesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SOSLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_21BB9FA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BBA0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_21BBA1D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_21BBA1FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5558, &qword_21BE32438);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  *v6 = sub_21BE2770C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5580, &qword_21BE32450);
  sub_21BE26EEC();
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5560, &qword_21BE32440);
  sub_21BB3B038(&qword_27CDB5568, &qword_27CDB5558, &qword_21BE32438, MEMORY[0x277CE1198]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5570, &qword_21BE32448);
  v8 = sub_21BB3B038(&qword_27CDB5578, &qword_27CDB5570, &qword_21BE32448, MEMORY[0x277CDD7A8]);
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  return sub_21BBA57B0(v6);
}

uint64_t sub_21BBA21AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE278CC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5570, &qword_21BE32448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_21BE2789C();
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5588, &qword_21BE32458);
  sub_21BBA5820();
  sub_21BE26EDC();
  v9 = sub_21BB3B038(&qword_27CDB5578, &qword_27CDB5570, &qword_21BE32448, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21BBA2370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_21BB41FA4();

  sub_21BE2845C();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5588, &qword_21BE32458) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v11 = *MEMORY[0x277CDF420];
  v12 = sub_21BE26E7C();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

uint64_t sub_21BBA2514()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5550, &qword_21BE32430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5558, &qword_21BE32438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5560, &qword_21BE32440);
  sub_21BB3B038(&qword_27CDB5568, &qword_27CDB5558, &qword_21BE32438, MEMORY[0x277CE1198]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5570, &qword_21BE32448);
  sub_21BB3B038(&qword_27CDB5578, &qword_27CDB5570, &qword_21BE32448, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

unint64_t sub_21BBA2694()
{
  result = qword_27CDB5050;
  if (!qword_27CDB5050)
  {
    v3 = sub_21BE2715C();
    result = swift_getWitnessTable(MEMORY[0x28220E4E0], v3, v0, v1);
    atomic_store(result, &qword_27CDB5050);
  }

  return result;
}

uint64_t sub_21BBA26E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = a7;
    v33 = a8;
    v34 = v9;
    v31 = sub_21BE2715C();
    v18 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      MEMORY[0x21CF03CA0](a4, a5);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v35 = a6;
      v25 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v25);
    }

    v26 = sub_21BE28DAC();
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_21BE2714C();
    sub_21BBA3854(v34, a9, &qword_27CDB5060, &qword_21BE31038);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5068, &unk_21BE31040);
    return (*(v18 + 32))(a9 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5070, &qword_21BE38B20) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_21BBA3854(v9, a9, &qword_27CDB5060, &qword_21BE31038);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21BBA2A64@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = a7;
    v36 = a8;
    v37 = v9;
    v34 = sub_21BE2715C();
    v18 = *(v34 - 8);
    MEMORY[0x28223BE20](v34);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v39, "View.task @ ");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      MEMORY[0x21CF03CA0](a4, a5);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v38 = a6;
      v27 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v27);
    }

    v28 = sub_21BE28DAC();
    MEMORY[0x28223BE20](v28);
    (*(v30 + 16))(&v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_21BE2714C();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5078, &unk_21BE31050);
    (*(*(v31 - 8) + 16))(a9, v37, v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5080, &qword_21BE3EDA0);
    return (*(v18 + 32))(a9 + *(v32 + 36), v20, v34);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5088, &unk_21BE31060) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5078, &unk_21BE31050);
    v25 = *(*(v24 - 8) + 16);

    return v25(a9, v9, v24);
  }
}

uint64_t sub_21BBA2E20@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = a7;
    v33 = a8;
    v34 = v9;
    v31 = sub_21BE2715C();
    v18 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      MEMORY[0x21CF03CA0](a4, a5);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v35 = a6;
      v25 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v25);
    }

    v26 = sub_21BE28DAC();
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_21BE2714C();
    sub_21BBA3854(v34, a9, &qword_27CDB5090, &qword_21BE43430);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5098, &qword_21BE31070);
    return (*(v18 + 32))(a9 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A0, &qword_21BE31078) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_21BBA3854(v9, a9, &qword_27CDB5090, &qword_21BE43430);
  }
}

uint64_t sub_21BBA315C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = a7;
    v36 = a8;
    v37 = v9;
    v34 = sub_21BE2715C();
    v18 = *(v34 - 8);
    MEMORY[0x28223BE20](v34);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v39, "View.task @ ");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      MEMORY[0x21CF03CA0](a4, a5);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v38 = a6;
      v27 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v27);
    }

    v28 = sub_21BE28DAC();
    MEMORY[0x28223BE20](v28);
    (*(v30 + 16))(&v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_21BE2714C();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A8, &qword_21BE31080);
    (*(*(v31 - 8) + 16))(a9, v37, v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50B0, &qword_21BE31088);
    return (*(v18 + 32))(a9 + *(v32 + 36), v20, v34);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50B8, &qword_21BE31090) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A8, &qword_21BE31080);
    v25 = *(*(v24 - 8) + 16);

    return v25(a9, v9, v24);
  }
}

uint64_t sub_21BBA3518@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = a7;
    v33 = a8;
    v34 = v9;
    v31 = sub_21BE2715C();
    v18 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_21BE295EC();

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      MEMORY[0x21CF03CA0](a4, a5);
      MEMORY[0x21CF03CA0](58, 0xE100000000000000);
      v35 = a6;
      v25 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v25);
    }

    v26 = sub_21BE28DAC();
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_21BE2714C();
    sub_21BBA3854(v34, a9, &qword_27CDB50C0, &qword_21BE31098);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C8, &unk_21BE310A0);
    return (*(v18 + 32))(a9 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50D0, &unk_21BE4CC50) + 36));
    v22 = *(sub_21BE2701C() + 20);
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_21BBA3854(v9, a9, &qword_27CDB50C0, &qword_21BE31098);
  }
}

uint64_t sub_21BBA3854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21BBA38C4@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v6;
  v7 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v7;
  *(a3 + 64) = a1;
  *(a3 + 68) = a2;
  sub_21BBA4A38(v4, v5, *(v3 + 40) & 1);
}

uint64_t sub_21BBA3938()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BBA3980(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v2);
  return sub_21BE29B0C();
}

uint64_t sub_21BBA39CC()
{
  sub_21BE29ACC();
  sub_21BE29AFC();
  return sub_21BE29B0C();
}

uint64_t sub_21BBA3A40(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE29AFC();
  return sub_21BE29B0C();
}

_DWORD *sub_21BBA3A98@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21BBA3AA8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CF04040](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21BBA3AFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE28EAC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_21BBA3B54(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5220, type metadata accessor for AgeRangeError, aSF);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21BBA3BC0(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5220, type metadata accessor for AgeRangeError, aSF);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21BBA3C30(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21BBA3C9C(uint64_t a1, id *a2)
{
  result = sub_21BE289EC();
  *a2 = 0;
  return result;
}

uint64_t sub_21BBA3D14(uint64_t a1, id *a2)
{
  v3 = sub_21BE289FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21BBA3D94@<X0>(uint64_t *a2@<X8>)
{
  sub_21BE28A0C();
  v3 = sub_21BE289CC();

  *a2 = v3;
  return result;
}

BOOL sub_21BBA3E14(void *a1, uint64_t *a2)
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

void *sub_21BBA3E44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_21BBA3E70@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21BBA3F58(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21BBA3FC4(uint64_t a1)
{
  v2 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21BBA4030(void *a1, uint64_t a2)
{
  v4 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21BBA40E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21BBA4160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BE29ACC();
  sub_21BE2895C();
  return sub_21BE29B0C();
}

uint64_t sub_21BBA41C0(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB5270, type metadata accessor for FACircleEventType, aJF);
  sub_21BBA4B1C(&qword_27CDB5278, type metadata accessor for FACircleEventType, byte_21BE3138C);

  return sub_21BE297FC();
}

uint64_t sub_21BBA427C(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB55F0, type metadata accessor for Name, byte_21BE3259C);
  sub_21BBA4B1C(&qword_27CDB55F8, type metadata accessor for Name, byte_21BE3253C);

  return sub_21BE297FC();
}

uint64_t sub_21BBA4338(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB5530, type metadata accessor for Dataclass, aY_3);
  sub_21BBA4B1C(&qword_27CDB5538, type metadata accessor for Dataclass, aA_3);

  return sub_21BE297FC();
}

uint64_t sub_21BBA43F4(uint64_t a1)
{
  sub_21BBA4B1C(&unk_280BD6960, type metadata accessor for AIDAServiceType, byte_21BE322E4);
  sub_21BBA4B1C(&qword_27CDB5528, type metadata accessor for AIDAServiceType, byte_21BE31E28);

  return sub_21BE297FC();
}

uint64_t sub_21BBA44B0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21BD8AD30();

  *a2 = v3;
  return result;
}

uint64_t sub_21BBA44F0(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB5260, type metadata accessor for RequestContext, aI_7);
  sub_21BBA4B1C(&qword_27CDB5268, type metadata accessor for RequestContext, a1_4);
  return sub_21BE297FC();
}

uint64_t sub_21BBA45AC(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB5510, type metadata accessor for FAUpdateMemberFlagKey, byte_21BE322A4);
  sub_21BBA4B1C(&unk_27CDB5518, type metadata accessor for FAUpdateMemberFlagKey, aQF_2);

  return sub_21BE297FC();
}

uint64_t sub_21BBA4668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBA4B1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21BBA46EC(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB5500, type metadata accessor for RequestEntryPoint, byte_21BE320B8);
  sub_21BBA4B1C(&qword_27CDB5508, type metadata accessor for RequestEntryPoint, aQF_3);
  return sub_21BE297FC();
}

uint64_t sub_21BBA47A8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21BE289CC();

  *a2 = v3;
  return result;
}

uint64_t sub_21BBA47F0(uint64_t a1)
{
  sub_21BBA4B1C(&qword_27CDB54F0, type metadata accessor for OpenExternalURLOptionsKey, aYFx);
  sub_21BBA4B1C(&qword_27CDB54F8, type metadata accessor for OpenExternalURLOptionsKey, aU_3);

  return sub_21BE297FC();
}

uint64_t sub_21BBA48AC()
{
  v0 = sub_21BE28A0C();
  v1 = MEMORY[0x21CF03D20](v0);

  return v1;
}

uint64_t sub_21BBA48E8(uint64_t a1)
{
  sub_21BE28A0C();
  sub_21BE28ABC();
}

uint64_t sub_21BBA493C(uint64_t a1)
{
  sub_21BE28A0C();
  sub_21BE29ACC();
  sub_21BE28ABC();
  v1 = sub_21BE29B0C();

  return v1;
}

uint64_t sub_21BBA49B0(void *a1, uint64_t *a2)
{
  v2 = sub_21BE28A0C();
  v4 = v3;
  if (v2 == sub_21BE28A0C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BE2995C();
  }

  return v7 & 1;
}

uint64_t sub_21BBA4A38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21BBA4B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BBA4F24()
{
  result = qword_27CDB5248;
  if (!qword_27CDB5248)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BE8], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_27CDB5248);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21BBA50B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21BBA50D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21BBA5694(uint64_t *a1, int a2)
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

uint64_t sub_21BBA56DC(uint64_t result, int a2, int a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21BBA57B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5558, &qword_21BE32438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BBA5820()
{
  result = qword_27CDB5590;
  if (!qword_27CDB5590)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5588, &qword_21BE32458);
    v4[0] = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v4[1] = sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB5590);
  }

  return result;
}

void sub_21BBA5940(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata accessor for SharedPasswordsFlowView(uint64_t a1)
{
  result = qword_27CDB56C8;
  if (!qword_27CDB56C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBA5B48(uint64_t a1)
{
  sub_21BBA5C1C(319, &qword_27CDB56D8, type metadata accessor for ChecklistStateVars);
  if (v1 <= 0x3F)
  {
    sub_21BBA5C1C(319, &qword_280BD6A40, MEMORY[0x277CDD848]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SharedPasswordsItemModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBA5C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BBA5C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SharedPasswordsFlowView(0);
  sub_21BBA6B58(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26F5C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BBA5E7C(uint64_t a1)
{
  v2 = sub_21BE2754C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_21BE26F5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharedPasswordsFlowView(0);
  sub_21BBA6B58(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_21BE28FEC();
    v14 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_21BE26F4C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21BBA60F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_21BE26F5C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x2822009F8](sub_21BBA6240, v5, v4);
}

uint64_t sub_21BBA6240()
{
  if ([*(*(v0[2] + *(type metadata accessor for SharedPasswordsFlowView(0) + 24)) + 24) isKeychainSyncEnabled])
  {
    v1 = v0[8];

    sub_21BCE3398();
    sub_21BBA5C8C(v1);
    sub_21BE26F4C();
    (*(v0[7] + 8))(v0[8], v0[6]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_21BBA638C;

    return sub_21BCE3690();
  }
}

uint64_t sub_21BBA638C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BBA64AC, v3, v2);
}

uint64_t sub_21BBA64AC()
{

  sub_21BE28DFC();
  v1 = v0[8];
  sub_21BCE3398();
  sub_21BBA5C8C(v1);
  sub_21BE26F4C();
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_21BBA65D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21BBA673C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BBA67A0(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_21BBA673C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_21BBA67A0(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56E0, &unk_21BE326D0) + 36));
  sub_21BE2701C();
  result = sub_21BE28D8C();
  *v9 = &unk_21BE326C8;
  v9[1] = v8;
  *a2 = sub_21BBA6804;
  a2[1] = v7;
  return result;
}

uint64_t sub_21BBA673C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedPasswordsFlowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBA67A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedPasswordsFlowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBA6804()
{
  v1 = *(type metadata accessor for SharedPasswordsFlowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BBA5E7C(v2);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SharedPasswordsFlowView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BBA6998()
{
  v2 = *(type metadata accessor for SharedPasswordsFlowView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BBA60F0(v0 + v3);
}

uint64_t sub_21BBA6A64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21BBA6B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBA6BC8()
{
  result = qword_27CDB56E8;
  if (!qword_27CDB56E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB56E0, &unk_21BE326D0);
    v4[0] = sub_21BBA6C54();
    v4[1] = sub_21BBA6CA8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB56E8);
  }

  return result;
}

unint64_t sub_21BBA6C54()
{
  result = qword_27CDB56F0;
  if (!qword_27CDB56F0)
  {
    result = swift_getWitnessTable(byte_21BE323E0, &type metadata for ChecklistItemLoadingView, v0, v1);
    atomic_store(result, &qword_27CDB56F0);
  }

  return result;
}

unint64_t sub_21BBA6CA8()
{
  result = qword_27CDB5058;
  if (!qword_27CDB5058)
  {
    v3 = sub_21BE2701C();
    result = swift_getWitnessTable(MEMORY[0x277CDD8A0], v3, v0, v1);
    atomic_store(result, &qword_27CDB5058);
  }

  return result;
}

id static DefaultSTRemotePasscodeController.activateRemotePINUI()()
{
  v0 = objc_opt_self();

  return [v0 activateRemotePINUI];
}

id sub_21BBA6D90()
{
  v0 = objc_opt_self();

  return [v0 activateRemotePINUI];
}

uint64_t getEnumTagSinglePayload for DefaultSTRemotePasscodeController(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DefaultSTRemotePasscodeController(_WORD *result, int a2, int a3)
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

uint64_t sub_21BBA6FD0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BBA7030(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21BBA70C8;
}

void sub_21BBA70C8(void **a1, char a2)
{
  v3 = *a1;
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

void *sub_21BBA7194()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21BBA7240(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21BBA7298(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *FAFamilySettingsViewControllerV2.__allocating_init(appleAccount:grandSlamSigner:familyCircle:pictureStore:accountManager:peopleDiscoveryService:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  ObjectType = swift_getObjectType();

  return sub_21BBB46D4(a1, a2, a3, a4, a5, a6, v6, ObjectType);
}

char *FAFamilySettingsViewControllerV2.init(appleAccount:grandSlamSigner:familyCircle:pictureStore:accountManager:peopleDiscoveryService:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  swift_getObjectType();

  return sub_21BBB475C(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t sub_21BBA7464(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_21BE28D7C();
  *(v2 + 48) = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBA74FC, v4, v3);
}

uint64_t sub_21BBA74FC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_21BBABB40();
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_21BBA76B4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 parentViewController];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 navigationItem];
LABEL_8:
        v7 = v5;

        return v7;
      }
    }
  }

  v6 = [v0 parentViewController];
  if (v6)
  {
    v3 = v6;
    v5 = [v6 navigationItem];
    goto LABEL_8;
  }

  v10.receiver = v0;
  v10.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  v9 = objc_msgSendSuper2(&v10, sel_navigationItem);

  return v9;
}

void sub_21BBA77CC()
{
  v1 = v0;
  v2 = type metadata accessor for FamilyLandingPageMainView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v119 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v113 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v113 - v8;
  v10 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v126.receiver = v0;
  v126.super_class = v10;
  objc_msgSendSuper2(&v126, sel_viewDidLoad);
  sub_21BE2638C();
  v11 = [v0 navigationItem];
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v120 = objc_opt_self();
  v121 = ObjCClassFromMetadata;
  v13 = [v120 bundleForClass_];
  sub_21BE2599C();

  v14 = sub_21BE289CC();

  [v11 setBackButtonTitle_];

  v15 = [v1 navigationItem];
  [v15 setLargeTitleDisplayMode_];

  v16 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_viewModel];
  v17 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_locationViewModel];
  v114 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_pictureStore];
  v18 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount];
  v115 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_accountManager];
  v116 = v17;
  v117 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCardFamilySettingsViewModel];
  v19 = objc_allocWithZone(FAChecklistStore);
  v118 = v18;
  v20 = [v19 init];
  LOBYTE(v123) = 1;
  v21 = v20;
  sub_21BE283EC();
  v22 = v125;
  v9[40] = v124;
  *(v9 + 6) = v22;
  v23 = v2[7];
  *&v9[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  swift_storeEnumTagMultiPayload();
  v24 = v2[8];
  *&v9[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v25 = &v9[v2[10]];
  LOBYTE(v123) = 0;
  sub_21BE283EC();
  v26 = v125;
  *v25 = v124;
  *(v25 + 1) = v26;
  swift_unknownObjectWeakInit();
  v27 = &v9[v2[14]];
  LOBYTE(v123) = 0;
  sub_21BE283EC();
  v28 = v125;
  *v27 = v124;
  *(v27 + 1) = v28;
  v29 = &v9[v2[18]];
  LOBYTE(v123) = 0;
  sub_21BE283EC();
  v30 = v125;
  *v29 = v124;
  *(v29 + 1) = v30;
  v31 = &v9[v2[20]];
  *v31 = sub_21BBDC524;
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = &v9[v2[21]];
  type metadata accessor for ChecklistStateVars(0);
  swift_allocObject();
  v123 = ChecklistStateVars.init()();
  sub_21BE283EC();
  v33 = v125;
  *v32 = v124;
  v32[1] = v33;
  v34 = &v9[v2[22]];
  v123 = 0;
  sub_21BE283EC();
  v35 = v125;
  *v34 = v124;
  v34[1] = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v16;
  *v9 = sub_21BBB510C;
  *(v9 + 1) = v36;
  v9[16] = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = v21;
  v38 = &v9[v2[15]];
  *v38 = sub_21BBB510C;
  *(v38 + 1) = v37;
  v38[16] = 0;
  v39 = &v9[v2[17]];
  *v39 = sub_21BBFE74C;
  *(v39 + 1) = 0;
  v39[16] = 0;
  v40 = qword_280BD76F0;
  v41 = v21;
  v42 = v16;
  if (v40 != -1)
  {
    swift_once();
  }

  v43 = &v9[v2[9]];
  type metadata accessor for ServicesStore(0);
  sub_21BBB5114(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);

  *v43 = sub_21BE270CC();
  v43[1] = v44;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();
  *&v9[v2[23]] = sub_21BC84D18(0x20676E69646E614CLL, 0xEC00000065676170, "initToView", 10, 2u);
  v45 = &v9[v2[16]];
  *v45 = sub_21BBFE770;
  *(v45 + 1) = 0;
  v45[16] = 0;
  v46 = &v9[v2[11]];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v47 = v114;
  *v46 = sub_21BE270CC();
  v46[1] = v48;
  swift_unknownObjectWeakAssign();
  v49 = v115;
  *&v9[v2[12]] = v115;
  type metadata accessor for LocationViewModel(0);
  sub_21BBB5114(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v50 = v49;
  v51 = v116;
  *(v9 + 3) = sub_21BE270CC();
  *(v9 + 4) = v52;
  v53 = &v9[v2[19]];
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  sub_21BBB5114(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
  v54 = v117;
  v55 = sub_21BE270CC();
  v57 = v56;

  *v53 = v55;
  v53[1] = v57;
  *&v9[v2[24]] = v1;
  sub_21BBB515C(v9, v7);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC30, &unk_21BE327F0);
  v59 = objc_allocWithZone(v58);
  v60 = MEMORY[0x277D85000];
  sub_21BBB515C(v7, v59 + *((*MEMORY[0x277D85000] & *v59) + 0x70));
  sub_21BBB515C(v7, v119);
  sub_21BBB5114(&qword_27CDB5770, type metadata accessor for FamilyLandingPageMainView, protocol conformance descriptor for FamilyLandingPageMainView);
  v61 = v1;
  v124 = sub_21BE2852C();
  v62 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *(v59 + *((*v60 & *v59) + 0x60)) = sub_21BE2774C();
  v63 = (v59 + *((*v60 & *v59) + 0x68));
  *v63 = 0;
  v63[1] = 0;
  v122.receiver = v59;
  v122.super_class = v58;
  v64 = objc_msgSendSuper2(&v122, sel_initWithNibName_bundle_, 0, 0);
  sub_21BBB51C0(v7);

  sub_21BBB51C0(v9);
  v65 = [objc_opt_self() currentDevice];
  v66 = [v65 userInterfaceIdiom];

  v67 = &qword_27CDB5000;
  v68 = *&v61[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton];
  if (v66 == 1)
  {
    v70 = v120;
    v69 = v121;
    v71 = [v120 bundleForClass_];
    sub_21BE2599C();

    v67 = &qword_27CDB5000;
    v72 = sub_21BE289CC();

    [v68 setTitle_];
  }

  else
  {
    v73 = sub_21BE289CC();
    v74 = [objc_opt_self() systemImageNamed_];

    [v68 setImage_];
    v70 = v120;
    v69 = v121;
  }

  v75 = v67[240];
  [*&v61[v75] setTarget_];
  [*&v61[v75] setAction_];
  v76 = *&v61[v75];
  v77 = [v70 bundleForClass_];
  sub_21BE2599C();

  v78 = sub_21BE289CC();

  [v76 setAccessibilityLabel_];

  [v61 addChildViewController_];
  v79 = [v61 view];
  if (!v79)
  {
    __break(1u);
    goto LABEL_19;
  }

  v80 = v79;
  v81 = [v64 view];
  if (!v81)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v82 = v81;
  [v80 addSubview_];

  v83 = [v64 view];
  if (!v83)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v84 = v83;
  [v83 setTranslatesAutoresizingMaskIntoConstraints_];

  v85 = [v64 view];
  if (!v85)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v86 = v85;
  v87 = [v85 topAnchor];

  v88 = [v61 view];
  if (!v88)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v89 = v88;
  v90 = [v88 topAnchor];

  v91 = [v87 constraintEqualToAnchor_];
  [v91 setActive_];

  v92 = [v64 view];
  if (!v92)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v93 = v92;
  v94 = [v92 leadingAnchor];

  v95 = [v61 view];
  if (!v95)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v96 = v95;
  v97 = [v95 leadingAnchor];

  v98 = [v94 constraintEqualToAnchor_];
  [v98 setActive_];

  v99 = [v64 view];
  if (!v99)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v100 = v99;
  v101 = [v99 trailingAnchor];

  v102 = [v61 view];
  if (!v102)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v103 = v102;
  v104 = [v102 trailingAnchor];

  v105 = [v101 constraintEqualToAnchor_];
  [v105 setActive_];

  v106 = [v64 view];
  if (!v106)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v107 = v106;
  v108 = [v106 bottomAnchor];

  v109 = [v61 view];
  if (v109)
  {
    v110 = v109;
    v111 = [v109 bottomAnchor];

    v112 = [v108 constraintEqualToAnchor_];
    [v112 setActive_];

    [v64 didMoveToParentViewController_];
    [*&v61[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] startMonitoringProximity];

    return;
  }

LABEL_28:
  __break(1u);
}

void sub_21BBA86A8(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = 0x800000021BE563D0;
    sub_21BE2599C();

    v7 = sub_21BE289CC();
  }

  else
  {
    v7 = sub_21BE289CC();
  }

  [v3 setTitle_];
}

uint64_t sub_21BBA87D4(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner];
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner] = a1;
  v10 = a1;

  v11 = *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount];
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount] = a2;
  v12 = a2;

  v20.value.super.isa = v12;
  result = ACAccount.isSameUser(_:)(v20);
  if ((result & 1) == 0)
  {
    v14 = sub_21BE28DAC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_21BE28D7C();
    v15 = v3;
    v16 = sub_21BE28D6C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_21BBA932C(0, 0, v8, &unk_21BE32A70, v17);
  }

  return result;
}

uint64_t sub_21BBA8948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v0[3] = swift_task_alloc();
  v0[4] = sub_21BE28D7C();
  v0[5] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21BBA8A2C;

  return sub_21BBA9C6C();
}

uint64_t sub_21BBA8A2C()
{
  v1 = *v0;

  v3 = sub_21BE28D0C();
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;

  return MEMORY[0x2822009F8](sub_21BBA8B70, v3, v2);
}

uint64_t sub_21BBA8B70(uint64_t a1)
{
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v1[9] = qword_280BDCB98;
  v1[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_21BBA8C38, v3, v2);
}

void sub_21BBA8C38()
{
  v1 = *(v0[9] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_21BBA8D4C;
    v5 = v0[3];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBA8D4C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 24);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BBA8FB4;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BBA8EDC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BBA8EDC()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21BBA8F48, v1, v2);
}

uint64_t sub_21BBA8F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBA8FB4()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21BBB7E9C, v1, v2);
}

uint64_t sub_21BBA9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BBA3854(a3, v25 - v10, &qword_27CDB5790, &qword_21BE32800);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB3A4CC(v11, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BE28D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BE28A8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F0, &qword_21BE32A98);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F0, &qword_21BE32A98);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21BBA932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BBA3854(a3, v25 - v10, &qword_27CDB5790, &qword_21BE32800);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB3A4CC(v11, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BE28D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BE28A8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21BBA962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BBA3854(a3, v25 - v10, &qword_27CDB5790, &qword_21BE32800);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB3A4CC(v11, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BE28D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_21BE28A8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_21BB3A2A4(0, &unk_27CDB5910, 0x277D08230);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21BB3A4CC(v25[0], &qword_27CDB5790, &qword_21BE32800);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_21BB3A2A4(0, &unk_27CDB5910, 0x277D08230);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21BBA9958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BBA3854(a3, v25 - v10, &qword_27CDB5790, &qword_21BE32800);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB3A4CC(v11, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BE28D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BE28A8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21BBA9C6C()
{
  v1[6] = v0;
  v2 = sub_21BE26A4C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_21BBA9D6C, v4, v3);
}

uint64_t sub_21BBA9D6C()
{
  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21BB35000, v1, v2, "FAFamilySettingsViewControllerV2 reloading family", v3, 2u);
    MEMORY[0x21CF05C50](v3, -1, -1);
  }

  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];

  v8 = *(v6 + 8);
  v0[14] = v8;
  v8(v4, v5);
  sub_21BBAB960(0);
  v9 = *(v7 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 24);
  v10 = *(v7 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v7 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore), v9);
  v13 = (*(v10 + 80) + **(v10 + 80));
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_21BBA9F48;

  return v13(v9, v10);
}

uint64_t sub_21BBA9F48(void *a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 96);
    v6 = *(v4 + 104);
    v7 = sub_21BBAA194;
  }

  else
  {

    v5 = *(v4 + 96);
    v6 = *(v4 + 104);
    v7 = sub_21BBAA070;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BBAA070()
{

  sub_21BBABB40();
  v1 = [*(v0 + 48) navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    v3 = *(v0 + 48);

    [*&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&v3[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled_];
    }

    sub_21BBABB40();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BBAA194()
{
  v25 = v0;
  v1 = *(v0 + 128);

  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v22 = *(v0 + 72);
    v23 = *(v0 + 112);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_21BE29A5C();
    v11 = sub_21BB3D81C(v9, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21BB35000, v3, v4, "Error fetching family information: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);

    v23(v22, v6);
  }

  else
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);

    v12(v13, v14);
  }

  v15 = [*(v0 + 48) navigationItem];
  v16 = [v15 rightBarButtonItem];

  if (v16)
  {
    v17 = *(v0 + 48);

    [*&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&v17[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v18 = [v17 view];
    if (v18)
    {
      v19 = v18;
      [v18 setUserInteractionEnabled_];
    }

    sub_21BBABB40();
  }

  v20 = *(v0 + 8);

  return v20();
}

void sub_21BBAA430(uint64_t a1)
{
  v2 = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, v2 & 1);
  sub_21BBABB40();
  v3 = [v1 navigationItem];
  v4 = sub_21BE289CC();
  [v3 setTitle_];
}

uint64_t sub_21BBAA56C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_21BE25FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v21.receiver = v2;
  v21.super_class = v11;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v12 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_familySettingsHelper];
  v13 = [v2 navigationController];
  [v12 setNavigationController_];

  result = sub_21BC852D8();
  if (!*&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController])
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D07F28], v7);
    v15 = MEMORY[0x21CF01150](v10);
    result = (*(v8 + 8))(v10, v7);
    if (v15)
    {
      v16 = sub_21BE28DAC();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      sub_21BE28D7C();
      v17 = v2;
      v18 = sub_21BE28D6C();
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      sub_21BBA932C(0, 0, v6, &unk_21BE32810, v19);
    }
  }

  return result;
}

uint64_t sub_21BBAA7EC()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBAA9D4();
}

uint64_t sub_21BBAA898()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBB7ECC, v1, v0);
}

uint64_t sub_21BBAA9D4()
{
  v1[23] = v0;
  v2 = sub_21BE26A4C();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v1[30] = swift_task_alloc();
  v1[31] = type metadata accessor for DisclosureModalHostingView(0);
  v1[32] = swift_task_alloc();
  v3 = sub_21BE25B9C();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  sub_21BE28D7C();
  v1[36] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[37] = v5;
  v1[38] = v4;

  return MEMORY[0x2822009F8](sub_21BBAABB0, v5, v4);
}

uint64_t sub_21BBAABB0()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  v0[39] = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  if (*(v1 + v2))
  {

    sub_21BE2614C();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FDC();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v3, v4, "Disclosure view not being presented", v9, 2u);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
    v0[40] = v12;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_21BBAAE24;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBB25CC;
    v0[13] = &block_descriptor_206;
    v0[14] = v13;
    [v12 fetchAAURLConfigurationWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21BBAAE24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_21BBAB624;
  }

  else
  {
    v5 = sub_21BBAAF54;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BBAAF54()
{
  v59 = v0;
  v1 = *(v0 + 320);

  v2 = *(v0 + 176);

  v3 = [v2 urlForEndpoint_];
  if (v3)
  {
    v4 = *(v0 + 184);
    v5 = v3;
    sub_21BE25B5C();

    *(v4 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) = 0;
    if (sub_21BBB58B4())
    {
      v6 = *(v0 + 272);
      v7 = *(v0 + 280);
      v8 = *(v0 + 256);
      v9 = *(v0 + 264);
      v10 = *(v0 + 240);
      v11 = *(v0 + 248);
      *v10 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
      swift_storeEnumTagMultiPayload();
      (*(v6 + 16))(v8, v7, v9);
      sub_21BBB7D84(v10, v8 + v11[5], &qword_27CDB56C0, qword_21BE32630);
      v12 = v8 + v11[6];
      *(v0 + 336) = 1;
      sub_21BE283EC();
      v13 = *(v0 + 152);
      *v12 = *(v0 + 144);
      *(v12 + 8) = v13;
      v14 = v8 + v11[7];
      *(v0 + 337) = 0;
      sub_21BE283EC();
      v15 = *(v0 + 168);
      *v14 = *(v0 + 160);
      *(v14 + 8) = v15;
      v16 = v11[8];
      type metadata accessor for FamilyDisclosureController();
      *(v8 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v17 = v11[9];
      v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v19 = sub_21BE289CC();
      v20 = [v18 initWithSuiteName_];

      if (!v20)
      {
        v20 = [objc_opt_self() standardUserDefaults];
      }

      *(v8 + v17) = v20;
      sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
      v21 = [swift_getObjCClassFromMetadata() defaultCenter];
      if (qword_27CDB4FC8 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 312);
      v23 = *(v0 + 184);
      sub_21BE2935C();

      v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5970, &unk_21BE32B90));
      v25 = sub_21BE2774C();
      v26 = *&v23[v22];
      *&v23[v22] = v25;
      v27 = v25;

      v28 = [v23 navigationController];
      if (v28)
      {
        v29 = v28;
        [v28 presentViewController:v27 animated:1 completion:0];
      }

      [v27 setModalInPresentation_];
      v30 = objc_opt_self();
      v31 = [v30 defaultCenter];
      if (qword_27CDB4FC0 != -1)
      {
        swift_once();
      }

      [v31 addObserver:*(v0 + 184) selector:? name:? object:?];

      v32 = [v30 defaultCenter];
      if (qword_27CDB4F08 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 272);
      v33 = *(v0 + 280);
      v35 = *(v0 + 264);
      [v32 addObserver:*(v0 + 184) selector:? name:? object:?];

      (*(v34 + 8))(v33, v35);
    }

    else
    {
      v44 = v2;
      sub_21BE2614C();
      v45 = sub_21BE26A2C();
      v46 = sub_21BE28FFC();
      v47 = os_log_type_enabled(v45, v46);
      v49 = *(v0 + 272);
      v48 = *(v0 + 280);
      v50 = *(v0 + 264);
      v51 = *(v0 + 232);
      v53 = *(v0 + 192);
      v52 = *(v0 + 200);
      if (v47)
      {
        v57 = *(v0 + 280);
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_21BB35000, v45, v46, "No disclosure required", v54, 2u);
        MEMORY[0x21CF05C50](v54, -1, -1);

        (*(v52 + 8))(v51, v53);
        (*(v49 + 8))(v57, v50);
      }

      else
      {

        (*(v52 + 8))(v51, v53);
        (*(v49 + 8))(v48, v50);
      }
    }
  }

  else
  {
    sub_21BE2614C();
    v36 = sub_21BE26A2C();
    v37 = sub_21BE28FDC();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 224);
    v40 = *(v0 + 192);
    v41 = *(v0 + 200);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE56560, &v58);
      _os_log_impl(&dword_21BB35000, v36, v37, "%s url failure", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x21CF05C50](v43, -1, -1);
      MEMORY[0x21CF05C50](v42, -1, -1);
    }

    (*(v41 + 8))(v39, v40);
  }

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_21BBAB624()
{
  v14 = v0;
  v2 = v0[40];
  v1 = v0[41];

  swift_willThrow();

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE56560, &v13);
    _os_log_impl(&dword_21BB35000, v3, v4, "%s failed to get configuration", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);

  v11 = v0[1];

  return v11();
}

void sub_21BBAB844(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  objc_msgSendSuper2(&v8, sel_viewDidDisappear_, v2 & 1);
  [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] stopMonitoringProximity];
  v3 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController] removeFromParentViewController];
  v4 = *&v1[v3];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 removeFromSuperview];

    v7 = *&v1[v3];
LABEL_5:
    *&v1[v3] = 0;

    return;
  }

  __break(1u);
}

void sub_21BBAB960(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    [*&v1[v2] startAnimating];
    v4 = [v1 navigationItem];
LABEL_9:
    v13 = v4;
    [v13 setRightBarButtonItem_];

    v10 = v13;
    goto LABEL_10;
  }

  v5 = [v1 navigationItem];
  v6 = [v5 rightBarButtonItem];

  if (v6)
  {

    [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 setUserInteractionEnabled_];
    }

    sub_21BBABB40();
  }

  v9 = [v1 navigationItem];
  v12 = [v9 rightBarButtonItem];

  v10 = v12;
  if (!v12)
  {
    v11 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    [*&v1[v11] startAnimating];
    v4 = [v1 navigationItem];
    goto LABEL_9;
  }

LABEL_10:
}

void sub_21BBABB40()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore];
  v3 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 24];
  v4 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore], v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = v5;
  v7 = [v5 showAddMemberButton];

  if (v7)
  {
    v8 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton;
    v9 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton];
    v10 = *(v2 + 3);
    v11 = *(v2 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v2, v10);
    v12 = *(v11 + 8);
    v13 = v9;
    v14 = v12(v10, v11);
    if (!v14)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v15 = v14;
    v16 = [v14 canAddMembers];

    [v13 setEnabled_];
    v17 = *&v1[v8];
    v18 = sub_21BE289CC();
    [v17 setAccessibilityIdentifier_];

    v19 = [v1 navigationItem];
    [v19 setRightBarButtonItem:*&v1[v8] animated:0];
  }

  else
  {
    v19 = [v1 navigationItem];
    [v19 setRightBarButtonItem_];
  }
}

uint64_t sub_21BBABD48()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBABE3C, v4, v3);
}

uint64_t sub_21BBABE3C(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Attempting to add family member", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    [v9 setUserInteractionEnabled_];
  }

  v11 = v1[2];
  v12 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  v13 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [*&v11[v12] startAnimating];
  v14 = [v11 navigationItem];
  [v14 setRightBarButtonItem_];

  v15 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v1[9] = v15;
  v16 = swift_task_alloc();
  v1[10] = v16;
  *v16 = v1;
  v16[1] = sub_21BBAC050;

  return sub_21BBAC1F4(v15);
}

uint64_t sub_21BBAC050(void *a1)
{
  v3 = *v1;

  v4 = *(v3 + 64);
  v5 = *(v3 + 56);

  return MEMORY[0x2822009F8](sub_21BBAC180, v5, v4);
}

uint64_t sub_21BBAC180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBAC1F4(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_21BE26A4C();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  sub_21BE28D7C();
  v2[34] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[35] = v5;
  v2[36] = v4;

  return MEMORY[0x2822009F8](sub_21BBAC2E8, v5, v4);
}

uint64_t sub_21BBAC2E8()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = [v2 navigationController];
  v4 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[37] = v4;

  v5 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController];
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = v4;
  v6 = v4;
  [v5 cancel];

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v0[22] = sub_21BBB7C88;
  v0[23] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_185;
  v8 = _Block_copy(v0 + 18);
  v9 = v2;

  [v6 setPresentationHandler_];
  _Block_release(v8);
  v10 = [v1 eventType];
  v11 = sub_21BE28A0C();
  v13 = v12;
  if (v11 == sub_21BE28A0C() && v13 == v14)
  {

    goto LABEL_5;
  }

  v15 = sub_21BE2995C();

  if (v15)
  {
LABEL_5:
    v16 = (v0[30] + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore);
    v17 = v16[3];
    v18 = v16[4];
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v19 = (*(v18 + 8))(v17, v18);
    if (!v19)
    {
      v19 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v20 = v19;
    v21 = sub_21BE2904C();

    if (v21)
    {
      goto LABEL_12;
    }
  }

  v22 = [v0[29] eventType];
  v23 = sub_21BE28A0C();
  v25 = v24;
  if (v23 == sub_21BE28A0C() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_21BE2995C();

    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  [v6 setPresentationType_];
LABEL_13:
  v28 = v0[29];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_21BBAC6E4;
  v29 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_188;
  v0[14] = v29;
  [v6 performWithContext:v28 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BBAC6E4()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_21BBAC7EC, v2, v1);
}

uint64_t sub_21BBAC7EC()
{
  v21 = v0;

  v1 = *(v0 + 216);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    sub_21BE2614C();
    v4 = v3;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();

    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 248);
    if (v7)
    {
      v19 = *(v0 + 296);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21BE29A5C();
      v18 = v10;
      v15 = sub_21BB3D81C(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21BB35000, v5, v6, "Error loading stateController: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);

      (*(v9 + 8))(v8, v18);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
  }

  sub_21BBADA40(*(v0 + 240), *(v0 + 232));

  v16 = *(v0 + 8);

  return v16(v1);
}

id FAFamilySettingsViewControllerV2.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController];
  if (v1)
  {
    [v1 cancel];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BBACC24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_21BE2870C();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21BE2874C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v21.receiver = v3;
  v21.super_class = v12;
  objc_msgSendSuper2(&v21, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v13 = sub_21BE2925C();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  aBlock[4] = sub_21BBB52D0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BBB5114(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v11, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_21BBACF40(char *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    v3 = *&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController];
    v4 = v3;
    *&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = 0;
    [v3 cancel];
    v2 = v4;
  }
}

id FAFamilySettingsViewControllerV2.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21BE289CC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t FAFamilySettingsViewControllerV2.didSelectSubscriptionWithURL(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21BBAD198, v4, v3);
}

uint64_t sub_21BBAD198()
{
  v1 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  *(v0 + 56) = v1;
  v2 = sub_21BE25B2C();
  [v1 setUrlForContext_];

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_21BBAD280;

  return sub_21BBAC1F4(v1);
}

uint64_t sub_21BBAD280(void *a1)
{
  v3 = *v1;

  v4 = *(v3 + 48);
  v5 = *(v3 + 40);

  return MEMORY[0x2822009F8](sub_21BBAD3B0, v5, v4);
}

uint64_t sub_21BBAD3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBAD5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_21BE25B9C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_21BE28D7C();
  v3[9] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAD6A0, v6, v5);
}

uint64_t sub_21BBAD6A0()
{
  v1 = v0[3];
  v2 = v0[4];

  v0[10] = _Block_copy(v1);
  sub_21BE25B5C();
  v3 = v2;
  v0[11] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[12] = v5;
  v0[13] = v4;

  return MEMORY[0x2822009F8](sub_21BBAD768, v5, v4);
}

uint64_t sub_21BBAD768()
{
  v1 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  *(v0 + 112) = v1;
  v2 = sub_21BE25B2C();
  [v1 setUrlForContext_];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_21BBAD850;

  return sub_21BBAC1F4(v1);
}

uint64_t sub_21BBAD850(void *a1)
{
  v3 = *v1;

  v4 = *(v3 + 104);
  v5 = *(v3 + 96);

  return MEMORY[0x2822009F8](sub_21BBAD980, v5, v4);
}

uint64_t sub_21BBAD980()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v6 = *(v0 + 8);

  return v6();
}

id sub_21BBADA40(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [result setUserInteractionEnabled_];

  v9 = [a1 navigationItem];
  v10 = [v9 rightBarButtonItem];

  if (v10)
  {

    [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
    [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
    v11 = [a1 view];
    [v11 setUserInteractionEnabled_];

    sub_21BBABB40();
  }

  v12 = [a2 eventType];
  v13 = sub_21BE28A0C();
  v15 = v14;
  if (v13 == sub_21BE28A0C() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_21BE2995C();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = sub_21BE28DAC();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_21BE28D7C();
  v19 = a1;
  v20 = sub_21BE28D6C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_21BBA932C(0, 0, v6, &unk_21BE32B30, v21);
}

void sub_21BBADCE8(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setUserInteractionEnabled_];

    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {

      [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView] stopAnimating];
      [*&a1[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd] stopAnimating];
      v6 = [a1 view];
      [v6 setUserInteractionEnabled_];

      sub_21BBABB40();
    }

    v7 = [objc_opt_self() defaultCenter];
    v8 = v7;
    if (qword_27CDB4EE0 != -1)
    {
      swift_once();
      v7 = v8;
    }

    [v7 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FAFamilySettingsViewControllerV2.didSelectSubscriptionWithURLMemberDetails(_:serviceName:familyMemberDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  sub_21BE28D7C();
  v5[24] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[25] = v7;
  v5[26] = v6;

  return MEMORY[0x2822009F8](sub_21BBADF18, v7, v6);
}

uint64_t sub_21BBADF18()
{
  v1 = v0[22];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[27] = v2;
  v3 = sub_21BE25B2C();
  [v2 setUrlForContext_];

  if (v1 >= 1)
  {
    v4 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000021BE55FB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57C0, &qword_21BE32848);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_21BE32770;
    *(v6 + 32) = 0xD000000000000012;
    v7 = v6 + 32;
    *(v6 + 40) = 0x800000021BE55FD0;
    *(v6 + 48) = v4;
    v8 = sub_21BBB5AAC(v6);
    swift_setDeallocating();
    sub_21BB3A4CC(v7, &qword_27CDB57C8, &qword_21BE32850);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D0, &qword_21BE32858);
    *(inited + 48) = v8;
    sub_21BBB52D8(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
    v9 = sub_21BE288EC();

    [v2 setAdditionalParameters_];
  }

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_21BBAE17C;

  return sub_21BBAC1F4(v2);
}

uint64_t sub_21BBAE17C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[29] = a1;

  v5 = swift_task_alloc();
  v3[30] = v5;
  *v5 = v4;
  v5[1] = sub_21BBAE2F8;
  v6 = v3[21];
  v7 = v3[20];

  return sub_21BBAE48C(a1, v7, v6);
}

uint64_t sub_21BBAE2F8()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_21BBAE418, v3, v2);
}

uint64_t sub_21BBAE418()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBAE48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  sub_21BE28D7C();
  v4[28] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[29] = v6;
  v4[30] = v5;

  return MEMORY[0x2822009F8](sub_21BBAE528, v6, v5);
}

uint64_t sub_21BBAE528()
{
  v1 = *(v0 + 200) == 0x41435F454C505041 && *(v0 + 208) == 0xEA00000000004853;
  if (!v1 && (sub_21BE2995C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v2 = [*(v0 + 192) userInfo];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = sub_21BE2890C();

  *(v0 + 176) = 0x6E6F69746361;
  *(v0 + 184) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(v4 + 16) || (v5 = sub_21BBB31E8(v0 + 80), (v6 & 1) == 0))
  {

    sub_21BBB7238(v0 + 80);
LABEL_15:
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    goto LABEL_16;
  }

  sub_21BB3DCD4(*(v4 + 56) + 32 * v5, v0 + 144);
  sub_21BBB7238(v0 + 80);

  if (!*(v0 + 168))
  {
LABEL_16:
    sub_21BB3A4CC(v0 + 144, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (*(v0 + 80) == 0xD000000000000012 && 0x800000021BE56510 == *(v0 + 88))
  {

    goto LABEL_18;
  }

  v7 = sub_21BE2995C();

  if ((v7 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_18:
  v8 = [*(v0 + 216) navigationController];
  *(v0 + 248) = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = *(v0 + 216);
  v10 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
  *(v0 + 256) = v10;
  v11 = *(v9 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler);
  *(v9 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler) = v10;
  v12 = v10;

  if (v12)
  {
    v13 = [*(v0 + 192) userInfo];
    if (v13)
    {
      v14 = v13;
      sub_21BE2890C();
    }

    else
    {
      sub_21BBB5D24(MEMORY[0x277D84F90]);
    }

    v19 = sub_21BE288EC();
    *(v0 + 264) = v19;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BBAE99C;
    v20 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BD44BD8;
    *(v0 + 104) = &block_descriptor_179;
    *(v0 + 112) = v20;
    [v12 presentPeerPaymentControllerWithAttributes:v19 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v17 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 248);
  [v17 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

LABEL_23:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BBAE99C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_21BBAEAA4, v2, v1);
}

uint64_t sub_21BBAEAA4()
{
  v1 = v0[32];
  v2 = v0[33];

  v3 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  [v3 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBAED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_21BE25B9C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_21BE28D7C();
  v5[10] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAEE30, v8, v7);
}

uint64_t sub_21BBAEE30()
{
  v1 = v0[5];
  v2 = v0[6];

  v0[11] = _Block_copy(v1);
  sub_21BE25B5C();
  v3 = sub_21BE28A0C();
  v5 = v4;
  v0[12] = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_21BBAEF28;
  v8 = v0[9];
  v9 = v0[4];

  return FAFamilySettingsViewControllerV2.didSelectSubscriptionWithURLMemberDetails(_:serviceName:familyMemberDSID:)(v8, v3, v5, v9);
}

uint64_t sub_21BBAEF28()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v6 = *(v8 + 8);

  return v6();
}

Swift::Void __swiftcall FAFamilySettingsViewControllerV2.stopFamilySharing()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_21BE28D7C();
  v5 = v0;
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_21BBA932C(0, 0, v3, &unk_21BE32870, v7);
}

uint64_t sub_21BBAF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_21BE26A4C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_21BE25B9C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_21BE28D7C();
  v4[14] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[15] = v7;
  v4[16] = v8;

  return MEMORY[0x2822009F8](sub_21BBAF39C, v7, v8);
}

id sub_21BBAF39C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong familySettingsViewController2StopFamilySharing_];
    v2 = objc_opt_self();
    v0[5] = 0;
    v3 = [v2 urlDestinationTo:1 error:v0 + 5];
    v4 = v0[5];
    if (v3)
    {
      v6 = v0[12];
      v5 = v0[13];
      v7 = v0[10];
      v8 = v0[11];
      v9 = v3;
      sub_21BE25B5C();
      v10 = v4;

      (*(v8 + 32))(v5, v6, v7);
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = v0[13];
      v14 = v0[10];
      v15 = v0[11];

      v16 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v17 = sub_21BE288EC();

      [v12 openSensitiveURL:v16 withOptions:v17];

      swift_unknownObjectRelease();
      (*(v15 + 8))(v13, v14);
    }

    else
    {
      v19 = v4;

      v20 = sub_21BE25A8C();

      swift_willThrow();
      sub_21BE260FC();
      v21 = sub_21BE26A2C();
      v22 = sub_21BE28FDC();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[8];
      v24 = v0[9];
      v26 = v0[7];
      if (v23)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_21BB3D81C(0xD000000000000013, 0x800000021BE564F0, v30);
        _os_log_impl(&dword_21BB35000, v21, v22, "%s url doesn't exist!", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x21CF05C50](v28, -1, -1);
        MEMORY[0x21CF05C50](v27, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v25 + 8))(v24, v26);
    }

    v29 = v0[1];

    return v29();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_21BBAF79C;

    return sub_21BD440CC();
  }
}

uint64_t sub_21BBAF79C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_21BBAF8F0, v3, v2);
}

uint64_t sub_21BBAF8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall FAFamilySettingsViewControllerV2.addFamilyMemberButtonWasTapped()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_21BE28D7C();
  v5 = v0;
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_21BBA932C(0, 0, v3, &unk_21BE32880, v7);

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v13 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  v10 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000021BE55FF0;
  *(inited + 72) = v10;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v11 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v13, v11);
}

uint64_t sub_21BBAFCFC()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBABD48();
}

uint64_t sub_21BBAFDA8()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v1, v0);
}

uint64_t sub_21BBAFEE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FAFamilySettingsViewControllerV2.loadMemberDetails(member:navigationController:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3[15] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = sub_21BE28D7C();
  v3[20] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[21] = v6;
  v3[22] = v5;

  return MEMORY[0x2822009F8](sub_21BBB00C0, v6, v5);
}

id sub_21BBB00C0(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Attempting load member", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[17];
  v5 = v1[18];
  v7 = v1[16];
  v8 = v1[14];

  (*(v6 + 8))(v5, v7);
  result = [v8 view];
  if (result)
  {
    v10 = result;
    [result setUserInteractionEnabled_];

    v1[23] = [objc_allocWithZone(FACircleContext) initWithEventType_];
    v11 = swift_task_alloc();
    v1[24] = v11;
    *v11 = v1;
    v11[1] = sub_21BBB0268;
    v12 = v1[15];
    v13 = v1[12];

    return FAFamilySettingsViewControllerV2.getPendingMemberURL(member:)(v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBB0268()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21BBB0388, v3, v2);
}

uint64_t sub_21BBB0388()
{
  v1 = v0[15];
  v2 = sub_21BE25B9C();
  v3 = *(v2 - 8);
  v4 = 0;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = sub_21BE25B2C();
    (*(v3 + 8))(v1, v2);
  }

  v5 = v0[23];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  [v5 setUrlForContext_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 40) = v10;
  *(inited + 72) = sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  *(inited + 48) = v8;
  v11 = v8;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v12 = sub_21BE288EC();

  [v5 setUserInfo_];

  v13 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[25] = v13;
  v14 = swift_task_alloc();
  v0[26] = v14;
  v14[2] = v13;
  v14[3] = v7;
  v14[4] = v5;
  v15 = swift_task_alloc();
  v0[27] = v15;
  *(v15 + 16) = v13;
  v0[28] = sub_21BE28D6C();
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_21BBB0678;

  return MEMORY[0x282200830]();
}

void sub_21BBB0678()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);

    MEMORY[0x2822009F8](sub_21BBB07C4, v3, v4);
  }
}

uint64_t sub_21BBB07C4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FAFamilySettingsViewControllerV2.getPendingMemberURL(member:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_21BE26A4C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5800, &qword_21BE328C0);
  v2[24] = swift_task_alloc();
  v4 = sub_21BE2590C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v5 = sub_21BE25B9C();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_21BE28D7C();
  v2[34] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[35] = v7;
  v2[36] = v6;

  return MEMORY[0x2822009F8](sub_21BBB0A8C, v7, v6);
}

uint64_t sub_21BBB0A8C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[37] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BBB0BC4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_30;
  v0[14] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BBB0BC4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);
  if (v2)
  {
    v5 = sub_21BBB1274;
  }

  else
  {
    v5 = sub_21BBB0CF4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BBB0CF4()
{
  v1 = v0[37];

  v2 = v0[18];

  v3 = [v2 urlForEndpoint_];
  if (v3)
  {
    v4 = v3;
    sub_21BE25B5C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];
  v11 = *(v10 + 56);
  v11(v7, v5, 1, v9);
  sub_21BBB7D84(v7, v6, &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BBA3854(v6, v8, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v12 = v0[31];
    sub_21BB3A4CC(v0[33], &unk_27CDB57F0, &qword_21BE328A0);

    sub_21BB3A4CC(v12, &unk_27CDB57F0, &qword_21BE328A0);
    v13 = v0[28];
    v14 = v0[19];
LABEL_8:
    v11(v14, 1, 1, v13);
    goto LABEL_16;
  }

  v15 = v0[25];
  v16 = v0[26];
  v17 = v0[24];
  (*(v0[29] + 32))(v0[30], v0[31], v0[28]);
  sub_21BE2589C();
  v18 = (*(v16 + 48))(v17, 1, v15);
  v19 = v0[24];
  if (v18 == 1)
  {
    v20 = v0[33];
    v21 = v2;
    v22 = v0[29];
    v23 = v0[30];
    v24 = v0[28];
    v25 = v0[19];

    (*(v22 + 8))(v23, v24);
    sub_21BB3A4CC(v20, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BB3A4CC(v19, &qword_27CDB5800, &qword_21BE328C0);
    v14 = v25;
    v13 = v24;
    goto LABEL_8;
  }

  v26 = v0[20];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  v27 = [v26 dsid];
  v28 = v0[20];
  v42 = v2;
  if (v27)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    sub_21BE2585C();
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    sub_21BE28A0C();
    v29 = [v28 dsid];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 stringValue];

LABEL_14:
      sub_21BE28A0C();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    sub_21BE2585C();
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    sub_21BE28A0C();
    v32 = [v28 inviteEmail];
    if (v32)
    {
      v31 = v32;
      goto LABEL_14;
    }
  }

  v33 = v0[29];
  v40 = v0[30];
  v41 = v0[33];
  v34 = v0[27];
  v35 = v0[28];
  v37 = v0[25];
  v36 = v0[26];
  sub_21BE2582C();

  sub_21BE2587C();
  sub_21BE258AC();

  (*(v36 + 8))(v34, v37);
  (*(v33 + 8))(v40, v35);
  sub_21BB3A4CC(v41, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_16:

  v38 = v0[1];

  return v38();
}

uint64_t sub_21BBB1274()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[29];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  swift_willThrow();

  sub_21BE2614C();
  v7 = v1;
  sub_21BC51D50(v1, 0xD000000000000023, 0x800000021BE56040);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 56))(v0[19], 1, 1, v0[28]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BBB13C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_21BE28D7C();
  v4[7] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21BBB1468, v6, v5);
}

uint64_t sub_21BBB1468(uint64_t a1)
{
  v2 = *(v1 + 40);
  v10 = *(v1 + 24);
  v3 = sub_21BE28D6C();
  *(v1 + 80) = v3;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *(v4 + 16) = v10;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB158C;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD00000000000002FLL, 0x800000021BE56460, sub_21BBB7B04, v4, v8);
}

uint64_t sub_21BBB158C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21BBB16EC, v3, v2);
}

uint64_t sub_21BBB16EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BBB1750(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v25 = a2;
  v26 = a4;
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v23 = *(v7 + 16);
  v23(&v21 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v22 = *(v7 + 32);
  v22(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  v31 = sub_21BBB7B10;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v21 = &v29;
  v29 = sub_21BB42A18;
  v30 = &block_descriptor_168;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = v25;
  [v25 setPresentationHandler_];
  _Block_release(v14);
  v23(v10, v24, v6);
  v17 = swift_allocObject();
  v22(v17 + v11, v10, v6);
  *(v17 + v12) = v16;
  *(v17 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v31 = sub_21BBB7BA8;
  v32 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21BBB1C7C;
  v30 = &block_descriptor_174;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = v16;

  [v20 performWithContext:v26 completion:v18];
  _Block_release(v18);
}

void sub_21BBB1A34(uint64_t a1, void *a2)
{
  if (qword_27CDB4F20 != -1)
  {
    swift_once();
  }

  sub_21BC83C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  sub_21BE28D2C();
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21BBB1AF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE260FC();
  v10 = [a1 error];
  sub_21BC51D50(v10, 0xD000000000000036, 0x800000021BE564B0);

  (*(v7 + 8))(v9, v6);
  if (([a1 loadSuccess] & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
    sub_21BE28D2C();
  }

  v11 = [a4 view];
  if (v11)
  {
    v12 = v11;
    [v11 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21BBB1C7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21BBB1CE4(void *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 cancel];
  sub_21BE260FC();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD00000000000002FLL, 0x800000021BE56460, &v12);
    _os_log_impl(&dword_21BB35000, v6, v7, "%s cancelled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21BBB2020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBB20BC, v6, v5);
}

uint64_t sub_21BBB20BC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_21BBB2188;
  v10 = v0[2];
  v9 = v0[3];

  return FAFamilySettingsViewControllerV2.loadMemberDetails(member:navigationController:)(v10, v9);
}

uint64_t sub_21BBB2188()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_21BBB22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_21BBB23BC;

  return sub_21BBAC1F4(a5);
}

uint64_t sub_21BBB23BC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBB2500, v3, v2);
}

uint64_t sub_21BBB2500()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBB25CC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BBB26A4()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE563B0, &v12);
    _os_log_impl(&dword_21BB35000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) = 1;
  return result;
}

void sub_21BBB2898()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController;
  v5 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController);
  if (v5)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
    v6 = *(v0 + v4);
    *(v0 + v4) = 0;

    v7 = objc_opt_self();
    v8 = [v7 defaultCenter];
    if (qword_27CDB4FC0 != -1)
    {
      swift_once();
    }

    [v8 removeObserver:v0 name:qword_27CDD4338 object:0];

    v9 = [v7 defaultCenter];
    if (qword_27CDB4F08 != -1)
    {
      swift_once();
    }

    [v9 removeObserver:v0 name:qword_27CDB7EB0 object:0];

    if (*(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) & 1) == 0 && (sub_21BBB58B4())
    {
      v10 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
      swift_beginAccess();
      v11 = *(v0 + v10);
      if (v11 && (v12 = [v11 navigationController]) != 0)
      {
        v13 = v12;
        v14 = [v12 popViewControllerAnimated_];
      }

      else
      {
        v15 = sub_21BE28DAC();
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
        sub_21BE28D7C();
        v16 = sub_21BE28D6C();
        v17 = swift_allocObject();
        v18 = MEMORY[0x277D85700];
        *(v17 + 16) = v16;
        *(v17 + 24) = v18;
        sub_21BBA932C(0, 0, v3, &unk_21BE329F8, v17);
      }
    }
  }
}

uint64_t sub_21BBB2B4C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BD440CC();
}

uint64_t sub_21BBB2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21BBB2D40, v7, v6);
}

uint64_t sub_21BBB2D40()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB2E04;

  return sub_21BD9DCC4();
}

uint64_t sub_21BBB2E04(void *a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_21BBB2F9C;
  }

  else
  {

    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_21BBB2F2C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BBB2F2C()
{

  sub_21BBABB40();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBB2F9C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  sub_21BE2614C();
  v5 = v1;
  sub_21BC51D50(v1, 0xD00000000000002CLL, 0x800000021BE56530);

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBB30BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21BBB3120(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  v5 = sub_21BE29B0C();

  return a3(a1, a2, v5);
}

unint64_t sub_21BBB31A4(uint64_t a1)
{
  v2 = sub_21BE293FC();

  return sub_21BBB3554(a1, v2);
}

unint64_t sub_21BBB31E8(uint64_t a1)
{
  v2 = sub_21BE2956C();

  return sub_21BBB3628(a1, v2);
}

unint64_t sub_21BBB3230(uint64_t a1)
{
  v2 = a1;
  v3 = sub_21BC5A934(*(v1 + 40), a1);

  return sub_21BBB36F0(v2, v3);
}

unint64_t sub_21BBB3274(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BC5C62C(a1);
  sub_21BE28ABC();

  v2 = sub_21BE29B0C();

  return sub_21BBB39C0(a1, v2);
}

unint64_t sub_21BBB32FC(uint64_t a1)
{
  v1 = a1;
  sub_21BE29ACC();
  sub_21BE28ABC();

  v2 = sub_21BE29B0C();

  return sub_21BBB3ECC(v1, v2);
}

unint64_t sub_21BBB340C(uint64_t a1)
{
  sub_21BE28A0C();
  sub_21BE29ACC();
  sub_21BE28ABC();
  v2 = sub_21BE29B0C();

  return sub_21BBB40B0(a1, v2);
}

unint64_t sub_21BBB349C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21BE2995C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21BBB3554(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21BE2940C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21BBB3628(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21BBB71DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CF04720](v9, a1);
      sub_21BBB7238(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21BBB36F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x7069726373627573;
          }

          else
          {
            v8 = 0x646C696843726F66;
          }

          if (v7 == 1)
          {
            v9 = 0xED0000736E6F6974;
          }

          else
          {
            v9 = 0xEB000000006E6572;
          }
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x756F59726F66;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xD000000000000014;
          v9 = 0x800000021BE542B0;
        }

        else
        {
          v8 = 0x4D65726F6C707865;
          v9 = 0xEB0000000065726FLL;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x746553646C696863;
        }

        else
        {
          v8 = 0x7250797465666173;
        }

        if (v7 == 3)
        {
          v9 = 0xEA00000000007075;
        }

        else
        {
          v9 = 0xED00007963617669;
        }
      }

      v10 = 0xD000000000000014;
      if (v6 != 5)
      {
        v10 = 0x4D65726F6C707865;
      }

      v11 = 0xEB0000000065726FLL;
      if (v6 == 5)
      {
        v11 = 0x800000021BE542B0;
      }

      v12 = 0x746553646C696863;
      if (v6 != 3)
      {
        v12 = 0x7250797465666173;
      }

      v13 = 0xED00007963617669;
      if (v6 == 3)
      {
        v13 = 0xEA00000000007075;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x7069726373627573;
      if (v6 != 1)
      {
        v14 = 0x646C696843726F66;
      }

      v15 = 0xED0000736E6F6974;
      if (v6 != 1)
      {
        v15 = 0xEB000000006E6572;
      }

      if (!v6)
      {
        v14 = 0x756F59726F66;
        v15 = 0xE600000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_21BE2995C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21BBB39C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x696D694C6D6D6F63;
          v7 = 0xEE006D6574497374;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000021BE543D0;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x800000021BE543F0;
          break;
        case 4:
          v8 = 0x6E6F697461636F6CLL;
          v7 = 0xEC0000006D657449;
          break;
        case 5:
          v8 = 0xD000000000000013;
          v7 = 0x800000021BE54420;
          break;
        case 6:
          v8 = 0x69636966656E6562;
          v7 = 0xEF6D657449797261;
          break;
        case 7:
          v7 = 0xEE006D6574497375;
          v8 = 0x6C5064756F6C4369;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x6D657449656D6F68;
          break;
        case 9:
          v8 = 0xD000000000000013;
          v7 = 0x800000021BE54460;
          break;
        case 0xA:
          v8 = 0x736143656C707061;
          v7 = 0xED00006D65744968;
          break;
        case 0xB:
          v8 = 0x49746361746E6F63;
          v7 = 0xEB000000006D6574;
          break;
        case 0xC:
          v8 = 0xD000000000000012;
          v7 = 0x800000021BE54490;
          break;
        case 0xD:
          v8 = 0xD000000000000015;
          v7 = 0x800000021BE544B0;
          break;
        case 0xE:
          v8 = 0xD000000000000018;
          v7 = 0x800000021BE544D0;
          break;
        case 0xF:
          v8 = 0xD000000000000012;
          v7 = 0x800000021BE544F0;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v9 = 0xEE006D6574497374;
          if (v8 == 0x696D694C6D6D6F63)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v9 = 0x800000021BE543D0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v9 = 0x800000021BE543F0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v9 = 0xEC0000006D657449;
          if (v8 != 0x6E6F697461636F6CLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v9 = 0x800000021BE54420;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v9 = 0xEF6D657449797261;
          if (v8 != 0x69636966656E6562)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 7:
          v9 = 0xEE006D6574497375;
          if (v8 != 0x6C5064756F6C4369)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v9 = 0xE800000000000000;
          if (v8 != 0x6D657449656D6F68)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v9 = 0x800000021BE54460;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v10 = 0x736143656C707061;
          v9 = 0xED00006D65744968;
          goto LABEL_47;
        case 11:
          v9 = 0xEB000000006D6574;
          if (v8 != 0x49746361746E6F63)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v9 = 0x800000021BE54490;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v9 = 0x800000021BE544B0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v9 = 0x800000021BE544D0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v9 = 0x800000021BE544F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v10)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_49:
          v11 = sub_21BE2995C();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21BBB3ECC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v23 = v4;
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x43726F46796C6E6FLL : 0x47726F46796C6E6FLL;
      v7 = v5 == 2 ? 0xEF6E6572646C6968 : 0xEF6E616964726175;
      v8 = *(*(v22 + 48) + v4) ? 0x41726F46796C6E6FLL : 0xD000000000000010;
      v9 = v5 ? 0xEC000000746C7564 : 0x800000021BE54660;
      v10 = v5 <= 1 ? v8 : v6;
      v11 = v5 <= 1 ? v9 : v7;
      v12 = v21 == 2 ? 0x43726F46796C6E6FLL : 0x47726F46796C6E6FLL;
      v13 = v21 == 2 ? 0xEF6E6572646C6968 : 0xEF6E616964726175;
      v14 = v21 ? 0x41726F46796C6E6FLL : 0xD000000000000010;
      v15 = v21 ? 0xEC000000746C7564 : 0x800000021BE54660;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_21BE2995C();

      if (v18)
      {
        return v23;
      }

      v4 = (v23 + 1) & v20;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v23;
  }

  return v4;
}

unint64_t sub_21BBB40B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21BE28A0C();
      v8 = v7;
      if (v6 == sub_21BE28A0C() && v8 == v9)
      {
        break;
      }

      v11 = sub_21BE2995C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_21BBB41B4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21BBB42A8;

  return v5(v2 + 32);
}

uint64_t sub_21BBB42A8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21BBB43BC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_21BBB7EC8;

  return v5(v2 + 16);
}

uint64_t sub_21BBB44B0(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_21BBB45A4;

  return v5(v2 + 16);
}

uint64_t sub_21BBB45A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_21BBB46D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_allocWithZone(type metadata accessor for FAFamilySettingsViewControllerV2());

  return sub_21BBB475C(a1, a2, a3, a4, a5, a6, v14);
}

char *sub_21BBB475C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v62 = a6;
  v71 = a3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v60 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v60 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v60 - v14;
  v16 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
  *&a7[v16] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v17 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  *&a7[v17] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = 0;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler] = 0;
  v18 = &a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v19 = qword_280BD79E0;
  v18[3] = type metadata accessor for FamilyCircleStore(0);
  v18[4] = &protocol witness table for FamilyCircleStore;
  *v18 = v19;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v20 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v20 = MEMORY[0x277D84FA0];
  }

  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_cancellables] = v20;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter] = 0;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController] = 0;
  a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled] = 0;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_timeToView] = sub_21BC84D18(0x746E6F4377656976, 0xEF3272656C6C6F72, "initToView", 10, 2u);
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount] = a1;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner] = a2;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_pictureStore] = a4;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_accountManager] = a5;
  v21 = objc_allocWithZone(type metadata accessor for FAFamilyLandingPageViewModel());
  v22 = a1;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_viewModel] = FAFamilyLandingPageViewModel.init(appleAccount:)(v22);
  v26 = qword_27CDD4290;
  if (qword_27CDD4290)
  {
    v27 = qword_27CDD4290;
  }

  else
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    v28 = type metadata accessor for ScreenTimeConfiguration();
    memset(v73, 0, sizeof(v73));
    v74 = 0;
    v29 = [objc_allocWithZone(v28) init];
    v30 = objc_allocWithZone(type metadata accessor for LocationViewModel(0));
    v27 = sub_21BDD21D4(v29, &v77, v75, v73, v30);
  }

  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_locationViewModel] = v27;
  v31 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v32 = v26;
  v33 = [v31 init];
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton] = v33;
  v34 = [objc_allocWithZone(FAFamilySettingsViewControllerHelper) initWithAppleAccount:v22 grandSlamSigner:v23 familyPictureStore:v24 accountManager:v25];
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_familySettingsHelper] = v34;
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] = v62;
  v61 = v24;
  v60 = v23;
  v62 = v25;
  if (qword_280BD7508 != -1)
  {
    swift_once();
  }

  v35 = qword_280BDCB60;
  v36 = [objc_allocWithZone(FAAppleCardUtilities) init];
  v37 = type metadata accessor for AppleCardStore(0);
  *(&v78 + 1) = v37;
  v79 = &off_282D9A530;
  *&v77 = v35;
  v38 = objc_allocWithZone(type metadata accessor for AppleCardFamilySettingsViewModel(0));
  v39 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v37);
  MEMORY[0x28223BE20](v39);
  v41 = (&v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;

  v44 = sub_21BDD2ECC(v19, v36, v43, v38);

  __swift_destroy_boxed_opaque_existential_0Tm(&v77);
  *&a7[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCardFamilySettingsViewModel] = v44;
  v45 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v72.receiver = a7;
  v72.super_class = v45;
  v46 = objc_msgSendSuper2(&v72, sel_initWithNibName_bundle_, 0, 0);
  sub_21BB3A35C(v46 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore, &v77);
  v47 = *(&v78 + 1);
  v48 = v79;
  __swift_project_boxed_opaque_existential_1Tm(&v77, *(&v78 + 1));
  v49 = v48[4];
  v50 = v46;
  v49(v47, v48);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BE2635C();
  swift_allocObject();
  v52 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v53 = v63;
  v54 = v67;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v55 = v68;
  v56 = v65;
  sub_21BE26CFC();
  (*(v64 + 8))(v53, v56);
  v57 = swift_allocObject();
  v57[2] = v52;
  v57[3] = &unk_21BE32BB0;
  v57[4] = v51;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v58 = v70;
  sub_21BE26D1C();

  (*(v69 + 8))(v55, v58);
  (*(v66 + 8))(v15, v54);
  __swift_destroy_boxed_opaque_existential_0Tm(&v77);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  return v50;
}

uint64_t sub_21BBB5114(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BBB515C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyLandingPageMainView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBB51C0(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBB521C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BBAA7EC();
}

unint64_t sub_21BBB52D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, &v13, &qword_27CDB57D8, &qword_21BE32860);
      v5 = v13;
      v6 = v14;
      result = sub_21BBB3120(v13, v14, sub_21BBB349C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21BB414D0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21BBB541C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5888, &qword_21BE32980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5890, &qword_21BE32988);
    v7 = sub_21BE297DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21BBA3854(v9, v5, &qword_27CDB5888, &qword_21BE32980);
      v11 = *v5;
      v12 = v5[1];
      result = sub_21BBB3120(*v5, v12, sub_21BBB349C);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_21BE25B9C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21BBB561C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
    v3 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21BBB31A4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_21BBB570C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController) = 0;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler) = 0;
  v3 = (v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280BD79E0;
  v3[3] = type metadata accessor for FamilyCircleStore(0);
  v3[4] = &protocol witness table for FamilyCircleStore;
  *v3 = v4;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v5 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_cancellables) = v5;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter) = 0;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController) = 0;
  *(v0 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled) = 0;
  sub_21BE2978C();
  __break(1u);
}

id sub_21BBB58B4()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_21BE289CC();
  v6 = [v4 acknowledgementNeededForPrivacyIdentifier_];

  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000010, 0x800000021BE56390, &v13);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6;
    _os_log_impl(&dword_21BB35000, v7, v8, "%s result %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_21BBB5AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5938, &qword_21BE32B08);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_21BBB5BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBAF20C(a1, v4, v5, v6);
}

uint64_t sub_21BBB5C70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BBAFCFC();
}

unint64_t sub_21BBB5D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, v13, &qword_27CDB5900, &qword_21BE32AB0);
      result = sub_21BBB31E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21BB414D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21BBB5E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, &v16, &qword_27CDB57E8, &qword_21BE32890);
      v5 = v16;
      v6 = v17;
      result = sub_21BBB3120(v16, v17, sub_21BBB349C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

uint64_t sub_21BBB5FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBB13C8(a1, v4, v5, v6);
}

unint64_t sub_21BBB6068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5880, &qword_21BE3BF30);
    v3 = sub_21BE297DC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_21BBB61E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_21BBB62F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E0, &qword_21BE32A78);
    v3 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_21BBB340C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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