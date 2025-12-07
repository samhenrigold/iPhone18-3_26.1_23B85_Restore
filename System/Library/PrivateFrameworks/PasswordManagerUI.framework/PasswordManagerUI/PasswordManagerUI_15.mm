uint64_t sub_21C8ADE04@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB83074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4E0, &qword_21CBAC440);
  return sub_21C8ADB60((a2 + *(v3 + 44)));
}

uint64_t sub_21C8ADE78(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

void sub_21C8ADEEC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_21C8ADF00(result, a2);
  }
}

void sub_21C8ADF00(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_21C8ADF14(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21C8ADF28(result, a2, a3);
  }

  return result;
}

uint64_t sub_21C8ADF28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21C8ADF40(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C8ADFA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_21C8ADFF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
}

uint64_t sub_21C8AE058(char a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8;
}

unint64_t sub_21C8AE240()
{
  result = qword_27CDEF4C0;
  if (!qword_27CDEF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4A8, &qword_21CBAC3B8);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
    sub_21C6EADEC(&qword_27CDEF4C8, &qword_27CDEF4D0, &qword_21CBAC400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF4C0);
  }

  return result;
}

uint64_t sub_21C8AE390(uint64_t a1)
{
  v2 = type metadata accessor for UserInputAlert.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C8AE3F4()
{
  result = qword_27CDEF538;
  if (!qword_27CDEF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF508, &qword_21CBAC470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF510, &qword_21CBAC478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF518, &qword_21CBAC480);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDEF530, &qword_27CDEF518, &qword_21CBAC480, MEMORY[0x277CDE580]);
    sub_21C8AF988(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF538);
  }

  return result;
}

unint64_t sub_21C8AE57C()
{
  result = qword_27CDEF540;
  if (!qword_27CDEF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F8, &qword_21CBAC460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF500, &qword_21CBAC468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF508, &qword_21CBAC470);
    sub_21C8AE3F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF540);
  }

  return result;
}

unint64_t sub_21C8AE67C()
{
  result = qword_27CDEF548;
  if (!qword_27CDEF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF548);
  }

  return result;
}

unint64_t sub_21C8AE6D0()
{
  result = qword_27CDEF558;
  if (!qword_27CDEF558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F0, &qword_21CBAC458);
    sub_21C8AE788();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF558);
  }

  return result;
}

unint64_t sub_21C8AE788()
{
  result = qword_27CDEF560;
  if (!qword_27CDEF560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF550, &qword_21CBAC490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F8, &qword_21CBAC460);
    sub_21C8AE57C();
    sub_21C8AE67C();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF560);
  }

  return result;
}

uint64_t sub_21C8AE898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8AE8FC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C8A5124(a1, v4);
}

uint64_t sub_21C8AE96C()
{
  v2 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C702EFC;

  return sub_21C8A5660(v4, v5, v0 + v3);
}

uint64_t sub_21C8AEA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C8AEB10()
{
  result = qword_27CDEF5D0;
  if (!qword_27CDEF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF5B8, &qword_21CBAC538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA548, qword_21CBAC540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    sub_21C6EADEC(&qword_27CDEF5D8, &qword_27CDEA548, qword_21CBAC540, MEMORY[0x277CDEFF0]);
    sub_21C8AEF68(&qword_27CDEF5C8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF5D0);
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7) && swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = sub_21CB80A84();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);

  v9 = v5 + v1[7];
  v10 = *(v9 + 16);
  if (v10 != 255)
  {
    sub_21C8ADF28(*v9, *(v9 + 8), v10);
  }

  v11 = v5 + v1[8];
  v12 = *(v11 + 8);
  if (v12 != 255)
  {
    sub_21C8ADF00(*v11, v12);
  }

  v13 = v5 + v1[10];
  v14 = sub_21CB81B84();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8AEF08()
{
  v1 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C8AC1C8(v2);
}

uint64_t sub_21C8AEF68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C8AEFD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8ABECC(a1, v6, a2);
}

unint64_t sub_21C8AF06C()
{
  result = qword_27CDEF608;
  if (!qword_27CDEF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF600, &qword_21CBAC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF608);
  }

  return result;
}

uint64_t sub_21C8AF0E8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8A7FA0(a1, a2, v6);
}

unint64_t sub_21C8AF168()
{
  result = qword_27CDEF620;
  if (!qword_27CDEF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF610, &qword_21CBAC588);
    sub_21C8AF1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF620);
  }

  return result;
}

unint64_t sub_21C8AF1EC()
{
  result = qword_27CDEF628;
  if (!qword_27CDEF628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF630, &qword_21CBAC598);
    sub_21C8AF278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF628);
  }

  return result;
}

unint64_t sub_21C8AF278()
{
  result = qword_27CDEF638;
  if (!qword_27CDEF638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF640, &qword_21CBAC5A0);
    v1 = MEMORY[0x277CDF038];
    sub_21C6EADEC(&qword_27CDEF648, &qword_27CDEF650, &qword_21CBAC5A8, MEMORY[0x277CDF038]);
    sub_21C6EADEC(&qword_27CDEF658, &qword_27CDEF660, &qword_21CBAC5B0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF638);
  }

  return result;
}

unint64_t sub_21C8AF358()
{
  result = qword_27CDEF668;
  if (!qword_27CDEF668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3B0, &qword_21CBAC180);
    sub_21C6EADEC(&qword_27CDEF670, &qword_27CDEF678, &qword_21CBAC5B8, &unk_21CBAC1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF668);
  }

  return result;
}

uint64_t sub_21C8AF408(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8A85EC(a1, a2, v6);
}

unint64_t sub_21C8AF488()
{
  result = qword_27CDEF680;
  if (!qword_27CDEF680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3C0, &unk_21CBAC188);
    sub_21C6EADEC(&qword_27CDEF688, &qword_27CDEF690, &qword_21CBAC5C0, &unk_21CBAC1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF680);
  }

  return result;
}

unint64_t sub_21C8AF540()
{
  result = qword_27CDEF6B0;
  if (!qword_27CDEF6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3B0, &qword_21CBAC180);
    sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8, &unk_21CBAC1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF6B0);
  }

  return result;
}

unint64_t sub_21C8AF608()
{
  result = qword_27CDEF788;
  if (!qword_27CDEF788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3C0, &unk_21CBAC188);
    sub_21C6EADEC(&qword_27CDEF790, &qword_27CDEF690, &qword_21CBAC5C0, &unk_21CBAC1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF788);
  }

  return result;
}

unint64_t sub_21C8AF6E4()
{
  result = qword_27CDEF838;
  if (!qword_27CDEF838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA500, &qword_21CB9E610);
    sub_21C6EADEC(&qword_27CDEF840, &qword_27CDEA518, &unk_21CBAC380, &unk_21CBAC1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF838);
  }

  return result;
}

unint64_t sub_21C8AF794()
{
  result = qword_27CDEF848;
  if (!qword_27CDEF848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF830, &qword_21CBAC738);
    sub_21C6EADEC(&qword_27CDEF850, &qword_27CDEF858, &qword_21CBAC740, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF848);
  }

  return result;
}

void sub_21C8AF850(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21C8A6A20(a1, a2, v6);
}

unint64_t sub_21C8AF8D0()
{
  result = qword_27CDEF868;
  if (!qword_27CDEF868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA500, &qword_21CB9E610);
    sub_21C6EADEC(&qword_27CDEF870, &qword_27CDEA518, &unk_21CBAC380, &unk_21CBAC1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF868);
  }

  return result;
}

uint64_t sub_21C8AF988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C8AF9D0(uint64_t a1)
{
  result = sub_21CB80A84();
  if (v2 <= 0x3F)
  {
    result = sub_21CB81A44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21C8AFA4C()
{
  result = qword_27CDEF8D8;
  if (!qword_27CDEF8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5A0, &qword_21CB9E6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F0, &qword_21CBAC458);
    sub_21C8AE6D0();
    swift_getOpaqueTypeConformance2();
    sub_21C8AFB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF8D8);
  }

  return result;
}

unint64_t sub_21C8AFB14()
{
  result = qword_27CDEF8E0;
  if (!qword_27CDEF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF8E0);
  }

  return result;
}

uint64_t sub_21C8AFB88()
{
  swift_getKeyPath(byte_21CBAC8A8);
  sub_21C8B038C();
  sub_21CB810D4();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21C8AFC08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAC8A8);
  sub_21C8B038C();
  sub_21CB810D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21C8AFC84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C8AFCC4(v1, v2);
}

uint64_t sub_21C8AFCC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_21CB86344() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAC8A8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C8B038C();
    sub_21CB810C4();
  }
}

uint64_t sub_21C8AFDF4()
{
  swift_getKeyPath(byte_21CBAC880);
  sub_21C8B038C();
  sub_21CB810D4();

  return *(v0 + 32);
}

uint64_t sub_21C8AFE64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAC880);
  sub_21C8B038C();
  sub_21CB810D4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21C8AFF04(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAC880);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C8B038C();
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8AFFEC()
{
  swift_getKeyPath(byte_21CBAC858);
  sub_21C8B038C();
  sub_21CB810D4();

  return *(v0 + 33);
}

uint64_t sub_21C8B005C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAC858);
  sub_21C8B038C();
  sub_21CB810D4();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_21C8B00FC(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAC858);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C8B038C();
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8B01DC()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI19PMGlobalSearchModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGlobalSearchModel(uint64_t a1)
{
  result = qword_27CDEF8F0;
  if (!qword_27CDEF8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C8B02D4(uint64_t a1)
{
  result = sub_21CB81114();
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

unint64_t sub_21C8B038C()
{
  result = qword_27CDEEE18;
  if (!qword_27CDEEE18)
  {
    type metadata accessor for PMGlobalSearchModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEE18);
  }

  return result;
}

uint64_t sub_21C8B03F4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

void sub_21C8B0434(void *a1)
{
  sub_21C72E3E0(319, &qword_27CDEE4A0, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_21C72E3E0(319, &qword_27CDEB308, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21CB81F84();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            sub_21C72C81C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21C8B057C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v34 = *(a3 + 16);
  v35 = *(a3 + 24);
  v5 = *(v35 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = sub_21CB82834();
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v9 + 80);
  if (*(*(v12 - 8) + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(*(v12 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 | 7;
  v18 = ((v13 + 16) & ~v13) + v14 + v13;
  v19 = v14 + v15;
  if (a2 <= v11)
  {
    goto LABEL_35;
  }

  v20 = *(*(v12 - 8) + 80) & 0xF8 | 7;
  v21 = v16 + ((*(v9 + 64) + v20 + ((v19 + ((v18 + ((v17 + 81) & ~v17)) & ~v13)) & ~v15)) & ~v20) + 1;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((a2 - v11 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 < 2)
    {
LABEL_35:
      if (v11 == 0x7FFFFFFF)
      {
        v27 = *(a1 + 1);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v28 = ~v13;
      v29 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v17 + 17) & ~v17;
      if (v11 == v7)
      {
        v30 = *(v5 + 48);
        v31 = (v13 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v28;
      }

      else
      {
        v31 = (v18 + v29) & v28;
        if (v6 != v11)
        {
          v30 = *(v9 + 48);
          v31 = (v19 + v31) & ~v15;
          v32 = v10;
          v33 = v34;

          return v30(v31, v32, v33);
        }

        v30 = *(v5 + 48);
      }

      v32 = v6;
      v33 = v35;

      return v30(v31, v32, v33);
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_35;
  }

LABEL_24:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return v11 + (v21 | v26) + 1;
}

void sub_21C8B0914(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v35 = *(a4 + 16);
  v36 = *(a4 + 24);
  v7 = *(v36 - 8);
  v38 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v37 = v9;
  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(sub_21CB82834() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v7 + 80);
  v17 = *(v7 + 64);
  v18 = ((v16 + 16) & ~v16) + v17 + v16;
  v19 = *(v11 + 80);
  v20 = *(v14 + 80) & 0xF8 | 7;
  v21 = v15 + ((*(v11 + 64) + v20 + ((v17 + v19 + ((v18 + (((v16 | 7) + 81) & ~(v16 | 7))) & ~v16)) & ~v19)) & ~v20) + 1;
  if (a3 <= v13)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v13 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v13 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v21] = 0;
    }

    else if (v22)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v13 == 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = (a2 - 1);
      }

      return;
    }

    v28 = ~v16;
    v29 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 17) & ~(v16 | 7);
    if (v13 == v37)
    {
      v30 = *(v38 + 56);
      v31 = (v16 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v28;
    }

    else
    {
      v31 = (v18 + v29) & v28;
      if (v8 != v13)
      {
        v30 = *(v11 + 56);
        v31 = (v17 + v19 + v31) & ~v19;
        v32 = a2;
        v33 = v12;
        v34 = v35;

        goto LABEL_65;
      }

      v30 = *(v38 + 56);
    }

    v32 = a2;
    v33 = v8;
    v34 = v36;

LABEL_65:
    v30(v31, v32, v33, v34);
    return;
  }

  v23 = ~v13 + a2;
  if (v21 < 4)
  {
    v24 = (v23 >> (8 * v21)) + 1;
    if (v21)
    {
      v27 = v23 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v27;
          if (v22 > 1)
          {
LABEL_59:
            if (v22 == 2)
            {
              *&a1[v21] = v24;
            }

            else
            {
              *&a1[v21] = v24;
            }

            return;
          }
        }

        else
        {
          *a1 = v23;
          if (v22 > 1)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_56;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v22 > 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    bzero(a1, v21);
    *a1 = v23;
    v24 = 1;
    if (v22 > 1)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v22)
  {
    a1[v21] = v24;
  }
}

uint64_t sub_21C8B0D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  return v1;
}

uint64_t sub_21C8B0DF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_21CB82834();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1[2];
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v5 = a1[3];
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v7 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  v80 = v6;
  v81 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = a1[5];
  v80 = v4;
  v81 = v5;
  v82 = OpaqueTypeConformance2;
  v83 = v9;
  swift_getOpaqueTypeMetadata2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  v43[1] = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v10 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v12 = MEMORY[0x277CE0868];
  v53 = MEMORY[0x277CE0868];
  v13 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
  v78 = WitnessTable;
  v79 = v13;
  v14 = MEMORY[0x277CDFAD8];
  v15 = swift_getWitnessTable();
  v44 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, v12);
  v76 = v15;
  v77 = v44;
  v16 = swift_getWitnessTable();
  v80 = v10;
  v81 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  v17 = sub_21CB828F4();
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x277CDFC60];
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x277CE0760];
  v72 = v18;
  v73 = MEMORY[0x277CE0760];
  v70 = swift_getWitnessTable();
  v71 = v19;
  v45 = v14;
  v48 = v17;
  v49 = swift_getWitnessTable();
  v80 = v17;
  v81 = v49;
  v47 = MEMORY[0x277CDE8F8];
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  v20 = sub_21CB828F4();
  v68 = v46;
  v69 = v44;
  v21 = swift_getWitnessTable();
  v80 = v20;
  v81 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  v22 = sub_21CB851C4();
  v46 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v43 - v23;
  v25 = sub_21CB828F4();
  v51 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v43 - v26;
  v28 = sub_21CB828F4();
  v52 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v44 = v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v50 = v43 - v31;
  sub_21C8B18FC(v54, v24);
  sub_21CB83D44();
  v80 = v48;
  v81 = v49;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v63 = MEMORY[0x277CE1340];
  v64 = v32;
  v65 = v33;
  v34 = swift_getWitnessTable();
  sub_21CB84884();
  (*(v46 + 8))(v24, v22);
  v35 = v55;
  sub_21C7448E0(v55);
  sub_21CB82824();
  (*(v56 + 8))(v35, v57);
  v61 = v34;
  v62 = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  v37 = v44;
  sub_21CB849D4();
  (*(v51 + 8))(v27, v25);
  v38 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, v53);
  v59 = v36;
  v60 = v38;
  v39 = swift_getWitnessTable();
  v40 = v50;
  sub_21C72BE10(v37, v28, v39);
  v41 = *(v52 + 8);
  v41(v37, v28);
  sub_21C72BE10(v40, v28, v39);
  return (v41)(v40, v28);
}

uint64_t sub_21C8B18FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v33 = a1[2];
  v32 = sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v3 = a1[3];
  v35 = a1;
  v36 = v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v63 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = a1[5];
  v64 = OpaqueTypeConformance2;
  v65 = v34;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  v27[0] = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v5 = sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  v30 = v5;
  sub_21CB828F4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277CE0868];
  v60 = WitnessTable;
  v61 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
  v7 = swift_getWitnessTable();
  v28 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, v6);
  v58 = v7;
  v59 = v28;
  swift_getWitnessTable();
  v27[2] = MEMORY[0x277CE0C08];
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  v8 = sub_21CB828F4();
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x277CDFC60];
  v9 = swift_getWitnessTable();
  v10 = MEMORY[0x277CE0760];
  v54 = v9;
  v55 = MEMORY[0x277CE0760];
  v52 = swift_getWitnessTable();
  v53 = v10;
  v32 = swift_getWitnessTable();
  v27[1] = MEMORY[0x277CDE8F8];
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  v11 = v33;
  sub_21CB828F4();
  sub_21CB828F4();
  v50 = WitnessTable;
  v51 = v28;
  v62 = sub_21CB828F4();
  v63 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  v12 = sub_21CB851C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  sub_21CB85184();
  *&v19 = v35[4];
  *(&v19 + 1) = v34;
  *&v20 = v11;
  *(&v20 + 1) = v36;
  v42 = v20;
  v43 = v19;
  v44 = v37;
  v39 = v20;
  v40 = v19;
  v41 = v37;
  v62 = v8;
  v63 = v32;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v22 = MEMORY[0x277CE1340];
  sub_21CB85194();
  v45 = v22;
  v46 = v21;
  v47 = v26;
  v23 = swift_getWitnessTable();
  sub_21C72BE10(v15, v12, v23);
  v24 = *(v13 + 8);
  v24(v15, v12);
  sub_21C72BE10(v18, v12, v23);
  return (v24)(v18, v12);
}

uint64_t sub_21C8B20E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v28 = a4;
  v25 = a3;
  v27 = a2;
  v29 = a1;
  v30 = a6;
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277CE0868];
  v41 = WitnessTable;
  v42 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
  v39 = swift_getWitnessTable();
  v40 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, v8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  v9 = sub_21CB828F4();
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CDFC60];
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x277CE0760];
  v35 = v10;
  v36 = MEMORY[0x277CE0760];
  v33 = swift_getWitnessTable();
  v34 = v11;
  v12 = swift_getWitnessTable();
  v43 = v9;
  v44 = v12;
  swift_getOpaqueTypeMetadata2();
  v13 = sub_21CB828F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  v43 = v27;
  v44 = v25;
  OpaqueTypeConformance2 = v28;
  v46 = v26;
  v20 = type metadata accessor for PMAccountDetailHeaderView(0, &v43);
  sub_21C8B26D4(v20, v16);
  v43 = v9;
  v44 = v12;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  sub_21C72BE10(v16, v13, v21);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_21C72BE10(v19, v13, v21);
  return (v22)(v19, v13);
}

