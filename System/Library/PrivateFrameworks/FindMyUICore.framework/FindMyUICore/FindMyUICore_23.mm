uint64_t sub_24B24B778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A0, &qword_24B2E1700);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBF0, &qword_24B2F3298);
  v4[11] = swift_task_alloc();
  v6 = sub_24B2D2794();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_24B2D5604();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[15] = v7;
  v4[16] = v9;

  return MEMORY[0x2822009F8](sub_24B24B8E8, v7, v9);
}

uint64_t sub_24B24B8E8()
{
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89B0, &qword_24B2E1710);
  v0[18] = sub_24B2D5F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A8, &qword_24B2E1708);
  sub_24B039184(&qword_27EFCEBF8, &qword_27EFC89A8, &qword_24B2E1708, MEMORY[0x277D857B0]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B24BA10;
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x282200310](v2, v3, v4);
}

uint64_t sub_24B24BA10()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24B250934;
  }

  else
  {
    (*(v2 + 144))();
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24B24BB38;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B24BB38()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_24AFF8258(v3, &qword_27EFCEBF0, &qword_24B2F3298);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718, &qword_24B2E0C58);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v8 = sub_24B2D5F64();
    v0[20] = v9;
    v13 = (v8 + *v8);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_24B24BD5C;
    v11 = v0[14];
    v12 = v0[10];

    return v13(v12, v11);
  }
}

uint64_t sub_24B24BD5C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B24BEFC, v6, v5);
}

uint64_t sub_24B24BEFC()
{
  v1 = v0[10];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718, &qword_24B2E0C58);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_24AFF8258(v1, &qword_27EFC89A0, &qword_24B2E1700);
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89B0, &qword_24B2E1710);
    v0[18] = sub_24B2D5F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A8, &qword_24B2E1708);
    sub_24B039184(&qword_27EFCEBF8, &qword_27EFC89A8, &qword_24B2E1708, MEMORY[0x277D857B0]);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_24B24BA10;
    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[8];

    return MEMORY[0x282200310](v5, v6, v7);
  }

  else
  {
    v8 = v0[6];
    sub_24B0391CC(v1, v8, &qword_27EFC8718, &qword_24B2E0C58);
    (*(v3 + 56))(v8, 0, 1, v2);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24B24C13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D8, &qword_24B2E0C00);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBE0, &qword_24B2F3278);
  v4[11] = swift_task_alloc();
  v6 = sub_24B2D2744();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_24B2D5604();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[15] = v7;
  v4[16] = v9;

  return MEMORY[0x2822009F8](sub_24B24C2AC, v7, v9);
}

uint64_t sub_24B24C2AC()
{
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8958, &qword_24B2E1688);
  v0[18] = sub_24B2D5F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8950, &qword_24B2E1680);
  sub_24B039184(&qword_27EFCEBE8, &qword_27EFC8950, &qword_24B2E1680, MEMORY[0x277D857B0]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B24C3D4;
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x282200310](v2, v3, v4);
}

uint64_t sub_24B24C3D4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24B24C714;
  }

  else
  {
    (*(v2 + 144))();
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24B24C4FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B24C4FC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_24AFF8258(v3, &qword_27EFCEBE0, &qword_24B2F3278);
    v5 = type metadata accessor for SessionFriendStreamChange(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v8 = sub_24B2D5F64();
    v0[20] = v9;
    v13 = (v8 + *v8);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_24B24C7B0;
    v11 = v0[14];
    v12 = v0[10];

    return v13(v12, v11);
  }
}

uint64_t sub_24B24C714()
{
  (*(v0 + 144))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B24C7B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B24C950, v6, v5);
}

uint64_t sub_24B24C950()
{
  v1 = v0[10];
  v2 = type metadata accessor for SessionFriendStreamChange(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_24AFF8258(v1, &qword_27EFC86D8, &qword_24B2E0C00);
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8958, &qword_24B2E1688);
    v0[18] = sub_24B2D5F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8950, &qword_24B2E1680);
    sub_24B039184(&qword_27EFCEBE8, &qword_27EFC8950, &qword_24B2E1680, MEMORY[0x277D857B0]);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_24B24C3D4;
    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[8];

    return MEMORY[0x282200310](v5, v6, v7);
  }

  else
  {
    v8 = v0[6];
    sub_24B2508CC(v1, v8, type metadata accessor for SessionFriendStreamChange);
    (*(v3 + 56))(v8, 0, 1, v2);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24B24CBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA28, &qword_24B2F2A58);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBE0, &qword_24B2F3278);
  v4[11] = swift_task_alloc();
  v6 = sub_24B2D2744();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_24B2D5604();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[15] = v7;
  v4[16] = v9;

  return MEMORY[0x2822009F8](sub_24B24CD10, v7, v9);
}

uint64_t sub_24B24CD10()
{
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA68, &qword_24B2F2BA0);
  v0[18] = sub_24B2D5F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8950, &qword_24B2E1680);
  sub_24B039184(&qword_27EFCEBE8, &qword_27EFC8950, &qword_24B2E1680, MEMORY[0x277D857B0]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B24CE38;
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x282200310](v2, v3, v4);
}

uint64_t sub_24B24CE38()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24B250934;
  }

  else
  {
    (*(v2 + 144))();
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24B24CF60;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B24CF60()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_24AFF8258(v3, &qword_27EFCEBE0, &qword_24B2F3278);
    v5 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v8 = sub_24B2D5F64();
    v0[20] = v9;
    v13 = (v8 + *v8);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_24B24D178;
    v11 = v0[14];
    v12 = v0[10];

    return v13(v12, v11);
  }
}

uint64_t sub_24B24D178()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B24D318, v6, v5);
}

uint64_t sub_24B24D318()
{
  v1 = v0[10];
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_24AFF8258(v1, &qword_27EFCEA28, &qword_24B2F2A58);
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA68, &qword_24B2F2BA0);
    v0[18] = sub_24B2D5F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8950, &qword_24B2E1680);
    sub_24B039184(&qword_27EFCEBE8, &qword_27EFC8950, &qword_24B2E1680, MEMORY[0x277D857B0]);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_24B24CE38;
    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[8];

    return MEMORY[0x282200310](v5, v6, v7);
  }

  else
  {
    v8 = v0[6];
    sub_24B2508CC(v1, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
    (*(v3 + 56))(v8, 0, 1, v2);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24B24D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBD0, &qword_24B2F3260);
  v4[15] = swift_task_alloc();
  v6 = sub_24B2D27A4();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_24B2D5604();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[19] = v7;
  v4[20] = v9;

  return MEMORY[0x2822009F8](sub_24B24D6A0, v7, v9);
}

uint64_t sub_24B24D6A0()
{
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBC0, &qword_24B2F3248);
  v0[22] = sub_24B2D5F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8900, &qword_24B2E1600);
  sub_24B039184(&qword_27EFCEBD8, &qword_27EFC8900, &qword_24B2E1600, MEMORY[0x277D857B0]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_24B24D7C8;
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x282200310](v2, v3, v4);
}

uint64_t sub_24B24D7C8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_24B24DAD4;
  }

  else
  {
    (*(v2 + 176))();
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_24B24D8F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B24D8F0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    sub_24AFF8258(v3, &qword_27EFCEBD0, &qword_24B2F3260);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 34) = -1;
    *(v4 + 32) = 0;

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v7 = sub_24B2D5F64();
    v0[24] = v8;
    v11 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_24B24DB60;
    v10 = v0[18];

    return (v11)(v0 + 2, v10);
  }
}

uint64_t sub_24B24DAD4()
{
  (*(v0 + 176))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B24DB60()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B24DD00, v6, v5);
}

uint64_t sub_24B24DD00()
{
  v1 = *(v0 + 48) | (*(v0 + 50) << 16);
  if (*(v0 + 50) == 255)
  {
    sub_24B24AAD8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBC0, &qword_24B2F3248);
    *(v0 + 176) = sub_24B2D5F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8900, &qword_24B2E1600);
    sub_24B039184(&qword_27EFCEBD8, &qword_27EFC8900, &qword_24B2E1600, MEMORY[0x277D857B0]);
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    v2[1] = sub_24B24D7C8;
    v3 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);

    return MEMORY[0x282200310](v3, v4, v5);
  }

  else
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 32);
    *v6 = *(v0 + 16);
    *(v6 + 16) = v7;
    *(v6 + 32) = v1;
    *(v6 + 34) = BYTE2(v1) & 1;

    v8 = *(v0 + 8);

    return v8();
  }
}

double static SettingsProvider.Dependencies.live()@<D0>(void *a1@<X8>)
{
  v2 = sub_24B2D2674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D2694();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  (*(v3 + 104))(v5, *MEMORY[0x277D09060], v2, v7);
  sub_24B2D26A4();
  sub_24B2D2AE4();
  swift_allocObject();
  v8 = sub_24B2D2B04();
  *a1 = &unk_24B2F31E8;
  a1[1] = v8;
  a1[2] = &unk_24B2F31F8;
  a1[3] = v8;

  return result;
}

uint64_t sub_24B24E01C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFD370;

  return sub_24B24E154(a1);
}

uint64_t sub_24B24E0B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFD370;

  return sub_24B24E01C(a1);
}

uint64_t sub_24B24E154(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24B2D26F4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_24B2D2834();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B24E2F0, 0, 0);
}

uint64_t sub_24B24E2F0()
{
  sub_24B2D3174();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24B24E3C4;

  return MEMORY[0x28215FA50](0);
}

uint64_t sub_24B24E3C4(char a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_24B24E9E8;
  }

  else
  {
    v4 = sub_24B24E4DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B24E4DC()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SettingsProvider: ShareMyLocation enabled?: %{BOOL}d", v4, 8u);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_24B24E604;
  v6 = *(v0 + 104);

  return MEMORY[0x28215FB40](v6, 1);
}

uint64_t sub_24B24E604()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24B24EAA8;
  }

  else
  {
    v2 = sub_24B24E718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B24E718(uint64_t a1)
{
  v43 = v1;
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = sub_24B2D2804();
  v8 = v7;
  v36 = sub_24B2D2814();
  v10 = v9;
  v41 = sub_24B2D27F4();
  v40 = sub_24B2D2824();
  (*(v5 + 16))(v3, v2, v4);
  v11 = sub_24B2D3164();
  v35 = sub_24B2D5934();
  v12 = os_log_type_enabled(v11, v35);
  v13 = *(v1 + 120);
  v38 = *(v1 + 112);
  v39 = *(v1 + 128);
  v37 = *(v1 + 104);
  v14 = *(v1 + 96);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  if (v12)
  {
    v34 = v6;
    v17 = swift_slowAlloc();
    v33 = v8;
    v31 = swift_slowAlloc();
    v42 = v31;
    *v17 = 136315138;
    sub_24B250874();
    v18 = sub_24B2D5FA4();
    v32 = v10;
    v20 = v19;
    v21 = v11;
    v22 = *(v16 + 8);
    v22(v14, v15);
    v23 = sub_24AFF321C(v18, v20, &v42);
    v10 = v32;

    *(v17 + 4) = v23;
    v24 = v21;
    _os_log_impl(&dword_24AFD2000, v21, v35, "SettingsProvider: meDevice: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v8 = v33;
    MEMORY[0x24C23D530](v31, -1, -1);
    v25 = v17;
    v6 = v34;
    MEMORY[0x24C23D530](v25, -1, -1);
  }

  else
  {

    v22 = *(v16 + 8);
    v22(v14, v15);
  }

  v22(v37, v15);
  (*(v13 + 8))(v39, v38);
  v26 = *(v1 + 184);
  v27 = *(v1 + 24);
  if (v40)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_24B24A784(0, 0);
  *v27 = v6;
  *(v27 + 8) = v8;
  *(v27 + 16) = v36;
  *(v27 + 24) = v10;
  *(v27 + 32) = v28 & 0xFFFE | v41 & 1;
  *(v27 + 34) = v26;

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_24B24E9E8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24B24EAA8()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D090B0])
    {

      v3 = swift_task_alloc();
      *(v0 + 168) = v3;
      *v3 = v0;
      v3[1] = sub_24B24ECA8;
      v4 = *(v0 + 88);

      return MEMORY[0x28215FB40](v4, 0);
    }

    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B24ECA8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24B24F094;
  }

  else
  {
    v2 = sub_24B24EDBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B24EDBC(uint64_t a1)
{
  v43 = v1;
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = sub_24B2D2804();
  v8 = v7;
  v36 = sub_24B2D2814();
  v10 = v9;
  v41 = sub_24B2D27F4();
  v40 = sub_24B2D2824();
  (*(v5 + 16))(v3, v2, v4);
  v11 = sub_24B2D3164();
  v35 = sub_24B2D5934();
  v12 = os_log_type_enabled(v11, v35);
  v13 = *(v1 + 120);
  v38 = *(v1 + 112);
  v39 = *(v1 + 128);
  v14 = *(v1 + 80);
  v37 = *(v1 + 88);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  if (v12)
  {
    v34 = v6;
    v17 = swift_slowAlloc();
    v33 = v8;
    v31 = swift_slowAlloc();
    v42 = v31;
    *v17 = 136315138;
    sub_24B250874();
    v18 = sub_24B2D5FA4();
    v32 = v10;
    v20 = v19;
    v21 = v11;
    v22 = *(v16 + 8);
    v22(v14, v15);
    v23 = sub_24AFF321C(v18, v20, &v42);
    v10 = v32;

    *(v17 + 4) = v23;
    v24 = v21;
    _os_log_impl(&dword_24AFD2000, v21, v35, "SettingsProvider: meDevice: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v8 = v33;
    MEMORY[0x24C23D530](v31, -1, -1);
    v25 = v17;
    v6 = v34;
    MEMORY[0x24C23D530](v25, -1, -1);
  }

  else
  {

    v22 = *(v16 + 8);
    v22(v14, v15);
  }

  v22(v37, v15);
  (*(v13 + 8))(v39, v38);
  v26 = *(v1 + 184);
  v27 = *(v1 + 24);
  if (v40)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_24B24A784(0, 0);
  *v27 = v6;
  *(v27 + 8) = v8;
  *(v27 + 16) = v36;
  *(v27 + 24) = v10;
  *(v27 + 32) = v28 & 0xFFFE | v41 & 1;
  *(v27 + 34) = v26;

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_24B24F094()
{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B24F15C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFDE44;

  return sub_24B24F294(a1);
}

uint64_t sub_24B24F1F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFDE44;

  return sub_24B24F15C(a1);
}

uint64_t sub_24B24F294(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB98, &qword_24B2F3208);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA0, &qword_24B2F3210) - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88C8, &qword_24B2E15B0);
  v4 = swift_task_alloc();
  v1[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA8, &qword_24B2F3218);
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v1[15] = *(v6 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[18] = v7;
  *v7 = v1;
  v7[1] = sub_24B24F50C;

  return MEMORY[0x28215FB78](v4);
}

uint64_t sub_24B24F50C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24B23E814;
  }

  else
  {
    v2 = sub_24B24F620;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B24F620()
{
  v1 = v0[17];
  v2 = v0[14];
  v20 = v0[15];
  v16 = v0[13];
  v17 = v0[16];
  v3 = v0[10];
  v4 = v0[6];
  v18 = v0[9];
  v19 = v0[7];
  v5 = v0[5];
  v13 = v0[4];
  v15 = v0[3];
  sub_24B039184(&qword_27EFC88F0, &qword_27EFC88C8, &qword_24B2E15B0, MEMORY[0x277D857C0]);
  v14 = v1;
  sub_24B2D5F94();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBB0, &qword_24B2F3228);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  *(swift_task_alloc() + 16) = v3;
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v13);
  sub_24B2D5744();

  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v15, 1, 1, v7);
  (*(v2 + 16))(v17, v1, v16);
  sub_24B008890(v3, v18, &qword_27EFCEBA0, &qword_24B2F3210);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v20 + *(v19 + 80) + v8) & ~*(v19 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v2 + 32))(v10 + v8, v17, v16);
  sub_24B0391CC(v18, v10 + v9, &qword_27EFCEBA0, &qword_24B2F3210);
  sub_24B00A9A4(0, 0, v15, &unk_24B2F3238, v10);

  (*(v2 + 8))(v14, v16);
  sub_24AFF8258(v3, &qword_27EFCEBA0, &qword_24B2F3210);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24B24F9A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B2D2834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88B8, &qword_24B2E1568);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_24B2D27A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v2, v14, v16);
  result = (*(v15 + 88))(v18, v14);
  if (result == *MEMORY[0x277D091A0])
  {
    (*(v15 + 96))(v18, v14);
    sub_24B0391CC(v18, v13, &qword_27EFC88B8, &qword_24B2E1568);
    sub_24B008890(v13, v10, &qword_27EFC88B8, &qword_24B2E1568);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFC88B8, &qword_24B2E1568);
      result = sub_24AFF8258(v10, &qword_27EFC88B8, &qword_24B2E1568);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v20 = -1;
LABEL_6:
      *(a1 + 34) = v20;
      *(a1 + 32) = 0;
      return result;
    }

    (*(v5 + 32))(v7, v10, v4);
    v21 = sub_24B2D2804();
    v23 = v22;
    v24 = sub_24B2D2814();
    v26 = v25;
    v27 = sub_24B2D2824();
    (*(v5 + 8))(v7, v4);
    result = sub_24AFF8258(v13, &qword_27EFC88B8, &qword_24B2E1568);
    if (v27)
    {
      v28 = 257;
    }

    else
    {
      v28 = 1;
    }

    *a1 = v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 24) = v26;
    *(a1 + 34) = 0;
    *(a1 + 32) = v28;
  }

  else
  {
    if (result == *MEMORY[0x277D09178])
    {
      result = (*(v15 + 96))(v18, v14);
      *a1 = *v18;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v20 = 1;
      goto LABEL_6;
    }

    v29 = *MEMORY[0x277D09198];
    v30 = *MEMORY[0x277D09180];
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 34) = -1;
    *(a1 + 32) = 0;
    if (result != v29 && result != v30)
    {
      return (*(v15 + 8))(v18, v14);
    }
  }

  return result;
}

uint64_t sub_24B24FD7C(uint64_t a1)
{
  v11 = v1;
  sub_24B24F9A4(v8);
  v3 = v9;
  v4 = v10;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 34) = v4;
  *(a1 + 32) = v3;
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_24B24FE04(uint64_t a1, uint64_t a2)
{
  sub_24AFF8258(a2, &qword_27EFCEBA0, &qword_24B2F3210);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBB0, &qword_24B2F3228);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_24B24FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBB8, &qword_24B2F3240);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA0, &qword_24B2F3210);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88C8, &qword_24B2E15B0);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8900, &qword_24B2E1600);
  v5[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBC0, &qword_24B2F3248);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2500A4, 0, 0);
}

uint64_t sub_24B2500A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA8, &qword_24B2F3218);
  MEMORY[0x24C23C720]();
  sub_24B039184(&qword_27EFC88F0, &qword_27EFC88C8, &qword_24B2E15B0, MEMORY[0x277D857C0]);
  sub_24B2D57B4();
  sub_24B2D5F64();
  sub_24B2D5F74();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_24B25022C;

  return (sub_24B24D568)(v0 + 16, 0, 0, v0 + 96);
}

uint64_t sub_24B25022C()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_24B25033C, 0, 0);
  }

  return result;
}

uint64_t sub_24B25033C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 50) == 255)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 112);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    sub_24B008890(v3, v2, &qword_27EFCEBA0, &qword_24B2F3210);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBB0, &qword_24B2F3228);
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v2, 1, v4);
    v7 = *(v0 + 136);
    if (v6 == 1)
    {
      sub_24AFF8258(*(v0 + 136), &qword_27EFCEBA0, &qword_24B2F3210);
    }

    else
    {
      sub_24B2D5714();
      (*(v5 + 8))(v7, v4);
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48) | (*(v0 + 50) << 16);
    v12 = *(v0 + 128);
    sub_24B008890(*(v0 + 112), v12, &qword_27EFCEBA0, &qword_24B2F3210);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBB0, &qword_24B2F3228);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    v16 = *(v0 + 128);
    if (v15 == 1)
    {
      sub_24B24AAD8(v1, v9, v8, v10, v11);
      sub_24AFF8258(v16, &qword_27EFCEBA0, &qword_24B2F3210);
      v17 = 1;
    }

    else
    {
      *(v0 + 56) = v1;
      *(v0 + 64) = v9;
      *(v0 + 72) = v8;
      *(v0 + 80) = v10;
      *(v0 + 88) = v11;
      *(v0 + 90) = BYTE2(v11) & 1;
      sub_24B2D5704();
      (*(v14 + 8))(v16, v13);
      v17 = 0;
    }

    v20 = *(v0 + 120);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBC8, &qword_24B2F3258);
    (*(*(v21 - 8) + 56))(v20, v17, 1, v21);
    sub_24AFF8258(v20, &qword_27EFCEBB8, &qword_24B2F3240);
    v22 = swift_task_alloc();
    *(v0 + 192) = v22;
    *v22 = v0;
    v22[1] = sub_24B25022C;

    return sub_24B24D568(v0 + 16, 0, 0);
  }
}

uint64_t sub_24B25070C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA8, &qword_24B2F3218) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA0, &qword_24B2F3210) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B24FEE8(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_24B250874()
{
  result = qword_27EFC88C0;
  if (!qword_27EFC88C0)
  {
    sub_24B2D2834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC88C0);
  }

  return result;
}

uint64_t sub_24B2508CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SettingsProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

uint64_t SettingsProvider.SettingsChange.MeDevice.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsProvider.SettingsChange.MeDevice.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_24B250A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCEC00;
  if (!qword_27EFCEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC00);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B250A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B250AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B250B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 34);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B250BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 34) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B250C30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_24B250C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B250CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCEC08;
  if (!qword_27EFCEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC08);
  }

  return result;
}

id sub_24B250D34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D08FC0]) init];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2 = result;
    v3 = [result aa_primaryAppleAccount];

    [v0 setAccount_];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B250DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B250EC8(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B250E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B250EC8(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B250EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B250EC8(a1, a2, a3);
  sub_24B2D41E4();
  __break(1u);
}

unint64_t sub_24B250EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCEC10;
  if (!qword_27EFCEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC10);
  }

  return result;
}

