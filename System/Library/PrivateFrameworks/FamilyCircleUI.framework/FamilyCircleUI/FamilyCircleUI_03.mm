unint64_t sub_21BBCF098()
{
  result = qword_27CDB5F10;
  if (!qword_27CDB5F10)
  {
    result = swift_getWitnessTable(byte_21BE33AC8, &type metadata for SharedFamilyGroceryItem, v0, v1);
    atomic_store(result, &qword_27CDB5F10);
  }

  return result;
}

unint64_t sub_21BBCF0F0()
{
  result = qword_27CDB5F18;
  if (!qword_27CDB5F18)
  {
    result = swift_getWitnessTable(a9gF, &type metadata for SharedFamilyGroceryItemView, v0, v1);
    atomic_store(result, &qword_27CDB5F18);
  }

  return result;
}

uint64_t sub_21BBCF144(char a1)
{
  v2[12] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F28, &qword_21BE33BC8);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[20] = swift_task_alloc();
  v2[21] = sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDAB14(&qword_27CDB5F48, &qword_27CDB5F50, &qword_21BE33BF8);
    v7 = *(v6 + 64);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F50, &qword_21BE33BF8);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[25] = v9;
    *v9 = v2;
    v9[1] = sub_21BBCF63C;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[11] = v1;
    v13 = sub_21BBDAB14(&qword_27CDB5F48, &qword_27CDB5F50, &qword_21BE33BF8);
    v14 = *(v13 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F50, &qword_21BE33BF8);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[23] = v16;
    *v16 = v2;
    v16[1] = sub_21BBCF4F0;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBCF4F0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[24] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC4;
  }

  else
  {
    v6 = sub_21BBCF788;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBCF63C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[26] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC8;
  }

  else
  {
    v6 = sub_21BBCF908;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBCF788()
{
  v1 = v0[3];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *v3 = &type metadata for SharedFamilyGroceryItem;
  v4 = sub_21BBDAA6C();
  v3[1] = v4;
  swift_getKeyPath();

  v5 = swift_task_alloc();
  *v5 = &type metadata for SharedFamilyGroceryItem;
  v5[1] = v4;
  swift_getKeyPath();

  v0[10] = v1;
  v6 = v2;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BBCF908()
{
  v1 = v0[6];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *v3 = &type metadata for SharedFamilyGroceryItem;
  v4 = sub_21BBDAA6C();
  v3[1] = v4;
  swift_getKeyPath();

  v5 = swift_task_alloc();
  *v5 = &type metadata for SharedFamilyGroceryItem;
  v5[1] = v4;
  swift_getKeyPath();

  v0[10] = v1;
  v6 = v2;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BBCFA88(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F28, &qword_21BE33BC8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB5F38, type metadata accessor for SharedFamilyGroceryItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for SharedFamilyGroceryItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBCFF98;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB5F38, type metadata accessor for SharedFamilyGroceryItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for SharedFamilyGroceryItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBCFE4C;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBCFE4C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD00E4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBCFF98(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD0238;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD00E4()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB5F40, type metadata accessor for SharedFamilyGroceryItemProvider, aI_8);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SharedFamilyGroceryItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD0238()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB5F40, type metadata accessor for SharedFamilyGroceryItemProvider, aI_8);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SharedFamilyGroceryItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD038C(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6078, &qword_21BE33D88);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB6080, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for FamilyMessageConfigProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD089C;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB6080, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for FamilyMessageConfigProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD0750;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD0750(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD09E8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD089C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD0B3C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD09E8()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6088, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34648);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for FamilyMessageConfigProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD0B3C()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6088, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34648);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for FamilyMessageConfigProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD0C90(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6068, &qword_21BE33D70);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&unk_27CDB6580, type metadata accessor for AppleCashItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for AppleCashItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD11A0;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&unk_27CDB6580, type metadata accessor for AppleCashItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for AppleCashItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD1054;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD1054(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD12EC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD11A0(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD1440;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD12EC()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6070, type metadata accessor for AppleCashItemProvider, aU_5);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for AppleCashItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD1440()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6070, type metadata accessor for AppleCashItemProvider, aU_5);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for AppleCashItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD1594(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6020, &qword_21BE33D28);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB6028, type metadata accessor for IcloudPlusItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for IcloudPlusItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD1AA4;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB6028, type metadata accessor for IcloudPlusItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for IcloudPlusItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD1958;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD1958(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD1BF0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD1AA4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD1D44;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD1BF0()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6030, type metadata accessor for IcloudPlusItemProvider, byte_21BE35294);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for IcloudPlusItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD1D44()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6030, type metadata accessor for IcloudPlusItemProvider, byte_21BE35294);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for IcloudPlusItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD1E98(char a1)
{
  v2[12] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F90, &qword_21BE33C98);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[20] = swift_task_alloc();
  v2[21] = sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDAB14(&qword_27CDB5FA8, &qword_27CDB5FB0, &qword_21BE33CB0);
    v7 = *(v6 + 64);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FB0, &qword_21BE33CB0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[25] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD2390;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[11] = v1;
    v13 = sub_21BBDAB14(&qword_27CDB5FA8, &qword_27CDB5FB0, &qword_21BE33CB0);
    v14 = *(v13 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FB0, &qword_21BE33CB0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[23] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD2244;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD2244(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[24] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC4;
  }

  else
  {
    v6 = sub_21BBD24DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD2390(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[26] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC8;
  }

  else
  {
    v6 = sub_21BBD265C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD24DC()
{
  v1 = v0[3];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *v3 = &type metadata for SharedFamilyCalendarItem;
  v4 = sub_21BBDAB68();
  v3[1] = v4;
  swift_getKeyPath();

  v5 = swift_task_alloc();
  *v5 = &type metadata for SharedFamilyCalendarItem;
  v5[1] = v4;
  swift_getKeyPath();

  v0[10] = v1;
  v6 = v2;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BBD265C()
{
  v1 = v0[6];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *v3 = &type metadata for SharedFamilyCalendarItem;
  v4 = sub_21BBDAB68();
  v3[1] = v4;
  swift_getKeyPath();

  v5 = swift_task_alloc();
  *v5 = &type metadata for SharedFamilyCalendarItem;
  v5[1] = v4;
  swift_getKeyPath();

  v0[10] = v1;
  v6 = v2;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BBD27DC(char a1)
{
  v2[12] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F60, &qword_21BE33C68);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[20] = swift_task_alloc();
  v2[21] = sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDAB14(&qword_27CDB5F78, &qword_27CDB5F80, &qword_21BE33C80);
    v7 = *(v6 + 64);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F80, &qword_21BE33C80);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[25] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD2CD4;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[11] = v1;
    v13 = sub_21BBDAB14(&qword_27CDB5F78, &qword_27CDB5F80, &qword_21BE33C80);
    v14 = *(v13 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F80, &qword_21BE33C80);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[23] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD2B88;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD2B88(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[24] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBD2FA0;
  }

  else
  {
    v6 = sub_21BBD2E20;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD2CD4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[26] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBD3614;
  }

  else
  {
    v6 = sub_21BBD3494;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD2E20()
{
  v1 = v0[3];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *v3 = &type metadata for SharedPasswordsItem;
  v4 = sub_21BBDAAC0();
  v3[1] = v4;
  swift_getKeyPath();

  v5 = swift_task_alloc();
  *v5 = &type metadata for SharedPasswordsItem;
  v5[1] = v4;
  swift_getKeyPath();

  v0[10] = v1;
  v6 = v2;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));

  v7 = v0[1];

  return v7();
}

unint64_t sub_21BBD2FA0()
{
  v42 = v0;

  v1 = v0[24];
  v0[9] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v3 = sub_21BE28D3C();
  v4 = swift_dynamicCast();
  v5 = *(*(v3 - 8) + 56);
  v6 = v0[20];
  v7 = v0[12];
  if (!v4)
  {
    v5(v6, 1, 1, v3);
    sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v40 = 0;
    v41 = 0xE000000000000000;
    v21 = v1;
    sub_21BE295EC();

    v22 = *&v7[qword_27CDB63F0 + 8];
    v40 = *&v7[qword_27CDB63F0];
    v41 = v22;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v7[qword_27CDB6400])
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[15];
      v39 = v0[16];
      v27 = v0[13];
      v26 = v0[14];

      sub_21BE262BC();

      v28 = sub_21BE2628C();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      MEMORY[0x21CF03CA0](v28, v30);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v1, v40, v41);

      (*(v24 + 8))(v23, v39);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v5(v6, 0, 1, v3);
  sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v8 = v7;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();

  if (!os_log_type_enabled(v9, v10))
  {
    v31 = v0[19];
    v32 = v0[16];
    v33 = v0[17];

    (*(v33 + 8))(v31, v32);
    goto LABEL_8;
  }

  v11 = v0[12];
  v12 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v40 = v38;
  *v12 = 136315394;
  result = sub_21BB3D81C(*(v11 + qword_27CDB63F0), *(v11 + qword_27CDB63F0 + 8), &v40);
  *(v12 + 4) = result;
  *(v12 + 12) = 2080;
  if (!*(v11 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v35 = v0[17];
  v36 = v0[16];
  v37 = v0[19];
  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[13];

  sub_21BE262BC();

  v17 = sub_21BE2628C();
  v19 = v18;
  (*(v14 + 8))(v15, v16);
  v20 = sub_21BB3D81C(v17, v19, &v40);

  *(v12 + 14) = v20;
  _os_log_impl(&dword_21BB35000, v9, v10, "%s [%s] cancelled", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v38, -1, -1);
  MEMORY[0x21CF05C50](v12, -1, -1);

  (*(v35 + 8))(v37, v36);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8), v1);

  v34 = v0[1];

  return v34();
}

uint64_t sub_21BBD3494()
{
  v1 = v0[6];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *v3 = &type metadata for SharedPasswordsItem;
  v4 = sub_21BBDAAC0();
  v3[1] = v4;
  swift_getKeyPath();

  v5 = swift_task_alloc();
  *v5 = &type metadata for SharedPasswordsItem;
  v5[1] = v4;
  swift_getKeyPath();

  v0[10] = v1;
  v6 = v2;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));

  v7 = v0[1];

  return v7();
}

unint64_t sub_21BBD3614()
{
  v42 = v0;

  v1 = v0[26];
  v0[9] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v3 = sub_21BE28D3C();
  v4 = swift_dynamicCast();
  v5 = *(*(v3 - 8) + 56);
  v6 = v0[20];
  v7 = v0[12];
  if (!v4)
  {
    v5(v6, 1, 1, v3);
    sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v40 = 0;
    v41 = 0xE000000000000000;
    v21 = v1;
    sub_21BE295EC();

    v22 = *&v7[qword_27CDB63F0 + 8];
    v40 = *&v7[qword_27CDB63F0];
    v41 = v22;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v7[qword_27CDB6400])
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[15];
      v39 = v0[16];
      v27 = v0[13];
      v26 = v0[14];

      sub_21BE262BC();

      v28 = sub_21BE2628C();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      MEMORY[0x21CF03CA0](v28, v30);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v1, v40, v41);

      (*(v24 + 8))(v23, v39);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v5(v6, 0, 1, v3);
  sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v8 = v7;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();

  if (!os_log_type_enabled(v9, v10))
  {
    v31 = v0[19];
    v32 = v0[16];
    v33 = v0[17];

    (*(v33 + 8))(v31, v32);
    goto LABEL_8;
  }

  v11 = v0[12];
  v12 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v40 = v38;
  *v12 = 136315394;
  result = sub_21BB3D81C(*(v11 + qword_27CDB63F0), *(v11 + qword_27CDB63F0 + 8), &v40);
  *(v12 + 4) = result;
  *(v12 + 12) = 2080;
  if (!*(v11 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v35 = v0[17];
  v36 = v0[16];
  v37 = v0[19];
  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[13];

  sub_21BE262BC();

  v17 = sub_21BE2628C();
  v19 = v18;
  (*(v14 + 8))(v15, v16);
  v20 = sub_21BB3D81C(v17, v19, &v40);

  *(v12 + 14) = v20;
  _os_log_impl(&dword_21BB35000, v9, v10, "%s [%s] cancelled", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v38, -1, -1);
  MEMORY[0x21CF05C50](v12, -1, -1);

  (*(v35 + 8))(v37, v36);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8), v1);

  v34 = v0[1];

  return v34();
}