uint64_t sub_21C8B26D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = a1[2];
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v58 = a1[3];
  v57 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v78 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = a1[5];
  v79 = OpaqueTypeConformance2;
  v80 = v56;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v4 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277CE0868];
  v75 = WitnessTable;
  v76 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
  v7 = MEMORY[0x277CDFAD8];
  v73 = swift_getWitnessTable();
  v74 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, v6);
  v77 = v4;
  v78 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  v39[1] = swift_getWitnessTable();
  v8 = sub_21CB84EE4();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v39 - v9;
  v11 = sub_21CB828F4();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = v39 - v12;
  v41 = v11;
  v13 = sub_21CB828F4();
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = v39 - v14;
  v43 = v13;
  v15 = sub_21CB828F4();
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = v39 - v16;
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x277CDFC60];
  v40 = swift_getWitnessTable();
  v17 = MEMORY[0x277CE0760];
  v69 = v40;
  v70 = MEMORY[0x277CE0760];
  v51 = v7;
  v42 = swift_getWitnessTable();
  v67 = v42;
  v68 = v17;
  v44 = swift_getWitnessTable();
  v77 = v15;
  v78 = v44;
  v45 = MEMORY[0x277CDE8F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = v39 - v19;
  v21 = sub_21CB828F4();
  v47 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v39 - v25;
  sub_21CB832E4();
  *&v27 = v57[4];
  *(&v27 + 1) = v56;
  *&v28 = v59;
  *(&v28 + 1) = v58;
  v62 = v28;
  v63 = v27;
  v64 = v60;
  sub_21CB84ED4();
  sub_21CB85214();
  v29 = v49;
  sub_21CB847A4();
  (*(v55 + 8))(v10, v8);
  sub_21CB832C4();
  v30 = v50;
  v31 = v41;
  sub_21CB84264();
  (*(v54 + 8))(v29, v31);
  sub_21CB832D4();
  v32 = v48;
  v33 = v43;
  sub_21CB84264();
  (*(v53 + 8))(v30, v33);
  sub_21CB82324();
  v34 = v44;
  sub_21CB84344();
  (*(v52 + 8))(v32, v15);
  sub_21CB83CF4();
  v77 = v15;
  v78 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  sub_21CB84884();
  (*(v46 + 8))(v20, OpaqueTypeMetadata2);
  v65 = v35;
  v66 = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  sub_21C72BE10(v23, v21, v36);
  v37 = *(v47 + 8);
  v37(v23, v21);
  sub_21C72BE10(v26, v21, v36);
  return (v37)(v26, v21);
}

uint64_t sub_21C8B3184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a1;
  v22[1] = a6;
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v10 = sub_21CB828F4();
  v22[2] = swift_getWitnessTable();
  v22[3] = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v23 = v10;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v11 = sub_21CB84E14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  v23 = a2;
  WitnessTable = a3;
  OpaqueTypeConformance2 = a4;
  v26 = a5;
  v18 = type metadata accessor for PMAccountDetailHeaderView(0, &v23);
  sub_21C8B3638(v18, v14);
  v19 = swift_getWitnessTable();
  sub_21C72BE10(v14, v11, v19);
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_21C72BE10(v17, v11, v19);
  return (v20)(v17, v11);
}

uint64_t sub_21C8B3638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = a1[2];
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v4 = a1[3];
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v27 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = a1[5];
  v28 = OpaqueTypeConformance2;
  v29 = v6;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v7 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v26 = v7;
  v27 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v8 = sub_21CB84E14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  *&v15 = a1[4];
  *(&v15 + 1) = v6;
  *&v16 = v3;
  *(&v16 + 1) = v4;
  v21 = v16;
  v22 = v15;
  v23 = v20[0];
  sub_21CB83074();
  sub_21CB84E04();
  v17 = swift_getWitnessTable();
  sub_21C72BE10(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_21C72BE10(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_21C8B3B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v51 = a4;
  v52 = a3;
  v54 = a1;
  v50 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v8 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v71 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v43 = MEMORY[0x277CDFAD8];
  v72 = v8;
  v73 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata2();
  v48 = sub_21CB85354();
  v47 = swift_getWitnessTable();
  v44 = sub_21CB84EE4();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v37 - v11;
  v12 = sub_21CB828F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = sub_21CB828F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v40 = a2;
  v72 = a2;
  v73 = v52;
  v23 = v51;
  OpaqueTypeConformance2 = v51;
  v75 = v53;
  type metadata accessor for PMAccountDetailHeaderView(0, &v72);
  sub_21CB832C4();
  sub_21CB84264();
  sub_21CB83D34();
  v68 = v23;
  v69 = MEMORY[0x277CE0760];
  v24 = swift_getWitnessTable();
  sub_21CB84884();
  (*(v13 + 8))(v15, v12);
  v66 = v24;
  v67 = MEMORY[0x277CDF918];
  v39 = v16;
  v42 = swift_getWitnessTable();
  v38 = v19;
  sub_21C72BE10(v19, v16, v42);
  v25 = *(v17 + 8);
  v41 = v17 + 8;
  v43 = v25;
  v25(v19, v16);
  sub_21CB832F4();
  v55 = v40;
  v56 = v52;
  v57 = v51;
  v58 = v53;
  v59 = v54;
  v26 = v45;
  sub_21CB84ED4();
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v46;
  sub_21C72BE10(v26, v27, v28);
  v30 = v49;
  v31 = *(v49 + 8);
  v31(v26, v27);
  v32 = *(v17 + 16);
  v33 = v38;
  v34 = v39;
  v32(v38, v22, v39);
  v72 = v33;
  (*(v30 + 16))(v26, v29, v27);
  v64 = 0;
  v65 = 1;
  v73 = v26;
  OpaqueTypeConformance2 = &v64;
  v63[0] = v34;
  v63[1] = v27;
  v63[2] = MEMORY[0x277CE1180];
  v60 = v42;
  v61 = v28;
  v62 = MEMORY[0x277CE1170];
  sub_21C74A55C(&v72, 3uLL, v63);
  v31(v29, v27);
  v35 = v43;
  v43(v22, v34);
  v31(v26, v27);
  return v35(v33, v34);
}

uint64_t sub_21C8B438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a3;
  v59 = a5;
  v60 = a2;
  v61 = a4;
  v65 = a1;
  v62 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v10 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  *&v81 = v9;
  *(&v81 + 1) = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v81 = v8;
  *(&v81 + 1) = a3;
  *&v82 = OpaqueTypeConformance2;
  *(&v82 + 1) = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v12 = sub_21CB84F04();
  v57 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v50 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v15 = sub_21CB828F4();
  v56 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  WitnessTable = swift_getWitnessTable();
  v50[1] = WitnessTable;
  v19 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v79 = WitnessTable;
  v80 = v19;
  v55 = MEMORY[0x277CDFAD8];
  v51 = swift_getWitnessTable();
  *&v81 = v15;
  *(&v81 + 1) = v51;
  v53 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = v50 - v21;
  sub_21CB83B74();
  v52 = sub_21CB828F4();
  v63 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v64 = v50 - v26;
  v27 = sub_21CB832F4();
  v28 = sub_21CB83034();
  *&v81 = v60;
  *(&v81 + 1) = v58;
  *&v82 = v61;
  *(&v82 + 1) = v59;
  v29 = type metadata accessor for PMAccountDetailHeaderView(0, &v81);
  sub_21C8B4BA4(v27, v28, v29, v14);
  sub_21CB83E34();
  sub_21CB846C4();

  (*(v57 + 8))(v14, v12);
  sub_21CB83E04();
  v30 = v51;
  sub_21CB840D4();
  (*(v56 + 8))(v17, v15);
  *&v81 = v15;
  *(&v81 + 1) = v30;
  v31 = swift_getOpaqueTypeConformance2();
  sub_21CB845C4();
  (*(v54 + 8))(v22, OpaqueTypeMetadata2);
  v32 = sub_21C735F84();
  v77 = v31;
  v78 = v32;
  v33 = v52;
  v34 = swift_getWitnessTable();
  sub_21C72BE10(v24, v33, v34);
  v35 = *(v63 + 8);
  v61 = v24;
  v35(v24, v33);
  v36 = *(v65 + 72);
  if (v36)
  {
    *&v81 = *(v65 + 64);
    *(&v81 + 1) = v36;
    sub_21C71F3FC();

    v37 = sub_21CB84054();
    v39 = v38;
    v41 = v40;
    sub_21CB84B34();
    v65 = sub_21CB83FB4();
    v59 = v43;
    v60 = v42;
    LODWORD(v58) = v44;

    sub_21C74A72C(v37, v39, v41 & 1);

    v36 = sub_21CB83EB4();
    LOBYTE(v75[0]) = 0;
    *&v81 = v65;
    *(&v81 + 1) = v60;
    LOBYTE(v82) = v58 & 1;
    *(&v82 + 1) = v59;
    *&v83 = KeyPath;
    *(&v83 + 1) = 2;
    LOBYTE(v84) = 0;
  }

  else
  {
    v46 = 0;
    *&v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
  }

  *(&v84 + 1) = v46;
  v85 = v36;
  v47 = v64;
  v48 = v61;
  (*(v63 + 16))(v61, v64, v33);
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v69 = v81;
  v70 = v82;
  v74[0] = v48;
  v74[1] = &v69;
  sub_21C8B6688(&v81, v75);
  v68[0] = v33;
  v68[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  v66 = v34;
  v67 = sub_21C8B66F8();
  sub_21C74A55C(v74, 2uLL, v68);
  sub_21C8B6834(&v81);
  v35(v47, v33);
  v75[2] = v71;
  v75[3] = v72;
  v76 = v73;
  v75[0] = v69;
  v75[1] = v70;
  sub_21C8B6834(v75);
  return (v35)(v48, v33);
}

uint64_t sub_21C8B4BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a1;
  v22[2] = a2;
  v22[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v27 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = a3[3];
  v9 = a3[5];
  v26 = v6;
  v27 = v8;
  v28 = OpaqueTypeConformance2;
  v29 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v10 = sub_21CB84F04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  *&v17 = a3[2];
  *(&v17 + 1) = v8;
  *&v18 = a3[4];
  *(&v18 + 1) = v9;
  v23 = v17;
  v24 = v18;
  v25 = v4;
  sub_21CB84EF4();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v13, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_21C72BE10(v16, v10, WitnessTable);
  return (v20)(v16, v10);
}

uint64_t sub_21C8B4EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a2;
  v100 = a5;
  v101 = a1;
  v102 = a4;
  v103 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v10 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  *&v128 = v9;
  *(&v128 + 1) = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v128 = v8;
  *(&v128 + 1) = a3;
  *&v129 = OpaqueTypeConformance2;
  *(&v129 + 1) = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v12 = sub_21CB84F04();
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v92 = &v79 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  v88 = v12;
  v14 = sub_21CB828F4();
  v95 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v91 = &v79 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v86 = v14;
  v16 = sub_21CB828F4();
  v93 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v90 = &v79 - v17;
  WitnessTable = swift_getWitnessTable();
  v83 = WitnessTable;
  v19 = MEMORY[0x277CE0868];
  v20 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
  v126 = WitnessTable;
  v127 = v20;
  v79 = MEMORY[0x277CDFAD8];
  v21 = swift_getWitnessTable();
  v82 = v21;
  v22 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, v19);
  v124 = v21;
  v125 = v22;
  v85 = v16;
  v84 = swift_getWitnessTable();
  *&v128 = v16;
  *(&v128 + 1) = v84;
  v87 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v80 = &v79 - v23;
  sub_21CB83B74();
  v107 = sub_21CB828F4();
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v105 = &v79 - v26;
  v27 = v99;
  v28 = sub_21CB828F4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v79 - v33;
  *&v128 = v27;
  *(&v128 + 1) = a3;
  v35 = v102;
  *&v129 = v102;
  *(&v129 + 1) = v100;
  v36 = type metadata accessor for PMAccountDetailHeaderView(0, &v128);
  sub_21CB83D04();
  v37 = v101;
  v38 = v28;
  sub_21CB84884();
  v122 = v35;
  v123 = MEMORY[0x277CDF918];
  v39 = swift_getWitnessTable();
  v100 = v34;
  v94 = v39;
  sub_21C72BE10(v31, v28, v39);
  v97 = v29;
  v40 = *(v29 + 8);
  v102 = v31;
  v98 = v40;
  v99 = v29 + 8;
  v40(v31, v28);
  v41 = sub_21CB85214();
  v42 = v92;
  v43 = v37;
  sub_21C8B4BA4(v41, v44, v36, v92);
  v45 = v91;
  v46 = v88;
  sub_21CB845A4();
  (*(v96 + 8))(v42, v46);
  sub_21CB83DB4();
  v47 = v90;
  v48 = v86;
  sub_21CB846C4();

  (*(v95 + 8))(v45, v48);
  sub_21CB83DD4();
  v49 = v80;
  v51 = v84;
  v50 = v85;
  sub_21CB840D4();
  (*(v93 + 8))(v47, v50);
  *&v128 = v50;
  *(&v128 + 1) = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v106;
  v54 = OpaqueTypeMetadata2;
  sub_21CB845C4();
  (*(v89 + 8))(v49, v54);
  v55 = sub_21C735F84();
  v120 = v52;
  v121 = v55;
  v56 = v107;
  v95 = swift_getWitnessTable();
  sub_21C72BE10(v53, v56, v95);
  v96 = *(v104 + 8);
  (v96)(v53, v56);
  v57 = *(v43 + 72);
  if (v57)
  {
    *&v128 = *(v43 + 64);
    *(&v128 + 1) = v57;
    sub_21C71F3FC();

    v58 = sub_21CB84054();
    v60 = v59;
    v62 = v61;
    sub_21CB84B34();
    v101 = sub_21CB83FB4();
    v64 = v63;
    v66 = v65;
    v93 = v67;

    sub_21C74A72C(v58, v60, v62 & 1);

    v57 = sub_21CB83EB4();
    LOBYTE(v118[0]) = 0;
    *&v128 = v101;
    *(&v128 + 1) = v64;
    LOBYTE(v129) = v66 & 1;
    *(&v129 + 1) = v93;
    *&v130 = KeyPath;
    *(&v130 + 1) = 2;
    LOBYTE(v131) = 0;
  }

  else
  {
    v69 = 0;
    *&v131 = 0;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
  }

  *(&v131 + 1) = v69;
  v132 = v57;
  v70 = v102;
  v71 = v100;
  (*(v97 + 16))(v102, v100, v28);
  v117[0] = v70;
  v72 = v105;
  v74 = v106;
  v73 = v107;
  (*(v104 + 16))(v106, v105, v107);
  v114 = v130;
  v115 = v131;
  v116 = v132;
  v112 = v128;
  v113 = v129;
  v117[1] = v74;
  v117[2] = &v112;
  sub_21C8B6688(&v128, v118);
  v111[0] = v38;
  v111[1] = v73;
  v111[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  v108 = v94;
  v109 = v95;
  v110 = sub_21C8B66F8();
  sub_21C74A55C(v117, 3uLL, v111);
  sub_21C8B6834(&v128);
  v75 = v96;
  (v96)(v72, v73);
  v76 = v71;
  v77 = v98;
  v98(v76, v38);
  v118[2] = v114;
  v118[3] = v115;
  v119 = v116;
  v118[0] = v112;
  v118[1] = v113;
  sub_21C8B6834(v118);
  v75(v74, v73);
  return v77(v70, v38);
}

uint64_t sub_21C8B59C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a4;
  v101 = a6;
  v93 = sub_21CB82834();
  v102 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v75 = v12;
  v98 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v89 = v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF988, &unk_21CBAC958);
  v78 = v14;
  v95 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v82 = v67 - v15;
  v76 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  v106 = v12;
  v107 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v14;
  v107 = a3;
  v70 = a3;
  v108 = OpaqueTypeConformance2;
  v109 = a5;
  v69 = a5;
  v91 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v72 = v67 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  v88 = sub_21CB828F4();
  v94 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v73 = v67 - v17;
  v83 = sub_21CB828F4();
  v97 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = v67 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  v96 = sub_21CB828F4();
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v100 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = v67 - v21;
  MEMORY[0x28223BE20](v22);
  v90 = v67 - v23;
  v24 = *(a1 + 8);
  v106 = *a1;
  v107 = v24;
  sub_21C71F3FC();

  v85 = sub_21CB84054();
  v84 = v25;
  v86 = v26;
  v87 = v27;
  v71 = *(a1 + 80);
  v106 = a2;
  v107 = a3;
  v108 = v81;
  v109 = a5;
  v28 = type metadata accessor for PMAccountDetailHeaderView(0, &v106);
  v67[4] = sub_21C8B0D9C();
  v67[3] = v29;
  v67[2] = v30;
  v67[1] = v31;
  v32 = *(a1 + 24);
  v106 = *(a1 + 16);
  v107 = v32;

  sub_21CB84054();
  v81 = *(v28 + 80);
  v68 = v11;
  sub_21C7448E0(v11);
  sub_21CB82824();
  v33 = *(v102 + 8);
  v102 += 8;
  v34 = v93;
  v33(v11, v93);
  v35 = v89;
  sub_21CB852E4();
  v36 = v82;
  v37 = v75;
  sub_21CB841E4();
  (*(v98 + 8))(v35, v37);
  v38 = v72;
  v39 = v78;
  v40 = v70;
  v41 = OpaqueTypeConformance2;
  v42 = v69;
  sub_21CB84824();
  v43 = v36;
  v44 = v39;
  (*(v95 + 8))(v43, v39);
  v45 = v68;
  sub_21C7448E0(v68);
  sub_21CB82824();
  v33(v45, v34);
  v106 = v44;
  v107 = v40;
  v108 = v41;
  v109 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v73;
  v48 = OpaqueTypeMetadata2;
  sub_21CB849D4();
  (*(v92 + 8))(v38, v48);
  if (v71)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = 1.0;
  }

  v50 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
  v111[6] = v46;
  v111[7] = v50;
  v51 = v88;
  WitnessTable = swift_getWitnessTable();
  v53 = v79;
  sub_21CB84854();
  (*(v94 + 8))(v47, v51);
  v111[4] = WitnessTable;
  v111[5] = MEMORY[0x277CDF900];
  v54 = v83;
  v55 = swift_getWitnessTable();
  v56 = v74;
  sub_21CB848D4();
  (*(v97 + 8))(v53, v54);
  v57 = sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
  v111[2] = v55;
  v111[3] = v57;
  v58 = v96;
  v102 = swift_getWitnessTable();
  v59 = v90;
  sub_21C72BE10(v56, v58, v102);
  v60 = v99;
  v61 = *(v99 + 8);
  v61(v56, v58);
  v62 = v85;
  v63 = v84;
  v106 = v85;
  v107 = v84;
  v64 = v86 & 1;
  LOBYTE(v108) = v86 & 1;
  v109 = v87;
  v110 = v49;
  v111[0] = &v106;
  v65 = v100;
  (*(v60 + 16))(v100, v59, v58);
  v111[1] = v65;
  sub_21C79B058(v62, v63, v64);

  v105[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF980, &qword_21CBAC950);
  v105[1] = v58;
  v103 = sub_21C8B68B4();
  v104 = v102;
  sub_21C74A55C(v111, 2uLL, v105);
  sub_21C74A72C(v62, v63, v64);

  v61(v59, v58);
  v61(v65, v58);
  sub_21C74A72C(v106, v107, v108);
}

uint64_t sub_21C8B6500@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C8B6688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C8B66F8()
{
  result = qword_27CDEF998;
  if (!qword_27CDEF998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
    sub_21C8B677C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF998);
  }

  return result;
}

unint64_t sub_21C8B677C()
{
  result = qword_27CDEF9A0;
  if (!qword_27CDEF9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF9A8, &unk_21CBAC970);
    sub_21C7E397C();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF9A0);
  }

  return result;
}

uint64_t sub_21C8B6834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C8B68B4()
{
  result = qword_27CDEF9B0;
  if (!qword_27CDEF9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF9B0);
  }

  return result;
}

uint64_t sub_21C8B6994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PMAppOnboardingView(0);
  sub_21C6EDBAC(v1 + *(v10 + 20), v9, &qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82054();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PMAppOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_21CB82F84();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB82054();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8B6994(v12);
  sub_21CA882A0(v12, v32);
  (*(v10 + 8))(v12, v9);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = *v1;
  v20 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v21 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C79C1F4(v19, v20, 0);
    (*(v27 + 8))(v4, v28);
    v19 = v30;
    v20 = v31;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  v23 = v32[2];
  *(v15 + 24) = v33;
  v24 = v32[0];
  *(v15 + 1) = v32[1];
  *(v15 + 2) = v23;
  *v15 = v24;
  *(v15 + 7) = v16;
  *(v15 + 8) = v18;
  *(v15 + 9) = sub_21C8B6F70;
  *(v15 + 10) = v22;
  v15[88] = 0;
  *(v15 + 6) = 0u;
  *(v15 + 7) = 0u;
  v15[128] = 0;
  v25 = *(v13 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  sub_21C8B6F98();
  sub_21CB84674();
  return sub_21C85BC4C(v15);
}

unint64_t sub_21C8B6F98()
{
  result = qword_27CDEE360;
  if (!qword_27CDEE360)
  {
    type metadata accessor for PMOnboardingView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE360);
  }

  return result;
}