void *FindMyAccountOverview.init()@<X0>(void *a1@<X8>)
{
  static FindMyAccountOverviewViewModel.Dependencies.live()(v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  v4[2] = v5[2];
  type metadata accessor for FindMyAccountOverviewViewModel(0);
  swift_allocObject();
  *&v4[0] = FindMyAccountOverviewViewModel.init(dependencies:)(v4);
  result = sub_24B2D4CC4();
  v3 = *(&v5[0] + 1);
  *a1 = *&v5[0];
  a1[1] = v3;
  return result;
}

uint64_t FindMyAccountOverview.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_24B2D3854();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC18, &qword_24B2F3560);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47[-v8];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC20, &qword_24B2F3568);
  MEMORY[0x28223BE20](v55);
  v11 = &v47[-v10];
  v13 = v1[1];
  v56 = *v1;
  v12 = v56;
  v57 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC28, &qword_24B2F3570);
  sub_24B039184(&qword_27EFCEC30, &qword_27EFCEC28, &qword_24B2F3570, MEMORY[0x277CE14C0]);
  sub_24B2D44A4();
  sub_24B2D5104();
  sub_24B039184(&qword_27EFCEC38, &qword_27EFCEC18, &qword_24B2F3560, MEMORY[0x277CDE580]);
  sub_24B259040(&qword_27EFCEC40, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v14 = v52;
  sub_24B2D49F4();
  (*(v53 + 1))(v5, v14);
  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC48, &qword_24B2F3578) + 36)];
  *v16 = sub_24B2589BC;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v13;
  v18 = *(v55 + 36);
  v53 = v11;
  v19 = &v11[v18];
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_24B258A30;
  v19[3] = v17;
  v58 = v12;
  v59 = v13;
  swift_retain_n();
  swift_retain_n();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC50, &qword_24B2F3580);
  sub_24B2D4CD4();
  v20 = v64;
  swift_getKeyPath();
  v58 = v20;
  sub_24B259040(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v21 = v20[10];
  v22 = v20[11];
  sub_24B258A64(v21, v22, v20[12], v20[13], v20[14]);

  if (v22)
  {

    v23 = v21;
    v24 = v22;
  }

  else
  {
    v24 = 0xE100000000000000;
    v23 = 45;
  }

  v25 = sub_24B258AB4(v21, v22);
  v58 = v23;
  v59 = v24;
  sub_24AFFE0A4(v25, v26, v27);
  v28 = sub_24B2D4604();
  v50 = v29;
  v51 = v28;
  v48 = v30;
  v49 = v31;
  sub_24B2D5694();

  v32 = sub_24B2D5684();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v12;
  v33[5] = v13;

  v35 = sub_24B2D5684();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = v34;
  v36[4] = v12;
  v36[5] = v13;
  sub_24B2D4E74();
  v58 = v12;
  v59 = v13;
  sub_24B2D4CD4();
  v37 = v63;
  swift_getKeyPath();
  v58 = v37;
  sub_24B2D2584();

  v38 = v37[10];
  v39 = v37[11];
  v40 = v37[12];
  v41 = v37[13];
  v42 = v37[14];
  sub_24B258A64(v38, v39, v40, v41, v42);

  v58 = v38;
  v59 = v39;
  v60 = v40;
  v61 = v41;
  v62 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC60, &qword_24B2F35B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC68, &unk_24B2F64F0);
  sub_24B258B64();
  sub_24B258D3C();
  LOBYTE(v40) = v48;
  v43 = v53;
  v45 = v50;
  v44 = v51;
  sub_24B2D48E4();

  sub_24B083C34(v44, v45, v40 & 1);

  sub_24B258AB4(v58, v59);
  return sub_24AFF8258(v43, &qword_27EFCEC20, &qword_24B2F3568);
}

double sub_24B2516B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v72 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE70, &qword_24B2F3AE8);
  MEMORY[0x28223BE20](v66);
  v68 = (v60 - v5);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE78, &qword_24B2F3AF0);
  MEMORY[0x28223BE20](v67);
  v60[0] = v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE80, &qword_24B2F3AF8);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = v60 - v12;
  sub_24B2D5694();
  v69 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v82 = a1;
  v83 = a2;
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC50, &qword_24B2F3580);
  sub_24B2D4CD4();
  v13 = v78;
  swift_getKeyPath();
  v82 = v13;
  v73 = sub_24B259040(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v77 = *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v14 = *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 1);
  v76 = *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 6);
  v15 = *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 2);
  v16 = *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8);
  v17 = *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  sub_24B2595A8(*(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState), v16, v17, *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 24), *(v13 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 32));

  v65 = v14;
  v64 = v17;
  sub_24B2595CC(v77 | (v14 << 8) | (v15 << 16) | (v76 << 48), v16, v17);
  v82 = a1;
  v83 = a2;
  sub_24B2D4CD4();
  v77 = sub_24B25CE04();
  v76 = v18;

  v82 = a1;
  v83 = a2;
  sub_24B2D4CD4();
  v19 = v78;
  swift_getKeyPath();
  v82 = v19;
  sub_24B2D2584();

  v21 = *(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v20 = *(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8);
  v23 = *(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  v22 = *(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 24);
  v24 = *(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 32);
  if (!v23)
  {

    sub_24B2595CC(v21, v20, 0);
    goto LABEL_9;
  }

  if (v23 == 1 || (*(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 40) & 1) == 0 || (*(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 40) & 0x100) == 0)
  {

LABEL_9:
    v75 = 0;
    v74 = 0;
    goto LABEL_10;
  }

  v62 = *(v19 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v75 = "SETTINGS_ON_LABEL";
  sub_24B247D54(v20, v23, v22, v24);
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v54 = sub_24B2D1454();
  v55 = __swift_project_value_buffer(v54, qword_27EFE4610);
  v56 = v54;
  v74 = v54;
  v57 = *(v54 - 8);
  (*(v57 + 16))(v63, v55, v56);
  (*(v57 + 56))(v63, 0, 1, v74);
  v58 = v63;
  v75 = sub_24B2D52D4();
  v74 = v59;
  sub_24AFF8258(v58, &qword_27EFC8A68, &qword_24B2E36B0);

  sub_24B2595CC(v62, v20, v23);
LABEL_10:
  v82 = a1;
  v83 = a2;
  sub_24B2D4CD4();
  v25 = v78;
  v82 = a1;
  v83 = a2;
  sub_24B2D4CD4();
  v26 = v78;
  swift_getKeyPath();
  v82 = v26;
  sub_24B2D2584();

  v27 = *(v26 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  v63 = v25;
  if (v27 > 1)
  {
    v28 = *(v26 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 40);
  }

  else
  {

    LOBYTE(v28) = 0;
  }

  *&v78 = a1;
  *(&v78 + 1) = a2;
  sub_24B2D4CF4();
  v29 = v82;
  v30 = v83;
  v31 = v84;
  swift_getKeyPath();
  v82 = v29;
  v83 = v30;
  v84 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE88, &qword_24B2F3B60);
  sub_24B2D4E54();

  v62 = *(&v78 + 1);
  v73 = v78;
  v61 = v79;

  v82 = a1;
  v83 = a2;
  sub_24B2D4CD4();
  LOBYTE(v29) = sub_24B25D1E4();

  if (v29)
  {
    v32 = sub_24B2D3CD4();
    v33 = v60[0];
    *v60[0] = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEEB0, &unk_24B2F3B78);
    sub_24B25248C(v33 + *(v34 + 44));
    sub_24B008890(v33, v68, &qword_27EFCEE78, &qword_24B2F3AF0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE90, &qword_24B2F3B68);
    sub_24B039184(&qword_27EFCEE98, &qword_27EFCEE78, &qword_24B2F3AF0, MEMORY[0x277CE1138]);
    sub_24B039184(&qword_27EFCEEA0, &qword_27EFCEE90, &qword_24B2F3B68, MEMORY[0x277CE14C0]);
    v35 = v70;
    sub_24B2D3ED4();
    sub_24AFF8258(v33, &qword_27EFCEE78, &qword_24B2F3AF0);
  }

  else
  {
    v82 = a1;
    v83 = a2;
    sub_24B2D4CD4();
    v36 = sub_24B25D34C();

    v37 = *(v36 + 16);

    if (v37)
    {
      v82 = a1;
      v83 = a2;
      sub_24B2D4CD4();
      v38 = sub_24B25D34C();
    }

    else
    {
      v38 = 0;
    }

    v82 = a1;
    v83 = a2;
    sub_24B2D4CD4();
    v39 = sub_24B25D7FC();

    v40 = *(v39 + 16);

    if (v40)
    {
      v82 = a1;
      v83 = a2;
      sub_24B2D4CD4();
      v40 = sub_24B25D7FC();
    }

    v41 = v68;
    *v68 = v38;
    v41[1] = v40;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE90, &qword_24B2F3B68);
    sub_24B039184(&qword_27EFCEE98, &qword_27EFCEE78, &qword_24B2F3AF0, MEMORY[0x277CE1138]);
    sub_24B039184(&qword_27EFCEEA0, &qword_27EFCEE90, &qword_24B2F3B68, MEMORY[0x277CE14C0]);
    v35 = v70;
    sub_24B2D3ED4();
  }

  LODWORD(v70) = v28 & 1;
  v42 = (v64 != 1) & v65;
  v43 = v71;
  sub_24B008890(v35, v71, &qword_27EFCEE80, &qword_24B2F3AF8);
  v44 = v72;
  *v72 = v42;
  *&v78 = v77;
  *(&v78 + 1) = v76;
  *&v79 = v75;
  *(&v79 + 1) = v74;
  v45 = v63;
  *&v80 = &unk_24B2F3B30;
  *(&v80 + 1) = v63;
  v81[0] = v28 & 1;
  *&v81[1] = *v93;
  *&v81[4] = *&v93[3];
  v46 = v73;
  v47 = v62;
  *&v81[8] = v73;
  *&v81[16] = v62;
  v48 = v61;
  v81[24] = v61;
  v49 = v79;
  *(v44 + 8) = v78;
  v50 = v80;
  v51 = *v81;
  *(v44 + 65) = *&v81[9];
  *(v44 + 56) = v51;
  *(v44 + 40) = v50;
  *(v44 + 24) = v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEEA8, &qword_24B2F3B70);
  sub_24B008890(v43, &v44[*(v52 + 64)], &qword_27EFCEE80, &qword_24B2F3AF8);
  sub_24B259680(&v78, &v82);
  sub_24AFF8258(v35, &qword_27EFCEE80, &qword_24B2F3AF8);
  sub_24AFF8258(v43, &qword_27EFCEE80, &qword_24B2F3AF8);
  v82 = v77;
  v83 = v76;
  v84 = v75;
  v85 = v74;
  v86 = &unk_24B2F3B30;
  v87 = v45;
  v88 = v70;
  *v89 = *v93;
  *&v89[3] = *&v93[3];
  v90 = v46;
  v91 = v47;
  v92 = v48;
  sub_24B2596B8(&v82);

  return result;
}

uint64_t sub_24B25229C()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B02CD04;

  return FindMyAccountOverviewViewModel.switchMeDeviceToThisDevice()();
}

double sub_24B25234C(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  LODWORD(a1) = *a1;
  v7 = *a2;
  sub_24B25E628(a1);
  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_24B2D5694();

  v9 = sub_24B2D5684();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v7;
  *(v10 + 40) = a1;
  sub_24B00A9A4(0, 0, v6, &unk_24B2F3B98, v10);

  return result;
}

double sub_24B25248C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8, &qword_24B2E2B20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D33E4();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEEB8, &unk_24B2F3B88);
  v9((a1 + *(v10 + 48)), v5, v2);
  v11 = a1 + *(v10 + 64);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = *(v3 + 8);
  v12(v8, v2);
  v12(v5, v2);

  return result;
}

double sub_24B252678(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC50, &qword_24B2F3580);
  v5 = sub_24B2D4CD4();
  a4(v5);

  return result;
}

void sub_24B252760(BOOL *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC50, &qword_24B2F3580);
  sub_24B2D4CD4();
  swift_getKeyPath();
  sub_24B259040(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v4 = v5[10];
  v3 = v5[11];
  sub_24B258A64(v4, v3, v5[12], v5[13], v5[14]);

  if (v3)
  {
    sub_24B258AB4(v4, v3);
  }

  *a2 = v3 != 0;
}

double sub_24B2528F4()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC50, &qword_24B2F3580);
  sub_24B2D4CD4();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24B259040(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2574();

  return result;
}

double sub_24B252A9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = v1;
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE60, &qword_24B2F3AE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318, &qword_24B2E2990);
  v5 = sub_24B039184(&qword_27EFCEE68, &qword_27EFCEE60, &qword_24B2F3AE0, MEMORY[0x277D83980]);
  v6 = sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318, &qword_24B2E2990, MEMORY[0x277CDF028]);
  sub_24B2D4ED4(&v8, KeyPath, sub_24B252C38, 0, v3, v4, v5, MEMORY[0x277D837E0], v6);

  return result;
}

double sub_24B252C38(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-v6 - 8];
  v8 = a1[1];
  v21 = *a1;
  v22 = v8;
  v23 = *(a1 + 4);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v21;
  v9 = v22;
  if (v22 == 2)
  {
    v10 = sub_24B2D32E4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  else
  {

    if (v9)
    {
      sub_24B2D32B4();
    }

    else
    {
      sub_24B2D32D4();
    }

    v11 = sub_24B2D32E4();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    sub_24B0391CC(v4, v7, &qword_27EFC9310, &qword_24B2E2190);
  }

  v12 = swift_allocObject();
  v13 = v22;
  *(v12 + 16) = v21;
  *(v12 + 32) = v13;
  *(v12 + 48) = v23;
  v14 = sub_24B008890(&v21, v19, &qword_27EFC8080, &qword_24B2DFCE0);
  sub_24AFFE0A4(v14, v15, v16);
  sub_24B2D4D64();

  return result;
}

double sub_24B252EA8(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 24))(isCurrentExecutor);

  return result;
}

void sub_24B252F4C(uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4(isCurrentExecutor, v4, v5);

  v6 = sub_24B2D4604();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
}

double sub_24B253034(char a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3804();
  sub_24B2D42F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE38, &qword_24B2F3AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE40, &qword_24B2F3AB0);
  sub_24B039184(&qword_27EFCEE48, &qword_27EFCEE38, &qword_24B2F3AA8, MEMORY[0x277CE1138]);
  sub_24B2590CC(&qword_27EFCEE50, &qword_27EFCEE40, &qword_24B2F3AB0, sub_24B250CE0);
  sub_24B2D3644();

  return result;
}

double sub_24B253240@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_24B2D3CD4();
  v17 = 1;
  sub_24B2533E8(a1 & 1, &v11);
  v20 = v13;
  v21 = v14;
  v22[0] = v15[0];
  *(v22 + 9) = *(v15 + 9);
  v18 = v11;
  v19 = v12;
  *(v24 + 9) = *(v15 + 9);
  v23[2] = v13;
  v23[3] = v14;
  v24[0] = v15[0];
  v23[0] = v11;
  v23[1] = v12;
  sub_24B008890(&v18, &v10, &qword_27EFCEE58, &qword_24B2F3AB8);
  sub_24AFF8258(v23, &qword_27EFCEE58, &qword_24B2F3AB8);

  *&v16[23] = v19;
  *&v16[7] = v18;
  *&v16[80] = *(v22 + 9);
  *&v16[71] = v22[0];
  *&v16[55] = v21;
  *&v16[39] = v20;
  v5 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v5;
  v6 = *&v16[80];
  *(a2 + 81) = *&v16[64];
  *(a2 + 97) = v6;
  result = *v16;
  v8 = *&v16[16];
  *(a2 + 17) = *v16;
  v9 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 33) = v8;
  return result;
}

uint64_t sub_24B2533E8@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54 - v3;
  sub_24B2D5694();
  v67 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v60 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v55 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v59 = v6 + 16;
  v61 = v7;
  v7(v4, v60, v5);
  v8 = *(v6 + 56);
  v57 = v6 + 56;
  v58 = v8;
  v8(v4, 0, 1, v5);
  v9 = sub_24B2D52D4();
  v11 = v10;
  v12 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v71 = v9;
  v72 = v11;
  v56 = sub_24AFFE0A4(v12, v13, v14);
  v15 = sub_24B2D4604();
  v17 = v16;
  v19 = v18;
  sub_24B2D43A4();
  v20 = sub_24B2D45C4();
  v22 = v21;
  v24 = v23;

  sub_24B083C34(v15, v17, v19 & 1);

  LODWORD(v71) = sub_24B2D3FB4();
  v25 = sub_24B2D4594();
  v63 = v26;
  v64 = v25;
  v28 = v27;
  v62 = v29;
  sub_24B083C34(v20, v22, v24 & 1);

  v30 = v55;
  v61(v4, v60, v55);
  v58(v4, 0, 1, v30);
  v31 = sub_24B2D52D4();
  v33 = v32;
  sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v71 = v31;
  v72 = v33;
  v34 = sub_24B2D4604();
  v36 = v35;
  LOBYTE(v11) = v37;
  sub_24B2D43A4();
  v38 = sub_24B2D45C4();
  v40 = v39;
  LOBYTE(v15) = v41;

  sub_24B083C34(v34, v36, v11 & 1);

  LODWORD(v71) = sub_24B2D3FD4();
  v42 = sub_24B2D4594();
  v44 = v43;
  LOBYTE(v34) = v45;
  v47 = v46;
  sub_24B083C34(v38, v40, v15 & 1);

  KeyPath = swift_getKeyPath();
  v49 = v62 & 1;
  LOBYTE(v71) = v62 & 1;
  v70 = v62 & 1;
  v69 = 1;
  LOBYTE(v34) = v34 & 1;
  v68 = v34;
  v50 = v66;
  v51 = v63;
  v52 = v64;
  *v66 = v64;
  v50[1] = v28;
  *(v50 + 16) = v49;
  v50[3] = v51;
  v50[4] = 0;
  *(v50 + 40) = 1;
  v50[6] = v42;
  v50[7] = v44;
  *(v50 + 64) = v34;
  v50[9] = v47;
  v50[10] = KeyPath;
  *(v50 + 88) = 2;
  sub_24B083C44(v52, v28, v49);

  sub_24B083C44(v42, v44, v34);

  sub_24B083C34(v42, v44, v34);

  sub_24B083C34(v52, v28, v71);
}

void sub_24B253904(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v20[0] = v8;
  v20[1] = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v19;
}

uint64_t sub_24B253B18()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B253904(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE28, &qword_24B2F3AA0);
  sub_24B039184(&qword_27EFCEE30, &qword_27EFCEE28, &qword_24B2F3AA0, MEMORY[0x277CDD938]);
  return sub_24B2D4F14();
}

double sub_24B253C4C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v66 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDC0, &qword_24B2F39A8);
  MEMORY[0x28223BE20](v79);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v66 - v7;
  v8 = sub_24B2D3694();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24B2D4A54();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDC8, &qword_24B2F39B0);
  MEMORY[0x28223BE20](v72);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDD0, &qword_24B2F39B8);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v70 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDD8, &qword_24B2F39C0);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  sub_24B2D5694();
  v81 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v86 = sub_24B2D3CD4();
  LOBYTE(v87) = 0;
  v20 = v85;
  sub_24B254754(v85, &v91);
  v102 = v92[7];
  v103 = v92[8];
  v104[0] = v92[9];
  *(v104 + 9) = *(&v92[9] + 9);
  v98 = v92[3];
  v99 = v92[4];
  v100 = v92[5];
  v101 = v92[6];
  v94 = v91;
  v95 = v92[0];
  v96 = v92[1];
  v97 = v92[2];
  v105[8] = v92[7];
  v105[9] = v92[8];
  v106[0] = v92[9];
  *(v106 + 9) = *(&v92[9] + 9);
  v105[4] = v92[3];
  v105[5] = v92[4];
  v105[6] = v92[5];
  v105[7] = v92[6];
  v105[0] = v91;
  v105[1] = v92[0];
  v105[2] = v92[1];
  v105[3] = v92[2];
  v21 = v20;
  sub_24B008890(&v94, &v89, &qword_27EFCEDE0, &qword_24B2F39C8);
  sub_24AFF8258(v105, &qword_27EFCEDE0, &qword_24B2F39C8);
  *(&v93[8] + 7) = v102;
  *(&v93[9] + 7) = v103;
  *(&v93[10] + 7) = v104[0];
  v93[11] = *(v104 + 9);
  *(&v93[4] + 7) = v98;
  *(&v93[5] + 7) = v99;
  *(&v93[6] + 7) = v100;
  *(&v93[7] + 7) = v101;
  *(v93 + 7) = v94;
  *(&v93[1] + 7) = v95;
  *(&v93[2] + 7) = v96;
  *(&v93[3] + 7) = v97;
  v84 = v87;
  if (v20[48])
  {
    v22 = 1;
    v24 = v76;
    v23 = v77;
  }

  else
  {
    v25 = sub_24B2D32E4();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v26 = *(v20 + 5);
    v67 = *(v21 + 4);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDE8, &qword_24B2F39D0);
    v28 = v19;
    v29 = &v12[v27[12]];
    LOBYTE(v89) = 0;

    sub_24B2D4CC4();
    v30 = *(&v91 + 1);
    *v29 = v91;
    *(v29 + 1) = v30;
    v31 = &v12[v27[13]];
    LOBYTE(v89) = 0;
    sub_24B2D4CC4();
    v32 = *(&v91 + 1);
    *v31 = v91;
    *(v31 + 1) = v32;
    v19 = v28;
    v33 = &v12[v27[9]];
    v34 = v68;
    *v33 = v67;
    *(v33 + 1) = v26;
    v35 = &v12[v27[10]];
    *v35 = sub_24B2593A0;
    v35[1] = 0;
    v12[v27[11]] = 0;
    (*(v34 + 104))(v69, *MEMORY[0x277CE0EE0], v71);
    v36 = sub_24B2D4B74();
    KeyPath = swift_getKeyPath();
    v38 = v73;
    v39 = &v12[*(v72 + 36)];
    *v39 = KeyPath;
    v39[1] = v36;
    sub_24B2D3674();
    sub_24B2593F0();
    v40 = v70;
    sub_24B2D4714();
    (*(v74 + 8))(v38, v75);
    sub_24AFF8258(v12, &qword_27EFCEDC8, &qword_24B2F39B0);
    v24 = v76;
    v23 = v77;
    (*(v76 + 32))(v28, v40, v77);
    v22 = 0;
  }

  (*(v24 + 56))(v19, v22, 1, v23);
  v41 = v19;
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v42 = sub_24B2D1454();
  v43 = __swift_project_value_buffer(v42, qword_27EFE4610);
  v44 = *(v42 - 8);
  v45 = v78;
  (*(v44 + 16))(v78, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  v46 = sub_24B2D52D4();
  v48 = v47;
  sub_24AFF8258(v45, &qword_27EFC8A68, &qword_24B2E36B0);
  v87 = v46;
  v88 = v48;
  v91 = *(v85 + 56);
  LOBYTE(v92[0]) = v85[72];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3D8, &qword_24B2F3A10);
  v49 = sub_24B2D4E64();
  sub_24AFFE0A4(v49, v50, v51);
  v52 = v82;
  sub_24B2D4DD4();
  sub_24B2D2AE4();
  LOBYTE(v46) = sub_24B2D2A74();
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v46 & 1;
  v55 = v80;
  v56 = (v52 + *(v79 + 36));
  *v56 = v53;
  v56[1] = sub_24B09A700;
  v56[2] = v54;
  sub_24AFED08C(v41, v55);
  v85 = v41;
  v57 = v83;
  sub_24B008890(v52, v83, &qword_27EFCEDC0, &qword_24B2F39A8);
  *&v89 = v86;
  *(&v89 + 1) = 0x4028000000000000;
  v90[0] = v84;
  *&v90[129] = v93[8];
  *&v90[145] = v93[9];
  *&v90[161] = v93[10];
  *&v90[177] = v93[11];
  *&v90[65] = v93[4];
  *&v90[81] = v93[5];
  *&v90[97] = v93[6];
  *&v90[113] = v93[7];
  *&v90[1] = v93[0];
  *&v90[17] = v93[1];
  *&v90[33] = v93[2];
  *&v90[49] = v93[3];
  v58 = *&v90[160];
  *(a2 + 160) = *&v90[144];
  *(a2 + 176) = v58;
  *(a2 + 192) = *&v90[176];
  *(a2 + 208) = v90[192];
  v59 = *&v90[96];
  *(a2 + 96) = *&v90[80];
  *(a2 + 112) = v59;
  v60 = *&v90[128];
  *(a2 + 128) = *&v90[112];
  *(a2 + 144) = v60;
  v61 = *&v90[32];
  *(a2 + 32) = *&v90[16];
  *(a2 + 48) = v61;
  v62 = *&v90[64];
  *(a2 + 64) = *&v90[48];
  *(a2 + 80) = v62;
  v63 = *v90;
  *a2 = v89;
  *(a2 + 16) = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE00, &qword_24B2F3A48);
  sub_24AFED08C(v55, a2 + *(v64 + 48));
  sub_24B008890(v57, a2 + *(v64 + 64), &qword_27EFCEDC0, &qword_24B2F39A8);
  sub_24B008890(&v89, &v91, &qword_27EFCEE08, &qword_24B2F3A50);
  sub_24AFF8258(v52, &qword_27EFCEDC0, &qword_24B2F39A8);
  sub_24AFF8258(v85, &qword_27EFCEDD8, &qword_24B2F39C0);
  sub_24AFF8258(v57, &qword_27EFCEDC0, &qword_24B2F39A8);
  sub_24AFF8258(v55, &qword_27EFCEDD8, &qword_24B2F39C0);
  *(&v92[8] + 1) = v93[8];
  *(&v92[9] + 1) = v93[9];
  *(&v92[10] + 1) = v93[10];
  *(&v92[11] + 1) = v93[11];
  *(&v92[4] + 1) = v93[4];
  *(&v92[5] + 1) = v93[5];
  *(&v92[6] + 1) = v93[6];
  *(&v92[7] + 1) = v93[7];
  *(v92 + 1) = v93[0];
  *(&v92[1] + 1) = v93[1];
  *(&v92[2] + 1) = v93[2];
  *&v91 = v86;
  *(&v91 + 1) = 0x4028000000000000;
  LOBYTE(v92[0]) = v84;
  *(&v92[3] + 1) = v93[3];
  sub_24AFF8258(&v91, &qword_27EFCEE08, &qword_24B2F3A50);

  return result;
}