uint64_t sub_21BBD3B08(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FD8, &qword_21BE33CE0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB5FE0, type metadata accessor for ParentalControlItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for ParentalControlItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD4018;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB5FE0, type metadata accessor for ParentalControlItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for ParentalControlItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD3ECC;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD3ECC(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD4164;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD4018(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD42B8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD4164()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB5FE8, type metadata accessor for ParentalControlItemProvider, byte_21BE37390);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ParentalControlItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD42B8()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB5FE8, type metadata accessor for ParentalControlItemProvider, byte_21BE37390);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ParentalControlItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD440C(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F60, &qword_21BE33C68);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB5F68, type metadata accessor for SharedPasswordsItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for SharedPasswordsItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD491C;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB5F68, type metadata accessor for SharedPasswordsItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for SharedPasswordsItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD47D0;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD47D0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD4A68;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD491C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD4BBC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD4A68()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB5F70, type metadata accessor for SharedPasswordsItemProvider, aI_8);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SharedPasswordsItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD4BBC()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB5F70, type metadata accessor for SharedPasswordsItemProvider, aI_8);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SharedPasswordsItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD4D10(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FF0, &qword_21BE33CF8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB5FF8, type metadata accessor for LocationItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for LocationItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD5220;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB5FF8, type metadata accessor for LocationItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for LocationItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD50D4;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD50D4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD536C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD5220(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD54C0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD536C()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6000, type metadata accessor for LocationItemProvider, byte_21BE3D164);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for LocationItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD54C0()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6000, type metadata accessor for LocationItemProvider, byte_21BE3D164);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for LocationItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD5614(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6038, &qword_21BE33D40);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB6040, type metadata accessor for BeneficiaryItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for BeneficiaryItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD5B24;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB6040, type metadata accessor for BeneficiaryItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for BeneficiaryItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD59D8;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD59D8(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD5C70;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD5B24(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD5DC4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD5C70()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6048, type metadata accessor for BeneficiaryItemProvider, byte_21BE3D424);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for BeneficiaryItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD5DC4()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6048, type metadata accessor for BeneficiaryItemProvider, byte_21BE3D424);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for BeneficiaryItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD5F18(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6050, &qword_21BE33D58);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB6058, type metadata accessor for EmergencyContactItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for EmergencyContactItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD6428;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB6058, type metadata accessor for EmergencyContactItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for EmergencyContactItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD62DC;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD62DC(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD6574;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD6428(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD66C8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD6574()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6060, type metadata accessor for EmergencyContactItemProvider, aU_4);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for EmergencyContactItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD66C8()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6060, type metadata accessor for EmergencyContactItemProvider, aU_4);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for EmergencyContactItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD681C(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6090, &qword_21BE33DA0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB6098, type metadata accessor for FamilyContactsItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for FamilyContactsItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD6D2C;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB6098, type metadata accessor for FamilyContactsItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for FamilyContactsItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD6BE0;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD6BE0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD6E78;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD6D2C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD6FCC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD6E78()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB60A0, type metadata accessor for FamilyContactsItemProvider, byte_21BE44D28);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for FamilyContactsItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD6FCC()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB60A0, type metadata accessor for FamilyContactsItemProvider, byte_21BE44D28);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for FamilyContactsItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD7120(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F90, &qword_21BE33C98);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB5F98, type metadata accessor for SharedFamilyCalendarItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for SharedFamilyCalendarItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD7630;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB5F98, type metadata accessor for SharedFamilyCalendarItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for SharedFamilyCalendarItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD74E4;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD74E4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD777C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD7630(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD78D0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD777C()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB5FA0, type metadata accessor for SharedFamilyCalendarItemProvider, aI_8);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SharedFamilyCalendarItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD78D0()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB5FA0, type metadata accessor for SharedFamilyCalendarItemProvider, aI_8);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SharedFamilyCalendarItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD7A24(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60C0, &qword_21BE33DD0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB60C8, type metadata accessor for HomeItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for HomeItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD7F34;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB60C8, type metadata accessor for HomeItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for HomeItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD7DE8;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD7DE8(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD8080;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD7F34(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD81D4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD8080()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB60D0, type metadata accessor for HomeItemProvider, a9b);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for HomeItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD81D4()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB60D0, type metadata accessor for HomeItemProvider, a9b);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for HomeItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD8328(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FC0, &qword_21BE33CC8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB5FC8, type metadata accessor for PurchaseSharingItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for PurchaseSharingItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD8838;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB5FC8, type metadata accessor for PurchaseSharingItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for PurchaseSharingItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD86EC;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD86EC(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD8984;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD8838(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD8AD8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD8984()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB5FD0, type metadata accessor for PurchaseSharingItemProvider, a4);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for PurchaseSharingItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD8AD8()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB5FD0, type metadata accessor for PurchaseSharingItemProvider, a4);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for PurchaseSharingItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD8C2C(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6008, &qword_21BE33D10);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB6010, type metadata accessor for RecoveryContactItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for RecoveryContactItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD913C;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB6010, type metadata accessor for RecoveryContactItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for RecoveryContactItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD8FF0;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD8FF0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACBC;
  }

  else
  {
    v6 = sub_21BBD9288;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD913C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDACC0;
  }

  else
  {
    v6 = sub_21BBD93DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD9288()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB6018, type metadata accessor for RecoveryContactItemProvider, byte_21BE50D30);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for RecoveryContactItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD93DC()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB6018, type metadata accessor for RecoveryContactItemProvider, byte_21BE50D30);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for RecoveryContactItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBD9530(char a1)
{
  v2[11] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60A8, &qword_21BE33DB8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v1;
    v6 = sub_21BBDABBC(&qword_27CDB60B0, type metadata accessor for CommLimitsItemProvider, byte_21BE34878);
    v7 = *(v6 + 64);
    v8 = type metadata accessor for CommLimitsItemProvider(0);
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v2[24] = v9;
    *v9 = v2;
    v9[1] = sub_21BBD9A40;
    v10 = v8;
    v11 = v6;
    v12 = v18;
  }

  else
  {
    v2[10] = v1;
    v13 = sub_21BBDABBC(&qword_27CDB60B0, type metadata accessor for CommLimitsItemProvider, byte_21BE34878);
    v14 = *(v13 + 56);
    v15 = type metadata accessor for CommLimitsItemProvider(0);
    v19 = (v14 + *v14);
    v16 = swift_task_alloc();
    v2[22] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD98F4;
    v10 = v15;
    v11 = v13;
    v12 = v19;
  }

  return v12(v10, v11);
}

uint64_t sub_21BBD98F4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[23] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBD9CE0;
  }

  else
  {
    v6 = sub_21BBD9B8C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD9A40(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBDA328;
  }

  else
  {
    v6 = sub_21BBDA1D4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBD9B8C()
{
  v1 = v0[3];

  v2 = sub_21BBDABBC(&qword_27CDB60B8, type metadata accessor for CommLimitsItemProvider, byte_21BE50F20);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for CommLimitsItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

unint64_t sub_21BBD9CE0()
{
  v42 = v0;

  v1 = v0[23];
  v0[9] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v3 = sub_21BE28D3C();
  v4 = swift_dynamicCast();
  v5 = *(*(v3 - 8) + 56);
  v6 = v0[19];
  v7 = v0[11];
  if (!v4)
  {
    v5(v6, 1, 1, v3);
    sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v40 = 0;
    v41 = 0xE000000000000000;
    v21 = v1;
    sub_21BE295EC();

    v22 = *&v7[qword_27CDB63F0 + 8];
    v40 = *&v7[qword_27CDB63F0];
    v41 = v22;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v7[qword_27CDB6400])
    {
      v24 = v0[16];
      v23 = v0[17];
      v25 = v0[14];
      v39 = v0[15];
      v27 = v0[12];
      v26 = v0[13];

      sub_21BE262BC();

      v28 = sub_21BE2628C();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      MEMORY[0x21CF03CA0](v28, v30);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v1, v40, v41);

      (*(v24 + 8))(v23, v39);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v5(v6, 0, 1, v3);
  sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v8 = v7;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();

  if (!os_log_type_enabled(v9, v10))
  {
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];

    (*(v33 + 8))(v31, v32);
    goto LABEL_8;
  }

  v11 = v0[11];
  v12 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v40 = v38;
  *v12 = 136315394;
  result = sub_21BB3D81C(*(v11 + qword_27CDB63F0), *(v11 + qword_27CDB63F0 + 8), &v40);
  *(v12 + 4) = result;
  *(v12 + 12) = 2080;
  if (!*(v11 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v35 = v0[16];
  v36 = v0[15];
  v37 = v0[18];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[12];

  sub_21BE262BC();

  v17 = sub_21BE2628C();
  v19 = v18;
  (*(v14 + 8))(v15, v16);
  v20 = sub_21BB3D81C(v17, v19, &v40);

  *(v12 + 14) = v20;
  _os_log_impl(&dword_21BB35000, v9, v10, "%s [%s] cancelled", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v38, -1, -1);
  MEMORY[0x21CF05C50](v12, -1, -1);

  (*(v35 + 8))(v37, v36);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8), v1);

  v34 = v0[1];

  return v34();
}

uint64_t sub_21BBDA1D4()
{
  v1 = v0[6];

  v2 = sub_21BBDABBC(&qword_27CDB60B8, type metadata accessor for CommLimitsItemProvider, byte_21BE50F20);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for CommLimitsItemProvider(0);
  v3(v1, v4, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));

  v5 = v0[1];

  return v5();
}

unint64_t sub_21BBDA328()
{
  v42 = v0;

  v1 = v0[25];
  v0[9] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v3 = sub_21BE28D3C();
  v4 = swift_dynamicCast();
  v5 = *(*(v3 - 8) + 56);
  v6 = v0[19];
  v7 = v0[11];
  if (!v4)
  {
    v5(v6, 1, 1, v3);
    sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v40 = 0;
    v41 = 0xE000000000000000;
    v21 = v1;
    sub_21BE295EC();

    v22 = *&v7[qword_27CDB63F0 + 8];
    v40 = *&v7[qword_27CDB63F0];
    v41 = v22;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v7[qword_27CDB6400])
    {
      v24 = v0[16];
      v23 = v0[17];
      v25 = v0[14];
      v39 = v0[15];
      v27 = v0[12];
      v26 = v0[13];

      sub_21BE262BC();

      v28 = sub_21BE2628C();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      MEMORY[0x21CF03CA0](v28, v30);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v1, v40, v41);

      (*(v24 + 8))(v23, v39);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v5(v6, 0, 1, v3);
  sub_21BB3A4CC(v6, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v8 = v7;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();

  if (!os_log_type_enabled(v9, v10))
  {
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];

    (*(v33 + 8))(v31, v32);
    goto LABEL_8;
  }

  v11 = v0[11];
  v12 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v40 = v38;
  *v12 = 136315394;
  result = sub_21BB3D81C(*(v11 + qword_27CDB63F0), *(v11 + qword_27CDB63F0 + 8), &v40);
  *(v12 + 4) = result;
  *(v12 + 12) = 2080;
  if (!*(v11 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v35 = v0[16];
  v36 = v0[15];
  v37 = v0[18];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[12];

  sub_21BE262BC();

  v17 = sub_21BE2628C();
  v19 = v18;
  (*(v14 + 8))(v15, v16);
  v20 = sub_21BB3D81C(v17, v19, &v40);

  *(v12 + 14) = v20;
  _os_log_impl(&dword_21BB35000, v9, v10, "%s [%s] cancelled", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v38, -1, -1);
  MEMORY[0x21CF05C50](v12, -1, -1);

  (*(v35 + 8))(v37, v36);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8), v1);

  v34 = v0[1];

  return v34();
}

uint64_t sub_21BBDA81C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BBBF5B8();
  *a1 = result;
  return result;
}

