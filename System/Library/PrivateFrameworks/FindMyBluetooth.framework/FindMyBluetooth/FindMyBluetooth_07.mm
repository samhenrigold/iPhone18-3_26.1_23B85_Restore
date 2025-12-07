uint64_t sub_24ACC82E0(uint64_t a1)
{
  v4 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v5 = v4[7];
    (*(v4[10] + 8))(v4[11], v4[9]);

    return MEMORY[0x2822009F8](sub_24ACC8870, v5, 0);
  }

  else
  {
    (*(v4[10] + 8))(v4[11], v4[9]);
    v4[5] = a1;
    v6 = swift_task_alloc();
    v4[19] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
    v4[20] = v8;
    v9 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0, MEMORY[0x277D83970]);
    *v6 = v4;
    v6[1] = sub_24ACC8530;

    return MEMORY[0x28215ED58](&unk_24ACD8D98, 0, v7, v8, v9);
  }
}

void sub_24ACC8530(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v4 + 56);

    *(v4 + 176) = a1;

    MEMORY[0x2822009F8](sub_24ACC867C, v5, 0);
  }
}

uint64_t sub_24ACC867C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[8];
  v4 = v0[6];
  *(swift_task_alloc() + 16) = v4;
  sub_24ACC457C(sub_24ACCE35C, v1, v3);

  if ((*(*(v2 - 8) + 48))(v3, 1, v2) == 1)
  {
    sub_24AC212F4(v0[8], &qword_27EF9EE50, &qword_24ACD8D88);
    v5 = 0;
  }

  else
  {
    v6 = v0[8];
    v5 = *(v6 + *(v0[20] + 48));
    v7 = sub_24ACD0090();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_24ACC8800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACC8870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACC88E0(uint64_t a1, uint64_t *a2)
{
  v2[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[6] = swift_task_alloc();
  v4 = sub_24ACD0090();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[9] = v5;
  v2[10] = v6;

  return MEMORY[0x2822009F8](sub_24ACC89DC, v6, 0);
}

uint64_t sub_24ACC89DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9E048, &qword_24ACD5910);

  return MEMORY[0x2822009F8](sub_24ACC8A88, 0, 0);
}

uint64_t sub_24ACC8A88()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_24AC212F4(v3, &qword_27EF9E048, &qword_24ACD5910);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[5];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
    v11 = *(v10 + 48);
    v9(v8, v7, v1);
    *(v8 + v11) = v6;
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24ACC8C48(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC8D14, v1, 0);
}

uint64_t sub_24ACC8D14()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v6 = v0[7];

    v0[11] = sub_24AC6562C(v7);

    v8 = *(v6 + 112);
    v0[12] = v8;
    v0[13] = *(v6 + 120);
    if (v8)
    {

      v11 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_24ACC8F34;
      v10 = v0[10];

      return v11(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  return result;
}

uint64_t sub_24ACC8F34()
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = v0;

  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {
    v6 = v2[7];
    sub_24AC1BFC8(v5, v4);

    return MEMORY[0x2822009F8](sub_24ACCFFAC, v6, 0);
  }

  else
  {
    sub_24AC1BFC8(v5, v4);
    v7 = swift_task_alloc();
    v2[16] = v7;
    v8 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90, MEMORY[0x277D858E0]);
    *v7 = v3;
    v7[1] = sub_24ACC9128;
    v9 = v2[8];

    return MEMORY[0x28215ED78](v9, v8);
  }
}

uint64_t sub_24ACC9128(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[8];
    v6 = v3[9];
    v7 = v3[7];
    (*(v6 + 8))(v4, v5);

    v8 = sub_24ACCFFB0;
    v9 = v7;
  }

  else
  {
    v10 = v3[7];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v8 = sub_24ACC9280;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_24ACC9280()
{
  v1 = v0[11];
  v0[5] = v0[17];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
  v5 = type metadata accessor for MockPeripheral(0);
  v6 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0, MEMORY[0x277D83970]);
  *v3 = v0;
  v3[1] = sub_24ACCFFA0;

  return MEMORY[0x28215ED58](&unk_24ACD8DC0, v2, v4, v5, v6);
}

uint64_t sub_24ACC93C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = *a2;
  v3[7] = v4;
  return MEMORY[0x2822009F8](sub_24ACC93EC, v4, 0);
}