double sub_24B254754@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v44 - v3;
  sub_24B2D5694();
  v52 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  *&v81 = v8;
  *(&v81 + 1) = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  v18 = v17;
  sub_24B2D43A4();
  v19 = sub_24B2D45C4();
  v48 = v19;
  v46 = v20;
  v22 = v21;
  v24 = v23;

  sub_24B083C34(v14, v16, v18 & 1);

  v49 = sub_24B2D4B54();
  KeyPath = swift_getKeyPath();
  LOBYTE(v81) = v22 & 1;
  v47 = v22 & 1;
  v45 = sub_24B2D3E14();
  LOBYTE(v53[0]) = 1;
  sub_24B254C9C(v50, &v81);
  v70 = *&v82[16];
  v71 = *&v82[32];
  v72[0] = *&v82[48];
  *(v72 + 9) = *&v82[57];
  v68 = v81;
  v69 = *v82;
  *(v74 + 9) = *&v82[57];
  v73[2] = *&v82[16];
  v73[3] = *&v82[32];
  v74[0] = *&v82[48];
  v73[0] = v81;
  v73[1] = *v82;
  sub_24B008890(&v68, &v79, &qword_27EFCEE10, &qword_24B2F3A88);
  sub_24AFF8258(v73, &qword_27EFCEE10, &qword_24B2F3A88);
  *(&v64[2] + 7) = v70;
  *(&v64[3] + 7) = v71;
  *(&v64[4] + 7) = v72[0];
  v64[5] = *(v72 + 9);
  *(v64 + 7) = v68;
  *(&v64[1] + 7) = v69;
  v26 = v53[0];
  *&v75 = v19;
  v27 = v45;
  v28 = v46;
  *(&v75 + 1) = v46;
  LOBYTE(v76) = v22 & 1;
  DWORD1(v76) = *&v67[3];
  *(&v76 + 1) = *v67;
  *(&v76 + 1) = v24;
  LOWORD(v77) = 256;
  WORD3(v77) = v66;
  *(&v77 + 2) = v65;
  *(&v77 + 1) = KeyPath;
  v29 = KeyPath;
  v79 = v45;
  v80[0] = v53[0];
  *&v80[1] = v64[0];
  v30 = v64[0];
  v31 = v64[1];
  *&v80[17] = v64[1];
  v32 = v64[4];
  *&v80[81] = *(v72 + 9);
  v33 = v64[3];
  *&v80[65] = v64[4];
  v34 = v64[2];
  *&v80[49] = v64[3];
  *&v80[33] = v64[2];
  *&v62[55] = *&v80[32];
  *&v62[39] = *&v80[16];
  *&v62[23] = *v80;
  *&v62[7] = v45;
  v62[119] = BYTE8(v72[1]);
  *&v62[103] = *&v80[80];
  *&v62[87] = *&v80[64];
  *&v62[71] = *&v80[48];
  v35 = v75;
  v36 = v77;
  v37 = v51;
  *(v51 + 16) = v76;
  *(v37 + 32) = v36;
  *v37 = v35;
  v38 = *&v62[64];
  *(v37 + 113) = *&v62[48];
  v39 = *&v62[16];
  *(v37 + 97) = *&v62[32];
  v40 = *v62;
  *(v37 + 81) = v39;
  *(v37 + 65) = v40;
  v41 = *&v62[80];
  *(v37 + 161) = *&v62[96];
  *(v37 + 145) = v41;
  *(v37 + 129) = v38;
  *&v82[17] = v31;
  v42 = v49;
  v78 = v49;
  v63 = 1;
  *(v37 + 48) = v49;
  *(v37 + 56) = 0;
  *(v37 + 64) = 1;
  *(v37 + 177) = *&v62[112];
  v81 = v27;
  v82[0] = v26;
  *&v82[1] = v30;
  v83 = v64[5];
  *&v82[65] = v32;
  *&v82[49] = v33;
  *&v82[33] = v34;
  sub_24B008890(&v75, v53, &qword_27EFCEE18, &qword_24B2F3A90);
  sub_24B008890(&v79, v53, &qword_27EFCEE20, &qword_24B2F3A98);
  sub_24AFF8258(&v81, &qword_27EFCEE20, &qword_24B2F3A98);
  v53[0] = v48;
  v53[1] = v28;
  v54 = v47;
  *v55 = *v67;
  *&v55[3] = *&v67[3];
  v56 = v24;
  v57 = 256;
  v58 = v65;
  v59 = v66;
  v60 = v29;
  v61 = v42;
  sub_24AFF8258(v53, &qword_27EFCEE18, &qword_24B2F3A90);

  return result;
}

uint64_t sub_24B254C9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4(isCurrentExecutor, v4, v5);

  v6 = sub_24B2D4604();
  v8 = v7;
  v10 = v9;
  sub_24B2D43A4();
  v11 = sub_24B2D45C4();
  v13 = v12;
  v15 = v14;

  v16 = v10 & 1;
  v17 = a1;
  sub_24B083C34(v6, v8, v16);

  sub_24B2D3FD4();
  v18 = sub_24B2D4594();
  v51 = v19;
  v52 = v20;
  v22 = v21;
  sub_24B083C34(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  if (v17[3])
  {

    v23 = sub_24B2D4604();
    v25 = v24;
    v27 = v26;
    sub_24B2D4474();
    v28 = sub_24B2D45C4();
    v48 = v18;
    v30 = v29;
    v32 = v31;

    sub_24B083C34(v23, v25, v27 & 1);

    sub_24B2D3FD4();
    v33 = sub_24B2D4594();
    v35 = v34;
    LOBYTE(v25) = v36;
    v47 = v22;
    v38 = v37;
    v39 = v32 & 1;
    v18 = v48;
    sub_24B083C34(v28, v30, v39);

    v40 = swift_getKeyPath();
    v41 = v25 & 1;
    v42 = v33;
    v43 = v35;
    sub_24B083C44(v33, v35, v25 & 1);
    v44 = v38;
    v22 = v47;

    v45 = 2;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v44 = 0;
    v40 = 0;
    v45 = 0;
  }

  sub_24B083C44(v18, v51, v22 & 1);

  sub_24B2594D4(v42, v43, v41, v44, v40);
  sub_24B259524(v42, v43, v41, v44);
  *a2 = v18;
  *(a2 + 8) = v51;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v52;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 2;
  *(a2 + 48) = v42;
  *(a2 + 56) = v43;
  *(a2 + 64) = v41;
  *(a2 + 72) = v44;
  *(a2 + 80) = v40;
  *(a2 + 88) = v45;
  sub_24B259524(v42, v43, v41, v44);
  sub_24B083C34(v18, v51, v22 & 1);
}

uint64_t sub_24B255064@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v21[0] = v8;
  v21[1] = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;
  result = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = result;
  *(a1 + 40) = 2;
  return result;
}

void sub_24B25522C(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v20[0] = v8;
  v20[1] = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v19;
}

uint64_t sub_24B255440()
{
  v1 = v0[3];
  v7 = v0[2];
  v8[0] = v1;
  *(v8 + 9) = *(v0 + 57);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B25522C(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDB0, &qword_24B2F39A0);
  sub_24B039184(&qword_27EFCEDB8, &qword_27EFCEDB0, &qword_24B2F39A0, MEMORY[0x277CE14C0]);
  return sub_24B2D4F14();
}

double sub_24B25558C(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1;
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE648, &qword_24B2F16F0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED48, &qword_24B2F3958);
  v5 = sub_24B039184(&qword_27EFCECA8, &qword_27EFCE648, &qword_24B2F16F0, MEMORY[0x277D83980]);
  v6 = sub_24B259040(&qword_27EFCECB0, type metadata accessor for SettingsPersonInfo, &unk_24B2F1BBC);
  v7 = sub_24B039184(&qword_27EFCED40, &qword_27EFCED48, &qword_24B2F3958, MEMORY[0x277CDD938]);
  sub_24B2D4ED4(&v9, KeyPath, sub_24B25575C, 0, v3, v4, v5, v6, v7);

  return result;
}

double sub_24B25575C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECB8, &qword_24B2F3898);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v12[0] = v12;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v12[-2] = a1;
  sub_24B2570C0(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED50, &qword_24B2F3960);
  sub_24B039184(&qword_27EFCED58, &qword_27EFCED50, &qword_24B2F3960, MEMORY[0x277CE1138]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCECD0, &qword_24B2F38A8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCECD8, &qword_24B2F38B0);
  v9 = sub_24B2590CC(&qword_27EFCECE0, &qword_27EFCECD8, &qword_24B2F38B0, sub_24B0FFFAC);
  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v7;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B2D3644();

  return result;
}

double sub_24B2559C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED68, &qword_24B2F3970);
  MEMORY[0x28223BE20](v51);
  v3 = &v48 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECF0, &unk_24B2F38C0);
  MEMORY[0x28223BE20](v54);
  v48 = (&v48 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED70, &qword_24B2F3978);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v48 - v8;
  v9 = type metadata accessor for PlatterWithIcon.Icon(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlatterWithIcon(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B80, &qword_24B2ED860);
  MEMORY[0x28223BE20](v49);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  sub_24B2D5694();
  v52 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(v58 + *(type metadata accessor for SettingsPersonInfo(0) + 24));
  v50 = v21;
  if (v22)
  {
    v23 = v22;
    sub_24B2D14A4();
    v24 = sub_24B2D1494();
    (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
  }

  else
  {
    v25 = sub_24B2D1494();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  }

  swift_storeEnumTagMultiPayload();
  *&v61[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC310, &unk_24B2F38D0);
  v26 = MEMORY[0x277CE0848];
  sub_24B039184(&qword_27EFCC318, &qword_27EFCC310, &unk_24B2F38D0, MEMORY[0x277CE0848]);
  v27 = sub_24B2D34A4();
  *&v61[0] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC320, &qword_24B2EB438);
  sub_24B039184(&qword_27EFCC328, &qword_27EFCC320, &qword_24B2EB438, v26);
  v28 = sub_24B2D34A4();
  sub_24B259150(v11, v14, type metadata accessor for PlatterWithIcon.Icon);
  v29 = &v14[*(v12 + 20)];
  *v29 = v27;
  v29[8] = 1;
  *(v29 + 2) = v28;
  *(v29 + 3) = 0x4000000000000000;
  *(v29 + 5) = 0;
  *(v29 + 6) = 0;
  *(v29 + 4) = 0;
  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B259150(v14, v18, type metadata accessor for PlatterWithIcon);
  v30 = &v18[*(v49 + 36)];
  v31 = v61[5];
  *v30 = v61[4];
  *(v30 + 1) = v31;
  *(v30 + 2) = v61[6];
  v32 = v50;
  sub_24B0391CC(v18, v50, &qword_27EFC8B80, &qword_24B2ED860);
  v33 = v58;
  if (sub_24B216FB8())
  {
    v34 = sub_24B2D3E04();
    v35 = v48;
    *v48 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECF8, &qword_24B2F38E0);
    sub_24B257C7C(v33, sub_24B259A74, v35 + *(v36 + 44));
    sub_24B008890(v35, v3, &qword_27EFCECF0, &unk_24B2F38C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED78, &unk_24B2F3980);
    sub_24B039184(&qword_27EFCED80, &qword_27EFCECF0, &unk_24B2F38C0, MEMORY[0x277CE1198]);
    sub_24B2592B4();
    v37 = v55;
    sub_24B2D3ED4();
    sub_24AFF8258(v35, &qword_27EFCECF0, &unk_24B2F38C0);
  }

  else
  {
    v38 = sub_24B2D3E04();
    v60 = 1;
    sub_24B256248(v33, v61);
    *&v59[7] = v61[0];
    *&v59[23] = v61[1];
    *&v59[39] = v61[2];
    *&v59[55] = v61[3];
    v39 = v60;
    v40 = sub_24B2D3FD4();
    v41 = *v59;
    *(v3 + 33) = *&v59[16];
    v42 = *&v59[48];
    *(v3 + 49) = *&v59[32];
    *(v3 + 65) = v42;
    *v3 = v38;
    *(v3 + 1) = 0;
    v3[16] = v39;
    *(v3 + 10) = *&v59[63];
    *(v3 + 17) = v41;
    *(v3 + 22) = v40;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED78, &unk_24B2F3980);
    sub_24B039184(&qword_27EFCED80, &qword_27EFCECF0, &unk_24B2F38C0, MEMORY[0x277CE1198]);
    sub_24B2592B4();
    v37 = v55;
    sub_24B2D3ED4();
  }

  v43 = v53;
  sub_24B008890(v32, v53, &qword_27EFC8B80, &qword_24B2ED860);
  v44 = v56;
  sub_24B008890(v37, v56, &qword_27EFCED70, &qword_24B2F3978);
  v45 = v57;
  sub_24B008890(v43, v57, &qword_27EFC8B80, &qword_24B2ED860);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDA8, &qword_24B2F3998);
  sub_24B008890(v44, v45 + *(v46 + 48), &qword_27EFCED70, &qword_24B2F3978);
  sub_24AFF8258(v37, &qword_27EFCED70, &qword_24B2F3978);
  sub_24AFF8258(v32, &qword_27EFC8B80, &qword_24B2ED860);
  sub_24AFF8258(v44, &qword_27EFCED70, &qword_24B2F3978);
  sub_24AFF8258(v43, &qword_27EFC8B80, &qword_24B2ED860);

  return result;
}

uint64_t sub_24B256248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49[-v4];
  v6 = sub_24B2D21C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B2D5694();
  v52 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + *(type metadata accessor for SettingsPersonInfo(0) + 24));
  if (!v10)
  {
    goto LABEL_11;
  }

  sub_24B2D21B4();
  if ([v10 isKeyAvailable_])
  {
    v11 = [v10 nickname];
    sub_24B2D5394();

    sub_24B2D21A4();
  }

  if ([v10 isKeyAvailable_])
  {
    v12 = [v10 givenName];
    sub_24B2D5394();

    sub_24B2D2174();
  }

  if ([v10 isKeyAvailable_])
  {
    v13 = [v10 familyName];
    sub_24B2D5394();

    sub_24B2D2184();
  }

  v14 = objc_opt_self();
  v15 = sub_24B2D2194();
  v16 = [v14 localizedStringFromPersonNameComponents:v15 style:2 options:0];

  sub_24B2D5394();
  (*(v7 + 8))(v9, v6);
  v17 = sub_24B2D52C4();
  v19 = v18;

  if (!v19)
  {
LABEL_11:
    v17 = sub_24B2D16D4();
    v19 = v23;
  }

  v56 = v17;
  v57 = v19;
  sub_24AFFE0A4(v20, v21, v22);
  v51 = sub_24B2D4604();
  v25 = v24;
  v50 = v26;
  v54 = v27;
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v28 = sub_24B2D1454();
  v29 = __swift_project_value_buffer(v28, qword_27EFE4610);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v5, v29, v28);
  (*(v30 + 56))(v5, 0, 1, v28);
  v31 = sub_24B2D52D4();
  v33 = v32;
  sub_24AFF8258(v5, &qword_27EFC8A68, &qword_24B2E36B0);
  v56 = v31;
  v57 = v33;
  v34 = sub_24B2D4604();
  v36 = v35;
  LOBYTE(v31) = v37;
  sub_24B2D4454();
  v38 = sub_24B2D45C4();
  v40 = v39;
  LOBYTE(v30) = v41;
  v43 = v42;

  sub_24B083C34(v34, v36, v31 & 1);

  v44 = v50 & 1;
  v55 = v50 & 1;
  LOBYTE(v56) = v50 & 1;
  LOBYTE(v30) = v30 & 1;
  v58 = v30;
  v45 = v53;
  v46 = v54;
  v47 = v51;
  *v53 = v51;
  v45[1] = v25;
  *(v45 + 16) = v44;
  v45[3] = v46;
  v45[4] = v38;
  v45[5] = v40;
  *(v45 + 48) = v30;
  v45[7] = v43;
  sub_24B083C44(v47, v25, v44);

  sub_24B083C44(v38, v40, v30);

  sub_24B083C34(v38, v40, v30);

  sub_24B083C34(v47, v25, v55);
}

void sub_24B2567BC(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v20[0] = v8;
  v20[1] = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v19;
}

void sub_24B2569D0(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v20[0] = v8;
  v20[1] = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v19;
}

uint64_t sub_24B256BE4()
{
  sub_24B2567BC(v2);
  sub_24B2569D0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED30, &qword_24B2F3950);
  sub_24B2591C0();
  return sub_24B2D4F14();
}

double sub_24B256C84(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1;
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE648, &qword_24B2F16F0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECA0, qword_24B2F3860);
  v5 = sub_24B039184(&qword_27EFCECA8, &qword_27EFCE648, &qword_24B2F16F0, MEMORY[0x277D83980]);
  v6 = sub_24B259040(&qword_27EFCECB0, type metadata accessor for SettingsPersonInfo, &unk_24B2F1BBC);
  v7 = sub_24B039184(&qword_27EFCEC98, &qword_27EFCECA0, qword_24B2F3860, MEMORY[0x277CDD938]);
  sub_24B2D4ED4(&v9, KeyPath, sub_24B256E54, 0, v3, v4, v5, v6, v7);

  return result;
}

double sub_24B256E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECB8, &qword_24B2F3898);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v12[0] = v12;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v12[-2] = a1;
  sub_24B2570C0(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECC0, &qword_24B2F38A0);
  sub_24B039184(&qword_27EFCECC8, &qword_27EFCECC0, &qword_24B2F38A0, MEMORY[0x277CE1138]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCECD0, &qword_24B2F38A8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCECD8, &qword_24B2F38B0);
  v9 = sub_24B2590CC(&qword_27EFCECE0, &qword_27EFCECD8, &qword_24B2F38B0, sub_24B0FFFAC);
  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v7;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B2D3644();

  return result;
}

double sub_24B2570C0@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v35 = a3;
  v4 = sub_24B2D21C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECD0, &qword_24B2F38A8);
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = v33 - v9;
  sub_24B2D5694();
  v33[2] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + *(type metadata accessor for SettingsPersonInfo(0) + 24));
  if (!v11)
  {
    goto LABEL_11;
  }

  v33[0] = v4;
  v33[1] = a1;
  v12 = v11;
  sub_24B2D21B4();
  if ([v12 isKeyAvailable_])
  {
    v13 = [v12 nickname];
    sub_24B2D5394();

    sub_24B2D21A4();
  }

  if ([v12 isKeyAvailable_])
  {
    v14 = [v12 givenName];
    sub_24B2D5394();

    sub_24B2D2174();
  }

  if ([v12 isKeyAvailable_])
  {
    v15 = [v12 familyName];
    sub_24B2D5394();

    sub_24B2D2184();
  }

  v16 = objc_opt_self();
  v17 = sub_24B2D2194();
  v18 = [v16 localizedStringFromPersonNameComponents:v17 style:2 options:0];

  sub_24B2D5394();
  (*(v5 + 8))(v7, v33[0]);
  v19 = sub_24B2D52C4();
  v21 = v20;

  if (!v21)
  {
LABEL_11:
    v19 = sub_24B2D16D4();
    v21 = v22;
  }

  v23 = sub_24B2D3804();
  v24 = sub_24B2D42F4();
  v36 = v11;
  v37 = v19;
  v38 = v21;
  v39 = v23;
  LOBYTE(v40) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED28, &qword_24B2F3948);
  sub_24B2D38E4();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24B2DE430;
  sub_24B2D38D4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECD8, &qword_24B2F38B0);
  v27 = sub_24B2590CC(&qword_27EFCECE0, &qword_27EFCECD8, &qword_24B2F38B0, sub_24B0FFFAC);
  MEMORY[0x24C23AFA0](1, v25, v26, v27);

  v39 = &type metadata for SolariumFeatureFlag;
  v40 = sub_24B0096D0(v28, v29, v30);
  sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v36 = v26;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v34;
  sub_24B2D4894();
  (*(v8 + 8))(v10, v31);

  return result;
}