unint64_t sub_21BBDA874(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21BBDAA6C()
{
  result = qword_27CDB5F58;
  if (!qword_27CDB5F58)
  {
    result = swift_getWitnessTable(byte_21BE33B68, &type metadata for SharedFamilyGroceryItem, v0, v1);
    atomic_store(result, &qword_27CDB5F58);
  }

  return result;
}

unint64_t sub_21BBDAAC0()
{
  result = qword_27CDB5F88;
  if (!qword_27CDB5F88)
  {
    result = swift_getWitnessTable(byte_21BE39014, &type metadata for SharedPasswordsItem, v0, v1);
    atomic_store(result, &qword_27CDB5F88);
  }

  return result;
}

uint64_t sub_21BBDAB14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(byte_21BE34878, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BBDAB68()
{
  result = qword_27CDB5FB8;
  if (!qword_27CDB5FB8)
  {
    result = swift_getWitnessTable(byte_21BE4C3EC, &type metadata for SharedFamilyCalendarItem, v0, v1);
    atomic_store(result, &qword_27CDB5FB8);
  }

  return result;
}

uint64_t sub_21BBDABBC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBDAC04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBCE924(a1, v4, v5, v6);
}

uint64_t type metadata accessor for AppleCardFamilySettingsCell(uint64_t a1)
{
  result = qword_27CDB60F8;
  if (!qword_27CDB60F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBDAD40(uint64_t a1)
{
  sub_21BBDADDC(319);
  if (v1 <= 0x3F)
  {
    sub_21BBDAE70(319);
    if (v2 <= 0x3F)
    {
      sub_21BBDAF50(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBDADDC(uint64_t a1)
{
  if (!qword_27CDB6108)
  {
    type metadata accessor for AppleCardFamilySettingsViewModel(255);
    sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6108);
    }
  }
}

void sub_21BBDAE70(uint64_t a1)
{
  if (!qword_27CDB6110)
  {
    sub_21BBDAF04();
    sub_21BBDD940(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6110);
    }
  }
}

unint64_t sub_21BBDAF04()
{
  result = qword_280BD8A10;
  if (!qword_280BD8A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD8A10);
  }

  return result;
}

void sub_21BBDAF50(uint64_t a1)
{
  if (!qword_27CDB6118)
  {
    sub_21BE27B0C();
    v1 = sub_21BE26E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB6118);
    }
  }
}

uint64_t sub_21BBDAFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AppleCardFamilySettingsCell(0);
  sub_21BBA3854(v1 + *(v10 + 24), v9, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
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

void *sub_21BBDB1CC@<X0>(void *a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for AppleCardFamilySettingsCell(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6120, &unk_21BE33E90);
  MEMORY[0x28223BE20](v29);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6130, &qword_21BE33EA0);
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v28 - v10;
  v12 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v34 == 1)
  {
    v14 = MEMORY[0x28223BE20](v13);
    *(&v28 - 2) = v1;
    v15 = MEMORY[0x28223BE20](v14);
    *(&v28 - 2) = v1;
    MEMORY[0x28223BE20](v15);
    *(&v28 - 2) = sub_21BBDD250;
    *(&v28 - 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61A0, &qword_21BE33F48);
    sub_21BBDD2B0();
    sub_21BE268EC();
    v17 = sub_21BE268FC();
    v18 = (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    MEMORY[0x28223BE20](v18);
    *(&v28 - 2) = sub_21BBDD258;
    *(&v28 - 1) = (&v28 - 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61D0, &unk_21BE33F58);
    sub_21BBDD4C0();
    sub_21BBDD940(&qword_27CDB61E8, MEMORY[0x277D40260], MEMORY[0x277D40268]);
    sub_21BE2709C();
    v19 = v30;
    (*(v9 + 16))(v5, v11, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6140, &qword_21BE33F28);
    sub_21BB3B038(&qword_27CDB6148, &qword_27CDB6130, &qword_21BE33EA0, MEMORY[0x277CDD938]);
    sub_21BBDCF84();
    sub_21BE2784C();
    return (*(v9 + 8))(v11, v19);
  }

  else
  {
    type metadata accessor for AppleCardFamilySettingsViewModel(0);
    sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
    v21 = v12;
    v22 = sub_21BE270CC();
    v24 = v23;
    KeyPath = swift_getKeyPath();
    v33 = 0;
    v32 = 0;
    sub_21BBDCE5C(v1, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v27 = swift_allocObject();
    sub_21BBDCEC0(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    *v5 = v22;
    *(v5 + 1) = v24;
    *(v5 + 2) = sub_21BBDC524;
    *(v5 + 3) = 0;
    v5[32] = 0;
    v5[40] = 1;
    *(v5 + 6) = KeyPath;
    *(v5 + 28) = 0;
    *(v5 + 8) = sub_21BBDCF24;
    *(v5 + 9) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6140, &qword_21BE33F28);
    sub_21BB3B038(&qword_27CDB6148, &qword_27CDB6130, &qword_21BE33EA0, MEMORY[0x277CDD938]);
    sub_21BBDCF84();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BBDB7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
  v5 = v4;
  v6 = v3;
  v7 = sub_21BE270CC();
  v9 = v8;
  sub_21BBDAF04();
  sub_21BBDD940(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v10 = sub_21BE270CC();
  v12 = v11;
  result = sub_21BE27B7C();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_21BBDB8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
  v4 = v3;
  result = sub_21BE270CC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_21BBDC524;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_21BBDB990(uint64_t a1)
{
  v2 = sub_21BE27B0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BBDAFC4(v5);
  v8 = a1;
  sub_21BE27AFC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21BBDBA7C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardFamilySettingsCell(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21BBDCE5C(a2, v7);
  sub_21BE28D7C();
  v12 = a1;
  v13 = sub_21BE28D6C();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21BBDCEC0(v7, v16 + v14);
  *(v16 + v15) = a1;
  sub_21BBA932C(0, 0, v10, &unk_21BE33F70, v16);
}

uint64_t sub_21BBDBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BBDBCEC, v7, v6);
}

uint64_t sub_21BBDBCEC()
{
  v1 = [*(v0 + 24) navigationController];
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21BBDBDA0;

  return sub_21BBDBF40(v1);
}

uint64_t sub_21BBDBDA0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v4, v3);
}

uint64_t sub_21BBDBEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBDBF40(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_21BE26A4C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_21BE28D7C();
  v2[23] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x2822009F8](sub_21BBDC034, v5, v4);
}

uint64_t sub_21BBDC034()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(*(v0 + 152) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    sub_21BE26CAC();

    if (*(v0 + 216))
    {
      *(v0 + 208) = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 217;
      *(v0 + 24) = sub_21BBDC230;
      v4 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21BBDC4C4;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v4;
      [swift_unknownObjectRetain() presentAppleCardUserInvitationFlowWithViewController:v3 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21BBDC230()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_21BBDC338, v2, v1);
}

uint64_t sub_21BBDC338()
{
  v17 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 217);
  swift_unknownObjectRelease();

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "AppleCardFamilySettingsCell presentAppleCardUserInvitationFlow %{BOOL}d", v5, 8u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);

  (*(v7 + 8))(v6, v8);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 144);
  v12[0] = 0;
  v13 = xmmword_21BE33DF0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_21BD23430(v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BBDC4C4(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void *sub_21BBDC524()
{
  type metadata accessor for AppleCardFamilyCache();
  v0 = swift_allocObject();
  return sub_21BE206D4(v0);
}

uint64_t sub_21BBDC55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE289CC();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  if (v7)
  {
    v8 = sub_21BE2836C();
    v9 = sub_21BE2771C();
    v48 = 1;
    sub_21BBDC868(a1, v49);
    *&v47[7] = v49[0];
    *&v47[23] = v49[1];
    *&v47[39] = v49[2];
    *&v47[55] = v49[3];
    v10 = v48;
    sub_21BE286AC();
    sub_21BE2725C();
    v32 = v9;
    v33[0] = v10;
    *&v33[17] = *&v47[16];
    *&v33[33] = *&v47[32];
    *&v33[49] = *&v47[48];
    *&v33[64] = *&v47[63];
    *&v33[1] = *v47;
    v11 = v27;
    *&v33[120] = v28;
    v12 = v28;
    *&v33[136] = v29;
    v13 = v29;
    *&v33[152] = v30;
    v14 = v30;
    *&v33[168] = v31;
    *&v33[72] = v25;
    v15 = v25;
    v16 = v26;
    *&v33[88] = v26;
    *&v33[104] = v27;
    v17 = *&v33[48];
    *(a2 + 88) = *&v33[64];
    v18 = *&v33[96];
    *(a2 + 104) = *&v33[80];
    *(a2 + 120) = v18;
    v19 = *v33;
    *(a2 + 8) = v32;
    *(a2 + 72) = v17;
    v20 = *&v33[16];
    *(a2 + 56) = *&v33[32];
    *(a2 + 40) = v20;
    *(a2 + 24) = v19;
    v21 = *&v33[144];
    *(a2 + 184) = *&v33[160];
    *(a2 + 168) = v21;
    v22 = *&v33[112];
    *(a2 + 152) = *&v33[128];
    *(a2 + 136) = v22;
    v37 = *&v47[16];
    v38 = *&v47[32];
    *v39 = *&v47[48];
    v36 = *v47;
    v43 = v12;
    v44 = v13;
    v45 = v14;
    v46 = v31;
    v40 = v15;
    v41 = v16;
    *a2 = v8;
    *(a2 + 200) = *&v33[176];
    v34[0] = v9;
    v34[1] = 0;
    v35 = v10;
    *&v39[15] = *&v47[63];
    v42 = v11;

    sub_21BBA3854(&v32, v24, &qword_27CDB6210, &qword_21BE340D0);
    sub_21BB3A4CC(v34, &qword_27CDB6210, &qword_21BE340D0);
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBDC868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v33 = v12;
  v34 = v11;
  v32 = v13;
  v35 = v14;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  sub_21BBDD7B8(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  v15 = sub_21BE27DBC();
  v17 = v16;
  v19 = v18;
  sub_21BE27BEC();
  v20 = sub_21BE27D9C();
  v22 = v21;
  LOBYTE(v5) = v23;

  sub_21BBC7C7C(v15, v17, v19 & 1);

  sub_21BE2833C();
  v24 = sub_21BE27D4C();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_21BBC7C7C(v20, v22, v5 & 1);

  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v28 & 1;
  *(a2 + 56) = v30;
  sub_21BBA4A38(v34, v33, v32 & 1);

  sub_21BBA4A38(v24, v26, v28 & 1);

  sub_21BBC7C7C(v24, v26, v28 & 1);

  sub_21BBC7C7C(v34, v33, v32 & 1);
}

double sub_21BBDCB10@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v30[0] = *v2;
  v30[1] = v4;
  v31 = *(v2 + 32);
  v5 = sub_21BE275DC();
  v29 = 0;
  sub_21BBDC55C(v30, &v15);
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v32 = v15;
  v33 = v16;
  v45[10] = v25;
  v45[11] = v26;
  v45[12] = v27;
  v45[6] = v21;
  v45[7] = v22;
  v45[8] = v23;
  v45[9] = v24;
  v45[2] = v17;
  v45[3] = v18;
  v45[4] = v19;
  v45[5] = v20;
  v45[0] = v15;
  v45[1] = v16;
  sub_21BBA3854(&v32, &v14, &qword_27CDB6208, &qword_21BE340C8);
  sub_21BB3A4CC(v45, &qword_27CDB6208, &qword_21BE340C8);
  *&v28[151] = v41;
  *&v28[167] = v42;
  *&v28[183] = v43;
  *&v28[199] = v44;
  *&v28[87] = v37;
  *&v28[103] = v38;
  *&v28[119] = v39;
  *&v28[135] = v40;
  *&v28[23] = v33;
  *&v28[39] = v34;
  *&v28[55] = v35;
  *&v28[71] = v36;
  *&v28[7] = v32;
  v6 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v6;
  *(a2 + 209) = *&v28[192];
  v7 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v7;
  v8 = *&v28[144];
  *(a2 + 145) = *&v28[128];
  *(a2 + 161) = v8;
  v9 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v9;
  v10 = *&v28[80];
  *(a2 + 81) = *&v28[64];
  *(a2 + 97) = v10;
  result = *v28;
  v12 = *&v28[16];
  *(a2 + 17) = *v28;
  v13 = v29;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 224) = *&v28[207];
  *(a2 + 33) = v12;
  return result;
}

uint64_t sub_21BBDCCCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE274DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BBDCD60@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a4 = v6;
  return result;
}

uint64_t sub_21BBDCDF0(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_21BE26CBC();
}

uint64_t sub_21BBDCE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardFamilySettingsCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBDCEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardFamilySettingsCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBDCF24()
{
  v1 = *(type metadata accessor for AppleCardFamilySettingsCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BBDB990(v2);
}

unint64_t sub_21BBDCF84()
{
  result = qword_27CDB6150;
  if (!qword_27CDB6150)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6140, &qword_21BE33F28);
    v4[0] = sub_21BBDD010();
    v4[1] = sub_21BBDD1FC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6150);
  }

  return result;
}

unint64_t sub_21BBDD010()
{
  result = qword_27CDB6158;
  if (!qword_27CDB6158)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6160, &qword_21BE33F30);
    v4[0] = sub_21BBDD0C8();
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6158);
  }

  return result;
}

unint64_t sub_21BBDD0C8()
{
  result = qword_27CDB6168;
  if (!qword_27CDB6168)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6170, &qword_21BE33F38);
    v4[0] = sub_21BBDD154();
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB6168);
  }

  return result;
}

unint64_t sub_21BBDD154()
{
  result = qword_27CDB6178;
  if (!qword_27CDB6178)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for AppleCardFamilySettingsCellView, v0, v1);
    atomic_store(result, &qword_27CDB6178);
  }

  return result;
}

unint64_t sub_21BBDD1A8()
{
  result = qword_27CDB6180;
  if (!qword_27CDB6180)
  {
    result = swift_getWitnessTable(byte_21BE50260, &type metadata for NavigationLinkAppearance, v0, v1);
    atomic_store(result, &qword_27CDB6180);
  }

  return result;
}

unint64_t sub_21BBDD1FC()
{
  result = qword_27CDB6198;
  if (!qword_27CDB6198)
  {
    result = swift_getWitnessTable(byte_21BE49D08, &type metadata for TapOrLongPress, v0, v1);
    atomic_store(result, &qword_27CDB6198);
  }

  return result;
}

double sub_21BBDD260@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v7);
  result = *&v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a1 = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_21BBDD2B0()
{
  result = qword_27CDB61A8;
  if (!qword_27CDB61A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB61A0, &qword_21BE33F48);
    v4[0] = sub_21BBDD33C();
    v4[1] = MEMORY[0x277CE06C0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB61A8);
  }

  return result;
}

unint64_t sub_21BBDD33C()
{
  result = qword_27CDB61B0;
  if (!qword_27CDB61B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB61B8, &qword_21BE33F50);
    v4[0] = sub_21BBDD3C8();
    v4[1] = sub_21BBDD41C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB61B0);
  }

  return result;
}

unint64_t sub_21BBDD3C8()
{
  result = qword_27CDB61C0;
  if (!qword_27CDB61C0)
  {
    result = swift_getWitnessTable(byte_21BE3F7A4, &type metadata for AppleCardFamilyView, v0, v1);
    atomic_store(result, &qword_27CDB61C0);
  }

  return result;
}

unint64_t sub_21BBDD41C()
{
  result = qword_27CDB61C8;
  if (!qword_27CDB61C8)
  {
    result = swift_getWitnessTable(byte_21BE44F0C, &type metadata for StateRestorableViewModifier, v0, v1);
    atomic_store(result, &qword_27CDB61C8);
  }

  return result;
}