uint64_t sub_24ACC93EC()
{
  v1 = (v0[7] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v0[8] = *v1;
  v0[9] = v1[1];

  return MEMORY[0x2822009F8](sub_24ACC948C, 0, 0);
}

uint64_t sub_24ACC948C()
{
  if (*(v0 + 72) && (v1 = sub_24AC794E0(*(v0 + 64), *(v0 + 72), *(v0 + 48)), , (v1 & 1) != 0))
  {
    **(v0 + 40) = *(v0 + 56);
  }

  else
  {
    **(v0 + 40) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ACC952C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC95F8, v1, 0);
}

uint64_t sub_24ACC95F8()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v6 = v0[7];

    v0[11] = sub_24AC656C4(v7);

    v8 = *(v6 + 112);
    v0[12] = v8;
    v0[13] = *(v6 + 120);
    if (v8)
    {

      v11 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_24ACC9818;
      v10 = v0[10];

      return v11(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  return result;
}

uint64_t sub_24ACC9818()
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = v0;

  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {
    v6 = v2[7];
    sub_24AC1BFC8(v5, v4);

    return MEMORY[0x2822009F8](sub_24ACCFFAC, v6, 0);
  }

  else
  {
    sub_24AC1BFC8(v5, v4);
    v7 = swift_task_alloc();
    v2[16] = v7;
    v8 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90, MEMORY[0x277D858E0]);
    *v7 = v3;
    v7[1] = sub_24ACC9A0C;
    v9 = v2[8];

    return MEMORY[0x28215ED78](v9, v8);
  }
}

uint64_t sub_24ACC9A0C(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[8];
    v6 = v3[9];
    v7 = v3[7];
    (*(v6 + 8))(v4, v5);

    v8 = sub_24ACCFFB0;
    v9 = v7;
  }

  else
  {
    v10 = v3[7];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v8 = sub_24ACC9B64;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_24ACC9B64()
{
  v1 = v0[11];
  v0[5] = v0[17];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
  v5 = type metadata accessor for MockPeripheral(0);
  v6 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0, MEMORY[0x277D83970]);
  *v3 = v0;
  v3[1] = sub_24ACCFFA0;

  return MEMORY[0x28215ED58](&unk_24ACD8DD8, v2, v4, v5, v6);
}

uint64_t sub_24ACC9CAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v3[7] = swift_task_alloc();
  v5 = sub_24ACD0420();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[10] = v6;
  v3[11] = v7;

  return MEMORY[0x2822009F8](sub_24ACC9DA8, v7, 0);
}

uint64_t sub_24ACC9DA8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9EC40, &qword_24ACD8620);

  return MEMORY[0x2822009F8](sub_24ACC9E54, 0, 0);
}

uint64_t sub_24ACC9E54()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_24AC212F4(v3, &qword_27EF9EC40, &qword_24ACD8620);
    *v4 = 0;
  }

  else
  {
    v5 = v0[10];
    v6 = v0[6];
    (*(v2 + 32))(v5, v3, v1);
    v7 = sub_24AC795D8(v5, v6);
    (*(v2 + 8))(v5, v1);
    if (v7)
    {
      *v0[5] = v0[11];
    }

    else
    {
      *v0[5] = 0;
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ACC9F98(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCA064, v1, 0);
}

uint64_t sub_24ACCA064()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v6 = v0[7];

    v0[11] = sub_24AC656C4(v7);

    v8 = *(v6 + 112);
    v0[12] = v8;
    v0[13] = *(v6 + 120);
    if (v8)
    {

      v11 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_24ACCA284;
      v10 = v0[10];

      return v11(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  return result;
}

uint64_t sub_24ACCA284()
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = v0;

  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {
    v6 = v2[7];
    sub_24AC1BFC8(v5, v4);

    return MEMORY[0x2822009F8](sub_24ACCA874, v6, 0);
  }

  else
  {
    sub_24AC1BFC8(v5, v4);
    v7 = swift_task_alloc();
    v2[16] = v7;
    v8 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90, MEMORY[0x277D858E0]);
    *v7 = v3;
    v7[1] = sub_24ACCA478;
    v9 = v2[8];

    return MEMORY[0x28215ED78](v9, v8);
  }
}

uint64_t sub_24ACCA478(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[8];
    v6 = v3[9];
    v7 = v3[7];
    (*(v6 + 8))(v4, v5);

    v8 = sub_24ACCA8D8;
    v9 = v7;
  }

  else
  {
    v10 = v3[7];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v8 = sub_24ACCA5D0;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_24ACCA5D0()
{
  v1 = v0[11];
  v0[5] = v0[17];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
  v5 = type metadata accessor for MockPeripheral(0);
  v6 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0, MEMORY[0x277D83970]);
  *v3 = v0;
  v3[1] = sub_24ACCA718;

  return MEMORY[0x28215ED58](&unk_24ACD8DF0, v2, v4, v5, v6);
}