double sub_24B2575F8@<D0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a6 = sub_24B2D3CD4();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5(a1);

  return result;
}

double sub_24B2576E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECF0, &unk_24B2F38C0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for PlatterWithIcon.Icon(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PlatterWithIcon(0);
  MEMORY[0x28223BE20](v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B80, &qword_24B2ED860);
  MEMORY[0x28223BE20](v38);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_24B2D5694();
  v39 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + *(type metadata accessor for SettingsPersonInfo(0) + 24));
  v41 = a1;
  if (v20)
  {
    v21 = v20;
    sub_24B2D14A4();
    v22 = sub_24B2D1494();
    (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
  }

  else
  {
    v23 = sub_24B2D1494();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  }

  swift_storeEnumTagMultiPayload();
  *&v44 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC310, &unk_24B2F38D0);
  v24 = MEMORY[0x277CE0848];
  sub_24B039184(&qword_27EFCC318, &qword_27EFCC310, &unk_24B2F38D0, MEMORY[0x277CE0848]);
  v25 = sub_24B2D34A4();
  *&v44 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC320, &qword_24B2EB438);
  sub_24B039184(&qword_27EFCC328, &qword_27EFCC320, &qword_24B2EB438, v24);
  v26 = sub_24B2D34A4();
  sub_24B259150(v10, v12, type metadata accessor for PlatterWithIcon.Icon);
  v27 = &v12[*(v37 + 20)];
  *v27 = v25;
  v27[8] = 1;
  *(v27 + 2) = v26;
  *(v27 + 3) = 0x4000000000000000;
  *(v27 + 5) = 0;
  *(v27 + 6) = 0;
  *(v27 + 4) = 0;
  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B259150(v12, v16, type metadata accessor for PlatterWithIcon);
  v28 = &v16[*(v38 + 36)];
  v29 = v45;
  *v28 = v44;
  *(v28 + 1) = v29;
  *(v28 + 2) = v46;
  sub_24B0391CC(v16, v19, &qword_27EFC8B80, &qword_24B2ED860);
  *v7 = sub_24B2D3E04();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCECF8, &qword_24B2F38E0);
  sub_24B257C7C(v41, sub_24B259A74, &v7[*(v30 + 44)]);
  v31 = v40;
  sub_24B008890(v19, v40, &qword_27EFC8B80, &qword_24B2ED860);
  v32 = v43;
  sub_24B008890(v7, v43, &qword_27EFCECF0, &unk_24B2F38C0);
  v33 = v42;
  sub_24B008890(v31, v42, &qword_27EFC8B80, &qword_24B2ED860);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED00, &qword_24B2F38E8);
  sub_24B008890(v32, v33 + *(v34 + 48), &qword_27EFCECF0, &unk_24B2F38C0);
  sub_24AFF8258(v7, &qword_27EFCECF0, &unk_24B2F38C0);
  sub_24AFF8258(v19, &qword_27EFC8B80, &qword_24B2ED860);
  sub_24AFF8258(v32, &qword_27EFCECF0, &unk_24B2F38C0);
  sub_24AFF8258(v31, &qword_27EFC8B80, &qword_24B2ED860);

  return result;
}

uint64_t sub_24B257C7C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED08, &unk_24B2F38F0);
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v63 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_24B2D24A4();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED10, &qword_24B2F3900);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - v16;
  v64 = sub_24B2D21C4();
  v18 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  v68 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = *(type metadata accessor for SettingsPersonInfo(0) + 24);
  v65 = a1;
  v22 = *(a1 + v21);
  v71 = v6;
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_24B2D21B4();
  if ([v22 isKeyAvailable_])
  {
    v23 = [v22 nickname];
    sub_24B2D5394();

    sub_24B2D21A4();
  }

  if ([v22 isKeyAvailable_])
  {
    v24 = [v22 givenName];
    sub_24B2D5394();

    sub_24B2D2174();
  }

  if ([v22 isKeyAvailable_])
  {
    v25 = [v22 familyName];
    sub_24B2D5394();

    sub_24B2D2184();
  }

  v26 = objc_opt_self();
  v27 = sub_24B2D2194();
  v28 = [v26 localizedStringFromPersonNameComponents:v27 style:2 options:0];

  sub_24B2D5394();
  (*(v18 + 8))(v20, v64);
  v29 = sub_24B2D52C4();
  v31 = v30;

  v6 = v71;
  if (!v31)
  {
LABEL_11:
    v29 = sub_24B2D16D4();
    v31 = v35;
  }

  v72 = v29;
  v73 = v31;
  sub_24AFFE0A4(v32, v33, v34);
  v36 = sub_24B2D4604();
  v38 = v37;
  LODWORD(v40) = v39;
  v42 = v41;
  sub_24B217820(v10);
  v43 = v66;
  v44 = v67;
  if ((*(v66 + 48))(v10, 1, v67) == 1)
  {
    sub_24AFF8258(v10, &qword_27EFC8450, &qword_24B2DE7A0);
    v45 = 1;
  }

  else
  {
    v46 = v61;
    (*(v43 + 32))(v61, v10, v44);
    v47 = v63;
    (*(v43 + 16))(v63, v46, v44);
    v48 = type metadata accessor for CountDownTimerText(0);
    *(v47 + *(v48 + 20)) = 0;
    v49 = (v47 + *(v48 + 24));
    *v49 = v62;
    v49[1] = 0;
    v50 = sub_24B2D3FD4();
    LODWORD(v65) = v40;
    v40 = v17;
    v51 = a4;
    *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED20, &qword_24B2F3910) + 36)) = v50;
    v52 = sub_24B2D4454();
    v53 = v46;
    v6 = v71;
    (*(v43 + 8))(v53, v44);
    KeyPath = swift_getKeyPath();
    v55 = (v47 + *(v6 + 36));
    *v55 = KeyPath;
    v55[1] = v52;
    a4 = v51;
    v17 = v40;
    LOBYTE(v40) = v65;
    sub_24B0391CC(v47, v17, &qword_27EFCED08, &unk_24B2F38F0);
    v45 = 0;
  }

  (*(v70 + 56))(v17, v45, 1, v6);
  v56 = v69;
  sub_24B008890(v17, v69, &qword_27EFCED10, &qword_24B2F3900);
  *a4 = v36;
  *(a4 + 8) = v38;
  v57 = v40 & 1;
  *(a4 + 16) = v57;
  *(a4 + 24) = v42;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCED18, &qword_24B2F3908);
  sub_24B008890(v56, a4 + *(v58 + 48), &qword_27EFCED10, &qword_24B2F3900);
  sub_24B083C44(v36, v38, v57);

  sub_24AFF8258(v17, &qword_27EFCED10, &qword_24B2F3900);
  sub_24AFF8258(v56, &qword_27EFCED10, &qword_24B2F3900);
  sub_24B083C34(v36, v38, v57);
}

uint64_t sub_24B2583A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B2D3D54();
  sub_24B2D3D44();
  sub_24B2D3D24();
  sub_24B2D3D44();
  sub_24B2D3D84();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  return sub_24B2D45E4();
}

void sub_24B258500(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE4610);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  v11 = sub_24AFF8258(v4, &qword_27EFC8A68, &qword_24B2E36B0);
  v20[0] = v8;
  v20[1] = v10;
  sub_24AFFE0A4(v11, v12, v13);
  v14 = sub_24B2D4604();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v19;
}

uint64_t sub_24B258714()
{
  sub_24B258500(v1);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC88, &qword_24B2F3858);
  sub_24B258F90();
  return sub_24B2D4F14();
}

double sub_24B25881C@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B259040(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  v7 = v3[13];
  v8 = v3[14];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_24B258A64(v4, v5, v6, v7, v8);
}

double sub_24B2588D8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B259040(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2574();

  return result;
}

uint64_t objectdestroyTm_29()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_24B258A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B258AB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24B258B64()
{
  result = qword_27EFCEC70;
  if (!qword_27EFCEC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC20, &qword_24B2F3568);
    sub_24B258BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC70);
  }

  return result;
}

unint64_t sub_24B258BF0()
{
  result = qword_27EFCEC78;
  if (!qword_27EFCEC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC48, &qword_24B2F3578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC18, &qword_24B2F3560);
    sub_24B2D3854();
    sub_24B039184(&qword_27EFCEC38, &qword_27EFCEC18, &qword_24B2F3560, MEMORY[0x277CDE580]);
    sub_24B259040(&qword_27EFCEC40, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC78);
  }

  return result;
}

unint64_t sub_24B258D3C()
{
  result = qword_27EFCEC80;
  if (!qword_27EFCEC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC60, &qword_24B2F35B0);
    sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318, &qword_24B2E2990, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC80);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B258E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_24B258EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B258F90()
{
  result = qword_27EFCEC90;
  if (!qword_27EFCEC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC88, &qword_24B2F3858);
    sub_24B039184(&qword_27EFCEC98, &qword_27EFCECA0, qword_24B2F3860, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC90);
  }

  return result;
}

uint64_t sub_24B259040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B2590CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t sub_24B259150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B2591C0()
{
  result = qword_27EFCED38;
  if (!qword_27EFCED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCED30, &qword_24B2F3950);
    sub_24B039184(&qword_27EFCED40, &qword_27EFCED48, &qword_24B2F3958, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCED38);
  }

  return result;
}

unint64_t sub_24B2592B4()
{
  result = qword_27EFCED88;
  if (!qword_27EFCED88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCED78, &unk_24B2F3980);
    sub_24B039184(&qword_27EFCED90, &qword_27EFCAA78, &qword_24B2E5DD0, MEMORY[0x277CE1198]);
    sub_24B039184(&qword_27EFCED98, &qword_27EFCEDA0, &qword_24B2F3990, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCED88);
  }

  return result;
}

double sub_24B2593A0@<D0>(uint64_t a1@<X8>)
{
  sub_24B255064(&v6);
  v2 = v7;
  v3 = v9;
  result = *&v6;
  v5 = v8;
  *a1 = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v5;
  *(a1 + 40) = v3;
  return result;
}

unint64_t sub_24B2593F0()
{
  result = qword_27EFCEDF0;
  if (!qword_27EFCEDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEDC8, &qword_24B2F39B0);
    sub_24B039184(&qword_27EFCEDF8, &qword_27EFCEDE8, &qword_24B2F39D0, &protocol conformance descriptor for AsyncButton<A>);
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEDF0);
  }

  return result;
}

double sub_24B2594D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_24B083C44(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B259524(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B083C34(result, a2, a3 & 1);
  }

  return result;
}

double sub_24B2595A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
    return sub_24B247D54(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_24B2595CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_24B24A784(a2, a3);
  }

  return result;
}

uint64_t sub_24B2595F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFD370;

  return sub_24B25229C();
}

uint64_t sub_24B2596E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B25E764(a1, v4, v5, v6, v7);
}

unint64_t sub_24B2597AC()
{
  result = qword_27EFCEEC0;
  if (!qword_27EFCEEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEEC8, &qword_24B2F3BA0);
    sub_24B258F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEEC0);
  }

  return result;
}

unint64_t sub_24B259844()
{
  result = qword_27EFCEED0;
  if (!qword_27EFCEED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEED8, &qword_24B2F3BA8);
    sub_24B2591C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEED0);
  }

  return result;
}

unint64_t sub_24B2598D4()
{
  result = qword_27EFCEEE0;
  if (!qword_27EFCEEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEEE8, &qword_24B2F3BB0);
    sub_24B039184(&qword_27EFCEDB8, &qword_27EFCEDB0, &qword_24B2F39A0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEEE0);
  }

  return result;
}

unint64_t sub_24B259998()
{
  result = qword_27EFCEEF0;
  if (!qword_27EFCEEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEEF8, &qword_24B2F3BB8);
    sub_24B039184(&qword_27EFCEE30, &qword_27EFCEE28, &qword_24B2F3AA0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEEF0);
  }

  return result;
}

Swift::Void __swiftcall FindMyAccountOverviewViewController.viewDidLoad()()
{
  v1 = v0;
  v51.super_class = FindMyAccountOverviewViewController;
  objc_msgSendSuper2(&v51, sel_viewDidLoad);
  static FindMyAccountOverviewViewModel.Dependencies.live()(v50);
  v49[0] = v50[0];
  v49[1] = v50[1];
  v49[2] = v50[2];
  type metadata accessor for FindMyAccountOverviewViewModel(0);
  swift_allocObject();
  *&v49[0] = FindMyAccountOverviewViewModel.init(dependencies:)(v49);
  sub_24B2D4CC4();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF00, &unk_24B2F3BC0));

  v3 = sub_24B2D3EA4();
  [v1 addChildViewController_];
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v3 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = [v1 view];
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v7 setFrame_];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v19 addSubview_];

  v21 = [v3 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98, &unk_24B2E6670);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24B2DF8F0;
  v23 = [v3 view];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = [v23 topAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v22 + 32) = v28;
  v29 = [v3 view];

  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = [v29 leadingAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v22 + 40) = v34;
  v35 = [v1 view];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  v37 = [v35 trailingAnchor];

  v38 = [v3 view];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v22 + 48) = v40;
  v41 = [v1 view];
  if (!v41)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = v41;
  v43 = [v41 bottomAnchor];

  v44 = [v3 view];
  if (v44)
  {
    v45 = objc_opt_self();
    v46 = [v44 bottomAnchor];

    v47 = [v43 constraintEqualToAnchor_];
    *(v22 + 56) = v47;
    sub_24B038248(0, &qword_27EFC84B8, 0x277CCAAD0);
    v48 = sub_24B2D5524();

    [v45 activateConstraints_];

    [v3 didMoveToParentViewController_];

    return;
  }

LABEL_29:
  __break(1u);
}

void __swiftcall FindMyAccountOverviewViewController.init(nibName:bundle:)(FindMyAccountOverviewViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_24B2D5374();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id FindMyAccountOverviewViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_24B2D5374();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = FindMyAccountOverviewViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id FindMyAccountOverviewViewController.init(coder:)(void *a1)
{
  v4.super_class = FindMyAccountOverviewViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

void sub_24B25A590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v26 = a5;
  v8 = a3(0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v17 = 0;
  v27 = a2;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v22 = v17;
LABEL_9:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    sub_24B25FDD8(*(a1 + 48) + *(v25 + 72) * (v23 | (v22 << 6)), v16, a4);
    sub_24B25FE40(v16, v10, a4);
    v26(v13, v10);
    sub_24B25FEA8(v13, a4);
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return;
    }

    v20 = *(a1 + 56 + 8 * v22);
    ++v17;
    if (v20)
    {
      v17 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_24B25A850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6, v14);
      (*(v7 + 32))(v9, v16, v6);
      v28(v12, v9);
      (*(v7 + 8))(v12, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24B25AA7C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_24B1B0234(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B25AB58(uint64_t result, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_5:
    v8 &= v8 - 1;
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    result = sub_24B2D6124();
    v10 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = a3(v10, isUniquelyReferenced_nonNull_native);
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return a2;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_24B25AC90(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = *v2;
  v5 = sub_24B2D3184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8, &qword_24B2F1890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_24B25FD78(&qword_27EFCE6E0, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);
  (*(v12 + 24))(v4, v12);
  v22 = v6;
  (*(v6 + 16))(v8, v11, v5);
  sub_24AFF8258(v11, &qword_27EFCE6D8, &qword_24B2F1890);

  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a2;
    v26 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v24 = v23;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v26);
    v21 = v5;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SettingsProviderProtocol: removeSubscriber\n- SettingsSubscriber: %{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v22 + 8))(v8, v5);
  }

  sub_24B20D2FC(MEMORY[0x277D84FA0], v23, a2);
}

void sub_24B25AFA8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = *v2;
  v5 = sub_24B2D3184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_24B25FD78(&qword_27EFCE6C8, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);
  (*(v12 + 24))(v4, v12);
  v22 = v6;
  (*(v6 + 16))(v8, v11, v5);
  sub_24AFF8258(v11, &qword_27EFCE6C0, &qword_24B2F1F30);

  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a2;
    v26 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v24 = v23;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v26);
    v21 = v5;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SettingsProviderProtocol: removeSubscriber\n- SettingsSubscriber: %{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v22 + 8))(v8, v5);
  }

  sub_24B20BCF4(MEMORY[0x277D84FA0], v23, a2);
}

void sub_24B25B2C0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = *v2;
  v5 = sub_24B2D3184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_24B25FD78(&qword_27EFCE620, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  (*(v12 + 24))(v4, v12);
  v22 = v6;
  (*(v6 + 16))(v8, v11, v5);
  sub_24AFF8258(v11, &qword_27EFCE618, &unk_24B2F1C60);

  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a2;
    v26 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v24 = v23;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v26);
    v21 = v5;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SettingsProviderProtocol: removeSubscriber\n- SettingsSubscriber: %{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v22 + 8))(v8, v5);
  }

  sub_24B20A7A0(MEMORY[0x277D84FA0], v23, a2);
}

void sub_24B25B5D8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = *v2;
  v5 = sub_24B2D3184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0, &qword_24B2F1800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_24B25FD78(&qword_27EFCE6A8, type metadata accessor for SettingsProvider, &protocol conformance descriptor for SettingsProvider);
  (*(v12 + 24))(v4, v12);
  v22 = v6;
  (*(v6 + 16))(v8, v11, v5);
  sub_24AFF8258(v11, &qword_27EFCE6A0, &qword_24B2F1800);

  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a2;
    v26 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v24 = v23;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v26);
    v21 = v5;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SettingsProviderProtocol: removeSubscriber\n- SettingsSubscriber: %{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v22 + 8))(v8, v5);
  }

  sub_24B20FDCC(MEMORY[0x277D84FA0], v23, a2);
}

void sub_24B25B8F0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = *v2;
  v5 = sub_24B2D3184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_24B25FD78(&qword_27EFCE688, type metadata accessor for SettingsFindMyServiceProvider, &protocol conformance descriptor for SettingsFindMyServiceProvider);
  (*(v12 + 24))(v4, v12);
  v22 = v6;
  (*(v6 + 16))(v8, v11, v5);
  sub_24AFF8258(v11, &qword_27EFCE680, &qword_24B2F17B8);

  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a2;
    v26 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v24 = v23;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v26);
    v21 = v5;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SettingsProviderProtocol: removeSubscriber\n- SettingsSubscriber: %{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v22 + 8))(v8, v5);
  }

  sub_24B20E854(MEMORY[0x277D84FA0], v23, a2);
}

uint64_t sub_24B25BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v7 = *v3;
  v8 = sub_24B2D3184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  MEMORY[0x28223BE20](v47);
  v49 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v44 - v14;
  v16 = sub_24B25FD78(&qword_27EFCE6C8, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);
  v17 = *(v16 + 24);
  v50 = v7;
  v45 = v17;
  v46 = v16;
  (v17)(v7);
  v18 = *(v9 + 16);
  v48 = v8;
  v18(v11, v15, v8);
  sub_24AFF8258(v15, &qword_27EFCE6C0, &qword_24B2F1F30);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44[0] = v22;
    v54 = v22;
    *v21 = 136315394;
    sub_24B1D2434(v22, v23, v24);
    v25 = sub_24B2D57F4();
    v44[1] = v4;
    v27 = a3;
    v28 = sub_24AFF321C(v25, v26, &v54);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v52 = v51;
    v53 = v27;

    v29 = sub_24B2D53C4();
    v31 = sub_24AFF321C(v29, v30, &v54);
    a3 = v27;

    *(v21 + 14) = v31;
    _os_log_impl(&dword_24AFD2000, v19, v20, "SettingsProviderProtocol: addSubscriptions\n- requestedSubscriptions: %s\n- subscriber: %s", v21, 0x16u);
    v32 = v44[0];
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v32, -1, -1);
    MEMORY[0x24C23D530](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v48);
  v33 = v49;
  v45(v50, v46);
  v34 = *(v33 + *(v47 + 36));
  v35 = v51;
  if (*(v34 + 16) && (v36 = sub_24B1833D4(), (v37 & 1) != 0))
  {
    v38 = *(v34 + 56);
    v39 = a3;
    v40 = *(v38 + 8 * v36);

    sub_24AFF8258(v33, &qword_27EFCE6C0, &qword_24B2F1F30);

    v42 = v40;
    a3 = v39;
    a1 = sub_24B25AA7C(v41, v42);
  }

  else
  {
    sub_24AFF8258(v33, &qword_27EFCE6C0, &qword_24B2F1F30);
  }

  sub_24B20BCF4(a1, v35, a3);
}

uint64_t sub_24B25C050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v7 = *v3;
  v8 = sub_24B2D3184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8, &qword_24B2F1890);
  MEMORY[0x28223BE20](v45);
  v47 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  v16 = sub_24B25FD78(&qword_27EFCE6E0, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);
  v17 = *(v16 + 24);
  v48 = v7;
  v43 = v17;
  v44 = v16;
  (v17)(v7);
  v18 = *(v9 + 16);
  v46 = v8;
  v18(v11, v15, v8);
  sub_24AFF8258(v15, &qword_27EFCE6D8, &qword_24B2F1890);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v52 = v42[0];
    *v21 = 136315394;
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
    v42[1] = v4;
    sub_24B25FD78(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
    v22 = sub_24B2D57F4();
    v24 = a3;
    v25 = sub_24AFF321C(v22, v23, &v52);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v50 = v49;
    v51 = v24;

    v26 = sub_24B2D53C4();
    v28 = sub_24AFF321C(v26, v27, &v52);
    a3 = v24;

    *(v21 + 14) = v28;
    _os_log_impl(&dword_24AFD2000, v19, v20, "SettingsProviderProtocol: addSubscriptions\n- requestedSubscriptions: %s\n- subscriber: %s", v21, 0x16u);
    v29 = v42[0];
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v29, -1, -1);
    MEMORY[0x24C23D530](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v46);
  v30 = v47;
  v43(v48, v44);
  v31 = *(v30 + *(v45 + 36));
  v32 = v49;
  if (*(v31 + 16) && (v33 = sub_24B1833D4(), (v34 & 1) != 0))
  {
    v35 = *(v31 + 56);
    v36 = a3;
    v37 = *(v35 + 8 * v33);

    sub_24AFF8258(v30, &qword_27EFCE6D8, &qword_24B2F1890);

    v39 = v37;
    a3 = v36;
    sub_24B25A590(v38, v39, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, sub_24B1B034C);
    a1 = v40;
  }

  else
  {
    sub_24AFF8258(v30, &qword_27EFCE6D8, &qword_24B2F1890);
  }

  sub_24B20D2FC(a1, v32, a3);
}