__n128 sub_21BBDD470@<Q0>(__n128 *a1@<X8>)
{
  (*(v1 + 16))(v6);
  v3 = v6[1];
  v4 = v8;
  result = v7;
  a1->n128_u64[0] = v6[0];
  a1->n128_u64[1] = v3;
  a1[1] = result;
  a1[2].n128_u8[0] = v4;
  return result;
}

unint64_t sub_21BBDD4C0()
{
  result = qword_27CDB61D8;
  if (!qword_27CDB61D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB61D0, &unk_21BE33F58);
    v4[0] = sub_21BBDD154();
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB61D8);
  }

  return result;
}

unint64_t sub_21BBDD54C()
{
  result = qword_27CDB61E0;
  if (!qword_27CDB61E0)
  {
    result = swift_getWitnessTable(byte_21BE49978, &type metadata for FamilyRowInsetAppearance, v0, v1);
    atomic_store(result, &qword_27CDB61E0);
  }

  return result;
}

uint64_t sub_21BBDD5A8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleCardFamilySettingsCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BBDBC54(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_21BBDD6E4()
{
  result = qword_27CDB61F8;
  if (!qword_27CDB61F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6200, &qword_21BE34070);
    v4[0] = sub_21BB3B038(&qword_27CDB6148, &qword_27CDB6130, &qword_21BE33EA0, MEMORY[0x277CDD938]);
    v4[1] = sub_21BBDCF84();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB61F8);
  }

  return result;
}

uint64_t sub_21BBDD7B8(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for AppleCardFamilyCache();
  sub_21BBDD940(&qword_280BD8840, type metadata accessor for AppleCardFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
  sub_21BE26EAC();
  sub_21BE1EF04(&v9);
  v8[0] = v9;
  v8[1] = v10;
  v3 = sub_21BE20000(v8);

  if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  sub_21BE289FC();

  if (!v10)
  {
LABEL_6:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v4 = sub_21BE2599C();

    return v4;
  }

  return v9;
}

uint64_t sub_21BBDD940(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBDD988(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21BBDDA58, v4, v3);
}

void sub_21BBDDA58()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_21BBDDB6C;
    v5 = v0[4];
    v6 = v0[2];

    v7(v6, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBDDB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_21BBDE578(v3);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_21BBDDD54;
  }

  else
  {
    v6 = sub_21BBDDCE8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBDDCE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBDDD54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBDDDC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21BBDDE90, v4, v3);
}

void sub_21BBDDE90()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_21BBDDFA4;
    v5 = v0[4];
    v6 = v0[2];

    v7(v6, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBDDFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_21BBDE578(v3);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_21BBDEABC;
  }

  else
  {
    v6 = sub_21BBDEAB8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void *AsyncStore.deinit()
{

  return v0;
}

uint64_t AsyncStore.__deallocating_deinit()
{
  AsyncStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21BBDE184@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for AsyncStore(0, *(a1 + 80), a3, a4);
  result = sub_21BE26C0C();
  *a5 = result;
  return result;
}

uint64_t sub_21BBDE1C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBA6A64;

  return sub_21BC493F4(a1);
}

uint64_t sub_21BBDE27C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BD9CDBC(a1);
}

uint64_t sub_21BBDE330()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDE3D4;

  return sub_21BC49210();
}

uint64_t sub_21BBDE3D4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21BBDE4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDEAC0;

  return sub_21BD9CBD8();
}

uint64_t sub_21BBDE578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBDE5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t sub_21BBDE718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncStore.doLoad()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return v6(a1);
}

uint64_t dispatch thunk of AsyncStore.doReload()(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return v6(a1);
}

void *sub_21BBDEAC4()
{
  result = sub_21BBBCBD8(0, 1, 1, MEMORY[0x277D84F90]);
  v1 = result;
  v3 = result[2];
  v2 = result[3];
  if (v3 >= v2 >> 1)
  {
    result = sub_21BBBCBD8((v2 > 1), v3 + 1, 1, result);
    v1 = result;
  }

  v1[2] = v3 + 1;
  v4 = &v1[2 * v3];
  v4[4] = sub_21BBDF958;
  v4[5] = 0;
  qword_27CDD4130 = v1;
  return result;
}

char sub_21BBDEB4C@<W0>(Swift::OpaquePointer *a1@<X0>, uint64_t a2@<X8>)
{
  result = FamilyDestinations.SubscriptionsDeepLink.init(pathComponents:)(a1).is_nil;
  if (v4)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {

    return sub_21BBDEEF8(a2);
  }

  return result;
}

uint64_t sub_21BBDEBB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21BC205B4(*a1, &unk_282D84EB8);
  result = sub_21BB3A250(&unk_282D84ED8);
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_21BBBED1C(0, 1);
      v6[3] = &type metadata for FamilyDestinations.AskToBuyMemberDestination;
      v6[4] = sub_21BBE0590();
      __swift_project_boxed_opaque_existential_1Tm(v6, &type metadata for FamilyDestinations.AskToBuyMemberDestination);
      *(a2 + 24) = &type metadata for FamilyDestinations.AskToBuyMemberDestination;
      *(a2 + 32) = sub_21BBE05E4();
      *(a2 + 40) = sub_21BBE0638;
      *(a2 + 48) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_21BBDEC90@<X0>(Swift::OpaquePointer *a1@<X0>, void *a2@<X8>)
{
  FamilyDestinations.MemberDetails.init(pathComponents:)(a1);
  if (v16)
  {
    v3 = &type metadata for FamilyDestinations.MemberDetails;
    v15[3] = &type metadata for FamilyDestinations.MemberDetails;
    v15[4] = sub_21BBE02E4();
    v15[0] = v15[5];
    v15[1] = v16;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v15, &type metadata for FamilyDestinations.MemberDetails);
    MEMORY[0x28223BE20](v4);
    v6 = (&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v9 = *v6;
    v8 = v6[1];
    v10 = sub_21BBE0338();
    *a2 = v9;
    a2[1] = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;

    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    v13 = sub_21BBE0724;
  }

  else
  {

    v3 = 0;
    v10 = 0;
    v13 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v3;
  a2[4] = v10;
  a2[5] = v13;
  a2[6] = v11;
  return result;
}

uint64_t sub_21BBDEE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21BC205B4(*a1, &unk_282D84EE8);
  result = sub_21BB3A250(&unk_282D84F08);
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_21BBBED1C(0, 1);
      v6[3] = &type metadata for FamilyDestinations.AppleCashDetails;
      v6[4] = sub_21BBE0450();
      __swift_project_boxed_opaque_existential_1Tm(v6, &type metadata for FamilyDestinations.AppleCashDetails);
      *(a2 + 24) = &type metadata for FamilyDestinations.AppleCashDetails;
      *(a2 + 32) = sub_21BBE04A4();
      *(a2 + 40) = sub_21BBE04F8;
      *(a2 + 48) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_21BBDEEF8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB62A8, &qword_21BE34240);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v9, v11);
    v2 = v12;
    v3 = v13;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    MEMORY[0x28223BE20](v4);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v6);
    sub_21BD2C034(v6, v2, v3, a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_21BB3A4CC(v9, &qword_27CDB62B0, &unk_21BE446C0);
    a1[3] = &type metadata for FamilyDestinations.SubscriptionsDeepLink;
    result = sub_21BBE06D0();
    a1[4] = result;
    a1[5] = sub_21BBDF074;
    a1[6] = 0;
  }

  return result;
}

uint64_t sub_21BBDF074(void *a1)
{
  v2 = sub_21BE2966C();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB62C0, &qword_21BE34248);
  *v4 = &type metadata for FamilyDestinations.SubscriptionsDeepLink;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BE29B5C();
  sub_21BE28A7C();
  sub_21BE2963C();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_21BBDF1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21BE2590C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v26 = a3;
  sub_21BE258FC();
  sub_21BE257BC();
  swift_allocObject();
  sub_21BE257AC();
  sub_21BBE03A8();
  v11 = sub_21BE2579C();
  if (v3)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v27 = a1;
    v14 = v11;
    v15 = v12;

    sub_21BE25BDC();
    sub_21BBBEF94(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    sub_21BE2585C();
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v23 = &type metadata for FamilyDestinations.MemberDetails;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6240, &qword_21BE34220);
    sub_21BE28A7C();
    sub_21BE2582C();

    sub_21BE2587C();
    v16 = sub_21BE2588C();
    if (v17)
    {
      v23 = 63;
      v24 = 0xE100000000000000;
      MEMORY[0x21CF03CA0](v16);

      sub_21BE28B0C();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v18 = sub_21BE2966C();
      swift_allocError();
      v20 = v19;
      v22[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
      v20[3] = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
      __swift_project_boxed_opaque_existential_1Tm(v27, v27[3]);
      sub_21BE29B5C();
      sub_21BE2963C();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D841A8], v18);
      swift_willThrow();
      return (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_21BBDF58C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v31 = a1;
  v8 = sub_21BE2590C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  sub_21BE257BC();
  swift_allocObject();
  sub_21BE257AC();
  a2();
  v12 = sub_21BE2579C();
  if (v5)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v26 = v9;

    sub_21BE25BDC();
    sub_21BBBEF94(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    sub_21BE2585C();
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v29 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    sub_21BE28A7C();
    sub_21BE2582C();

    sub_21BE2587C();
    v17 = sub_21BE2588C();
    if (v18)
    {
      v29 = 63;
      v30 = 0xE100000000000000;
      MEMORY[0x21CF03CA0](v17);

      sub_21BE28B0C();
      (*(v26 + 8))(v11, v8);
    }

    else
    {
      v19 = sub_21BE2966C();
      swift_allocError();
      v21 = v20;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
      v22 = v8;
      v21[3] = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
      v24 = v26;
      (*(v26 + 16))(boxed_opaque_existential_1, v11, v22);
      __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
      sub_21BE29B5C();
      sub_21BE2963C();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D841A8], v19);
      swift_willThrow();
      return (*(v24 + 8))(v11, v22);
    }
  }
}

void *sub_21BBDF958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21BB3A35C(a1, v15);
  result = sub_21BBDFAD8(v15, v16);
  if (!v2)
  {
    v6 = v16[0];
    v5 = v16[1];
    v15[3] = &type metadata for FamilyDestinations.MemberDetails;
    v15[4] = sub_21BBE02E4();
    v15[0] = v6;
    v15[1] = v5;
    v7 = __swift_project_boxed_opaque_existential_1Tm(v15, &type metadata for FamilyDestinations.MemberDetails);
    MEMORY[0x28223BE20](v7);
    v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v12 = *v9;
    v11 = v9[1];
    a2[3] = &type metadata for FamilyDestinations.MemberDetails;
    a2[4] = sub_21BBE0338();
    *a2 = v12;
    a2[1] = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    a2[5] = sub_21BBE038C;
    a2[6] = v13;

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return result;
}

uint64_t sub_21BBDFAD8@<X0>(void *a1@<X0>, ValueMetadata **a2@<X8>)
{
  v63 = a2;
  v3 = sub_21BE2585C();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6250, &unk_21BE49110);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5800, &qword_21BE328C0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v20 = v70;
  sub_21BE29B2C();
  if (v20)
  {
    goto LABEL_26;
  }

  v58 = v17;
  v59 = v19;
  v70 = v7;
  v60 = v11;
  v21 = v65;
  v62 = a1;
  __swift_project_boxed_opaque_existential_1Tm(v69, v69[3]);
  sub_21BE2997C();
  v55 = 0;
  v57 = v13;
  v22 = v59;
  sub_21BE258EC();

  v67 = &type metadata for FamilyDestinations.MemberDetails;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6240, &qword_21BE34220);
  v61 = sub_21BE28A7C();
  v56 = v23;
  v24 = v58;
  sub_21BBA3854(v22, v58, &qword_27CDB5800, &qword_21BE328C0);
  v25 = sub_21BE2590C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_21BB3A4CC(v24, &qword_27CDB5800, &qword_21BE328C0);
    v27 = v21;
    v28 = v64;
    v29 = v60;
LABEL_14:
    v39 = v57;
    (*(v28 + 56))(v57, 1, 1, v27);
    v40 = v59;
    v42 = v62;
    v41 = v63;
    v32 = v66;
    goto LABEL_19;
  }

  v30 = sub_21BE2586C();
  result = (*(v26 + 8))(v24, v25);
  v27 = v21;
  v28 = v64;
  v29 = v60;
  if (!v30)
  {
    goto LABEL_14;
  }

  v32 = v66;
  v33 = v56;
  if (!*(v30 + 16))
  {
LABEL_13:

    v39 = v57;
    (*(v28 + 56))(v57, 1, 1, v27);
LABEL_18:
    v40 = v59;
    v42 = v62;
    v41 = v63;
LABEL_19:
    sub_21BBA3854(v39, v29, &qword_27CDB6250, &unk_21BE49110);
    if ((*(v28 + 48))(v29, 1, v27) == 1 || ((*(v28 + 32))(v32, v29, v27), sub_21BE2584C(), v44 = v43, (*(v28 + 8))(v32, v27), !v44))
    {
      v70 = 0;
      v47 = 0xF000000000000000;
    }

    else
    {

      v45 = sub_21BE25BBC();
      v47 = v46;
      swift_bridgeObjectRelease_n();
      if (v47 >> 60 != 15)
      {

        sub_21BE2578C();
        swift_allocObject();
        sub_21BE2577C();
        sub_21BBE03FC();
        v52 = v55;
        sub_21BE2576C();
        sub_21BBBF0B4(v45, v47);

        sub_21BB3A4CC(v39, &qword_27CDB6250, &unk_21BE49110);
        sub_21BB3A4CC(v40, &qword_27CDB5800, &qword_21BE328C0);
        if (!v52)
        {
          v53 = v68;
          *v41 = v67;
          v41[1] = v53;
          __swift_destroy_boxed_opaque_existential_0Tm(v69);
          v51 = v42;
          return __swift_destroy_boxed_opaque_existential_0Tm(v51);
        }

        goto LABEL_25;
      }

      v70 = v45;
    }

    v48 = sub_21BE2964C();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6258, &qword_21BE34228);
    *v50 = &type metadata for FamilyDestinations.MemberDetails;
    __swift_project_boxed_opaque_existential_1Tm(v42, v42[3]);
    sub_21BE29B1C();
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_21BE295EC();

    v67 = 0xD00000000000001FLL;
    v68 = 0x800000021BE56E50;
    MEMORY[0x21CF03CA0](v61, v56);

    sub_21BE2963C();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84170], v48);
    swift_willThrow();
    sub_21BBBF0B4(v70, v47);
    sub_21BB3A4CC(v57, &qword_27CDB6250, &unk_21BE49110);
    sub_21BB3A4CC(v59, &qword_27CDB5800, &qword_21BE328C0);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    a1 = v62;