uint64_t type metadata accessor for PMAppOnboardingView(uint64_t a1)
{
  result = qword_27CDEF9B8;
  if (!qword_27CDEF9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C8B7080(uint64_t a1)
{
  sub_21C8B7104(319);
  if (v1 <= 0x3F)
  {
    sub_21C735A14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C8B7104(uint64_t a1)
{
  if (!qword_27CDEF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC858, &qword_21CBB1080);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEF9C8);
    }
  }
}

uint64_t sub_21C8B71AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v50 = sub_21CB81024();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF9F8, &qword_21CBACB10);
  MEMORY[0x28223BE20](v41);
  v6 = &v40 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA00, &qword_21CBACB18);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v40 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA08, &qword_21CBACB20);
  *&v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA10, &qword_21CBACB28);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v40 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA18, &qword_21CBACB30) - 8;
  MEMORY[0x28223BE20](v49);
  v46 = &v40 - v12;
  sub_21C8B7A18(v1, v6);
  v57 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA20, &qword_21CBACB38);
  v14 = sub_21C8C6D40(&qword_27CDEFA28, &qword_27CDEF9F8, &qword_21CBACB10, sub_21C8C3730);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB20, &qword_21CBACBC8);
  v16 = sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8, MEMORY[0x277CDDF68]);
  *&v58 = v15;
  *(&v58 + 1) = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v41;
  sub_21CB84894();
  sub_21C6EA794(v6, &qword_27CDEF9F8, &qword_21CBACB10);
  v42 = *(v1 + 8);
  sub_21CB81DB4();

  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  (*(v48 + 8))(v4, v50);
  v61 = v19;
  v62 = v21;
  *&v58 = v18;
  *(&v58 + 1) = v13;
  v59 = v14;
  v60 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_21C71F3FC();
  v24 = MEMORY[0x277D837D0];
  v25 = v43;
  v26 = v44;
  sub_21CB842F4();

  (*(v45 + 8))(v8, v26);
  sub_21CB85184();
  v56 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB30, &qword_21CBACC18);
  *&v58 = v26;
  *(&v58 + 1) = v24;
  v59 = v22;
  v60 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v51;
  *&v58 = v51;
  *(&v58 + 1) = v24;
  v59 = v27;
  v60 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = v47;
  sub_21CB84974();
  (*(v54 + 8))(v25, v28);
  v30 = v46;
  (*(v52 + 32))(v46, v29, v53);
  *(v30 + *(v49 + 44)) = 1;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
  sub_21CB82684();
  sub_21CB82694();

  v54 = v58;
  v31 = v59;
  v32 = v60;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB38, &qword_21CBACC20);
  v34 = v55;
  v35 = (v55 + *(v33 + 36));
  *v35 = swift_getKeyPath(byte_21CBACC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for PMContentListSearchable(0);
  v37 = *(v36 + 20);
  *(v35 + v37) = swift_getKeyPath(byte_21CBACC58);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C720BCC(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB821F4();
  v38 = v35 + *(v36 + 28);
  *v38 = v54;
  *(v38 + 2) = v31;
  *(v38 + 3) = v32;
  return sub_21C716934(v30, v34, &qword_27CDEFA18, &qword_21CBACB30);
}

uint64_t sub_21C8B7A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB18, &unk_21CBACBB8);
  MEMORY[0x28223BE20](v56);
  v51 = &v47 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBE0, &qword_21CBACE70);
  MEMORY[0x28223BE20](v52);
  v54 = &v47 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA58, &qword_21CBACB50);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA48, &qword_21CBACB48);
  MEMORY[0x28223BE20](v61);
  v55 = &v47 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBE8, &qword_21CBACE78);
  MEMORY[0x28223BE20](v58);
  v60 = &v47 - v7;
  v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PMEmptyStateDetailView(0);
  MEMORY[0x28223BE20](v59);
  v48 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21CB83834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v57 = a1;
  sub_21C728D50(v26);
  (*(v12 + 104))(v23, *MEMORY[0x277CE0558], v11);
  (*(v12 + 56))(v23, 0, 1, v11);
  v27 = *(v15 + 56);
  sub_21C6EDBAC(v26, v17, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v23, &v17[v27], &qword_27CDEC390, &qword_21CBA40E0);
  v28 = *(v12 + 48);
  if (v28(v17, 1, v11) != 1)
  {
    sub_21C6EDBAC(v17, v20, &qword_27CDEC390, &qword_21CBA40E0);
    if (v28(&v17[v27], 1, v11) != 1)
    {
      v29 = v49;
      (*(v12 + 32))(v49, &v17[v27], v11);
      sub_21C720BCC(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = sub_21CB85574();
      v31 = *(v12 + 8);
      v31(v29, v11);
      sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
      v31(v20, v11);
      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v12 + 8))(v20, v11);
LABEL_6:
    sub_21C6EA794(v17, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_10;
  }

  sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
  if (v28(&v17[v27], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  if (sub_21CAE917C())
  {
    v32 = sub_21CB85C44();
    v33 = v47;
    (*(*(v32 - 8) + 56))(v47, 6, 6, v32);
    v34 = v48;
    sub_21C9E14F8(v33, 1, v48);
    sub_21C8C5D40(v34, v60, type metadata accessor for PMEmptyStateDetailView);
    swift_storeEnumTagMultiPayload();
    sub_21C720BCC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21C8C37EC();
    sub_21CB83494();
    return sub_21C719240(v34, type metadata accessor for PMEmptyStateDetailView);
  }

LABEL_10:
  if (sub_21CAE917C())
  {
    v36 = v50;
    sub_21C8B83C4(v50);
    v37 = &qword_27CDEFA58;
    v38 = &qword_21CBACB50;
    sub_21C6EDBAC(v36, v54, &qword_27CDEFA58, &qword_21CBACB50);
    swift_storeEnumTagMultiPayload();
    sub_21C8C3878();
    sub_21C8C3E9C();
    v39 = v55;
    sub_21CB83494();
    v40 = v36;
  }

  else
  {
    v41 = v51;
    sub_21C8B83C4(v51);
    v42 = sub_21CB85214();
    v44 = v43;
    v45 = v41 + *(v56 + 36);
    sub_21C8B9414(v45);
    v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
    *v46 = v42;
    v46[1] = v44;
    v37 = &qword_27CDEFB18;
    v38 = &unk_21CBACBB8;
    sub_21C6EDBAC(v41, v54, &qword_27CDEFB18, &unk_21CBACBB8);
    swift_storeEnumTagMultiPayload();
    sub_21C8C3878();
    sub_21C8C3E9C();
    v39 = v55;
    sub_21CB83494();
    v40 = v41;
  }

  sub_21C6EA794(v40, v37, v38);
  sub_21C6EDBAC(v39, v60, &qword_27CDEFA48, &qword_21CBACB48);
  swift_storeEnumTagMultiPayload();
  sub_21C720BCC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
  sub_21C8C37EC();
  sub_21CB83494();
  return sub_21C6EA794(v39, &qword_27CDEFA48, &qword_21CBACB48);
}

double sub_21C8B83C4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  *&v90 = sub_21CB85114();
  *&v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v71 - v5;
  v6 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v97 = *(v6 - 8);
  v105 = *(v97 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAB8, &qword_21CBACB90);
  v101 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v73 = &v71 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAA8, &qword_21CBACB80);
  v79 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v100 = (&v71 - v10);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA98, &qword_21CBACB78);
  MEMORY[0x28223BE20](v78);
  v76 = &v71 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA90, &qword_21CBACB70);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v71 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBF0, &qword_21CBACE80);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v80 = &v71 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA88, &qword_21CBACB68);
  MEMORY[0x28223BE20](v84);
  *&v92 = &v71 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA78, &qword_21CBACB60);
  MEMORY[0x28223BE20](v91);
  v94 = &v71 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA68, &qword_21CBACB58);
  MEMORY[0x28223BE20](v93);
  v95 = &v71 - v16;
  v17 = v1[1];
  v103 = *v1;
  *&v104 = type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  v18 = sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
  v74 = v17;
  v75 = v18;
  sub_21CB82684();
  sub_21CB82694();

  v106 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBF8, &qword_21CBACE88);
  sub_21C6EADEC(&qword_27CDEFC00, &qword_27CDEFBF8, &qword_21CBACE88, MEMORY[0x277CE14C0]);
  sub_21CB83F14();
  LOBYTE(v107) = sub_21CAE917C();
  sub_21C8C5D40(v1, v8, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v19 = *(v97 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_21C8C5E30(v8, v21 + v20, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v72 = sub_21C6EADEC(&qword_27CDEFAC0, &qword_27CDEFAB8, &qword_21CBACB90, MEMORY[0x277CDE5A0]);
  v22 = v99;
  v23 = v73;
  sub_21CB84934();

  (*(v101 + 8))(v23, v22);
  sub_21C8C5D40(v2, v8, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v24 = swift_allocObject();
  sub_21C8C5E30(v8, v24 + v20, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5D40(v2, v8, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v101 = v19;
  v25 = swift_allocObject();
  v97 = v20;
  sub_21C8C5E30(v8, v25 + v20, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAB0, &qword_21CBACB88);
  *&v107 = v99;
  *(&v107 + 1) = MEMORY[0x277D839B0];
  *&v108 = v72;
  *(&v108 + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_21C8C525C(&qword_27CDEFAC8, &qword_27CDEFAB0, &qword_21CBACB88, sub_21C8C3D14);
  v26 = v76;
  v27 = v77;
  v28 = v100;
  sub_21CB84144();

  (*(v79 + 8))(v28, v27);
  KeyPath = swift_getKeyPath(byte_21CBACE90);
  v30 = v78;
  v31 = (v26 + *(v78 + 36));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBACC80);
  sub_21CB82694();

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v33 - 8) + 56))(v31 + v32, 0, 1, v33);
  *v31 = KeyPath;
  swift_getKeyPath(byte_21CBACC80);
  swift_getKeyPath(byte_21CBACCA8);
  v34 = v85;
  sub_21CB81DB4();

  v35 = v89;
  v36 = v88;
  v37 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277CDF0D0], v90);
  sub_21CB850F4();
  v38 = *(v35 + 8);
  v39 = v80;
  v38(v36, v37);
  v38(v34, v37);
  v40 = sub_21C8C3B28();
  v41 = v81;
  sub_21CB84674();
  sub_21C6EA794(v26, &qword_27CDEFA98, &qword_21CBACB78);
  *&v107 = v30;
  *(&v107 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v82;
  sub_21CB845F4();
  (*(v83 + 8))(v41, v42);
  v43 = sub_21CAEA250();
  LOBYTE(v41) = sub_21CAEF570(v43);

  v44 = 0;
  v45 = 0;
  if (v41)
  {
    v46 = v98;
    sub_21C8C5D40(v102, v98, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v47 = v97;
    v45 = swift_allocObject();
    sub_21C8C5E30(v46, v45 + v47, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v44 = sub_21C8C6E8C;
  }

  v48 = v92;
  (*(v86 + 32))(v92, v39, v87);
  v49 = (v48 + *(v84 + 36));
  *v49 = v44;
  v49[1] = v45;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBACDC0);
  sub_21CB82694();

  v51 = v113;
  v52 = v114;
  v53 = v115;
  *&v54 = MEMORY[0x28223BE20](v50).n128_u64[0];
  swift_getKeyPath(byte_21CBACDE8, v54);
  v110 = v51;
  v111 = v52;
  v112 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v90 = v107;
  v89 = v108;
  v55 = v109;

  v100 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
  v56 = v98;
  sub_21C8C5D40(v102, v98, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v57 = v97;
  v58 = swift_allocObject();
  v99 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
  sub_21C8C5E30(v56, v58 + v57, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v59 = v48;
  v60 = v94;
  sub_21C716934(v59, v94, &qword_27CDEFA88, &qword_21CBACB68);
  v61 = v60 + *(v91 + 36);
  v62 = v89;
  *v61 = v90;
  *(v61 + 16) = v62;
  *(v61 + 32) = v55;
  *(v61 + 40) = &unk_21CBACED0;
  *(v61 + 48) = v58;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBACED8);
  sub_21CB82694();

  v92 = v107;
  v63 = v108;
  v64 = v95;
  sub_21C716934(v60, v95, &qword_27CDEFA78, &qword_21CBACB60);
  v65 = v64 + *(v93 + 36);
  *v65 = v92;
  *(v65 + 16) = v63;
  sub_21CB82684();
  sub_21CB82694();

  v104 = v107;
  v66 = v108;
  sub_21C8C5D40(v102, v56, v100);
  v67 = swift_allocObject();
  sub_21C8C5E30(v56, v67 + v57, v99);
  v68 = v96;
  sub_21C716934(v64, v96, &qword_27CDEFA68, &qword_21CBACB58);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA58, &qword_21CBACB50) + 36);
  result = *&v104;
  *v69 = v104;
  *(v69 + 16) = v66;
  *(v69 + 24) = sub_21C8C56E4;
  *(v69 + 32) = v67;
  return result;
}

uint64_t sub_21C8B9414@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v10 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = sub_21CAE9588()[2];

  if (v6)
  {
    v7 = *(v10 + 56);

    return v7(a2, 1, 1, v3);
  }

  else
  {
    sub_21CB81DB4();

    sub_21CB83784();

    (*(v10 + 32))(a2, v5, v3);
    return (*(v10 + 56))(a2, 0, 1, v3);
  }
}

uint64_t sub_21C8B95CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB20, &qword_21CBACBC8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21C8B96F0(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C8B96F0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB40, &qword_21CBACD10);
  MEMORY[0x28223BE20](v64);
  v63 = &v51 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB48, &qword_21CBACD18);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB50, &qword_21CBACD20);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB58, &qword_21CBACD28);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v51 - v8;
  v9 = sub_21CB83604();
  MEMORY[0x28223BE20](v9 - 8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB60, &qword_21CBACD30);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v51 - v10;
  v11 = sub_21CB85114();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB68, &qword_21CBACD38);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v66 = &v51 - v23;
  swift_getKeyPath(byte_21CBACC80, v22);
  swift_getKeyPath(byte_21CBACCA8);
  sub_21CB81DB4();

  (*(v12 + 104))(v14, *MEMORY[0x277CDF0D0], v11);
  v24 = sub_21CB850F4();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v25(v17, v11);
  if (v24)
  {
    v26 = sub_21CB83594();
    MEMORY[0x28223BE20](v26);
    *(&v51 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C87C0A0();
    v27 = v51;
    sub_21CB82194();
    v28 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30, MEMORY[0x277CDD7A8]);
    v30 = v53;
    v29 = v54;
    MEMORY[0x21CF131E0](v27, v54, v28);
    v32 = v55;
    v31 = v56;
    (*(v55 + 16))(v20, v30, v56);
    (*(v32 + 56))(v20, 0, 1, v31);
    v67 = v29;
    v68 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v20, v31, OpaqueTypeConformance2);
    sub_21C6EA794(v20, &qword_27CDEFB68, &qword_21CBACD38);
    (*(v32 + 8))(v30, v31);
    (*(v52 + 8))(v27, v29);
  }

  else
  {
    v34 = v56;
    (*(v55 + 56))(v20, 1, 1, v56);
    v35 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30, MEMORY[0x277CDD7A8]);
    v67 = v54;
    v68 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v20, v34, v36);
    sub_21C6EA794(v20, &qword_27CDEFB68, &qword_21CBACD38);
  }

  v37 = sub_21CB835A4();
  MEMORY[0x28223BE20](v37);
  *(&v51 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB78, &unk_21CBACD40);
  sub_21C8C3F64();
  v38 = v57;
  sub_21CB82194();
  v39 = sub_21CB835F4();
  MEMORY[0x28223BE20](v39);
  *(&v51 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB88, &qword_21CBACD50);
  sub_21C6EADEC(&qword_27CDEFB90, &qword_27CDEFB88, &qword_21CBACD50, MEMORY[0x277CE14C0]);
  v40 = v60;
  sub_21CB82AA4();
  v41 = v63;
  v42 = *(v64 + 48);
  v43 = *(v64 + 64);
  v44 = v66;
  sub_21C6EDBAC(v66, v63, &qword_27CDEFB68, &qword_21CBACD38);
  v46 = v58;
  v45 = v59;
  v47 = v38;
  (*(v58 + 16))(v41 + v42, v38, v59);
  v49 = v61;
  v48 = v62;
  (*(v61 + 16))(v41 + v43, v40, v62);
  sub_21CB83394();
  (*(v49 + 8))(v40, v48);
  (*(v46 + 8))(v47, v45);
  return sub_21C6EA794(v44, &qword_27CDEFB68, &qword_21CBACD38);
}