uint64_t sub_24B25C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v7 = *v3;
  v8 = sub_24B2D3184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  MEMORY[0x28223BE20](v47);
  v49 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v44 - v14;
  v16 = sub_24B25FD78(&qword_27EFCE688, type metadata accessor for SettingsFindMyServiceProvider, &protocol conformance descriptor for SettingsFindMyServiceProvider);
  v17 = *(v16 + 24);
  v50 = v7;
  v45 = v17;
  v46 = v16;
  (v17)(v7);
  v18 = *(v9 + 16);
  v48 = v8;
  v18(v11, v15, v8);
  sub_24AFF8258(v15, &qword_27EFCE680, &qword_24B2F17B8);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44[0] = v22;
    v54 = v22;
    *v21 = 136315394;
    sub_24B1D238C(v22, v23, v24);
    v25 = sub_24B2D57F4();
    v44[1] = v4;
    v27 = a3;
    v28 = sub_24AFF321C(v25, v26, &v54);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v52 = v51;
    v53 = v27;

    v29 = sub_24B2D53C4();
    v31 = sub_24AFF321C(v29, v30, &v54);
    a3 = v27;

    *(v21 + 14) = v31;
    _os_log_impl(&dword_24AFD2000, v19, v20, "SettingsProviderProtocol: addSubscriptions\n- requestedSubscriptions: %s\n- subscriber: %s", v21, 0x16u);
    v32 = v44[0];
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v32, -1, -1);
    MEMORY[0x24C23D530](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v48);
  v33 = v49;
  v45(v50, v46);
  v34 = *(v33 + *(v47 + 36));
  v35 = v51;
  if (*(v34 + 16) && (v36 = sub_24B1833D4(), (v37 & 1) != 0))
  {
    v38 = *(v34 + 56);
    v39 = a3;
    v40 = *(v38 + 8 * v36);

    sub_24AFF8258(v33, &qword_27EFCE680, &qword_24B2F17B8);

    v42 = v40;
    a3 = v39;
    a1 = sub_24B25AB58(v41, v42, sub_24B1BA8C8);
  }

  else
  {
    sub_24AFF8258(v33, &qword_27EFCE680, &qword_24B2F17B8);
  }

  sub_24B20E854(a1, v35, a3);
}

uint64_t sub_24B25C968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v7 = *v3;
  v8 = sub_24B2D3184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0, &qword_24B2F1800);
  MEMORY[0x28223BE20](v47);
  v49 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v44 - v14;
  v16 = sub_24B25FD78(&qword_27EFCE6A8, type metadata accessor for SettingsProvider, &protocol conformance descriptor for SettingsProvider);
  v17 = *(v16 + 24);
  v50 = v7;
  v45 = v17;
  v46 = v16;
  (v17)(v7);
  v18 = *(v9 + 16);
  v48 = v8;
  v18(v11, v15, v8);
  sub_24AFF8258(v15, &qword_27EFCE6A0, &qword_24B2F1800);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44[0] = v22;
    v54 = v22;
    *v21 = 136315394;
    sub_24B1D23E0(v22, v23, v24);
    v25 = sub_24B2D57F4();
    v44[1] = v4;
    v27 = a3;
    v28 = sub_24AFF321C(v25, v26, &v54);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v52 = v51;
    v53 = v27;

    v29 = sub_24B2D53C4();
    v31 = sub_24AFF321C(v29, v30, &v54);
    a3 = v27;

    *(v21 + 14) = v31;
    _os_log_impl(&dword_24AFD2000, v19, v20, "SettingsProviderProtocol: addSubscriptions\n- requestedSubscriptions: %s\n- subscriber: %s", v21, 0x16u);
    v32 = v44[0];
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v32, -1, -1);
    MEMORY[0x24C23D530](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v48);
  v33 = v49;
  v45(v50, v46);
  v34 = *(v33 + *(v47 + 36));
  v35 = v51;
  if (*(v34 + 16) && (v36 = sub_24B1833D4(), (v37 & 1) != 0))
  {
    v38 = *(v34 + 56);
    v39 = a3;
    v40 = *(v38 + 8 * v36);

    sub_24AFF8258(v33, &qword_27EFCE6A0, &qword_24B2F1800);

    v42 = v40;
    a3 = v39;
    a1 = sub_24B25AB58(v41, v42, sub_24B1BAA10);
  }

  else
  {
    sub_24AFF8258(v33, &qword_27EFCE6A0, &qword_24B2F1800);
  }

  sub_24B20FDCC(a1, v35, a3);
}

uint64_t FindMyAccountOverviewViewModel.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  FindMyAccountOverviewViewModel.init(dependencies:)(a1);
  return v2;
}

uint64_t sub_24B25CE04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  swift_getKeyPath();
  v13[0] = v0;
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v4 = v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState;
  v5 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  if (v5 == 1)
  {
    if (qword_27EFC7720 != -1)
    {
      swift_once();
    }

    v6 = sub_24B2D1454();
    v7 = __swift_project_value_buffer(v6, qword_27EFE4610);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v3, v7, v6);
    (*(v8 + 56))(v3, 0, 1, v6);
    v9 = sub_24B2D52D4();
    sub_24AFF8258(v3, &qword_27EFC8A68, &qword_24B2E36B0);
    return v9;
  }

  else
  {
    v11 = *(v4 + 40);
    v12 = *(v4 + 8);
    LOWORD(v13[0]) = __PAIR16__(BYTE1(*v4), *v4) & 0x101;
    v13[1] = v12;
    v13[2] = v5;
    v14 = *(v4 + 24);
    v15 = v11;
    return sub_24B216D60();
  }
}

uint64_t sub_24B25D038()
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  LODWORD(v1) = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__internalShareMyLocationEnabled);
  if (v1 == 2)
  {
    swift_getKeyPath();
    sub_24B2D2584();

    v2 = v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState;
    v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
    v3 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 1) | ((*(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 5) | (*(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 7) << 16)) << 32);
    v4 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
    v5 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8);
    v7 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
    v6 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 24);
    if (v7 == 1)
    {
      v8 = v1 | (v3 << 8);
      sub_24B2595A8(v4, v5, 1, v6, *(v2 + 32));
      sub_24B2595CC(v8, v5, 1);
      LOBYTE(v1) = 0;
    }

    else
    {
      v9 = v1 | (v3 << 8);
      sub_24B2595A8(v4, v5, v7, v6, *(v2 + 32));
      sub_24B2595CC(v9, v5, v7);
    }
  }

  return v1 & 1;
}

uint64_t sub_24B25D1E4()
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController);
  if (!v1)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);

  sub_24B2D2584();

  v2 = *(v1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  sub_24B21547C(v2, *(v1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state + 8));

  if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_24B25D34C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v22 - v2;
  v3 = type metadata accessor for SettingsPersonInfo(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  swift_getKeyPath();
  v29 = v0;
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v8 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v29 = v8;
  sub_24B25FD78(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);

  sub_24B2D2584();

  v10 = *(v8 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  v9 = *(v8 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state + 8);
  sub_24B21547C(v10, v9);

  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_24B207228(v10);
  v24 = *(v9 + 16);
  if (!v24)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_18:

    return v13;
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v23 = v9;
  while (v12 < *(v9 + 16))
  {
    v14 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v15 = *(v27 + 72);
    sub_24B25FDD8(v9 + v14 + v15 * v12, v7, type metadata accessor for SettingsPersonInfo);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = v25;
    sub_24B008890(&v7[*(v28 + 28)], v25, &qword_27EFCE670, &unk_24B2F17A0);
    v17 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
    v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
    sub_24AFF8258(v16, &qword_27EFCE670, &unk_24B2F17A0);

    if (v18 == 1)
    {
      result = sub_24B25FEA8(v7, type metadata accessor for SettingsPersonInfo);
      v9 = v23;
    }

    else
    {
      sub_24B25FE40(v7, v26, type metadata accessor for SettingsPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007B48(0, *(v13 + 16) + 1, 1);
        v13 = v29;
      }

      v9 = v23;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24B007B48((v20 > 1), v21 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v21 + 1;
      result = sub_24B25FE40(v26, v13 + v14 + v21 * v15, type metadata accessor for SettingsPersonInfo);
    }

    if (v24 == ++v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B25D7FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v22 - v2;
  v3 = type metadata accessor for SettingsPersonInfo(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  swift_getKeyPath();
  v29 = v0;
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v8 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v29 = v8;
  sub_24B25FD78(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);

  sub_24B2D2584();

  v10 = *(v8 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  v9 = *(v8 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state + 8);
  sub_24B21547C(v10, v9);

  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_24B207228(v10);
  v24 = *(v9 + 16);
  if (!v24)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_18:

    return v13;
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v23 = v9;
  while (v12 < *(v9 + 16))
  {
    v14 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v15 = *(v27 + 72);
    sub_24B25FDD8(v9 + v14 + v15 * v12, v7, type metadata accessor for SettingsPersonInfo);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = v25;
    sub_24B008890(&v7[*(v28 + 28)], v25, &qword_27EFCE670, &unk_24B2F17A0);
    v17 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
    v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
    sub_24AFF8258(v16, &qword_27EFCE670, &unk_24B2F17A0);

    if (v18 == 1)
    {
      sub_24B25FE40(v7, v26, type metadata accessor for SettingsPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007B48(0, *(v13 + 16) + 1, 1);
        v13 = v29;
      }

      v9 = v23;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24B007B48((v20 > 1), v21 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v21 + 1;
      result = sub_24B25FE40(v26, v13 + v14 + v21 * v15, type metadata accessor for SettingsPersonInfo);
    }

    else
    {
      result = sub_24B25FEA8(v7, type metadata accessor for SettingsPersonInfo);
      v9 = v23;
    }

    if (v24 == ++v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall FindMyAccountOverviewViewModel.onAppear()()
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController))
  {

    sub_24B2132FC();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_24B1376D8(&unk_285E48F10);
  sub_24B25C968(v3, v1, v2);

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = sub_24B1376EC(&unk_285E48F38);
  sub_24B25C50C(v6, v5, v4);
}

Swift::Void __swiftcall FindMyAccountOverviewViewModel.onDisappear()()
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController);
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_isAutomaticLocationsSubscriptionEnabled) = 0;
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);

    sub_24B25AC90(v3, v2);
    sub_24B25AFA8(*(v1 + 16), *(v1 + 24));
    sub_24B25B2C0(*(v1 + 16), *(v1 + 24));
  }

  sub_24B25B5D8(*(v0 + 64), *(v0 + 72));
  sub_24B25B8F0(*(v0 + 64), *(v0 + 72));
}

double sub_24B25DEE0@<D0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return sub_24B258A64(v3, v4, v5, v6, v7);
}

uint64_t sub_24B25DF9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v4;
  *(a1 + 112) = *(a2 + 32);
  sub_24B008890(a2, v6, &qword_27EFCEF58, &qword_24B2F3DD0);
  return sub_24B258AB4(v2, v3);
}

double sub_24B25E02C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v3 = v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState;
  v4 = *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v5 = *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8);
  v6 = *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  v7 = *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 24);
  v8 = *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v3 + 40);
  return sub_24B2595A8(v4, v5, v6, v7, v8);
}

double sub_24B25E0FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  v4 = v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState;
  v5 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v6 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8);
  v7 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  v8 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 24);
  v9 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 32);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = *(v4 + 40);
  return sub_24B2595A8(v5, v6, v7, v8, v9);
}

double sub_24B25E1CC(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B25E2A8(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v3 = *(a1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState);
  v4 = *(a1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8);
  v5 = *(a1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16);
  v6 = a2[1];
  *v2 = *a2;
  v2[1] = v6;
  *(v2 + 26) = *(a2 + 26);
  sub_24B008890(a2, &v8, &qword_27EFCEF60, &qword_24B2F3E00);
  return sub_24B2595CC(v3, v4, v5);
}

double sub_24B25E354()
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  return result;
}

double sub_24B25E400@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController);

  return result;
}

double sub_24B25E4B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B25E580()
{
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__internalShareMyLocationEnabled);
}

void sub_24B25E628(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__internalShareMyLocationEnabled);
  if (v2 != 2)
  {
    if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
    sub_24B2D2574();

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__internalShareMyLocationEnabled) = a1;
}

uint64_t sub_24B25E764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_24B2D5694();
  *(v5 + 32) = sub_24B2D5684();
  v7 = swift_task_alloc();
  *(v5 + 40) = v7;
  *v7 = v5;
  v7[1] = sub_24B25E82C;

  return FindMyAccountOverviewViewModel.toggleShareMyLocation(_:)(v6);
}

uint64_t sub_24B25E82C(char a1)
{
  *(*v1 + 49) = a1;

  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B25E970, v3, v2);
}

uint64_t sub_24B25E970()
{
  v1 = *(v0 + 49);

  if ((v1 & 1) == 0)
  {
    sub_24B25E628((*(v0 + 48) & 1) == 0);
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_24B25E9EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__internalShareMyLocationEnabled);
}

uint64_t FindMyAccountOverviewViewModel.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v8 = sub_24B2D24B4();
  v10 = v9;
  v30 = *(v5 + 8);
  v11 = *a1;
  v28 = a1[1];
  v29 = v11;
  v27 = a1[2];
  v30(v7, v4);
  *(v2 + 64) = v8;
  *(v2 + 72) = v10;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  sub_24B2D3174();
  v12 = v2 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState;
  *v12 = 0u;
  *(v12 + 16) = 1;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0;
  *(v2 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController) = 0;
  *(v2 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__internalShareMyLocationEnabled) = 2;
  sub_24B2D25B4();
  v13 = v28;
  *(v2 + 16) = v29;
  *(v2 + 32) = v13;
  *(v2 + 48) = v27;
  v14 = sub_24B215D40();
  v16 = v15;
  v18 = v17;
  type metadata accessor for SettingsPeopleListController(0);
  v19 = swift_allocObject();
  sub_24B2D24F4();
  v20 = sub_24B2D24B4();
  v22 = v21;
  v30(v7, v4);
  v19[2] = v20;
  v19[3] = v22;
  sub_24B2D3174();
  *(v19 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_isAutomaticLocationsSubscriptionEnabled) = 0;
  sub_24B2D25B4();
  v23 = (v19 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  *v23 = 0;
  v23[1] = 0;
  *(v19 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort) = 1;
  v24 = (v19 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v19 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__filterStorage) = 4;
  *(v19 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__familyFilterStorage) = 0;
  v19[4] = v14;
  v19[5] = v16;
  v19[6] = v18;

  sub_24B2056BC();

  swift_getKeyPath();
  v31 = v2;
  v32 = v19;
  v33 = v2;
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2574();

  sub_24B25EE9C(v25);
  return v2;
}

uint64_t type metadata accessor for FindMyAccountOverviewViewModel(uint64_t a1)
{
  result = qword_27EFCEF48;
  if (!qword_27EFCEF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24B25EE9C(__n128 a1)
{
  sub_24B2D2564();
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCEC58, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  sub_24B2D2574();
  sub_24B24A784(v2, v3);

  return result;
}

void *FindMyAccountOverviewViewModel.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[2];
  sub_24B2D5694();

  v9 = sub_24B2D5684();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v7;
  v10[6] = v6;
  sub_24B00A9A4(0, 0, v4, &unk_24B2F3C30, v10);

  sub_24B258AB4(v1[10], v1[11]);
  v12 = OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel_logger;
  v13 = sub_24B2D3184();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  sub_24B2595CC(*(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState), *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 8), *(v1 + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__settingsState + 16));

  v14 = OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel___observationRegistrar;
  v15 = sub_24B2D25C4();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  return v1;
}

uint64_t sub_24B25F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_24B2D5694();
  v6[5] = sub_24B2D5684();
  v8 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B25F2D0, v8, v7);
}

uint64_t sub_24B25F2D0()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_24B25B5D8(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t FindMyAccountOverviewViewModel.__deallocating_deinit()
{
  FindMyAccountOverviewViewModel.deinit();

  return swift_deallocClassInstance();
}

double sub_24B25F3A0@<D0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B25F450(a1);

  return result;
}

double sub_24B25F450@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCE690, type metadata accessor for SettingsFindMyServiceProvider, &protocol conformance descriptor for SettingsFindMyServiceProvider);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data);
  v5 = *(v1 + 16);
  swift_getKeyPath();
  sub_24B25FD78(&qword_27EFCE6B0, type metadata accessor for SettingsProvider, &protocol conformance descriptor for SettingsProvider);
  sub_24B2D2584();

  v6 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  v7 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  v8 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
  v9 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
  v10 = ((*(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32) | (*(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 34) << 16)) >> 16) & 1;
  if (v7 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  }

  if (v7 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  }

  if (v7 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
  }

  if (v7 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
  }

  if (v7 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v5 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32);
  }

  if (v7 == 1)
  {
    LOBYTE(v10) = 0;
  }

  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *a1 = v10;
  *(a1 + 1) = v4;
  return sub_24B247D44(v6, v7, v8, v9);
}

double sub_24B25F5D0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v6 = sub_24B2D5684();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_24B00A9A4(0, 0, v3, &unk_24B2F3E10, v7);

  return result;
}

uint64_t sub_24B25F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_24B2D5694();
  *(v4 + 48) = sub_24B2D5684();
  v6 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B25F7E8, v6, v5);
}

uint64_t sub_24B25F7E8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24B25EE9C(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FindMyAccountOverviewViewModel.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v0);
  return sub_24B2D6124();
}

uint64_t sub_24B25F8C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v3);
  result = sub_24B2D6124();
  *a1 = result;
  return result;
}

uint64_t sub_24B25F930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B25F234(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24B25F9F8(uint64_t a1, __n128 a2)
{
  *(a1 + 8) = sub_24B25FD78(&qword_27EFCEF30, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  result = sub_24B25FD78(&qword_27EFCEF38, type metadata accessor for FindMyAccountOverviewViewModel, &protocol conformance descriptor for FindMyAccountOverviewViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B25FACC(uint64_t a1)
{
  result = sub_24B2D3184();
  if (v2 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double (*sub_24B25FC04())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_24B25FC78;
}

uint64_t sub_24B25FC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B25F750(a1, v4, v5, v6);
}

void sub_24B25FD34()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore30FindMyAccountOverviewViewModel__peopleController) = *(v0 + 24);
}

uint64_t sub_24B25FD78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B25FDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B25FE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B25FEA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B25FF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a1;
  v9 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8018, &qword_24B2DFC78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  v16 = a3 & 1;
  if (v9 == 2)
  {
    v16 = 2;
  }

  HIDWORD(v22) = v16;
  (*(v11 + 16))(v15, a4, v10, v13);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v15, v10);
  v19 = v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v23;
  *v19 = v23;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  *(a5 + 24) = sub_24B261970;
  *(a5 + 32) = v18;
  *a5 = v20;
  *(a5 + 8) = a2;
  *(a5 + 16) = BYTE4(v22);
  return swift_bridgeObjectRetain_n();
}

uint64_t FindMyAccountOverviewViewModel.switchMeDeviceToThisDevice()()
{
  v1[12] = v0;
  v1[13] = sub_24B2D5694();
  v1[14] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x2822009F8](sub_24B260174, v3, v2);
}

uint64_t sub_24B260174()
{
  v3 = (*(*(v0 + 96) + 48) + **(*(v0 + 96) + 48));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24B260268;

  return v3(v0 + 56);
}

uint64_t sub_24B260268()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B260388, v3, v2);
}

uint64_t sub_24B260388(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v1[18] = v3;
  v1[19] = v2;
  v4 = v1[9];
  v5 = v1[10];
  v1[20] = v4;
  v1[21] = v5;
  v6 = v1[11];
  v1[22] = v6;
  if (v2)
  {
    v1[2] = v3;
    v1[3] = v2;
    v1[4] = v4;
    v1[5] = v5;
    v1[6] = v6;
    v1[23] = sub_24B2D5684();
    v8 = sub_24B2D5604();
    v1[24] = v8;
    v1[25] = v7;

    return MEMORY[0x2822009F8](sub_24B260538, v8, v7);
  }

  else
  {

    v9 = sub_24B2D3164();
    v10 = sub_24B2D5934();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AFD2000, v9, v10, "switchMeDeviceToThisDevice succeeded", v11, 2u);
      MEMORY[0x24C23D530](v11, -1, -1);

      sub_24B258AB4(v3, 0);
    }

    else
    {
    }

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_24B260538(uint64_t a1)
{
  v2 = v1[12];
  v3 = sub_24B2D5684();
  v1[26] = v3;
  v4 = swift_task_alloc();
  v1[27] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1 + 2;
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v1;
  v5[1] = sub_24B260648;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000012, 0x800000024B2DD780, sub_24B2615F8, v4, v7);
}

uint64_t sub_24B260648()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_24B2607A8, v3, v2);
}

uint64_t sub_24B2607A8()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_24B26080C, v1, v2);
}

uint64_t sub_24B26080C()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_24B258AB4(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t FindMyAccountOverviewViewModel.toggleShareMyLocation(_:)(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 232) = a1;
  *(v2 + 104) = sub_24B2D5694();
  *(v2 + 112) = sub_24B2D5684();
  v4 = sub_24B2D5604();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return MEMORY[0x2822009F8](sub_24B260940, v4, v3);
}

uint64_t sub_24B260940()
{
  v4 = (*(*(v0 + 96) + 32) + **(*(v0 + 96) + 32));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24B260A38;
  v2 = *(v0 + 232);

  return v4(v0 + 56, v2);
}

uint64_t sub_24B260A38()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B260B58, v3, v2);
}

uint64_t sub_24B260B58(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v1[18] = v3;
  v1[19] = v2;
  v4 = v1[9];
  v5 = v1[10];
  v1[20] = v4;
  v1[21] = v5;
  v6 = v1[11];
  v1[22] = v6;
  if (v2)
  {
    v1[2] = v3;
    v1[3] = v2;
    v1[4] = v4;
    v1[5] = v5;
    v1[6] = v6;
    v1[23] = sub_24B2D5684();
    v8 = sub_24B2D5604();
    v1[24] = v8;
    v1[25] = v7;

    return MEMORY[0x2822009F8](sub_24B260D14, v8, v7);
  }

  else
  {

    v9 = sub_24B2D3164();
    v10 = sub_24B2D5934();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AFD2000, v9, v10, "toggleShareMyLocation succeeded", v11, 2u);
      MEMORY[0x24C23D530](v11, -1, -1);

      sub_24B258AB4(v3, 0);
    }

    else
    {
    }

    v12 = v1[1];
    v13 = v1[19] == 0;

    return v12(v13);
  }
}

uint64_t sub_24B260D14(uint64_t a1)
{
  v2 = v1[12];
  v3 = sub_24B2D5684();
  v1[26] = v3;
  v4 = swift_task_alloc();
  v1[27] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1 + 2;
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v1;
  v5[1] = sub_24B260E24;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000012, 0x800000024B2DD780, sub_24B2619DC, v4, v7);
}

uint64_t sub_24B260E24()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_24B260F84, v3, v2);
}

uint64_t sub_24B260F84()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_24B260FE8, v1, v2);
}