LABEL_26:
    v51 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  v34 = *(v30 + 16);
  v35 = 0;
  v58 = (v64 + 16);
  v36 = (v64 + 8);
  while (v35 < *(v30 + 16))
  {
    (*(v28 + 16))(v70, v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v35, v27);
    if (sub_21BE2583C() == v61 && v37 == v33)
    {

LABEL_17:
      v29 = v60;
      v39 = v57;
      (*(v28 + 32))(v57, v70, v27);
      (*(v28 + 56))(v39, 0, 1, v27);
      goto LABEL_18;
    }

    v38 = sub_21BE2995C();

    if (v38)
    {

      v32 = v66;
      goto LABEL_17;
    }

    ++v35;
    result = (*v36)(v70, v27);
    v32 = v66;
    v29 = v60;
    if (v34 == v35)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21BBE02E4()
{
  result = qword_27CDB6228;
  if (!qword_27CDB6228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberDetails, &type metadata for FamilyDestinations.MemberDetails, v0, v1);
    atomic_store(result, &qword_27CDB6228);
  }

  return result;
}

unint64_t sub_21BBE0338()
{
  result = qword_27CDB6230;
  if (!qword_27CDB6230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberDetails, &type metadata for FamilyDestinations.MemberDetails, v0, v1);
    atomic_store(result, &qword_27CDB6230);
  }

  return result;
}

unint64_t sub_21BBE03A8()
{
  result = qword_27CDB6238;
  if (!qword_27CDB6238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberDetails, &type metadata for FamilyDestinations.MemberDetails, v0, v1);
    atomic_store(result, &qword_27CDB6238);
  }

  return result;
}

unint64_t sub_21BBE03FC()
{
  result = qword_27CDB6260;
  if (!qword_27CDB6260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.MemberDetails, &type metadata for FamilyDestinations.MemberDetails, v0, v1);
    atomic_store(result, &qword_27CDB6260);
  }

  return result;
}

unint64_t sub_21BBE0450()
{
  result = qword_27CDB6268;
  if (!qword_27CDB6268)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AppleCashDetails, &type metadata for FamilyDestinations.AppleCashDetails, v0, v1);
    atomic_store(result, &qword_27CDB6268);
  }

  return result;
}

unint64_t sub_21BBE04A4()
{
  result = qword_27CDB6270;
  if (!qword_27CDB6270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AppleCashDetails, &type metadata for FamilyDestinations.AppleCashDetails, v0, v1);
    atomic_store(result, &qword_27CDB6270);
  }

  return result;
}

unint64_t sub_21BBE053C()
{
  result = qword_27CDB6278;
  if (!qword_27CDB6278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AppleCashDetails, &type metadata for FamilyDestinations.AppleCashDetails, v0, v1);
    atomic_store(result, &qword_27CDB6278);
  }

  return result;
}

unint64_t sub_21BBE0590()
{
  result = qword_27CDB6288;
  if (!qword_27CDB6288)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AskToBuyMemberDestination, &type metadata for FamilyDestinations.AskToBuyMemberDestination, v0, v1);
    atomic_store(result, &qword_27CDB6288);
  }

  return result;
}

unint64_t sub_21BBE05E4()
{
  result = qword_27CDB6290;
  if (!qword_27CDB6290)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AskToBuyMemberDestination, &type metadata for FamilyDestinations.AskToBuyMemberDestination, v0, v1);
    atomic_store(result, &qword_27CDB6290);
  }

  return result;
}

unint64_t sub_21BBE067C()
{
  result = qword_27CDB6298;
  if (!qword_27CDB6298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.AskToBuyMemberDestination, &type metadata for FamilyDestinations.AskToBuyMemberDestination, v0, v1);
    atomic_store(result, &qword_27CDB6298);
  }

  return result;
}

unint64_t sub_21BBE06D0()
{
  result = qword_27CDB62B8;
  if (!qword_27CDB62B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.SubscriptionsDeepLink, &type metadata for FamilyDestinations.SubscriptionsDeepLink, v0, v1);
    atomic_store(result, &qword_27CDB62B8);
  }

  return result;
}

void sub_21BBE073C()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_27CDD4138 + 16));
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_21BBBC274(&v8);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21BE289CC();
  v4 = [v2 propertyForKey_];

  if (v4)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  type metadata accessor for PSControllerURLHandlingRelay();
  if (swift_dynamicCast())
  {
    v5 = v6;
    sub_21BBE3684(v6);

    return;
  }

LABEL_10:
  sub_21BBE3684(0);
}

void sub_21BBE08EC()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v4 = v3;
  v5 = qword_27CDD4138;
  v6 = *(v0 + *(v3 + qword_27CDD4138 + 40));
  if (v6)
  {
    v7 = v6;
    sub_21BE259FC();
    v8 = *((*v2 & *v1) + qword_27CDD4138 + 40);
    v9 = *(v1 + v8);
    *(v1 + v8) = 0;

    v5 = qword_27CDD4138;
    v3 = *v2 & *v1;
  }

  v10 = *(v1 + *(v3 + v5 + 32));
  if (v10)
  {
    swift_getKeyPath();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v13 = v4 + qword_27CDD4138;
    v12[2] = *(v4 + qword_27CDD4138);
    v12[3] = *(v13 + 8);
    v12[4] = v11;
    v14 = v10;
    v15 = sub_21BE25ACC();

    v16 = *((*v2 & *v1) + qword_27CDD4138 + 40);
    v17 = *(v1 + v16);
    *(v1 + v16) = v15;
  }
}

uint64_t sub_21BBE0B14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BBE0B70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_21BBE0BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  if (*(v3 + v4))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_21BBE24AC();
    }
  }
}

uint64_t sub_21BBE0CAC()
{
  v1 = MEMORY[0x277D85000];
}

id sub_21BBE0E68()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = *(v2 + qword_27CDD4138 + 40);
  v4 = *&v0[v3];
  if (v4)
  {
    v5 = v4;
    sub_21BE259FC();

    v4 = *&v1[v3];
  }

  *&v1[v3] = 0;

  v7 = type metadata accessor for ModernFamilyHostingController(0, *(v2 + qword_27CDD4138), *(v2 + qword_27CDD4138 + 8), v6);
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_21BBE0F5C(void *a1)
{
  v2 = MEMORY[0x277D85000];
}

id sub_21BBE1128()
{
  v0 = sub_21BBE3784();

  return v0;
}

void sub_21BBE115C(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 24);
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
}

void sub_21BBE11E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_21BBE115C(a3);
}

id sub_21BBE124C()
{
  v0 = sub_21BBE378C();

  return v0;
}

void sub_21BBE1280(void *a1)
{
  v2 = a1;
  sub_21BBE3704(a1);
}

void sub_21BBE12CC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_21BBE1280(a3);
}

void *sub_21BBE1338(void *a1)
{
  v1 = a1;
  v2 = sub_21BBE37D8();
  v3 = v2;

  return v2;
}

uint64_t sub_21BBE1378(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21BE294BC();

    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  return sub_21BBBC274(v8);
}

double sub_21BBE13F4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_21BBE1400()
{
  sub_21BBE13F4(&v7);
  v0 = v8;
  if (v8)
  {
    v1 = __swift_project_boxed_opaque_existential_1Tm(&v7, v8);
    v2 = *(v0 - 8);
    MEMORY[0x28223BE20](v1);
    v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v4);
    v5 = sub_21BE2994C();
    (*(v2 + 8))(v4, v0);
    __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21BBE1530(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_21BE2870C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_21BE2874C();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_21BE28D7C();
  v2[17] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBE1680, v6, v5);
}

uint64_t sub_21BBE1680()
{
  v1 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v12 = v0[11];
  v13 = v0[12];
  v4 = v0[9];

  sub_21BBE1EF0();
  v5 = *(v3 + *((*MEMORY[0x277D85000] & *v3) + qword_27CDD4138 + 48));
  v6 = sub_21BE288EC();
  [v5 handleURL_];

  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v7 = sub_21BE2925C();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v0[6] = sub_21BBE3CE0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21BB42A18;
  v0[5] = &block_descriptor_2;
  v9 = _Block_copy(v0 + 2);

  sub_21BE2872C();
  v0[8] = MEMORY[0x277D84F90];
  sub_21BBE3CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3D7B8(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v1, v2, v9);
  _Block_release(v9);

  (*(v13 + 8))(v2, v12);
  (*(v14 + 8))(v1, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21BBE1940(uint64_t a1)
{
  sub_21BE2958C();
  if (*(a1 + 16) && (v2 = sub_21BBB31E8(v7), (v3 & 1) != 0))
  {
    sub_21BB3DCD4(*(a1 + 56) + 32 * v2, v8);
    sub_21BBB7238(v7);
    if (swift_dynamicCast())
    {
      v5 = 0x6150796C696D6166;
      v4 = 0xEA00000000006874;
      goto LABEL_7;
    }
  }

  else
  {
    sub_21BBB7238(v7);
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_7:
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v7[0] = v5;
  v7[1] = v4;

  sub_21BE26C1C();
}

uint64_t sub_21BBE1A80(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE343D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A10;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_21BDC4F90(0, 0, v9, &unk_21BE391F0, v14);
}

uint64_t sub_21BBE1C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBE1CA4, v5, v4);
}

uint64_t sub_21BBE1CA4()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_21BE2890C();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_21BBE1D8C;

  return sub_21BBE1530(v3);
}

uint64_t sub_21BBE1D8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 48);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

void sub_21BBE1EF0()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE288BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 traitCollection];
  sub_21BE292BC();

  LOBYTE(v10) = sub_21BE2887C();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if (v10)
  {
    v12 = [v1 traitCollection];
    sub_21BE292BC();

    sub_21BE2888C();
    v11(v9, v6);
    return;
  }

  v13 = [v1 navigationController];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v13 viewControllers];

  sub_21BB3A2A4(0, &qword_27CDB6358, 0x277D75D28);
  v16 = sub_21BE28C3C();

  v27 = v3;
  v28 = v2;
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = sub_21BE2951C();
  if (!v17)
  {
LABEL_21:

    v3 = v27;
    v2 = v28;
LABEL_22:
    sub_21BE260FC();
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FDC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21BB35000, v24, v25, "Could not find viewController containing ModernFamilyHostingController", v26, 2u);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

LABEL_6:
  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CF047C0](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v29 = v19;
    if (sub_21BBE22BC(&v29, v1))
    {
      break;
    }

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_21;
    }
  }

  v22 = [v1 navigationController];
  if (v22)
  {
    v23 = v22;
  }
}

uint64_t sub_21BBE22BC(uint64_t *a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21BBE3C78();
  sub_21BB3D7B8(&qword_27CDB6368, &qword_27CDB6370, &qword_21BE343A0);
  v2 = sub_21BE2650C();

  return v2 & 1;
}

void sub_21BBE2354(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 childViewControllers];
  sub_21BB3A2A4(0, &qword_27CDB6358, 0x277D75D28);
  v4 = sub_21BE28C3C();

  *a2 = v4;
}

void sub_21BBE23C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModernFamilyHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CDD4138), *((*MEMORY[0x277D85000] & *v4) + qword_27CDD4138 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  sub_21BBE24AC();
}

void sub_21BBE2458(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_21BBE23C8(a3, v6, v4, v5);
}

void sub_21BBE24AC()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  v6 = [v0 viewIfLoaded];
  v7 = [v6 window];

  if (v7)
  {

    v8 = *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 32));
    if (v8)
    {
      v9 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
      swift_beginAccess();
      v10 = *(v8 + v9);
      if (v10)
      {
        v11 = *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 32));
        if (v11)
        {
          v12 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
          swift_beginAccess();
          *(v11 + v12) = 0;

          v13 = sub_21BE28DAC();
          (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
          v14 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_21BE28D7C();

          v15 = sub_21BE28D6C();
          v16 = swift_allocObject();
          v17 = MEMORY[0x277D85700];
          v16[2] = v15;
          v16[3] = v17;
          v18 = v2 + qword_27CDD4138;
          v16[4] = *(v2 + qword_27CDD4138);
          v16[5] = *(v18 + 8);
          v16[6] = v14;
          v16[7] = v10;

          sub_21BBA9018(0, 0, v5, &unk_21BE34350, v16);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_21BBE277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21BE28D7C();
  v5[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_21BBE2818, v7, v6);
}

uint64_t sub_21BBE2818()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_21BBE2924;
    v3 = *(v0 + 56);

    return sub_21BBE1530(v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21BBE2924()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BBE2A64, v4, v3);
}