uint64_t sub_21C8B9FD8()
{
  sub_21C8BA1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA08, &qword_21CBACB20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA00, &qword_21CBACB18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF9F8, &qword_21CBACB10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA20, &qword_21CBACB38);
  sub_21C8C6D40(&qword_27CDEFA28, &qword_27CDEF9F8, &qword_21CBACB10, sub_21C8C3730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB20, &qword_21CBACBC8);
  sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21C8BA1C0()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - v5;
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - v7;
  MEMORY[0x28223BE20](v8);
  v58 = &v52 - v9;
  MEMORY[0x28223BE20](v10);
  v60 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_21CB85114();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v52 - v21;
  v23 = *(v0 + 8);
  swift_getKeyPath(byte_21CBACC80, v20);
  swift_getKeyPath(byte_21CBACCA8);
  v59 = v23;
  sub_21CB81DB4();

  (*(v16 + 104))(v18, *MEMORY[0x277CDF0D0], v15);
  v24 = sub_21CB850F4();
  v25 = *(v16 + 8);
  v25(v18, v15);
  v25(v22, v15);
  v54 = v14;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v53 = sub_21CB81034();
  if (v24)
  {
    v26 = *(v53 - 8);
    v52 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v27 = swift_allocObject();
    v28 = v58;
    sub_21CB81014();
    v29 = v57;
    sub_21CB81014();
    v30 = v56;
    sub_21CB81014();
    v31 = v55;
    sub_21CB81014();
    v32 = v52;
    sub_21CB80FE4();
    v33 = *(v2 + 8);
    v33(v31, v1);
    v33(v30, v1);
    v33(v29, v1);
    v33(v28, v1);
    swift_setDeallocating();
    (*(v26 + 8))(v27 + v32, v53);
    swift_deallocClassInstance();
    v34 = v54;
    sub_21CB81004();
    v33(v60, v1);
    v33(v34, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21CBA0690;
    sub_21CB81DB4();

    v36 = *(v61 + 16);

    v37 = MEMORY[0x277D83C10];
    *(v35 + 56) = MEMORY[0x277D83B88];
    *(v35 + 64) = v37;
    *(v35 + 32) = v36;
  }

  else
  {
    v38 = *(v53 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    v41 = v58;
    sub_21CB81014();
    v42 = v57;
    sub_21CB81014();
    v43 = v56;
    sub_21CB81014();
    v44 = v55;
    sub_21CB81014();
    sub_21CB80FE4();
    v45 = *(v2 + 8);
    v45(v44, v1);
    v45(v43, v1);
    v45(v42, v1);
    v45(v41, v1);
    swift_setDeallocating();
    (*(v38 + 8))(v40 + v39, v53);
    swift_deallocClassInstance();
    v46 = v54;
    sub_21CB81004();
    v45(v60, v1);
    v45(v46, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_21CBA0690;
    v48 = sub_21CAE9588()[2];

    v49 = MEMORY[0x277D83C10];
    *(v47 + 56) = MEMORY[0x277D83B88];
    *(v47 + 64) = v49;
    *(v47 + 32) = v48;
  }

  v50 = sub_21CB85594();

  return v50;
}

uint64_t sub_21C8BA9F0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC70, &qword_21CBACFD8);
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v30 - v7;
  v8 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  *&v10 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  sub_21CB81DB4();

  v11 = v41;

  v12 = HIBYTE(*(&v11 + 1)) & 0xFLL;
  if ((*(&v11 + 1) & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 || sub_21CAE917C())
  {
    v42 = 0u;
    memset(v43, 0, 25);
    v41 = 0u;
  }

  else
  {
    sub_21C8C5D40(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v28 = swift_allocObject();
    sub_21C8C5E30(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    LOBYTE(v39[0]) = 1;
    LOBYTE(v37[0]) = 1;
    LOBYTE(v34) = 0;
    *&v41 = 0;
    BYTE8(v41) = 1;
    *&v42 = 0;
    WORD4(v42) = 1;
    *&v43[0] = sub_21C8C5C80;
    *(&v43[0] + 1) = v28;
    *&v43[1] = KeyPath;
    BYTE8(v43[1]) = 0;
  }

  v13 = sub_21CAE9C44();
  swift_getKeyPath(byte_21CBACFE0);
  swift_getKeyPath(byte_21CBAD008);
  sub_21CB81DB4();

  sub_21C8C5D40(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v14 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v15 = swift_allocObject();
  sub_21C8C5E30(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  *(v15 + v14 + v9) = (v13 & 1) == 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21C8C5A34;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC78, &qword_21CBC7920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC80, &unk_21CBAD050);
  sub_21C6EADEC(&qword_27CDEFC88, &qword_27CDEFC78, &qword_21CBC7920, MEMORY[0x277D83980]);
  sub_21C720BCC(&qword_27CDEFC90, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section, &unk_21CBC7CA8);
  sub_21C8C5B38();
  v17 = v30;
  sub_21CB84FD4();
  v34 = v41;
  v35 = v42;
  v36[0] = v43[0];
  *(v36 + 9) = *(v43 + 9);
  v18 = *(v4 + 16);
  v20 = v31;
  v19 = v32;
  v18(v31, v17, v32);
  v21 = v35;
  v37[0] = v34;
  v37[1] = v35;
  v22 = v36[0];
  v38[0] = v36[0];
  v23 = *(v36 + 9);
  *(v38 + 9) = *(v36 + 9);
  *a2 = v34;
  a2[1] = v21;
  a2[2] = v22;
  *(a2 + 41) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCC0, &qword_21CBAD070);
  v18(a2 + *(v24 + 48), v20, v19);
  sub_21C6EDBAC(v37, v39, &qword_27CDEFCC8, &qword_21CBAD078);
  sub_21C6EA794(&v41, &qword_27CDEFCC8, &qword_21CBAD078);
  v25 = *(v4 + 8);
  v25(v17, v19);
  v25(v20, v19);
  v39[0] = v34;
  v39[1] = v35;
  v40[0] = v36[0];
  *(v40 + 9) = *(v36 + 9);
  return sub_21C6EA794(v39, &qword_27CDEFCC8, &qword_21CBAD078);
}

uint64_t sub_21C8BAFB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v39 - v2;
  v39 = type metadata accessor for PMSharingGroup(0);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
  sub_21C8C5D40(*(v0 + 8) + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, v16, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v42 = v8;
  v17 = *(v8 + 48);
  v40 = v7;
  if (v17(v16, 2, v7))
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21CBA0690;
    v44 = v43;
    sub_21C8C5CE4();
    v19 = sub_21CB85EE4();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_21C7C0050();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v22 = sub_21CB85594();
  }

  else
  {
    v23 = v41;
    (*(v42 + 32))(v41, v16, v40);
    sub_21CA1D444(v23, v3);
    v24 = v39;
    v25 = (v11 + 8);
    if ((*(v4 + 48))(v3, 1, v39) == 1)
    {
      sub_21C6EA794(v3, &qword_27CDF7670, &unk_21CBAA8F0);
      sub_21CB81014();
      sub_21CB81004();
      (*v25)(v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21CBA0690;
      v44 = v43;
      sub_21C8C5CE4();
      v27 = sub_21CB85EE4();
      v29 = v28;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = sub_21C7C0050();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      v22 = sub_21CB85594();
    }

    else
    {
      sub_21C8C5E30(v3, v6, type metadata accessor for PMSharingGroup);
      sub_21CB81014();
      sub_21CB81004();
      (*v25)(v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21CBA15B0;
      v31 = &v6[*(v24 + 20)];
      v33 = *v31;
      v32 = *(v31 + 1);
      v34 = MEMORY[0x277D837D0];
      *(v30 + 56) = MEMORY[0x277D837D0];
      v35 = sub_21C7C0050();
      *(v30 + 64) = v35;
      *(v30 + 32) = v33;
      *(v30 + 40) = v32;
      v44 = v43;
      sub_21C8C5CE4();

      v36 = sub_21CB85EE4();
      *(v30 + 96) = v34;
      *(v30 + 104) = v35;
      *(v30 + 72) = v36;
      *(v30 + 80) = v37;
      v22 = sub_21CB85594();

      sub_21C719240(v6, type metadata accessor for PMSharingGroup);
    }

    (*(v42 + 8))(v41, v40);
  }

  return v22;
}

uint64_t sub_21C8BB618(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for PMSharingGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v26[-v14];
  v27 = a2;
  v28 = a3;
  if ((a4 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_21C8C5D40(a1, &v26[-v14], type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v16 = (*(v9 + 48))(v15, 2, v8);
  if (!v16)
  {
    sub_21C8C5E30(v15, v11, type metadata accessor for PMSharingGroup);
    v21 = &v11[*(v8 + 20)];
    v23 = *v21;
    v22 = v21[1];

    sub_21C719240(v11, type metadata accessor for PMSharingGroup);
LABEL_9:
    v29 = v23;
    v30 = v22;
    sub_21C71F3FC();
    v17 = sub_21CB84054();
    v19 = v24 & 1;
    goto LABEL_10;
  }

  if (v16 != 1)
  {
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v23 = qword_27CE18748;
    v22 = qword_27CE18750;

    goto LABEL_9;
  }

LABEL_4:
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_10:
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCA8, &qword_21CBAD060);
  sub_21C87DED8();
  sub_21C8C5BD0();
  return sub_21CB85034();
}

uint64_t sub_21C8BB8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_21C8C5D40(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C8C5E30(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppRecentlyDeletedAccountsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCB8, &qword_21CBAD068);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDEFCB0, &qword_27CDEFCB8, &qword_21CBAD068, MEMORY[0x277CDD938]);
  sub_21C720BCC(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21C8BBAF8(void *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCD8, &qword_21CBAD0B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFCE0, &qword_21CBAD0C8);
  sub_21C7EC1C8();
  sub_21C6EADEC(&qword_27CDEFCE8, &qword_27CDEFCE0, &qword_21CBAD0C8, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  return sub_21CB82614();
}

uint64_t sub_21C8BBC44@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_21CB81DB4();

  sub_21C8BBCE8(a2, v6, v7, x8_0);
}

uint64_t sub_21C8BBCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a4;
  v6 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  sub_21C8C5D40(a1, v8, type metadata accessor for PMAccount);
  v12 = sub_21CB837E4();
  v13 = &v8[v6[7]];
  v14 = MEMORY[0x277CE04E8];
  *(v13 + 3) = MEMORY[0x277CE04F8];
  *(v13 + 4) = v14;
  *v13 = v12;
  v15 = v6[9];
  KeyPath = swift_getKeyPath(byte_21CBAD0D0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v17 = &v8[v15];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v39);

  type metadata accessor for PMGroupsStore(0);
  sub_21C720BCC(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v18 = sub_21CB82674();
  v20 = v19;

  *v17 = v18;
  v17[1] = v20;
  v21 = &v8[v6[10]];
  *v21 = swift_getKeyPath(byte_21CBAD0F0);
  v21[8] = 0;
  v22 = &v8[v6[11]];
  *v22 = swift_getKeyPath(byte_21CBAD118);
  v22[8] = 0;
  v23 = v6[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v24 = v6[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v25 = v6[14];
  *&v8[v25] = swift_getKeyPath(byte_21CBAD1B8);
  v26 = &v8[v6[5]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v8[v6[6]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v8[v6[8]];
  *v28 = v37;
  v28[1] = a3;
  v29 = objc_opt_self();

  [v29 isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  v30 = sub_21C8C5E30(v8, v11, type metadata accessor for PMAccountRow);
  v31 = &v11[*(v9 + 36)];
  v32 = v44;
  *(v31 + 4) = v43;
  *(v31 + 5) = v32;
  *(v31 + 6) = v45;
  v33 = v40;
  *v31 = v39;
  *(v31 + 1) = v33;
  v34 = v42;
  *(v31 + 2) = v41;
  *(v31 + 3) = v34;
  MEMORY[0x28223BE20](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCE0, &qword_21CBAD0C8);
  sub_21C7EC1C8();
  sub_21C6EADEC(&qword_27CDEFCE8, &qword_27CDEFCE0, &qword_21CBAD0C8, MEMORY[0x277CE14C0]);
  sub_21CB84204();
  return sub_21C6EA794(v11, &qword_27CDEBC70, &qword_21CBAD0C0);
}

uint64_t sub_21C8BC17C()
{
  v0 = sub_21CB823B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21CAE917C();
  if (result)
  {
    type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
    sub_21C95B2C8(v3);
    sub_21CB823A4();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_21C8BC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAF8, &unk_21CBACBA8);
  MEMORY[0x28223BE20](v30);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC08, &qword_21CBACF28);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAE8, &qword_21CBACBA0);
  MEMORY[0x28223BE20](v29);
  v9 = &v28 - v8;
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = sub_21CAEA9F8(a1);
  v18 = v17[2];
  if (v18)
  {
    if (v18 == 1)
    {
      sub_21C8C5D40(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v13, type metadata accessor for PMAccount);

      sub_21C8C5E30(v13, v16, type metadata accessor for PMAccount);
      sub_21C8BD93C(v16, v9);
      sub_21C6EDBAC(v9, v7, &qword_27CDEFAE8, &qword_21CBACBA0);
      swift_storeEnumTagMultiPayload();
      v19 = MEMORY[0x277CE14C0];
      sub_21C6EADEC(&qword_27CDEFAE0, &qword_27CDEFAE8, &qword_21CBACBA0, MEMORY[0x277CE14C0]);
      sub_21C6EADEC(&qword_27CDEFAF0, &qword_27CDEFAF8, &unk_21CBACBA8, v19);
      v20 = v31;
      sub_21CB83494();
      sub_21C6EA794(v9, &qword_27CDEFAE8, &qword_21CBACBA0);
      sub_21C719240(v16, type metadata accessor for PMAccount);
    }

    else
    {
      sub_21C8BE0BC(v17, v4);

      sub_21C6EDBAC(v4, v7, &qword_27CDEFAF8, &unk_21CBACBA8);
      swift_storeEnumTagMultiPayload();
      v26 = MEMORY[0x277CE14C0];
      sub_21C6EADEC(&qword_27CDEFAE0, &qword_27CDEFAE8, &qword_21CBACBA0, MEMORY[0x277CE14C0]);
      sub_21C6EADEC(&qword_27CDEFAF0, &qword_27CDEFAF8, &unk_21CBACBA8, v26);
      v20 = v31;
      sub_21CB83494();
      sub_21C6EA794(v4, &qword_27CDEFAF8, &unk_21CBACBA8);
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAD8, &qword_21CBACB98);
    return (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
  }

  else
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAD8, &qword_21CBACB98);
    v22 = *(*(v21 - 8) + 56);
    v23 = v21;
    v24 = v31;

    return v22(v24, 1, 1, v23);
  }
}

uint64_t sub_21C8BC730(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v30 = sub_21CB82F84();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  MEMORY[0x28223BE20](v36);
  v6 = &v26 - v5;
  v33 = sub_21CB82A34();
  MEMORY[0x28223BE20](v33);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v27 = (v7 + 32);
  v28 = (v3 + 8);
  v31 = (v7 + 8);

  v15 = 0;
  v35 = v6;
  while (v12)
  {
LABEL_11:
    v22 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v23 = v22[1];
    v37 = *v22;
    v24 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
    sub_21C6EDBAC(v34 + *(v24 + 28), v6, &qword_27CDEC0D0, &qword_21CBA3BF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v32;
      v25 = v6;
      v20 = v33;
      (*v27)(v32, v25, v33);
    }

    else
    {

      sub_21CB85B04();
      v16 = a1;
      v17 = sub_21CB83C94();
      sub_21CB81C14();

      a1 = v16;
      v18 = v29;
      sub_21CB82F74();
      v19 = v32;
      swift_getAtKeyPath();

      (*v28)(v18, v30);
      v20 = v33;
    }

    v12 &= v12 - 1;
    v38 = v37;
    v39 = v23;
    sub_21CB82A14();
    (*v31)(v19, v20);

    v6 = v35;
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v13)
    {
    }

    v12 = *(v9 + 8 * v21);
    ++v15;
    if (v12)
    {
      v15 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C8BCB08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8BCBA0, v4, v3);
}

uint64_t sub_21C8BCBA0()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_21CAEA660(v2);
  *(swift_task_alloc() + 16) = v1;
  sub_21CB85254();
  sub_21CB82524();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C8BCC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v7);

  sub_21C833310(a1, sub_21C8C5780, v3);
}

uint64_t sub_21C8BCD5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v22 = *(v3 - 8);
  v4 = v22;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC178, &unk_21CBA3D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21C8BCFB8(a1, &v22 - v14);
  sub_21C8BD574(a1, v9);
  sub_21C6EDBAC(v15, v12, &qword_27CDEC178, &unk_21CBA3D30);
  v16 = *(v4 + 16);
  v17 = v3;
  v16(v6, v9, v3);
  v18 = v23;
  sub_21C6EDBAC(v12, v23, &qword_27CDEC178, &unk_21CBA3D30);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCF0, &unk_21CBAD1E0) + 48);
  v16(v19, v6, v17);
  v20 = *(v22 + 8);
  v20(v9, v17);
  sub_21C6EA794(v15, &qword_27CDEC178, &unk_21CBA3D30);
  v20(v6, v17);
  return sub_21C6EA794(v12, &qword_27CDEC178, &unk_21CBA3D30);
}

uint64_t sub_21C8BCFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v14 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v42 - v15;
  v16 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v4 + 32);
  v47 = a1;
  sub_21C8C5D40(a1 + v19, v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719240(v18, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v40 = 1;
    v38 = v50;
    v39 = v51;
    return (*(v14 + 56))(v39, v40, 1, v38);
  }

  v20 = *v18;
  v21 = [v20 isCurrentUserOriginalContributor];

  if (!v21)
  {
    goto LABEL_5;
  }

  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v24 = v23;
  v25 = *(v42 + 8);
  v25(v10, v8);
  v25(v13, v8);
  v26 = v44;
  sub_21C8C5D40(v45, v44, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v27 = v49;
  sub_21C8C5D40(v47, v49, type metadata accessor for PMAccount);
  v28 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v29 = (v7 + *(v46 + 80) + v28) & ~*(v46 + 80);
  v30 = swift_allocObject();
  sub_21C8C5E30(v26, v30 + v28, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v31 = sub_21C8C5E30(v27, v30 + v29, type metadata accessor for PMAccount);
  v52[0] = v22;
  v52[1] = v24;
  MEMORY[0x28223BE20](v31);
  *(&v42 - 4) = v52;
  *(&v42 - 3) = 0x69662E6873617274;
  *(&v42 - 2) = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v32 = v48;
  sub_21CB84DA4();

  v33 = sub_21CB84A64();
  KeyPath = swift_getKeyPath(byte_21CBAD1F0);
  v35 = v50;
  v36 = (v32 + *(v50 + 36));
  *v36 = KeyPath;
  v36[1] = v33;
  v37 = v51;
  sub_21C716934(v32, v51, &qword_27CDEC198, &qword_21CBAF100);
  v38 = v35;
  v39 = v37;
  v40 = 0;
  return (*(v14 + 56))(v39, v40, 1, v38);
}

uint64_t sub_21C8BD574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v2 = type metadata accessor for PMAccount(0);
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_21CB81014();
  sub_21CB81014();
  v21 = sub_21CB80FF4();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
  sub_21C8C5D40(v23, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5D40(v25, v4, type metadata accessor for PMAccount);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = (v6 + *(v24 + 80) + v17) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_21C8C5E30(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5E30(v4, v19 + v18, type metadata accessor for PMAccount);
  v30[0] = v21;
  v30[1] = v15;
  v27 = v30;
  v28 = 0xD000000000000014;
  v29 = 0x800000021CB92460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
}

uint64_t sub_21C8BD93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC10, &unk_21CBACF30);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v58 - v10;
  v11 = sub_21CB84FB4();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC18, &qword_21CBACF40);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v58 - v18;
  v19 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC20, &qword_21CBACF48);
  MEMORY[0x28223BE20](v22 - 8);
  v71 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v67 = &v58 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  MEMORY[0x28223BE20](v26 - 8);
  v66 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v58 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v31 = (type metadata accessor for PMAccount(0) - 8);
  v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a1, v33 + v32, type metadata accessor for PMAccount);
  v65 = v30;
  sub_21C8C08C8(v33, v30);

  v34 = v31[8];
  v35 = a1;
  sub_21C8C5D40(a1 + v34, v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719240(v21, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v36 = *v21;
    v37 = [*v21 canUserEditSavedAccount];

    if (!v37)
    {
      v51 = 1;
      v50 = v67;
      goto LABEL_6;
    }
  }

  v38 = v72;
  sub_21C8BF2D8(a1, v72);
  v39 = v59;
  sub_21CB84FA4();
  v40 = v60;
  sub_21C8BFF38(v35, v60);
  v41 = v73;
  sub_21C6EDBAC(v38, v73, &qword_27CDEFC18, &qword_21CBACF40);
  v43 = v62;
  v42 = v63;
  v44 = v6;
  v45 = *(v62 + 16);
  v46 = v61;
  v45(v61, v39, v63);
  v47 = v64;
  sub_21C6EDBAC(v40, v64, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EDBAC(v41, v44, &qword_27CDEFC18, &qword_21CBACF40);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC30, &qword_21CBACF68);
  v45((v44 + *(v48 + 48)), v46, v42);
  sub_21C6EDBAC(v47, v44 + *(v48 + 64), &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v40, &qword_27CDEB8C0, &unk_21CBA26A0);
  v49 = *(v43 + 8);
  v49(v39, v42);
  sub_21C6EA794(v72, &qword_27CDEFC18, &qword_21CBACF40);
  sub_21C6EA794(v47, &qword_27CDEB8C0, &unk_21CBA26A0);
  v49(v46, v42);
  sub_21C6EA794(v73, &qword_27CDEFC18, &qword_21CBACF40);
  v50 = v67;
  sub_21C716934(v44, v67, &qword_27CDEFC10, &unk_21CBACF30);
  v51 = 0;
LABEL_6:
  (*(v70 + 56))(v50, v51, 1, v69);
  v53 = v65;
  v52 = v66;
  sub_21C6EDBAC(v65, v66, &qword_27CDEC8A8, &unk_21CBACF50);
  v54 = v71;
  sub_21C6EDBAC(v50, v71, &qword_27CDEFC20, &qword_21CBACF48);
  v55 = v68;
  sub_21C6EDBAC(v52, v68, &qword_27CDEC8A8, &unk_21CBACF50);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC28, &qword_21CBACF60);
  sub_21C6EDBAC(v54, v55 + *(v56 + 48), &qword_27CDEFC20, &qword_21CBACF48);
  sub_21C6EA794(v50, &qword_27CDEFC20, &qword_21CBACF48);
  sub_21C6EA794(v53, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v54, &qword_27CDEFC20, &qword_21CBACF48);
  return sub_21C6EA794(v52, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C8BE0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v142 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  MEMORY[0x28223BE20](v5 - 8);
  v143 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v144 = v112 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC40, &qword_21CBACFB0);
  MEMORY[0x28223BE20](v133);
  v135 = v112 - v9;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC48, &qword_21CBACFB8);
  MEMORY[0x28223BE20](v134);
  v122 = v112 - v10;
  v11 = sub_21CB84FB4();
  v145 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v121 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v130 = v112 - v14;
  v15 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v147 = v17;
  v18 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB81024();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v112 - v24;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v148 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v120 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v128 = v112 - v28;
  MEMORY[0x28223BE20](v29);
  v129 = v112 - v30;
  MEMORY[0x28223BE20](v31);
  v146 = v112 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC50, &qword_21CBACFC0);
  MEMORY[0x28223BE20](v33 - 8);
  v140 = v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v131 = v112 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  MEMORY[0x28223BE20](v37 - 8);
  v138 = v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v137 = v112 - v40;
  sub_21C8C08C8(a1, v112 - v40);
  v139 = a1;
  v41 = sub_21CAEACD8(a1);
  v141 = v2;
  v127 = v18;
  v126 = v16;
  v136 = v19;
  v125 = v20;
  v124 = v22;
  v123 = v25;
  if (v41)
  {
    sub_21CB81014();
    sub_21CB81014();
    v42 = v25;
    v113 = sub_21CB80FF4();
    v44 = v43;
    v112[1] = v43;
    v119 = v11;
    v45 = *(v20 + 8);
    v118 = v45;
    v45(v22, v19);
    v45(v42, v19);
    v115 = 0x800000021CB92460;
    v117 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
    sub_21C8C5D40(v3, v18, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v46 = *(v16 + 80);
    v114 = (v46 + 16) & ~v46;
    v47 = swift_allocObject();
    v48 = v18;
    v116 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
    v49 = sub_21C8C5E30(v18, v47 + ((v46 + 16) & ~v46), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v112[2] = v112;
    v149 = v113;
    v150 = v44;
    MEMORY[0x28223BE20](v49);
    v112[-4] = &v149;
    v112[-3] = 0xD000000000000014;
    v112[-2] = 0x800000021CB92460;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21CB84DA4();

    sub_21CB81014();
    sub_21CB81014();
    v50 = sub_21CB80FF4();
    v52 = v51;
    v53 = v136;
    v54 = v118;
    v118(v22, v136);
    v54(v42, v53);
    sub_21C8C5D40(v141, v48, v117);
    v55 = v114;
    v56 = swift_allocObject();
    v57 = sub_21C8C5E30(v48, v56 + v55, v116);
    v149 = v50;
    v150 = v52;
    MEMORY[0x28223BE20](v57);
    v112[-4] = &v149;
    v112[-3] = 0xD000000000000014;
    v112[-2] = v115;
    v58 = v129;
    sub_21CB84DA4();

    v59 = v130;
    sub_21CB84FA4();
    v60 = *(v148 + 16);
    v61 = v128;
    v62 = v132;
    v60(v128, v146, v132);
    v63 = v120;
    v60(v120, v58, v62);
    v118 = *(v145 + 16);
    v64 = v121;
    v65 = v119;
    (v118)(v121, v59, v119);
    v66 = v122;
    v60(v122, v61, v62);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC68, &qword_21CBACFD0);
    v68 = v66;
    v60(&v66[*(v67 + 48)], v63, v62);
    (v118)(&v66[*(v67 + 64)], v64, v65);
    v69 = *(v145 + 8);
    v145 += 8;
    v69(v64, v65);
    v70 = *(v148 + 8);
    v70(v63, v62);
    v70(v128, v62);
    sub_21C6EDBAC(v68, v135, &qword_27CDEFC48, &qword_21CBACFB8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEFC58, &qword_27CDEFC48, &qword_21CBACFB8, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    v71 = v131;
    sub_21CB83494();
    sub_21C6EA794(v68, &qword_27CDEFC48, &qword_21CBACFB8);
    v69(v130, v119);
    v70(v129, v62);
    v72 = v146;
    v70(v146, v62);
    v73 = v62;
    v74 = v71;
    v75 = v72;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v76 = sub_21CB80FF4();
    v77 = v22;
    v79 = v78;
    v80 = *(v20 + 8);
    v80(v77, v19);
    v80(v25, v19);
    sub_21C8C5D40(v3, v18, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v81 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v82 = swift_allocObject();
    v83 = sub_21C8C5E30(v18, v82 + v81, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v149 = v76;
    v150 = v79;
    MEMORY[0x28223BE20](v83);
    v112[-4] = &v149;
    v112[-3] = 0xD000000000000014;
    v112[-2] = 0x800000021CB92460;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v75 = v146;
    sub_21CB84DA4();

    v84 = v148;
    v85 = v132;
    (*(v148 + 16))(v135, v75, v132);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEFC58, &qword_27CDEFC48, &qword_21CBACFB8, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    v86 = v131;
    sub_21CB83494();
    (*(v84 + 8))(v75, v85);
    v74 = v86;
    v73 = v85;
  }

  if (sub_21CAEF570(v139))
  {
    v87 = v123;
    sub_21CB81014();
    v88 = v124;
    sub_21CB81014();
    v89 = sub_21CB80FF4();
    v91 = v90;
    v92 = v73;
    v93 = *(v125 + 8);
    v94 = v88;
    v95 = v136;
    v93(v94, v136);
    v93(v87, v95);
    v96 = v127;
    sub_21C8C5D40(v141, v127, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v97 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v98 = swift_allocObject();
    v99 = sub_21C8C5E30(v96, v98 + v97, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v149 = v89;
    v150 = v91;
    MEMORY[0x28223BE20](v99);
    v112[-4] = &v149;
    v112[-3] = 0x6873617274;
    v112[-2] = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v73 = v92;
    sub_21CB84DA4();

    v100 = v148;
    (*(v148 + 32))(v144, v75, v92);
    v101 = 0;
  }

  else
  {
    v101 = 1;
    v100 = v148;
  }

  v102 = v144;
  (*(v100 + 56))(v144, v101, 1, v73);
  v104 = v137;
  v103 = v138;
  sub_21C6EDBAC(v137, v138, &qword_27CDEC8A8, &unk_21CBACF50);
  v105 = v74;
  v106 = v74;
  v107 = v140;
  sub_21C6EDBAC(v105, v140, &qword_27CDEFC50, &qword_21CBACFC0);
  v108 = v143;
  sub_21C6EDBAC(v102, v143, &qword_27CDEB8C0, &unk_21CBA26A0);
  v109 = v142;
  sub_21C6EDBAC(v103, v142, &qword_27CDEC8A8, &unk_21CBACF50);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC60, &qword_21CBACFC8);
  sub_21C6EDBAC(v107, v109 + *(v110 + 48), &qword_27CDEFC50, &qword_21CBACFC0);
  sub_21C6EDBAC(v108, v109 + *(v110 + 64), &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v102, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v106, &qword_27CDEFC50, &qword_21CBACFC0);
  sub_21C6EA794(v104, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v108, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v107, &qword_27CDEFC50, &qword_21CBACFC0);
  return sub_21C6EA794(v103, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C8BF2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC38, &unk_21CBACF70);
  MEMORY[0x28223BE20](v85);
  v87 = v64 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8F0, &qword_21CBA26B8);
  MEMORY[0x28223BE20](v86);
  v79 = v64 - v4;
  v5 = type metadata accessor for PMAccount(0);
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v82 = v6;
  v83 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21CB81024();
  v84 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v77 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = v64 - v18;
  MEMORY[0x28223BE20](v19);
  v78 = v64 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v64 - v22;
  v24 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v24);
  v26 = (v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21CAEFDA0(a1))
  {
    sub_21C8C5D40(a1 + *(v5 + 24), v26, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719240(v26, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v27 = *v26;
      v28 = [v27 isCurrentUserOriginalContributor];

      if (v28)
      {
        sub_21CB81014();
        sub_21CB81014();
        v65 = sub_21CB80FF4();
        v29 = *(v84 + 8);
        v84 += 8;
        v71 = v29;
        v72 = v30;
        v31 = v80;
        v29(v10, v80);
        v29(v13, v31);
        v73 = 0x800000021CB92460;
        v70 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
        v32 = v81;
        sub_21C8C5D40(v89, v81, type metadata accessor for PMAppRecentlyDeletedAccountsView);
        v69 = type metadata accessor for PMAccount;
        v33 = v83;
        sub_21C8C5D40(a1, v83, type metadata accessor for PMAccount);
        v34 = *(v74 + 80);
        v35 = *(v75 + 80);
        v36 = v8 + v35 + ((v34 + 16) & ~v34);
        v37 = (v34 + 16) & ~v34;
        v38 = v36 & ~v35;
        v74 = v37;
        v75 = v34 | v35;
        v66 = v38;
        v39 = swift_allocObject();
        v68 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
        v40 = v39 + v37;
        v41 = v39;
        v64[1] = v39;
        sub_21C8C5E30(v32, v40, type metadata accessor for PMAppRecentlyDeletedAccountsView);
        v67 = type metadata accessor for PMAccount;
        v42 = sub_21C8C5E30(v33, v41 + v38, type metadata accessor for PMAccount);
        v64[2] = v64;
        v90 = v65;
        v91 = v72;
        MEMORY[0x28223BE20](v42);
        v64[-4] = &v90;
        v64[-3] = 0xD000000000000014;
        v64[-2] = v73;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
        v64[3] = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
        sub_21CB84DA4();

        sub_21CB81014();
        sub_21CB81014();
        v43 = sub_21CB80FF4();
        v45 = v44;
        v46 = v10;
        v47 = v80;
        v48 = v71;
        v71(v46, v80);
        v48(v13, v47);
        v49 = v81;
        sub_21C8C5D40(v89, v81, v70);
        v50 = a1;
        v51 = v83;
        sub_21C8C5D40(v50, v83, v69);
        v52 = v66;
        v53 = swift_allocObject();
        sub_21C8C5E30(v49, v53 + v74, v68);
        v54 = sub_21C8C5E30(v51, v53 + v52, v67);
        v90 = v43;
        v91 = v45;
        MEMORY[0x28223BE20](v54);
        v64[-4] = &v90;
        v64[-3] = 0xD000000000000014;
        v64[-2] = v73;
        v55 = v78;
        sub_21CB84DA4();

        v56 = *(v15 + 16);
        v57 = v76;
        v56(v76, v23, v14);
        v58 = v77;
        v59 = v55;
        v56(v77, v55, v14);
        v60 = v79;
        v56(v79, v57, v14);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9C8, &qword_21CBACF80);
        v56((v60 + *(v61 + 48)), v58, v14);
        v62 = *(v15 + 8);
        v62(v58, v14);
        v62(v57, v14);
        sub_21C6EDBAC(v60, v87, &qword_27CDEB8F0, &qword_21CBA26B8);
        swift_storeEnumTagMultiPayload();
        sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8, MEMORY[0x277CE14C0]);
        sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
        sub_21CB83494();
        sub_21C6EA794(v60, &qword_27CDEB8F0, &qword_21CBA26B8);
        v62(v59, v14);
        return (v62)(v23, v14);
      }
    }
  }

  sub_21C8BD574(a1, v23);
  (*(v15 + 16))(v87, v23, v14);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8, MEMORY[0x277CE14C0]);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB83494();
  return (*(v15 + 8))(v23, v14);
}