uint64_t sub_24B260FE8()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_24B258AB4(v2, v1);
  v3 = v0[1];
  v4 = v0[19] == 0;

  return v3(v4);
}

uint64_t FindMyAccountOverviewViewModel.showAsyncAlert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 56) = a1;
  *(v4 + 80) = sub_24B2D5694();
  *(v4 + 88) = sub_24B2D5684();
  v7 = sub_24B2D5604();
  *(v4 + 96) = v7;
  *(v4 + 104) = v6;

  return MEMORY[0x2822009F8](sub_24B261134, v7, v6);
}

uint64_t sub_24B261134(uint64_t a1)
{
  v9 = *(v1 + 64);
  v2 = sub_24B2D5684();
  *(v1 + 112) = v2;
  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v1 + 16;
  v4 = swift_task_alloc();
  *(v1 + 128) = v4;
  *v4 = v1;
  v4[1] = sub_24B261250;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v5, v2, v7, 0xD000000000000012, 0x800000024B2DD780, sub_24B2617AC, v3, v6);
}

uint64_t sub_24B261250()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24B2613B0, v3, v2);
}

uint64_t sub_24B2613B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B261410(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = *a3;
  v16 = a3[1];
  v17 = v7;
  v8 = *(a3 + 4);
  MEMORY[0x28223BE20](isCurrentExecutor);
  v13 = a1;
  sub_24B0912CC(&v17, v18);
  sub_24B0912CC(&v16, v18);
  v9 = sub_24B0D5860(sub_24B261950, &v12, v8);
  v18[0] = v17;
  v18[1] = v16;
  v19 = v9;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v13 = a2;
  v14 = v18;
  v15 = a2;
  sub_24B2618B8();
  sub_24B2D2574();
}

uint64_t sub_24B261600(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3[1];
  v17 = *a3;
  v18 = v9;
  v19 = *(a3 + 4);
  v10 = type metadata accessor for AlertInfo(0, a4, v7, v8);
  AlertInfo.resolved(with:)(a1, v10, v15, v11, v12);
  v17 = v15[0];
  v18 = v15[1];
  v19 = v16;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24B2618B8();
  sub_24B2D2574();
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore0aB24AccountOverviewViewModelC12ActionResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B2617D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B261820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_24B26187C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_24B2618B8()
{
  result = qword_27EFCEC58;
  if (!qword_27EFCEC58)
  {
    type metadata accessor for FindMyAccountOverviewViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEC58);
  }

  return result;
}

double static FindMyAccountOverviewViewModel.Dependencies.live()@<D0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v1 = sub_24B2D2674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D2694();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = sub_24B2D3184();
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v47 = &v40 - v11;
  sub_24B2D3174();
  v12 = *MEMORY[0x277D09060];
  v13 = *(v2 + 104);
  v13(v4, v12, v1);
  sub_24B2D26A4();
  sub_24B2D2AE4();
  swift_allocObject();
  v45 = sub_24B2D2B04();
  v13(v4, v12, v1);
  sub_24B2D26A4();
  swift_allocObject();
  v14 = sub_24B2D2B04();
  v50 = &unk_24B2F31E8;
  v51 = v14;
  v52 = &unk_24B2F31F8;
  v53 = v14;
  type metadata accessor for SettingsProvider(0);
  swift_allocObject();

  v15 = SettingsProvider.init(dependencies:)(&v50);
  v42 = v9;
  v43 = v15;
  sub_24B2D3174();
  v16 = v44;
  v17 = *(v44 + 32);
  v18 = v49;
  v19 = v9;
  v20 = v46;
  v17(v49, v19, v46);
  v41 = v17;
  v21 = v16;
  v22 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v23 = v22 + v6;
  v24 = swift_allocObject();
  v25 = v20;
  v17((v24 + v22), v18, v20);
  v50 = &unk_24B2F2508;
  v51 = v24;
  type metadata accessor for SettingsFindMyServiceProvider(0);
  swift_allocObject();
  v40 = SettingsFindMyServiceProvider.init(dependencies:)(&v50);
  v26 = v42;
  v27 = v47;
  v28 = v25;
  (*(v21 + 16))(v42, v47, v25);
  v29 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v22;
  v32 = v41;
  v41((v30 + v22), v26, v28);
  v33 = v45;
  *(v30 + v29) = v45;
  v34 = v49;
  v32(v49, v27, v28);
  v35 = v32;
  v36 = swift_allocObject();
  v35(v36 + v31, v34, v28);
  *(v36 + v29) = v33;
  v37 = v48;
  v38 = v40;
  *v48 = v43;
  v37[1] = v38;
  v37[2] = &unk_24B2F3FF0;
  v37[3] = v30;
  v37[4] = &unk_24B2F4000;
  v37[5] = v36;

  return result;
}

uint64_t sub_24B261ED8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B261F7C, 0, 0);
}

uint64_t sub_24B261F7C()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_24AFD2000, v1, v2, "ShareMyLocation toggled, enabled?: %{BOOL}d", v4, 8u);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v5 = *(v0 + 64);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_24B2620A8;

  return MEMORY[0x28215FA58]((v5 & 1) == 0);
}

uint64_t sub_24B2620A8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24B2622A4;
  }

  else
  {
    v2 = sub_24B2621BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2621BC()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "ShareMyLocation toggle successful", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B2622A4()
{
  if (*(v0 + 64) != 1)
  {
    if (qword_27EFC7720 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (qword_27EFC7720 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_5:
  v1 = *(v0 + 40);
  v2 = sub_24B2D1454();
  v3 = __swift_project_value_buffer(v2, qword_27EFE4610);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v1, v3, v2);
  (*(v4 + 56))(v1, 0, 1, v2);
  v5 = sub_24B2D52D4();
  v7 = v6;
  sub_24AFF8258(*(v0 + 40), &qword_27EFC8A68, &qword_24B2E36B0);
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 40);
  v9 = sub_24B2D1454();
  v10 = __swift_project_value_buffer(v9, qword_27EFE4610);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  (*(v11 + 56))(v8, 0, 1, v9);
  v12 = sub_24B2D52D4();
  v14 = v13;
  sub_24AFF8258(v8, &qword_27EFC8A68, &qword_24B2E36B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF68, &qword_24B2F4008);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  if (qword_27EFC7630 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 56);
  v17 = *algn_27EFCB2B8;
  v18 = byte_27EFCB2C0;
  *(v15 + 32) = qword_27EFCB2B0;
  *(v15 + 40) = v17;
  *(v15 + 48) = v18;

  v19 = v16;
  v20 = sub_24B2D3164();
  v21 = sub_24B2D5934();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 56);
  if (v22)
  {
    v34 = v14;
    v24 = v7;
    v25 = v5;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v23;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_24AFD2000, v20, v21, "ShareMyLocation toggle failed with error: %@", v26, 0xCu);
    sub_24AFF8258(v27, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v27, -1, -1);
    v30 = v26;
    v5 = v25;
    v7 = v24;
    v14 = v34;
    MEMORY[0x24C23D530](v30, -1, -1);
  }

  else
  {
  }

  v31 = *(v0 + 16);
  *v31 = v5;
  v31[1] = v7;
  v31[2] = v12;
  v31[3] = v14;
  v31[4] = v15;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_24B26277C(uint64_t a1, char a2)
{
  v6 = *(sub_24B2D3184() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AFFD370;

  return sub_24B261ED8(a1, a2, v2 + v7, v8);
}

uint64_t sub_24B262898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  v3[5] = swift_task_alloc();
  v4 = sub_24B2D2764();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88B8, &qword_24B2E1568);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2629CC, 0, 0);
}

uint64_t sub_24B2629CC()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "Use This Device As My Location pressed", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_24B262AE0;
  v5 = *(v0 + 64);

  return MEMORY[0x28215FB20](v5);
}

uint64_t sub_24B262AE0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24B263270;
  }

  else
  {
    v2 = sub_24B262BF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B262BF4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_24B2D2754();
  (*(v4 + 8))(v1, v3);
  v5 = sub_24B2D2834();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v2, 1, v5);
  v8 = v0[9];
  if (v7 == 1)
  {
    sub_24AFF8258(v0[9], &qword_27EFC88B8, &qword_24B2E1568);
    v9 = sub_24B2D3164();
    v10 = sub_24B2D5914();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AFD2000, v9, v10, "Me device switch failed, no this device", v11, 2u);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    if (qword_27EFC7720 != -1)
    {
      swift_once();
    }

    v12 = v0[5];
    v13 = sub_24B2D1454();
    v14 = __swift_project_value_buffer(v13, qword_27EFE4610);
    v15 = *(v13 - 8);
    v16 = *(v15 + 16);
    v16(v12, v14, v13);
    v17 = *(v15 + 56);
    v17(v12, 0, 1, v13);
    v18 = sub_24B2D52D4();
    v34 = v19;
    v35 = v18;
    sub_24AFF8258(v12, &qword_27EFC8A68, &qword_24B2E36B0);
    v16(v12, v14, v13);
    v17(v12, 0, 1, v13);
    v20 = sub_24B2D52D4();
    v22 = v21;
    sub_24AFF8258(v12, &qword_27EFC8A68, &qword_24B2E36B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF68, &qword_24B2F4008);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24B2DE430;
    if (qword_27EFC7630 != -1)
    {
      v33 = v23;
      swift_once();
      v23 = v33;
    }

    v24 = v0[2];
    v25 = *algn_27EFCB2B8;
    v26 = byte_27EFCB2C0;
    *(v23 + 32) = qword_27EFCB2B0;
    *(v23 + 40) = v25;
    *(v23 + 48) = v26;
    *v24 = v35;
    v24[1] = v34;
    v24[2] = v20;
    v24[3] = v22;
    v24[4] = v23;

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = sub_24B2D2814();
    v31 = v30;
    v0[12] = v30;
    (*(v6 + 8))(v8, v5);
    v32 = swift_task_alloc();
    v0[13] = v32;
    *v32 = v0;
    v32[1] = sub_24B263058;

    return MEMORY[0x28215FB70](v29, v31);
  }
}

uint64_t sub_24B263058()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24B263518;
  }

  else
  {

    v2 = sub_24B263174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B263174()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "Successfully set activeLocationSharing device to this device", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B263270()
{
  v20 = v0[11];
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24B2D1454();
  v3 = __swift_project_value_buffer(v2, qword_27EFE4610);
  v4 = *(v2 - 8);
  v5 = *(v4 + 16);
  v5(v1, v3, v2);
  v6 = *(v4 + 56);
  v6(v1, 0, 1, v2);
  v7 = sub_24B2D52D4();
  v18 = v8;
  v19 = v7;
  sub_24AFF8258(v1, &qword_27EFC8A68, &qword_24B2E36B0);
  v5(v1, v3, v2);
  v6(v1, 0, 1, v2);
  v9 = sub_24B2D52D4();
  v11 = v10;
  sub_24AFF8258(v1, &qword_27EFC8A68, &qword_24B2E36B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF68, &qword_24B2F4008);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24B2DE430;
  if (qword_27EFC7630 != -1)
  {
    swift_once();
  }

  v13 = v0[2];
  v14 = *algn_27EFCB2B8;
  v15 = byte_27EFCB2C0;
  *(v12 + 32) = qword_27EFCB2B0;
  *(v12 + 40) = v14;
  *(v12 + 48) = v15;

  *v13 = v19;
  v13[1] = v18;
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = v12;

  v16 = v0[1];

  return v16();
}

uint64_t sub_24B263518()
{

  v20 = v0[14];
  if (qword_27EFC7720 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24B2D1454();
  v3 = __swift_project_value_buffer(v2, qword_27EFE4610);
  v4 = *(v2 - 8);
  v5 = *(v4 + 16);
  v5(v1, v3, v2);
  v6 = *(v4 + 56);
  v6(v1, 0, 1, v2);
  v7 = sub_24B2D52D4();
  v18 = v8;
  v19 = v7;
  sub_24AFF8258(v1, &qword_27EFC8A68, &qword_24B2E36B0);
  v5(v1, v3, v2);
  v6(v1, 0, 1, v2);
  v9 = sub_24B2D52D4();
  v11 = v10;
  sub_24AFF8258(v1, &qword_27EFC8A68, &qword_24B2E36B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF68, &qword_24B2F4008);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24B2DE430;
  if (qword_27EFC7630 != -1)
  {
    swift_once();
  }

  v13 = v0[2];
  v14 = *algn_27EFCB2B8;
  v15 = byte_27EFCB2C0;
  *(v12 + 32) = qword_27EFCB2B0;
  *(v12 + 40) = v14;
  *(v12 + 48) = v15;

  *v13 = v19;
  v13[1] = v18;
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = v12;

  v16 = v0[1];

  return v16();
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24B263864(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B262898(a1, v1 + v5, v6);
}

uint64_t sub_24B263994()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFE4610);
  __swift_project_value_buffer(v0, qword_27EFE4610);
  type metadata accessor for SettingsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

void sub_24B263A78(uint64_t a1)
{
  sub_24B26C70C(319, &qword_27EFCEF88, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_24B0BA5A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B263B48@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for DismissButton(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF90, &qword_24B2F40B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  sub_24B263F20(&v24 - v5);
  v7 = sub_24B2D5024();
  v9 = v8;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF98, &qword_24B2F40C0) + 36)];
  sub_24B2D32C4();
  v11 = *(v1 + 20);
  *&v3[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  swift_storeEnumTagMultiPayload();
  v12 = sub_24B26DE10(&qword_27EFCD758, type metadata accessor for DismissButton, &protocol conformance descriptor for DismissButton);
  sub_24B26BF58(v12, v13, v14);
  sub_24B2D46D4();
  sub_24B26C2D4(v3, type metadata accessor for DismissButton);
  LOBYTE(v11) = sub_24B2D42F4();

  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEFA8, &qword_24B2F4100) + 36)];
  *v15 = v11;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEFB0, &qword_24B2F4108) + 36)];
  *v16 = v7;
  v16[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF70, &unk_24B2F4030);
  sub_24B2D4F44();
  v17 = v25;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24B26BFAC;
  *(v18 + 24) = v17;
  v19 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEFB8, &qword_24B2F4110) + 36)];
  *v19 = sub_24B26BFB0;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  sub_24B2D4F44();
  v20 = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24B26BFB8;
  *(v21 + 24) = v20;
  v22 = &v6[*(v4 + 36)];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = sub_24B26DE68;
  *(v22 + 3) = v21;
  sub_24B26BFEC(&qword_27EFCEFC0, &qword_27EFCEF90, &qword_24B2F40B8, sub_24B26BFBC);
  sub_24B2D4874();
  return sub_24AFF8258(v6, &qword_27EFCEF90, &qword_24B2F40B8);
}

uint64_t sub_24B263F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF70, &unk_24B2F4030);
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - v6;
  v8 = sub_24B2D2DE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v72 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v17 = type metadata accessor for InteractiveMapV2(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEFF0, &qword_24B2F4120);
  MEMORY[0x28223BE20](v74);
  v75 = &v69 - v20;
  sub_24B2D4F44();
  v21 = *(v81 + 16);

  v71 = v16;
  sub_24B2D2DD4();
  if (v21 == 1)
  {
    sub_24B2D2D54();
    v9[1](v13, v8);
  }

  sub_24B2D4F44();
  v70 = sub_24B26E640();

  sub_24B2D4F44();
  v69 = sub_24B26E85C();

  v76 = v2;
  sub_24B2D4F54();
  swift_getKeyPath();
  sub_24B2D4F74();

  (*(v73 + 8))(v7, v5);
  *v19 = 0;
  v22 = v19 + v17[8];
  sub_24B2D2DD4();
  (v9[2])(v72, v13, v8);
  sub_24B2D4CC4();
  v72 = v9;
  v73 = v8;
  v9[1](v13, v8);
  v23 = v19 + v17[9];
  v79 = 0uLL;
  LOBYTE(v80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A0, &qword_24B2EE830);
  sub_24B2D4CC4();
  v24 = v82;
  v25 = *(&v82 + 1);
  *v23 = v81;
  v23[16] = v24;
  *(v23 + 3) = v25;
  type metadata accessor for CustomMapStyleLoader(0);
  v26 = swift_allocObject();
  v27 = objc_opt_self();
  v28 = [v27 standardUserDefaults];
  v29 = sub_24B166FFC();

  if (v29 == 2)
  {
    v30 = [v27 standardUserDefaults];
    v29 = sub_24B166D7C(0);

    v31 = (v29 >> 8) & 1;
    v32 = HIWORD(v29) & 1;
  }

  else
  {
    v31 = ((v29 & 0xFFFFFF) >> 8) & 1;
    v32 = ((v29 & 0xFFFFFF) >> 16) & 1;
  }

  v33 = v71;
  v34 = (v19 + v17[10]);
  v26[16] = v29 & 1;
  v26[17] = v31;
  v26[18] = v32;
  sub_24B2D25B4();
  *&v79 = v26;
  sub_24B2D4CC4();
  v35 = *(&v81 + 1);
  *v34 = v81;
  v34[1] = v35;
  v36 = v19 + v17[11];
  v37 = *(MEMORY[0x277CD4BB0] + 16);
  v79 = *MEMORY[0x277CD4BB0];
  v80 = v37;
  type metadata accessor for MKMapRect(0);
  sub_24B2D4CC4();
  v38 = v83;
  v39 = v82;
  *v36 = v81;
  *(v36 + 1) = v39;
  *(v36 + 4) = v38;
  v40 = v19 + v17[12];
  LOBYTE(v79) = 1;
  sub_24B2D4CC4();
  v41 = *(&v81 + 1);
  *v40 = v81;
  *(v40 + 1) = v41;
  v42 = v19 + v17[13];
  LOBYTE(v79) = 0;
  sub_24B2D4CC4();
  v43 = *(&v81 + 1);
  *v42 = v81;
  *(v42 + 1) = v43;
  v44 = v19 + v17[14];
  *v44 = swift_getKeyPath();
  *(v44 + 4) = 0;
  v45 = v19 + v17[15];
  *v45 = swift_getKeyPath();
  *(v45 + 4) = 0;
  v46 = v19 + v17[16];
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = v19 + v17[17];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  sub_24AFF8258(v22, &qword_27EFCA028, &qword_24B2E3D70);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70) + 28)) = 0;
  (*(v72 + 4))(v22, v33, v73);
  v48 = v69;
  v19[1] = v70;
  v19[2] = v48;
  sub_24B0391CC(v78, v19 + v17[7], &qword_27EFCD8A8, &unk_24B2EE8E0);
  v49 = type metadata accessor for EmbeddedPeopleInteractiveMapView(0);
  v50 = v76;
  v51 = v76 + *(v49 + 20);
  v52 = *v51;
  v53 = *(v51 + 8);
  LOBYTE(v79) = v52;
  *(&v79 + 1) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CF4();
  v54 = v81;
  LOBYTE(v42) = v82;
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 32) = v42;
  v56 = v75;
  sub_24B26C7F8(v19, v75, type metadata accessor for InteractiveMapV2);
  v57 = (v56 + *(v74 + 36));
  *v57 = sub_24B26C2C8;
  v57[1] = v55;
  sub_24B26C2D4(v19, type metadata accessor for InteractiveMapV2);
  v58 = sub_24B2D3DF4();
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEFE0, &qword_24B2F4118);
  v60 = v77;
  v61 = (v77 + *(v59 + 36));
  *v61 = sub_24B2D5054();
  v61[1] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF028, &qword_24B2F4210);
  sub_24B26493C(v50, v61 + *(v63 + 44));

  v64 = sub_24B2D3424();
  v65 = MEMORY[0x24C23AB40]((2 * v64));
  v66 = sub_24B2D3814();
  v67 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF018, &unk_24B2F4130) + 36);
  *v67 = v66;
  *(v67 + 1) = 0;
  v67[16] = 0;
  v67[17] = v65;
  *(v67 + 3) = v58;
  return sub_24B0391CC(v56, v60, &qword_27EFCEFF0, &qword_24B2F4120);
}

uint64_t sub_24B2647AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24B008890(a1, &v6 - v3, &qword_27EFCD8B0, &unk_24B2F42D0);
  return sub_24B26EE88(v4);
}

double sub_24B264858(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA3D8, &qword_24B2F3A10);
  sub_24B2D4E44();

  return result;
}

double sub_24B26493C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF030, &qword_24B2F4218);
  MEMORY[0x28223BE20](v58);
  v60 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (v52 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF70, &unk_24B2F4030);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF038, &qword_24B2F4220);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (v52 - v14);
  sub_24B2D5694();
  v57 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4F44();
  sub_24B26F78C(v15);

  sub_24B2D4F54();
  swift_getKeyPath();
  v16 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  sub_24B2D4F74();

  v17 = *(v8 + 8);
  v52[1] = v8 + 8;
  v56 = v17;
  v17(v10, v7);
  sub_24B2D4F44();
  v18 = sub_24B271C44();

  sub_24B2D4F44();
  v19 = sub_24B271F8C();
  v21 = v20;

  *(v15 + v16[5]) = 0;
  v22 = (v15 + v16[6]);
  *v22 = &unk_24B2F4228;
  v22[1] = 0;
  *(v15 + v16[8]) = v18;
  v23 = (v15 + v16[9]);
  *v23 = v19;
  v23[1] = v21;
  v24 = v16[10];
  *(v15 + v24) = swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF040, &qword_24B2F4260);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v24) = sub_24B2D42E4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF048, &qword_24B2F4268);
  v25 = v15 + *(v54 + 36);
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  LOBYTE(v24) = sub_24B2D4314();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF050, &qword_24B2F4270);
  v26 = v15 + *(v53 + 36);
  *v26 = v24;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_24B2D4F44();
  sub_24B26F78C(v6);

  v27 = (a1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView(0) + 20));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v63) = v28;
  v64 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CD4();
  LOBYTE(v18) = v62;
  sub_24B2D4F44();
  v30 = v63;
  sub_24B2D4F54();
  swift_getKeyPath();
  sub_24B2D4F74();

  v56(v10, v7);
  sub_24B2D4F44();
  v31 = sub_24B271C44();

  sub_24B2D4F44();
  v32 = sub_24B271F8C();
  v34 = v33;

  *(v6 + v16[5]) = (v18 & 1) == 0;
  v35 = (v6 + v16[6]);
  *v35 = &unk_24B2F4280;
  v35[1] = v30;
  *(v6 + v16[8]) = v31;
  v36 = (v6 + v16[9]);
  *v36 = v32;
  v36[1] = v34;
  v37 = v16[10];
  *(v6 + v37) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v38 = sub_24B2D42E4();
  v39 = v6 + *(v54 + 36);
  *v39 = v38;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  v39[40] = 1;
  v40 = sub_24B2D4314();
  v41 = v6 + *(v53 + 36);
  *v41 = v40;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  v42 = sub_24B2D5064();
  v44 = v43;
  v45 = v6 + *(v58 + 36);
  sub_24B2651BC(v45);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF058, &unk_24B2F4F10) + 36));
  *v46 = v42;
  v46[1] = v44;
  v47 = v59;
  sub_24B008890(v15, v59, &qword_27EFCF038, &qword_24B2F4220);
  v48 = v60;
  sub_24B008890(v6, v60, &qword_27EFCF030, &qword_24B2F4218);
  v49 = v61;
  sub_24B008890(v47, v61, &qword_27EFCF038, &qword_24B2F4220);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF060, &unk_24B2F4290);
  sub_24B008890(v48, v49 + *(v50 + 48), &qword_27EFCF030, &qword_24B2F4218);
  sub_24AFF8258(v6, &qword_27EFCF030, &qword_24B2F4218);
  sub_24AFF8258(v15, &qword_27EFCF038, &qword_24B2F4220);
  sub_24AFF8258(v48, &qword_27EFCF030, &qword_24B2F4218);
  sub_24AFF8258(v47, &qword_27EFCF038, &qword_24B2F4220);

  return result;
}