void sub_24ACCA718(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v5 = *(v4 + 8);

    v5(a1);
  }
}

uint64_t sub_24ACCA874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACCA8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACCA93C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_24ACD0420();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[6] = v6;
  v3[7] = v7;

  return MEMORY[0x2822009F8](sub_24ACCAA04, 0, 0);
}

uint64_t sub_24ACCAA04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v5 = sub_24AC795D8(v1, v4);
  (*(v3 + 8))(v1, v2);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  **(v0 + 16) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24ACCAB10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7];
  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
    swift_beginAccess();
    sub_24AC2B5DC(v1 + v9, v8, &unk_27EF9E548, &qword_24ACD5870);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
    LODWORD(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10);
    sub_24AC212F4(v8, &unk_27EF9E548, &qword_24ACD5870);
    if (v9 == 1)
    {
      v11 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
      swift_beginAccess();
      sub_24AC2B5DC(v1 + v11, v5, &unk_27EF9E558, qword_24ACD5878);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
      LODWORD(v11) = (*(*(v12 - 8) + 48))(v5, 1, v12);
      sub_24AC212F4(v5, &unk_27EF9E558, qword_24ACD5878);
      if (v11 == 1)
      {
        return sub_24ACCAE2C(a1);
      }
    }
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24ACCAE2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E738, &qword_24ACD5E38);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  sub_24ACD07D0();
  (*(v9 + 8))(v11, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v7, a1, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  v18 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  swift_beginAccess();
  sub_24AC463C4(v7, v1 + v18, &unk_27EF9E548, &qword_24ACD5870);
  swift_endAccess();
  v19 = v22;
  (*(v13 + 16))(v22, v15, v12);
  (*(v13 + 56))(v19, 0, 1, v12);
  v20 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC463C4(v19, v1 + v20, &unk_27EF9E558, qword_24ACD5878);
  swift_endAccess();

  sub_24ACD07E0();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24ACCB20C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24ACD07C0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24AC7EA6C(0, 0, v5, &unk_24ACD90E8, v7);
}

uint64_t sub_24ACCB318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCB3F0, a4, 0);
}

uint64_t sub_24ACCB3F0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  swift_beginAccess();
  sub_24AC463C4(v1, v3 + v5, &unk_27EF9E548, &qword_24ACD5870);
  swift_endAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC463C4(v2, v3 + v7, &unk_27EF9E558, qword_24ACD5878);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t *MockCentralManager.deinit()
{
  sub_24AC1BFC8(*(v0 + 112), *(v0 + 120));

  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream, &unk_27EF9E548, &qword_24ACD5870);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation, &unk_27EF9E558, qword_24ACD5878);
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior + 16));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockCentralManager.__deallocating_deinit()
{
  MockCentralManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACCB6AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214BC;

  return sub_24ACCE14C();
}

uint64_t sub_24ACCB74C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACCB7E0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24ACCB800, v1, 0);
}

uint64_t sub_24ACCB800()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  *v1 = *(v2 + v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACCB888(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 25) = 5;
  type metadata accessor for MockCentralManager(0);
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_24ACA25F8;

  return MockCentralManager.init(options:initialState:)(v3, (v1 + 25));
}

uint64_t sub_24ACCB950(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCBA1C, v1, 0);
}

uint64_t sub_24ACCBA1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACCBB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC20274;

  return sub_24ACC602C(a1, v8, a3, a4);
}

uint64_t sub_24ACCBBC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC7DE0(a1);
}

uint64_t sub_24ACCBC5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC8C48(a1);
}

uint64_t sub_24ACCBCF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC952C(a1);
}

uint64_t sub_24ACCBD84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC9F98(a1);
}

uint64_t sub_24ACCBE18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24ACCBEA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24ACC4300();
}

uint64_t MockCentralManager.yield(connectionEvent:)(uint64_t a1)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B0, &qword_24ACD5D08);
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v12, v7, &unk_27EF9E558, qword_24ACD5878);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_24AC212F4(v7, &unk_27EF9E558, qword_24ACD5878);
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = sub_24ACD00C0();
  MEMORY[0x28223BE20](v14);
  v15 = v16;
  *(&v16 - 2) = v11;
  *(&v16 - 1) = v15;
  sub_24ACD00A0();
  (*(v17 + 8))(v4, v2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24ACCC238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  *v8 = a1;
  sub_24ACCF6EC(a3, v8 + v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  return sub_24ACD07F0();
}

uint64_t sub_24ACCC310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = sub_24ACD0AF0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCC3E0, a4, 0);
}