uint64_t sub_21C8BFE18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a2, v5 + v4, type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBACF88);

  return sub_21CB81DC4();
}

uint64_t sub_21C8BFF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v31 - v12;
  v13 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1;
  sub_21C8C5D40(a1 + *(v4 + 32), v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719240(v15, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v29 = 1;
    v28 = v38;
    return (*(v11 + 56))(v28, v29, 1, v10);
  }

  v17 = *v15;
  v18 = [v17 isCurrentUserOriginalContributor];

  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v36;
  sub_21CB81ED4();
  v20 = sub_21CB81F14();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_21C8C5D40(v34, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v21 = v16;
  v22 = v37;
  sub_21C8C5D40(v21, v37, type metadata accessor for PMAccount);
  v23 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v24 = (v7 + *(v35 + 80) + v23) & ~*(v35 + 80);
  v25 = swift_allocObject();
  sub_21C8C5E30(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5E30(v22, v25 + v24, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v26 = v33;
  sub_21CB84D94();
  v27 = v38;
  (*(v11 + 32))(v38, v26, v10);
  v28 = v27;
  v29 = 0;
  return (*(v11 + 56))(v28, v29, 1, v10);
}

uint64_t sub_21C8C03FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a2, v5 + v4, type metadata accessor for PMAccount);
  v6 = sub_21C87E898(v5);
  v8 = v7;
  v10 = v9;
  swift_getKeyPath(byte_21CBACDC0);
  swift_getKeyPath(byte_21CBACE48);
  v11 = sub_21CB81DA4();
  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v13;
  *v13 = 0x8000000000000000;
  sub_21C8D4880(v6, v8, v10, 0, isUniquelyReferenced_nonNull_native);
  *v13 = v16;
  v11(v17, 0);
}

uint64_t sub_21C8C05A8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C0730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a2, v8 + v7, type metadata accessor for PMAccount);
  v9 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v9, v12);

  sub_21C833194(v8, a3, v5);
}

uint64_t sub_21C8C08C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v10 = v2 + *(v9 + 36);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v11, 0);
    v9 = (*(v6 + 8))(v8, v5);
    if (v16[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x28223BE20](v9);
    *&v16[-16] = a1;
    *&v16[-8] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    sub_21CB85054();
    v12 = 0;
    goto LABEL_6;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 1;
LABEL_6:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v14 - 8) + 56))(a2, v12, 1, v14);
}

uint64_t sub_21C8C0B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C8C5D40(a2, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_21C8C5E30(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v11 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

void sub_21C8C0CE0(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v24 = sub_21CB82F84();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  MEMORY[0x28223BE20](v26);
  v6 = &v21 - v5;
  v7 = sub_21CB82A34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (v15)
  {
    v25 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) + 28);
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    v21 = (v8 + 32);
    v22 = (v3 + 8);
    v28 = v10;
    do
    {
      sub_21C8C5D40(v16, v14, type metadata accessor for PMAccount);
      sub_21C6EDBAC(v27 + v25, v6, &qword_27CDEC0D0, &qword_21CBA3BF0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v21)(v10, v6, v7);
      }

      else
      {
        sub_21CB85B04();
        v19 = sub_21CB83C94();
        sub_21CB81C14();

        v20 = v23;
        sub_21CB82F74();
        swift_getAtKeyPath();

        (*v22)(v20, v24);
      }

      v18 = v14[1];
      v29 = *v14;
      v30 = v18;

      sub_21CB82A14();
      v10 = v28;

      (*(v8 + 8))(v10, v7);
      sub_21C719240(v14, type metadata accessor for PMAccount);
      v16 += v17;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_21C8C10FC(uint64_t a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C1258(uint64_t a1)
{

  sub_21CAEA250();
  swift_getKeyPath(byte_21CBACF88);
  return sub_21CB81DC4();
}

uint64_t sub_21C8C12CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = sub_21CAEA250();
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v8);

  sub_21C833194(v4, a2, v3);
}

uint64_t sub_21C8C13C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  MEMORY[0x28223BE20](v25);
  v26 = &v22 - v3;
  v4 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v22 - v13;
  v23 = a1;
  sub_21CB81DB4();

  sub_21CAE9588();

  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v28 = v15;
  v29 = v17;
  v18 = v24;
  sub_21C8C5D40(v23, v24, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v19 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v20 = swift_allocObject();
  sub_21C8C5E30(v18, v20 + v19, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  (*(v11 + 16))(v26, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB83494();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C8C18C8(uint64_t a1)
{
  sub_21CB81DB4();

  return sub_21CAE9A98(MEMORY[0x277D84FA0]);
}

uint64_t sub_21C8C1950(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 8);
  v7 = sub_21CAE9588();
  v8 = v7[2];
  if (v8)
  {
    v20[2] = v6;
    v21 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v8, 0);
    v9 = v21;
    v10 = *(v3 + 80);
    v20[1] = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v12 = *(v3 + 72);
    do
    {
      sub_21C8C5D40(v11, v5, type metadata accessor for PMAccount);
      v14 = *v5;
      v13 = v5[1];

      sub_21C719240(v5, type metadata accessor for PMAccount);
      v21 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21C7B0C0C((v15 > 1), v16 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v18 = sub_21CB009AC(v9);

  return sub_21CAE9A98(v18);
}

uint64_t sub_21C8C1B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_21CB81024();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PMPlatformRoleButton(0);
  MEMORY[0x28223BE20](v52);
  v45 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_21CB81F14();
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBD8, &qword_21CBACE68);
  MEMORY[0x28223BE20](v49);
  v51 = &v40 - v7;
  v8 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v50);
  v11 = &v40 - v10;
  v12 = sub_21CB85114();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v40 - v18;
  v47 = a1;
  swift_getKeyPath(byte_21CBACC80, v17);
  swift_getKeyPath(byte_21CBACCA8);
  sub_21CB81DB4();

  (*(v13 + 104))(v15, *MEMORY[0x277CDF0D8], v12);
  LOBYTE(a1) = sub_21CB850F4();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v19, v12);
  if (a1)
  {
    sub_21C8C5D40(v47, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v21 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v22 = swift_allocObject();
    sub_21C8C5E30(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    sub_21CB84DA4();
    v23 = sub_21CAEB488() == 0;
    KeyPath = swift_getKeyPath(byte_21CBACD90);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v26 = v51;
    v27 = &v11[*(v50 + 36)];
    *v27 = KeyPath;
    v27[1] = sub_21C87E800;
    v27[2] = v25;
    sub_21C6EDBAC(v11, v26, &qword_27CDEDA98, &unk_21CBABCB0);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21C720BCC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    sub_21CB83494();
    return sub_21C6EA794(v11, &qword_27CDEDA98, &unk_21CBABCB0);
  }

  else
  {
    v29 = v43;
    sub_21CB81F04();
    v30 = v40;
    sub_21CB81014();
    v31 = sub_21CB81004();
    v33 = v32;
    (*(v41 + 8))(v30, v42);
    v34 = v52;
    v36 = v44;
    v35 = v45;
    (*(v44 + 16))(v45 + *(v52 + 20), v29, v48);
    sub_21C8C5D40(v47, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v37 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v38 = swift_allocObject();
    sub_21C8C5E30(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    *v35 = v31;
    v35[1] = v33;
    v39 = (v35 + *(v34 + 24));
    *v39 = sub_21C8C5470;
    v39[1] = v38;
    sub_21C8C5D40(v35, v51, type metadata accessor for PMPlatformRoleButton);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21C720BCC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    sub_21CB83494();
    sub_21C719240(v35, type metadata accessor for PMPlatformRoleButton);
    return (*(v36 + 8))(v29, v48);
  }
}

uint64_t sub_21C8C2294@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C8C23B8(uint64_t a1, uint64_t a2)
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8C2418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB98, &qword_21CBACD58);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v54 = (&v51 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBA0, &qword_21CBACD68);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBA8, &qword_21CBACD70);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v51 - v15;
  v16 = sub_21CB85114();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v51 - v22;
  v24 = *(a1 + 8);
  swift_getKeyPath(byte_21CBACC80, v21);
  swift_getKeyPath(byte_21CBACCA8);
  sub_21CB81DB4();

  v25 = *(v17 + 104);
  v60 = *MEMORY[0x277CDF0D0];
  v58 = v25;
  v59 = v17 + 104;
  v25(v19);
  v26 = sub_21CB850F4();
  v27 = *(v17 + 8);
  v27(v19, v16);
  v57 = v27;
  v27(v23, v16);
  v56 = v24;
  if (v26)
  {
    type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
    sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);

    v62 = sub_21CB82674();
    v63 = v28;

    v61 = 1;
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v61 = 0;
  }

  v29 = sub_21CB85184();
  v55 = &v51;
  MEMORY[0x28223BE20](v29);
  sub_21CB831C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBB0, &qword_21CBACD78);
  v51 = a1;
  sub_21C720BCC(&qword_27CDEC048, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
  sub_21C8C525C(&qword_27CDEFBB8, &qword_27CDEFBB0, &qword_21CBACD78, sub_21C8C52D8);
  sub_21CB85194();
  swift_getKeyPath(byte_21CBACC80);
  swift_getKeyPath(byte_21CBACCA8);
  sub_21CB81DB4();

  v58(v19, v60, v16);
  v30 = sub_21CB850F4();
  v31 = v19;
  v32 = v57;
  v57(v31, v16);
  v32(v23, v16);
  v33 = 1;
  v34 = v72;
  if (v30)
  {
    v35 = v52;
    sub_21C8C2C58(v52);
    v36 = v53;
    sub_21C6EDBAC(v35, v53, &qword_27CDEEB98, &qword_21CBACD60);
    v37 = v54;
    *v54 = 0;
    *(v37 + 8) = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBD0, &qword_21CBACD88);
    sub_21C6EDBAC(v36, v37 + *(v38 + 48), &qword_27CDEEB98, &qword_21CBACD60);
    sub_21C6EA794(v35, &qword_27CDEEB98, &qword_21CBACD60);
    sub_21C6EA794(v36, &qword_27CDEEB98, &qword_21CBACD60);
    sub_21C716934(v37, v34, &qword_27CDEFB98, &qword_21CBACD58);
    v33 = 0;
  }

  (*(v67 + 56))(v34, v33, 1, v69);
  v40 = v64;
  v39 = v65;
  v41 = *(v65 + 16);
  v42 = v71;
  v43 = v66;
  v41(v64, v71, v66);
  v44 = v34;
  v45 = v68;
  sub_21C6EDBAC(v44, v68, &qword_27CDEFBA0, &qword_21CBACD68);
  v46 = v70;
  v47 = v63;
  *v70 = v62;
  v46[1] = v47;
  v46[2] = 0;
  *(v46 + 24) = v61;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBC8, &qword_21CBACD80);
  v41(v46 + *(v48 + 48), v40, v43);
  sub_21C6EDBAC(v45, v46 + *(v48 + 64), &qword_27CDEFBA0, &qword_21CBACD68);
  sub_21C6EA794(v72, &qword_27CDEFBA0, &qword_21CBACD68);
  v49 = *(v39 + 8);
  v49(v42, v43);
  sub_21C6EA794(v45, &qword_27CDEFBA0, &qword_21CBACD68);
  v49(v40, v43);
}