uint64_t sub_24B26500C()
{
  sub_24B2D5694();
  *(v0 + 16) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2650A0, v2, v1);
}

uint64_t sub_24B2650A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B265100(uint64_t a1)
{
  v1[2] = sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_24B02CD04;

  return sub_24B272214(a1);
}

uint64_t sub_24B2651BC@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4FF4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F08, &qword_24B2E4320) + 56)) = 256;
  v2 = sub_24B2D5064();
  v4 = v3;
  sub_24B265360(&v21);
  v5 = v21;
  v19 = v23;
  v20 = v22;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF068, &unk_24B2F42A0) + 36);
  *v6 = v2;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 40) = v19;
  *(v6 + 24) = v20;
  LOBYTE(v2) = sub_24B2D4304();
  sub_24B2D32F4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF070, &unk_24B2F4F30) + 36);
  *v15 = v2;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_24B2D3804();
  LOBYTE(v4) = sub_24B2D42F4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF078, &unk_24B2F42B0);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v4;
  return result;
}

double sub_24B265360@<D0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFF8, &qword_24B2EAC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24B2F4020;
  *(v2 + 32) = sub_24B2D4AE4();
  *(v2 + 40) = sub_24B2D4B04();
  *(v2 + 48) = sub_24B2D4B04();
  *(v2 + 56) = sub_24B2D4B04();
  *(v2 + 64) = sub_24B2D4B04();
  sub_24B2D5164();
  sub_24B2D5174();
  MEMORY[0x24C23B790](v2);
  sub_24B2D3634();

  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_24B2654A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0E0, &qword_24B2F4360);
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0E8, &qword_24B2F4368);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0F0, &qword_24B2F4370);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  sub_24B2D5694();
  v25[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_24B2D3E04();
  *(v17 + 1) = 0x4010000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0F8, &qword_24B2F4378);
  sub_24B2658CC(a1, &v17[*(v18 + 44)]);
  v19 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  if (*(a1 + *(v19 + 20)))
  {
    v20 = 1;
    v21 = v26;
  }

  else
  {
    v25[0] = v25;
    MEMORY[0x28223BE20](v19);
    v25[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF100, &qword_24B2F4380);
    sub_24B039184(&qword_27EFCF108, &qword_27EFCF100, &qword_24B2F4380, MEMORY[0x277CDD828]);
    sub_24B2D3F94();
    v21 = v26;
    *&v5[*(v26 + 36)] = 0x3FF0000000000000;
    sub_24B0391CC(v5, v11, &qword_27EFCF0E0, &qword_24B2F4360);
    v20 = 0;
  }

  (*(v3 + 56))(v11, v20, 1, v21);
  sub_24B008890(v17, v14, &qword_27EFCF0F0, &qword_24B2F4370);
  sub_24B008890(v11, v8, &qword_27EFCF0E8, &qword_24B2F4368);
  v22 = v27;
  sub_24B008890(v14, v27, &qword_27EFCF0F0, &qword_24B2F4370);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF110, &qword_24B2F4388);
  sub_24B008890(v8, v22 + *(v23 + 48), &qword_27EFCF0E8, &qword_24B2F4368);
  sub_24AFF8258(v11, &qword_27EFCF0E8, &qword_24B2F4368);
  sub_24AFF8258(v17, &qword_27EFCF0F0, &qword_24B2F4370);
  sub_24AFF8258(v8, &qword_27EFCF0E8, &qword_24B2F4368);
  sub_24AFF8258(v14, &qword_27EFCF0F0, &qword_24B2F4370);

  return result;
}

double sub_24B2658CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF268, &qword_24B2F45E8);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = (&v62 - v4);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF270, &qword_24B2F45F0);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF278, &qword_24B2F45F8);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v62 - v11;
  v80 = sub_24B2D3874();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24B2D3744();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF280, &qword_24B2F4600);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v15 = &v62 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF288, &qword_24B2F4608);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF290, &qword_24B2F4610);
  MEMORY[0x28223BE20](v70);
  v77 = &v62 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF298, &qword_24B2F4618);
  MEMORY[0x28223BE20](v75);
  v83 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = &v62 - v20;
  MEMORY[0x28223BE20](v21);
  v81 = &v62 - v22;
  sub_24B2D5694();
  v82 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF2A0, &qword_24B2F4620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF2A8, &qword_24B2F4628);
  sub_24B26D5C4();
  sub_24B039184(&qword_27EFCF2D8, &qword_27EFCF2A8, &qword_24B2F4628, MEMORY[0x277CDF038]);
  v25 = a1;
  sub_24B2D44C4();
  v26 = v67;
  sub_24B2D3734();
  v27 = sub_24B039184(&qword_27EFCF2E0, &qword_27EFCF280, &qword_24B2F4600, MEMORY[0x277CDE5B0]);
  v28 = sub_24B26DE10(&qword_27EFCF2E8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v29 = v69;
  v30 = v68;
  v31 = v74;
  sub_24B2D4A34();
  (*(v71 + 8))(v26, v31);
  (*(v66 + 8))(v15, v30);
  v32 = v78;
  sub_24B2D3864();
  *&v96 = v30;
  *(&v96 + 1) = v31;
  *&v97 = v27;
  *(&v97 + 1) = v28;
  v33 = 1;
  swift_getOpaqueTypeConformance2();
  sub_24B26DE10(&qword_27EFCF2F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v34 = v77;
  v35 = v73;
  v36 = v80;
  sub_24B2D46D4();
  (*(v79 + 8))(v32, v36);
  (*(v72 + 8))(v29, v35);
  v37 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  *(v34 + *(v70 + 36)) = *(*(v25 + *(v37 + 32)) + 16) > 1uLL;
  v38 = *(v25 + *(v37 + 20));
  sub_24B2D5064();
  sub_24B2D3904();
  v39 = v76;
  sub_24B0391CC(v34, v76, &qword_27EFCF290, &qword_24B2F4610);
  v40 = (v39 + *(v75 + 36));
  v41 = v94;
  v40[4] = v93;
  v40[5] = v41;
  v40[6] = v95;
  v42 = v90;
  *v40 = v89;
  v40[1] = v42;
  v43 = v92;
  v40[2] = v91;
  v40[3] = v43;
  v44 = v81;
  sub_24B0391CC(v39, v81, &qword_27EFCF298, &qword_24B2F4618);
  v45 = v86;
  v46 = v85;
  if ((v38 & 1) == 0)
  {
    v47 = sub_24B2D3E04();
    v48 = v63;
    *v63 = v47;
    *(v48 + 8) = 0x4008000000000000;
    *(v48 + 16) = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF2F8, &qword_24B2F4640);
    sub_24B266B1C(v25, (v48 + *(v49 + 44)));
    sub_24B2D5074();
    sub_24B2D3904();
    v50 = v65;
    sub_24B0391CC(v48, v65, &qword_27EFCF268, &qword_24B2F45E8);
    v51 = (v50 + *(v45 + 36));
    v52 = v101;
    v51[4] = v100;
    v51[5] = v52;
    v51[6] = v102;
    v53 = v97;
    *v51 = v96;
    v51[1] = v53;
    v54 = v99;
    v51[2] = v98;
    v51[3] = v54;
    v55 = v50;
    v56 = v64;
    sub_24B0391CC(v55, v64, &qword_27EFCF270, &qword_24B2F45F0);
    sub_24B0391CC(v56, v46, &qword_27EFCF270, &qword_24B2F45F0);
    v33 = 0;
  }

  (*(v84 + 56))(v46, v33, 1, v45);
  v57 = v83;
  sub_24B008890(v44, v83, &qword_27EFCF298, &qword_24B2F4618);
  v58 = v87;
  sub_24B008890(v46, v87, &qword_27EFCF278, &qword_24B2F45F8);
  v59 = v88;
  sub_24B008890(v57, v88, &qword_27EFCF298, &qword_24B2F4618);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF300, &qword_24B2F4648);
  sub_24B008890(v58, v59 + *(v60 + 48), &qword_27EFCF278, &qword_24B2F45F8);
  sub_24AFF8258(v46, &qword_27EFCF278, &qword_24B2F45F8);
  sub_24AFF8258(v44, &qword_27EFCF298, &qword_24B2F4618);
  sub_24AFF8258(v58, &qword_27EFCF278, &qword_24B2F45F8);
  sub_24AFF8258(v57, &qword_27EFCF298, &qword_24B2F4618);

  return result;
}

double sub_24B266490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  MEMORY[0x28223BE20](v5);
  sub_24B008890(a1 + v6, v4, &qword_27EFCD8A8, &unk_24B2EE8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF408, &qword_24B2F4740);
  sub_24B26DB80();
  sub_24B26DC34();
  sub_24B2D4DB4();

  return result;
}

double sub_24B266650@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF400, &qword_24B2F4738);
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v22 = v20 - v3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF2A0, &qword_24B2F4620);
  MEMORY[0x28223BE20](v21);
  v5 = v20 - v4;
  sub_24B2D5694();
  v20[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_24B2D3CD4();
  LOBYTE(v26) = 1;
  sub_24B2669A8(a1, &v31);
  v20[0] = a1;
  v7 = v31;
  v8 = v32;
  v9 = *(&v32 + 1);
  v10 = v33;
  v11 = *(&v33 + 1);
  LOBYTE(v31) = v32;
  v12 = v26;
  v13 = sub_24B2D4414();
  KeyPath = swift_getKeyPath();
  v26 = v6;
  v27[0] = v12;
  *&v27[8] = v7;
  v27[24] = v8;
  *&v28 = v9;
  BYTE8(v28) = v10;
  *&v29 = v11;
  *(&v29 + 1) = KeyPath;
  v30 = v13;
  sub_24B2D43D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF2B8, &qword_24B2F4630);
  sub_24B26D6B8();
  v15 = v22;
  sub_24B2D46B4();
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v31 = v26;
  v32 = *v27;
  v33 = *&v27[16];
  sub_24AFF8258(&v31, &qword_27EFCF2B8, &qword_24B2F4630);
  if (*(v20[0] + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) + 20)))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = swift_getKeyPath();
  (*(v23 + 32))(v5, v15, v24);
  v18 = &v5[*(v21 + 36)];
  *v18 = v17;
  *(v18 + 1) = v16;
  v18[16] = 0;
  sub_24B0391CC(v5, v25, &qword_27EFCF2A0, &qword_24B2F4620);

  return result;
}

uint64_t sub_24B2669A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4(isCurrentExecutor, v5, v6);

  v7 = sub_24B2D4604();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = 0;
  if (*(*(a1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) + 32)) + 16) >= 2uLL)
  {
    v14 = sub_24B2D4BC4();
  }

  sub_24B083C44(v7, v9, v11 & 1);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;

  sub_24B083C34(v7, v9, v11 & 1);
}

double sub_24B266B1C@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a1;
  v105 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF308, &qword_24B2F4650);
  MEMORY[0x28223BE20](v102);
  v106 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v101 = &v87 - v4;
  MEMORY[0x28223BE20](v5);
  v104 = &v87 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF310, &qword_24B2F4658);
  MEMORY[0x28223BE20](v95);
  v94 = &v87 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF318, &qword_24B2F4660);
  MEMORY[0x28223BE20](v93);
  v103 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = &v87 - v10;
  v97 = sub_24B2D2214();
  v109 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = &v87 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF320, &qword_24B2F4668);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v112 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v111 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v96 = &v87 - v22;
  MEMORY[0x28223BE20](v23);
  v114 = &v87 - v24;
  MEMORY[0x28223BE20](v25);
  v113 = &v87 - v26;
  sub_24B2D5694();
  v98 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v28 = v110;
  v29 = Text(separating:_:)(v110 + v27[5], v110 + v27[8]);
  v89 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_24B2D43A4();
  KeyPath = swift_getKeyPath();
  v116 = v29;
  v117 = v31;
  v118 = v33;
  v119 = v35;
  v120 = KeyPath;
  v121 = v36;
  sub_24B2D43D4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF328, &qword_24B2F4670);
  v107 = sub_24B26D79C();
  v108 = v38;
  sub_24B2D46B4();
  sub_24B09ADC8(v89, v31, v33, v35);

  v89 = v27;
  v39 = v88;
  sub_24B008890(v28 + v27[6], v88, &qword_27EFCB270, &unk_24B2EBD40);
  v40 = v97;
  v87 = *(v109 + 48);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v87(v39, 1, v97) != 1)
  {
    v45 = v109;
    v46 = v92;
    (*(v109 + 32))(v92, v39, v40);
    (*(v45 + 16))(v91, v46, v40);
    v41 = sub_24B2D45F4();
    v42 = v47;
    v49 = v48;
    v44 = v50;
    (*(v45 + 8))(v46, v40);
    v43 = v49 & 1;
  }

  v51 = sub_24B2D43A4();
  v52 = swift_getKeyPath();
  v116 = v41;
  v117 = v42;
  v118 = v43;
  v119 = v44;
  v120 = v52;
  v121 = v51;
  sub_24B2D43E4();
  sub_24B2D46B4();
  sub_24B09ADC8(v41, v42, v43, v44);

  v53 = v94;
  v54 = v110;
  sub_24B2675F4(v110, v94);
  v55 = sub_24B2D43A4();
  v56 = swift_getKeyPath();
  v57 = (v53 + *(v95 + 36));
  *v57 = v56;
  v57[1] = v55;
  sub_24B2D43E4();
  sub_24B26D8D0();
  v58 = v115;
  sub_24B2D46B4();
  sub_24AFF8258(v53, &qword_27EFCF310, &qword_24B2F4658);
  *(v58 + *(v93 + 36)) = sub_24B2D3FD4();
  v59 = v90;
  sub_24B008890(v54 + *(v89 + 36), v90, &qword_27EFCB270, &unk_24B2EBD40);
  if (v87(v59, 1, v40) == 1)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v64 = v109;
    v65 = v92;
    (*(v109 + 32))(v92, v59, v40);
    (*(v64 + 16))(v91, v65, v40);
    v60 = sub_24B2D45F4();
    v61 = v66;
    v68 = v67;
    v63 = v69;
    (*(v64 + 8))(v65, v40);
    v62 = v68 & 1;
  }

  v70 = sub_24B2D43A4();
  v71 = swift_getKeyPath();
  v116 = v60;
  v117 = v61;
  v118 = v62;
  v119 = v63;
  v120 = v71;
  v121 = v70;
  sub_24B2D43E4();
  v72 = v96;
  sub_24B2D46B4();
  sub_24B09ADC8(v60, v61, v62, v63);

  v73 = sub_24B2D3FD4();
  v74 = v99;
  v75 = v101;
  v76 = v100;
  (*(v99 + 32))(v101, v72, v100);
  *(v75 + *(v102 + 36)) = v73;
  v77 = v104;
  sub_24B0391CC(v75, v104, &qword_27EFCF308, &qword_24B2F4650);
  v78 = *(v74 + 16);
  v79 = v111;
  v78(v111, v113, v76);
  v80 = v112;
  v78(v112, v114, v76);
  v81 = v103;
  sub_24B008890(v115, v103, &qword_27EFCF318, &qword_24B2F4660);
  v82 = v106;
  sub_24B008890(v77, v106, &qword_27EFCF308, &qword_24B2F4650);
  v83 = v105;
  v78(v105, v79, v76);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3A0, &qword_24B2F46A8);
  v78(&v83[v84[12]], v80, v76);
  sub_24B008890(v81, &v83[v84[16]], &qword_27EFCF318, &qword_24B2F4660);
  sub_24B008890(v82, &v83[v84[20]], &qword_27EFCF308, &qword_24B2F4650);
  sub_24AFF8258(v77, &qword_27EFCF308, &qword_24B2F4650);
  sub_24AFF8258(v115, &qword_27EFCF318, &qword_24B2F4660);
  v85 = *(v74 + 8);
  v85(v114, v76);
  v85(v113, v76);
  sub_24AFF8258(v82, &qword_27EFCF308, &qword_24B2F4650);
  sub_24AFF8258(v81, &qword_27EFCF318, &qword_24B2F4660);
  v85(v112, v76);
  v85(v111, v76);

  return result;
}

double sub_24B2675F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v47 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF398, &qword_24B2F46A0);
  MEMORY[0x28223BE20](v42);
  v3 = &v34 - v2;
  v40 = sub_24B2D2214();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3A8, &qword_24B2F46B0);
  MEMORY[0x28223BE20](v46);
  v6 = &v34 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3B0, &qword_24B2F46B8);
  MEMORY[0x28223BE20](v38);
  v8 = &v34 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF378, &qword_24B2F4690);
  MEMORY[0x28223BE20](v45);
  v41 = &v34 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF388, &qword_24B2F4698);
  MEMORY[0x28223BE20](v39);
  v11 = &v34 - v10;
  v12 = sub_24B2D13C4();
  v35 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298, &qword_24B2F42E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF368, &qword_24B2F4688);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - v19;
  sub_24B2D5694();
  v44 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v22 = v43;
  sub_24B008890(v43 + *(v21 + 28), v17, &qword_27EFCB298, &qword_24B2F42E0);
  v23 = sub_24B2D1954();
  if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B26DA98();
    sub_24B2D3ED4();
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v36;
    v24 = v37;
    (*(v37 + 32))(v36, v17, v40);
    *v3 = sub_24B2D3CD4();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3B8, &qword_24B2F46C0);
    sub_24B2684E4(v25, v22, &v3[*(v26 + 44)]);
    sub_24B008890(v3, v8, &qword_27EFCF398, &qword_24B2F46A0);
    swift_storeEnumTagMultiPayload();
    v27 = MEMORY[0x277CE1138];
    sub_24B039184(&qword_27EFCF380, &qword_27EFCF388, &qword_24B2F4698, MEMORY[0x277CE1138]);
    sub_24B039184(&qword_27EFCF390, &qword_27EFCF398, &qword_24B2F46A0, v27);
    v28 = v41;
    sub_24B2D3ED4();
    sub_24B008890(v28, v6, &qword_27EFCF378, &qword_24B2F4690);
    swift_storeEnumTagMultiPayload();
    sub_24B26DA98();
    sub_24B2D3ED4();
    sub_24AFF8258(v28, &qword_27EFCF378, &qword_24B2F4690);
    sub_24AFF8258(v3, &qword_27EFCF398, &qword_24B2F46A0);
    (*(v24 + 8))(v25, v40);
  }

  else
  {
    v29 = v35;
    (*(v35 + 32))(v14, v17, v12);
    *v11 = sub_24B2D3CD4();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3C0, &qword_24B2F46C8);
    sub_24B267DE8(v14, v22, &v11[*(v30 + 44)]);
    sub_24B008890(v11, v8, &qword_27EFCF388, &qword_24B2F4698);
    swift_storeEnumTagMultiPayload();
    v31 = MEMORY[0x277CE1138];
    sub_24B039184(&qword_27EFCF380, &qword_27EFCF388, &qword_24B2F4698, MEMORY[0x277CE1138]);
    sub_24B039184(&qword_27EFCF390, &qword_27EFCF398, &qword_24B2F46A0, v31);
    v32 = v41;
    sub_24B2D3ED4();
    sub_24B008890(v32, v6, &qword_27EFCF378, &qword_24B2F4690);
    swift_storeEnumTagMultiPayload();
    sub_24B26DA98();
    sub_24B2D3ED4();
    sub_24AFF8258(v32, &qword_27EFCF378, &qword_24B2F4690);
    sub_24AFF8258(v11, &qword_27EFCF388, &qword_24B2F4698);
    (*(v29 + 8))(v14, v12);
  }

  sub_24B0391CC(v20, v47, &qword_27EFCF368, &qword_24B2F4688);

  return result;
}

void sub_24B267DE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v43 = a1;
  v55 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3C8, &qword_24B2F46D0);
  MEMORY[0x28223BE20](v44);
  v49 = &v43 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3D0, &qword_24B2F46D8);
  MEMORY[0x28223BE20](v47);
  v51 = &v43 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3D8, &qword_24B2F46E0);
  MEMORY[0x28223BE20](v50);
  v54 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - v7;
  MEMORY[0x28223BE20](v8);
  v52 = &v43 - v9;
  v10 = sub_24B2D24A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B2D13C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3E0, &qword_24B2F46E8);
  MEMORY[0x28223BE20](v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  sub_24B2D5694();
  v45 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v15 + 16))(v17, v43, v14);
  v23 = type metadata accessor for RelativeDateText(0);
  sub_24B2D2254();
  sub_24B2D2494();
  sub_24B2D1364();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  v22[v23[5]] = 1;
  v22[v23[7]] = 1;
  v24 = &v22[v23[8]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v22[*(v18 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3E8, &qword_24B2F46F0);
  sub_24B2D39A4();
  *v25 = swift_getKeyPath();
  v26 = v49;
  sub_24B2D33E4();
  v27 = (v26 + *(v44 + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30) + 28);
  v29 = *MEMORY[0x277CDF438];
  v30 = sub_24B2D3364();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  sub_24B2D5064();
  sub_24B2D3904();
  v31 = v51;
  sub_24B0391CC(v26, v51, &qword_27EFCF3C8, &qword_24B2F46D0);
  v32 = (v31 + *(v47 + 36));
  v33 = v61;
  v32[4] = v60;
  v32[5] = v33;
  v32[6] = v62;
  v34 = v57;
  *v32 = v56;
  v32[1] = v34;
  v35 = v59;
  v32[2] = v58;
  v32[3] = v35;
  if (*(v53 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0) + 40)))
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = v48;
  sub_24B0391CC(v31, v48, &qword_27EFCF3D0, &qword_24B2F46D8);
  *(v37 + *(v50 + 36)) = v36;
  v38 = v52;
  sub_24B0391CC(v37, v52, &qword_27EFCF3D8, &qword_24B2F46E0);
  v39 = v46;
  sub_24B008890(v22, v46, &qword_27EFCF3E0, &qword_24B2F46E8);
  v40 = v54;
  sub_24B008890(v38, v54, &qword_27EFCF3D8, &qword_24B2F46E0);
  v41 = v55;
  sub_24B008890(v39, v55, &qword_27EFCF3E0, &qword_24B2F46E8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3F0, &qword_24B2F4728);
  sub_24B008890(v40, v41 + *(v42 + 48), &qword_27EFCF3D8, &qword_24B2F46E0);
  sub_24AFF8258(v38, &qword_27EFCF3D8, &qword_24B2F46E0);
  sub_24AFF8258(v22, &qword_27EFCF3E0, &qword_24B2F46E8);
  sub_24AFF8258(v40, &qword_27EFCF3D8, &qword_24B2F46E0);
  sub_24AFF8258(v39, &qword_27EFCF3E0, &qword_24B2F46E8);
}