uint64_t sub_21BBE2A64()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBE2AD8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21BBE38AC(a1);
  (*(*(*(v2 + qword_27CDD4138) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_21BBE2B9C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD4138);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - v7;
  *(v2 + *(v9 + 16)) = 0;
  *(v2 + *((*v4 & *v2) + qword_27CDD4138 + 24)) = 0;
  *(v2 + *((*v4 & *v2) + qword_27CDD4138 + 32)) = 0;
  *(v2 + *((*v4 & *v2) + qword_27CDD4138 + 40)) = 0;
  v10 = *((*v4 & *v2) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v2 + v10) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v11 = *((*v4 & *v2) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v2 + v11) = qword_280BD79E0;
  (*(v6 + 16))(v8, a2, v5);

  v12 = sub_21BE2773C();
  (*(v6 + 8))(a2, v5);
  return v12;
}

id sub_21BBE2EB4(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v1;
  *(v1 + *(v4 + qword_27CDD4138 + 16)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 40)) = 0;
  v5 = *((*v3 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v5) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v7 = *((*v3 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v7) = qword_280BD79E0;
  v8 = type metadata accessor for ModernFamilyHostingController(0, *(v4 + qword_27CDD4138), *(v4 + qword_27CDD4138 + 8), v6);
  v11.receiver = v1;
  v11.super_class = v8;

  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_21BBE3354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PSControllerURLHandlingRelay.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PSControllerURLHandlingRelay.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PSControllerURLHandlingRelay();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PSControllerURLHandlingRelay.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSControllerURLHandlingRelay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21BBE3684(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 32);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  sub_21BBE08EC();
}

void sub_21BBE3704(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 16);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  sub_21BBE073C();
}

uint64_t sub_21BBE37D8()
{
  v1 = sub_21BE289CC();
  v2 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v1 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  sub_21BBE3704(v2);
  return *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_27CDD4138 + 16));
}

uint64_t sub_21BBE38AC(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  *(v1 + *(v8 + 16)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 40)) = 0;
  v9 = *((*v3 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v9) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v10 = *((*v3 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v10) = qword_280BD79E0;
  (*(v5 + 16))(v7, a1, v4);

  return sub_21BE2774C();
}

uint64_t sub_21BBE3B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BBE277C(a1, v4, v5, v7, v6);
}

unint64_t sub_21BBE3C78()
{
  result = qword_27CDB6360;
  if (!qword_27CDB6360)
  {
    v3 = sub_21BB3A2A4(255, &qword_27CDB6358, 0x277D75D28);
    result = swift_getWitnessTable(MEMORY[0x277D85380], v3, v0, v1);
    atomic_store(result, &qword_27CDB6360);
  }

  return result;
}

unint64_t sub_21BBE3CE8()
{
  result = qword_280BD69E0;
  if (!qword_280BD69E0)
  {
    v3 = sub_21BE2870C();
    result = swift_getWitnessTable(MEMORY[0x277D851A0], v3, v0, v1);
    atomic_store(result, &qword_280BD69E0);
  }

  return result;
}

uint64_t sub_21BBE3D4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBE1C08(v2, v3, v4);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21BBE3E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BBE3E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_21BBE3EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16[0] = v1[2];
  *(v16 + 9) = *(v1 + 41);
  v4 = *(v1 + 8);
  v18 = *(v1 + 24);
  v19 = v4;
  v17 = *(v1 + 40);
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  sub_21BBC8120(&v19, v13);
  sub_21BBC8120(&v17, v13);
  sub_21BBE40F0(v1, v13);
  sub_21BBE4128(&v18, v13);
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE289CC();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  if (v9)
  {
    *(a1 + 104) = &type metadata for IcloudPlusDataItem;
    *(a1 + 112) = sub_21BBE4198();
    result = swift_allocObject();
    *(a1 + 72) = 0;
    *(a1 + 80) = result;
    v11 = v15;
    result[1] = v14;
    result[2] = v11;
    result[3] = v16[0];
    *(result + 57) = *(v16 + 9);
    v12 = v18;
    *a1 = v19;
    *(a1 + 16) = v12;
    *(a1 + 32) = v17;
    *(a1 + 120) = 0;
    *(a1 + 48) = v9;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBE4128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBE4198()
{
  result = qword_27CDB6378;
  if (!qword_27CDB6378)
  {
    result = swift_getWitnessTable(byte_21BE35224, &type metadata for IcloudPlusDataItem, v0, v1);
    atomic_store(result, &qword_27CDB6378);
  }

  return result;
}

void *sub_21BBE41EC()
{
  type metadata accessor for RemoteFlowPresenter();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  qword_27CDD4148 = result;
  return result;
}

id sub_21BBE4220(void *a1, void *a2)
{
  [a1 setModalPresentationStyle_];

  return [a2 presentViewController:a1 animated:0 completion:0];
}

void sub_21BBE42A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[2];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21BD948E4();

    v9 = [v8 presentingViewController];
    if (v9)
    {
      [v9 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v10 = v3[2];
  v3[2] = 0;

  v11 = v3[3];
  if (v11)
  {
    v12 = v3[4];

    v11(a1, a2);

    sub_21BB5AEC4(v11, v12);
  }
}

void sub_21BBE4394(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_21BE26A4C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  if (v5[2])
  {
    sub_21BE2614C();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21BB35000, v19, v20, "Trying to show remote flow while it is already shown", v21, 2u);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v41 = v12;
    v23 = v5[3];
    v22 = v5[4];
    v5[3] = a4;
    v5[4] = a5;

    sub_21BB5AEC4(v23, v22);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = type metadata accessor for HostRemoteViewCoordinator();
    v26 = objc_allocWithZone(v25);
    v26[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state] = 0;
    *&v26[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection] = 0;
    v27 = &v26[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd];
    *v27 = 0;
    v27[1] = 0;
    *&v26[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator____lazy_storage___remoteViewController] = 0;
    *&v26[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_ageRangeRequestModel] = a1;
    *v27 = sub_21BBE48A8;
    v27[1] = v24;
    v43.receiver = v26;
    v43.super_class = v25;
    v28 = a1;
    v29 = objc_msgSendSuper2(&v43, sel_init);
    v30 = v5[2];
    v5[2] = v29;
    v31 = v29;

    v32 = sub_21BD948E4();
    v42();

    sub_21BE2614C();
    v33 = sub_21BE26A2C();
    v34 = sub_21BE28FFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21BB35000, v33, v34, "RemoteFlowPresenter (Host): Begin presentation...", v35, 2u);
      MEMORY[0x21CF05C50](v35, -1, -1);
    }

    (*(v13 + 8))(v18, v41);
    if (*(v31 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state))
    {
    }

    else
    {
      *(v31 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state) = 1;
      v36 = sub_21BE28DAC();
      (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
      sub_21BE28D7C();
      v37 = v31;
      v38 = sub_21BE28D6C();
      v39 = swift_allocObject();
      v40 = MEMORY[0x277D85700];
      v39[2] = v38;
      v39[3] = v40;
      v39[4] = v37;
      sub_21BBA932C(0, 0, v11, &unk_21BE344D0, v39);
    }
  }
}

uint64_t sub_21BBE47D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21BBE42A4(a1, a2);
  }

  return result;
}

uint64_t sub_21BBE4844()
{
  sub_21BB5AEC4(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_21BBE48B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BD94EA8(a1, v4, v5, v6);
}

unint64_t sub_21BBE4964(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BBE4B64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21BDB089C();
  v6 = v5;
  if (v4 == sub_21BDB089C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_21BE2995C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = sub_21BC5C62C(v2);
  v13 = v12;
  if (v11 == sub_21BC5C62C(v3) && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BBE4C88()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BDB089C();
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBE4D2C(uint64_t a1)
{
  v2 = *v1;
  sub_21BDB089C();
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();
}

uint64_t sub_21BBE4DC4(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  sub_21BDB089C();
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BBE4E64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BBE4964(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_21BBE4EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBE6598(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v5 = sub_21BE26E9C();
  v7 = v6;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyChecklistStore();
  sub_21BBE6598(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);

  v8 = sub_21BE2727C();
  v10 = v9;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BBE6598(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);
  v11 = sub_21BE270CC();
  v13 = v12;
  result = sub_21BE283EC();
  *a1 = v5;
  *(a1 + 8) = v7 & 1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  return result;
}

uint64_t sub_21BBE5084()
{
  v1 = qword_27CDB6388;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63D8, &qword_21BE346D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + qword_27CDD4150);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BBE5108()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FamilyMessageConfigProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BBE5180(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for FamilyMessageConfigProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BBE520C(uint64_t a1)
{
  v2 = qword_27CDB6388;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63D8, &qword_21BE346D8);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = (a1 + qword_27CDD4150);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BBE5294()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBE5308(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBE5730();
}

uint64_t sub_21BBE53B8(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_21BBE5450, v4, v3);
}

uint64_t sub_21BBE5450()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[qword_27CDB6380] = 1;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_21BBE558C;

    return sub_21BBCA2BC();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21BBE558C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BBE56CC, v4, v3);
}

uint64_t sub_21BBE56CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBE5730()
{
  v1[2] = v0;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BBE57C8, v3, v2);
}

uint64_t sub_21BBE57C8()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[6] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v4 = qword_27CDD4150;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_21BBE58E4;

  return sub_21BE19D18(v1 + v4);
}

uint64_t sub_21BBE58E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);
  if (v1)
  {
    v7 = sub_21BBE5E28;
  }

  else
  {
    v7 = sub_21BBE5A28;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BBE5A28()
{
  v1 = [*(v0 + 64) members];
  sub_21BBE66D8();
  v2 = sub_21BE28C3C();
  *(v0 + 80) = v2;

  if (v2 >> 62)
  {
    v8 = sub_21BE2951C();
    *(v0 + 88) = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = v3;
    if (v3)
    {
LABEL_3:
      v4 = *(v0 + 16);
      v5 = qword_27CDB6380;
      *(v0 + 96) = qword_27CDB6380;
      v6 = *(v4 + v5);
      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_21BBE5BA4;

      return MEMORY[0x28215E528](v6);
    }
  }

  v9 = *(v0 + 64);

  sub_21BC852D8();

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_21BBE5BA4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBE5CC4, v3, v2);
}

void sub_21BBE5CC4()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[2];

  v4 = 0;
  *(v3 + v1) = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v7 = v2 + 32;
  do
  {
    v8 = v4;
    v9 = v0[11];
    if (v4 == v9)
    {
      break;
    }

    if (v5)
    {
      v10 = MEMORY[0x21CF047C0](v4, v0[10]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(v7 + 8 * v4);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v12 = sub_21BE291BC();

    v4 = v8 + 1;
  }

  while ((v12 & 1) != 0);
  v13 = v8 == v9;
  v14 = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63E0, &unk_21BE346E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21BE32770;
  *(v15 + 32) = 12;
  *(v15 + 33) = v13;

  sub_21BC852D8();

  v16 = v0[1];

  v16(v15);
}

uint64_t sub_21BBE5E28()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBE5E9C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCA2BC();
}

void sub_21BBE5F60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE346F8, v8);
}