uint64_t sub_21C8C2C04@<X0>(uint64_t *a2@<X8>)
{
  if (sub_21CAEB488() < 1)
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    result = sub_21C8BA1C0();
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

__n128 sub_21C8C2C58@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  *&v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v36 - v10;
  v36.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  MEMORY[0x28223BE20](v36.n128_u64[0]);
  v13 = &v36 - v12;
  sub_21CB81ED4();
  v14 = sub_21CB81F14();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  sub_21C8C5D40(v2, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v39 = v5;
  v16 = swift_allocObject();
  v37 = v15;
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8C5E30(v40, v16 + v15, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84D94();
  v17 = *(sub_21CAEA250() + 16);

  if (v17)
  {
    v18 = sub_21CAEA250();
    v19 = sub_21CAEF570(v18);

    v20 = !v19;
  }

  else
  {
    v20 = 1;
  }

  KeyPath = swift_getKeyPath(byte_21CBACD90);
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  (*(v9 + 32))(v13, v11, v38);
  v23 = &v13[*(v36.n128_u64[0] + 36)];
  *v23 = KeyPath;
  v23[1] = sub_21C735744;
  v23[2] = v22;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBACDC0);
  sub_21CB82694();

  v26 = v48;
  v25 = v49;
  v27 = v50;
  *&v28 = MEMORY[0x28223BE20](v24).n128_u64[0];
  *(&v36 - 16) = 1;
  swift_getKeyPath(byte_21CBACDE8, v28);
  v45 = v26;
  v46 = v25;
  v47 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v38 = v42;
  v36 = v43;
  v29 = v44;

  v30 = v40;
  sub_21C8C5D40(v2, v40, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v31 = v37;
  v32 = swift_allocObject();
  sub_21C8C5E30(v30, v32 + v31, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v33 = v41;
  sub_21C716934(v13, v41, &qword_27CDEEBA0, &qword_21CBABC80);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60) + 36);
  result = v36;
  *v34 = v38;
  *(v34 + 16) = result;
  *(v34 + 32) = v29;
  *(v34 + 40) = &unk_21CBACE40;
  *(v34 + 48) = v32;
  return result;
}

uint64_t sub_21C8C3220(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_21CAEA250();
  v4 = sub_21C87E898(v3);
  v6 = v5;
  v8 = v7;
  swift_getKeyPath(byte_21CBACDC0);
  swift_getKeyPath(byte_21CBACE48);
  v9 = sub_21CB81DA4();
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v11;
  *v11 = 0x8000000000000000;
  sub_21C8D4880(v4, v6, v8, v2, isUniquelyReferenced_nonNull_native);
  *v11 = v14;
  v9(v15, 0);
}

uint64_t sub_21C8C3320()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C3448(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8C34E0, v4, v3);
}

uint64_t sub_21C8C34E0()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_21CAEA660(v2);
  *(swift_task_alloc() + 16) = v1;
  sub_21CB85254();
  sub_21CB82524();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C8C35AC(uint64_t a1, unsigned int *a2)
{
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(v4 + 104))(&v12 - v9, *a2, v3, v8);
  swift_getKeyPath(byte_21CBACC80);
  swift_getKeyPath(byte_21CBACCA8);
  (*(v4 + 16))(v6, v10, v3);

  sub_21CB81DC4();
  return (*(v4 + 8))(v10, v3);
}

unint64_t sub_21C8C3730()
{
  result = qword_27CDEFA30;
  if (!qword_27CDEFA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA38, &qword_21CBACB40);
    sub_21C720BCC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21C8C37EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA30);
  }

  return result;
}

unint64_t sub_21C8C37EC()
{
  result = qword_27CDEFA40;
  if (!qword_27CDEFA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA48, &qword_21CBACB48);
    sub_21C8C3878();
    sub_21C8C3E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA40);
  }

  return result;
}

unint64_t sub_21C8C3878()
{
  result = qword_27CDEFA50;
  if (!qword_27CDEFA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA58, &qword_21CBACB50);
    sub_21C8C3904();
    sub_21C8C3E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA50);
  }

  return result;
}

unint64_t sub_21C8C3904()
{
  result = qword_27CDEFA60;
  if (!qword_27CDEFA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA68, &qword_21CBACB58);
    sub_21C8C3990();
    sub_21C8C3DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA60);
  }

  return result;
}

unint64_t sub_21C8C3990()
{
  result = qword_27CDEFA70;
  if (!qword_27CDEFA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA78, &qword_21CBACB60);
    sub_21C8C3A1C();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA70);
  }

  return result;
}

unint64_t sub_21C8C3A1C()
{
  result = qword_27CDEFA80;
  if (!qword_27CDEFA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA88, &qword_21CBACB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA90, &qword_21CBACB70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA98, &qword_21CBACB78);
    sub_21C8C3B28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C847DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA80);
  }

  return result;
}

unint64_t sub_21C8C3B28()
{
  result = qword_27CDEFAA0;
  if (!qword_27CDEFAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA98, &qword_21CBACB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAA8, &qword_21CBACB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAB0, &qword_21CBACB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAB8, &qword_21CBACB90);
    sub_21C6EADEC(&qword_27CDEFAC0, &qword_27CDEFAB8, &qword_21CBACB90, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_21C8C525C(&qword_27CDEFAC8, &qword_27CDEFAB0, &qword_21CBACB88, sub_21C8C3D14);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFAA0);
  }

  return result;
}

unint64_t sub_21C8C3D14()
{
  result = qword_27CDEFAD0;
  if (!qword_27CDEFAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAD8, &qword_21CBACB98);
    v1 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDEFAE0, &qword_27CDEFAE8, &qword_21CBACBA0, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDEFAF0, &qword_27CDEFAF8, &unk_21CBACBA8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFAD0);
  }

  return result;
}

unint64_t sub_21C8C3DF4()
{
  result = qword_27CDEFB00;
  if (!qword_27CDEFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB00);
  }

  return result;
}

unint64_t sub_21C8C3E48()
{
  result = qword_27CDEFB08;
  if (!qword_27CDEFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB08);
  }

  return result;
}

unint64_t sub_21C8C3E9C()
{
  result = qword_27CDEFB10;
  if (!qword_27CDEFB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB18, &unk_21CBACBB8);
    sub_21C8C3878();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB10);
  }

  return result;
}

unint64_t sub_21C8C3F64()
{
  result = qword_27CDEFB80;
  if (!qword_27CDEFB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB78, &unk_21CBACD40);
    sub_21C844588();
    sub_21C720BCC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB80);
  }

  return result;
}

uint64_t sub_21C8C4060(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C8C40D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v36 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v31 = &v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFD10, &qword_21CBAD2D0);
  MEMORY[0x28223BE20](v35);
  v6 = &v30 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFD18, &qword_21CBAD2D8);
  MEMORY[0x28223BE20](v34);
  v15 = &v30 - v14;
  v16 = sub_21CAEA250();
  v17 = sub_21CAEACD8(v16);

  sub_21CB81014();
  v18 = (v8 + 8);
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v21 = v20;
  if (v17)
  {
    v22 = *v18;
    (*v18)(v10, v7);
    v23 = (v22)(v13, v7);
    v38 = v19;
    v39 = v21;
    MEMORY[0x28223BE20](v23);
    *(&v30 - 2) = v33;
    *(&v30 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8F0, &qword_21CBA26B8);
    sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8, MEMORY[0x277CE14C0]);
    sub_21C71F3FC();
    sub_21CB83F64();
    *&v15[*(v34 + 36)] = 257;
    sub_21C6EDBAC(v15, v6, &qword_27CDEFD18, &qword_21CBAD2D8);
    swift_storeEnumTagMultiPayload();
    sub_21C8C6B70();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB83494();
    return sub_21C6EA794(v15, &qword_27CDEFD18, &qword_21CBAD2D8);
  }

  else
  {
    v25 = *v18;
    (*v18)(v10, v7);
    v25(v13, v7);
    v38 = v19;
    v39 = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = v33;
    *(v26 + 24) = a2;
    sub_21C71F3FC();

    v27 = v31;
    sub_21CB84DE4();
    v28 = v32;
    v29 = v37;
    (*(v32 + 16))(v6, v27, v37);
    swift_storeEnumTagMultiPayload();
    sub_21C8C6B70();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB83494();
    return (*(v28 + 8))(v27, v29);
  }
}

uint64_t sub_21C8C4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a1;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *(v18 + 24) = a2;

  sub_21CB84DA4();
  v19 = *(v6 + 16);
  v19(v10, v16, v5);
  v20 = v27;
  v19(v27, v13, v5);
  v21 = v28;
  v19(v28, v10, v5);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9C8, &qword_21CBACF80);
  v19(&v21[*(v22 + 48)], v20, v5);
  v23 = *(v6 + 8);
  v23(v13, v5);
  v23(v16, v5);
  v23(v20, v5);
  return (v23)(v10, v5);
}

uint64_t sub_21C8C4998(uint64_t a1, uint64_t a2)
{

  sub_21CAEA250();
  swift_getKeyPath(byte_21CBACF88);
  sub_21CB81DC4();
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8C4A50()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C4BF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CAEA250();
  v4 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v8);

  sub_21C833194(v3, sub_21C8C6EAC, a2);

  MEMORY[0x28223BE20](v6);
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8C4D54()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C4EF4(uint64_t a1, uint64_t a2)
{
  sub_21CB85254();
  sub_21CB82524();

  v3 = sub_21CAEA250();
  v4 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v7);

  sub_21C833194(v3, sub_21C8C6EAC, a2);
}

uint64_t sub_21C8C5034(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(v3 + 104))(&v11 - v8, *MEMORY[0x277CDF0D8], v2, v7);
  swift_getKeyPath(byte_21CBACC80);
  swift_getKeyPath(byte_21CBACCA8);
  (*(v3 + 16))(v5, v9, v2);

  sub_21CB81DC4();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_21C8C51AC@<X0>(uint64_t a1@<X8>)
{
  sub_21C8C40D4(*v1, v1[1], a1);
  v3 = *(sub_21CAEA250() + 16);

  v4 = v3 == 0;
  KeyPath = swift_getKeyPath(byte_21CBACD90);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFD08, &qword_21CBAD2C8);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_21C87E800;
  v8[2] = v6;
  return result;
}

uint64_t sub_21C8C525C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C8C52D8()
{
  result = qword_27CDEFBC0;
  if (!qword_27CDEFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFBC0);
  }

  return result;
}

uint64_t sub_21C8C5398(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C8C3448(a1, v1 + v5);
}

uint64_t sub_21C8C560C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C8BCB08(a1, v1 + v5);
}

uint64_t sub_21C8C56FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21C8C57C8()
{
  v1 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21C8BFE18(v0 + v2, v5);
}

uint64_t sub_21C8C58AC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21C8C0730(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

void sub_21C8C597C()
{
  v1 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_21C8C0CE0(v2, v3);
}

uint64_t sub_21C8C5A34(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_21C8BB618(a1, a2, v6, v7);
}

uint64_t sub_21C8C5ADC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  return v3(a1, *(a1 + *(v4 + 48)));
}

unint64_t sub_21C8C5B38()
{
  result = qword_27CDEFC98;
  if (!qword_27CDEFC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFC80, &unk_21CBAD050);
    sub_21C87DED8();
    sub_21C8C5BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFC98);
  }

  return result;
}

unint64_t sub_21C8C5BD0()
{
  result = qword_27CDEFCA0;
  if (!qword_27CDEFCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFCA8, &qword_21CBAD060);
    sub_21C6EADEC(&qword_27CDEFCB0, &qword_27CDEFCB8, &qword_21CBAD068, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFCA0);
  }

  return result;
}

uint64_t sub_21C8C5C80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  result = sub_21C8BAFB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21C8C5CE4()
{
  result = qword_27CDEFCD0;
  if (!qword_27CDEFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFCD0);
  }

  return result;
}

uint64_t sub_21C8C5D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8C5DA8(void *a1)
{
  v3 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C8BBAF8(a1, v4);
}

uint64_t sub_21C8C5E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_101Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v56 = *(*(v2 - 1) + 80);
  v3 = (v56 + 16) & ~v56;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v55 = *(*(v5 - 1) + 64);
  v8 = v1 + v3;

  v9 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v7;
  v12 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82A34();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  else
  {
  }

  v14 = v11 & ~v6;
  v15 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v8 + v15, 1, v16))
    {
      (*(v17 + 8))(v8 + v15, v16);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v8 + v2[9]), *(v8 + v2[9] + 8));
  v18 = v1 + v14;

  v19 = v1 + v14 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v21 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v22 = *(v21 + 28);
    v23 = sub_21CB85B74();
    (*(*(v23 - 8) + 8))(v19 + v22, v23);

    v24 = *(v21 + 36);
    v25 = sub_21CB85C44();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v19 + v24, 1, v25))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v43 = v14;

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(v19 + v45, 1, v46))
  {
    (*(v47 + 8))(v19 + v45, v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(v19 + v48, 1, v49))
  {
    (*(v50 + 8))(v19 + v48, v49);
  }

  v24 = v44[9];
  v25 = sub_21CB85C44();
  v26 = *(v25 - 8);
  v14 = v43;
  if (!(*(v26 + 48))(v19 + v24, 1, v25))
  {
LABEL_13:
    (*(v26 + 8))(v19 + v24, v25);
  }

LABEL_14:
  v27 = (v18 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v14;
    v54 = v1;

    v28 = type metadata accessor for PMAccount.MockData(0);
    v29 = v28[8];
    v30 = sub_21CB80DD4();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (!v32(v27 + v29, 1, v30))
    {
      (*(v31 + 8))(v27 + v29, v30);
    }

    v33 = v28[12];
    if (!v32(v27 + v33, 1, v30))
    {
      (*(v31 + 8))(v27 + v33, v30);
    }

    v34 = v28[15];
    v35 = sub_21CB85BB4();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v27 + v34, 1, v35))
    {
      (*(v36 + 8))(v27 + v34, v35);
    }

    v37 = v28[16];
    v38 = sub_21CB85C04();
    v39 = *(v38 - 8);
    v1 = v54;
    if (!(*(v39 + 48))(v27 + v37, 1, v38))
    {
      (*(v39 + 8))(v27 + v37, v38);
    }

    v40 = v28[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    v14 = v53;
    if (!(*(v42 + 48))(v27 + v40, 1, v41))
    {
      (*(v42 + 8))(v27 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v18 + v5[7];
  if (*(v51 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v14 + v55, v56 | v6 | 7);
}

uint64_t sub_21C8C6734()
{
  v1 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21C8C03FC(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_21C8C6804()
{
  result = qword_27CDEFCF8;
  if (!qword_27CDEFCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB38, &qword_21CBACC20);
    sub_21C8C68C0();
    sub_21C720BCC(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable, &unk_21CBCB2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFCF8);
  }

  return result;
}

unint64_t sub_21C8C68C0()
{
  result = qword_27CDEFD00;
  if (!qword_27CDEFD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA18, &qword_21CBACB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA08, &qword_21CBACB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB30, &qword_21CBACC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA00, &qword_21CBACB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF9F8, &qword_21CBACB10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA20, &qword_21CBACB38);
    sub_21C8C6D40(&qword_27CDEFA28, &qword_27CDEF9F8, &qword_21CBACB10, sub_21C8C3730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB20, &qword_21CBACBC8);
    sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD00);
  }

  return result;
}

unint64_t sub_21C8C6B70()
{
  result = qword_27CDEFD20;
  if (!qword_27CDEFD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFD18, &qword_21CBAD2D8);
    sub_21C6EADEC(&qword_27CDEFD28, &qword_27CDEFD30, &qword_21CBAD2E0, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD20);
  }

  return result;
}

unint64_t sub_21C8C6C5C()
{
  result = qword_27CDEFD38;
  if (!qword_27CDEFD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFD08, &qword_21CBAD2C8);
    sub_21C8C6D40(&qword_27CDEFD40, &qword_27CDEFD48, &qword_21CBAD2E8, sub_21C8C6DBC);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD38);
  }

  return result;
}

uint64_t sub_21C8C6D40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C8C6DBC()
{
  result = qword_27CDEFD50;
  if (!qword_27CDEFD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFD58, &unk_21CBAD2F0);
    sub_21C8C6B70();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD50);
  }

  return result;
}