uint64_t sub_24ACCC3E0()
{
  v1 = (v0[5] + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v2 = *v1;
  v0[11] = *v1;
  v3 = v1[1];
  v0[12] = v3;
  v4 = v1[2];
  v0[13] = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    sub_24ACD0CB0();
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_24ACCC558;
  }

  else
  {
    sub_24ACD0CB0();
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_24ACCC6E0;
  }

  return sub_24AC59658(v2, v3, 0, 0, 1);
}

uint64_t sub_24ACCC558()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_24ACCFFB4;
  }

  else
  {
    v7 = sub_24ACCC8D8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24ACCC6E0()
{
  v2 = *v1;
  v3 = *v1;
  v2[17] = v0;

  v4 = v2[10];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {
    v7 = v2[5];
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_24ACCFFB8, v7, 0);
  }

  else
  {
    v8 = v2[6];
    (*(v5 + 8))(v4, v6);
    v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
    v10 = swift_task_alloc();
    v2[18] = v10;
    *v10 = v3;
    v10[1] = sub_24ACCFFD4;

    return sub_24ACCCAFC(v8 + v9);
  }
}

uint64_t sub_24ACCC8D8()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24ACCC998;

  return sub_24ACCCE38(v2 + v3, v1 & 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_24ACCC998()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 40);

  sub_24AC56E90(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_24ACCFFDC, v4, 0);
}

uint64_t sub_24ACCCAFC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_24ACCCB1C, v1, 0);
}

uint64_t sub_24ACCCB1C()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_24AC2AC60(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      v0[10] = v6;

      return MEMORY[0x2822009F8](sub_24ACCCC0C, v6, 0);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24ACCCC0C()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v2) = 3;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_24ACCCCC8;

  return sub_24AC6B4B0();
}

uint64_t sub_24ACCCCC8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_24ACCCDD8, v1, 0);
}

uint64_t sub_24ACCCDD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACCCE38(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCCF08, v2, 0);
}

uint64_t sub_24ACCCF08()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16))
  {
    v3 = v0[11];

    v4 = sub_24AC2AC60(v3);
    if (v5)
    {
      v7 = v0[15];
      v6 = v0[16];
      v8 = v0[14];
      v9 = *(*(v2 + 56) + 8 * v4);
      v0[17] = v9;

      (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v8);
      swift_beginAccess();
      sub_24AC7F4EC(0, v6);
      swift_endAccess();

      return MEMORY[0x2822009F8](sub_24ACCD074, v9, 0);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ACCD074()
{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_24ACCD140;
  v4 = v0[12];

  return sub_24AC6B820(v4);
}

uint64_t sub_24ACCD140()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_24ACCD250, v1, 0);
}

uint64_t sub_24ACCD250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACCD2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = sub_24ACD0AF0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCD388, a4, 0);
}

uint64_t sub_24ACCD388()
{
  v1 = (v0[5] + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v2 = *v1;
  v0[11] = *v1;
  v3 = v1[1];
  v0[12] = v3;
  v4 = v1[2];
  v0[13] = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    sub_24ACD0CB0();
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_24ACCD500;
  }

  else
  {
    sub_24ACD0CB0();
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_24ACCD688;
  }

  return sub_24AC59658(v2, v3, 0, 0, 1);
}

uint64_t sub_24ACCD500()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_24ACCDCBC;
  }

  else
  {
    v7 = sub_24ACCDA20;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24ACCD688()
{
  v2 = *v1;
  v3 = *v1;
  v2[17] = v0;

  v4 = v2[10];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {
    v7 = v2[5];
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_24ACCD9B4, v7, 0);
  }

  else
  {
    v8 = v2[6];
    (*(v5 + 8))(v4, v6);
    v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
    v10 = swift_task_alloc();
    v2[18] = v10;
    *v10 = v3;
    v10[1] = sub_24ACCD884;

    return sub_24ACCDD34(v8 + v9, 0);
  }
}

uint64_t sub_24ACCD884()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24ACCD9B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACCDA20()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24ACCDAE0;

  return sub_24ACCDD34(v2 + v3, v1 & 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_24ACCDAE0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 40);

  sub_24AC56E90(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_24ACCDC44, v4, 0);
}