uint64_t type metadata accessor for FamilyMessageConfigProvider(uint64_t a1)
{
  result = qword_27CDB6390;
  if (!qword_27CDB6390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBE60DC(uint64_t a1)
{
  sub_21BBE6180(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BBE6180(uint64_t a1)
{
  if (!qword_27CDB63A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB63A8, &qword_21BE34530);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB63A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for FamilyMessageItemDataItem(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyMessageItemDataItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BBE6360()
{
  result = qword_27CDB63B0;
  if (!qword_27CDB63B0)
  {
    result = swift_getWitnessTable(byte_21BE34604, &type metadata for FamilyMessageItemDataItem, v0, v1);
    atomic_store(result, &qword_27CDB63B0);
  }

  return result;
}

unint64_t sub_21BBE63B4(uint64_t a1)
{
  *(a1 + 8) = sub_21BBE63E4();
  result = sub_21BBE6438();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BBE63E4()
{
  result = qword_27CDB63B8;
  if (!qword_27CDB63B8)
  {
    result = swift_getWitnessTable(byte_21BE345C4, &type metadata for FamilyMessageItemDataItem, v0, v1);
    atomic_store(result, &qword_27CDB63B8);
  }

  return result;
}

unint64_t sub_21BBE6438()
{
  result = qword_27CDB63C0;
  if (!qword_27CDB63C0)
  {
    result = swift_getWitnessTable(byte_21BE3458C, &type metadata for FamilyMessageItemDataItem, v0, v1);
    atomic_store(result, &qword_27CDB63C0);
  }

  return result;
}

uint64_t sub_21BBE648C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BBE64F8(uint64_t a1)
{
  *(a1 + 8) = sub_21BBE6598(&qword_27CDB63C8, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34830);
  result = sub_21BBE6598(&qword_27CDB6080, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBE6598(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBE65E0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BBE6660(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

unint64_t sub_21BBE66D8()
{
  result = qword_280BD8A40;
  if (!qword_280BD8A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD8A40);
  }

  return result;
}

uint64_t sub_21BBE6724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BBE5E9C();
}

unint64_t sub_21BBE67D8()
{
  result = qword_27CDB63E8;
  if (!qword_27CDB63E8)
  {
    result = swift_getWitnessTable(byte_21BE3332C, &type metadata for FamilyMessageConfigItemView, v0, v1);
    atomic_store(result, &qword_27CDB63E8);
  }

  return result;
}

uint64_t sub_21BBE68CC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1, a2);
}

uint64_t sub_21BBE69E4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBE9D64;

  return v7(a1, a2);
}

uint64_t sub_21BBE6BBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21BE26A4C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](sub_21BBE6CB4, v6, v5);
}

uint64_t sub_21BBE6CB4(uint64_t a1)
{
  v21 = v1;
  sub_21BE261BC();
  swift_unknownObjectRetain();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  if (v4)
  {
    v19 = v1[7];
    v8 = v1[3];
    v9 = v1[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = (*(v8 + 24))(v9, v8);
    v14 = sub_21BB3D81C(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21BB35000, v2, v3, "%s reloadItems() called", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v15 = swift_task_alloc();
  v1[11] = v15;
  *v15 = v1;
  v15[1] = sub_21BBE6EA0;
  v16 = v1[3];
  v17 = v1[2];

  return sub_21BBE828C(1, v17, v16);
}

uint64_t sub_21BBE6EA0()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BBE6FC0, v3, v2);
}

uint64_t sub_21BBE6FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BBE7028()
{
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE2627C();
  }
}

uint64_t sub_21BBE7080()
{
  sub_21BE28CBC();
  v1 = sub_21BE2629C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE262BC();

    v9 = (*(v2 + 88))(v8, v1);
    if (v9 == *MEMORY[0x277D07FE8])
    {
      (*(v2 + 16))(v5, v8, v1);
      (*(v2 + 96))(v5, v1);
      v10 = *v5;
      sub_21BE28C6C();
      if (v10)
      {

        v11 = sub_21BE28CCC();

        swift_bridgeObjectRelease_n();
        if ((v11 & 1) == 0)
        {
          goto LABEL_9;
        }

LABEL_7:
        v12 = 1;
LABEL_10:
        (*(v2 + 8))(v8, v1);
        return v12;
      }
    }

    else if (v9 == *MEMORY[0x277D07FE0])
    {
      goto LABEL_7;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BBE72E4()
{
  sub_21BE28CBC();
  v1 = sub_21BE2629C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v7 - v4;
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE262BC();

    v6 = (*(v2 + 88))(v5, v1) == *MEMORY[0x277D07FF0];
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBE7428()
{
  sub_21BE28CBC();
  v1 = sub_21BE2629C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v7 - v4;
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE262BC();

    v6 = sub_21BE2628C();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBE755C()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_21BBE762C, v3, v2);
}

void sub_21BBE762C()
{
  v1 = *(v0[3] + qword_27CDB6400);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_21BBE7748;
    v5 = v0[4];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBE7748()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_21BB3A4CC(v3, &qword_27CDB5790, &qword_21BE32800);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_21BBDDD54;
  }

  else
  {
    v6 = sub_21BBE78D4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBE78D4()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BBE7948()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_21BBE7A18, v3, v2);
}

void sub_21BBE7A18()
{
  v1 = *(v0[3] + qword_27CDB6400);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_21BBE7B34;
    v5 = v0[4];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBE7B34()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_21BB3A4CC(v3, &qword_27CDB5790, &qword_21BE32800);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_21BBDEABC;
  }

  else
  {
    v6 = sub_21BBE9D68;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBE7CC0()
{
  v0 = sub_21BBE9D1C();

  return v0;
}

uint64_t sub_21BBE7D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280BD6F00 != -1)
  {
    swift_once();
  }

  v6 = qword_280BDCB50;

  return sub_21BBFD378(v3, v6, a1, a2);
}

BOOL sub_21BBE7DA8(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_21BE295FC();
  v2 = sub_21BBBC694(v4, v5);

  return v2;
}

uint64_t sub_21BBE7E6C(uint64_t a1, uint64_t a2)
{
  if (sub_21BBE7DA8(a1, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(a2 + 24))(a1, a2) ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21BBE7ECC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_21BE2852C();
}

uint64_t sub_21BBE7F94(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  v2 = sub_21BE2976C();

  return v2;
}

uint64_t sub_21BBE8030(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v15 - v5;
  swift_getAssociatedConformanceWitness();
  v7 = sub_21BE26B9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_21BE26BEC();
  v11 = swift_allocObject();
  v12 = v16;
  *(v11 + 16) = a1;
  *(v11 + 24) = v12;
  sub_21BE26CEC();

  (*(v4 + 8))(v6, AssociatedTypeWitness);
  swift_getWitnessTable(MEMORY[0x277CBCC08], v7);
  v13 = sub_21BE26CDC();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_21BBE828C(char a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a2;
  v8 = sub_21BE26A4C();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0);
  v4[20] = swift_task_alloc();
  v4[21] = sub_21BE28D7C();
  v4[22] = sub_21BE28D6C();
  if (a1)
  {
    v4[8] = v3;
    v9 = *(a3 + 16);
    v4[26] = v9;
    v17 = (*(v9 + 64) + **(v9 + 64));
    v10 = swift_task_alloc();
    v4[27] = v10;
    *v10 = v4;
    v10[1] = sub_21BBE87E0;
    v11 = a2;
    v12 = v9;
    v13 = v17;
  }

  else
  {
    v4[12] = v3;
    v14 = *(a3 + 16);
    v4[23] = v14;
    v18 = (*(v14 + 56) + **(v14 + 56));
    v15 = swift_task_alloc();
    v4[24] = v15;
    *v15 = v4;
    v15[1] = sub_21BBE857C;
    v11 = a2;
    v12 = v14;
    v13 = v18;
  }

  return v13(v11, v12);
}

uint64_t sub_21BBE857C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[25] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBE8A44;
  }

  else
  {
    v6 = sub_21BBE86C8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBE86C8()
{
  v1 = v0[3];
  v2 = v0[14];
  v3 = v0[13];

  (*(v2 + 40))(v1, v3, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v4 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08934(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBE87E0(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[28] = v1;

  v5 = sub_21BE28D0C();
  if (v1)
  {
    v6 = sub_21BBE8EF4;
  }

  else
  {
    v6 = sub_21BBE892C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BBE892C()
{
  v1 = v0[6];
  v2 = v0[14];
  v3 = v0[13];

  (*(v2 + 40))(v1, v3, v2);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v4 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08934(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBE8A44()
{
  v47 = v0;

  v1 = v0[25];
  v0[9] = v1;
  v2 = v0[23];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v4 = sub_21BE28D3C();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  if (v5)
  {
    v7 = v0[20];
    v6(v7, 0, 1, v4);
    sub_21BB3A4CC(v7, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    swift_unknownObjectRelease();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    if (v10)
    {
      v43 = v0[19];
      v15 = v0[14];
      v14 = v0[15];
      v39 = v2;
      v16 = v0[13];
      v40 = v9;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v17 = 136315394;
      v18 = (*(v15 + 24))(v16, v15);
      v42 = v12;
      v20 = sub_21BB3D81C(v18, v19, &v45);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v0[11] = v14;
      v21 = (*(v39 + 48))(v16);
      v23 = sub_21BB3D81C(v21, v22, &v45);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_21BB35000, v8, v40, "%s [%s] cancelled", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v41, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);

      (*(v13 + 8))(v43, v42);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    v24 = v0[20];
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[15];
    v44 = v0[16];
    v28 = v0[13];
    v29 = v0[14];
    v6(v24, 1, 1, v4);
    sub_21BB3A4CC(v24, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v45 = 0;
    v46 = 0xE000000000000000;
    v30 = v1;
    sub_21BE295EC();
    v31 = (*(v29 + 24))(v28, v29);
    v33 = v32;

    v45 = v31;
    v46 = v33;
    MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    v0[10] = v27;
    v34 = (*(v2 + 48))(v28, v2);
    MEMORY[0x21CF03CA0](v34);

    MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
    sub_21BC51D50(v1, v45, v46);

    (*(v26 + 8))(v25, v44);
  }

  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v35 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08A90(v35, v36, v1);

  v37 = v0[1];

  return v37();
}

uint64_t sub_21BBE8EF4()
{
  v47 = v0;

  v1 = v0[28];
  v0[9] = v1;
  v2 = v0[26];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v4 = sub_21BE28D3C();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  if (v5)
  {
    v7 = v0[20];
    v6(v7, 0, 1, v4);
    sub_21BB3A4CC(v7, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    swift_unknownObjectRelease();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    if (v10)
    {
      v43 = v0[19];
      v15 = v0[14];
      v14 = v0[15];
      v39 = v2;
      v16 = v0[13];
      v40 = v9;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v17 = 136315394;
      v18 = (*(v15 + 24))(v16, v15);
      v42 = v12;
      v20 = sub_21BB3D81C(v18, v19, &v45);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v0[11] = v14;
      v21 = (*(v39 + 48))(v16);
      v23 = sub_21BB3D81C(v21, v22, &v45);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_21BB35000, v8, v40, "%s [%s] cancelled", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v41, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);

      (*(v13 + 8))(v43, v42);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    v24 = v0[20];
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[15];
    v44 = v0[16];
    v28 = v0[13];
    v29 = v0[14];
    v6(v24, 1, 1, v4);
    sub_21BB3A4CC(v24, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v45 = 0;
    v46 = 0xE000000000000000;
    v30 = v1;
    sub_21BE295EC();
    v31 = (*(v29 + 24))(v28, v29);
    v33 = v32;

    v45 = v31;
    v46 = v33;
    MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    v0[10] = v27;
    v34 = (*(v2 + 48))(v28, v2);
    MEMORY[0x21CF03CA0](v34);

    MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
    sub_21BC51D50(v1, v45, v46);

    (*(v26 + 8))(v25, v44);
  }

  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v35 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08A90(v35, v36, v1);

  v37 = v0[1];

  return v37();
}

uint64_t sub_21BBE93A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21BE26A4C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](sub_21BBE949C, v6, v5);
}

uint64_t sub_21BBE949C(uint64_t a1)
{
  v21 = v1;
  sub_21BE261BC();
  swift_unknownObjectRetain();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  if (v4)
  {
    v19 = v1[7];
    v8 = v1[3];
    v9 = v1[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = (*(v8 + 24))(v9, v8);
    v14 = sub_21BB3D81C(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21BB35000, v2, v3, "%s loadItems() called", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v15 = swift_task_alloc();
  v1[11] = v15;
  *v15 = v1;
  v15[1] = sub_21BBE9688;
  v16 = v1[3];
  v17 = v1[2];

  return sub_21BBE828C(0, v17, v16);
}

uint64_t sub_21BBE9688()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BBE9D60, v3, v2);
}

BOOL sub_21BBE97A8(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB5030 != -1)
  {
    v12 = a2;
    swift_once();
    a2 = v12;
  }

  v2 = qword_27CDD43F0;
  v3 = (*(a2 + 24))();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (, v7 = sub_21BBB3108(v3, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 16 * v7 + 8);

    return v10 > 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21BBE98B8(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB5030 != -1)
  {
    v14 = a2;
    swift_once();
    a2 = v14;
  }

  v2 = qword_27CDD43F0;
  v3 = (*(a2 + 24))();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (, v7 = sub_21BBB3108(v3, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 16 * v7);

    v11 = v10;
    v12 = sub_21BE2609C();

    return v12;
  }

  else
  {

    return 0;
  }
}

id sub_21BBE9A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncItemProvider(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21BBE9AA0(uint64_t a1)
{
}

uint64_t sub_21BBE9B8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDE3D4;

  return sub_21BBE755C();
}

uint64_t sub_21BBE9C1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDEAC0;

  return sub_21BBE7948();
}

uint64_t sub_21BBE9CD0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for AsyncItemProvider(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_21BE26C0C();
  *a4 = result;
  return result;
}

uint64_t sub_21BBE9D70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 26);
  return result;
}

uint64_t sub_21BBE9E24()
{

  return swift_deallocClassInstance();
}

BOOL sub_21BBE9E64(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = sub_21BBE7CF8(v5, v6);
  if (*(v4 + 16))
  {
    v9 = sub_21BBB3108(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v4 + 56) + 8 * v9);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_6:
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v13);
  v15 = sub_21BBE7CF8(v13, v14);
  if (!*(v4 + 16))
  {

    goto LABEL_10;
  }

  v17 = sub_21BBB3108(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_10:
    v20 = 0;
    return v12 < v20;
  }

  v20 = *(*(v4 + 56) + 8 * v17);
  return v12 < v20;
}

uint64_t ChecklistStateVars.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 23) = 0;
  sub_21BE25F4C();
  return v0;
}

uint64_t ChecklistStateVars.init()()
{
  *(v0 + 23) = 0;
  *(v0 + 16) = 0;
  sub_21BE25F4C();
  return v0;
}

uint64_t sub_21BBE9FE8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA0DC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA1D0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA2C4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 19) == v2)
  {
    *(v1 + 19) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA3B8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 20) == v2)
  {
    *(v1 + 20) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA4AC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 21) == v2)
  {
    *(v1 + 21) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA5A0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 22) == v2)
  {
    *(v1 + 22) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA694(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 23) == v2)
  {
    *(v1 + 23) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA788(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA87C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 25) == v2)
  {
    *(v1 + 25) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA970(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 26) == v2)
  {
    *(v1 + 26) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEAAB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21BBEAB68()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_21BBEABEC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_21BBEAC40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

unint64_t sub_21BBEAC94()
{
  result = qword_27CDBDB60;
  if (!qword_27CDBDB60)
  {
    v3 = type metadata accessor for ChecklistStateVars(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ChecklistStateVars, v3, v0, v1);
    atomic_store(result, &qword_27CDBDB60);
  }

  return result;
}

uint64_t type metadata accessor for ChecklistStateVars(uint64_t a1)
{
  result = qword_27CDB6490;
  if (!qword_27CDB6490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_21BBEAD38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEAA64(v4);
  return sub_21BBEAE40;
}

uint64_t sub_21BBEAE9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21BBEAF50()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_21BBEAFD4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

uint64_t sub_21BBEB028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t (*sub_21BBEB07C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEAE4C(v4);
  return sub_21BBEB184;
}

uint64_t sub_21BBEB1E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_21BBEB294()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t sub_21BBEB318(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 18) = a2;
  return result;
}

uint64_t sub_21BBEB36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t (*sub_21BBEB3C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEB190(v4);
  return sub_21BBEB4C8;
}

uint64_t sub_21BBEB524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_21BBEB5D8()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 19);
}

uint64_t sub_21BBEB65C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 19) = a2;
  return result;
}

uint64_t sub_21BBEB6B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 19) = v2;
  return result;
}