uint64_t sub_24B2684E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a2;
  v39 = a1;
  v45 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3C8, &qword_24B2F46D0);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3D0, &qword_24B2F46D8);
  MEMORY[0x28223BE20](v40);
  v7 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3D8, &qword_24B2F46E0);
  MEMORY[0x28223BE20](v42);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = sub_24B2D2214();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  v41 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v16 + 16))(v18, v39, v15);
  v19 = sub_24B2D45F4();
  v21 = v20;
  LODWORD(v39) = v22;
  v24 = v23;
  sub_24B2D33E4();
  v25 = &v5[*(v3 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30) + 28);
  v27 = *MEMORY[0x277CDF438];
  v28 = sub_24B2D3364();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  sub_24B2D5064();
  sub_24B2D3904();
  sub_24B0391CC(v5, v7, &qword_27EFCF3C8, &qword_24B2F46D0);
  v29 = &v7[*(v40 + 36)];
  v30 = v51;
  *(v29 + 4) = v50;
  *(v29 + 5) = v30;
  *(v29 + 6) = v52;
  v31 = v47;
  *v29 = v46;
  *(v29 + 1) = v31;
  v32 = v49;
  *(v29 + 2) = v48;
  *(v29 + 3) = v32;
  if (*(v43 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0) + 40)))
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  sub_24B0391CC(v7, v11, &qword_27EFCF3D0, &qword_24B2F46D8);
  *&v11[*(v42 + 36)] = v33;
  sub_24B0391CC(v11, v14, &qword_27EFCF3D8, &qword_24B2F46E0);
  v34 = v44;
  sub_24B008890(v14, v44, &qword_27EFCF3D8, &qword_24B2F46E0);
  v35 = v45;
  *v45 = v19;
  v35[1] = v21;
  v36 = v39 & 1;
  *(v35 + 16) = v39 & 1;
  v35[3] = v24;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3F8, &qword_24B2F4730);
  sub_24B008890(v34, v35 + *(v37 + 48), &qword_27EFCF3D8, &qword_24B2F46E0);
  sub_24B083C44(v19, v21, v36);

  sub_24AFF8258(v14, &qword_27EFCF3D8, &qword_24B2F46E0);
  sub_24AFF8258(v34, &qword_27EFCF3D8, &qword_24B2F46E0);
  sub_24B083C34(v19, v21, v36);
}

double sub_24B2689E8@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B2D42B4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF118, &qword_24B2F4390);
  sub_24B268AB4(a1, &a2[*(v4 + 44)]);

  return result;
}

double sub_24B268AB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF120, &qword_24B2F4398);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF128, &qword_24B2F43A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_24B2D3CD4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF130, &qword_24B2F43A8);
  sub_24B268D68(a1, &v15[*(v16 + 44)]);
  *v9 = sub_24B2D3CD4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF138, &qword_24B2F43B0);
  sub_24B26A014(a1, &v9[*(v17 + 44)]);
  sub_24B008890(v15, v12, &qword_27EFCF128, &qword_24B2F43A0);
  sub_24B008890(v9, v6, &qword_27EFCF120, &qword_24B2F4398);
  sub_24B008890(v12, a2, &qword_27EFCF128, &qword_24B2F43A0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF140, &qword_24B2F43B8);
  sub_24B008890(v6, a2 + *(v18 + 48), &qword_27EFCF120, &qword_24B2F4398);
  sub_24AFF8258(v9, &qword_27EFCF120, &qword_24B2F4398);
  sub_24AFF8258(v15, &qword_27EFCF128, &qword_24B2F43A0);
  sub_24AFF8258(v6, &qword_27EFCF120, &qword_24B2F4398);
  sub_24AFF8258(v12, &qword_27EFCF128, &qword_24B2F43A0);

  return result;
}

double sub_24B268D68@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF238, &qword_24B2F45C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *(a1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0) + 44));
  sub_24B26C7F8(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent);
  v12 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v13 = swift_allocObject();
  sub_24B26CC98(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF240, &qword_24B2F45D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF248, &qword_24B2F45D8);
  sub_24B26D478();
  sub_24B26D528();
  sub_24B26DE10(&qword_27EFCF1C0, type metadata accessor for PersonLocateAction, &protocol conformance descriptor for PersonLocateAction);
  sub_24B2D4EE4();
  v14 = *(v6 + 16);
  v14(v8, v11, v5);
  v15 = v22;
  *v22 = 0x4030000000000000;
  *(v15 + 8) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF260, &qword_24B2F45E0);
  v14(v15 + *(v16 + 48), v8, v5);
  v17 = v15 + *(v16 + 64);
  *v17 = 0x4030000000000000;
  v17[8] = 0;
  v18 = *(v6 + 8);
  v18(v11, v5);
  v18(v8, v5);

  return result;
}

double sub_24B269104@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF160, &qword_24B2F43D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF248, &qword_24B2F45D8);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B269320(a1, 0, v6);
  sub_24B2D5064();
  sub_24B2D3904();
  sub_24B0391CC(v6, v9, &qword_27EFCF160, &qword_24B2F43D8);
  v10 = &v9[*(v7 + 36)];
  v11 = v15[5];
  *(v10 + 4) = v15[4];
  *(v10 + 5) = v11;
  *(v10 + 6) = v15[6];
  v12 = v15[1];
  *v10 = v15[0];
  *(v10 + 1) = v12;
  v13 = v15[3];
  *(v10 + 2) = v15[2];
  *(v10 + 3) = v13;
  sub_24B0391CC(v9, a2, &qword_27EFCF248, &qword_24B2F45D8);

  return result;
}

uint64_t sub_24B269320@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v115 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v4);
  v110 = v91 - v5;
  v6 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1A8, &unk_24B2F4400);
  MEMORY[0x28223BE20](v103);
  v113 = v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1D0, &qword_24B2F4418);
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x28223BE20](v11);
  v114 = v91 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1A0, &qword_24B2F43F8);
  MEMORY[0x28223BE20](v104);
  v107 = v91 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF188, &unk_24B2F43E8);
  MEMORY[0x28223BE20](v108);
  v109 = v91 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1D8, &unk_24B2F4420);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF180, &qword_24B2F43E0);
  v111 = *(v16 - 8);
  v112 = v16;
  MEMORY[0x28223BE20](v16);
  v92 = v91 - v17;
  Action = type metadata accessor for PersonLocateAction(0);
  v96 = *(Action - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](Action);
  v102 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = v91 - v21;
  MEMORY[0x28223BE20](v22);
  v98 = v91 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = v91 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v91 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v91 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v91 - v33;
  v116 = a1;
  sub_24B26C7F8(a1, v91 - v33, type metadata accessor for PersonLocateAction);
  v117 = Action;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48)];
    sub_24AFF8258(v34, &qword_27EFCB280, &qword_24B2F4430);
    v36 = v115;
    v37 = v116;
    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v38 = *v34;
    v36 = v115;
    v37 = v116;
    if (v38 != 1)
    {
      goto LABEL_8;
    }
  }

  sub_24B26C7F8(v37, v31, type metadata accessor for PersonLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AFF8258(v31, &qword_27EFCB280, &qword_24B2F4430);
  }

  if ((sub_24B128D40() & 1) == 0)
  {
    v90 = 1;
    v84 = v112;
    return (*(v111 + 56))(v36, v90, 1, v84);
  }

LABEL_8:
  v91[1] = v4;
  v39 = sub_24B2D32E4();
  v40 = v7;
  v41 = v113;
  (*(*(v39 - 8) + 56))(v113, 1, 1, v39);
  sub_24B26C7F8(v99, v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent);
  sub_24B26C7F8(v37, v28, type metadata accessor for PersonLocateAction);
  v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v43 = *(v96 + 80);
  v44 = (v8 + v43 + v42) & ~v43;
  v45 = swift_allocObject();
  sub_24B26CC98(v9, v45 + v42, type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent);
  sub_24B26CC98(v28, v45 + v44, type metadata accessor for PersonLocateAction);
  v46 = v97;
  sub_24B26C7F8(v116, v97, type metadata accessor for PersonLocateAction);
  v47 = (v43 + 16) & ~v43;
  v48 = v47 + v19;
  v49 = v116;
  v50 = swift_allocObject();
  sub_24B26CC98(v46, v50 + v47, type metadata accessor for PersonLocateAction);
  *(v50 + v48) = v101 & 1;
  v51 = v103;
  v52 = &v41[*(v103 + 48)];
  v118 = 0;
  sub_24B2D4CC4();
  v53 = v120;
  *v52 = v119;
  *(v52 + 1) = v53;
  v54 = &v41[v51[13]];
  v118 = 0;
  sub_24B2D4CC4();
  v55 = v120;
  *v54 = v119;
  *(v54 + 1) = v55;
  v56 = &v41[v51[9]];
  *v56 = &unk_24B2F4440;
  *(v56 + 1) = v45;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24B26CE30;
  *(v57 + 24) = v50;
  v58 = &v41[v51[10]];
  *v58 = sub_24B088C54;
  v58[1] = v57;
  v41[v51[11]] = 1;
  v59 = v98;
  sub_24B26C7F8(v49, v98, type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24AFF8258(v59, &qword_27EFCB280, &qword_24B2F4430);
  }

  LOBYTE(v119) = EnumCaseMultiPayload == 1;
  BYTE1(v119) = 1;
  v61 = sub_24B039184(&qword_27EFCF1B0, &qword_27EFCF1A8, &unk_24B2F4400, &protocol conformance descriptor for AsyncButton<A>);
  sub_24B26CC44(v61, v62, v63);
  v64 = v113;
  sub_24B2D46D4();
  sub_24AFF8258(v64, &qword_27EFCF1A8, &unk_24B2F4400);
  v65 = v100;
  sub_24B26C7F8(v49, v100, type metadata accessor for PersonLocateAction);
  v66 = swift_getEnumCaseMultiPayload();
  v68 = v109;
  v67 = v110;
  v69 = v108;
  if (v66 == 1)
  {
    v70 = sub_24B2D4A84();
    sub_24AFF8258(v65, &qword_27EFCB280, &qword_24B2F4430);
  }

  else
  {
    v70 = sub_24B2D4B54();
  }

  v36 = v115;
  v71 = v107;
  KeyPath = swift_getKeyPath();
  v119 = v70;
  v73 = sub_24B2D34A4();
  (*(v105 + 32))(v71, v114, v106);
  v74 = (v71 + *(v104 + 36));
  *v74 = KeyPath;
  v74[1] = v73;
  v75 = v102;
  sub_24B26C7F8(v49, v102, type metadata accessor for PersonLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48)];
    sub_24AFF8258(v75, &qword_27EFCB280, &qword_24B2F4430);
  }

  else
  {
    v76 = *v75;
  }

  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  sub_24B0391CC(v71, v68, &qword_27EFCF1A0, &qword_24B2F43F8);
  v79 = (v68 + *(v69 + 36));
  *v79 = v77;
  v79[1] = sub_24B09A700;
  v79[2] = v78;
  v80 = *MEMORY[0x277CDF998];
  v81 = sub_24B2D3764();
  (*(*(v81 - 8) + 104))(v67, v80, v81);
  sub_24B26DE10(&qword_27EFC8AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B26CA50();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
    v83 = v93;
    sub_24B2D4774();
    sub_24AFF8258(v67, &qword_27EFC8AD0, &qword_24B2E1EB0);
    sub_24AFF8258(v68, &qword_27EFCF188, &unk_24B2F43E8);
    v84 = v112;
    v85 = v92;
    v86 = &v92[*(v112 + 36)];
    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30) + 28);
    v88 = *MEMORY[0x277CDF420];
    v89 = sub_24B2D3364();
    (*(*(v89 - 8) + 104))(v86 + v87, v88, v89);
    *v86 = swift_getKeyPath();
    (*(v94 + 32))(v85, v83, v95);
    sub_24B0391CC(v85, v36, &qword_27EFCF180, &qword_24B2F43E0);
    v90 = 0;
    return (*(v111 + 56))(v36, v90, 1, v84);
  }

  __break(1u);
  return result;
}

double sub_24B26A014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF148, &qword_24B2F43C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_24B2D5694();
  v19 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v11 = sub_24B2D3DF4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF150, &qword_24B2F43C8);
  v20 = *(a1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0) + 44));
  sub_24B26C7F8(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent);
  v12 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v13 = swift_allocObject();
  sub_24B26CC98(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF158, &qword_24B2F43D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF160, &qword_24B2F43D8);
  sub_24B039184(&qword_27EFCF168, &qword_27EFCF158, &qword_24B2F43D0, MEMORY[0x277D83980]);
  sub_24B26C878();
  sub_24B26DE10(&qword_27EFCF1C0, type metadata accessor for PersonLocateAction, &protocol conformance descriptor for PersonLocateAction);
  sub_24B2D4EE4();

  sub_24B008890(v11, v8, &qword_27EFCF148, &qword_24B2F43C0);
  *a2 = 0x4030000000000000;
  *(a2 + 8) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1C8, &qword_24B2F4410);
  sub_24B008890(v8, a2 + *(v14 + 48), &qword_27EFCF148, &qword_24B2F43C0);
  v15 = a2 + *(v14 + 64);
  *v15 = 0x4030000000000000;
  *(v15 + 8) = 0;
  sub_24AFF8258(v11, &qword_27EFCF148, &qword_24B2F43C0);
  sub_24AFF8258(v8, &qword_27EFCF148, &qword_24B2F43C0);

  return result;
}

double sub_24B26A418@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B269320(a1, 0, a2);

  return result;
}

uint64_t sub_24B26A4D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B26A56C, v4, v3);
}

uint64_t sub_24B26A56C()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) + 24));
  v6 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24B088010;
  v4 = v0[3];

  return v6(v4);
}

uint64_t sub_24B26A670@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1E0, &qword_24B2F5220);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1E8, &unk_24B2F44E0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  *v7 = sub_24B2D3CD4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1F0, &unk_24B2F5210);
  sub_24B26A93C(&v7[*(v12 + 44)]);
  sub_24B2D4394();
  sub_24B2D43D4();
  v13 = sub_24B2D4424();

  KeyPath = swift_getKeyPath();
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1F8, &qword_24B2F4520) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = swift_getKeyPath();
  v17 = &v7[*(v5 + 44)];
  *v17 = v16;
  *(v17 + 1) = 1;
  v17[16] = 0;
  sub_24B2D5064();
  sub_24B2D3904();
  sub_24B0391CC(v7, v11, &qword_27EFCF1E0, &qword_24B2F5220);
  v18 = &v11[*(v9 + 44)];
  v19 = v27[5];
  *(v18 + 4) = v27[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v27[6];
  v20 = v27[1];
  *v18 = v27[0];
  *(v18 + 1) = v20;
  v21 = v27[3];
  *(v18 + 2) = v27[2];
  *(v18 + 3) = v21;
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF200, &qword_24B2F4558) + 36);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF208, &unk_24B2F4560);
  sub_24B2D3994();
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24B2D3DC4();
  (*(*(v25 - 8) + 104))(v22, v24, v25);
  *(v22 + *(v23 + 36)) = 0;
  return sub_24B0391CC(v11, a3, &qword_27EFCF1E8, &unk_24B2F44E0);
}

double sub_24B26A93C@<D0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_24B2D2214();
  MEMORY[0x28223BE20](v1 - 8);
  v56 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24B2D3694();
  v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v4 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF210, &unk_24B2F5240);
  MEMORY[0x28223BE20](v53);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF218, &unk_24B2F4570);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_24B2D1BB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF220, &unk_24B2F4580);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  sub_24B2D5694();
  v58 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  PersonLocateAction.symbol.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFC8A80, &qword_24B2E8E00);
    v21 = 1;
    v23 = v60;
    v22 = v61;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_24B2D3D54();
    v50 = v12;
    sub_24B2D3D44();
    sub_24B2D1AB4();
    sub_24B2D4BE4();
    sub_24B2D3D34();

    sub_24B2D3D44();
    sub_24B2D3D84();
    v47 = sub_24B2D45E4();
    v48 = v24;
    v26 = v25;
    v28 = v27;
    v29 = &v6[*(v53 + 36)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC538, &qword_24B2F4590);
    v49 = v15;
    v31 = v13;
    v32 = *(v30 + 28);
    sub_24B2D3E34();
    v33 = sub_24B2D3E54();
    (*(*(v33 - 8) + 56))(v29 + v32, 0, 1, v33);
    *v29 = swift_getKeyPath();
    *v6 = v47;
    *(v6 + 1) = v26;
    v6[16] = v28 & 1;
    *(v6 + 3) = v48;
    v34 = v54;
    sub_24B2D3674();
    sub_24B26CEC0();
    v35 = v52;
    sub_24B2D4714();
    (*(v55 + 8))(v34, v51);
    sub_24AFF8258(v6, &qword_27EFCF210, &unk_24B2F5240);
    (*(v31 + 8))(v49, v50);
    v23 = v60;
    v22 = v61;
    (*(v60 + 32))(v20, v35, v61);
    v21 = 0;
  }

  (*(v23 + 56))(v20, v21, 1, v22);
  PersonLocateAction.compactLabel.getter(v56);
  v36 = sub_24B2D45F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v59;
  sub_24B008890(v20, v59, &qword_27EFCF220, &unk_24B2F4580);
  v44 = v57;
  sub_24B008890(v43, v57, &qword_27EFCF220, &unk_24B2F4580);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF228, &unk_24B2F5250) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  v40 &= 1u;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  sub_24B083C44(v36, v38, v40);

  sub_24AFF8258(v20, &qword_27EFCF220, &unk_24B2F4580);
  sub_24B083C34(v36, v38, v40);

  sub_24AFF8258(v43, &qword_27EFCF220, &unk_24B2F4580);

  return result;
}

double sub_24B26B048(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF428, &unk_24B2F4748);
  sub_24B26DCC4();
  sub_24B2D4F24();

  return result;
}

double sub_24B26B148(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) + 32));
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF438, &qword_24B2F4780);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF440, &qword_24B2F4788);
  v5 = sub_24B039184(&qword_27EFCF448, &qword_27EFCF438, &qword_24B2F4780, MEMORY[0x277D83980]);
  v6 = sub_24B26DE10(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC78D8, &qword_24B2DE490);
  sub_24B2D1974();
  sub_24B039184(&qword_27EFCF430, &unk_27EFC78D8, &qword_24B2DE490, MEMORY[0x277CDEFF0]);
  sub_24B26DE10(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B2D4ED4(&v9, KeyPath, sub_24B26B3AC, 0, v3, v4, v5, v6, OpaqueTypeConformance2);

  return result;
}

double sub_24B26B3AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v16 = sub_24B2D1974();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC78D8, &qword_24B2DE490);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  sub_24B2D5694();
  v15 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v15 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF450, &unk_24B2F4790);
  sub_24B039184(&qword_27EFCF458, &qword_27EFCF450, &unk_24B2F4790, MEMORY[0x277CDD6A8]);
  sub_24B2D4C34();
  _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
  v10 = v16;
  (*(v3 + 104))(v5, *MEMORY[0x277D08CF0], v16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78C8, &unk_24B2DE480);
  v12 = v18;
  v13 = v18 + *(v11 + 36);
  (*(v3 + 32))(v13, v5, v10);
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC78D0, &qword_24B2F47A0) + 36)) = 1;
  (*(v6 + 32))(v12, v8, v17);

  return result;
}

double sub_24B26B6C8(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF460, &qword_24B2F47A8);
  sub_24B039184(&qword_27EFCF468, &qword_27EFCF460, &qword_24B2F47A8, MEMORY[0x277CE14C0]);
  sub_24B2D3304();

  return result;
}

uint64_t sub_24B26B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v3 = sub_24B2D2214();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_24B2D18A4();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24B2D1524();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24B2D1544();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB290, &qword_24B2F47B0);
  MEMORY[0x28223BE20](v67);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v62 = &v49[-v15];
  v16 = sub_24B2D14C4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B2D5694();
  v60 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D14D4();
  v20 = sub_24B2D14B4();
  v22 = v21;
  v23 = (*(v17 + 8))(v19, v16);
  v70 = v20;
  v71 = v22;
  sub_24AFFE0A4(v23, v24, v25);
  v26 = sub_24B2D4604();
  v53 = v27;
  v54 = v26;
  v50 = v28;
  v55 = v29;
  type metadata accessor for ListPersonInfo(0);
  sub_24B2D1554();
  sub_24B2D1534();
  (*(v51 + 8))(v11, v52);
  sub_24B2D1514();
  (*(v56 + 8))(v8, v57);
  v31 = v58;
  v30 = v59;
  v32 = v61;
  (*(v59 + 104))(v58, *MEMORY[0x277D08CC0], v61);
  v33 = v62;
  sub_24B2D1884();
  (*(v30 + 8))(v31, v32);
  sub_24B008890(v33, v13, &qword_27EFCB290, &qword_24B2F47B0);
  v35 = v64;
  v34 = v65;
  v36 = *(v64 + 48);
  if (v36(v13, 1, v65) == 1)
  {
    sub_24B2D21F4();
    if (v36(v13, 1, v34) != 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB270, &unk_24B2EBD40);
    }
  }

  else
  {
    (*(v35 + 32))(v66, v13, v34);
  }

  sub_24AFF8258(&v13[*(v67 + 48)], &qword_27EFCB298, &qword_24B2F42E0);
  v37 = sub_24B2D45F4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v50 & 1;
  v68 = v50 & 1;
  v46 = v53;
  v45 = v54;
  sub_24B083C44(v54, v53, v50 & 1);
  v47 = v55;

  v41 &= 1u;
  sub_24B083C44(v37, v39, v41);

  sub_24AFF8258(v33, &qword_27EFCB290, &qword_24B2F47B0);
  LOBYTE(v70) = v44;
  v69 = v41;
  *a2 = v45;
  *(a2 + 8) = v46;
  *(a2 + 16) = v44;
  *(a2 + 24) = v47;
  *(a2 + 32) = v37;
  *(a2 + 40) = v39;
  *(a2 + 48) = v41;
  *(a2 + 56) = v43;
  sub_24B083C34(v37, v39, v41);

  sub_24B083C34(v45, v46, v68);
}