uint64_t sub_24ACCDC44()
{
  sub_24AC56E90(v0[11], v0[12], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ACCDCBC()
{
  sub_24AC56E90(v0[11], v0[12], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ACCDD34(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCDE04, v2, 0);
}

uint64_t sub_24ACCDE04()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16))
  {
    v3 = v0[11];

    v4 = sub_24AC2AC60(v3);
    if (v5)
    {
      v7 = v0[15];
      v6 = v0[16];
      v8 = v0[14];
      v9 = *(*(v2 + 56) + 8 * v4);
      v0[17] = v9;

      (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v8);
      swift_beginAccess();
      sub_24AC7F4EC(0, v6);
      swift_endAccess();

      return MEMORY[0x2822009F8](sub_24ACCDF70, v9, 0);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ACCDF70()
{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_24ACCE03C;
  v4 = v0[12];

  return sub_24AC6BBAC(v4);
}

uint64_t sub_24ACCE03C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_24ACCFFA4, v1, 0);
}

uint64_t sub_24ACCE168()
{
  if (qword_27EF9DC80 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF9EE28;
  *(v0 + 32) = qword_27EF9EE28;

  return MEMORY[0x2822009F8](sub_24ACCE200, v1, 0);
}

uint64_t sub_24ACCE200()
{
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 16) = 2;
    *(v0 + 24) = 1280;
    type metadata accessor for MockCentralManager(0);
    swift_allocObject();
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9F498;

    return sub_24ACC4F98(1, v4, (v0 + 25));
  }
}

uint64_t type metadata accessor for MockCentralManager(uint64_t a1)
{
  result = qword_27EF9EE98;
  if (!qword_27EF9EE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACCE38C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACC93C8(a1, a2, v6);
}

uint64_t sub_24ACCE43C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACC9CAC(a1, a2, v6);
}

uint64_t sub_24ACCE4EC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACCA93C(a1, a2, v6);
}

uint64_t sub_24ACCE608(void *a1)
{
  a1[1] = sub_24ACCF6A4(&qword_27EF9EE88, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
  a1[2] = sub_24ACCF6A4(&qword_27EF9E6E0, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
  result = sub_24ACCF6A4(&qword_27EF9EE90, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
  a1[3] = result;
  return result;
}

void sub_24ACCE704(uint64_t a1)
{
  sub_24AC542BC(319, &qword_2814AD000, &qword_27EF9E578, qword_24ACD8D30);
  if (v1 <= 0x3F)
  {
    sub_24AC542BC(319, &qword_2814AD008, &qword_27EF9E580, &qword_24ACD5890);
    if (v2 <= 0x3F)
    {
      sub_24ACCF628(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MockCentralManager.__allocating_init(options:initialState:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 456) + **(v2 + 456));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC1DF38;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MockCentralManager.isPaired(peripheral:)(uint64_t a1)
{
  v6 = (*(*v1 + 472) + **(*v1 + 472));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2A800;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.pair(peripheral:)(uint64_t a1)
{
  v6 = (*(*v1 + 480) + **(*v1 + 480));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.unpair(peripheral:)(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.stateStream()(uint64_t a1)
{
  v6 = (*(*v1 + 496) + **(*v1 + 496));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.scanForPeripherals(scanMode:garbageCollectInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 504) + **(*v4 + 504));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AC214AC;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripheral(macAddress:)(uint64_t a1)
{
  v6 = (*(*v1 + 520) + **(*v1 + 520));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2A800;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripherals(serialNumbers:)(uint64_t a1)
{
  v6 = (*(*v1 + 528) + **(*v1 + 528));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripherals(beaconIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 536) + **(*v1 + 536));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripherals(identifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 544) + **(*v1 + 544));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

void sub_24ACCF628(uint64_t a1)
{
  if (!qword_2814AE250)
  {
    type metadata accessor for CentralManager(255);
    v1 = sub_24ACCFFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814AE250);
    }
  }
}

uint64_t sub_24ACCF6A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ACCF6EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CentralManager.ConnectedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACCF750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24ACCB318(a1, v4, v5, v6);
}

uint64_t sub_24ACCF804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACCF874(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24ACC65A8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_24ACCF9BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24AC214AC;

  return sub_24ACC774C(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t sub_24ACCFB48(uint64_t a1)
{
  v3 = *(sub_24ACD0420() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24ACC57B4(a1, v4, v5);
}

uint64_t sub_24ACCFBBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24ACD0420() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24ACC5CC0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24ACCFD28(uint64_t a1)
{
  v4 = *(sub_24ACD0420() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24ACC5994(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24ACCFE20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24ACCD2B8(a1, v4, v5, v7, v6);
}

uint64_t sub_24ACCFEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24ACCC310(a1, v4, v5, v7, v6);
}