uint64_t sub_21C8C6EB0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v6, v5, &unk_27CDEBE60, &unk_21CB9FF40);
  LOBYTE(v6) = sub_21C7A2AE4(v5, a1);
  sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v6)
  {
    KeyPath = swift_getKeyPath(byte_21CBAD6E8);
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  else
  {
    sub_21C6EDBAC(a1, v5, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C8CA328(v5);
  }

  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C8C7090(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v32 - v5;
  v32 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v32);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  if ((sub_21C8CE2A8(a1) & 1) == 0)
  {
    v21 = type metadata accessor for PMAccount(0);
    sub_21C710710(v34 + *(v21 + 24), v10, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C8D88C8(v10, v7, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(&v7[*(v32 + 72)], v13, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C7192A0(v7, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v22 = *v10;
      sub_21CB85B94();
    }

    sub_21C716934(v13, v16, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
      v23 = type metadata accessor for PMAppSourceListModel.Source(0);
      v24 = v33;
      swift_storeEnumTagMultiPayload();
      (*(*(v23 - 8) + 56))(v24, 0, 1, v23);
      sub_21C742C88(v24);
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      v25 = v33;
      (*(v18 + 16))(v33, v20, v17);
      v26 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
      sub_21C742C88(v25);
      (*(v18 + 8))(v20, v17);
    }
  }

  swift_getKeyPath(byte_21CBAD830);
  v35 = v2;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  if (!(*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) >> 61))
  {
    v28 = *v34;
    v29 = v34[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = v28;
    *(inited + 40) = v29;

    v31 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    sub_21C880484(v31);

    sub_21C884F9C(v28, v29);
  }

  return result;
}

uint64_t sub_21C8C7608(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  if (v4 != 1)
  {
    if (a1 != 1)
    {
      if (v4)
      {
        if (a1)
        {

          v9 = sub_21C967680(v8, a1);
          sub_21C72A584(v4);
          if (v9)
          {
            v5 = *(v1 + v3);
            goto LABEL_4;
          }
        }
      }

      else if (!a1)
      {
        v5 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
    sub_21C72A584(a1);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_4:
  *(v1 + v3) = a1;

  return sub_21C72A584(v5);
}

uint64_t sub_21C8C77C0()
{
  v22 = type metadata accessor for PMAddAccountModel.Configuration(0);
  MEMORY[0x28223BE20](v22);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  swift_getKeyPath(byte_21CBAD830);
  v23 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  if (!(v14 >> 61))
  {
    sub_21C710710(v14 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v5, type metadata accessor for PMAppAccountsListModel.Configuration);
    if ((*(v12 + 48))(v5, 4, v11))
    {
      sub_21C7192A0(v5, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v12 + 32))(v10, v5, v11);
      v13(v10, 0, 1, v11);
    }
  }

  v15 = v21;
  sub_21C6EDBAC(v10, v21, &unk_27CDF20B0, &unk_21CBA0090);
  v16 = v22;
  v17 = *(v22 + 24);
  v13(&v2[v17], 1, 1, v11);
  v18 = &v2[*(v16 + 28)];
  *v18 = 0;
  *(v18 + 1) = 0;
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0xE000000000000000;
  sub_21C815B54(v15, &v2[v17]);
  sub_21C8CA9E0(v2, nullsub_1, 0);
  sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
  return sub_21C7192A0(v2, type metadata accessor for PMAddAccountModel.Configuration);
}

uint64_t sub_21C8C7B64()
{
  swift_getKeyPath(byte_21CBAD830);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

  return v1;
}

uint64_t sub_21C8C7C18(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      if (a1 >> 62 == 1 && ((v2 ^ a1) & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (a1 == 0x8000000000000000)
    {
      goto LABEL_8;
    }

LABEL_12:
    KeyPath = swift_getKeyPath(byte_21CBAD808);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  if (a1 >> 62 || v2 != a1)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = a1;
}

uint64_t sub_21C8C7D9C()
{
  v1 = *(v0 + 56);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C81C2B8(v1, v6);

  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBADE30);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8C7FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21C8C80C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAD888);
  sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21C8C81D0()
{
  v3 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v1 = *(v0 + 16);
  sub_21C7335A8(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_21C8C8298(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath(byte_21CBADAB0);
  swift_getKeyPath(byte_21CBADAD8);
  (v11)(v6, v10, v3);

  sub_21CB81DC4();
  return (*(v4 + 8))(v10, v3);
}

void sub_21C8C8408(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2)
    {
      v3 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = a2;
    }
  }

  else if (v2 > 4)
  {
    if (v2 != 5)
    {
      return;
    }

    v3 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  }

  MEMORY[0x21CF15F90](v3);
}

uint64_t sub_21C8C8474()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C8C8408(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C8C84C4(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  sub_21C8C8408(v4, v2);
  return sub_21CB864D4();
}

BOOL sub_21C8C8514(unint64_t a1)
{
  v2 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  *&v3 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v6 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = v6;
      sub_21C71B720(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
      sub_21CB810D4();

      return *(v6 + 40) == 0;
    }
  }

  else
  {
    swift_getKeyPath(byte_21CBAD970, v3);
    v11 = a1;
    sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
    sub_21CB810D4();

    v8 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
    swift_beginAccess();
    sub_21C710710(a1 + v8, v5, type metadata accessor for PMMultipleAccountsDetailsModel.State);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21C7192A0(v5, type metadata accessor for PMMultipleAccountsDetailsModel.State);
      return 0;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0);
    sub_21C6EA794(&v5[*(v9 + 48)], &unk_27CDF20B0, &unk_21CBA0090);
  }

  return 1;
}

uint64_t sub_21C8C873C()
{
  v1 = *v0;
  sub_21CB86484();
  if (!(v1 >> 62))
  {
    goto LABEL_4;
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    MEMORY[0x21CF15F90](v1);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C8C8798()
{
  result = *v0;
  if ((*v0 >> 62) <= 1)
  {
    return MEMORY[0x21CF15F90]();
  }

  return result;
}

uint64_t sub_21C8C87D8(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  if (!(v2 >> 62))
  {
    goto LABEL_4;
  }

  if (v2 >> 62 == 1)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    MEMORY[0x21CF15F90](v2);
  }

  return sub_21CB864D4();
}

BOOL sub_21C8C8830(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        return ((v3 ^ v2) & 0x3FFFFFFFFFFFFFFFLL) == 0;
      }
    }

    else if (v3 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(v3 >> 62))
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_21C8C8894(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8C89DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v6, v5, &unk_27CDF20B0, &unk_21CBA0090);
  v7 = sub_21C7A2AE0(v5, a1);
  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  if (v7)
  {
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C7A32E8(a1, v1 + v6, &unk_27CDF20B0, &unk_21CBA0090);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C8C8BD8(uint64_t result, void *a2, const char *a3, uint64_t a4, ...)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8C8CDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) != result)
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8C8DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v9 = &v14 - v8;
  v18 = v2;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v10 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__didShowUncommittedChangesAlert);
  v16 = v3;
  if (v10 == 1)
  {
    v17 = 0;
    v18 = v3;
    sub_21CB810C4();
  }

  else
  {
    v17 = 1;
    v18 = v3;
    sub_21CB810C4();

    sub_21C6EDBAC(a2, v9, &qword_27CDEAC20, &qword_21CBAD710);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    sub_21C716934(v9, v13 + v12, &qword_27CDEAC20, &qword_21CBAD710);

    sub_21C8CEA34(sub_21C8D79D0, v13);

    sub_21C6EDBAC(v15, v9, &qword_27CDEAC20, &qword_21CBAD710);
    return sub_21C742C88(v9);
  }
}

uint64_t sub_21C8C90AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-v9];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v12 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    v13 = sub_21CB85C44();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    type metadata accessor for PMMultipleAccountsDetailsModel(0);
    swift_allocObject();
    v14 = sub_21CA770B0(v12, 0x8000000000000000, v10);
    sub_21C8C7C18(v14);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    sub_21C742C88(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_getKeyPath(byte_21CBAD830);
    v22 = v17;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810D4();

    v18 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

    if (!(v18 >> 61))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_21CBA0690;
      *(v19 + 32) = a1;
      *(v19 + 40) = a2;

      v20 = sub_21C8D7470(v19);
      swift_setDeallocating();
      sub_21C81A534(v19 + 32);
      sub_21C880484(v20);
    }
  }

  return result;
}

uint64_t sub_21C8C944C()
{
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C8C9504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21C8C95C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_21C8C9680()
{
  swift_getKeyPath(byte_21CBAD808);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  return v1;
}

uint64_t sub_21C8C9734(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = a2;
}

uint64_t sub_21C8C979C@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, ...)
{
  swift_getKeyPath(a1);
  v12 = v5;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v10 = *a2;
  swift_beginAccess();
  return sub_21C6EDBAC(v12 + v10, a5, a3, a4);
}

uint64_t sub_21C8C987C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C8C99C8()
{
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact);
}

uint64_t sub_21C8C9A70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact);
  return result;
}

uint64_t sub_21C8C9B20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);

  v9 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact);
  if (v7 == 1)
  {
    if (v9 != 1)
    {
      MEMORY[0x28223BE20](KeyPath);
      *(&v20 - 2) = v2;
      *(&v20 - 8) = 1;
      v21 = v2;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810C4();
    }

    swift_getKeyPath(byte_21CBAD830);
    v21 = v2;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810D4();

    v14 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    v15 = v14 >> 61;
    if ((v14 >> 61) <= 2)
    {
      if (v15)
      {
        if (v15 == 1)
        {
          return result;
        }

        sub_21CAE9A98(MEMORY[0x277D84FA0]);
      }

      else
      {

        sub_21C880484(MEMORY[0x277D84FA0]);
      }
    }

    else if (v15 > 4)
    {
      if (v15 != 5)
      {
        return result;
      }

      sub_21C86234C(MEMORY[0x277D84FA0]);
    }

    else if (v15 == 3)
    {

      sub_21C901AD4(MEMORY[0x277D84FA0]);
    }

    else
    {
      v17 = v14 & 0x1FFFFFFFFFFFFFFFLL;
      if (*(v17 + 88))
      {
        v18 = swift_getKeyPath(byte_21CBAD760);
        MEMORY[0x28223BE20](v18);
        *(&v20 - 3) = 0;
        *(&v20 - 2) = 0;
        *(&v20 - 4) = v17;
        v21 = v17;
        sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);

        sub_21CB810C4();
      }

      v19 = *(v17 + 80);
      *(v17 + 80) = 0;
      *(v17 + 88) = 0;

      sub_21CB72C70(v19, 0);
    }
  }

  if (!v7)
  {
    if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact))
    {
      MEMORY[0x28223BE20](v10);
      *(&v20 - 2) = v2;
      *(&v20 - 8) = 0;
      v21 = v2;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810C4();
    }

    v11 = *(v2 + 64);
    v12 = type metadata accessor for PMAppSourceListModel.Source(0);
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_21C742C88(v6);
    v21 = v11;
    sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810D4();

    sub_21C880484(MEMORY[0x277D84FA0]);
  }

  if (v9 != 2)
  {
    MEMORY[0x28223BE20](v16);
    *(&v20 - 2) = v2;
    *(&v20 - 8) = 2;
    v21 = v2;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8CA158(const char *a1, void *a2)
{
  swift_getKeyPath(a1);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  return *(v2 + *a2);
}

uint64_t sub_21C8CA21C@<X0>(const char *a1@<X3>, uint64_t *a2@<X0>, void *a3@<X4>, _BYTE *a4@<X8>, ...)
{
  v6 = *a2;
  swift_getKeyPath(a1);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_21C8CA328(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  sub_21C7A32E8(a1, v1 + v6, &unk_27CDEBE60, &unk_21CB9FF40);
  swift_endAccess();
  swift_getKeyPath(byte_21CBAD6E8);
  v10 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  sub_21C6EDBAC(v1 + v6, v5, &unk_27CDEBE60, &unk_21CB9FF40);
  v7 = type metadata accessor for PMAccount(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
    a1 = v5;
  }

  else
  {
    sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C716FCC();
  }

  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C8CA504(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_21C6EDBAC(a2, &v7 - v4, &unk_27CDEBE60, &unk_21CB9FF40);
  return sub_21C8CA328(v5);
}

uint64_t sub_21C8CA5B8()
{
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  sub_21C72A574(v1);
  return v1;
}

uint64_t sub_21C8CA680()
{
  swift_getKeyPath(byte_21CBADEA8);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError))
  {
    if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showExportErrorDialog) == 1)
    {
      *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showExportErrorDialog) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_21CBADED0);
      MEMORY[0x28223BE20](KeyPath);
      sub_21CB810C4();
    }
  }

  return result;
}

void *sub_21C8CA7DC()
{
  swift_getKeyPath(byte_21CBADEA8);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError);
  v2 = v1;
  return v1;
}

uint64_t sub_21C8CA890(uint64_t a1, id a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError) = a2;
  v3 = a2;

  return sub_21C8CA680();
}

uint64_t sub_21C8CA8F8(const char *a1, void *a2)
{
  swift_getKeyPath(a1);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();
}

uint64_t sub_21C8CA99C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel) = a2;
}