uint64_t (*sub_21BBEB704(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEB4D4(v4);
  return sub_21BBEB80C;
}

uint64_t sub_21BBEB868@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_21BBEB91C()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t sub_21BBEB9A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 20) = v2;
  return result;
}

uint64_t (*sub_21BBEB9F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEB818(v4);
  return sub_21BBEBAFC;
}

uint64_t sub_21BBEBB58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 21);
  return result;
}

uint64_t sub_21BBEBC0C()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 21);
}

uint64_t sub_21BBEBC90(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 21) = a2;
  return result;
}

uint64_t sub_21BBEBCE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 21) = v2;
  return result;
}

uint64_t (*sub_21BBEBD38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEBB08(v4);
  return sub_21BBEBE40;
}

uint64_t sub_21BBEBE9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 22);
  return result;
}

uint64_t sub_21BBEBF50()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 22);
}

uint64_t sub_21BBEBFD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 22) = v2;
  return result;
}

uint64_t (*sub_21BBEC028(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEBE4C(v4);
  return sub_21BBEC130;
}

uint64_t sub_21BBEC18C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 23);
  return result;
}

uint64_t sub_21BBEC240()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 23);
}

uint64_t sub_21BBEC2C4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 23) = a2;
  return result;
}

uint64_t sub_21BBEC318()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 23) = v2;
  return result;
}

uint64_t (*sub_21BBEC36C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEC13C(v4);
  return sub_21BBEC474;
}

uint64_t sub_21BBEC4D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21BBEC584()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_21BBEC608()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t (*sub_21BBEC65C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEC480(v4);
  return sub_21BBEC764;
}

uint64_t sub_21BBEC7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_21BBEC874()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 25);
}

uint64_t sub_21BBEC8F8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 25) = a2;
  return result;
}

uint64_t sub_21BBEC94C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 25) = v2;
  return result;
}

uint64_t (*sub_21BBEC9A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEC770(v4);
  return sub_21BBECAA8;
}

uint64_t sub_21BBECB04()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 26);
}

uint64_t sub_21BBECB88(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 26) = a2;
  return result;
}

uint64_t sub_21BBECBDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

uint64_t (*sub_21BBECC30(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBECAB4(v4);
  return sub_21BBECD38;
}

void sub_21BBECD44(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_21BE25F2C();

  free(v3);
}

uint64_t ChecklistStateVars.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ChecklistStateVars.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21BBECF00(uint64_t a1)
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BBED570(void *a1)
{
  v2 = sub_21BE26A4C();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD6F00 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = sub_21BBFA0C4(a1);
  v5 = 0;
  v6 = *(v4 + 16);
  a1 = MEMORY[0x277D84F98];
  while (1)
  {
    v8 = 0uLL;
    v9 = v6;
    v10 = 0uLL;
    v11 = 0uLL;
    if (v5 != v6)
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_23;
      }

      v9 = v5 + 1;
      *&v47 = v5;
      sub_21BB3A35C(v4 + 32 + 40 * v5, &v47 + 8);
      v8 = v47;
      v10 = v48;
      v11 = v49;
    }

    v50[0] = v8;
    v50[1] = v10;
    v50[2] = v11;
    if (!v11)
    {
      break;
    }

    v45 = v8;
    sub_21BB3D104((v50 + 8), &v47);
    v12 = *(&v48 + 1);
    v13 = v49;
    __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
    v14 = sub_21BBE7CF8(v12, v13);
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = a1;
    v18 = sub_21BBB3108(v14, v16);
    v20 = a1[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v24 = v19;
    if (a1[3] < v23)
    {
      sub_21BC7C4B4(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_21BBB3108(v14, v16);
      if ((v24 & 1) != (v25 & 1))
      {
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }

LABEL_14:
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v29 = v18;
    sub_21BC81174();
    v18 = v29;
    if (v24)
    {
LABEL_3:
      v7 = v18;

      a1 = v46;
      *(v46[7] + 8 * v7) = v45;
      goto LABEL_4;
    }

LABEL_15:
    a1 = v46;
    v46[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (a1[6] + 16 * v18);
    *v26 = v14;
    v26[1] = v16;
    *(a1[7] + 8 * v18) = v45;
    v27 = a1[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_24;
    }

    a1[2] = v28;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(&v47);
    v5 = v9;
  }

  v30 = v42;
  sub_21BE261BC();
  v31 = sub_21BE26A2C();
  v32 = sub_21BE28FCC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v50[0] = v34;
    *v33 = 134218242;
    *(v33 + 4) = a1[2];
    *(v33 + 12) = 2080;

    v35 = sub_21BE2891C();
    v37 = v36;

    v38 = sub_21BB3D81C(v35, v37, v50);

    *(v33 + 14) = v38;
    _os_log_impl(&dword_21BB35000, v31, v32, "Sorted %ld items: %s", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x21CF05C50](v34, -1, -1);
    MEMORY[0x21CF05C50](v33, -1, -1);
  }

  (*(v43 + 8))(v30, v44);
  type metadata accessor for ChecklistSortingRules();
  result = swift_allocObject();
  v39 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v39;
  return result;
}

uint64_t sub_21BBED9AC(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE2992C();
  v3 = sub_21BE291AC();
  v5 = v4;

  MEMORY[0x21CF03CA0](v3, v5);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 36)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBEDAC4(uint64_t a1, uint64_t a2)
{
  sub_21BE2992C();
  v4 = sub_21BE291AC();
  v6 = v5;

  MEMORY[0x21CF03CA0](v4, v6);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 36)));
  sub_21BE28ABC();
}

uint64_t sub_21BBEDBD4(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE2992C();
  v4 = sub_21BE291AC();
  v6 = v5;

  MEMORY[0x21CF03CA0](v4, v6);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 36)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBEDCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BE2992C();
  v6 = sub_21BE291AC();
  v8 = v7;

  strcpy(v23, "appleCashItem");
  HIWORD(v23[1]) = -4864;
  MEMORY[0x21CF03CA0](v6, v8);

  v10 = v23[0];
  v9 = v23[1];
  sub_21BE2992C();
  v11 = sub_21BE291AC();
  v13 = v12;

  strcpy(v23, "appleCashItem");
  HIWORD(v23[1]) = -4864;
  MEMORY[0x21CF03CA0](v11, v13);

  if (__PAIR128__(v9, v23[0]) == __PAIR128__(v23[1], v10))
  {
  }

  else
  {
    v14 = sub_21BE2995C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = *(a3 + 36);
  v17 = *(a2 + v16);
  v18 = sub_21BC5C62C(*(a1 + v16));
  v20 = v19;
  if (v18 == sub_21BC5C62C(v17) && v20 == v21)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_21BE2995C();
  }

  return v15 & 1;
}

uint64_t sub_21BBEDEF8@<X0>(void *a1@<X8>)
{
  sub_21BE2992C();
  v2 = sub_21BE291AC();
  v4 = v3;

  strcpy(v7, "appleCashItem");
  HIWORD(v7[1]) = -4864;
  MEMORY[0x21CF03CA0](v2, v4);

  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_21BBEDFBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBEE030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBF0B04(v5, v4);
  v6 = type metadata accessor for AppleCashItemView(0);
  v7 = *(v6 + 24);
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v8 = (a2 + v7);
  type metadata accessor for FamilyPictureStore(0);
  sub_21BBF09B0(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore, protocol conformance descriptor for AsyncStore<A>);

  *v8 = sub_21BE270CC();
  v8[1] = v9;
  sub_21BBF0B04(v4, a2);
  type metadata accessor for AppleCashFamilyFlow(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_circleController) = 0;
  *(v10 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_appleCashHandler) = 0;
  result = sub_21BBF0B68(v4, v10 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_item);
  *(a2 + *(v6 + 20)) = v10;
  return result;
}

uint64_t sub_21BBEE1C4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBEE410();
}

uint64_t sub_21BBEE274(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBEE30C, v4, v3);
}

uint64_t sub_21BBEE30C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCA564();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BBEE410()
{
  v1[5] = v0;
  v2 = sub_21BE26A4C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_21BE260AC();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for AppleCashItem(0);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v1[17] = swift_task_alloc();
  sub_21BE28D7C();
  v1[18] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[19] = v6;
  v1[20] = v5;

  return MEMORY[0x2822009F8](sub_21BBEE60C, v6, v5);
}

uint64_t sub_21BBEE60C()
{
  v1 = v0[5];
  v2 = v1 + qword_27CDB63F0;
  v3 = *(v1 + qword_27CDB63F0);
  v0[21] = v3;
  v4 = *(v2 + 8);
  v0[22] = v4;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[23] = sub_21BC84D18(v3, v4, "computeItems", 12, 2u);
  v5 = qword_27CDD4158;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_21BBEE734;

  return sub_21BE19D18(v1 + v5);
}

uint64_t sub_21BBEE734(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {

    v4 = v3[19];
    v5 = v3[20];
    v6 = sub_21BBEF804;
  }

  else
  {
    v4 = v3[19];
    v5 = v3[20];
    v6 = sub_21BBEE85C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BBEE85C()
{
  v1 = [*(v0 + 200) allowedSubscriptions];
  if (v1 && (v2 = v1, v3 = sub_21BE28C3C(), v2, *(v0 + 16) = 0x41435F454C505041, *(v0 + 24) = 0xEA00000000004853, v4 = swift_task_alloc(), *(v4 + 16) = v0 + 16, v5 = sub_21BC9BF08(sub_21BBF0CC4, v4, v3), , , (v5 & 1) != 0))
  {
    v6 = *(v0 + 40);
    v7 = qword_27CDD4160;
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = sub_21BBEEB04;

    return sub_21BDEFA34(v6 + v7);
  }

  else
  {

    sub_21BE261BC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Apple Cash subscription not allowed", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v13 = *(v0 + 72);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);

    (*(v15 + 8))(v13, v14);
    sub_21BC852D8();

    v16 = *(v0 + 8);
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_21BBEEB04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_21BBEF968;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_21BBEEC2C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BBEEC2C()
{
  v1 = sub_21BCE6070(0x41435F454C505041, 0xEA00000000004853, v0[29]);
  v0[30] = v1;

  if (v1)
  {
    v2 = [v1 subscriberDSIDs];
    if (v2)
    {
      v3 = v2;
      v4 = v0[5];
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v0[31] = sub_21BE28C3C();

      v5 = qword_27CDD4170;
      v6 = swift_task_alloc();
      v0[32] = v6;
      *v6 = v0;
      v6[1] = sub_21BBEF064;

      return sub_21BBEFB20(v4 + v5);
    }

    else
    {

      sub_21BE261BC();
      v15 = sub_21BE26A2C();
      v16 = sub_21BE28FDC();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[25];
      if (v17)
      {
        v19 = v1;
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21BB35000, v15, v16, "Apple Cash service dsids missing", v20, 2u);
        MEMORY[0x21CF05C50](v20, -1, -1);
        v1 = v18;
        v18 = v15;
        v15 = v19;
      }

      (*(v0[7] + 8))(v0[10], v0[6]);
      sub_21BC852D8();

      v21 = v0[1];
      v22 = MEMORY[0x277D84F90];

      return v21(v22);
    }
  }

  else
  {
    v8 = v0[25];
    v10 = v0[21];
    v9 = v0[22];
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v10, v9);
    (*(v12 + 104))(v11, *MEMORY[0x277D07F70], v13);
    MEMORY[0x21CF01220](0xD000000000000020, 0x800000021BE57340, v11, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002ALL, 0x800000021BE57370);

    (*(v12 + 8))(v11, v13);
    swift_willThrow();

    sub_21BC852D8();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21BBEF064(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {

    v4 = v3[19];
    v5 = v3[20];
    v6 = sub_21BBEFA40;
  }

  else
  {
    v4 = v3[19];
    v5 = v3[20];
    v6 = sub_21BBEF180;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}