uint64_t SettingsSetting.deinit()
{
  sub_268D35038((v0 + 16));
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_268F5113C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_268F511A0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268F512DC()
{
  type metadata accessor for SettingsSetting(0);

  return sub_268F51328(v1);
}

uint64_t sub_268F51418@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_268F5113C();
}

uint64_t sub_268F51474(void *a1)
{
  sub_268F52588(a1, &v3);
  v2 = v3;

  sub_268F511A0(v2);
}

uint64_t sub_268F514DC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268F51550(uint64_t a1)
{
  v16 = a1;
  v20 = 0;
  v19 = 0;
  v9[1] = 0;
  v17 = sub_268F9A9C4();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v11 = v9 - v10;
  v20 = v4;
  type metadata accessor for SettingsSetting.Builder(v5);
  (*(v14 + 16))(v11, v16, v17);
  v6 = sub_268F51290(v11);
  v7 = v12;
  v13 = v6;
  v19 = v6;

  v18 = (*(v7 + 136))(v13);

  v21 = v18;

  (*(v14 + 8))(v16, v17);

  return v18;
}

uint64_t type metadata accessor for SettingsSetting.Builder(uint64_t a1)
{
  v2 = qword_280FE5E50;
  if (!qword_280FE5E50)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

BOOL sub_268F51730(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "identifier";
  *(v2 + 8) = 10;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

uint64_t sub_268F51808(uint64_t a1, uint64_t a2)
{

  if (sub_268F51730(a1, a2))
  {

    v3 = 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_268F51928()
{
  v2 = qword_2802DE5E8;
  if (!qword_2802DE5E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5E8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F51A74@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F51730(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F51AB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F51890();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268F51AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F51808(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t SettingsSetting.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  v5 = SettingsSetting.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

void (*sub_268F51D1C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 257);
  *a1 = v2;
  v2[4] = sub_268F5122C();
  return sub_268E93B70;
}

unint64_t sub_268F51DF8()
{
  v2 = qword_280FE5D80;
  if (!qword_280FE5D80)
  {
    type metadata accessor for SettingsSetting(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5D80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F51E90()
{
  v2 = qword_280FE5D88[0];
  if (!qword_280FE5D88[0])
  {
    type metadata accessor for SettingsSetting(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_280FE5D88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F51F10@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_268F52014(uint64_t a1)
{
  updated = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268F522E4(uint64_t a1)
{
  updated = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268F523E4()
{
  v2 = qword_2802DE5F0;
  if (!qword_2802DE5F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F52478()
{
  v2 = qword_280FE5E60;
  if (!qword_280FE5E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F5250C()
{
  v2 = qword_280FE5E68;
  if (!qword_280FE5E68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5E68);
    return WitnessTable;
  }

  return v2;
}

void *sub_268F52588(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t *sub_268F525C8()
{
  if (qword_280FE2BA8 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FD0;
}

uint64_t sub_268F52628()
{
  type metadata accessor for GetAXColorFiltersBlueYellowHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE7FD0 = result;
  return result;
}

uint64_t sub_268F52690()
{
  v1 = *sub_268F525C8();

  return v1;
}

double sub_268F526C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXColorFiltersBlueYellowHandler handling intent", 50, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBAB64();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F52B44, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F528DC(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3ECD4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268F52B9C()
{
  type metadata accessor for SetAXAutoBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1778 = result;
  return result;
}

uint64_t *sub_268F52C04()
{
  if (qword_2802DB8C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1778;
}

uint64_t sub_268F52C64()
{
  v1 = *sub_268F52C04();

  return v1;
}

uint64_t sub_268F52C94(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXAutoBrightnessHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D41E74();

  v4 = sub_268DBCFA4();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F52EB8, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F52EB8, v8);
}

uint64_t sub_268F52E48(char a1)
{

  sub_268D39F28(a1 & 1);
}

uint64_t *sub_268F52F04()
{
  if (qword_280FE63E8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8350;
}

uint64_t sub_268F52F64()
{
  type metadata accessor for GetSmartSiriVolumeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8350 = result;
  return result;
}

uint64_t sub_268F52FCC()
{
  v1 = *sub_268F52F04();

  return v1;
}

double sub_268F52FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetSmartSiriVolumeHandler handling intent", 41, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBBD54();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F53518, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F53214(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D44174();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

double sub_268F53570()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F5364C(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268F5368C, 0);
}

uint64_t sub_268F5368C()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v7 = sub_268F9AEF4();
  v8 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[7] = v9;
  v10 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = sub_268DB4E74;
  v3 = v6[4];

  return v10(v3, v7, v8, v9);
}

double sub_268F537E4()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F538A8(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  if (a3 == 2)
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  else
  {
    v10[17] = MEMORY[0x277D839B0];
    *(v10 + 112) = a3 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F53B64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = v4;
  *(v5 + 113) = a4;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268F53BD4, 0);
}

uint64_t sub_268F53BD4()
{
  v20 = v0[7];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;

  if (v20)
  {
    v15 = *(v16 + 56);
    v19[5] = type metadata accessor for SettingsBinarySetting(0);
    v19[2] = v15;
  }

  else
  {
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
  }

  v14 = *(v16 + 64);
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;

  if (v14)
  {
    v13 = *(v16 + 64);
    v19[11] = sub_268F9AA44();
    v19[8] = v13;
  }

  else
  {
    v19[8] = 0;
    v19[9] = 0;
    v19[10] = 0;
    v19[11] = 0;
  }

  v12 = *(v16 + 113);
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;
  if (v12 == 2)
  {
    v19[14] = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[17] = 0;
  }

  else
  {
    v6 = *(v16 + 113);
    v19[17] = MEMORY[0x277D839B0];
    *(v19 + 112) = v6 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v16 + 88) = v10;
  v11 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v7 = swift_task_alloc();
  *(v16 + 96) = v7;
  *v7 = *(v16 + 16);
  v7[1] = sub_268F53F94;
  v8 = *(v16 + 48);

  return v11(v8, v17, v18, v10);
}

uint64_t sub_268F53F94()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268F54168, 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_268F54168()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

double sub_268F54220(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  if (a3 == 2)
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  else
  {
    v10[17] = MEMORY[0x277D839B0];
    *(v10 + 112) = a3 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F544C4(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F54660(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](sub_268F546B0, 0);
}

uint64_t sub_268F546B0()
{
  v14 = v0[6];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[6];
    v13[5] = sub_268F9AA44();
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[9] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[10] = v4;
  *v4 = v10[2];
  v4[1] = sub_268DB5558;
  v5 = v10[5];

  return v8(v5, v11, v12, v7);
}

double sub_268F548D0(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F54A54()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F54B30(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268F54B70, 0);
}

uint64_t sub_268F54B70()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v7 = sub_268F9AEF4();
  v8 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[7] = v9;
  v10 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = sub_268DB4E74;
  v3 = v6[4];

  return v10(v3, v7, v8, v9);
}

double sub_268F54CC8()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F54D8C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F54E50(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsBinarySetting(0);
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F54FEC(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](sub_268F5503C, 0);
}

uint64_t sub_268F5503C()
{
  v14 = v0[6];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[6];
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[9] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[10] = v4;
  *v4 = v10[2];
  v4[1] = sub_268DB5558;
  v5 = v10[5];

  return v8(v5, v11, v12, v7);
}

double sub_268F5525C(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsBinarySetting(0);
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F553E0()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F554BC(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268F554FC, 0);
}

uint64_t sub_268F554FC()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v7 = sub_268F9AEF4();
  v8 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[7] = v9;
  v10 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = sub_268DB4E74;
  v3 = v6[4];

  return v10(v3, v7, v8, v9);
}

double sub_268F55654()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F55718(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  if (a2 == 2)
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  else
  {
    v7[11] = MEMORY[0x277D839B0];
    *(v7 + 64) = a2 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F55940(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = v3;
  *(v4 + 97) = a3;
  *(v4 + 48) = a2;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  *(v4 + 24) = a2;
  *(v4 + 96) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_268F559A0, 0);
}

uint64_t sub_268F559A0()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = *(v13 + 48);
    v16[5] = type metadata accessor for SettingsNumericSetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = *(v13 + 97);
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;
  if (v11 == 2)
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  else
  {
    v5 = *(v13 + 97);
    v16[11] = MEMORY[0x277D839B0];
    *(v16 + 64) = v5 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v13 + 72) = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  *(v13 + 80) = v6;
  *v6 = *(v13 + 16);
  v6[1] = sub_268F55C7C;
  v7 = *(v13 + 40);

  return v10(v7, v14, v15, v9);
}

uint64_t sub_268F55C7C()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268F55E40, 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_268F55E40()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

double sub_268F55EF4(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  if (a2 == 2)
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  else
  {
    v7[11] = MEMORY[0x277D839B0];
    *(v7 + 64) = a2 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F56104(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = type metadata accessor for SettingsMultiSetting(0);
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  v10[17] = MEMORY[0x277D839B0];
  *(v10 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F5638C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = v4;
  *(v5 + 113) = a4 & 1;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268F56410, 0);
}

uint64_t sub_268F56410()
{
  v19 = v0[7];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = *(v15 + 56);
    v18[5] = type metadata accessor for SettingsBinarySetting(0);
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v13 = *(v15 + 64);
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;

  if (v13)
  {
    v12 = *(v15 + 64);
    v18[11] = type metadata accessor for SettingsMultiSetting(0);
    v18[8] = v12;
  }

  else
  {
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = 0;
  }

  v9 = *(v15 + 113);
  v18[12] = sub_268F9AEF4();
  v18[13] = v5;
  v18[17] = MEMORY[0x277D839B0];
  *(v18 + 112) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v15 + 88) = v10;
  v11 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  *(v15 + 96) = v6;
  *v6 = *(v15 + 16);
  v6[1] = sub_268F53F94;
  v7 = *(v15 + 48);

  return v11(v7, v16, v17, v10);
}

double sub_268F56768(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = type metadata accessor for SettingsMultiSetting(0);
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  v10[17] = MEMORY[0x277D839B0];
  *(v10 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F569D8()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F56AB4(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268F56AF4, 0);
}

uint64_t sub_268F56AF4()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v7 = sub_268F9AEF4();
  v8 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[7] = v9;
  v10 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = sub_268DB4E74;
  v3 = v6[4];

  return v10(v3, v7, v8, v9);
}

double sub_268F56C4C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F56D10(char a1, char a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v3;
  *v3 = sub_268F9AEF4();
  v11[1] = v4;
  v10 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = a1;
  v11[6] = sub_268F9AEF4();
  v11[7] = v5;
  v11[11] = v10;
  *(v11 + 64) = a2;
  v11[12] = sub_268F9AEF4();
  v11[13] = v6;
  v11[17] = v10;
  *(v11 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F56F0C(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 40) = v4;
  *(v5 + 83) = a4 & 1;
  *(v5 + 82) = a3 & 1;
  *(v5 + 81) = a2 & 1;
  *(v5 + 32) = a1;
  *(v5 + 16) = v5;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 24) = 0;
  *(v5 + 80) = a2 & 1;
  *(v5 + 88) = a3 & 1;
  *(v5 + 96) = a4 & 1;
  *(v5 + 24) = v4;
  return MEMORY[0x2822009F8](sub_268F56FB0, 0);
}

uint64_t sub_268F56FB0()
{
  v14 = MEMORY[0x277D55BF0];
  v13 = *(v0 + 83);
  v10 = *(v0 + 82);
  v9 = *(v0 + 81);
  *(v0 + 16) = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  *(v0 + 48) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;
  v11 = MEMORY[0x277D839B0];
  v12[5] = MEMORY[0x277D839B0];
  *(v12 + 16) = v9;
  v12[6] = sub_268F9AEF4();
  v12[7] = v4;
  v12[11] = v11;
  *(v12 + 64) = v10;
  v12[12] = sub_268F9AEF4();
  v12[13] = v5;
  v12[17] = v11;
  *(v12 + 112) = v13;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v18 = sub_268F9B4F4();
  *(v0 + 56) = v18;
  v19 = (v14 + *v14);
  v6 = swift_task_alloc();
  v15[8] = v6;
  *v6 = v15[2];
  v6[1] = sub_268F5720C;
  v7 = v15[4];

  return v19(v7, v16, v17, v18);
}

uint64_t sub_268F5720C()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268F573E0, 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_268F573E0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

double sub_268F57498(char a1, char a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v3;
  *v3 = sub_268F9AEF4();
  v11[1] = v4;
  v10 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = a1;
  v11[6] = sub_268F9AEF4();
  v11[7] = v5;
  v11[11] = v10;
  *(v11 + 64) = a2;
  v11[12] = sub_268F9AEF4();
  v11[13] = v6;
  v11[17] = v10;
  *(v11 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5767C(char a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v8 = v2;
  *v2 = sub_268F9AEF4();
  v8[1] = v3;
  v7 = MEMORY[0x277D839B0];
  v8[5] = MEMORY[0x277D839B0];
  *(v8 + 16) = a1;
  v8[6] = sub_268F9AEF4();
  v8[7] = v4;
  v8[11] = v7;
  *(v8 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

uint64_t type metadata accessor for SettingIntentCATs(uint64_t a1)
{
  v2 = qword_280FE5418;
  if (!qword_280FE5418)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F57884(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F57950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

BOOL sub_268F57B50(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "ClarityUIIntent#CannotDo";
  *(v2 + 8) = 24;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268F57CA8()
{
  v2 = qword_2802DE5F8;
  if (!qword_2802DE5F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5F8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F57DF4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F57B50(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F57E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F57C28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

double sub_268F57E64()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268F57F40(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268F57F80, 0);
}

uint64_t sub_268F57F80()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v7 = sub_268F9AEF4();
  v8 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[7] = v9;
  v10 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = sub_268DB4E74;
  v3 = v6[4];

  return v10(v3, v7, v8, v9);
}

uint64_t sub_268F580D8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268F58114, 0);
}

uint64_t sub_268F58114()
{
  v4 = MEMORY[0x277D55BE0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

double sub_268F58268()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

uint64_t type metadata accessor for ClarityUIIntentCATs(uint64_t a1)
{
  v2 = qword_2802DE600;
  if (!qword_2802DE600)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F583A0(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F5846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

unint64_t sub_268F58698()
{
  v2 = qword_2802DE610;
  if (!qword_2802DE610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE610);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F58714()
{
  if (qword_280FE4520 != -1)
  {
    swift_once();
  }

  return &qword_280FE8150;
}

uint64_t sub_268F58774()
{
  type metadata accessor for GetAXOnOffLabelsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8150 = result;
  return result;
}

uint64_t sub_268F587DC()
{
  v1 = *sub_268F58714();

  return v1;
}

double sub_268F5880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXOnOffLabelsHandler handling intent", 39, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBAF74();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F58C90, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F58A28(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3E684();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268F58CE8()
{
  type metadata accessor for SetAXButtonShapesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1790 = result;
  return result;
}

uint64_t *sub_268F58D50()
{
  if (qword_2802DB8C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1790;
}

uint64_t sub_268F58DB0()
{
  v1 = *sub_268F58D50();

  return v1;
}

uint64_t sub_268F58DE0(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXButtonShapesHandler handling intent", 40, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3E5B4();

  v4 = sub_268DBD144();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F59004, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F59004, v8);
}

uint64_t sub_268F58F94(char a1)
{

  sub_268D3E5E4(a1 & 1);
}

uint64_t *sub_268F59050()
{
  if (qword_280FE4180 != -1)
  {
    swift_once();
  }

  return &qword_280FE8128;
}

uint64_t sub_268F590B0()
{
  type metadata accessor for GetAXInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8128 = result;
  return result;
}

uint64_t sub_268F59118()
{
  v1 = *sub_268F59050();

  return v1;
}

double sub_268F59148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXInvertColorsHandler handling intent", 40, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBAEA4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F59664, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F59360(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D3E984();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

double sub_268F596BC(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9A994();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F59858(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9A994();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F599DC()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F59AB8()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F59B7C(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  v7[11] = MEMORY[0x277D839B0];
  *(v7 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F59D70(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  v7[11] = MEMORY[0x277D839B0];
  *(v7 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F59F4C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5A028()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5A0EC(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsMultiSetting(0);
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5A288(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsMultiSetting(0);
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5A40C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v99 = a1;
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v87 = a7;
  v88 = a8;
  v89 = a9;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v90 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v99, v82, v83, v84);
  v91 = v67 - v90;
  v109 = v10;
  v95 = 1;
  v108 = v11 & 1;
  v107 = v12 & 1;
  v106 = v13;
  v105 = v14;
  v104 = v15 & 1;
  v103 = v16;
  v101 = v17;
  v102 = v18;
  v100 = v9;
  v92 = sub_268D5E71C(0);
  v93 = v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v97 = 7;
  v96 = sub_268F9B734();
  v98 = v20;
  v21 = sub_268F9AEF4();
  v22 = v98;
  *v98 = v21;
  v22[1] = v23;

  if (v99)
  {
    v81 = v99;
    v80 = v99;
    v24 = type metadata accessor for SettingsBinarySetting(0);
    v25 = v98;
    v26 = v80;
    v98[5] = v24;
    v25[2] = v26;
  }

  else
  {
    v66 = v98;
    v98[2] = 0;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
  }

  v79 = 1;
  v27 = sub_268F9AEF4();
  v28 = v82;
  v29 = v98;
  v98[6] = v27;
  v29[7] = v30;
  v78 = MEMORY[0x277D839B0];
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v28;
  v31 = sub_268F9AEF4();
  v32 = v78;
  v33 = v83;
  v34 = v98;
  v98[12] = v31;
  v34[13] = v35;
  v34[17] = v32;
  *(v34 + 112) = v33;
  v36 = sub_268F9AEF4();
  v37 = v98;
  v98[18] = v36;
  v37[19] = v38;

  if (v84)
  {
    v77 = v84;
    v76 = v84;
    v39 = sub_268F9AA44();
    v40 = v98;
    v41 = v76;
    v98[23] = v39;
    v40[20] = v41;
  }

  else
  {
    v65 = v98;
    v98[20] = 0;
    v65[21] = 0;
    v65[22] = 0;
    v65[23] = 0;
  }

  v71 = v98 + 26;
  v72 = 1;
  v42 = sub_268F9AEF4();
  v43 = v98;
  v44 = v42;
  v45 = v85;
  v47 = v46;
  v48 = v91;
  v98[24] = v44;
  v43[25] = v47;
  sub_268D2A1F0(v45, v48);
  v73 = sub_268F9A9C4();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  if ((*(v74 + 48))(v91, v72) == 1)
  {
    sub_268D28588(v91);
    v64 = v98;
    v98[26] = 0;
    v64[27] = 0;
    v64[28] = 0;
    v64[29] = 0;
  }

  else
  {
    v49 = v71;
    v98[29] = v73;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(v74 + 32))(boxed_opaque_existential_1, v91, v73);
  }

  v70 = 1;
  v51 = sub_268F9AEF4();
  v52 = v86;
  v53 = v98;
  v98[30] = v51;
  v53[31] = v54;
  v53[35] = MEMORY[0x277D839B0];
  *(v53 + 256) = v52;
  v55 = sub_268F9AEF4();
  v56 = v98;
  v98[36] = v55;
  v56[37] = v57;

  if (v87)
  {
    v69 = v87;
    v68 = v87;
    v58 = sub_268F9A994();
    v59 = v98;
    v60 = v68;
    v98[41] = v58;
    v59[38] = v60;
  }

  else
  {
    v63 = v98;
    v98[38] = 0;
    v63[39] = 0;
    v63[40] = 0;
    v63[41] = 0;
  }

  sub_268CD0F7C();
  v67[0] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v67[1] = sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5A9D4@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a8;
  v95 = a1;
  v80 = a2;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v85 = a7;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v86 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95, v80, v81, v82);
  v87 = v64 - v86;
  v103 = v9;
  v91 = 1;
  v102 = v10 & 1;
  v101 = v11 & 1;
  v100 = v12;
  v99 = v13;
  v98 = v14 & 1;
  v97 = v15;
  v96 = v8;
  v88 = sub_268D5E71C(0);
  v89 = v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v93 = 7;
  v92 = sub_268F9B734();
  v94 = v17;
  v18 = sub_268F9AEF4();
  v19 = v94;
  *v94 = v18;
  v19[1] = v20;

  if (v95)
  {
    v78 = v95;
    v77 = v95;
    v21 = type metadata accessor for SettingsBinarySetting(0);
    v22 = v94;
    v23 = v77;
    v94[5] = v21;
    v22[2] = v23;
  }

  else
  {
    v63 = v94;
    v94[2] = 0;
    v63[3] = 0;
    v63[4] = 0;
    v63[5] = 0;
  }

  v76 = 1;
  v24 = sub_268F9AEF4();
  v25 = v80;
  v26 = v94;
  v94[6] = v24;
  v26[7] = v27;
  v75 = MEMORY[0x277D839B0];
  v26[11] = MEMORY[0x277D839B0];
  *(v26 + 64) = v25;
  v28 = sub_268F9AEF4();
  v29 = v75;
  v30 = v81;
  v31 = v94;
  v94[12] = v28;
  v31[13] = v32;
  v31[17] = v29;
  *(v31 + 112) = v30;
  v33 = sub_268F9AEF4();
  v34 = v94;
  v94[18] = v33;
  v34[19] = v35;

  if (v82)
  {
    v74 = v82;
    v73 = v82;
    v36 = sub_268F9AA44();
    v37 = v94;
    v38 = v73;
    v94[23] = v36;
    v37[20] = v38;
  }

  else
  {
    v62 = v94;
    v94[20] = 0;
    v62[21] = 0;
    v62[22] = 0;
    v62[23] = 0;
  }

  v68 = v94 + 26;
  v69 = 1;
  v39 = sub_268F9AEF4();
  v40 = v94;
  v41 = v39;
  v42 = v83;
  v44 = v43;
  v45 = v87;
  v94[24] = v41;
  v40[25] = v44;
  sub_268D2A1F0(v42, v45);
  v70 = sub_268F9A9C4();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  if ((*(v71 + 48))(v87, v69) == 1)
  {
    sub_268D28588(v87);
    v61 = v94;
    v94[26] = 0;
    v61[27] = 0;
    v61[28] = 0;
    v61[29] = 0;
  }

  else
  {
    v46 = v68;
    v94[29] = v70;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(v71 + 32))(boxed_opaque_existential_1, v87, v70);
  }

  v67 = 1;
  v48 = sub_268F9AEF4();
  v49 = v84;
  v50 = v94;
  v94[30] = v48;
  v50[31] = v51;
  v50[35] = MEMORY[0x277D839B0];
  *(v50 + 256) = v49;
  v52 = sub_268F9AEF4();
  v53 = v94;
  v94[36] = v52;
  v53[37] = v54;

  if (v85)
  {
    v66 = v85;
    v65 = v85;
    v55 = sub_268F9A994();
    v56 = v94;
    v57 = v65;
    v94[41] = v55;
    v56[38] = v57;
  }

  else
  {
    v60 = v94;
    v94[38] = 0;
    v60[39] = 0;
    v60[40] = 0;
    v60[41] = 0;
  }

  sub_268CD0F7C();
  v64[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v64[2] = sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5AF5C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v98 = a1;
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v87 = a8;
  v89 = a9;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98, v81, v82, v83);
  v90 = v66 - v88;
  v108 = v10;
  v94 = 1;
  v107 = v11 & 1;
  v106 = v12 & 1;
  v105 = v13;
  v104 = v14;
  v103 = v15 & 1;
  v102 = v16;
  v100 = v17;
  v101 = a9;
  v99 = v9;
  v91 = sub_268F9AEF4();
  v92 = v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v96 = 7;
  v95 = sub_268F9B734();
  v97 = v19;
  v20 = sub_268F9AEF4();
  v21 = v97;
  *v97 = v20;
  v21[1] = v22;

  if (v98)
  {
    v80 = v98;
    v79 = v98;
    v23 = type metadata accessor for SettingsBinarySetting(0);
    v24 = v97;
    v25 = v79;
    v97[5] = v23;
    v24[2] = v25;
  }

  else
  {
    v65 = v97;
    v97[2] = 0;
    v65[3] = 0;
    v65[4] = 0;
    v65[5] = 0;
  }

  v78 = 1;
  v26 = sub_268F9AEF4();
  v27 = v81;
  v28 = v97;
  v97[6] = v26;
  v28[7] = v29;
  v77 = MEMORY[0x277D839B0];
  v28[11] = MEMORY[0x277D839B0];
  *(v28 + 64) = v27;
  v30 = sub_268F9AEF4();
  v31 = v77;
  v32 = v82;
  v33 = v97;
  v97[12] = v30;
  v33[13] = v34;
  v33[17] = v31;
  *(v33 + 112) = v32;
  v35 = sub_268F9AEF4();
  v36 = v97;
  v97[18] = v35;
  v36[19] = v37;

  if (v83)
  {
    v76 = v83;
    v75 = v83;
    v38 = sub_268F9AA44();
    v39 = v97;
    v40 = v75;
    v97[23] = v38;
    v39[20] = v40;
  }

  else
  {
    v64 = v97;
    v97[20] = 0;
    v64[21] = 0;
    v64[22] = 0;
    v64[23] = 0;
  }

  v70 = v97 + 26;
  v71 = 1;
  v41 = sub_268F9AEF4();
  v42 = v97;
  v43 = v41;
  v44 = v84;
  v46 = v45;
  v47 = v90;
  v97[24] = v43;
  v42[25] = v46;
  sub_268D2A1F0(v44, v47);
  v72 = sub_268F9A9C4();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  if ((*(v73 + 48))(v90, v71) == 1)
  {
    sub_268D28588(v90);
    v63 = v97;
    v97[26] = 0;
    v63[27] = 0;
    v63[28] = 0;
    v63[29] = 0;
  }

  else
  {
    v48 = v70;
    v97[29] = v72;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(v73 + 32))(boxed_opaque_existential_1, v90, v72);
  }

  v69 = 1;
  v50 = sub_268F9AEF4();
  v51 = v85;
  v52 = v97;
  v97[30] = v50;
  v52[31] = v53;
  v52[35] = MEMORY[0x277D839B0];
  *(v52 + 256) = v51;
  v54 = sub_268F9AEF4();
  v55 = v97;
  v97[36] = v54;
  v55[37] = v56;

  if (v86)
  {
    v68 = v86;
    v67 = v86;
    v57 = sub_268F9A994();
    v58 = v97;
    v59 = v67;
    v97[41] = v57;
    v58[38] = v59;
  }

  else
  {
    v62 = v97;
    v97[38] = 0;
    v62[39] = 0;
    v62[40] = 0;
    v62[41] = 0;
  }

  sub_268CD0F7C();
  v66[0] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v66[1] = sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5B534@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a8;
  v95 = a1;
  v80 = a2;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v85 = a7;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v86 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95, v80, v81, v82);
  v87 = v64 - v86;
  v103 = v9;
  v91 = 1;
  v102 = v10 & 1;
  v101 = v11 & 1;
  v100 = v12;
  v99 = v13;
  v98 = v14 & 1;
  v97 = v15;
  v96 = v8;
  v88 = sub_268F9AEF4();
  v89 = v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v93 = 7;
  v92 = sub_268F9B734();
  v94 = v17;
  v18 = sub_268F9AEF4();
  v19 = v94;
  *v94 = v18;
  v19[1] = v20;

  if (v95)
  {
    v78 = v95;
    v77 = v95;
    v21 = type metadata accessor for SettingsBinarySetting(0);
    v22 = v94;
    v23 = v77;
    v94[5] = v21;
    v22[2] = v23;
  }

  else
  {
    v63 = v94;
    v94[2] = 0;
    v63[3] = 0;
    v63[4] = 0;
    v63[5] = 0;
  }

  v76 = 1;
  v24 = sub_268F9AEF4();
  v25 = v80;
  v26 = v94;
  v94[6] = v24;
  v26[7] = v27;
  v75 = MEMORY[0x277D839B0];
  v26[11] = MEMORY[0x277D839B0];
  *(v26 + 64) = v25;
  v28 = sub_268F9AEF4();
  v29 = v75;
  v30 = v81;
  v31 = v94;
  v94[12] = v28;
  v31[13] = v32;
  v31[17] = v29;
  *(v31 + 112) = v30;
  v33 = sub_268F9AEF4();
  v34 = v94;
  v94[18] = v33;
  v34[19] = v35;

  if (v82)
  {
    v74 = v82;
    v73 = v82;
    v36 = sub_268F9AA44();
    v37 = v94;
    v38 = v73;
    v94[23] = v36;
    v37[20] = v38;
  }

  else
  {
    v62 = v94;
    v94[20] = 0;
    v62[21] = 0;
    v62[22] = 0;
    v62[23] = 0;
  }

  v68 = v94 + 26;
  v69 = 1;
  v39 = sub_268F9AEF4();
  v40 = v94;
  v41 = v39;
  v42 = v83;
  v44 = v43;
  v45 = v87;
  v94[24] = v41;
  v40[25] = v44;
  sub_268D2A1F0(v42, v45);
  v70 = sub_268F9A9C4();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  if ((*(v71 + 48))(v87, v69) == 1)
  {
    sub_268D28588(v87);
    v61 = v94;
    v94[26] = 0;
    v61[27] = 0;
    v61[28] = 0;
    v61[29] = 0;
  }

  else
  {
    v46 = v68;
    v94[29] = v70;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(v71 + 32))(boxed_opaque_existential_1, v87, v70);
  }

  v67 = 1;
  v48 = sub_268F9AEF4();
  v49 = v84;
  v50 = v94;
  v94[30] = v48;
  v50[31] = v51;
  v50[35] = MEMORY[0x277D839B0];
  *(v50 + 256) = v49;
  v52 = sub_268F9AEF4();
  v53 = v94;
  v94[36] = v52;
  v53[37] = v54;

  if (v85)
  {
    v66 = v85;
    v65 = v85;
    v55 = sub_268F9A994();
    v56 = v94;
    v57 = v65;
    v94[41] = v55;
    v56[38] = v57;
  }

  else
  {
    v60 = v94;
    v94[38] = 0;
    v60[39] = 0;
    v60[40] = 0;
    v60[41] = 0;
  }

  sub_268CD0F7C();
  v64[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v64[2] = sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5BACC(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v103 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v94 = a9;
  v95 = a10;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  v93 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103, v86, v87, v88);
  v96 = v71 - v93;
  v114 = v11;
  v100 = 1;
  v113 = v12 & 1;
  v112 = v13 & 1;
  v111 = v14;
  v110 = v15;
  v109 = v16 & 1;
  v108 = v17;
  v107 = v18 & 1;
  v105 = a9;
  v106 = a10;
  v104 = v10;
  v97 = sub_268F9AEF4();
  v98 = v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v101 = sub_268F9B734();
  v102 = v20;
  v21 = sub_268F9AEF4();
  v22 = v102;
  *v102 = v21;
  v22[1] = v23;

  if (v103)
  {
    v85 = v103;
    v84 = v103;
    v24 = type metadata accessor for SettingsMultiSetting(0);
    v25 = v102;
    v26 = v84;
    v102[5] = v24;
    v25[2] = v26;
  }

  else
  {
    v70 = v102;
    v102[2] = 0;
    v70[3] = 0;
    v70[4] = 0;
    v70[5] = 0;
  }

  v83 = 1;
  v27 = sub_268F9AEF4();
  v28 = v86;
  v29 = v102;
  v102[6] = v27;
  v29[7] = v30;
  v82 = MEMORY[0x277D839B0];
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v28;
  v31 = sub_268F9AEF4();
  v32 = v82;
  v33 = v87;
  v34 = v102;
  v102[12] = v31;
  v34[13] = v35;
  v34[17] = v32;
  *(v34 + 112) = v33;
  v36 = sub_268F9AEF4();
  v37 = v102;
  v102[18] = v36;
  v37[19] = v38;

  if (v88)
  {
    v81 = v88;
    v80 = v88;
    v39 = sub_268F9AA44();
    v40 = v102;
    v41 = v80;
    v102[23] = v39;
    v40[20] = v41;
  }

  else
  {
    v69 = v102;
    v102[20] = 0;
    v69[21] = 0;
    v69[22] = 0;
    v69[23] = 0;
  }

  v75 = v102 + 26;
  v76 = 1;
  v42 = sub_268F9AEF4();
  v43 = v102;
  v44 = v42;
  v45 = v89;
  v47 = v46;
  v48 = v96;
  v102[24] = v44;
  v43[25] = v47;
  sub_268D2A1F0(v45, v48);
  v77 = sub_268F9A9C4();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  if ((*(v78 + 48))(v96, v76) == 1)
  {
    sub_268D28588(v96);
    v68 = v102;
    v102[26] = 0;
    v68[27] = 0;
    v68[28] = 0;
    v68[29] = 0;
  }

  else
  {
    v49 = v75;
    v102[29] = v77;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(v78 + 32))(boxed_opaque_existential_1, v96, v77);
  }

  v74 = 1;
  v51 = sub_268F9AEF4();
  v52 = v90;
  v53 = v102;
  v102[30] = v51;
  v53[31] = v54;
  v53[35] = MEMORY[0x277D839B0];
  *(v53 + 256) = v52;
  v55 = sub_268F9AEF4();
  v56 = v102;
  v102[36] = v55;
  v56[37] = v57;

  if (v91)
  {
    v73 = v91;
    v72 = v91;
    v58 = sub_268F9A994();
    v59 = v102;
    v60 = v72;
    v102[41] = v58;
    v59[38] = v60;
  }

  else
  {
    v67 = v102;
    v102[38] = 0;
    v67[39] = 0;
    v67[40] = 0;
    v67[41] = 0;
  }

  v61 = sub_268F9AEF4();
  v62 = v102;
  v63 = v92;
  v102[42] = v61;
  v62[43] = v64;
  v62[47] = MEMORY[0x277D839B0];
  *(v62 + 352) = v63;
  sub_268CD0F7C();
  v71[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v71[2] = sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5C108@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v85 = a9;
  v101 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v93 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101, v86, v87, v88);
  v94 = v70 - v93;
  v110 = v10;
  v98 = 1;
  v109 = v11 & 1;
  v108 = v12 & 1;
  v107 = v13;
  v106 = v14;
  v105 = v15 & 1;
  v104 = v16;
  v103 = v17 & 1;
  v102 = v9;
  v95 = sub_268F9AEF4();
  v96 = v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v99 = sub_268F9B734();
  v100 = v19;
  v20 = sub_268F9AEF4();
  v21 = v100;
  *v100 = v20;
  v21[1] = v22;

  if (v101)
  {
    v84 = v101;
    v83 = v101;
    v23 = type metadata accessor for SettingsMultiSetting(0);
    v24 = v100;
    v25 = v83;
    v100[5] = v23;
    v24[2] = v25;
  }

  else
  {
    v69 = v100;
    v100[2] = 0;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
  }

  v82 = 1;
  v26 = sub_268F9AEF4();
  v27 = v86;
  v28 = v100;
  v100[6] = v26;
  v28[7] = v29;
  v81 = MEMORY[0x277D839B0];
  v28[11] = MEMORY[0x277D839B0];
  *(v28 + 64) = v27;
  v30 = sub_268F9AEF4();
  v31 = v81;
  v32 = v87;
  v33 = v100;
  v100[12] = v30;
  v33[13] = v34;
  v33[17] = v31;
  *(v33 + 112) = v32;
  v35 = sub_268F9AEF4();
  v36 = v100;
  v100[18] = v35;
  v36[19] = v37;

  if (v88)
  {
    v80 = v88;
    v79 = v88;
    v38 = sub_268F9AA44();
    v39 = v100;
    v40 = v79;
    v100[23] = v38;
    v39[20] = v40;
  }

  else
  {
    v68 = v100;
    v100[20] = 0;
    v68[21] = 0;
    v68[22] = 0;
    v68[23] = 0;
  }

  v74 = v100 + 26;
  v75 = 1;
  v41 = sub_268F9AEF4();
  v42 = v100;
  v43 = v41;
  v44 = v89;
  v46 = v45;
  v47 = v94;
  v100[24] = v43;
  v42[25] = v46;
  sub_268D2A1F0(v44, v47);
  v76 = sub_268F9A9C4();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  if ((*(v77 + 48))(v94, v75) == 1)
  {
    sub_268D28588(v94);
    v67 = v100;
    v100[26] = 0;
    v67[27] = 0;
    v67[28] = 0;
    v67[29] = 0;
  }

  else
  {
    v48 = v74;
    v100[29] = v76;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(v77 + 32))(boxed_opaque_existential_1, v94, v76);
  }

  v73 = 1;
  v50 = sub_268F9AEF4();
  v51 = v90;
  v52 = v100;
  v100[30] = v50;
  v52[31] = v53;
  v52[35] = MEMORY[0x277D839B0];
  *(v52 + 256) = v51;
  v54 = sub_268F9AEF4();
  v55 = v100;
  v100[36] = v54;
  v55[37] = v56;

  if (v91)
  {
    v72 = v91;
    v71 = v91;
    v57 = sub_268F9A994();
    v58 = v100;
    v59 = v71;
    v100[41] = v57;
    v58[38] = v59;
  }

  else
  {
    v66 = v100;
    v100[38] = 0;
    v66[39] = 0;
    v66[40] = 0;
    v66[41] = 0;
  }

  v60 = sub_268F9AEF4();
  v61 = v100;
  v62 = v92;
  v100[42] = v60;
  v61[43] = v63;
  v61[47] = MEMORY[0x277D839B0];
  *(v61 + 352) = v62;
  sub_268CD0F7C();
  v70[0] = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v70[1] = sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5C700(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v103 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v94 = a9;
  v95 = a10;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  v93 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103, v86, v87, v88);
  v96 = v71 - v93;
  v114 = v11;
  v100 = 1;
  v113 = v12 & 1;
  v112 = v13 & 1;
  v111 = v14;
  v110 = v15;
  v109 = v16 & 1;
  v108 = v17;
  v107 = v18 & 1;
  v105 = a9;
  v106 = a10;
  v104 = v10;
  v97 = sub_268F9AEF4();
  v98 = v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v101 = sub_268F9B734();
  v102 = v20;
  v21 = sub_268F9AEF4();
  v22 = v102;
  *v102 = v21;
  v22[1] = v23;

  if (v103)
  {
    v85 = v103;
    v84 = v103;
    v24 = type metadata accessor for SettingsMultiSetting(0);
    v25 = v102;
    v26 = v84;
    v102[5] = v24;
    v25[2] = v26;
  }

  else
  {
    v70 = v102;
    v102[2] = 0;
    v70[3] = 0;
    v70[4] = 0;
    v70[5] = 0;
  }

  v83 = 1;
  v27 = sub_268F9AEF4();
  v28 = v86;
  v29 = v102;
  v102[6] = v27;
  v29[7] = v30;
  v82 = MEMORY[0x277D839B0];
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v28;
  v31 = sub_268F9AEF4();
  v32 = v82;
  v33 = v87;
  v34 = v102;
  v102[12] = v31;
  v34[13] = v35;
  v34[17] = v32;
  *(v34 + 112) = v33;
  v36 = sub_268F9AEF4();
  v37 = v102;
  v102[18] = v36;
  v37[19] = v38;

  if (v88)
  {
    v81 = v88;
    v80 = v88;
    v39 = sub_268F9AA44();
    v40 = v102;
    v41 = v80;
    v102[23] = v39;
    v40[20] = v41;
  }

  else
  {
    v69 = v102;
    v102[20] = 0;
    v69[21] = 0;
    v69[22] = 0;
    v69[23] = 0;
  }

  v75 = v102 + 26;
  v76 = 1;
  v42 = sub_268F9AEF4();
  v43 = v102;
  v44 = v42;
  v45 = v89;
  v47 = v46;
  v48 = v96;
  v102[24] = v44;
  v43[25] = v47;
  sub_268D2A1F0(v45, v48);
  v77 = sub_268F9A9C4();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  if ((*(v78 + 48))(v96, v76) == 1)
  {
    sub_268D28588(v96);
    v68 = v102;
    v102[26] = 0;
    v68[27] = 0;
    v68[28] = 0;
    v68[29] = 0;
  }

  else
  {
    v49 = v75;
    v102[29] = v77;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(v78 + 32))(boxed_opaque_existential_1, v96, v77);
  }

  v74 = 1;
  v51 = sub_268F9AEF4();
  v52 = v90;
  v53 = v102;
  v102[30] = v51;
  v53[31] = v54;
  v53[35] = MEMORY[0x277D839B0];
  *(v53 + 256) = v52;
  v55 = sub_268F9AEF4();
  v56 = v102;
  v102[36] = v55;
  v56[37] = v57;

  if (v91)
  {
    v73 = v91;
    v72 = v91;
    v58 = sub_268F9A994();
    v59 = v102;
    v60 = v72;
    v102[41] = v58;
    v59[38] = v60;
  }

  else
  {
    v67 = v102;
    v102[38] = 0;
    v67[39] = 0;
    v67[40] = 0;
    v67[41] = 0;
  }

  v61 = sub_268F9AEF4();
  v62 = v102;
  v63 = v92;
  v102[42] = v61;
  v62[43] = v64;
  v62[47] = MEMORY[0x277D839B0];
  *(v62 + 352) = v63;
  sub_268CD0F7C();
  v71[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v71[2] = sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5CD3C@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v85 = a9;
  v101 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v93 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101, v86, v87, v88);
  v94 = v70 - v93;
  v110 = v10;
  v98 = 1;
  v109 = v11 & 1;
  v108 = v12 & 1;
  v107 = v13;
  v106 = v14;
  v105 = v15 & 1;
  v104 = v16;
  v103 = v17 & 1;
  v102 = v9;
  v95 = sub_268F9AEF4();
  v96 = v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v99 = sub_268F9B734();
  v100 = v19;
  v20 = sub_268F9AEF4();
  v21 = v100;
  *v100 = v20;
  v21[1] = v22;

  if (v101)
  {
    v84 = v101;
    v83 = v101;
    v23 = type metadata accessor for SettingsMultiSetting(0);
    v24 = v100;
    v25 = v83;
    v100[5] = v23;
    v24[2] = v25;
  }

  else
  {
    v69 = v100;
    v100[2] = 0;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
  }

  v82 = 1;
  v26 = sub_268F9AEF4();
  v27 = v86;
  v28 = v100;
  v100[6] = v26;
  v28[7] = v29;
  v81 = MEMORY[0x277D839B0];
  v28[11] = MEMORY[0x277D839B0];
  *(v28 + 64) = v27;
  v30 = sub_268F9AEF4();
  v31 = v81;
  v32 = v87;
  v33 = v100;
  v100[12] = v30;
  v33[13] = v34;
  v33[17] = v31;
  *(v33 + 112) = v32;
  v35 = sub_268F9AEF4();
  v36 = v100;
  v100[18] = v35;
  v36[19] = v37;

  if (v88)
  {
    v80 = v88;
    v79 = v88;
    v38 = sub_268F9AA44();
    v39 = v100;
    v40 = v79;
    v100[23] = v38;
    v39[20] = v40;
  }

  else
  {
    v68 = v100;
    v100[20] = 0;
    v68[21] = 0;
    v68[22] = 0;
    v68[23] = 0;
  }

  v74 = v100 + 26;
  v75 = 1;
  v41 = sub_268F9AEF4();
  v42 = v100;
  v43 = v41;
  v44 = v89;
  v46 = v45;
  v47 = v94;
  v100[24] = v43;
  v42[25] = v46;
  sub_268D2A1F0(v44, v47);
  v76 = sub_268F9A9C4();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  if ((*(v77 + 48))(v94, v75) == 1)
  {
    sub_268D28588(v94);
    v67 = v100;
    v100[26] = 0;
    v67[27] = 0;
    v67[28] = 0;
    v67[29] = 0;
  }

  else
  {
    v48 = v74;
    v100[29] = v76;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(v77 + 32))(boxed_opaque_existential_1, v94, v76);
  }

  v73 = 1;
  v50 = sub_268F9AEF4();
  v51 = v90;
  v52 = v100;
  v100[30] = v50;
  v52[31] = v53;
  v52[35] = MEMORY[0x277D839B0];
  *(v52 + 256) = v51;
  v54 = sub_268F9AEF4();
  v55 = v100;
  v100[36] = v54;
  v55[37] = v56;

  if (v91)
  {
    v72 = v91;
    v71 = v91;
    v57 = sub_268F9A994();
    v58 = v100;
    v59 = v71;
    v100[41] = v57;
    v58[38] = v59;
  }

  else
  {
    v66 = v100;
    v100[38] = 0;
    v66[39] = 0;
    v66[40] = 0;
    v66[41] = 0;
  }

  v60 = sub_268F9AEF4();
  v61 = v100;
  v62 = v92;
  v100[42] = v60;
  v61[43] = v63;
  v61[47] = MEMORY[0x277D839B0];
  *(v61 + 352) = v62;
  sub_268CD0F7C();
  v70[0] = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v70[1] = sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5D334(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a2;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = sub_268F9AA44();
    v13[14] = a3;
  }

  else
  {
    v13[14] = 0;
    v13[15] = 0;
    v13[16] = 0;
    v13[17] = 0;
  }

  v13[18] = sub_268F9AEF4();
  v13[19] = v8;
  v13[23] = MEMORY[0x277D839B0];
  *(v13 + 160) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5D610(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a2;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = sub_268F9AA44();
    v13[14] = a3;
  }

  else
  {
    v13[14] = 0;
    v13[15] = 0;
    v13[16] = 0;
    v13[17] = 0;
  }

  v13[18] = sub_268F9AEF4();
  v13[19] = v8;
  v13[23] = MEMORY[0x277D839B0];
  *(v13 + 160) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5D8D4(uint64_t a1, unsigned int a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a1;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v72 = a7;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v73 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81, v67, v68, v69);
  v74 = v54 - v73;
  v89 = v8;
  v78 = 1;
  v88 = v9 & 1;
  v87 = v10;
  v86 = v11;
  v85 = v12;
  v83 = v13;
  v84 = v14;
  v82 = v7;
  v75 = sub_268F9AEF4();
  v76 = v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v79 = sub_268F9B734();
  v80 = v16;
  v17 = sub_268F9AEF4();
  v18 = v80;
  *v80 = v17;
  v18[1] = v19;

  if (v81)
  {
    v66 = v81;
    v65 = v81;
    v20 = type metadata accessor for SettingsBinarySetting(0);
    v21 = v80;
    v22 = v65;
    v80[5] = v20;
    v21[2] = v22;
  }

  else
  {
    v53 = v80;
    v80[2] = 0;
    v53[3] = 0;
    v53[4] = 0;
    v53[5] = 0;
  }

  v64 = 1;
  v23 = sub_268F9AEF4();
  v24 = v67;
  v25 = v80;
  v80[6] = v23;
  v25[7] = v26;
  v25[11] = MEMORY[0x277D839B0];
  *(v25 + 64) = v24;
  v27 = sub_268F9AEF4();
  v28 = v80;
  v80[12] = v27;
  v28[13] = v29;

  if (v68)
  {
    v63 = v68;
    v62 = v68;
    v30 = sub_268F9AA44();
    v31 = v80;
    v32 = v62;
    v80[17] = v30;
    v31[14] = v32;
  }

  else
  {
    v52 = v80;
    v80[14] = 0;
    v52[15] = 0;
    v52[16] = 0;
    v52[17] = 0;
  }

  v57 = v80 + 20;
  v58 = 1;
  v33 = sub_268F9AEF4();
  v34 = v80;
  v35 = v33;
  v36 = v69;
  v38 = v37;
  v39 = v74;
  v80[18] = v35;
  v34[19] = v38;
  sub_268D2A1F0(v36, v39);
  v59 = sub_268F9A9C4();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v74, v58) == 1)
  {
    sub_268D28588(v74);
    v51 = v80;
    v80[20] = 0;
    v51[21] = 0;
    v51[22] = 0;
    v51[23] = 0;
  }

  else
  {
    v40 = v57;
    v80[23] = v59;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v60 + 32))(boxed_opaque_existential_1, v74, v59);
  }

  v42 = sub_268F9AEF4();
  v43 = v80;
  v80[24] = v42;
  v43[25] = v44;

  if (v70)
  {
    v56 = v70;
    v55 = v70;
    v45 = sub_268F9A994();
    v46 = v80;
    v47 = v55;
    v80[29] = v45;
    v46[26] = v47;
  }

  else
  {
    v50 = v80;
    v80[26] = 0;
    v50[27] = 0;
    v50[28] = 0;
    v50[29] = 0;
  }

  sub_268CD0F7C();
  v54[0] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v54[1] = sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5DDC4@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a6;
  v77 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77, v65, v66, v67);
  v70 = v51 - v69;
  v83 = v7;
  v74 = 1;
  v82 = v8 & 1;
  v81 = v9;
  v80 = v10;
  v79 = v11;
  v78 = v6;
  v71 = sub_268F9AEF4();
  v72 = v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v75 = sub_268F9B734();
  v76 = v13;
  v14 = sub_268F9AEF4();
  v15 = v76;
  *v76 = v14;
  v15[1] = v16;

  if (v77)
  {
    v63 = v77;
    v62 = v77;
    v17 = type metadata accessor for SettingsBinarySetting(0);
    v18 = v76;
    v19 = v62;
    v76[5] = v17;
    v18[2] = v19;
  }

  else
  {
    v50 = v76;
    v76[2] = 0;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
  }

  v61 = 1;
  v20 = sub_268F9AEF4();
  v21 = v65;
  v22 = v76;
  v76[6] = v20;
  v22[7] = v23;
  v22[11] = MEMORY[0x277D839B0];
  *(v22 + 64) = v21;
  v24 = sub_268F9AEF4();
  v25 = v76;
  v76[12] = v24;
  v25[13] = v26;

  if (v66)
  {
    v60 = v66;
    v59 = v66;
    v27 = sub_268F9AA44();
    v28 = v76;
    v29 = v59;
    v76[17] = v27;
    v28[14] = v29;
  }

  else
  {
    v49 = v76;
    v76[14] = 0;
    v49[15] = 0;
    v49[16] = 0;
    v49[17] = 0;
  }

  v54 = v76 + 20;
  v55 = 1;
  v30 = sub_268F9AEF4();
  v31 = v76;
  v32 = v30;
  v33 = v67;
  v35 = v34;
  v36 = v70;
  v76[18] = v32;
  v31[19] = v35;
  sub_268D2A1F0(v33, v36);
  v56 = sub_268F9A9C4();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  if ((*(v57 + 48))(v70, v55) == 1)
  {
    sub_268D28588(v70);
    v48 = v76;
    v76[20] = 0;
    v48[21] = 0;
    v48[22] = 0;
    v48[23] = 0;
  }

  else
  {
    v37 = v54;
    v76[23] = v56;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(v57 + 32))(boxed_opaque_existential_1, v70, v56);
  }

  v39 = sub_268F9AEF4();
  v40 = v76;
  v76[24] = v39;
  v40[25] = v41;

  if (v68)
  {
    v53 = v68;
    v52 = v68;
    v42 = sub_268F9A994();
    v43 = v76;
    v44 = v52;
    v76[29] = v42;
    v43[26] = v44;
  }

  else
  {
    v47 = v76;
    v76[26] = 0;
    v47[27] = 0;
    v47[28] = 0;
    v47[29] = 0;
  }

  sub_268CD0F7C();
  v51[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v51[2] = sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5E278(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5E414(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5E598(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  v13[5] = MEMORY[0x277D837D0];
  v13[2] = a1;
  v13[3] = a2;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v12 = MEMORY[0x277D839B0];
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a3;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = v12;
  *(v13 + 112) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5E7AC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  v13[5] = MEMORY[0x277D837D0];
  v13[2] = a1;
  v13[3] = a2;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v12 = MEMORY[0x277D839B0];
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a3;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = v12;
  *(v13 + 112) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5E9A8(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = sub_268F9AA44();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  if (a2 == 2)
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  else
  {
    v7[11] = MEMORY[0x277D839B0];
    *(v7 + 64) = a2 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5EBB8(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = a1;
  v7[3] = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5ED20(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = a1;
  v7[3] = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5EE70(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5F0A0(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5F2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsMultiSetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = sub_268F9A994();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsMultiSetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = sub_268F9A994();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5F828(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5FA58(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5FC70()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5FD4C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5FE10()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F5FEEC()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F5FFB0(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F601E0(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268F603F8(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsMultiSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268F60628(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsMultiSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

uint64_t type metadata accessor for SetBinarySettingIntentCATs(uint64_t a1)
{
  v2 = qword_2802DE618;
  if (!qword_2802DE618)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F608B4(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F60980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

void __swiftcall BinarySettingModel.init(settingId:graphicIcon:label:secondLabel:oldValue:updatedValue:url:directInvocationId:deviceCategoryInt:)(SiriSettingsIntents::BinarySettingModel *__return_ptr retstr, Swift::String settingId, Swift::String graphicIcon, Swift::String label, Swift::String secondLabel, Swift::Bool oldValue, Swift::Bool updatedValue, Swift::String_optional url, Swift::String_optional directInvocationId, Swift::Int deviceCategoryInt)
{
  countAndFlagsBits = settingId._countAndFlagsBits;
  object = settingId._object;
  v11 = graphicIcon._countAndFlagsBits;
  v17 = graphicIcon._object;
  v12 = label._countAndFlagsBits;
  v16 = label._object;
  v13 = secondLabel._countAndFlagsBits;
  v15 = secondLabel._object;
  memset(__b, 0, sizeof(__b));

  __b[0] = countAndFlagsBits;
  __b[1] = object;

  __b[2] = v11;
  __b[3] = v17;

  __b[4] = v12;
  __b[5] = v16;

  __b[6] = v13;
  __b[7] = v15;
  LOBYTE(__b[8]) = oldValue;
  BYTE1(__b[8]) = updatedValue;

  *&__b[9] = url;

  *&__b[11] = directInvocationId;
  __b[13] = deviceCategoryInt;
  sub_268D28EFC(__b, retstr);

  sub_268D29010(__b);
}

void __swiftcall NumericSettingModel.init(settingId:graphicIcon:leftIconName:rightIconName:label:oldValue:updatedValue:minValue:maxValue:step:url:deviceCategoryInt:)(SiriSettingsIntents::NumericSettingModel *__return_ptr retstr, Swift::String settingId, Swift::String graphicIcon, Swift::String leftIconName, Swift::String rightIconName, Swift::String label, Swift::Double oldValue, Swift::Double updatedValue, Swift::Double minValue, Swift::Double maxValue, Swift::Double step, Swift::String_optional url, Swift::Int deviceCategoryInt)
{
  countAndFlagsBits = settingId._countAndFlagsBits;
  object = settingId._object;
  v14 = graphicIcon._countAndFlagsBits;
  v23 = graphicIcon._object;
  v15 = leftIconName._countAndFlagsBits;
  v22 = leftIconName._object;
  v16 = rightIconName._countAndFlagsBits;
  v21 = rightIconName._object;
  *&v17._countAndFlagsBits = oldValue;
  *&v17._object = updatedValue;
  *&v18._countAndFlagsBits = minValue;
  *&v18._object = maxValue;
  memset(__b, 0, sizeof(__b));

  __b[0]._countAndFlagsBits = countAndFlagsBits;
  __b[0]._object = object;

  __b[1]._countAndFlagsBits = v14;
  __b[1]._object = v23;

  __b[2]._countAndFlagsBits = v15;
  __b[2]._object = v22;

  __b[3]._countAndFlagsBits = v16;
  __b[3]._object = v21;

  __b[4] = label;
  __b[5] = v17;
  __b[6] = v18;
  *&__b[7]._countAndFlagsBits = step;

  *&__b[7]._object = url;
  __b[8]._object = deviceCategoryInt;
  sub_268D34CD8(__b, retstr);

  sub_268D34F58(__b);
}

uint64_t sub_268F61044()
{
  result = sub_268F9AEF4();
  qword_2802DE628 = result;
  qword_2802DE630 = v1;
  return result;
}

uint64_t *sub_268F61088()
{
  if (qword_2802DB8D8 != -1)
  {
    swift_once();
  }

  return &qword_2802DE628;
}

uint64_t static SnippetModels.bundleName.getter()
{
  v1 = *sub_268F61088();

  return v1;
}

BOOL sub_268F61124(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;

  v7[0] = sub_268F9AEF4();
  v7[1] = v2;
  v6 = MEMORY[0x26D62DB50](v7[0], v2, a1, a2);
  sub_268CD9D30(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_268F61254()
{
  v2 = qword_2802DE638;
  if (!qword_2802DE638)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F61304(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

BOOL sub_268F614D8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F61124(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268F6153C()
{
  v2 = qword_2802DE640;
  if (!qword_2802DE640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F61644()
{
  v2 = qword_2802DE648;
  if (!qword_2802DE648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE648);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F6178C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F61304(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268F617E8()
{
  v2 = qword_2802DE650;
  if (!qword_2802DE650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F618CC()
{
  v2 = qword_2802DE658;
  if (!qword_2802DE658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F61990()
{
  v2 = qword_2802DE660;
  if (!qword_2802DE660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE660);
    return WitnessTable;
  }

  return v2;
}

uint64_t SnippetModels.encode(to:)(void *a1)
{
  v47 = a1;
  v61 = 0;
  v60 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE668, &qword_268FAC800);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v2, v3, v4);
  v37 = &v17 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE670, &qword_268FAC808);
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38, v5, v6, v7);
  v42 = &v17 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE678, &qword_268FAC810);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v8, v9, v10);
  v48 = &v17 - v46;
  v61 = v11;
  v51 = v62;
  v52 = 145;
  memcpy(v62, v1, 0x91uLL);
  v60 = v1;
  v49 = v47[3];
  v50 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v49);
  sub_268F617E8();
  sub_268F9B844();
  v53 = __dst;
  memcpy(__dst, v51, v52);
  if (sub_268F61F78(v53) == 1)
  {
    nullsub_1();
    v22 = v14;
    sub_268D34CD8(v14, v59);
    v21 = &v58;
    v58 = 1;
    sub_268F61990();
    sub_268F9B674();
    v23 = v57;
    memcpy(v57, v22, 0x90uLL);
    sub_268F61F84();
    v15 = v32;
    sub_268F9B6E4();
    v24 = v15;
    v25 = v15;
    if (!v15)
    {
      (*(v34 + 8))(v37, v33);
      sub_268D34F58(v22);
      v26 = v24;
      goto LABEL_6;
    }

    v17 = v25;
    (*(v34 + 8))(v37, v33);
    sub_268D34F58(v22);
    return (*(v44 + 8))(v48, v43);
  }

  else
  {
    nullsub_1();
    v28 = v12;
    sub_268D28EFC(v12, &v56);
    v27 = &v55;
    v55 = 0;
    sub_268F6153C();
    sub_268F9B674();
    v29 = v54;
    memcpy(v54, v28, 0x70uLL);
    sub_268F62000();
    v13 = v32;
    sub_268F9B6E4();
    v30 = v13;
    v31 = v13;
    if (!v13)
    {
      (*(v39 + 8))(v42, v38);
      sub_268D29010(v28);
      v26 = v30;
LABEL_6:
      v20 = v26;
      return (*(v44 + 8))(v48, v43);
    }

    v18 = v31;
    (*(v39 + 8))(v42, v38);
    sub_268D29010(v28);
    result = (*(v44 + 8))(v48, v43);
    v19 = v18;
  }

  return result;
}

unint64_t sub_268F61F84()
{
  v2 = qword_2802DE680;
  if (!qword_2802DE680)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F62000()
{
  v2 = qword_2802DE688;
  if (!qword_2802DE688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE688);
    return WitnessTable;
  }

  return v2;
}

void SnippetModels.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v79 = a1;
  v108 = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE690, &qword_268FAC818);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v2, v3, v4);
  v73 = v23 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE698, &qword_268FAC820);
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v5, v6, v7);
  v78 = v23 - v77;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6A0, &qword_268FAC828);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v8, v9, v10);
  v84 = v23 - v83;
  v108 = v11;
  v86 = v11[3];
  v87 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v86);
  sub_268F617E8();
  v12 = v85;
  sub_268F9B834();
  v88 = v12;
  v89 = v12;
  if (v12)
  {
    v36 = v89;
  }

  else
  {
    v13 = sub_268F9B664();
    v64 = &v103;
    v103 = v13;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6A8, &qword_268FAC830);
    sub_268F62964();
    v104 = sub_268F9B414();
    v105 = v14;
    v106 = v15;
    v107 = v16;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6B8, &qword_268FAC838);
    v66 = sub_268F629EC();
    sub_268F9B224();
    v67 = v102;
    if (v102 == 2 || (v62 = v67, v56 = v67, v60 = v104, v57 = v105, v58 = v106, v59 = v107, swift_unknownObjectRetain(), v98 = v60, v99 = v57, v100 = v58, v101 = v59, v61 = sub_268F9B244(), swift_unknownObjectRelease(), (v61 & 1) == 0))
    {
      v30 = 0;
      v34 = sub_268F9B4E4();
      v28 = 1;
      v35 = swift_allocError();
      v33 = v21;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6C8, &qword_268FAC840);
      v29 = v33 + *(v22 + 48);
      *v33 = &type metadata for SnippetModels;
      v31 = sub_268F9B5E4();
      v32 = sub_268F9AEF4();
      sub_268F9B4D4();
      (*(*(v34 - 8) + 104))(v33, *MEMORY[0x277D84160]);
      swift_willThrow();
      sub_268F62A74(&v104);
      (*(v81 + 8))(v84, v80);
      v36 = v35;
    }

    else if (v56)
    {
      v44 = &v97;
      v97 = v56 & 1;
      sub_268F61990();
      v19 = v88;
      sub_268F9B5D4();
      v45 = v19;
      v46 = v19;
      if (v19)
      {
        v25 = v46;
        sub_268F62A74(&v104);
        (*(v81 + 8))(v84, v80);
        v36 = v25;
      }

      else
      {
        sub_268F62AA0();
        v20 = v45;
        sub_268F9B654();
        v42 = v20;
        v43 = v20;
        if (!v20)
        {
          v39 = v94;
          v40 = 144;
          memcpy(v94, v96, sizeof(v94));
          v41 = v95;
          memcpy(v95, v94, 0x90uLL);
          sub_268D34E04(v95);
          memcpy(__dst, v41, 0x91uLL);
          (*(v70 + 8))(v73, v69);
          v50 = v42;
          goto LABEL_13;
        }

        v24 = v43;
        (*(v70 + 8))(v73, v69);
        sub_268F62A74(&v104);
        (*(v81 + 8))(v84, v80);
        v36 = v24;
      }
    }

    else
    {
      v53 = &v93;
      v93 = v56 & 1;
      sub_268F6153C();
      v17 = v88;
      sub_268F9B5D4();
      v54 = v17;
      v55 = v17;
      if (v17)
      {
        v27 = v55;
        sub_268F62A74(&v104);
        (*(v81 + 8))(v84, v80);
        v36 = v27;
      }

      else
      {
        sub_268F62E30();
        v18 = v54;
        sub_268F9B654();
        v51 = v18;
        v52 = v18;
        if (!v18)
        {
          v47 = v90;
          v48 = 112;
          memcpy(v90, v92, sizeof(v90));
          v49 = v91;
          memcpy(v91, v90, 0x70uLL);
          sub_268D34FC0(v91);
          memcpy(__dst, v49, 0x91uLL);
          (*(v75 + 8))(v78, v74);
          v50 = v51;
LABEL_13:
          v38 = v50;
          sub_268F62A74(&v104);
          (*(v81 + 8))(v84, v80);
          v37 = __dst;
          sub_268F62B1C(__dst, v68);
          __swift_destroy_boxed_opaque_existential_0(v79);
          sub_268F62D80(v37);
          return;
        }

        v26 = v52;
        (*(v75 + 8))(v78, v74);
        sub_268F62A74(&v104);
        (*(v81 + 8))(v84, v80);
        v36 = v26;
      }
    }
  }

  v23[1] = v36;
  __swift_destroy_boxed_opaque_existential_0(v79);
}

unint64_t sub_268F62964()
{
  v2 = qword_2802DE6B0;
  if (!qword_2802DE6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE6A8, &qword_268FAC830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F629EC()
{
  v2 = qword_2802DE6C0;
  if (!qword_2802DE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE6B8, &qword_268FAC838);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F62AA0()
{
  v2 = qword_2802DE6D0;
  if (!qword_2802DE6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F62B1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = a1[14];
  v18 = a1[15];
  v19 = a1[16];
  v20 = a1[17];
  v21 = *(a1 + 144);
  sub_268F62CB8(*a1, v3, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  result = a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17;
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 136) = v20;
  *(a2 + 144) = v21 & 1;
  return result;
}

uint64_t sub_268F62CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
}

unint64_t sub_268F62E30()
{
  v2 = qword_2802DE6D8;
  if (!qword_2802DE6D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t BinarySettingModel.settingId.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t BinarySettingModel.graphicIcon.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t BinarySettingModel.label.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t BinarySettingModel.secondLabel.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t BinarySettingModel.url.getter()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t BinarySettingModel.directInvocationId.getter()
{
  v2 = *(v0 + 88);

  return v2;
}

uint64_t sub_268F6314C(uint64_t a1, uint64_t a2)
{
  v33[2] = a1;
  v33[3] = a2;

  v33[0] = sub_268F9AEF4();
  v33[1] = v2;
  v32[2] = a1;
  v32[3] = a2;
  v24 = MEMORY[0x26D62DB50](v33[0], v2, a1, a2);
  sub_268CD9D30(v33);
  if (v24)
  {

    v34 = 0;
    v21 = 0;
LABEL_20:

    return v21;
  }

  v32[0] = sub_268F9AEF4();
  v32[1] = v3;
  v31[2] = a1;
  v31[3] = a2;
  v20 = MEMORY[0x26D62DB50](v32[0], v3, a1, a2);
  sub_268CD9D30(v32);
  if (v20)
  {

    v34 = 1;
    v21 = 1;
    goto LABEL_20;
  }

  v31[0] = sub_268F9AEF4();
  v31[1] = v4;
  v30[2] = a1;
  v30[3] = a2;
  v19 = MEMORY[0x26D62DB50](v31[0], v4, a1, a2);
  sub_268CD9D30(v31);
  if (v19)
  {

    v34 = 2;
    v21 = 2;
    goto LABEL_20;
  }

  v30[0] = sub_268F9AEF4();
  v30[1] = v5;
  v29[2] = a1;
  v29[3] = a2;
  v18 = MEMORY[0x26D62DB50](v30[0], v5, a1, a2);
  sub_268CD9D30(v30);
  if (v18)
  {

    v34 = 3;
    v21 = 3;
    goto LABEL_20;
  }

  v29[0] = sub_268F9AEF4();
  v29[1] = v6;
  v28[2] = a1;
  v28[3] = a2;
  v17 = MEMORY[0x26D62DB50](v29[0], v6, a1, a2);
  sub_268CD9D30(v29);
  if (v17)
  {

    v34 = 4;
    v21 = 4;
    goto LABEL_20;
  }

  v28[0] = sub_268F9AEF4();
  v28[1] = v7;
  v27[2] = a1;
  v27[3] = a2;
  v16 = MEMORY[0x26D62DB50](v28[0], v7, a1, a2);
  sub_268CD9D30(v28);
  if (v16)
  {

    v34 = 5;
    v21 = 5;
    goto LABEL_20;
  }

  v27[0] = sub_268F9AEF4();
  v27[1] = v8;
  v26[2] = a1;
  v26[3] = a2;
  v15 = MEMORY[0x26D62DB50](v27[0], v8, a1, a2);
  sub_268CD9D30(v27);
  if (v15)
  {

    v34 = 6;
    v21 = 6;
    goto LABEL_20;
  }

  v26[0] = sub_268F9AEF4();
  v26[1] = v9;
  v25[2] = a1;
  v25[3] = a2;
  v14 = MEMORY[0x26D62DB50](v26[0], v9, a1, a2);
  sub_268CD9D30(v26);
  if (v14)
  {

    v34 = 7;
    v21 = 7;
    goto LABEL_20;
  }

  v25[0] = sub_268F9AEF4();
  v25[1] = v10;
  v13 = MEMORY[0x26D62DB50](v25[0], v10, a1, a2);
  sub_268CD9D30(v25);
  if (v13)
  {

    v34 = 8;
    v21 = 8;
    goto LABEL_20;
  }

  return 9;
}

BOOL sub_268F63738(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      default:
        v4 = 8;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      default:
        v3 = 8;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268F63BA8()
{
  v2 = qword_2802DE6E0;
  if (!qword_2802DE6E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F63ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F6314C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268F63EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268F63720();
  *a1 = result;
  return result;
}

unint64_t sub_268F63F58()
{
  v2 = qword_2802DE6E8;
  if (!qword_2802DE6E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t BinarySettingModel.encode(to:)(uint64_t a1)
{
  v37 = a1;
  v73 = 0;
  v72 = 0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6F0, &qword_268FAC848);
  v38 = *(v60 - 8);
  v39 = v60 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v2, v3, v4);
  v56 = v14 - v40;
  v73 = v5;
  v58 = *v1;
  v59 = v1[1];
  v41 = v1[2];
  v42 = v1[3];
  v43 = v1[4];
  v44 = v1[5];
  v45 = v1[6];
  v46 = v1[7];
  v47 = *(v1 + 64);
  v48 = *(v1 + 65);
  v49 = v1[9];
  v50 = v1[10];
  v51 = v1[11];
  v52 = v1[12];
  v53 = v1[13];
  v72 = v1;
  v54 = v5[3];
  v55 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v54);
  sub_268F63F58();
  sub_268F9B844();
  v6 = v57;

  v71 = 0;
  sub_268F9B6A4();
  v61 = v6;
  v62 = v6;
  if (v6)
  {
    v19 = v62;

    result = (*(v38 + 8))(v56, v60);
    v20 = v19;
  }

  else
  {

    v7 = v61;

    v70 = 1;
    sub_268F9B6A4();
    v35 = v7;
    v36 = v7;
    if (v7)
    {
      v18 = v36;

      result = (*(v38 + 8))(v56, v60);
      v20 = v18;
    }

    else
    {

      v8 = v35;

      v69 = 2;
      sub_268F9B6A4();
      v33 = v8;
      v34 = v8;
      if (v8)
      {
        v17 = v34;

        result = (*(v38 + 8))(v56, v60);
        v20 = v17;
      }

      else
      {

        v9 = v33;

        v68 = 3;
        sub_268F9B6A4();
        v31 = v9;
        v32 = v9;
        if (v9)
        {
          v16 = v32;

          result = (*(v38 + 8))(v56, v60);
          v20 = v16;
        }

        else
        {

          v10 = v31;
          v67 = 4;
          sub_268F9B6B4();
          v29 = v10;
          v30 = v10;
          if (v10)
          {
            v15 = v30;
            result = (*(v38 + 8))(v56, v60);
            v20 = v15;
          }

          else
          {
            v66 = 5;
            sub_268F9B6B4();
            v27 = 0;
            v28 = 0;

            v65 = 6;
            sub_268F9B684();
            v25 = 0;
            v26 = 0;

            v11 = v25;

            v64 = 7;
            sub_268F9B684();
            v23 = v11;
            v24 = v11;
            if (v11)
            {
              v14[1] = v24;

              return (*(v38 + 8))(v56, v60);
            }

            else
            {

              v12 = v23;
              v63 = 8;
              sub_268F9B6D4();
              v21 = v12;
              v22 = v12;
              if (v12)
              {
                v14[0] = v22;
              }

              return (*(v38 + 8))(v56, v60);
            }
          }
        }
      }
    }
  }

  return result;
}

void BinarySettingModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v62 = a1;
  v61 = 15;
  v82 = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6F8, &qword_268FAC850);
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v2, v3, v4);
  v67 = v22 - v66;
  v82 = v5;
  v69 = v5[3];
  v70 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v69);
  sub_268F63F58();
  v6 = v68;
  sub_268F9B834();
  v71 = v6;
  v72 = v6;
  if (v6)
  {
    v24 = v72;
    v25 = 0;
    v23 = 0;
    v22[1] = v72;
    __swift_destroy_boxed_opaque_existential_0(v62);
    if (v23)
    {
      sub_268CD9D30(v83);
    }

    if ((v23 & 2) != 0)
    {
      sub_268CD9D30(v84);
    }

    if ((v23 & 4) != 0)
    {
      sub_268CD9D30(v85);
    }

    if ((v23 & 8) != 0)
    {
      sub_268CD9D30(v86);
    }

    if ((v23 & 0x40) != 0)
    {
      sub_268CD9D30(v89);
    }

    if ((v23 & 0x80) != 0)
    {
      sub_268CD9D30(v90);
    }
  }

  else
  {
    v81 = 0;
    v7 = sub_268F9B614();
    v56 = 0;
    v57 = v7;
    v58 = v8;
    v59 = 0;
    v83[0] = v7;
    v83[1] = v8;
    v80 = 1;
    v9 = sub_268F9B614();
    v52 = 0;
    v53 = v9;
    v54 = v10;
    v55 = 0;
    v84[0] = v9;
    v84[1] = v10;
    v79 = 2;
    v11 = sub_268F9B614();
    v48 = 0;
    v49 = v11;
    v50 = v12;
    v51 = 0;
    v85[0] = v11;
    v85[1] = v12;
    v78 = 3;
    v13 = sub_268F9B614();
    v44 = 0;
    v45 = v13;
    v46 = v14;
    v47 = 0;
    v86[0] = v13;
    v86[1] = v14;
    v77 = 4;
    v15 = sub_268F9B624();
    v41 = 0;
    v42 = v15;
    v43 = 0;
    v87 = v15 & 1;
    v76 = 5;
    v16 = sub_268F9B624();
    v38 = 0;
    v39 = v16;
    v40 = 0;
    v88 = v16 & 1;
    v75 = 6;
    v17 = sub_268F9B5F4();
    v34 = 0;
    v35 = v17;
    v36 = v18;
    v37 = 0;
    v89[0] = v17;
    v89[1] = v18;
    v74 = 7;
    v19 = sub_268F9B5F4();
    v30 = 0;
    v31 = v19;
    v32 = v20;
    v33 = 0;
    v90[0] = v19;
    v90[1] = v20;
    v73 = 8;
    v21 = sub_268F9B644();
    v27 = 0;
    v28 = v21;
    v29 = 0;
    v26 = v83;
    v90[2] = v21;
    (*(v64 + 8))(v67, v63);
    sub_268D28EFC(v26, v60);
    __swift_destroy_boxed_opaque_existential_0(v62);
    sub_268D29010(v26);
  }
}

uint64_t NumericSettingModel.settingId.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t NumericSettingModel.graphicIcon.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t NumericSettingModel.leftIconName.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t NumericSettingModel.rightIconName.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t NumericSettingModel.label.getter()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t NumericSettingModel.url.getter()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_268F6541C(uint64_t a1, uint64_t a2)
{
  v42[2] = a1;
  v42[3] = a2;

  v42[0] = sub_268F9AEF4();
  v42[1] = v2;
  v41[2] = a1;
  v41[3] = a2;
  v30 = MEMORY[0x26D62DB50](v42[0], v2, a1, a2);
  sub_268CD9D30(v42);
  if (v30)
  {

    v43 = 0;
    v27 = 0;
LABEL_26:

    return v27;
  }

  v41[0] = sub_268F9AEF4();
  v41[1] = v3;
  v40[2] = a1;
  v40[3] = a2;
  v26 = MEMORY[0x26D62DB50](v41[0], v3, a1, a2);
  sub_268CD9D30(v41);
  if (v26)
  {

    v43 = 1;
    v27 = 1;
    goto LABEL_26;
  }

  v40[0] = sub_268F9AEF4();
  v40[1] = v4;
  v39[2] = a1;
  v39[3] = a2;
  v25 = MEMORY[0x26D62DB50](v40[0], v4, a1, a2);
  sub_268CD9D30(v40);
  if (v25)
  {

    v43 = 2;
    v27 = 2;
    goto LABEL_26;
  }

  v39[0] = sub_268F9AEF4();
  v39[1] = v5;
  v38[2] = a1;
  v38[3] = a2;
  v24 = MEMORY[0x26D62DB50](v39[0], v5, a1, a2);
  sub_268CD9D30(v39);
  if (v24)
  {

    v43 = 3;
    v27 = 3;
    goto LABEL_26;
  }

  v38[0] = sub_268F9AEF4();
  v38[1] = v6;
  v37[2] = a1;
  v37[3] = a2;
  v23 = MEMORY[0x26D62DB50](v38[0], v6, a1, a2);
  sub_268CD9D30(v38);
  if (v23)
  {

    v43 = 4;
    v27 = 4;
    goto LABEL_26;
  }

  v37[0] = sub_268F9AEF4();
  v37[1] = v7;
  v36[2] = a1;
  v36[3] = a2;
  v22 = MEMORY[0x26D62DB50](v37[0], v7, a1, a2);
  sub_268CD9D30(v37);
  if (v22)
  {

    v43 = 5;
    v27 = 5;
    goto LABEL_26;
  }

  v36[0] = sub_268F9AEF4();
  v36[1] = v8;
  v35[2] = a1;
  v35[3] = a2;
  v21 = MEMORY[0x26D62DB50](v36[0], v8, a1, a2);
  sub_268CD9D30(v36);
  if (v21)
  {

    v43 = 6;
    v27 = 6;
    goto LABEL_26;
  }

  v35[0] = sub_268F9AEF4();
  v35[1] = v9;
  v34[2] = a1;
  v34[3] = a2;
  v20 = MEMORY[0x26D62DB50](v35[0], v9, a1, a2);
  sub_268CD9D30(v35);
  if (v20)
  {

    v43 = 7;
    v27 = 7;
    goto LABEL_26;
  }

  v34[0] = sub_268F9AEF4();
  v34[1] = v10;
  v33[2] = a1;
  v33[3] = a2;
  v19 = MEMORY[0x26D62DB50](v34[0], v10, a1, a2);
  sub_268CD9D30(v34);
  if (v19)
  {

    v43 = 8;
    v27 = 8;
    goto LABEL_26;
  }

  v33[0] = sub_268F9AEF4();
  v33[1] = v11;
  v32[2] = a1;
  v32[3] = a2;
  v18 = MEMORY[0x26D62DB50](v33[0], v11, a1, a2);
  sub_268CD9D30(v33);
  if (v18)
  {

    v43 = 9;
    v27 = 9;
    goto LABEL_26;
  }

  v32[0] = sub_268F9AEF4();
  v32[1] = v12;
  v31[2] = a1;
  v31[3] = a2;
  v17 = MEMORY[0x26D62DB50](v32[0], v12, a1, a2);
  sub_268CD9D30(v32);
  if (v17)
  {

    v43 = 10;
    v27 = 10;
    goto LABEL_26;
  }

  v31[0] = sub_268F9AEF4();
  v31[1] = v13;
  v16 = MEMORY[0x26D62DB50](v31[0], v13, a1, a2);
  sub_268CD9D30(v31);
  if (v16)
  {

    v43 = 11;
    v27 = 11;
    goto LABEL_26;
  }

  return 12;
}

BOOL sub_268F65BD0(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      case 9:
        v4 = 9;
        break;
      case 10:
        v4 = 10;
        break;
      default:
        v4 = 11;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      case 9:
        v3 = 9;
        break;
      case 10:
        v3 = 10;
        break;
      default:
        v3 = 11;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268F66184()
{
  v2 = qword_2802DE700;
  if (!qword_2802DE700)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE700);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F66560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F6541C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268F6658C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268F65BB8();
  *a1 = result;
  return result;
}

unint64_t sub_268F665E8()
{
  v2 = qword_2802DE708;
  if (!qword_2802DE708)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE708);
    return WitnessTable;
  }

  return v2;
}

uint64_t NumericSettingModel.encode(to:)(uint64_t a1)
{
  v43 = a1;
  v85 = 0;
  v84 = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE710, &qword_268FAC858);
  v44 = *(v69 - 8);
  v45 = v69 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v2, v3, v4);
  v65 = v14 - v46;
  v85 = v5;
  v67 = *v1;
  v68 = v1[1];
  v47 = v1[2];
  v48 = v1[3];
  v49 = v1[4];
  v50 = v1[5];
  v51 = v1[6];
  v52 = v1[7];
  v53 = v1[8];
  v54 = v1[9];
  v55 = v1[10];
  v56 = v1[11];
  v57 = v1[12];
  v58 = v1[13];
  v59 = v1[14];
  v60 = v1[15];
  v61 = v1[16];
  v62 = v1[17];
  v84 = v1;
  v63 = v5[3];
  v64 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v63);
  sub_268F665E8();
  sub_268F9B844();
  v6 = v66;

  v83 = 0;
  sub_268F9B6A4();
  v70 = v6;
  v71 = v6;
  if (v6)
  {
    v19 = v71;

    result = (*(v44 + 8))(v65, v69);
    v20 = v19;
  }

  else
  {

    v7 = v70;

    v82 = 1;
    sub_268F9B6A4();
    v41 = v7;
    v42 = v7;
    if (v7)
    {
      v18 = v42;

      result = (*(v44 + 8))(v65, v69);
      v20 = v18;
    }

    else
    {

      v8 = v41;

      v81 = 2;
      sub_268F9B6A4();
      v39 = v8;
      v40 = v8;
      if (v8)
      {
        v17 = v40;

        result = (*(v44 + 8))(v65, v69);
        v20 = v17;
      }

      else
      {

        v9 = v39;

        v80 = 3;
        sub_268F9B6A4();
        v37 = v9;
        v38 = v9;
        if (v9)
        {
          v16 = v38;

          result = (*(v44 + 8))(v65, v69);
          v20 = v16;
        }

        else
        {

          v10 = v37;

          v79 = 4;
          sub_268F9B6A4();
          v35 = v10;
          v36 = v10;
          if (v10)
          {
            v15 = v36;

            result = (*(v44 + 8))(v65, v69);
            v20 = v15;
          }

          else
          {

            v11 = v35;
            v78 = 5;
            sub_268F9B6C4();
            v33 = v11;
            v34 = v11;
            if (v11)
            {
              v14[7] = v34;
              return (*(v44 + 8))(v65, v69);
            }

            else
            {
              v77 = 6;
              sub_268F9B6C4();
              v31 = 0;
              v32 = 0;
              v76 = 7;
              sub_268F9B6C4();
              v29 = 0;
              v30 = 0;
              v75 = 8;
              sub_268F9B6C4();
              v27 = 0;
              v28 = 0;
              v74 = 9;
              sub_268F9B6C4();
              v25 = 0;
              v26 = 0;

              v73 = 10;
              sub_268F9B684();
              v23 = 0;
              v24 = 0;

              v12 = v23;
              v72 = 11;
              sub_268F9B6D4();
              v21 = v12;
              v22 = v12;
              if (v12)
              {
                v14[1] = v22;
              }

              return (*(v44 + 8))(v65, v69);
            }
          }
        }
      }
    }
  }

  return result;
}

void NumericSettingModel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v76 = v103;
  v77 = a2;
  v79 = a1;
  v78 = 31;
  v102 = 0;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE718, &qword_268FAC860);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v2, v3, v4);
  v84 = &v29 - v83;
  v102 = v5;
  v86 = v5[3];
  v87 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v86);
  sub_268F665E8();
  v6 = v85;
  sub_268F9B834();
  v88 = v6;
  v89 = v6;
  if (v6)
  {
    v31 = v89;
    v32 = 0;
    v30 = 0;
    v29 = v89;
    __swift_destroy_boxed_opaque_existential_0(v79);
    if (v30)
    {
      sub_268CD9D30(v103);
    }

    if ((v30 & 2) != 0)
    {
      sub_268CD9D30(v104);
    }

    if ((v30 & 4) != 0)
    {
      sub_268CD9D30(v105);
    }

    if ((v30 & 8) != 0)
    {
      sub_268CD9D30(v106);
    }

    if ((v30 & 0x10) != 0)
    {
      sub_268CD9D30(v107);
    }

    if ((v30 & 0x400) != 0)
    {
      sub_268CD9D30(v108);
    }
  }

  else
  {
    v101 = 0;
    v7 = sub_268F9B614();
    v72 = 0;
    v73 = v7;
    v74 = v8;
    v75 = 0;
    v103[0] = v7;
    v103[1] = v8;
    v100 = 1;
    v9 = sub_268F9B614();
    v68 = 0;
    v69 = v9;
    v70 = v10;
    v71 = 0;
    v104[0] = v9;
    v104[1] = v10;
    v99 = 2;
    v11 = sub_268F9B614();
    v64 = 0;
    v65 = v11;
    v66 = v12;
    v67 = 0;
    v105[0] = v11;
    v105[1] = v12;
    v98 = 3;
    v13 = sub_268F9B614();
    v60 = 0;
    v61 = v13;
    v62 = v14;
    v63 = 0;
    v106[0] = v13;
    v106[1] = v14;
    v97 = 4;
    v15 = sub_268F9B614();
    v56 = 0;
    v57 = v15;
    v58 = v16;
    v59 = 0;
    v107[0] = v15;
    v107[1] = v16;
    v96 = 5;
    sub_268F9B634();
    v53 = 0;
    v54 = v17;
    v55 = 0;
    v107[2] = v17;
    v95 = 6;
    sub_268F9B634();
    v50 = 0;
    v51 = v18;
    v52 = 0;
    v107[3] = v18;
    v94 = 7;
    sub_268F9B634();
    v47 = 0;
    v48 = v19;
    v49 = 0;
    v107[4] = v19;
    v93 = 8;
    sub_268F9B634();
    v44 = 0;
    v45 = v20;
    v46 = 0;
    v107[5] = v20;
    v92 = 9;
    sub_268F9B634();
    v41 = 0;
    v42 = v21;
    v43 = 0;
    v76[14] = v21;
    v91 = 10;
    v22 = sub_268F9B5F4();
    v37 = 0;
    v38 = v22;
    v39 = v23;
    v40 = 0;
    v24 = v76;
    v76[15] = v22;
    v24[16] = v23;
    v90 = 11;
    v25 = sub_268F9B644();
    v34 = 0;
    v35 = v25;
    v36 = 0;
    v26 = v80;
    v27 = v84;
    v28 = v81;
    v33 = v103;
    v76[17] = v35;
    (*(v28 + 8))(v27, v26);
    sub_268D34CD8(v33, v77);
    __swift_destroy_boxed_opaque_existential_0(v79);
    sub_268D34F58(v33);
  }
}

unint64_t sub_268F67D70()
{
  v2 = qword_2802DE720;
  if (!qword_2802DE720)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F67E04()
{
  v2 = qword_2802DE728;
  if (!qword_2802DE728)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F67E80(uint64_t a1)
{
  result = sub_268F67EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F67EAC()
{
  v2 = qword_2802DE730;
  if (!qword_2802DE730)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F67F58(uint64_t a1)
{
  result = sub_268F67F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F67F84()
{
  v2 = qword_2802DE738;
  if (!qword_2802DE738)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE738);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F68108(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 145))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 144) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F68200(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 145);
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 144) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t sub_268F6852C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F68644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268F68850(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268F689B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_268F68BF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_268F68D10(void *result, int a2, int a3)
{
  v3 = result + 18;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[1] = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_268F68F18(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF4)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 11) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 244;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 12;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268F69080(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF4)
  {
    v5 = ((a3 + 11) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF4)
  {
    v4 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

unint64_t sub_268F692A8()
{
  v2 = qword_2802DE740;
  if (!qword_2802DE740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6933C()
{
  v2 = qword_2802DE748;
  if (!qword_2802DE748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F693D0()
{
  v2 = qword_2802DE750;
  if (!qword_2802DE750)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69464()
{
  v2 = qword_2802DE758;
  if (!qword_2802DE758)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F694F8()
{
  v2 = qword_2802DE760;
  if (!qword_2802DE760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6958C()
{
  v2 = qword_2802DE768;
  if (!qword_2802DE768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69620()
{
  v2 = qword_2802DE770;
  if (!qword_2802DE770)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F696B4()
{
  v2 = qword_2802DE778;
  if (!qword_2802DE778)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69748()
{
  v2 = qword_2802DE780;
  if (!qword_2802DE780)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F697DC()
{
  v2 = qword_2802DE788;
  if (!qword_2802DE788)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69870()
{
  v2 = qword_2802DE790;
  if (!qword_2802DE790)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69904()
{
  v2 = qword_2802DE798;
  if (!qword_2802DE798)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69998()
{
  v2 = qword_2802DE7A0;
  if (!qword_2802DE7A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69A2C()
{
  v2 = qword_2802DE7A8;
  if (!qword_2802DE7A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F69AC0()
{
  v2 = qword_2802DE7B0;
  if (!qword_2802DE7B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F69B3C()
{
  if (qword_280FE55A0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8218;
}

uint64_t sub_268F69B9C()
{
  type metadata accessor for GetBatteryHandler();
  v0 = sub_268CDC590();
  result = sub_268F69C08(v0, 1, 2);
  qword_280FE8218 = result;
  return result;
}

uint64_t sub_268F69C68()
{
  v1 = *sub_268F69B3C();

  return v1;
}

uint64_t sub_268F69CA0(uint64_t a1, char a2, char a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 25) = a3;

  return v8;
}

uint64_t sub_268F69D24(void *a1, void (*a2)(void), uint64_t a3)
{
  v186 = a3;
  v187 = a2;
  v200 = a1;
  v190 = 0;
  v219 = 0;
  v217 = 0;
  v216 = 0;
  v213 = 0;
  v188 = 0;
  v202 = 0;
  v222 = a1;
  v220 = a2;
  v221 = a3;
  v197 = sub_268F9B284();
  v199 = *sub_268DC7AE8();
  v3 = v199;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v189 = v195;
  v196 = sub_268F9B734();
  v193 = v4;
  v5 = v200;
  v218 = v200;
  v191 = sub_268D2E630();
  sub_268D59CAC();
  v192 = sub_268F9AE74();
  v194 = v6;
  v193[3] = MEMORY[0x277D837D0];
  v7 = sub_268CDD224();
  v8 = v192;
  v9 = v193;
  v10 = v194;
  v193[4] = v7;
  *v9 = v8;
  v9[1] = v10;
  sub_268CD0F7C();
  v198 = v11;
  sub_268F9AC14(v197, &dword_268CBE000, v199, "GetBatteryHandler handling intent %@", 36, 2);

  v201 = [v200 settingMetadata];
  if (!v201)
  {
    HIDWORD(v61) = sub_268F9B294();
    v63 = *sub_268DC7AE8();
    v58 = v63;
    v62 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v61), &dword_268CBE000, v63, "Missing setting metadata", 24, 2);

    sub_268CDD0DC();
    v64 = sub_268CD42AC(6, 0);
    v187();

    return v188;
  }

  v184 = v201;
  v182 = v201;
  v217 = v201;
  v183 = [v201 targetDevice];
  if (v183)
  {
    v181 = v183;
    v177 = v183;
    v178 = [v183 deviceCategory];

    v179 = v178;
    v180 = 0;
  }

  else
  {
    v179 = 0;
    v180 = 1;
  }

  v176 = v179;
  if (v180)
  {
    v65 = sub_268F9B294();
    v67 = *sub_268DC7AE8();
    v57 = v67;
    v66 = sub_268F9B734();
    sub_268F9AC14(v65, &dword_268CBE000, v67, "Missing target device deviceCategory", 36, 2);

    sub_268CDD0DC();
    v68 = sub_268CD42AC(6, 0);
    v187();

    return v188;
  }

  v175 = v176;
  v173 = v176;
  v216 = v176;
  v215 = v176;
  v214 = 6;
  v174 = type metadata accessor for INDeviceCategory(0);
  sub_268CD90DC();
  if (sub_268F9B754())
  {
    v168 = sub_268F9B294();
    v170 = *sub_268DC7AE8();
    v12 = v170;
    v169 = sub_268F9B734();
    sub_268F9AC14(v168, &dword_268CBE000, v170, "Attempting to read battery from a HomePod. Returning.", 53, 2);

    sub_268CDD0DC();
    v171 = sub_268CD42AC(6, 0);
    v187();

    return v188;
  }

  v164 = *(v185 + 16);

  v165 = sub_268D47C08(v173, 0);
  v167 = v13;
  v166 = v165;

  if (v167)
  {
    v152 = sub_268F9B294();
    v134 = v152;
    v153 = *sub_268DC7AE8();
    v135 = v153;
    v25 = v153;
    v26 = v182;
    v141 = 7;
    v142 = swift_allocObject();
    *(v142 + 16) = v182;
    v136 = 17;
    v146 = swift_allocObject();
    v137 = v146;
    v138 = 32;
    *(v146 + 16) = 32;
    v27 = swift_allocObject();
    v28 = v138;
    v147 = v27;
    v139 = v27;
    *(v27 + 16) = 8;
    v140 = v28;
    v29 = swift_allocObject();
    v30 = v142;
    v143 = v29;
    *(v29 + 16) = sub_268F6B578;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v143;
    v150 = v31;
    v144 = v31;
    *(v31 + 16) = sub_268CD7608;
    *(v31 + 24) = v32;
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v145 = v151;
    v148 = sub_268F9B734();
    v149 = v33;

    v34 = v146;
    v35 = v149;
    *v149 = sub_268CD7600;
    v35[1] = v34;

    v36 = v147;
    v37 = v149;
    v149[2] = sub_268CD7600;
    v37[3] = v36;

    v38 = v149;
    v39 = v150;
    v149[4] = sub_268CD7614;
    v38[5] = v39;
    sub_268CD0F7C();

    if (os_log_type_enabled(v153, v152))
    {
      v127 = sub_268F9B3A4();
      v124 = v127;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v128 = sub_268CD5448(0, v125, v125);
      v126 = v128;
      v130 = 1;
      v129 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v207 = v127;
      v206 = v128;
      v205 = v129;
      v131 = &v207;
      sub_268CD549C(2, &v207);
      sub_268CD549C(1, &v207);
      v203 = sub_268CD7600;
      v204 = v137;
      sub_268CD54B0(&v203, &v207, &v206, &v205);
      v132 = v188;
      v133 = v188;
      if (v188)
      {
        v122 = 0;

        __break(1u);
      }

      else
      {
        v203 = sub_268CD7600;
        v204 = v139;
        sub_268CD54B0(&v203, &v207, &v206, &v205);
        v120 = 0;
        v121 = 0;
        v203 = sub_268CD7614;
        v204 = v144;
        sub_268CD54B0(&v203, &v207, &v206, &v205);
        v118 = 0;
        v119 = 0;
        _os_log_impl(&dword_268CBE000, v135, v134, "Unable to determine the device's battery level from setting metadata%s", v124, 0xCu);
        sub_268CD54FC(v126, 0, v125);
        sub_268CD54FC(v129, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v123 = 0;
      }
    }

    else
    {

      v123 = v188;
    }

    v116 = v123;

    v117 = [v200 settingMetadata];
    if (v117 && (v115 = v117, v112 = v117, v114 = [v117 targetDevice], v113 = v114, v117, v114))
    {
      v111 = v113;
      v107 = v113;
      v108 = [v113 deviceCategory];

      v109 = v108;
      v110 = 0;
    }

    else
    {
      v109 = 0;
      v110 = 1;
    }

    v106 = v109;
    if (v110)
    {
      v69 = sub_268F9B294();
      v71 = *sub_268DC7AE8();
      v56 = v71;
      v70 = sub_268F9B734();
      sub_268F9AC14(v69, &dword_268CBE000, v71, "Missing device category.", 24, 2);

      sub_268CDD0DC();
      v72 = sub_268CD42AC(6, 0);
      v187();

      return v116;
    }

    else
    {
      v105 = v106;
      v88 = v106;
      v213 = v106;
      v103 = sub_268F9B294();
      v86 = v103;
      v104 = *sub_268DC7AE8();
      v87 = v104;
      v40 = v104;
      v94 = 7;
      v95 = swift_allocObject();
      *(v95 + 16) = v106;
      v89 = 17;
      v98 = swift_allocObject();
      v90 = v98;
      v91 = 32;
      *(v98 + 16) = 32;
      v41 = swift_allocObject();
      v42 = v91;
      v99 = v41;
      v92 = v41;
      *(v41 + 16) = 8;
      v93 = v42;
      v43 = swift_allocObject();
      v44 = v95;
      v96 = v43;
      *(v43 + 16) = sub_268F6B850;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v96;
      v102 = v45;
      v97 = v45;
      *(v45 + 16) = sub_268CD7608;
      *(v45 + 24) = v46;
      v100 = sub_268F9B734();
      v101 = v47;

      v48 = v98;
      v49 = v101;
      *v101 = sub_268CD7600;
      v49[1] = v48;

      v50 = v99;
      v51 = v101;
      v101[2] = sub_268CD7600;
      v51[3] = v50;

      v52 = v101;
      v53 = v102;
      v101[4] = sub_268CD7614;
      v52[5] = v53;
      sub_268CD0F7C();

      if (os_log_type_enabled(v104, v103))
      {
        v81 = sub_268F9B3A4();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v83 = sub_268CD5448(0, v82, v82);
        v84 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v212 = v81;
        v211 = v83;
        v210 = v84;
        sub_268CD549C(2, &v212);
        sub_268CD549C(1, &v212);
        v208 = sub_268CD7600;
        v209 = v90;
        sub_268CD54B0(&v208, &v212, &v211, &v210);
        v85 = v116;
        if (v116)
        {
          v79 = 0;

          __break(1u);
        }

        else
        {
          v208 = sub_268CD7600;
          v209 = v92;
          sub_268CD54B0(&v208, &v212, &v211, &v210);
          v77 = 0;
          v78 = 0;
          v208 = sub_268CD7614;
          v209 = v97;
          sub_268CD54B0(&v208, &v212, &v211, &v210);
          v75 = 0;
          v76 = 0;
          _os_log_impl(&dword_268CBE000, v87, v86, "Can not find connected device category%s", v81, 0xCu);
          sub_268CD54FC(v83, 0, v82);
          sub_268CD54FC(v84, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();

          v80 = 0;
        }
      }

      else
      {

        v80 = v116;
      }

      v54 = sub_268E948B8(10);
      v73 = v55;
      v74 = sub_268E41B70(v54, v55);

      (v187)(v74);

      return v80;
    }
  }

  v163 = v166;
  v14 = v188;
  v161 = v166;
  v202 = v166;
  v15 = sub_268DBBAE4();
  v155 = *v15;
  v156 = v15[1];
  v157 = *(v15 + 16);
  v158 = *sub_268DC7AE8();
  v154 = v158;
  v16 = v158;
  v159 = *(v185 + 24);
  v17 = v200;

  v160 = &v61;
  MEMORY[0x28223BE20](v155, v156, v157, v158);
  v60[2] = v18;
  v60[3] = v161;
  v60[4] = v187;
  v60[5] = v19;
  sub_268DB944C(v20, v21, v22, v23, v24, sub_268F6B858, v60, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v162 = v14;
  if (!v14)
  {

    return v162;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F6B51C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_268D291D4();
  sub_268D29238();
  return sub_268F9AE74();
}

double sub_268F6B5BC(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v13 = [a1 settingMetadata];
  sub_268DD26C8();
  sub_268D34FD4();
  v4 = sub_268F2B5E0(a2);
  v12 = sub_268E3E3F0(v4, 1);
  v11 = sub_268D4AA1C();
  v5 = sub_268D4AA1C();
  v20 = sub_268E41A08(v13, v12, v11, v5, 0, 0);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v17 = sub_268F9B284();
  v6 = sub_268DC7AE8();
  v18 = *v6;
  MEMORY[0x277D82BE0](*v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v7;
  MEMORY[0x277D82BE0](v20);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v14 = sub_268F9AE74();
  v15 = v8;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC14(v17, &dword_268CBE000, v18, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v18);

  a3(v20);

  *&result = MEMORY[0x277D82BD8](v20).n128_u64[0];
  return result;
}

uint64_t *sub_268F6B88C()
{
  if (qword_280FE2998 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FB0;
}

uint64_t sub_268F6B8EC()
{
  type metadata accessor for GetAXDifferentiateWithoutColorHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE7FB0 = result;
  return result;
}

uint64_t sub_268F6B954()
{
  v1 = *sub_268F6B88C();

  return v1;
}

double sub_268F6B984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXDifferentiateWithoutColorHandler handling intent", 53, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBAD04();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F6BE08, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F6BBA0(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3E8F4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268F6BE60()
{
  type metadata accessor for SetAXReduceWhitePointHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17A8 = result;
  return result;
}

uint64_t *sub_268F6BEC8()
{
  if (qword_2802DB8E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F17A8;
}

uint64_t sub_268F6BF28()
{
  v1 = *sub_268F6BEC8();

  return v1;
}

uint64_t sub_268F6BF58(void *a1, void (*a2)(void), uint64_t a3)
{
  v29 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    v24 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v24 = sub_268F9AE04();
  }

  if (v24 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent), (v4) ? (v23 = 0) : (type metadata accessor for INDeviceCategory(0), sub_268CD7818(), v23 = sub_268F9AE04()), (v23 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent), (v5) ? (v22 = 0) : (type metadata accessor for INDeviceCategory(0), sub_268CD7818(), v22 = sub_268F9AE04()), (v22)))
  {
    v11 = sub_268F9B284();
    v9 = sub_268DC7AE8();
    v12 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "SetAXReduceWhitePointHandler handling intent", 44, 2);

    MEMORY[0x277D82BD8](v12);

    v13 = sub_268D3EF0C();

    v10 = sub_268DBDB14();
    v14 = *v10;
    v15 = v10[1];
    v16 = *(v10 + 16);
    v17 = *(v28 + 24);

    sub_268DAAB84(v13, a1, v14, v15, v16, v17 & 1, a2, a3, sub_268F6C5B4, v28, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268F6C5B4, v28);
  }

  else
  {
    v18 = sub_268F9B284();
    v6 = sub_268DC7AE8();
    v19 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetAXReduceWhitePointHandler handleSet | not supported on this device", 69, 2);

    MEMORY[0x277D82BD8](v19);

    v20 = sub_268E948B8(3);
    v21 = sub_268DAB158(0, v20, v7);

    (a2)(v21);
    MEMORY[0x277D82BD8](v21);
  }
}

uint64_t sub_268F6C544(char a1)
{

  sub_268D3EF3C(a1 & 1);
}

uint64_t sub_268F6C600()
{
  type metadata accessor for SetAXSwitchControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17B0 = result;
  return result;
}

uint64_t *sub_268F6C668()
{
  if (qword_2802DB8E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F17B0;
}

uint64_t sub_268F6C6C8()
{
  v1 = *sub_268F6C668();

  return v1;
}

double sub_268F6C6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "SetAXSwitchControlHandler handling intent", 41, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBEC44();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F6CA3C, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268F6C910(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{

  v6 = sub_268D3F104();

  v4 = sub_268DBD764();
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v12 = *(a1 + 24);

  sub_268DAAB84(v6, a2, v9, v10, v11, v12 & 1, a3, a4, sub_268F6CB04, a1, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F6CB04, a1);
}

uint64_t sub_268F6CA70(char a1)
{

  sub_268D3F134(a1 & 1);
}

uint64_t sub_268F6CB2C()
{
  v0 = sub_268DD2AA8();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F17B8 = v2;
  return result;
}

uint64_t *sub_268F6CB6C()
{
  if (qword_2802DB8F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F17B8;
}

uint64_t sub_268F6CBCC()
{
  v0 = sub_268F6CB6C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F6CC04(__n128 a1)
{
  v10 = 0;
  v8 = type metadata accessor for FlowStrategy.IntentConversionError(0);
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6[1], v1, v2, v3);
  v9 = v6 - v7;
  v10 = v4;
  sub_268F6CD1C(v4, v6 - v7);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for FlowStrategy.IntentConversionError(uint64_t a1)
{
  v2 = qword_2802DE7C8;
  if (!qword_2802DE7C8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_268F6CD1C(const void *a1, void *a2)
{
  v6 = type metadata accessor for FlowStrategy.IntentConversionError(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_268F6CE44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v6 = v0;
  v7 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v6 = sub_268F9AE24();
  v6[1] = v1;
  v3 = sub_268F6CC04(v2);
  v6[5] = MEMORY[0x277D837D0];
  v6[2] = v3;
  v6[3] = v4;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v7);
  return sub_268F9ADA4();
}

unint64_t sub_268F6CF68()
{
  v2 = qword_2802DE7B8;
  if (!qword_2802DE7B8)
  {
    type metadata accessor for FlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F6D030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = a1;
  v3 = v2;
  v4 = v91;
  v111 = v3;
  v115 = "FlowStrategy: actionForInput.";
  v92 = "FlowStrategy: not a compatible type of parse. Ignoring.";
  v93 = "FlowStrategy: %@ handling NLV3Intent.";
  v94 = "FlowStrategy: Error parsing uso parse.";
  v134 = 0;
  v133 = 0;
  v136 = 0;
  v95 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v135 = 0;
  v125 = 0;
  v124 = 0;
  v113 = 0;
  v96 = sub_268F99CB4();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5, v6, v7);
  v100 = &v44[-v99];
  v101 = sub_268F99C64();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v8, v9, v10);
  v105 = &v44[-v104];
  v136 = &v44[-v104];
  v106 = sub_268F9A704();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v11, v12, v13);
  v110 = &v44[-v109];
  v135 = &v44[-v109];
  v122 = sub_268F99C34();
  v119 = *(v122 - 8);
  v120 = v122 - 8;
  v112 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122, v14, v15, v16);
  v121 = &v44[-v112];
  v134 = v4;
  v133 = v17;
  v116 = sub_268F9B284();
  v118 = *sub_268DC8FEC();
  MEMORY[0x277D82BE0](v118);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v117 = sub_268F9B734();
  sub_268F9AC14(v116, &dword_268CBE000, v118, v115, 29, 2);

  MEMORY[0x277D82BD8](v118);
  sub_268F99BE4();
  v123 = (*(v119 + 88))(v121, v122);
  if (v123 == *MEMORY[0x277D5C128])
  {
    (*(v119 + 96))(v121, v122);
    (*(v107 + 32))(v110, v121, v106);
    v135 = v110;
    v88 = v127;
    memset(v127, 0, sizeof(v127));
    v87 = &v126;
    sub_268D8E52C(&v126);
    v89 = sub_268DA7690(v110, v88, v87);
    sub_268D28414(v87);
    sub_268D28414(v88);
    v125 = v89;
    MEMORY[0x277D82BE0](v89);
    if (v89)
    {
      v86 = v89;
      v84 = v89;
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v83 = v85;
      }

      else
      {
        MEMORY[0x277D82BD8](v84);
        v83 = 0;
      }

      v82 = v83;
    }

    else
    {
      v82 = 0;
    }

    v79 = v82 != 0;
    v124 = v82 != 0;
    MEMORY[0x277D82BD8](v82);
    v77 = sub_268F9B284();
    v78 = *sub_268DC8FEC();
    MEMORY[0x277D82BE0](v78);
    v80 = sub_268F9B734();
    v81 = v18;
    if (v79)
    {
      v76 = sub_268F9AEF4();
      v75 = v19;
      v81[3] = MEMORY[0x277D837D0];
      v20 = sub_268CDD224();
      v21 = v75;
      v22 = v81;
      v23 = v20;
      v24 = v76;
    }

    else
    {
      v74 = sub_268F9AEF4();
      v73 = v25;
      v81[3] = MEMORY[0x277D837D0];
      v26 = sub_268CDD224();
      v21 = v73;
      v22 = v81;
      v23 = v26;
      v24 = v74;
    }

    v81[4] = v23;
    *v22 = v24;
    v22[1] = v21;
    sub_268CD0F7C();
    v72 = v27;
    sub_268F9AC14(v77, &dword_268CBE000, v78, v93, 37, 2);

    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v28 = MEMORY[0x277D82BD8](v89);
    return (*(v107 + 8))(v110, v106, v28);
  }

  else if (v123 == *MEMORY[0x277D5C160])
  {
    v29 = v95;
    v30 = v105;
    (*(v119 + 96))(v121, v122);
    (*(v102 + 32))(v30, v121, v101);
    v136 = v30;
    sub_268F99C54();
    v68 = &v132;
    sub_268F99C44();
    v69 = &v131;
    sub_268D8E52C(&v131);
    v70 = sub_268E17680(v100, v68, v69);
    v71 = v29;
    if (v29)
    {
      v51 = v71;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v42 = v51;
      v130 = v51;
      v48 = sub_268F9B294();
      v50 = *sub_268DC8FEC();
      MEMORY[0x277D82BE0](v50);
      v49 = sub_268F9B734();
      sub_268F9AC14(v48, &dword_268CBE000, v50, v94, 38, 2);

      MEMORY[0x277D82BD8](v50);

      sub_268F998A4();
      return (*(v102 + 8))(v105, v101);
    }

    else
    {
      v67 = v70;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v129 = v67;
      MEMORY[0x277D82BE0](v67);
      if (v67)
      {
        v66 = v67;
        v64 = v67;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v63 = v65;
        }

        else
        {
          MEMORY[0x277D82BD8](v64);
          v63 = 0;
        }

        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      v59 = v62 != 0;
      v128 = v62 != 0;
      MEMORY[0x277D82BD8](v62);
      v57 = sub_268F9B284();
      v58 = *sub_268DC8FEC();
      MEMORY[0x277D82BE0](v58);
      v60 = sub_268F9B734();
      v61 = v31;
      if (v59)
      {
        v56 = sub_268F9AEF4();
        v55 = v32;
        v61[3] = MEMORY[0x277D837D0];
        v33 = sub_268CDD224();
        v34 = v55;
        v35 = v61;
        v36 = v33;
        v37 = v56;
      }

      else
      {
        v54 = sub_268F9AEF4();
        v53 = v38;
        v61[3] = MEMORY[0x277D837D0];
        v39 = sub_268CDD224();
        v34 = v53;
        v35 = v61;
        v36 = v39;
        v37 = v54;
      }

      v61[4] = v36;
      *v35 = v37;
      v35[1] = v34;
      sub_268CD0F7C();
      v52 = v40;
      sub_268F9AC14(v57, &dword_268CBE000, v58, v93, 37, 2);

      MEMORY[0x277D82BD8](v58);
      if (v59)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v41 = MEMORY[0x277D82BD8](v67);
      return (*(v102 + 8))(v105, v101, v41);
    }
  }

  else
  {
    v45 = sub_268F9B284();
    v47 = *sub_268DC8FEC();
    MEMORY[0x277D82BE0](v47);
    v46 = sub_268F9B734();
    sub_268F9AC14(v45, &dword_268CBE000, v47, v92, 55, 2);

    MEMORY[0x277D82BD8](v47);
    sub_268F998A4();
    return (*(v119 + 8))(v121, v122);
  }
}

uint64_t sub_268F6DF98(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_268F99C64();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_268F9A704();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = sub_268F99C34();
  v3[43] = v7;
  v3[44] = *(v7 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;

  return MEMORY[0x2822009F8](sub_268F6E24C, 0);
}

uint64_t sub_268F6E24C(uint64_t a1)
{
  v85 = v1[46];
  v83 = v1[44];
  v84 = v1[43];
  v81 = v1[32];
  v1[22] = v1;
  v79 = sub_268F9B284();
  v2 = sub_268DC8FEC();
  v80 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v79, &dword_268CBE000, v80, "FlowStrategy: makeIntentFromParse.", 34, 2);

  v3 = MEMORY[0x277D82BD8](v80);
  v82 = *(v83 + 16);
  (v82)(v85, v81, v84, v3);
  v86 = (*(v83 + 88))(v85, v84);
  if (v86 == *MEMORY[0x277D5C128])
  {
    v74 = v78[46];
    v76 = v78[42];
    v75 = v78[39];
    v73 = v78[40];
    (*(v78[44] + 96))();
    (*(v73 + 32))(v76, v74, v75);
    v78[30] = v76;
    v78[12] = 0;
    v78[13] = 0;
    v78[14] = 0;
    v78[15] = 0;
    v78[16] = 0;
    sub_268D8E52C(v78 + 17);
    v77 = sub_268DA7690(v76, v78 + 12, v78 + 17);
    sub_268D28414(v78 + 17);
    sub_268D28414(v78 + 12);
    if (v77)
    {
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v71 = v72;
      }

      else
      {
        MEMORY[0x277D82BD8](v77);
        v71 = 0;
      }

      v70 = v71;
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      v4 = v78[42];
      v5 = v78[40];
      v6 = v78[39];
      v78[31] = v70;
      (*(v5 + 8))(v4, v6);
      v69 = v70;
      goto LABEL_22;
    }

    v67 = v78[42];
    v61 = v78[41];
    v68 = v78[39];
    v60 = v78[40];
    v7 = sub_268DC8FEC();
    v66 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v65 = sub_268F9B294();
    sub_268F9B734();
    v64 = v8;
    (*(v60 + 16))(v61, v67, v68);
    sub_268DA7B0C();
    v62 = sub_268F9AE74();
    v63 = v9;
    v64[3] = MEMORY[0x277D837D0];
    v64[4] = sub_268CDD224();
    *v64 = v62;
    v64[1] = v63;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v66, v65);

    MEMORY[0x277D82BD8](v66);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v10);
    swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v60 + 8))(v67, v68);
LABEL_25:

    v20 = v59;
    v21 = *(v78[22] + 8);

    return v21(v20);
  }

  if (v86 != *MEMORY[0x277D5C160])
  {
    v45 = v78[46];
    v37 = v78[45];
    v46 = v78[43];
    v43 = v78[32];
    v44 = v78[44];
    v16 = sub_268DC8FEC();
    v42 = *v16;
    MEMORY[0x277D82BE0](*v16);
    v41 = sub_268F9B294();
    sub_268F9B734();
    v40 = v17;
    (v82)(v37, v43, v46);
    v38 = sub_268F9AE64();
    v39 = v18;
    v40[3] = MEMORY[0x277D837D0];
    v40[4] = sub_268CDD224();
    *v40 = v38;
    v40[1] = v39;
    sub_268CD0F7C();
    sub_268F9AC04("Received not an NLV4 or NLv3IntentOnly: %@.", 43, 2, &dword_268CBE000, v42, v41);

    MEMORY[0x277D82BD8](v42);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v19);
    swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v44 + 8))(v45, v46);
    goto LABEL_25;
  }

  v55 = v78[46];
  v11 = v78[38];
  v56 = v78[36];
  v57 = v78[35];
  v54 = v78[37];
  (*(v78[44] + 96))();
  (*(v54 + 32))(v11, v55, v56);
  v78[26] = v11;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v78 + 7);
  v58 = sub_268E17680(v57, v78 + 2, v78 + 7);
  v53 = v78[35];
  v52 = v78[33];
  v51 = v78[34];
  sub_268D28414(v78 + 7);
  sub_268D28414(v78 + 2);
  (*(v51 + 8))(v53, v52);
  if (v58)
  {
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50)
    {
      v49 = v50;
    }

    else
    {
      MEMORY[0x277D82BD8](v58);
      v49 = 0;
    }

    v48 = v49;
  }

  else
  {
    v48 = 0;
  }

  if (!v48)
  {
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v15);
    v47 = swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v35 = v78[38];
    v36 = v78[36];
    v34 = v78[37];
    v22 = v47;
    v78[27] = v47;
    v23 = sub_268DC8FEC();
    v33 = *v23;
    MEMORY[0x277D82BE0](*v23);
    v32 = sub_268F9B294();
    sub_268F9B734();
    v31 = v24;
    v25 = v47;
    v78[28] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v29 = sub_268F9AE64();
    v30 = v26;
    v31[3] = MEMORY[0x277D837D0];
    v31[4] = sub_268CDD224();
    *v31 = v29;
    v31[1] = v30;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v33, v32);

    MEMORY[0x277D82BD8](v33);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v27);
    swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v34 + 8))(v35, v36);
    goto LABEL_25;
  }

  v12 = v78[38];
  v13 = v78[37];
  v14 = v78[36];
  v78[29] = v48;
  (*(v13 + 8))(v12, v14);
  v69 = v48;
LABEL_22:

  v20 = v69;
  v21 = *(v78[22] + 8);

  return v21(v20);
}

uint64_t sub_268F6F180(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F6DF98(a1, a2);
}

uint64_t sub_268F6F2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for FlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v7, a5);
}

uint64_t sub_268F6F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for FlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v7, a5);
}

uint64_t sub_268F6F474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for FlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v7, a5);
}

uint64_t sub_268F6F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for FlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v8, a6);
}

uint64_t sub_268F6F634(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for FlowStrategy();
  v2 = sub_268F6F6DC();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268F6F6DC()
{
  v2 = qword_2802DE7C0;
  if (!qword_2802DE7C0)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F6F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for FlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v8, a6);
}

unint64_t sub_268F6F858()
{
  v2 = qword_2802DE7D8;
  if (!qword_2802DE7D8)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6F8F0()
{
  v2 = qword_2802DE7E0;
  if (!qword_2802DE7E0)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F6F970(uint64_t a1)
{
  result = sub_268F6F858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F6F9CC()
{
  v2 = qword_2802DE7E8;
  if (!qword_2802DE7E8)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F6FA4C()
{
  if (qword_2802DB8F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F17C0;
}

uint64_t sub_268F6FAAC()
{
  type metadata accessor for MacNavigationHandler();
  result = sub_268CDA260();
  qword_2802F17C0 = result;
  return result;
}

uint64_t sub_268F6FB08()
{
  v1 = *sub_268F6FA4C();

  return v1;
}

uint64_t sub_268F6FB38(uint64_t a1)
{
  v3 = sub_268F9B284();
  v1 = sub_268DC7AE8();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v3, &dword_268CBE000, v4, "Not a macOS navigation.", 23, 2);

  MEMORY[0x277D82BD8](v4);
  return 0;
}

uint64_t sub_268F6FC10(void *a1)
{
  v40 = 0;
  v41 = a1;
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v28 = [a1 settingMetadata], *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0], v28))
  {
    v23 = [v28 settingId];
    v24 = sub_268F9AE24();
    v25 = v2;
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v21 = sub_268EC63FC(0);
  v22 = v3;

  v38[0] = v26;
  v38[1] = v27;
  *&v39 = v21;
  *(&v39 + 1) = v22;
  if (v27)
  {
    sub_268D28874(v38, &v32);
    if (*(&v39 + 1))
    {
      v31 = v32;
      v30 = v39;
      v19 = MEMORY[0x26D62DB50](v32, *(&v32 + 1), v39, *(&v39 + 1));
      sub_268CD9D30(&v30);
      sub_268CD9D30(&v31);
      sub_268CD9D30(v38);
      v20 = v19;
      goto LABEL_13;
    }

    sub_268CD9D30(&v32);
    goto LABEL_15;
  }

  if (*(&v39 + 1))
  {
LABEL_15:
    sub_268D28550(v38);
    v20 = 0;
    goto LABEL_13;
  }

  sub_268CD9D30(v38);
  v20 = 1;
LABEL_13:

  MEMORY[0x277D82BE0](a1);
  if ((v20 & 1) == 0)
  {
    MEMORY[0x277D82BE0](a1);
    if (a1 && (v17 = [a1 settingMetadata], *&v4 = MEMORY[0x277D82BD8](a1).n128_u64[0], v17))
    {
      v12 = [v17 settingId];
      v13 = sub_268F9AE24();
      v14 = v5;
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v12);
      v15 = v13;
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v10 = sub_268EC63FC(1);
    v11 = v6;

    v36[0] = v15;
    v36[1] = v16;
    *&v37 = v10;
    *(&v37 + 1) = v11;
    if (v16)
    {
      sub_268D28874(v36, &v35);
      if (*(&v37 + 1))
      {
        v34 = v35;
        v33 = v37;
        v8 = MEMORY[0x26D62DB50](v35, *(&v35 + 1), v37, *(&v37 + 1));
        sub_268CD9D30(&v33);
        sub_268CD9D30(&v34);
        sub_268CD9D30(v36);
        v9 = v8;
LABEL_29:

        v18 = v9;
        goto LABEL_33;
      }

      sub_268CD9D30(&v35);
    }

    else if (!*(&v37 + 1))
    {
      sub_268CD9D30(v36);
      v9 = 1;
      goto LABEL_29;
    }

    sub_268D28550(v36);
    v9 = 0;
    goto LABEL_29;
  }

  v18 = 1;
LABEL_33:
  MEMORY[0x277D82BD8](a1);
  return v18 & 1;
}

BOOL sub_268F700D8(void *a1)
{
  v8 = a1;
  v7 = v1;
  v5 = sub_268F6FC10(a1);

  MEMORY[0x277D82BE0](a1);
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    sub_268F701C8(a1, &v6);
    v3 = v6 != 65;
  }

  MEMORY[0x277D82BD8](a1);
  return v3;
}

void sub_268F701C8(void *a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v17 = [a1 settingMetadata], *&v2 = MEMORY[0x277D82BD8](a1).n128_u64[0], v17))
  {
    v14 = [v17 settingId];
    v15._countAndFlagsBits = sub_268F9AE24();
    v15._object = v3;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v14);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16._object)
  {
    sub_268F9B734();
    v13 = v4;
    *v4 = BinarySettingIdentifier.rawValue.getter();
    v13[1] = v5;
    v13[2] = BinarySettingIdentifier.rawValue.getter();
    v13[3] = v6;
    v13[4] = BinarySettingIdentifier.rawValue.getter();
    v13[5] = v7;
    v13[6] = BinarySettingIdentifier.rawValue.getter();
    v13[7] = v8;
    sub_268CD0F7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    if (sub_268F9AFC4())
    {

      BinarySettingIdentifier.init(rawValue:)(v16);
      v12 = v20;
    }

    else
    {
      v12 = 65;
    }

    *a2 = v12;
  }

  else
  {
    v10 = sub_268F9B284();
    v9 = sub_268DC7AE8();
    v11 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v10, &dword_268CBE000, v11, "Empty settingId in INOpenSettingIntent or empty INOpenSettingIntent.", 68, 2);

    MEMORY[0x277D82BD8](v11);
    *a2 = 65;
  }
}

uint64_t sub_268F70544()
{
  type metadata accessor for SetVoiceOverHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17C8 = result;
  return result;
}

uint64_t *sub_268F705AC()
{
  if (qword_2802DB900 != -1)
  {
    swift_once();
  }

  return &qword_2802F17C8;
}

uint64_t sub_268F7060C()
{
  v1 = *sub_268F705AC();

  return v1;
}

uint64_t sub_268F7063C(void *a1, void (*a2)(id), uint64_t a3)
{
  v20 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v21 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v20, &dword_268CBE000, v21, "SetVoiceOverHandler handling intent", 35, 2);

  MEMORY[0x277D82BD8](v21);
  sub_268E50B9C();

  v23 = [a1 settingMetadata];
  v24 = sub_268E50C88(v23);
  MEMORY[0x277D82BD8](v23);

  if (v24)
  {
    v8 = sub_268F9B294();
    v6 = sub_268DC7AE8();
    v9 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14(v8, &dword_268CBE000, v9, "Voice Over not available on Sidekick devices", 44, 2);

    MEMORY[0x277D82BD8](v9);

    v10 = sub_268E948B8(3);
    v11 = sub_268DAB158(0, v10, v7);

    a2(v11);
    MEMORY[0x277D82BD8](v11);
  }

  else
  {

    v12 = sub_268D3DB58();

    v4 = sub_268DBE474();
    v13 = *v4;
    v14 = v4[1];
    v15 = *(v4 + 16);
    v16 = *(v19 + 24);

    sub_268DAAB84(v12, a1, v13, v14, v15, v16 & 1, a2, a3, sub_268F709BC, v19, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268F709BC, v19);
  }
}