uint64_t sub_21C8CA9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PMAddAccountModel.Configuration(0);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath(byte_21CBAD9E8, v9);
  v18 = v3;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  if (!*(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel))
  {
    sub_21C710710(a1, v11, type metadata accessor for PMAddAccountModel.Configuration);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    type metadata accessor for PMAddAccountModel(0);
    swift_allocObject();

    v15 = sub_21C848014(v11, sub_21C8D76F8, v14);
    KeyPath = swift_getKeyPath(byte_21CBAD9E8);
    MEMORY[0x28223BE20](KeyPath);
    *(&v17 - 2) = v4;
    *(&v17 - 1) = v15;
    v18 = v4;
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8CAC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v66 = type metadata accessor for PMAppSourceListModel.Source(0);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v61);
  v63 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = v57 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v16 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v19 - 8);
  v62 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v57 - v22;
  v24 = sub_21CB85114();
  v25 = *(v24 - 8);
  *&v26 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v28 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v65 = v3;
    if (a1 == 2)
    {
      swift_getKeyPath(byte_21CBAD860, v26);
      v29 = v65;
      v68 = v65;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810D4();

      if (*(v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact) == 1)
      {
        (*(v64 + 56))(v10, 1, 1, v66);
        return sub_21C742C88(v10);
      }

LABEL_9:
      v31 = v66;
      swift_storeEnumTagMultiPayload();
      (*(v64 + 56))(v10, 0, 1, v31);
      return sub_21C742C88(v10);
    }

    swift_getKeyPath(byte_21CBAD888, v26);
    v32 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
    v68 = a3;
    v57[1] = sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    v57[2] = v32;
    sub_21CB810D4();

    v33 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
    swift_beginAccess();
    (*(v25 + 16))(v28, a3 + v33, v24);
    LOBYTE(v33) = sub_21C8CC47C(v28);
    (*(v25 + 8))(v28, v24);
    if (v33)
    {
      sub_21C880484(MEMORY[0x277D84FA0]);
    }

    v34 = sub_21C71699C();
    v35 = v23;
    v36 = v15;
    v37 = v66;
    if (v34)
    {
      swift_getKeyPath(byte_21CBAD8B0);
      sub_21CB81DB4();

      if (v67[0] == 1)
      {
        v38 = sub_21CA4DE84();
        v39 = [v38 hasChanges];

        if (v39)
        {
          return sub_21C8CCD5C(a1, v58);
        }
      }

      else
      {
      }
    }

    v40 = sub_21CB85C44();
    v41 = *(v40 - 8);
    v42 = *(v41 + 56);
    v42(v35, 1, 1, v40);
    sub_21C710710(a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v18, type metadata accessor for PMAppAccountsListModel.Configuration);
    if ((*(v41 + 48))(v18, 4, v40))
    {
      sub_21C7192A0(v18, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      sub_21C6EA794(v35, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v41 + 32))(v35, v18, v40);
      v42(v35, 0, 1, v40);
    }

    *v67 = a3;
    sub_21CB810D4();

    v43 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
    v44 = *(v65 + 64);
    swift_getKeyPath(byte_21CBAD718);
    *v67 = v44;
    sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);

    sub_21CB810D4();

    v45 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
    swift_beginAccess();
    swift_storeEnumTagMultiPayload();
    v46 = v64;
    (*(v64 + 56))(v36, 0, 1, v37);
    v47 = *(v61 + 48);
    v48 = v44 + v45;
    v49 = v63;
    sub_21C6EDBAC(v48, v63, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EDBAC(v36, v49 + v47, &qword_27CDEAC20, &qword_21CBAD710);
    v50 = *(v46 + 48);
    if (v50(v49, 1, v37) == 1)
    {
      sub_21C6EA794(v36, &qword_27CDEAC20, &qword_21CBAD710);
      if (v50(v49 + v47, 1, v37) == 1)
      {
        v51 = 0x8000000000000008;
        sub_21C6EA794(v49, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_28:
        v53 = v62;
        sub_21C6EDBAC(v35, v62, &unk_27CDF20B0, &unk_21CBA0090);
        type metadata accessor for PMMultipleAccountsDetailsModel(0);
        swift_allocObject();
        v54 = sub_21CA770B0(v43, v51, v53);
        sub_21C8D75F0(v51);
        sub_21C8C7C18(v54);
        return sub_21C6EA794(v35, &unk_27CDF20B0, &unk_21CBA0090);
      }
    }

    else
    {
      v52 = v60;
      sub_21C6EDBAC(v49, v60, &qword_27CDEAC20, &qword_21CBAD710);
      if (v50(v49 + v47, 1, v37) != 1)
      {
        v55 = v59;
        sub_21C8D88C8(v49 + v47, v59, type metadata accessor for PMAppSourceListModel.Source);
        v56 = sub_21C918FE4(v52, v55);
        sub_21C7192A0(v55, type metadata accessor for PMAppSourceListModel.Source);
        sub_21C6EA794(v36, &qword_27CDEAC20, &qword_21CBAD710);
        sub_21C7192A0(v52, type metadata accessor for PMAppSourceListModel.Source);
        sub_21C6EA794(v49, &qword_27CDEAC20, &qword_21CBAD710);
        if (v56)
        {
          v51 = 0x8000000000000008;
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      sub_21C6EA794(v36, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C7192A0(v52, type metadata accessor for PMAppSourceListModel.Source);
    }

    sub_21C6EA794(v49, &unk_27CDED310, &unk_21CBA0150);
LABEL_27:
    v51 = 0x8000000000000000;
    goto LABEL_28;
  }

  return sub_21C8C77C0();
}

uint64_t sub_21C8CB690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = sub_21C8CB6F4(v4, a2, a3, a4);
    *(v4 + v5) = v7;
  }

  return v7;
}

uint64_t sub_21C8CB6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85C44();
  (*(*(v9 - 8) + 56))(v8, a2, 4, v9);
  type metadata accessor for PMAppAccountsListModel(0);
  swift_allocObject();
  v10 = sub_21C70FDD0(v8);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = (v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  *v14 = a4;
  v14[1] = v13;

  v17[1] = v10;
  sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v15 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  sub_21C8CB938(MEMORY[0x277D84FA0], v15, v11, v12);

  return v10;
}

uint64_t sub_21C8CB938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_getKeyPath(byte_21CBAD830);
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

      sub_21CB810D4();

      v10 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if ((v10 >> 61) > 2 || v10 >> 61)
      {
      }

      else
      {

        if (v9 == v10)
        {
          sub_21C8CAC28(a1, a2, v9);
          sub_21C718CB4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21C8CBACC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21C8CBB34(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_21CB85C44();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for PMGroupInvitationsListModel(0);
  swift_allocObject();
  v5 = sub_21C9C6E08(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = (v5 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
  *v9 = sub_21C8D7794;
  v9[1] = v8;

  return v5;
}

uint64_t sub_21C8CBCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_getKeyPath(byte_21CBAD830);
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

      sub_21CB810D4();

      v8 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if (v8 >> 61 == 1)
      {

        if (v7 == (v8 & 0x1FFFFFFFFFFFFFFFLL))
        {
          sub_21C8CBE2C(a1);
          sub_21C718CB4();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21C8CBE2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMGroupInvitationsListModel.Action(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C710710(a1, v18, type metadata accessor for PMGroupInvitationsListModel.Action);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    v19 = *(v1 + 64);
    v28[1] = v19;
    sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810D4();

    v20 = *(v19 + 17);
    if (v20 == 2)
    {
      v21 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
      v22 = v8;
    }

    else
    {
      v26 = type metadata accessor for PMAppSourceListModel.Source(0);
      if (v20)
      {
        swift_storeEnumTagMultiPayload();
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*(*(v26 - 8) + 56))(v5, v27, 1, v26);
      v22 = v5;
    }

    return sub_21C742C88(v22);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v23 = *(v13 + 16);
    v23(v11, v15, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_21C8C89DC(v11);
    v23(v8, v15, v12);
    v24 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    sub_21C742C88(v8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_21C8CC278(uint64_t a1)
{
  v1 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB85C44();
  (*(*(v4 - 8) + 56))(v3, 1, 2, v4);
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  swift_allocObject();
  v5 = sub_21CAEBA7C(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = (v5 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
  *v9 = sub_21C8D77EC;
  v9[1] = v8;

  swift_getKeyPath(byte_21CBADA90);
  sub_21CB81DB4();

  sub_21C8D70D4(v6, v7);

  return v5;
}

uint64_t sub_21C8CC47C(uint64_t a1)
{
  v2 = v1;
  v14[1] = a1;
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBAD9C0, v5);
  v15 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v8 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing;
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing))
  {
    v9 = *(v4 + 104);
    v9(v7, *MEMORY[0x277CDF0D8], v3);
    v10 = sub_21CB850F4();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v10 = 0;
    v9 = *(v4 + 104);
  }

  v9(v7, *MEMORY[0x277CDF0D0], v3);
  v11 = sub_21CB850F4() & 1;
  (*(v4 + 8))(v7, v3);
  if (v11 == *(v2 + v8))
  {
    *(v2 + v8) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAD9C0);
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v2;
    LOBYTE(v14[-1]) = v11;
    v15 = v2;
    sub_21CB810C4();
  }

  swift_getKeyPath(byte_21CBAD860);
  v15 = v2;
  sub_21CB810D4();

  return *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact) & v10 & 1;
}

uint64_t sub_21C8CC74C(uint64_t a1)
{
  type metadata accessor for PMAppSecurityRecommendationsModel(0);
  swift_allocObject();
  v1 = sub_21C903D88();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  swift_getKeyPath(byte_21CBADB00);
  sub_21C71B720(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

  sub_21CB810C4();

  return v1;
}

uint64_t sub_21C8CC8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21CB85114();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26[-v11 - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v16 = Strong;
    v25 = v7;
    swift_getKeyPath(byte_21CBAD830);
    *v26 = v14;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

    sub_21CB810D4();

    v17 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    if (v17 >> 61 != 3)
    {

      goto LABEL_11;
    }

    if (v16 == (v17 & 0x1FFFFFFFFFFFFFFFLL))
    {
      if (sub_21C71699C())
      {
        swift_getKeyPath(byte_21CBAD8B0);
        sub_21CB81DB4();

        if (v26[0] == 1)
        {
          v18 = sub_21CA4DE84();
          v19 = [v18 hasChanges];

          if (v19)
          {
            sub_21C8CCD5C(a1, a2);
            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      v20 = sub_21CB85C44();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
      type metadata accessor for PMMultipleAccountsDetailsModel(0);
      swift_allocObject();

      v22 = sub_21CA770B0(v21, v16, v12);

      sub_21C8C7C18(v22);
      swift_getKeyPath(byte_21CBADB28);
      *v26 = v16;
      sub_21C71B720(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
      sub_21CB810D4();

      v23 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
      swift_beginAccess();
      v24 = v25;
      (*(v25 + 16))(v9, v16 + v23, v6);
      LOBYTE(v23) = sub_21C8CC47C(v9);
      (*(v24 + 8))(v9, v6);
      if (v23)
      {
        sub_21C901AD4(MEMORY[0x277D84FA0]);
      }

      sub_21C718CB4();
    }

LABEL_11:
  }

  return result;
}

uint64_t sub_21C8CCD5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__didShowUncommittedChangesAlert);
  if (v6 == 1)
  {
    sub_21CB810C4();
  }

  sub_21CB810C4();

  swift_getKeyPath(byte_21CBAD830);
  sub_21CB810D4();

  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  v9 = v8 >> 61;
  if ((v8 >> 61) > 6)
  {
LABEL_10:
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = a2;
    swift_retain_n();

    sub_21C8CEA34(sub_21C8D7668, v15);

    sub_21C880484(v16);
  }

  if (((1 << v9) & 0x66) != 0)
  {
    return result;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v8 & 0x1FFFFFFFFFFFFFFFLL;
      *(v12 + 24) = a2;
      swift_retain_n();

      sub_21C8CEA34(sub_21C8D7624, v12);

      v13 = sub_21C713194(a1);
      sub_21CB70C48(v13, v14);
    }

    goto LABEL_10;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v8 & 0x1FFFFFFFFFFFFFFFLL;
  *(v10 + 24) = a2;
  swift_retain_n();

  sub_21C8CEA34(sub_21C8D7650, v10);

  sub_21C901AD4(v11);
}

void *sub_21C8CD0AC(uint64_t a1)
{
  type metadata accessor for PMVerificationCodesListModel(0);
  swift_allocObject();
  v1 = sub_21CB72E64();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  swift_getKeyPath(byte_21CBADC28);
  sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);

  sub_21CB810C4();

  return v1;
}

uint64_t sub_21C8CD24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v16 = Strong;
    swift_getKeyPath(byte_21CBAD830);
    v31 = v14;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

    sub_21CB810D4();

    v17 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    v18 = v17 >> 61;
    if ((v17 >> 61) > 2 && v18 <= 4 && v18 != 3)
    {

      if (v16 != (v17 & 0x1FFFFFFFFFFFFFFFLL))
      {
LABEL_21:
      }

      if (sub_21C71699C())
      {
        swift_getKeyPath(byte_21CBAD8B0);
        sub_21CB81DB4();

        if (v31 == 1)
        {
          v19 = sub_21CA4DE84();
          v20 = [v19 hasChanges];

          if (v20 && a2)
          {
            if (a4)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
              inited = swift_initStackObject();
              v30 = xmmword_21CBA0690;
              *(inited + 16) = xmmword_21CBA0690;
              *(inited + 32) = a1;
              *(inited + 40) = a2;

              v22 = sub_21C8D7470(inited);
              swift_setDeallocating();
              sub_21C81A534(inited + 32);
              v23 = swift_initStackObject();
              *(v23 + 16) = v30;
              *(v23 + 32) = a3;
              v24 = v23 + 32;
              *(v23 + 40) = a4;
              v25 = sub_21C8D7470(v23);
              swift_setDeallocating();
              sub_21C81A534(v24);
              sub_21C8CCD5C(v22, v25);
            }

            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      if (a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_21CBA0690;
        *(v26 + 32) = a3;
        *(v26 + 40) = a4;

        v27 = sub_21C8D7470(v26);
        swift_setDeallocating();
        sub_21C81A534(v26 + 32);
LABEL_20:
        v28 = sub_21CB85C44();
        (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
        type metadata accessor for PMMultipleAccountsDetailsModel(0);
        swift_allocObject();
        v29 = sub_21CA770B0(v27, 0x8000000000000010, v12);
        sub_21C8D75F0(0x8000000000000010);
        sub_21C8C7C18(v29);
        sub_21C718CB4();
        goto LABEL_21;
      }

LABEL_19:
      v27 = MEMORY[0x277D84FA0];
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21C8CD6A8(uint64_t a1)
{
  type metadata accessor for PMWiFiListModel(0);
  swift_allocObject();
  v1 = sub_21C8624B4();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_21C71B720(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);

  sub_21CB810C4();

  return v1;
}

uint64_t sub_21C8CD848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_getKeyPath(byte_21CBAD830);
      v17 = v8;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

      sub_21CB810D4();

      v11 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if (v11 >> 61 == 5)
      {

        if (v10 == (v11 & 0x1FFFFFFFFFFFFFFFLL))
        {
          v17 = v10;
          sub_21C71B720(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
          sub_21CB810D4();

          v12 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
          swift_beginAccess();
          (*(v4 + 16))(v6, v10 + v12, v3);
          LOBYTE(v12) = sub_21C8CC47C(v6);
          (*(v4 + 8))(v6, v3);
          if (v12)
          {
            sub_21C86234C(MEMORY[0x277D84FA0]);
          }

          swift_getKeyPath(byte_21CBADC00);
          v16 = v10;
          sub_21CB810D4();

          v13 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

          v14 = sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel, sub_21C8CD6A8);
          type metadata accessor for PMMultipleWiFiDetailsModel(0);
          v15 = swift_allocObject();
          *(v15 + 32) = 0;
          *(v15 + 40) = 0;
          *(v15 + 48) = MEMORY[0x277D84FA0];
          *(v15 + 56) = swift_getKeyPath(byte_21CBAD740);
          sub_21CB81104();
          *(v15 + 16) = v13;
          *(v15 + 24) = v14;

          sub_21CAF9EAC();

          sub_21C8C7C18(v15 | 0x4000000000000000);
          sub_21C718CB4();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21C8CDC0C()
{
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C8CDCCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C8CDD94(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, ...)
{
  swift_getKeyPath(a5);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();
}

uint64_t sub_21C8CDE50(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_21C8CDED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for PMAccount(0);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
  v24[0] = v2;
  v13 = sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v15 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount;
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) == 1)
  {
    v21[1] = v13;
    v21[2] = v12;
    v16 = *(v2 + 40);
    v17 = qword_27CDEA4C0;

    if (v17 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v16, v24[0]);

    swift_getKeyPath(byte_21CBADD60);
    swift_getKeyPath(byte_21CBADD88);
    sub_21CB81DB4();

    v19 = v24[0];
    v24[0] = v22;
    v24[1] = v23;
    MEMORY[0x28223BE20](v18);
    v21[-2] = v24;
    sub_21C968D04(sub_21C7AE738, v19, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    else
    {
      sub_21C8D88C8(v6, v11, type metadata accessor for PMAccount);
      if (*(v3 + v15))
      {
        MEMORY[0x28223BE20](KeyPath);
        v21[-2] = v3;
        LOBYTE(v21[-1]) = 0;
        v24[0] = v3;
        sub_21CB810C4();
      }

      else
      {
        *(v3 + v15) = 0;
      }

      sub_21C8C7090(v11);
      return sub_21C7192A0(v11, type metadata accessor for PMAccount);
    }
  }

  return result;
}

uint64_t sub_21C8CE2A8(uint64_t a1)
{
  v36 = a1;
  v33 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v35 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  *&v16 = MEMORY[0x28223BE20](v15 - 8).n128_u64[0];
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBAD830, v16);
  v37 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v19 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  if (v19 >> 61)
  {
    v22 = 0;
  }

  else
  {
    v20 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration;
    v32 = v13;
    v21 = *(v13 + 56);
    v21(v18, 1, 4, v12);

    v31 = v20;
    LOBYTE(v20) = sub_21C71382C(v19 + v20, v18);
    sub_21C7192A0(v18, type metadata accessor for PMAppAccountsListModel.Configuration);
    if (v20)
    {

      v22 = 1;
    }

    else
    {
      v24 = type metadata accessor for PMAccount(0);
      sub_21C710710(v36 + *(v24 + 24), v5, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v30 = v21;
      if (EnumCaseMultiPayload == 1)
      {
        v26 = v34;
        sub_21C8D88C8(v5, v34, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v26 + *(v33 + 72), v8, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C7192A0(v26, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v27 = *v5;
        sub_21CB85B94();
      }

      sub_21C716934(v8, v11, &unk_27CDF20B0, &unk_21CBA0090);
      v28 = v32;
      if ((*(v32 + 48))(v11, 1, v12) == 1)
      {
        sub_21C6EA794(v11, &unk_27CDF20B0, &unk_21CBA0090);
        v30(v18, 3, 4, v12);
        v22 = sub_21C71382C(v19 + v31, v18);

        sub_21C7192A0(v18, type metadata accessor for PMAppAccountsListModel.Configuration);
      }

      else
      {
        v29 = v35;
        (*(v28 + 32))(v35, v11, v12);
        (*(v28 + 16))(v18, v29, v12);
        v30(v18, 0, 4, v12);
        v22 = sub_21C71382C(v19 + v31, v18);

        sub_21C7192A0(v18, type metadata accessor for PMAppAccountsListModel.Configuration);
        (*(v28 + 8))(v29, v12);
      }
    }
  }

  return v22 & 1;
}

uint64_t sub_21C8CE7FC(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) == 1)
      {
        *(Strong + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) = 1;
      }

      else
      {
        MEMORY[0x28223BE20](KeyPath);
        sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
        sub_21CB810C4();
      }
    }
  }

  return (a3)(a1 & 1, a2);
}

uint64_t sub_21C8CE988(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_21C6EDBAC(a2, &v7 - v4, &qword_27CDEAC20, &qword_21CBAD710);
  return sub_21C742C88(v5);
}

uint64_t sub_21C8CEA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB853D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85404();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21C71699C();
  if (result)
  {
    v13 = (result + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
    v15 = *(result + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
    v14 = *(result + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation + 8);
    *v13 = a1;
    v13[1] = a2;
    v16 = result;
    sub_21C71B710(v15, v14);
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);

    v17 = sub_21CB85CF4();
    v21 = v16;
    v22 = v17;
    aBlock[4] = sub_21C8D76BC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_10;
    v18 = _Block_copy(aBlock);
    v23 = v8;
    v19 = v18;

    sub_21CB853E4();
    v24 = MEMORY[0x277D84F90];
    sub_21C71B720(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    v20 = v22;
    MEMORY[0x21CF15800](0, v11, v7, v19);
    _Block_release(v19);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v23);
  }

  return result;
}

uint64_t sub_21C8CED50(uint64_t a1)
{
  swift_getKeyPath(byte_21CBAD950);

  return sub_21CB81DC4();
}

uint64_t sub_21C8CEDC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21CB81024();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBAD830, v13);
  v32 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v16 = 0;
  v17 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  v18 = v17 >> 61;
  if ((v17 >> 61) <= 2)
  {
    v30 = v6;
    if (v18)
    {
      if (v18 != 2)
      {
        return v16;
      }

LABEL_13:

      goto LABEL_14;
    }

    sub_21C710710(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v15, type metadata accessor for PMAppAccountsListModel.Configuration);
    v19 = v30;
    v20 = (*(v30 + 48))(v15, 4, v5);
    if (v20)
    {
      if (v20 == 2)
      {
        goto LABEL_13;
      }

      sub_21C7192A0(v15, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      (*(v19 + 32))(v8, v15, v5);
      v22 = *(v1 + 48);
      v23 = qword_27CDEA4C0;

      if (v23 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7073E8(v22, v32);

      sub_21CA1D444(v8, v4);

      v24 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v24 - 8) + 48))(v4, 1, v24) != 1)
      {
        v25 = &v4[*(v24 + 20)];
        v27 = *v25;
        v26 = *(v25 + 1);

        sub_21C7192A0(v4, type metadata accessor for PMSharingGroup);
        sub_21CB81014();
        sub_21CB81004();
        (*(v9 + 8))(v11, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_21CBA0690;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_21C7C0050();
        *(v28 + 32) = v27;
        *(v28 + 40) = v26;
        v16 = sub_21CB85594();

        (*(v30 + 8))(v8, v5);
        return v16;
      }

      (*(v30 + 8))(v8, v5);
      sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
    }

    return 0;
  }

  if (v18 == 3 || v18 == 4)
  {
    goto LABEL_13;
  }

  if (v18 == 5)
  {

    MGGetBoolAnswer();
LABEL_14:
    sub_21CB81014();
    v16 = sub_21CB81004();

    (*(v9 + 8))(v11, v31);
  }

  return v16;
}

uint64_t sub_21C8CF458(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C8CDED4(v2, v3);
  }

  return result;
}

uint64_t sub_21C8CF4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v58 - v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v66 = *(v12 - 8);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v58 - v15;
  v16 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  v28 = sub_21CB85C44();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PMAccount(0);
  sub_21C710710(a2 + *(v32 + 24), v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8D88C8(v21, v18, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v18[*(v16 + 72)], v24, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7192A0(v18, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v33 = *v21;
    sub_21CB85B94();
  }

  sub_21C716934(v24, v27, &unk_27CDF20B0, &unk_21CBA0090);
  v34 = v29;
  v35 = *(v29 + 48);
  v36 = v28;
  if (v35(v27, 1, v28) == 1)
  {
    return sub_21C6EA794(v27, &unk_27CDF20B0, &unk_21CBA0090);
  }

  (*(v34 + 32))(v31, v27, v28);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v34 + 8))(v31, v28);
    v41 = v64;
    (*(v66 + 56))(v64, 1, 1, v67);
    return sub_21C6EA794(v41, &qword_27CDEFEB8, &unk_21CBADD00);
  }

  v39 = *(Strong + 48);
  v40 = qword_27CDEA4C0;

  v41 = v64;
  if (v40 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v39, v71);

  swift_getKeyPath(byte_21CBADD38);
  sub_21CB81DB4();

  if ((*(v66 + 48))(v41, 1, v67) == 1)
  {
    (*(v34 + 8))(v31, v36);
    return sub_21C6EA794(v41, &qword_27CDEFEB8, &unk_21CBADD00);
  }

  v42 = v63;
  sub_21C716934(v41, v63, &qword_27CDEFEC0, &qword_21CBC32C0);
  sub_21C71B720(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v71 == v69 && v72 == v70)
  {
  }

  else
  {
    v43 = sub_21CB86344();

    if ((v43 & 1) == 0)
    {
      sub_21C6EA794(v42, &qword_27CDEFEC0, &qword_21CBC32C0);
      return (*(v34 + 8))(v31, v36);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v44 = v59;
    (*(v34 + 16))(v59, v31, v36);
    v45 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    sub_21C742C88(v44);
  }

  v46 = v62;
  sub_21C6EDBAC(v42, v62, &qword_27CDEFEC0, &qword_21CBC32C0);
  v47 = (v46 + *(v67 + 48));
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    v64 = *(v34 + 8);
    (v64)(v46, v36);
    swift_beginAccess();
    v50 = swift_weakLoadStrong();
    if (v50)
    {
      v51 = v50;
      swift_getKeyPath(byte_21CBAD830);
      v69 = v51;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810D4();

      v52 = *(v51 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

      if (!(v52 >> 61))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21CBA0690;
        *(inited + 32) = v49;
        *(inited + 40) = v48;

        v54 = sub_21C8D7470(inited);
        swift_setDeallocating();
        sub_21C81A534(inited + 32);
        sub_21C880484(v54);

        sub_21C884F9C(v49, v48);
      }

      v42 = v63;
    }

    else
    {
    }
  }

  else
  {
    v64 = *(v34 + 8);
    (v64)(v46, v36);
  }

  swift_beginAccess();
  v55 = swift_weakLoadStrong();
  if (v55)
  {
    v56 = *(v55 + 48);

    sub_21CB86544();
    v65 = sub_21C7073E8(v56, v68);

    v57 = v60;
    (*(v66 + 56))(v60, 1, 1, v67);
    swift_getKeyPath(byte_21CBADD38);
    sub_21C6EDBAC(v57, v61, &qword_27CDEFEB8, &unk_21CBADD00);
    sub_21CB81DC4();
    sub_21C6EA794(v57, &qword_27CDEFEB8, &unk_21CBADD00);
  }

  sub_21C6EA794(v42, &qword_27CDEFEC0, &qword_21CBC32C0);
  return (v64)(v31, v36);
}

uint64_t *sub_21C8D003C()
{
  sub_21C71B710(*(v0 + 16), *(v0 + 24));

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__safariViewControllerURL, &qword_27CDEFEE8, &unk_21CBADDE0);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation, &unk_27CDF20B0, &unk_21CBA0090);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C72A584(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow));

  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21C8D0214()
{
  sub_21C8D003C();

  return swift_deallocClassInstance();
}

unint64_t get_enum_tag_for_layout_string_17PasswordManagerUI24PMAppRootNavigationModelC6DetailO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI24PMAppRootNavigationModelC7ContentO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_21C8D02C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C8D031C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21C8D037C(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_21C8D03AC()
{
  result = qword_27CDEFE48;
  if (!qword_27CDEFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFE48);
  }

  return result;
}

unint64_t sub_21C8D0404()
{
  result = qword_27CDEFE50;
  if (!qword_27CDEFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFE50);
  }

  return result;
}

unint64_t sub_21C8D045C()
{
  result = qword_27CDEFE58;
  if (!qword_27CDEFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFE58);
  }

  return result;
}

uint64_t sub_21C8D04B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBADB28);
  sub_21C71B720(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21C8D05C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_21CB85114();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return a5(v10);
}

uint64_t sub_21C8D06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_21C6EDBAC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_21C8D0768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21C8D0874(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C6EDBAC(a1, &v10 - v7, &qword_27CDEFEB8, &unk_21CBADD00);
  swift_getKeyPath(byte_21CBADD38);
  sub_21C6EDBAC(v8, v5, &qword_27CDEFEB8, &unk_21CBADD00);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &qword_27CDEFEB8, &unk_21CBADD00);
}

uint64_t sub_21C8D09CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAD970);
  sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  return sub_21C710710(v3 + v4, a2, type metadata accessor for PMMultipleAccountsDetailsModel.State);
}

uint64_t sub_21C8D0AA8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C710710(a1, v6, type metadata accessor for PMMultipleAccountsDetailsModel.State);
  v7 = *a2;
  swift_getKeyPath(byte_21CBAD970);
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810C4();

  return sub_21C7192A0(v6, type metadata accessor for PMMultipleAccountsDetailsModel.State);
}

uint64_t sub_21C8D0BF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21C71B720(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810D4();

  v4 = *(v3 + 32);
  *a2 = v4;
  v5 = *(v3 + 40);
  *(a2 + 8) = v5;
  return sub_21C8D7854(v4, v5);
}

uint64_t sub_21C8D0CAC(uint64_t *a1, uint64_t *a2)
{
  sub_21C71B720(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810C4();
}

uint64_t sub_21C8D0D80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAD760);
  sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_21C8D0E2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21CB70C48(v1, v2);
}

uint64_t sub_21C8D0E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF8, &qword_21CBADDF0);
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_21CB86474();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D10DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE80, &qword_21CBADB50);
  v37 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v39 = *v24;
      v40 = *v22;
      v38 = *(v24 + 16);
      v26 = *(v24 + 24);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v39;
      *(v17 + 8) = v25;
      *(v17 + 16) = v38;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D13B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A60, &qword_21CBADE58);
  v35 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}