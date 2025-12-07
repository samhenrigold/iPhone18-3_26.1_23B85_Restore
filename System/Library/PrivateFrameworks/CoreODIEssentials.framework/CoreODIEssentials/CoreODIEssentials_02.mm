uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ODNData.tData.getter()
{
  v1 = *v0;
  sub_1DAF4ED88(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1DAF4ED88(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAF40674(result, a2);
  }

  return result;
}

uint64_t ODNData.assessment.getter()
{
  v1 = *(v0 + 16);
  sub_1DAF40674(v1, *(v0 + 24));
  return v1;
}

uint64_t ProfileContext.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4EE60()
{
  type metadata accessor for DIPODNHelper();
  v0 = swift_allocObject();
  result = sub_1DAF4EEF8();
  qword_1EE301830 = v0;
  return result;
}

uint64_t static DIPODNHelper.sharedInstance.getter()
{
  if (qword_1EE301828 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DAF4EEF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  swift_defaultActor_initialize();
  type metadata accessor for AsyncWorkQueue();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = v4;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 45;
  *(v0 + 176) = 0xE100000000000000;
  *(v0 + 184) = xmmword_1DB0A2190;
  *(v0 + 200) = v5;
  v6 = sub_1DB09DA24();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_1DAF4F0EC(0, 0, v3, &unk_1DB0A2A20, v7);

  return v0;
}

uint64_t sub_1DAF4F08C()
{
  sub_1DAF4FA0C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF4F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DAF40A84(a3, v25 - v10, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v12 = sub_1DB09DA24();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DAF40AEC(v11, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    sub_1DB09DA14();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DB09D984();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DB09D764() + 32;
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

      sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);

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

  sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);
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

uint64_t sub_1DAF4F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DAF40A84(a3, v25 - v10, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v12 = sub_1DB09DA24();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DAF40AEC(v11, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    sub_1DB09DA14();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DB09D984();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1DB09D764() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for ODNAssessmentResult(0);

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

      sub_1DAF40AEC(v25[0], &qword_1ECC0ECE0, &unk_1DB0A21D0);

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

  sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for ODNAssessmentResult(0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DAF4F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DAF40A84(a3, v25 - v10, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v12 = sub_1DB09DA24();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DAF40AEC(v11, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    sub_1DB09DA14();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DB09D984();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DB09D764() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E550, &unk_1DB0AF650);
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

      sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);

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

  sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E550, &unk_1DB0AF650);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DAF4FA0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 176);
  v14 = *(v0 + 168);
  v15 = v5;
  v13 = 14;

  CoreODILogger.info(_:category:)(0xD000000000000023, 0x80000001DB0C2F10, &v13);

  v6 = sub_1DB09DA24();
  v7 = (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v9 = sub_1DAF5F57C(v7, v8);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v9;
  v10[4] = v1;
  swift_retain_n();
  sub_1DAF4F0EC(0, 0, v4, &unk_1DB0A29F0, v10);
}

uint64_t sub_1DAF4FB88()
{
  type metadata accessor for DeviceInformation();
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  swift_defaultActor_initialize();
  *(v1 + 144) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF4FC48;

  return sub_1DAFE19A4(v0 + 16);
}

uint64_t sub_1DAF4FC48()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1DAF4FE44;
  }

  else
  {
    v5 = *(v2 + 32);
    *(v2 + 128) = *(v2 + 16);
    *(v2 + 144) = v5;
    v6 = *(v2 + 56);
    *(v2 + 160) = *(v2 + 48);
    *(v2 + 168) = v6;
    v4 = sub_1DAF4FD70;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF4FD70()
{
  v14 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 96);
  v4 = v3[15];
  v5 = v3[16];
  v6 = v3[17];
  v7 = v3[18];
  v8 = v3[19];
  v9 = v3[20];
  v10 = *(v0 + 144);
  *(v3 + 15) = *(v0 + 128);
  *(v3 + 17) = v10;
  v3[19] = v2;
  v3[20] = v1;
  sub_1DAF6080C(v4, v5, v6, v7, v8, v9);
  v13 = 14;

  CoreODILogger.info(_:category:)(0xD00000000000002ELL, 0x80000001DB0C2F60, &v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DAF4FE44()
{
  v11 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = *(v2 + 176);
  v8[0] = *(v2 + 168);
  v8[1] = v3;
  v9 = 5;
  v10 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0C2F40);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v9);

  v4 = v0[12];
  v5 = *(v4 + 176);
  v9 = *(v4 + 168);
  v10 = v5;
  LOBYTE(v8[0]) = 14;

  CoreODILogger.info(_:category:)(0xD00000000000002ELL, 0x80000001DB0C2F60, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAF4FFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = *(v3 + 184);
  v2[5] = v4;
  v5 = *(v3 + 192);
  v2[6] = v5;
  if (v5 >> 60 == 15)
  {
    v6 = sub_1DAF5F57C(a1, a2);
    v7 = swift_task_alloc();
    v2[7] = v7;
    *v7 = v2;
    v7[1] = sub_1DAF50110;
    v8 = v2[4];
    v9 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v2 + 2, v3, v6, 0xD000000000000013, 0x80000001DB0C2B70, sub_1DAF628BC, v8, v9);
  }

  else
  {
    sub_1DAF4ED88(v4, v5);
    v10 = v2[1];

    return v10(v4, v5);
  }
}

uint64_t sub_1DAF50110()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1DAF502D8;
  }

  else
  {
    v4 = sub_1DAF5023C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF5023C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *(v1 + 184) = v3;
  *(v1 + 192) = v2;
  sub_1DAF40674(v3, v2);
  sub_1DAF4AC40(v4, v5);
  sub_1DAF4ED88(v0[5], v0[6]);
  v6 = v0[1];

  return v6(v3, v2);
}

void sub_1DAF502F0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a2[24];
  if (v11 >> 60 == 15)
  {
    v12 = a2[25];
    v13 = v12[2];
    v14 = *(v5 + 16);
    if (v13)
    {
      v14(v8, a1, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a2[25] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1DAF73138(0, v13 + 1, 1, v12);
        a2[25] = v12;
      }

      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        v12 = sub_1DAF73138((v16 > 1), v17 + 1, 1, v12);
      }

      v12[2] = v17 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v8, v4);
      a2[25] = v12;
    }

    else
    {
      v14(v10, a1, v4);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      a2[25] = v12;
      if ((v18 & 1) == 0)
      {
        v12 = sub_1DAF73138(0, 1, 1, v12);
        a2[25] = v12;
      }

      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        v12 = sub_1DAF73138((v19 > 1), v20 + 1, 1, v12);
      }

      v12[2] = v20 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v10, v4);
      a2[25] = v12;
      v21 = [objc_allocWithZone(GzVCsVtcKNcQqqNF) init];
      v27 = sub_1DAF628C4;
      v28 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1DAF51028;
      v26 = &block_descriptor_119;
      v22 = _Block_copy(&aBlock);

      [v21 vffg4lwI2HftPvpO_];
      _Block_release(v22);
    }
  }

  else
  {
    aBlock = a2[23];
    v24 = v11;
    sub_1DAF40674(aBlock, v11);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF50664(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1DB09DA24();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v12[7] = a2;
  v13 = a3;

  sub_1DAF4ED88(a1, a2);
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2840, v12);
}

uint64_t sub_1DAF5079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF50884, 0, 0);
}

uint64_t sub_1DAF50884()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    v4 = sub_1DAF50BA0;
LABEL_16:
    v19 = v4;
    v20 = v2;
    goto LABEL_17;
  }

  v5 = *(v0 + 176);
  if (v5 >> 60 != 15)
  {
    v2 = *(v0 + 160);
    sub_1DAF40674(*(v0 + 168), v5);
    v4 = sub_1DAF50E84;
    goto LABEL_16;
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v7 + 16))
  {
    v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v9)
    {
      sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 136);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
  }

  v10 = *(v6 + 2);
  v11 = *(v6 + 3);
  v12 = v10 + 1;
  if (v10 >= v11 >> 1)
  {
    v21 = v10 + 1;
    v22 = v6;
    v23 = *(v6 + 2);
    v24 = sub_1DAF72EC0((v11 > 1), v10 + 1, 1, v22);
    v10 = v23;
    v12 = v21;
    v6 = v24;
  }

  v13 = *(v0 + 160);
  *(v6 + 2) = v12;
  v14 = &v6[56 * v10];
  *(v14 + 4) = 0;
  *(v14 + 5) = 0xE000000000000000;
  *(v14 + 6) = 0xD000000000000024;
  *(v14 + 7) = 0x80000001DB0C27D0;
  *(v14 + 8) = 0xD000000000000013;
  *(v14 + 9) = 0x80000001DB0C2B70;
  *(v14 + 10) = 147;
  *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 48) = v6;
  sub_1DAF183D0((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1DB09D6B4();
  v18 = sub_1DB09D604();
  *(v0 + 224) = [v16 initWithDomain:v17 code:-5108 userInfo:v18];

  v19 = sub_1DAF50D3C;
  v20 = v13;
LABEL_17:

  return MEMORY[0x1EEE6DFA0](v19, v20, 0);
}

uint64_t sub_1DAF50BA0()
{
  v1 = *(v0[20] + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[24];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);

    do
    {
      v9 = v0[27];
      v10 = v0[23];
      v11 = v0[19];
      v5(v9, v7, v10);
      v0[18] = v11;
      v12 = v11;
      sub_1DB09D9A4();
      (*(v4 - 8))(v9, v10);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  return MEMORY[0x1EEE6DFA0](sub_1DAF50CC0, 0, 0);
}

uint64_t sub_1DAF50CC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF50D3C()
{
  v1 = *(v0[20] + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[24];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);

    do
    {
      v9 = v0[28];
      v10 = v0[26];
      v11 = v0[23];
      v5(v10, v7, v11);
      v0[16] = v9;
      v12 = v9;
      sub_1DB09D9A4();
      (*(v4 - 8))(v10, v11);
      v7 += v8;
      --v2;
    }

    while (v2);
    v13 = v0[28];
  }

  else
  {
    v13 = v0[28];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DAF50E84()
{
  v1 = *(v0[20] + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[24];
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v13 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *(v4 + 56);

    do
    {
      v8 = v0[25];
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[21];
      v13(v8, v6, v9);
      v0[14] = v11;
      v0[15] = v10;
      sub_1DAF4ED88(v11, v10);
      sub_1DB09D9B4();
      (*(v4 - 8))(v8, v9);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  return MEMORY[0x1EEE6DFA0](sub_1DAF50FAC, 0, 0);
}

uint64_t sub_1DAF50FAC()
{
  sub_1DAF4AC40(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DAF51028(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1DB09D034();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1DAF4AC40(v4, v8);
}

uint64_t sub_1DAF510D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF510F4, v1, 0);
}

uint64_t sub_1DAF510F4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DB09DF04();
    v4 = (v1 + 32);
    v5 = v2;
    do
    {
      v6 = *v4;
      v4 += 2;
      v7 = v6;
      sub_1DB09DEE4();
      sub_1DB09DF14();
      sub_1DB09DF24();
      sub_1DB09DEF4();
      --v5;
    }

    while (v5);
    v8 = v25;
    sub_1DB09DF04();
    v9 = (v1 + 40);
    do
    {
      v12 = *v9;
      v9 += 2;
      v10 = v12;
      if (!v12)
      {
        [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v10 = 0;
      }

      v11 = v10;
      sub_1DB09DEE4();
      sub_1DB09DF14();
      sub_1DB09DF24();
      sub_1DB09DEF4();
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v0[4] = v8;
  if (v3 >> 62)
  {

    v23 = sub_1DB09DFB4();
    v14 = swift_bridgeObjectRelease_n();
    v3 = v23;
  }

  else
  {
    v13 = v3 & 0xFFFFFFFFFFFFFF8;

    sub_1DB09E284();
    if (swift_dynamicCastMetatype() || (v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_13:
    }

    else
    {
      v22 = (v13 + 32);
      while (*v22)
      {
        ++v22;
        if (!--v21)
        {
          goto LABEL_13;
        }
      }

      v3 = v13 | 1;
    }
  }

  v0[5] = v3;
  v16 = v0[3];
  v17 = sub_1DAF5F57C(v14, v15);
  v18 = swift_task_alloc();
  v0[6] = v18;
  *(v18 + 16) = v8;
  *(v18 + 24) = v3;
  v19 = swift_task_alloc();
  v0[7] = v19;
  *v19 = v0;
  v19[1] = sub_1DAF513C4;
  v20 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v19, v16, v17, 0xD00000000000002ALL, 0x80000001DB0C2B20, sub_1DAF6288C, v18, v20);
}

uint64_t sub_1DAF513C4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1DAF5151C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1DAF51504;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF5151C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF51594(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1DAF5F4FC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1DB09CD44();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1DB09CD74();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1DB09CD44();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1DB09CD74();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB0A04E0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1DB09D704();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1DAF5F4FC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

char *sub_1DAF51910(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DB09DD44();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1DAF5F53C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E1280530](i, a1);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1DAF5F53C((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_1DAF183D0(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1DAF5F53C((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_1DAF183D0(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAF51AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DAF5F53C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DAF5F53C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1DAF183D0(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DAF51BEC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1DAF4062C(0, &qword_1ECC0E530, off_1E85ED2D0);
    v2 = sub_1DB09D934();
  }

  v3(v2);
}

void sub_1DAF51C74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E528, &qword_1DB0A2798);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v9 = sub_1DB09D914();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_1DAF624A8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF51BEC;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  [a2 fetchGeoCodingsForAddresses:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DAF51E58(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E528, &qword_1DB0A2798);
  return sub_1DB09D9B4();
}

void sub_1DAF51EA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(ODNServices) init];
  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v10 = sub_1DB09D914();
  sub_1DAF51910(a3);
  v11 = sub_1DB09D914();

  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_1DAF62894;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF52158;
  aBlock[3] = &block_descriptor_114;
  v14 = _Block_copy(aBlock);

  [v9 updateGeoCodingsForAddresses:v10 locations:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1DAF520E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    return sub_1DB09D9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    return sub_1DB09D9B4();
  }
}

void sub_1DAF52158(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1DAF521C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A0, &qword_1DB0A28D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = [objc_allocWithZone(ODNServices) init];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_1DAF62F5C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF52518;
  aBlock[3] = &block_descriptor_169;
  v9 = _Block_copy(aBlock);

  [v6 fetchConfigWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1DAF52390(uint64_t a1)
{
  if (a1 && (sub_1DAFEEEE0(a1, v7), sub_1DAF33380(v7) != 1))
  {
    v8[10] = v7[10];
    v8[11] = v7[11];
    v8[12] = v7[12];
    v8[13] = v7[13];
    v8[6] = v7[6];
    v8[7] = v7[7];
    v8[8] = v7[8];
    v8[9] = v7[9];
    v8[2] = v7[2];
    v8[3] = v7[3];
    v8[4] = v7[4];
    v8[5] = v7[5];
    v8[0] = v7[0];
    v8[1] = v7[1];
    v9 = 1;
  }

  else
  {
    if (qword_1EE304018 != -1)
    {
      swift_once();
    }

    v2 = sub_1DB09D4B4();
    __swift_project_value_buffer(v2, qword_1EE304020);
    v3 = sub_1DB09D494();
    v4 = sub_1DB09DB64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAF16000, v3, v4, "No config from asd.", v5, 2u);
      MEMORY[0x1E1281810](v5, -1, -1);
    }

    sub_1DAFEF700(a1, v8);
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A0, &qword_1DB0A28D8);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF52518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1DB09D624();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_1DAF525A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21[0] = MEMORY[0x1E69E7CC0];
    sub_1DAF5F55C(0, v6, 0);
    v7 = v21[0];
    v9 = (a3 + 32);
    do
    {
      v10 = v9[1];
      v22 = *v9;
      v23 = v10;
      v24[0] = v9[2];
      *(v24 + 10) = *(v9 + 42);
      v11 = sub_1DB0273D4();
      v21[0] = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = v11;
        sub_1DAF5F55C((v12 > 1), v13 + 1, 1);
        v11 = v14;
        v7 = v21[0];
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 8 * v13 + 32) = v11;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  v15 = *(v3 + 176);
  *&v22 = *(v3 + 168);
  *(&v22 + 1) = v15;
  v21[0] = 5;
  v21[1] = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000002CLL, 0x80000001DB0C26C0);
  MEMORY[0x1E127FE90](a1, a2);
  MEMORY[0x1E127FE90](0x6569662065687420, 0xEC0000002073646CLL);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
  v17 = MEMORY[0x1E1280010](v7, v16);
  MEMORY[0x1E127FE90](v17);

  CoreODILogger.info(_:category:)(0, 0xE000000000000000, v21);

  v18 = [objc_allocWithZone(ODNServices) init];
  v19 = sub_1DB09D6B4();
  sub_1DAF51AD8(v7);

  v20 = sub_1DB09D914();

  [v18 dKsJLlNX54lzKt5n:v19 eqF2XJh3hHBJQf2K:v20];
}

uint64_t sub_1DAF52818(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5283C, v2, 0);
}

uint64_t sub_1DAF5283C()
{
  v12 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v11[0] = 5;
  v11[1] = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000039, 0x80000001DB0C26F0);
  MEMORY[0x1E127FE90](v3, v2);
  CoreODILogger.info(_:category:)(0, 0xE000000000000000, v11);

  v6 = sub_1DAF5F57C(v4, v5);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C8, &unk_1DB0A21C0);
  *v8 = v0;
  v8[1] = sub_1DAF529E8;

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v6, 0xD000000000000024, 0x80000001DB0C2730, sub_1DAF5F5F4, v7, v9);
}

uint64_t sub_1DAF529E8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1DAF52E58;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1DAF52B0C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF52B0C()
{
  v36 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v1 + 176);
  *&v30 = *(v1 + 168);
  *(&v30 + 1) = v5;

  sub_1DB09DE44();

  *&v33 = 0xD000000000000005;
  *(&v33 + 1) = 0x80000001DB0C2760;
  MEMORY[0x1E127FE90](v4, v2);
  MEMORY[0x1E127FE90](8250, 0xE200000000000000);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
  v7 = MEMORY[0x1E1280010](v3, v6);
  MEMORY[0x1E127FE90](v7);

  CoreODILogger.info(_:category:)(0xD000000000000026, 0x80000001DB0C2760, &v33);

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = v0[8];

    DeviceDataField.init(from:)(v10, &v30);
    if (v9)
    {

      v11 = v0[1];

      return v11();
    }

    v33 = v30;
    v34 = v31;
    v35[0] = v32[0];
    *(v35 + 10) = *(v32 + 10);
    v13 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAF7315C((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[64 * v15];
      v17 = v33;
      v18 = v34;
      v19 = v35[0];
      *(v16 + 74) = *(v35 + 10);
      *(v16 + 3) = v18;
      *(v16 + 4) = v19;
      *(v16 + 2) = v17;
      if (v8 == 1)
      {
        break;
      }

      v21 = v3 + 40;
      v22 = 1;
      while (v22 < *(v3 + 16))
      {

        DeviceDataField.init(from:)(v23, &v30);
        v33 = v30;
        v34 = v31;
        v35[0] = v32[0];
        *(v35 + 10) = *(v32 + 10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1DAF7315C(0, *(v13 + 2) + 1, 1, v13);
        }

        v25 = *(v13 + 2);
        v24 = *(v13 + 3);
        if (v25 >= v24 >> 1)
        {
          v13 = sub_1DAF7315C((v24 > 1), v25 + 1, 1, v13);
        }

        ++v22;
        *(v13 + 2) = v25 + 1;
        v26 = &v13[64 * v25];
        v27 = v33;
        v28 = v34;
        v29 = v35[0];
        *(v26 + 74) = *(v35 + 10);
        *(v26 + 3) = v28;
        *(v26 + 4) = v29;
        *(v26 + 2) = v27;
        v21 += 8;
        if (v8 == v22)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_23:
      v13 = sub_1DAF7315C(0, *(v13 + 2) + 1, 1, v13);
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

LABEL_11:

  v20 = v0[1];

  return v20(v13);
}

uint64_t sub_1DAF52E58()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DAF52EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E600, &qword_1DB0A2A08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = [objc_allocWithZone(ODNServices) init];
  v9 = sub_1DB09D6B4();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_1DAF63C58;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF534EC;
  aBlock[3] = &block_descriptor_249;
  v12 = _Block_copy(aBlock);

  [v8 evrtH713YbFfEOzk:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DAF530A8(uint64_t a1, id a2)
{
  if (a2)
  {
    *&v21 = a2;
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E600, &qword_1DB0A2A08);
    return sub_1DB09D9A4();
  }

  if (!a1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, &v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *&v20[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v19 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
      v12 = v11 + 1;
      v6 = v19;
    }

    *(v6 + 2) = v12;
    v13 = &v6[56 * v11];
    *(v13 + 4) = 0xD000000000000022;
    *(v13 + 5) = 0x80000001DB0C2FB0;
    *(v13 + 6) = 0xD000000000000024;
    *(v13 + 7) = 0x80000001DB0C27D0;
    *(v13 + 8) = 0xD000000000000024;
    *(v13 + 9) = 0x80000001DB0C2730;
    *(v13 + 10) = 228;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v21 = v6;
    sub_1DAF183D0(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v20, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1DB09D6B4();
    v17 = sub_1DB09D604();
    v18 = [v15 initWithDomain:v16 code:-3184 userInfo:v17];

    *&v21 = v18;
    goto LABEL_3;
  }

  v4 = sub_1DAF533C4(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v5 = v4;
  }

  *&v21 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E600, &qword_1DB0A2A08);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF533C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DAF5F55C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1DAF409DC(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DAF5F55C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1DAF534EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DB09D934();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1DAF53588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = a8;
  *(v9 + 192) = v8;
  *(v9 + 168) = a6;
  *(v9 + 176) = a7;
  *(v9 + 364) = a5;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4;
  *(v9 + 144) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  *(v9 + 200) = swift_task_alloc();
  v11 = sub_1DB09D524();
  *(v9 + 208) = v11;
  *(v9 + 216) = *(v11 - 8);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = type metadata accessor for ODISignpost(0);
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = *a2;
  *(v9 + 280) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF536F8, v8, 0);
}

uint64_t sub_1DAF536F8()
{
  if (qword_1EE301360 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[31];
  v4 = qword_1EE309EF8;
  v3 = unk_1EE309F00;
  v5 = byte_1EE309F08;
  v6 = qword_1EE309F10;
  v7 = byte_1EE309F18;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[31], v0[32]);
  sub_1DB09D514();

  return MEMORY[0x1EEE6DFA0](sub_1DAF53884, 0, 0);
}

uint64_t sub_1DAF53884()
{
  v1 = *(v0 + 280);
  v6 = *(v0 + 264);
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  *(v2 + 40) = 2;
  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5E0, &qword_1DB0A29A0);
  *v3 = v0;
  v3[1] = sub_1DAF5399C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1DAF63874, v2, v4);
}

uint64_t sub_1DAF5399C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1DAF5451C;
  }

  else
  {

    v2 = sub_1DAF53AB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF53AB8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 32);
  *(v0 + 312) = *(v0 + 16);
  *(v0 + 328) = v2;
  *(v0 + 344) = *(v0 + 48);
  *(v0 + 360) = *(v0 + 64);
  return MEMORY[0x1EEE6DFA0](sub_1DAF53AF0, v1, 0);
}

uint64_t sub_1DAF53AF0()
{
  v95 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v90 = *(v0 + 208);
  v92 = *(v0 + 232);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  v7 = sub_1DB09DC04();
  v86 = *v1;
  v88 = *(v1 + 24);
  v84 = *(v1 + 8);
  v8 = *(v2 + 28);
  v9 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB0A0500;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DAF4DC24();
  v11 = MEMORY[0x1E69E6370];
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v12 = MEMORY[0x1E69E63A8];
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = 0;
  sub_1DB09D454(v7, &dword_1DAF16000, v88, v86, v84, v9, v1 + v8, "<workflowID>=%{public, signpost.telemetry:string1}s <isBackground>=%{public, signpost.telemetry:number1}d", 105, 2, v10);

  sub_1DB09D514();
  v13 = sub_1DB09D504();
  (*(v4 + 8))(v3, v90);
  v14 = sub_1DB09D504();
  v15 = v13 - v14;
  if (v13 < v14)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = 7104878;
  v17 = *(v0 + 360);
  v18 = *(v0 + 320);
  v19 = v15 / 1000000000.0;
  v93 = 0;
  v94 = 0xE000000000000000;

  sub_1DB09DE44();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  MEMORY[0x1E127FE90](0xD000000000000014, 0x80000001DB0C2DE0);
  *(v0 + 68) = v17;
  v20 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v20);

  MEMORY[0x1E127FE90](0x207265746661202CLL, 0xE800000000000000);
  sub_1DB09DAC4();
  MEMORY[0x1E127FE90](0x73646E6F63657320, 0xE800000000000000);
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  LOBYTE(v93) = 9;
  CoreODILogger.debug(_:category:)(v21, v22, &v93);

  v93 = 0x206174616474;
  v94 = 0xE600000000000000;

  if (v18 >> 60 == 15)
  {
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    *(v0 + 120) = sub_1DAF51594(*(v0 + 312), *(v0 + 320));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF639B4();
    v25 = sub_1DB09D694();
    v23 = v26;

    v24 = v25;
  }

  v27 = *(v0 + 336);
  MEMORY[0x1E127FE90](v24, v23);

  v28 = v93;
  LOBYTE(v93) = 12;
  CoreODILogger.debug(_:category:)(v28, v94, &v93);

  v93 = 0x656D737365737361;
  v94 = 0xEB0000000020746ELL;

  if (v27 >> 60 == 15)
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    *(v0 + 136) = sub_1DAF51594(*(v0 + 328), *(v0 + 336));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF639B4();
    v31 = sub_1DB09D694();
    v29 = v32;

    v30 = v31;
  }

  v33 = *(v0 + 352);
  MEMORY[0x1E127FE90](v30, v29);

  v34 = v93;
  LOBYTE(v93) = 12;
  CoreODILogger.debug(_:category:)(v34, v94, &v93);

  v93 = 0x206174616463;
  v94 = 0xE600000000000000;

  if (v33 >> 60 == 15)
  {
    v35 = 0xE300000000000000;
  }

  else
  {
    *(v0 + 128) = sub_1DAF51594(*(v0 + 344), *(v0 + 352));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF639B4();
    v16 = sub_1DB09D694();
    v35 = v36;
  }

  MEMORY[0x1E127FE90](v16, v35);

  v37 = v93;
  LOBYTE(v93) = 12;
  CoreODILogger.debug(_:category:)(v37, v94, &v93);

  v38 = *(v0 + 360);
  v39 = *(v0 + 344);
  v40 = *(v0 + 352);
  v41 = *(v0 + 328);
  v1 = *(v0 + 336);
  v43 = *(v0 + 312);
  v42 = *(v0 + 320);
  v44 = *(v0 + 176);
  v45 = sub_1DB09DA64();
  v92 = v41;
  if (v44)
  {
    v46 = *(v0 + 200);
    v91 = v38;
    v47 = *(v0 + 192);
    v87 = *(v0 + 184);
    v89 = v46;
    v83 = *(v0 + 160);
    v85 = *(v0 + 176);
    v81 = *(v0 + 152);
    v82 = v45;
    v48 = sub_1DB09DA24();
    v49 = (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
    v51 = v39;
    v52 = v40;
    v53 = v41;
    v54 = v1;
    v55 = v43;
    v56 = v42;
    v57 = sub_1DAF5F57C(v49, v50);
    v58 = swift_allocObject();
    *(v58 + 16) = v47;
    *(v58 + 24) = v57;
    v42 = v56;
    v43 = v55;
    v80 = v54;
    *(v58 + 32) = v53;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    *(v58 + 56) = v42;
    *(v58 + 64) = v51;
    *(v58 + 72) = v52;
    *(v58 + 80) = v91;
    *(v58 + 88) = v19;
    *(v58 + 96) = v47;
    *(v58 + 104) = v81;
    *(v58 + 112) = v83;
    *(v58 + 120) = v85;
    *(v58 + 128) = v87;
    *(v58 + 136) = v82 & 1;
    *(v58 + 144) = 0;
    v38 = v91;
    swift_retain_n();

    sub_1DAF60A20(v85, v87);
    sub_1DAF4ED88(v55, v42);
    v41 = v92;
    sub_1DAF4ED88(v92, v80);
    v40 = v52;
    sub_1DAF4ED88(v51, v52);
    v59 = 0;
    v60 = v58;
    v39 = v51;
    v1 = v80;
    sub_1DAF4F0EC(0, 0, v89, &unk_1DB0A29B0, v60);
  }

  if (*(v0 + 364) == 1 && v40 >> 60 == 15)
  {
    v88 = v43;
    v90 = v42;
    if (qword_1EE301DE8 == -1)
    {
LABEL_16:
      v61 = v1;
      v62 = *(v0 + 168);
      v63 = qword_1EE30A148;
      v64 = sub_1DB09DB64();
      sub_1DB09D444("ODN no error and no cbor assessments", 36, 2, &dword_1DAF16000, v63, v64, MEMORY[0x1E69E7CC0]);
      LOBYTE(v93) = -122;
      v65 = sub_1DAF55460(v62);
      ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000027, 0x80000001DB0C2D40, 0, &v93, 0, v65, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000003BLL, 0x80000001DB0C2CD0, 299);

LABEL_21:
      swift_willThrow();
      v70 = *(v0 + 256);
      v71 = *(v0 + 232);
      v73 = *(v0 + 208);
      v72 = *(v0 + 216);
      sub_1DAF4AC40(v92, v61);
      sub_1DAF4AC40(v88, v90);
      (*(v72 + 8))(v71, v73);
      sub_1DAF60868(v70);

      v74 = *(v0 + 8);
      v75 = 0;
      goto LABEL_23;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  if (v1 >> 60 == 15)
  {
    v88 = v43;
    v90 = v42;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 168);
    v67 = qword_1EE30A148;
    v68 = sub_1DB09DB64();
    sub_1DB09D444("ODN no error and no assessments", 31, 2, &dword_1DAF16000, v67, v68, MEMORY[0x1E69E7CC0]);
    LOBYTE(v93) = -127;
    v69 = sub_1DAF55460(v66);
    ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000022, 0x80000001DB0C2CA0, 0, &v93, 0, v69, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000003BLL, 0x80000001DB0C2CD0, 303);

    v61 = v40;
    v92 = v39;
    goto LABEL_21;
  }

  v76 = *(v0 + 256);
  v77 = v1;
  v78 = *(v0 + 144);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  sub_1DAF60868(v76);
  *v78 = v43;
  *(v78 + 8) = v42;
  *(v78 + 16) = v41;
  *(v78 + 24) = v77;
  *(v78 + 32) = v39;
  *(v78 + 40) = v40;
  *(v78 + 48) = v38;
  *(v78 + 56) = v19;

  v74 = *(v0 + 8);
  v75 = *(v0 + 304) == 0;
LABEL_23:

  return v74(v75);
}

uint64_t sub_1DAF5451C()
{
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1DAF54588, v1, 0);
}

uint64_t sub_1DAF54588()
{
  v46 = v0;
  v1 = *(v0 + 304);
  v2 = v1;
  if (qword_1EE301DE8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 304);
  v4 = qword_1EE30A148;
  v5 = sub_1DB09DB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB0A0500;
  v7 = sub_1DB09CE64();
  v8 = [v7 code];

  v9 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v9;
  *(v6 + 32) = v8;
  swift_getErrorValue();
  v10 = sub_1DB09E324();
  v12 = v11;
  *(v6 + 96) = MEMORY[0x1E69E6158];
  *(v6 + 104) = sub_1DAF4DC24();
  *(v6 + 72) = v10;
  *(v6 + 80) = v12;

  sub_1DB09D444("error retrieving ODIN data. %{public}d - %{public}@", 51, 2, &dword_1DAF16000, v4, v5, v6);

  v13 = *(v0 + 176);
  v14 = sub_1DB09DA64();
  if (v13)
  {
    v15 = v14;
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v43 = v16;
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    v22 = sub_1DB09DA24();
    v23 = (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
    v25 = sub_1DAF5F57C(v23, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v17;
    *(v26 + 24) = v25;
    *(v26 + 32) = xmmword_1DB0A2190;
    *(v26 + 48) = xmmword_1DB0A2190;
    *(v26 + 64) = xmmword_1DB0A2190;
    *(v26 + 80) = 0;
    *(v26 + 88) = 0xBFF0000000000000;
    *(v26 + 96) = v17;
    *(v26 + 104) = v20;
    *(v26 + 112) = v21;
    *(v26 + 120) = v19;
    *(v26 + 128) = v18;
    *(v26 + 136) = v15 & 1;
    *(v26 + 144) = v1;
    swift_retain_n();

    sub_1DAF60A20(v19, v18);
    sub_1DAF4ED88(0, 0xF000000000000000);
    sub_1DAF4ED88(0, 0xF000000000000000);
    sub_1DAF4ED88(0, 0xF000000000000000);
    v27 = v1;
    sub_1DAF4F0EC(0, 0, v43, &unk_1DB0A29B0, v26);
  }

  if (v1)
  {
    v28 = sub_1DAF55460(*(v0 + 168));
    sub_1DAF610E0(v1, v28);

    swift_willThrow();

    sub_1DAF4AC40(0, 0xF000000000000000);
  }

  else
  {
    if (*(v0 + 364) == 1)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 168);
      v30 = qword_1EE30A148;
      v31 = sub_1DB09DB64();
      sub_1DB09D444("ODN no error and no cbor assessments", 36, 2, &dword_1DAF16000, v30, v31, MEMORY[0x1E69E7CC0]);
      v45[0] = -122;
      v32 = sub_1DAF55460(v29);
      ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000027, 0x80000001DB0C2D40, 0, v45, 0, v32, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000003BLL, 0x80000001DB0C2CD0, 299);
    }

    else
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 168);
      v34 = qword_1EE30A148;
      v35 = sub_1DB09DB64();
      sub_1DB09D444("ODN no error and no assessments", 31, 2, &dword_1DAF16000, v34, v35, MEMORY[0x1E69E7CC0]);
      v44 = -127;
      v36 = sub_1DAF55460(v33);
      ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000022, 0x80000001DB0C2CA0, 0, &v44, 0, v36, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000003BLL, 0x80000001DB0C2CD0, 303);
    }

    swift_willThrow();
  }

  v37 = *(v0 + 256);
  v38 = *(v0 + 232);
  v39 = *(v0 + 208);
  v40 = *(v0 + 216);
  sub_1DAF4AC40(0, 0xF000000000000000);
  sub_1DAF4AC40(0, 0xF000000000000000);
  (*(v40 + 8))(v38, v39);
  sub_1DAF60868(v37);

  v41 = *(v0 + 8);

  return v41(0);
}

uint64_t sub_1DAF54AD8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 368) = v18;
  *(v9 + 388) = v17;
  *(v9 + 336) = v15;
  *(v9 + 352) = v16;
  *(v9 + 328) = v14;
  *(v9 + 320) = a1;
  *(v9 + 384) = v13;
  *(v9 + 304) = a9;
  *(v9 + 312) = v12;
  *(v9 + 288) = a7;
  *(v9 + 296) = a8;
  *(v9 + 272) = a5;
  *(v9 + 280) = a6;
  sub_1DAF4ED88(a5, a6);

  return MEMORY[0x1EEE6DFA0](sub_1DAF54B88, v14, 0);
}

uint64_t sub_1DAF54B88()
{
  v62 = v0;
  if (qword_1EE301DE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = qword_1EE30A148;
  v3 = sub_1DB09DB54();
  sub_1DB09D444("Preparing to call odn completion function", 41, 2, &dword_1DAF16000, v2, v3, MEMORY[0x1E69E7CC0]);
  if (v1 >> 60 == 15)
  {
    v4 = *(v0 + 312);
    if (v4 >> 60 == 15)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xF000000000000000;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      goto LABEL_18;
    }

    v27 = *(v0 + 336);
    v26 = *(v0 + 344);
    v28 = *(v0 + 328);
    v30 = *(v0 + 296);
    v29 = *(v0 + 304);
    v31 = *(v0 + 288);
    v33 = *(v28 + 168);
    v32 = *(v28 + 176);
    sub_1DAF4ED88(v29, v4);
    sub_1DAF4ED88(v31, v30);
    sub_1DAF4ED88(v29, v4);

    sub_1DB09DE44();

    v60 = 0xD00000000000001BLL;
    v61 = 0x80000001DB0C2E30;
    MEMORY[0x1E127FE90](v27, v26);
    if (qword_1EE3019A0 != -1)
    {
      swift_once();
    }

    v34 = sub_1DB09D4B4();
    __swift_project_value_buffer(v34, qword_1EE30A068);

    v35 = sub_1DB09D494();
    v36 = sub_1DB09DB54();

    v37 = os_log_type_enabled(v35, v36);
    v18 = *(v0 + 320);
    v19 = *(v0 + 384);
    v39 = *(v0 + 304);
    v38 = *(v0 + 312);
    v40 = *(v0 + 296);
    v58 = *(v0 + 288);
    if (v37)
    {
      v55 = *(v0 + 296);
      v41 = v33;
      v42 = swift_slowAlloc();
      v53 = v19;
      v43 = swift_slowAlloc();
      v60 = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_1DB015E84(v41, v32, &v60);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1DB015E84(0x3632636634373131, 0xE800000000000000, &v60);
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_1DB015E84(0xD00000000000001BLL, 0x80000001DB0C2E30, &v60);
      _os_log_impl(&dword_1DAF16000, v35, v36, "[%s] (%s) %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1281810](v43, -1, -1);
      MEMORY[0x1E1281810](v42, -1, -1);

      sub_1DAF4AC40(v39, v38);

      *(v0 + 16) = v58;
      *(v0 + 24) = v55;
      *(v0 + 32) = xmmword_1DB0A0510;
      *(v0 + 48) = v39;
      *(v0 + 56) = v38;
      *(v0 + 64) = v53;
      goto LABEL_17;
    }

    sub_1DAF4AC40(v39, v38);

    *(v0 + 16) = v58;
    *(v0 + 24) = v40;
    *(v0 + 32) = xmmword_1DB0A0510;
    *(v0 + 48) = v39;
    *(v0 + 56) = v38;
LABEL_16:
    *(v0 + 64) = v19;
    goto LABEL_17;
  }

  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v13 = *(v7 + 168);
  v12 = *(v7 + 176);
  sub_1DAF4ED88(*(v0 + 272), *(v0 + 280));
  sub_1DAF4ED88(v11, v10);
  sub_1DAF4ED88(v9, v8);

  sub_1DB09DE44();

  v60 = 0xD000000000000016;
  v61 = 0x80000001DB0C2E50;
  MEMORY[0x1E127FE90](v6, v5);
  if (qword_1EE3019A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1DB09D4B4();
  __swift_project_value_buffer(v14, qword_1EE30A068);

  v15 = sub_1DB09D494();
  v16 = sub_1DB09DB54();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 320);
  v19 = *(v0 + 384);
  v20 = *(v0 + 312);
  v56 = *(v0 + 296);
  v57 = *(v0 + 304);
  v54 = *(v0 + 288);
  v22 = *(v0 + 272);
  v21 = *(v0 + 280);
  if (!v17)
  {

    sub_1DAF4AC40(v22, v21);

    *(v0 + 16) = v54;
    *(v0 + 24) = v56;
    *(v0 + 32) = v22;
    *(v0 + 40) = v21;
    *(v0 + 48) = v57;
    *(v0 + 56) = v20;
    goto LABEL_16;
  }

  v52 = *(v0 + 312);
  v23 = v13;
  v24 = swift_slowAlloc();
  v51 = v19;
  v25 = swift_slowAlloc();
  v60 = v25;
  *v24 = 136315650;
  *(v24 + 4) = sub_1DB015E84(v23, v12, &v60);
  *(v24 + 12) = 2080;
  *(v24 + 14) = sub_1DB015E84(0x3962363931376166, 0xE800000000000000, &v60);
  *(v24 + 22) = 2080;
  *(v24 + 24) = sub_1DB015E84(0xD000000000000016, 0x80000001DB0C2E50, &v60);
  _os_log_impl(&dword_1DAF16000, v15, v16, "[%s] (%s) %s", v24, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E1281810](v25, -1, -1);
  MEMORY[0x1E1281810](v24, -1, -1);

  sub_1DAF4AC40(v22, v21);

  *(v0 + 16) = v54;
  *(v0 + 24) = v56;
  *(v0 + 32) = v22;
  *(v0 + 40) = v21;
  *(v0 + 48) = v57;
  *(v0 + 56) = v52;
  *(v0 + 64) = v51;
LABEL_17:
  *(v0 + 72) = v18;
LABEL_18:
  v44 = *(v0 + 388);
  v45 = *(v0 + 352);
  v46 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v46;
  v47 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v47;
  sub_1DAF40A84(v0 + 16, v0 + 208, &qword_1ECC0E5E8, &unk_1DB0A29C0);
  v59 = (v45 + *v45);
  v48 = swift_task_alloc();
  *(v0 + 376) = v48;
  *v48 = v0;
  v48[1] = sub_1DAF552B8;
  v49 = *(v0 + 368);

  return v59(v0 + 144, (v44 & 1) == 0, v49);
}

uint64_t sub_1DAF552B8()
{
  v1 = *v0;
  v2 = *(*v0 + 328);

  v3 = v1[10];
  v1[5] = v1[9];
  v1[6] = v3;
  v4 = v1[12];
  v1[7] = v1[11];
  v1[8] = v4;
  sub_1DAF40AEC((v1 + 5), &qword_1ECC0E5E8, &unk_1DB0A29C0);

  return MEMORY[0x1EEE6DFA0](sub_1DAF553F0, v2, 0);
}

uint64_t sub_1DAF553F0()
{
  sub_1DAF40AEC(v0 + 16, &qword_1ECC0E5E8, &unk_1DB0A29C0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF55460(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E378, &qword_1DB0A0300);
    v2 = sub_1DB09DFF4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_16:
    v15 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v16 = v15 | (v9 << 6);
    v17 = *(*(a1 + 48) + v16);
    sub_1DAF409DC(*(a1 + 56) + 32 * v16, v28 + 8);
    LOBYTE(v28[0]) = v17;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    LOBYTE(v25[0]) = v17;
    sub_1DAF183D0((v26 + 8), &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5F8, &qword_1DB0A2A00);
    swift_dynamicCast();
    v22 = v25[0];
    sub_1DAF183D0((v25 + 8), v23);
    sub_1DAF183D0(v23, v25);
    sub_1DB09E3A4();
    sub_1DB09D794();

    result = sub_1DB09E3E4();
    v10 = -1 << *(v2 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    if (((-1 << v11) & ~*(v7 + 8 * (v11 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v10) >> 6;
      while (++v12 != v19 || (v18 & 1) == 0)
      {
        v20 = v12 == v19;
        if (v12 == v19)
        {
          v12 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v12);
        if (v21 != -1)
        {
          v13 = __clz(__rbit64(~v21)) + (v12 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_27;
    }

    v13 = __clz(__rbit64((-1 << v11) & ~*(v7 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v2 + 48) + v13) = v22;
    result = sub_1DAF183D0(v25, (*(v2 + 56) + 32 * v13));
    ++*(v2 + 16);
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v9;
    if (v5)
    {
      v9 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DAF55920(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E338, &qword_1DB0A02C0);
    v2 = sub_1DB09DFF4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DAF3523C(*(a1 + 56) + 40 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    *&v34[5] = v37;
    v35[0] = v38[0];
    v35[1] = v38[1];
    v36 = v39;
    v25 = v16;
    v26 = v15;

    swift_dynamicCast();
    sub_1DAF332B8(v35, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1DAF183D0(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1DAF183D0(v34, v24);
    result = sub_1DB09DD84();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_1DAF183D0(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1DAF55C2C(uint64_t a1)
{
  v2 = sub_1DB09D154();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E548, &qword_1DB0A27B0);
  v5 = MEMORY[0x1EEE9AC00](v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E388, &unk_1DB0A0310);
    v8 = sub_1DB09DFF4();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    sub_1DAF624E8(v26, v45, &qword_1ECC0E548, &qword_1DB0A27B0);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    sub_1DAF183D0(&v51, v53);
    sub_1DAF183D0(v53, v54);
    sub_1DAF183D0(v54, &v52);
    result = sub_1DAF35210(v31, v30);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      result = sub_1DAF183D0(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = sub_1DAF183D0(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DAF56044(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E338, &qword_1DB0A02C0);
    v2 = sub_1DB09DFF4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DAF409DC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1DAF183D0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1DAF183D0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1DAF183D0(v31, v32);
    result = sub_1DB09DD84();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1DAF183D0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1DAF5630C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E3A0, &unk_1DB0A28E0);
    v2 = sub_1DB09DFF4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        swift_dynamicCast();
        sub_1DAF332B8(&v22, v24);
        sub_1DAF332B8(v24, v25);
        sub_1DAF332B8(v25, &v23);
        result = sub_1DAF35210(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 40 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_1DAF332B8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1DAF332B8(&v23, v2[7] + 40 * result);
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DAF56578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[4] = a5;
  v8[5] = a1;
  v8[2] = a3;
  v8[3] = a4;
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_1DAF5667C;

  return sub_1DAF53588(a1, (v8 + 2), a6, a7, a8, v16, v17, v18);
}

uint64_t sub_1DAF5667C(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1DAF567CC;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = sub_1DAF567A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAF567E4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 384) = v20;
  *(v9 + 392) = v8;
  *(v9 + 376) = v19;
  *(v9 + 226) = v18;
  *(v9 + 225) = v17;
  *(v9 + 360) = v16;
  *(v9 + 344) = v15;
  *(v9 + 328) = a7;
  *(v9 + 336) = a8;
  *(v9 + 312) = a4;
  *(v9 + 320) = a6;
  *(v9 + 296) = a1;
  *(v9 + 304) = a3;
  v12 = sub_1DB09D154();
  *(v9 + 400) = v12;
  *(v9 + 408) = *(v12 - 8);
  *(v9 + 416) = swift_task_alloc();
  sub_1DB09D344();
  *(v9 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = type metadata accessor for ODISignpost(0);
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = *a2;
  *(v9 + 480) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1DAF569A0, v8, 0);
}

uint64_t sub_1DAF569C8()
{
  v1 = swift_task_alloc();
  *(v0 + 496) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF56AA4;
  v2 = *(v0 + 488);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0x6B726F57656B6174, 0xEF29286E656B6F54, sub_1DAF5F5FC, v2, v3);
}

uint64_t sub_1DAF56AA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF56BA0, 0, 0);
}

uint64_t sub_1DAF56BBC()
{
  v106 = v0;
  if (qword_1EE301458 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = qword_1EE309F98;
  v3 = unk_1EE309FA0;
  v5 = byte_1EE309FA8;
  v6 = qword_1EE309FB0;
  v7 = byte_1EE309FB8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v12 = *(v0 + 360);
  v11 = *(v0 + 368);
  v13 = *(v0 + 352);
  sub_1DAF5F604(*(v0 + 448), *(v0 + 456));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4D0, &unk_1DB0A5170);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v15 = (inited + 32);
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v12;
  *(inited + 48) = v11;

  v16 = sub_1DAF3E510(inited);
  *(v0 + 504) = v16;
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E358, &qword_1DB0A02E0);
  v17 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_23;
    }

    v18 = *(*(v0 + 344) + 16);
    v19 = *(*(v0 + 344) + 24);
    v20 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (!v20)
    {
      if (v21 == 16)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_39;
  }

  if (v17)
  {
    v47 = *(v0 + 344);
    v48 = *(v0 + 348);
    v20 = __OFSUB__(v48, v47);
    v49 = v48 - v47;
    if (!v20)
    {
      if (v49 == 16)
      {
        goto LABEL_13;
      }

LABEL_23:
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 392);
      v51 = qword_1EE30A148;
      v52 = sub_1DB09DB64();
      sub_1DB09D444("invalid nonce size", 18, 2, &dword_1DAF16000, v51, v52, MEMORY[0x1E69E7CC0]);
      LOBYTE(v104) = 99;
      v53 = sub_1DAF55460(v16);

      v54 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v104, 0, v53, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000008ELL, 0x80000001DB0C2800, 339);

      swift_willThrow();
      v55 = v50[15];
      v56 = v50[16];
      v57 = v50[17];
      v58 = v50[18];
      v59 = v50[19];
      v60 = v50[20];
      *(v50 + 15) = 0u;
      *(v50 + 17) = 0u;
      *(v50 + 19) = 0u;
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if (*(v0 + 358) != 16)
  {
    goto LABEL_23;
  }

LABEL_13:
  v22 = *(v0 + 392);
  v23 = v22[22];
  v103[0] = v22[21];
  v103[1] = v23;
  v104 = 0x636E6F6E206E640ELL;
  v105 = 0xEA00000000002065;

  v24 = sub_1DB09D014();
  MEMORY[0x1E127FE90](v24);

  CoreODILogger.debug(_:category:)(0x636E6F6E206E646FLL, 0xEA00000000002065, &v104);

  v25 = v22[15];
  v92 = v22 + 15;
  v93 = v22;
  v26 = v22[16];
  v27 = v22[17];
  v29 = v22[18];
  v28 = v22[19];
  v30 = v22[20];
  v31 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v99 = v25;
  v101 = v26;
  v97 = v30;
  sub_1DAF608C4(v25, v26, v27, v29, v28, v30);
  v32 = sub_1DB09D6B4();
  v33 = [v31 initWithSuiteName_];

  v34 = *(v0 + 226);
  v98 = v16;
  v95 = v29;
  v96 = v28;
  v94 = v27;
  if (v33)
  {
    v35 = sub_1DB09D6B4();
    v36 = [v33 BOOLForKey_];

    if (v36)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    if ((v34 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v37 = 1;
    if (!*(v0 + 226))
    {
LABEL_18:
      v37 |= 4uLL;
    }
  }

  v38 = *(v0 + 472);
  v39 = *(v0 + 480);
  v40 = *(v0 + 464);
  if ((v38 & 0x2000000000000000) != 0)
  {
    sub_1DAF55920(v39);
    v63 = objc_allocWithZone(HEk7C2N6EkssFH3z);
    sub_1DB09D1D4();
    v41 = sub_1DB09D914();
    v42 = sub_1DB09D004();
    v43 = sub_1DB09D604();

    v44 = sub_1DB09D914();
    v45 = sub_1DB09D004();
    v46 = [v63 initWithY2vJelgtPFLly7lh:v41 Zwvxi3fDtAHqlF0d:v42 KufCqgU8RstLzBzT:v37 BGiN5h2SLMRO6B9R:v43 Jf7L4ypvXegQqMcE:v44 zeXRCfLmM5cdkEtz:v45];
  }

  else
  {
    sub_1DAF40674(v40, v38);
    sub_1DAF55920(v39);
    v91 = objc_allocWithZone(HEk7C2N6EkssFH3z);
    v41 = sub_1DB09D004();
    sub_1DAF60AF4(v40, v38);
    v42 = sub_1DB09D004();
    v43 = sub_1DB09D604();

    v44 = sub_1DB09D914();
    v45 = sub_1DB09D004();
    v46 = [v91 initWithQAy7FB3BSYJUwsIc:v41 Zwvxi3fDtAHqlF0d:v42 KufCqgU8RstLzBzT:v37 BGiN5h2SLMRO6B9R:v43 Jf7L4ypvXegQqMcE:v44 zeXRCfLmM5cdkEtz:v45];
  }

  v15 = v46;
  *(v0 + 520) = v46;

  if (!v15)
  {
    v69 = *(v0 + 360);
    v68 = *(v0 + 368);

    LOBYTE(v104) = 127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_1DB0A04E0;
    *(v70 + 32) = 0;
    *(v70 + 64) = MEMORY[0x1E69E6158];
    *(v70 + 40) = v69;
    *(v70 + 48) = v68;

    v71 = sub_1DAF3E280(v70);
    swift_setDeallocating();
    sub_1DAF40AEC(v70 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
    v54 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001ALL, 0x80000001DB0C28B0, 0, &v104, 0, v71, 0xD000000000000022, 0x80000001DB0C28D0, 0xD000000000000074, 0x80000001DB0C2900, 60);

    swift_willThrow();
    sub_1DAF6080C(v99, v101, v94, v95, v96, v97);

    v55 = v93[15];
    v56 = v93[16];
    v57 = v93[17];
    v58 = v93[18];
    v59 = v93[19];
    v60 = v93[20];
    *v92 = 0u;
    v92[1] = 0u;
    v92[2] = 0u;
LABEL_26:
    sub_1DAF6080C(v55, v56, v57, v58, v59, v60);
    *(v0 + 512) = v54;
    v61 = *(v0 + 456);
    sub_1DAF4FA0C();
    sub_1DAF60868(v61);
    v62 = sub_1DAF57708;
    goto LABEL_42;
  }

  v104 = 45;
  v105 = 0xE100000000000000;
  LOBYTE(v103[0]) = 14;
  if (v97)
  {
    sub_1DAF608C4(v99, v101, v94, v95, v96, v97);
    v64 = v15;

    CoreODILogger.debug(_:category:)(0xD000000000000017, 0x80000001DB0C2A00, v103);

    v65 = sub_1DB09D004();
    [v64 setHostChallenge_];

    v66 = sub_1DB09D004();
    [v64 setChallengeResponse_];

    v67 = sub_1DB09D6B4();
    [v64 setSeid_];

    sub_1DAF6080C(v99, v101, v94, v95, v96, v97);
  }

  else
  {
    v72 = v15;

    CoreODILogger.debug(_:category:)(0xD000000000000016, 0x80000001DB0C2980, v103);
  }

  v73 = *(v0 + 328);
  if (v73 >> 60 == 15)
  {
    v74 = sub_1DAF484E4(32123, 0xE200000000000000);
    v76 = v75;
    v77 = *(v0 + 320);
    v73 = *(v0 + 328);
  }

  else
  {
    v77 = *(v0 + 320);
    v74 = v77;
    v76 = *(v0 + 328);
  }

  sub_1DAF4ED88(v77, v73);
  v78 = sub_1DB09D004();
  sub_1DAF40780(v74, v76);
  [v15 setYNHDWo3TCV_];

  sub_1DAF6080C(v99, v101, v94, v95, v96, v97);
  if (qword_1EE301DE8 != -1)
  {
    goto LABEL_47;
  }

LABEL_39:
  v79 = *(v0 + 384);
  v81 = *(v0 + 368);
  v80 = *(v0 + 376);
  v82 = *(v0 + 225);
  v100 = *(v0 + 392);
  v102 = *(v0 + 360);
  v83 = qword_1EE30A148;
  v84 = sub_1DB09DB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1DB0A04E0;
  v86 = sub_1DAF4DC24();
  v87 = 48;
  if (v82)
  {
    v87 = 49;
  }

  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 64) = v86;
  *(v85 + 32) = v87;
  *(v85 + 40) = 0xE100000000000000;
  sub_1DB09D444("Calling with option = %@", 24, 2, &dword_1DAF16000, v83, v84, v85);

  v88 = swift_allocObject();
  *(v0 + 528) = v88;
  *(v88 + 16) = v100;
  *(v88 + 24) = v15;
  *(v88 + 32) = 45;
  *(v88 + 40) = 0xE100000000000000;
  *(v88 + 48) = v102;
  *(v88 + 56) = v81;
  *(v88 + 64) = v82;
  *(v88 + 72) = v98;
  *(v88 + 80) = v80;
  *(v88 + 88) = v79;

  v89 = v15;

  sub_1DAF60A20(v80, v79);

  v62 = sub_1DAF579C0;
LABEL_42:

  return MEMORY[0x1EEE6DFA0](v62, 0, 0);
}

uint64_t sub_1DAF57708()
{
  v1 = v0[61];
  v2 = v0[54];
  v3 = v0[49];
  v4 = sub_1DB09DA24();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_1DAF4F0EC(0, 0, v2, &unk_1DB0A5180, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DAF57810, v3, 0);
}

uint64_t sub_1DAF57810()
{
  v1 = v0[53];
  v2 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for DeepLink();
  v3 = swift_allocObject();
  v4 = v2;

  sub_1DB09D334();
  v5 = sub_1DAF601B4(v4, v3, 45, 0xE100000000000000, v1);

  if (v5)
  {
    v6 = v0[64];
    v7 = v0[52];
    v9 = v0[45];
    v8 = v0[46];
    sub_1DB09D144();
    sub_1DAFBB880(v6, v9, v8, 0xD000000000000024, 0x80000001DB0C27D0, 409, v7);

    (*(v0[51] + 8))(v0[52], v0[50]);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DAF579C0()
{
  v1 = v0[66];

  v2 = swift_task_alloc();
  v0[67] = v2;
  v2[2] = 60000000000;
  v2[3] = &unk_1DB0A21F0;
  v2[4] = v1;
  v2[5] = &unk_1DB0A21F8;
  v2[6] = 0;
  v3 = swift_task_alloc();
  v0[68] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4D8, &qword_1DB0A2210);
  *v3 = v0;
  v3[1] = sub_1DAF57B04;

  return MEMORY[0x1EEE6DE38](v0 + 20, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DAF60AE4, v2, v4);
}

uint64_t sub_1DAF57B04()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1DAF57D28;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 392);

    v3 = sub_1DAF57C38;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF57C38()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 208);
  *(v0 + 264) = *(v0 + 192);
  *(v0 + 280) = v2;
  v3 = *(v0 + 160);
  *(v0 + 248) = *(v0 + 176);
  *(v0 + 232) = v3;
  v4 = *(v0 + 224);
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v9 = v1[19];
  v10 = v1[20];
  *(v1 + 17) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 19) = 0u;
  sub_1DAF6080C(v5, v6, v7, v8, v9, v10);
  sub_1DAF4FA0C();
  if (v4 == 1)
  {
    sub_1DB09DC04();
    sub_1DB09D464();
  }

  sub_1DAF60868(*(v0 + 456));

  return MEMORY[0x1EEE6DFA0](sub_1DAF57E50, 0, 0);
}

uint64_t sub_1DAF57D28()
{
  v1 = *(v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1DAF57DA0, v1, 0);
}

uint64_t sub_1DAF57DA0()
{
  v1 = *(v0 + 392);

  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 19) = 0u;
  sub_1DAF6080C(v2, v3, v4, v5, v6, v7);
  *(v0 + 512) = *(v0 + 552);
  v8 = *(v0 + 456);
  sub_1DAF4FA0C();
  sub_1DAF60868(v8);

  return MEMORY[0x1EEE6DFA0](sub_1DAF57708, 0, 0);
}

uint64_t sub_1DAF57E50()
{
  v1 = v0[61];
  v2 = v0[54];
  v3 = v0[49];
  v4 = sub_1DB09DA24();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_1DAF4F0EC(0, 0, v2, &unk_1DB0A2208, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DAF57F58, v3, 0);
}

uint64_t sub_1DAF57F58()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);
  v3 = *(v0 + 248);
  v4 = *(v0 + 280);
  v1[2] = *(v0 + 264);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;

  v5 = *(v0 + 8);

  return v5();
}

void *DIPODNHelper.deinit()
{

  sub_1DAF6080C(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  sub_1DAF4AC40(*(v0 + 184), *(v0 + 192));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DIPODNHelper.__deallocating_deinit()
{

  sub_1DAF6080C(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  sub_1DAF4AC40(*(v0 + 184), *(v0 + 192));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF58114@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21[-v12];
  v14 = *(*v5 + 96);
  swift_beginAccess();
  sub_1DAF40A84(v5 + v14, a5, a1, a2);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  swift_beginAccess();
  sub_1DAF63488(v13, v5 + v14, a1, a2);
  result = swift_endAccess();
  v17 = v5 + *(*v5 + 104);
  v18 = *v17;
  if (*v17)
  {
    v19 = *(v17 + 8);

    v18(v20);
    return sub_1DAF6243C(v18, v19);
  }

  return result;
}

uint64_t sub_1DAF58290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C8, &qword_1DB0A2958);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5D0, &qword_1DB0A2960);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v15 + 16))(&v31 - v16, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5D8, &qword_1DB0A2968);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = *(v15 + 56);
  v20(v18 + v19, 1, 1, v14);
  v21 = (v18 + *(*v18 + 104));
  *v21 = 0;
  v21[1] = 0;
  (*(v15 + 32))(v13, v17, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1DAF63488(v13, v18 + v19, &qword_1ECC0E5C8, &qword_1DB0A2958);
  swift_endAccess();
  v22 = sub_1DB09DA24();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v32;
  v24[5] = v18;

  v25 = sub_1DAF5B2C0(0, 0, v10, &unk_1DB0A2978, v24);
  v23(v10, 1, 1, v22);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v34;
  v26[4] = v33;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v27;
  v26[8] = v35;

  v28 = sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2988, v26);
  v23(v10, 1, 1, v22);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v18;
  v29[5] = v25;
  v29[6] = v28;
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2998, v29);
}

uint64_t sub_1DAF5869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5B0, &qword_1DB0A28F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v15 + 16))(&v31 - v16, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5B8, &qword_1DB0A2900);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = *(v15 + 56);
  v20(v18 + v19, 1, 1, v14);
  v21 = (v18 + *(*v18 + 104));
  *v21 = 0;
  v21[1] = 0;
  (*(v15 + 32))(v13, v17, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1DAF63488(v13, v18 + v19, &qword_1ECC0E5B0, &qword_1DB0A28F0);
  swift_endAccess();
  v22 = sub_1DB09DA24();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v32;
  v24[5] = v18;

  v25 = sub_1DAF5B2C0(0, 0, v10, &unk_1DB0A2910, v24);
  v23(v10, 1, 1, v22);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v34;
  v26[4] = v33;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v27;
  v26[8] = v35;

  v28 = sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2920, v26);
  v23(v10, 1, 1, v22);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v18;
  v29[5] = v25;
  v29[6] = v28;
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2930, v29);
}

uint64_t sub_1DAF58AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E558, &qword_1DB0A27D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E560, &qword_1DB0A27E0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v15 + 16))(&v31 - v16, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E568, &qword_1DB0A27E8);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = *(v15 + 56);
  v20(v18 + v19, 1, 1, v14);
  v21 = (v18 + *(*v18 + 104));
  *v21 = 0;
  v21[1] = 0;
  (*(v15 + 32))(v13, v17, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1DAF63488(v13, v18 + v19, &qword_1ECC0E558, &qword_1DB0A27D8);
  swift_endAccess();
  v22 = sub_1DB09DA24();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v32;
  v24[5] = v18;

  v25 = sub_1DAF5B2C0(0, 0, v10, &unk_1DB0A27F8, v24);
  v23(v10, 1, 1, v22);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v34;
  v26[4] = v33;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v27;
  v26[8] = v35;

  v28 = sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2808, v26);
  v23(v10, 1, 1, v22);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v18;
  v29[5] = v25;
  v29[6] = v28;
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2818, v29);
}

uint64_t sub_1DAF58EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4F8, &qword_1DB0A2730);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E500, &qword_1DB0A2738);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v15 + 16))(&v31 - v16, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E508, &qword_1DB0A2740);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = *(v15 + 56);
  v20(v18 + v19, 1, 1, v14);
  v21 = (v18 + *(*v18 + 104));
  *v21 = 0;
  v21[1] = 0;
  (*(v15 + 32))(v13, v17, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1DAF63488(v13, v18 + v19, &qword_1ECC0E4F8, &qword_1DB0A2730);
  swift_endAccess();
  v22 = sub_1DB09DA24();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v32;
  v24[5] = v18;

  v25 = sub_1DAF5B2C0(0, 0, v10, &unk_1DB0A2750, v24);
  v23(v10, 1, 1, v22);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v34;
  v26[4] = v33;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v27;
  v26[8] = v35;

  v28 = sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2760, v26);
  v23(v10, 1, 1, v22);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v18;
  v29[5] = v25;
  v29[6] = v28;
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2770, v29);
}

uint64_t sub_1DAF592C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v15 + 16))(&v31 - v16, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E580, &qword_1DB0A2858);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = *(v15 + 56);
  v20(v18 + v19, 1, 1, v14);
  v21 = (v18 + *(*v18 + 104));
  *v21 = 0;
  v21[1] = 0;
  (*(v15 + 32))(v13, v17, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1DAF63488(v13, v18 + v19, &qword_1ECC0F0D0, &qword_1DB0A2850);
  swift_endAccess();
  v22 = sub_1DB09DA24();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v32;
  v24[5] = v18;

  v25 = sub_1DAF5B2C0(0, 0, v10, &unk_1DB0A2868, v24);
  v23(v10, 1, 1, v22);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v34;
  v26[4] = v33;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v27;
  v26[8] = v35;

  v28 = sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2878, v26);
  v23(v10, 1, 1, v22);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v18;
  v29[5] = v25;
  v29[6] = v28;
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A2888, v29);
}

uint64_t sub_1DAF596CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E588, &qword_1DB0A2890);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  (*(v15 + 16))(&v31 - v16, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E590, &qword_1DB0A2898);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = *(v15 + 56);
  v20(v18 + v19, 1, 1, v14);
  v21 = (v18 + *(*v18 + 104));
  *v21 = 0;
  v21[1] = 0;
  (*(v15 + 32))(v13, v17, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1DAF63488(v13, v18 + v19, &qword_1ECC0E588, &qword_1DB0A2890);
  swift_endAccess();
  v22 = sub_1DB09DA24();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v32;
  v24[5] = v18;

  v25 = sub_1DAF5B2C0(0, 0, v10, &unk_1DB0A28A8, v24);
  v23(v10, 1, 1, v22);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v34;
  v26[4] = v33;
  v26[5] = a4;
  v26[6] = v18;
  v26[7] = v27;
  v26[8] = v35;

  v28 = sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A28B8, v26);
  v23(v10, 1, 1, v22);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v18;
  v29[5] = v25;
  v29[6] = v28;
  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0A28C8, v29);
}

uint64_t sub_1DAF59AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C8, &qword_1DB0A2958);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DAF59BAC;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF59BAC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF59CFC, v6, 0);
  }
}

uint64_t sub_1DAF59CFC()
{
  sub_1DAF58114(&qword_1ECC0E5C8, &qword_1DB0A2958, &qword_1ECC0E5D0, &qword_1DB0A2960, *(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1DAF59D84, 0, 0);
}

uint64_t sub_1DAF59D84()
{
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5D0, &qword_1DB0A2960);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DAF40AEC(v1, &qword_1ECC0E5C8, &qword_1DB0A2958);
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
    (*(v3 + 8))(v1, v2);
  }

  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF59ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5B0, &qword_1DB0A28F0);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DAF59FA8;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF59FA8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF5A0F8, v6, 0);
  }
}

uint64_t sub_1DAF5A0F8()
{
  sub_1DAF58114(&qword_1ECC0E5B0, &qword_1DB0A28F0, &unk_1ECC0ED00, &qword_1DB0A28F8, *(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5A180, 0, 0);
}

uint64_t sub_1DAF5A180()
{
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DAF40AEC(v1, &qword_1ECC0E5B0, &qword_1DB0A28F0);
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
    (*(v3 + 8))(v1, v2);
  }

  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF5A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E558, &qword_1DB0A27D8);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DAF5A3A4;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF5A3A4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF5A4F4, v6, 0);
  }
}

uint64_t sub_1DAF5A4F4()
{
  sub_1DAF58114(&qword_1ECC0E558, &qword_1DB0A27D8, &qword_1ECC0E560, &qword_1DB0A27E0, *(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5A57C, 0, 0);
}

uint64_t sub_1DAF5A57C()
{
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E560, &qword_1DB0A27E0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DAF40AEC(v1, &qword_1ECC0E558, &qword_1DB0A27D8);
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
    (*(v3 + 8))(v1, v2);
  }

  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF5A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4F8, &qword_1DB0A2730);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DAF5A7A0;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF5A7A0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF5A8F0, v6, 0);
  }
}

uint64_t sub_1DAF5A8F0()
{
  sub_1DAF58114(&qword_1ECC0E4F8, &qword_1DB0A2730, &qword_1ECC0E500, &qword_1DB0A2738, *(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5A978, 0, 0);
}

uint64_t sub_1DAF5A978()
{
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E500, &qword_1DB0A2738);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DAF40AEC(v1, &qword_1ECC0E4F8, &qword_1DB0A2730);
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
    (*(v3 + 8))(v1, v2);
  }

  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF5AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DAF5AB9C;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF5AB9C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF5ACEC, v6, 0);
  }
}

uint64_t sub_1DAF5ACEC()
{
  sub_1DAF58114(&qword_1ECC0F0D0, &qword_1DB0A2850, &qword_1ECC0F0B0, &qword_1DB0A2820, *(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5AD74, 0, 0);
}

uint64_t sub_1DAF5AD74()
{
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DAF40AEC(v1, &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
    (*(v3 + 8))(v1, v2);
  }

  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF5AEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E588, &qword_1DB0A2890);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DAF5AF98;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF5AF98()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF5B0E8, v6, 0);
  }
}

uint64_t sub_1DAF5B0E8()
{
  sub_1DAF58114(&qword_1ECC0E588, &qword_1DB0A2890, &qword_1ECC0E578, &qword_1DB0A2830, *(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5B170, 0, 0);
}

uint64_t sub_1DAF5B170()
{
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DAF40AEC(v1, &qword_1ECC0E588, &qword_1DB0A2890);
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
    (*(v3 + 8))(v1, v2);
  }

  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF5B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DAF40A84(a3, v22 - v9, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v11 = sub_1DB09DA24();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DAF40AEC(v10, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    sub_1DB09DA14();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DB09D984();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DB09D764() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DAF5B56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DAF40A84(a3, v22 - v9, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v11 = sub_1DB09DA24();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DAF40AEC(v10, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  }

  else
  {
    sub_1DB09DA14();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DB09D984();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DB09D764() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C0, &qword_1DB0A2950);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DAF40AEC(a3, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C0, &qword_1DB0A2950);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DAF5B828(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[58] = a7;
  v8[59] = a8;
  v8[57] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C8, &qword_1DB0A2958);
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5D0, &qword_1DB0A2960);
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[65] = v11;
  *v11 = v8;
  v11[1] = sub_1DAF5B9D8;

  return v13(v8 + 2);
}

uint64_t sub_1DAF5B9D8()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_1DAF5BDF0;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 456);
    v3 = sub_1DAF5BAF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF5BAF4()
{
  sub_1DAF58114(&qword_1ECC0E5C8, &qword_1DB0A2958, &qword_1ECC0E5D0, &qword_1DB0A2960, *(v0 + 488));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5BB80, 0, 0);
}

uint64_t sub_1DAF5BB80()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 464);
    sub_1DAF40AEC(v3, &qword_1ECC0E5C8, &qword_1DB0A2958);
    v16 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 536) = v5;
    *v5 = v0;
    v5[1] = sub_1DAF5BFA4;

    return v16(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 512);
    (*(v2 + 32))(v7, v3, v1);
    v9 = *(v0 + 16);
    v8 = *(v0 + 32);
    *(v0 + 248) = v8;
    v10 = *(v0 + 48);
    v11 = *(v0 + 64);
    *(v0 + 264) = v10;
    *(v0 + 280) = v11;
    v12 = *(v0 + 80);
    *(v0 + 296) = v12;
    *(v0 + 232) = v9;
    *(v0 + 336) = v10;
    *(v0 + 352) = v11;
    *(v0 + 368) = v12;
    *(v0 + 304) = v9;
    *(v0 + 320) = v8;
    sub_1DAF40A84(v0 + 232, v0 + 376, &qword_1ECC0E4D8, &qword_1DB0A2210);
    sub_1DB09D9B4();
    (*(v2 + 8))(v7, v1);
    v13 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 80);
    v14 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v14;
    sub_1DAF40AEC(v0 + 160, &qword_1ECC0E4D8, &qword_1DB0A2210);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1DAF5BE0C()
{
  sub_1DAF58114(&qword_1ECC0E5C8, &qword_1DB0A2958, &qword_1ECC0E5D0, &qword_1DB0A2960, *(v0 + 480));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5BE98, 0, 0);
}

uint64_t sub_1DAF5BE98()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1DAF40AEC(v3, &qword_1ECC0E5C8, &qword_1DB0A2958);
  }

  else
  {
    v4 = *(v0 + 528);
    *(v0 + 448) = v4;
    v5 = v4;
    sub_1DB09D9A4();

    (*(v2 + 8))(v3, v1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAF5BFA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF5C0A0, 0, 0);
}

uint64_t sub_1DAF5C0A0()
{
  v1 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v2 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v2;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v1;
  sub_1DAF40AEC(v0 + 88, &qword_1ECC0E4D8, &qword_1DB0A2210);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAF5C14C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5B0, &qword_1DB0A28F0);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_1DAF5C2FC;

  return v13(v8 + 2);
}

uint64_t sub_1DAF5C2FC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DAF5C6B0;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 56);
    v3 = sub_1DAF5C418;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF5C418()
{
  sub_1DAF58114(&qword_1ECC0E5B0, &qword_1DB0A28F0, &unk_1ECC0ED00, &qword_1DB0A28F8, *(v0 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5C4A4, 0, 0);
}

uint64_t sub_1DAF5C4A4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    sub_1DAF40AEC(v3, &qword_1ECC0E5B0, &qword_1DB0A28F0);
    v10 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF5C870;

    return v10(v0 + 2);
  }

  else
  {
    v7 = v0[14];
    (*(v2 + 32))(v7, v3, v1);
    v8 = v0[3];
    v0[4] = v0[2];
    v0[5] = v8;

    sub_1DB09D9B4();
    (*(v2 + 8))(v7, v1);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1DAF5C6CC()
{
  sub_1DAF58114(&qword_1ECC0E5B0, &qword_1DB0A28F0, &unk_1ECC0ED00, &qword_1DB0A28F8, *(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5C758, 0, 0);
}

uint64_t sub_1DAF5C758()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1DAF40AEC(v3, &qword_1ECC0E5B0, &qword_1DB0A28F0);
  }

  else
  {
    v4 = *(v0 + 128);
    *(v0 + 48) = v4;
    v5 = v4;
    sub_1DB09D9A4();

    (*(v2 + 8))(v3, v1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAF5C870()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF5C96C, 0, 0);
}

uint64_t sub_1DAF5C96C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF5C9E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[9] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E558, &qword_1DB0A27D8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E560, &qword_1DB0A27E0);
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[17] = v11;
  *v11 = v8;
  v11[1] = sub_1DAF5CB98;

  return v13(v8 + 2);
}

uint64_t sub_1DAF5CB98()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DAF5CF50;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 72);
    v3 = sub_1DAF5CCB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF5CCB4()
{
  sub_1DAF58114(&qword_1ECC0E558, &qword_1DB0A27D8, &qword_1ECC0E560, &qword_1DB0A27E0, *(v0 + 104));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5CD40, 0, 0);
}

uint64_t sub_1DAF5CD40()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 80);
    sub_1DAF40AEC(v3, &qword_1ECC0E558, &qword_1DB0A27D8);
    v12 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_1DAF5D110;

    return v12(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 128);
    (*(v2 + 32))(v7, v3, v1);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    *(v0 + 40) = v8;
    *(v0 + 48) = v9;
    *(v0 + 56) = v10;
    sub_1DAF6287C(v8, v9, v10);
    sub_1DB09D9B4();
    (*(v2 + 8))(v7, v1);
    sub_1DAF6286C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1DAF5CF6C()
{
  sub_1DAF58114(&qword_1ECC0E558, &qword_1DB0A27D8, &qword_1ECC0E560, &qword_1DB0A27E0, *(v0 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5CFF8, 0, 0);
}

uint64_t sub_1DAF5CFF8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1DAF40AEC(v3, &qword_1ECC0E558, &qword_1DB0A27D8);
  }

  else
  {
    v4 = *(v0 + 144);
    *(v0 + 64) = v4;
    v5 = v4;
    sub_1DB09D9A4();

    (*(v2 + 8))(v3, v1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAF5D110()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF5D20C, 0, 0);
}

uint64_t sub_1DAF5D20C()
{
  sub_1DAF6286C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF5D28C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4F8, &qword_1DB0A2730);
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E500, &qword_1DB0A2738);
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[13] = v11;
  *v11 = v8;
  v11[1] = sub_1DAF5D43C;

  return v13(v8 + 2);
}

uint64_t sub_1DAF5D43C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1DAF5D7EC;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 40);
    v3 = sub_1DAF5D558;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF5D558()
{
  sub_1DAF58114(&qword_1ECC0E4F8, &qword_1DB0A2730, &qword_1ECC0E500, &qword_1DB0A2738, *(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5D5E4, 0, 0);
}

uint64_t sub_1DAF5D5E4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_1DAF40AEC(v3, &qword_1ECC0E4F8, &qword_1DB0A2730);
    v9 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF5D9AC;

    return v9(v0 + 2);
  }

  else
  {
    v7 = v0[12];
    (*(v2 + 32))(v7, v3, v1);
    v0[4] = v0[2];

    sub_1DB09D9B4();
    (*(v2 + 8))(v7, v1);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1DAF5D808()
{
  sub_1DAF58114(&qword_1ECC0E4F8, &qword_1DB0A2730, &qword_1ECC0E500, &qword_1DB0A2738, *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5D894, 0, 0);
}

uint64_t sub_1DAF5D894()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1DAF40AEC(v3, &qword_1ECC0E4F8, &qword_1DB0A2730);
  }

  else
  {
    v4 = *(v0 + 112);
    *(v0 + 24) = v4;
    v5 = v4;
    sub_1DB09D9A4();

    (*(v2 + 8))(v3, v1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAF5D9AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF5DAA8, 0, 0);
}

uint64_t sub_1DAF5DAA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF5DB24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v8[6] = swift_task_alloc();
  v8[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v8[8] = v10;
  v8[9] = *(v10 - 8);
  v8[10] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[11] = v11;
  *v11 = v8;
  v11[1] = sub_1DAF5DCCC;

  return v13();
}

uint64_t sub_1DAF5DCCC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DAF5E050;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = sub_1DAF5DDE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF5DDE8()
{
  sub_1DAF58114(&qword_1ECC0F0D0, &qword_1DB0A2850, &qword_1ECC0F0B0, &qword_1DB0A2820, *(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5DE74, 0, 0);
}

uint64_t sub_1DAF5DE74()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_1DAF40AEC(v3, &qword_1ECC0F0D0, &qword_1DB0A2850);
    v9 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF5E210;

    return v9();
  }

  else
  {
    v7 = v0[10];
    (*(v2 + 32))(v7, v3, v1);
    sub_1DB09D9B4();
    (*(v2 + 8))(v7, v1);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1DAF5E06C()
{
  sub_1DAF58114(&qword_1ECC0F0D0, &qword_1DB0A2850, &qword_1ECC0F0B0, &qword_1DB0A2820, *(v0 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5E0F8, 0, 0);
}

uint64_t sub_1DAF5E0F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1DAF40AEC(v3, &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    v4 = *(v0 + 96);
    *(v0 + 16) = v4;
    v5 = v4;
    sub_1DB09D9A4();

    (*(v2 + 8))(v3, v1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAF5E210()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF5E30C, 0, 0);
}

uint64_t sub_1DAF5E30C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF5E380(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E588, &qword_1DB0A2890);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_1DAF5E530;

  return v13(v8 + 2);
}

uint64_t sub_1DAF5E530()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DAF5E8DC;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 56);
    v3 = sub_1DAF5E64C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF5E64C()
{
  sub_1DAF58114(&qword_1ECC0E588, &qword_1DB0A2890, &qword_1ECC0E578, &qword_1DB0A2830, *(v0 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5E6D8, 0, 0);
}

uint64_t sub_1DAF5E6D8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    sub_1DAF40AEC(v3, &qword_1ECC0E588, &qword_1DB0A2890);
    v11 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF5EA9C;

    return v11(v0 + 2);
  }

  else
  {
    v7 = v0[14];
    (*(v2 + 32))(v7, v3, v1);
    v8 = v0[2];
    v9 = v0[3];
    v0[4] = v8;
    v0[5] = v9;
    sub_1DAF40674(v8, v9);
    sub_1DB09D9B4();
    (*(v2 + 8))(v7, v1);
    sub_1DAF40780(v0[2], v0[3]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1DAF5E8F8()
{
  sub_1DAF58114(&qword_1ECC0E588, &qword_1DB0A2890, &qword_1ECC0E578, &qword_1DB0A2830, *(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1DAF5E984, 0, 0);
}

uint64_t sub_1DAF5E984()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1DAF40AEC(v3, &qword_1ECC0E588, &qword_1DB0A2890);
  }

  else
  {
    v4 = *(v0 + 128);
    *(v0 + 48) = v4;
    v5 = v4;
    sub_1DB09D9A4();

    (*(v2 + 8))(v3, v1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAF5EA9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF5EB98, 0, 0);
}

uint64_t sub_1DAF5EB98()
{
  sub_1DAF40780(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DAF5EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5EC38, 0, 0);
}

uint64_t sub_1DAF5EC38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5ECD8, v3, 0);
}

uint64_t sub_1DAF5ECD8()
{
  v1 = v0[5];
  v2 = (v0[2] + *(*v0[2] + 104));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1DAF63DF0;
  v2[1] = v1;

  sub_1DAF6243C(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAF5ED8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5EDB0, 0, 0);
}

uint64_t sub_1DAF5EDB0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5ECD8, v3, 0);
}

uint64_t sub_1DAF5EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5EE74, 0, 0);
}

uint64_t sub_1DAF5EE74()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5ECD8, v3, 0);
}

uint64_t sub_1DAF5EF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5EF38, 0, 0);
}

uint64_t sub_1DAF5EF38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5EFD8, v3, 0);
}

uint64_t sub_1DAF5EFD8()
{
  v1 = v0[5];
  v2 = (v0[2] + *(*v0[2] + 104));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1DAF62434;
  v2[1] = v1;

  sub_1DAF6243C(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAF5F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5F0B0, 0, 0);
}

uint64_t sub_1DAF5F0B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5ECD8, v3, 0);
}

uint64_t sub_1DAF5F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF5F174, 0, 0);
}

uint64_t sub_1DAF5F174()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5ECD8, v3, 0);
}

uint64_t sub_1DAF5F214(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF63DE8;

  return v6(a1);
}

uint64_t sub_1DAF5F30C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF5F404;

  return v6(a1);
}

uint64_t sub_1DAF5F404()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1DAF5F4FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5F750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAF5F51C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5F85C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAF5F53C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5FA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAF5F55C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5FB5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1DAF5F57C(uint64_t a1, uint64_t a2)
{
  result = qword_1EE301820;
  if (!qword_1EE301820)
  {
    type metadata accessor for DIPODNHelper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301820);
  }

  return result;
}

uint64_t sub_1DAF5F604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISignpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1DAF5F668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5FEB8(a1, a2, a3, *v3, &qword_1ECC0E5F0, &unk_1DB0B29A0, MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

char *sub_1DAF5F6AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5FC90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAF5F6CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5FD84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAF5F6EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF5FEB8(a1, a2, a3, *v3, &qword_1ECC0E4E8, &qword_1DB0A2720, type metadata accessor for AnyODIKnownBinding);
  *v3 = result;
  return result;
}

char *sub_1DAF5F730(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAF60094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAF5F750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF5F85C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E520, &qword_1DB0A2790);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E510, &qword_1DB0A2780) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E510, &qword_1DB0A2780) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DAF5FA4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E570, &qword_1DB0A2828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF5FB5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E608, &qword_1DB0A2A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAF5FC90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4F0, &qword_1DB0A2728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DAF5FD84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E538, &qword_1DB0A27A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E540, &qword_1DB0A27A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF5FEB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DAF60094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E598, &qword_1DB0A28D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DAF601B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DeepLink();
  v31[3] = v10;
  v31[4] = &off_1F56C4518;
  v31[0] = a2;
  v30[3] = &type metadata for CoreODILogger;
  v30[4] = &protocol witness table for CoreODILogger;
  v30[0] = a3;
  v30[1] = a4;
  type metadata accessor for TapToRadar(0);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v29[3] = v10;
  v29[4] = &off_1F56C4518;
  v29[0] = v16;
  *(v11 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter) = 0;
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1 && (v17 = sub_1DB09D6B4(), v18 = [a1 BOOLForKey_], v17, v18))
  {
    sub_1DAF3523C(v29, v11 + 16);
    sub_1DAF3523C(v30, v11 + 56);
    v19 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_timeZone;
    v20 = sub_1DB09D344();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v11 + v19, a5, v20);
    v22._object = 0x80000001DB0C2EF0;
    v22._countAndFlagsBits = 0xD000000000000010;
    v32 = NSUserDefaults.internalInt(forKey:)(v22);
    value = v32.value;
    is_nil = v32.is_nil;

    (*(v21 + 8))(a5, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v25 = 30;
    if (!is_nil)
    {
      v25 = value;
    }

    *(v11 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_ttrDelay) = v25;
  }

  else
  {

    v26 = sub_1DB09D344();
    (*(*(v26 - 8) + 8))(a5, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);

    swift_deallocPartialClassInstance();
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v11;
}

BOOL sub_1DAF6050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1DB09DE14();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1DAF60604(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DAF606F8;

  return v5(v2 + 32);
}

uint64_t sub_1DAF606F8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DAF6080C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1DAF40780(result, a2);
    sub_1DAF40780(a3, a4);
  }

  return result;
}

uint64_t sub_1DAF60868(uint64_t a1)
{
  v2 = type metadata accessor for ODISignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAF608C4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1DAF40674(result, a2);
    sub_1DAF40674(a3, a4);
  }

  return result;
}

uint64_t sub_1DAF60920(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF56578(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF60A20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DAF60A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DAFF5A84(a1, v4, v5, v6);
}

uint64_t sub_1DAF60AF4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    return sub_1DAF40780(result, a2);
  }
}

uint64_t sub_1DAF60B00(uint64_t a1)
{
  v1[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E510, &qword_1DB0A2780);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF60BCC, 0, 0);
}

uint64_t sub_1DAF60BCC()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(ODNServices) init];
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E518, &qword_1DB0A2788);
  *v4 = v0;
  v4[1] = sub_1DAF60CF4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000020, 0x80000001DB0C2AD0, sub_1DAF624A0, v3, v5);
}

uint64_t sub_1DAF60CF4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DAF61068;
  }

  else
  {

    v2 = sub_1DAF60E10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1DAF60E10()
{
  v1 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 16))
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v2 >> 62)
  {
    v18 = v2;
    v3 = sub_1DB09DD44();
    v2 = v18;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_16:
    v19 = *(v0 + 56);

    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_6:
  v4 = v2;
  result = sub_1DAF5F51C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = *(v0 + 40);
  v8 = v4;
  v21 = v4 & 0xC000000000000001;
  v22 = *(v0 + 48);
  v9 = v4;
  v10 = v3;
  do
  {
    if (v21)
    {
      v11 = MEMORY[0x1E1280530](v6, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v6 + 32);
    }

    v12 = v11;
    v13 = *(v0 + 48);
    *v13 = [v11 address];
    *(v22 + 8) = [v12 location];
    v14 = [v12 updated];
    sub_1DB09D124();

    v16 = *(v1 + 16);
    v15 = *(v1 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1DAF5F51C((v15 > 1), v16 + 1, 1);
    }

    v17 = *(v0 + 48);
    ++v6;
    *(v1 + 16) = v16 + 1;
    sub_1DAF624E8(v17, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1ECC0E510, &qword_1DB0A2780);
    v8 = v9;
  }

  while (v10 != v6);

LABEL_17:

  v20 = *(v0 + 8);

  return v20(v1);
}

uint64_t sub_1DAF61068()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1DAF610E0(void *a1, uint64_t a2)
{
  v18 = a2;
  v3 = qword_1EE301DE8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30A148;
  v5 = sub_1DB09DB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB0A04E0;
  swift_getErrorValue();
  v7 = sub_1DB09E324();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DAF4DC24();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_1DB09D444("ODN error : %{public}@", 22, 2, &dword_1DAF16000, v4, v5, v6);

  v10 = sub_1DB09CE64();
  v11 = [v10 code];

  v17[3] = MEMORY[0x1E69E6530];
  v17[0] = v11;
  sub_1DAF33EAC(v17, 13);
  v12 = sub_1DB09CE64();
  v13 = [v12 code];

  if (v13 == -31)
  {
    LOBYTE(v17[0]) = -126;
    v14 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0x656E6E6F63736944, 0xEC00000064657463, a1, v17, 0, v18, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000001BLL, 0x80000001DB0C2EB0, 444);
  }

  else
  {
    LOBYTE(v17[0]) = 0x80;
    v14 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000018, 0x80000001DB0C2E90, a1, v17, 0, v18, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000001BLL, 0x80000001DB0C2EB0, 446);
  }

  v15 = v14;

  return v15;
}

uint64_t sub_1DAF61348(uint64_t a1, uint64_t a2)
{
  result = sub_1DB09CFA4();
  if (v5 >> 60 == 15)
  {
    v20 = result;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE30A148;
    v7 = sub_1DB09DB54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB0A04E0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DAF4DC24();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    sub_1DB09D444("Invalid assessment GUID: %{public}@", 35, 2, &dword_1DAF16000, v6, v7, v8);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 16))
    {
      v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v12)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v11, &v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v9 = *&v21[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[56 * v14];
    *(v15 + 4) = 0xD00000000000001DLL;
    *(v15 + 5) = 0x80000001DB0C2C00;
    *(v15 + 6) = 0xD000000000000024;
    *(v15 + 7) = 0x80000001DB0C27D0;
    *(v15 + 8) = 0xD00000000000001FLL;
    *(v15 + 9) = 0x80000001DB0C2C20;
    *(v15 + 10) = 454;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v22 = v9;
    sub_1DAF183D0(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v10;
    sub_1DAF3B11C(v21, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v17 initWithDomain:v18 code:-2103 userInfo:v19];

    swift_willThrow();
    return v20;
  }

  return result;
}

uint64_t sub_1DAF616DC(uint64_t a1, unint64_t a2, unint64_t a3, char a4, char *a5, char a6)
{
  v12 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (a2 >> 60 == 15 || (a4 & 1) != 0)
  {
    return 0;
  }

  v13 = *a5;
  sub_1DAF40674(a1, a2);
  v14 = sub_1DB09D014();
  v16 = v15;
  v17 = [objc_opt_self() sharedConnection];
  if (!v17 || (v18 = v17, v19 = [v17 effectiveBoolValueForSetting_], v18, v19 != 1))
  {
    a3 = 0xBFF0000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E63B0];
  *(v20 + 16) = xmmword_1DB0A04E0;
  v22 = MEMORY[0x1E69E6438];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = a3;
  v23 = sub_1DB09D704();
  v32 = 0.0;
  v25 = sub_1DAF6050C(v23, v24, &v32);

  if (v25)
  {
    v26 = v32;
  }

  else
  {
    v26 = -1.0;
  }

  sub_1DB09CC54();
  swift_allocObject();
  sub_1DB09CC44();
  v32 = *&v14;
  v33 = v16;
  v34 = v26;
  v35 = v13;
  v36 = a6 & 1;
  sub_1DAF63360();
  v27 = sub_1DB09CC34();
  v29 = v28;

  v32 = *&v27;
  v33 = v29;
  sub_1DB09D714();
  sub_1DAF633B4();
  v30 = sub_1DB09D6F4();
  sub_1DAF4AC40(a1, a2);
  sub_1DAF40780(v27, v29);
  return v30;
}

unint64_t sub_1DAF61AD0()
{
  result = qword_1ECC0E4E0;
  if (!qword_1ECC0E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E4E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF61B68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAF61BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1DAF61C38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAF61C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of DIPODNHelper.retrieveDeviceDataForId(workflowID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DAF61E90;

  return v8(a1, a2);
}

uint64_t sub_1DAF61E90(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DIPODNHelper.getDeviceData(contextualProfile:profileInfo:idvData:odiRawData:externalDataArray:nonce:workflowID:isCBOR:evaluateProfile:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = (*(*v15 + 312) + **(*v15 + 312));
  v17 = swift_task_alloc();
  *(v16 + 16) = v17;
  *v17 = v16;
  v17[1] = sub_1DAF63DEC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DAF62128(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF62170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAF621D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF5A6CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF62290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF5D28C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF6236C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF5EF14(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF6243C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DAF6244C()
{
  result = qword_1EE3017E0;
  if (!qword_1EE3017E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017E0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF624E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAF62550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DAF60604(a1, v4);
}

uint64_t sub_1DAF62608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF5A2D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF626C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF5C9E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF627A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF5EE50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF6286C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1DAF40780(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1DAF6287C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1DAF40674(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1DAF628CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DAF5079C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DAF629A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF5AAC8(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF62A60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF5DB24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF62B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF5F08C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF62C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAF5AEC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF62CC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAF62DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF62CC4;

  return sub_1DAF5E380(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF62E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF5F150(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF62F84(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DAF63044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF59ED4(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF63104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF5C14C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF631E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF5ED8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF632A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DAF5F30C(a1, v4);
}

unint64_t sub_1DAF63360()
{
  result = qword_1EE304460;
  if (!qword_1EE304460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304460);
  }

  return result;
}

unint64_t sub_1DAF633B4()
{
  result = qword_1EE3044D0;
  if (!qword_1EE3044D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044D0);
  }

  return result;
}

_BYTE *sub_1DAF63408@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1DAF63488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAF63530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF59AD8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAF63640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF5B828(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_62Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAF6376C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF5EC14(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_66Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAF63880(uint64_t a1)
{
  v12 = *(v1 + 3);
  v13 = *(v1 + 2);
  v10 = *(v1 + 5);
  v11 = *(v1 + 4);
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF54AD8(v7, a1, v13, v12, v11, v10, v4, v5, v6);
}

unint64_t sub_1DAF639B4()
{
  result = qword_1EE301930;
  if (!qword_1EE301930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301930);
  }

  return result;
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

uint64_t sub_1DAF63A68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DAF5F214(a1, v4);
}

uint64_t sub_1DAF63B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DAF4FB68(a1, v4, v5, v6);
}

uint64_t objectdestroy_75Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DAF63C58(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E600, &qword_1DB0A2A08);

  return sub_1DAF530A8(a1, a2);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAF63D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DAF4F06C(a1, v4, v5, v6);
}

unint64_t sub_1DAF63E04()
{
  v1 = v0[74];
  v2 = v0[75];
  sub_1DB09DE44();

  MEMORY[0x1E127FE90](v1, v2);
  MEMORY[0x1E127FE90](0xD00000000000001BLL, 0x80000001DB0C3000);
  if (v0[35])
  {
    v3 = v0[34];
    v4 = v0[35];
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x646973742D6C696ELL;
  }

  MEMORY[0x1E127FE90](v3, v4);

  return 0xD000000000000010;
}

uint64_t sub_1DAF63EF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x33765F4345;
  if (v2 != 1)
  {
    v4 = 0x48535F33765F4345;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF312E4E53412D31;
  }

  v7 = 0xE500000000000000;
  v8 = 0x33765F4345;
  if (*a2 != 1)
  {
    v8 = 0x48535F33765F4345;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF312E4E53412D31;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DAF63FF8()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF640A4(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DAF6413C()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAF641E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAF66200(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAF64214(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF312E4E53412D31;
  v4 = 0xE500000000000000;
  v5 = 0x33765F4345;
  if (v2 != 1)
  {
    v5 = 0x48535F33765F4345;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x765F4343455F5645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static EncryptedDataContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    if (v3)
    {
      if (*(a1 + 16) == *(a2 + 16) && v2 == v3)
      {
        goto LABEL_8;
      }

      v5 = a1;
      v6 = a2;
      v7 = sub_1DB09E254();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v15 = 0;
    return v15 & 1;
  }

  if (v3)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = *(a1 + 80);
  v17[2] = *(a1 + 64);
  v17[3] = v9;
  v10 = *(a1 + 112);
  v17[4] = *(a1 + 96);
  v17[5] = v10;
  v11 = *(a1 + 48);
  v17[0] = *(a1 + 32);
  v17[1] = v11;
  v12 = *(a2 + 80);
  v18[2] = *(a2 + 64);
  v18[3] = v12;
  v13 = *(a2 + 112);
  v18[4] = *(a2 + 96);
  v18[5] = v13;
  v14 = *(a2 + 48);
  v18[0] = *(a2 + 32);
  v18[1] = v14;
  v15 = sub_1DAF65D58(v17, v18);
  return v15 & 1;
}

uint64_t sub_1DAF643E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E650, &qword_1DB0A3100);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF67320();
  sub_1DB09E434();
  v14 = 0;
  sub_1DB09E154();
  if (!v5)
  {
    v13 = 1;
    sub_1DB09E154();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DAF6457C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t sub_1DAF645B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0C3050 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAF64698(uint64_t a1)
{
  v2 = sub_1DAF67320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF646D4(uint64_t a1)
{
  v2 = sub_1DAF67320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF64710(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DB09E254(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB09E254();
    }
  }

  return result;
}

uint64_t sub_1DAF647B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAF6624C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DAF64804(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E658, &qword_1DB0A3108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF67374();
  sub_1DB09E434();
  v14 = 0;
  sub_1DB09E104();
  if (!v2)
  {
    v13 = 1;
    sub_1DB09E104();
    v12 = 2;
    sub_1DB09E104();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF673C8(&qword_1EE301938, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DB09E144();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DAF64A3C()
{
  v1 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD00000000000001ELL;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAF64AB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAF66430(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAF64ADC(uint64_t a1)
{
  v2 = sub_1DAF67374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF64B18(uint64_t a1)
{
  v2 = sub_1DAF67374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF64B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1DAF65BFC(v5, v7) & 1;
}

double sub_1DAF64BB0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAF665A4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1DAF64C18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E618, &qword_1DB0A2D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF66D28();
  sub_1DB09E434();
  LOBYTE(v15) = *v3;
  v14[0] = 0;
  sub_1DAF66D7C();
  sub_1DB09E194();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v15 = *(v3 + 8);
    v16 = v9;
    v14[0] = 1;
    sub_1DAF66DD0();
    sub_1DB09E194();
    v10 = *(v3 + 56);
    v19[0] = *(v3 + 40);
    v19[1] = v10;
    v19[2] = *(v3 + 72);
    v20 = *(v3 + 88);
    v11 = *(v3 + 56);
    v15 = *(v3 + 40);
    v16 = v11;
    v17 = *(v3 + 72);
    v18 = *(v3 + 88);
    v21 = 2;
    sub_1DAF66E24(v19, v14);
    sub_1DAF66E5C();
    sub_1DB09E194();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAF64E64(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF64EB8()
{
  v1 = 0x656572674179656BLL;
  if (*v0 != 1)
  {
    v1 = 6710379;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DAF64F18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAF668E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAF64F40(uint64_t a1)
{
  v2 = sub_1DAF66D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF64F7C(uint64_t a1)
{
  v2 = sub_1DAF66D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF64FB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v24 = *(a1 + 4);
  v6 = *(a1 + 56);
  v25[0] = *(a1 + 40);
  v25[1] = v6;
  v25[2] = *(a1 + 72);
  v26 = *(a1 + 11);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 56);
  v27[0] = *(a2 + 40);
  v27[1] = v12;
  v13 = 0xE500000000000000;
  v14 = 0x33765F4345;
  if (v2 != 1)
  {
    v14 = 0x48535F33765F4345;
  }

  v27[2] = *(a2 + 72);
  if (v2 != 1)
  {
    v13 = 0xE800000000000000;
  }

  if (v2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xEF312E4E53412D31;
  }

  v28 = *(a2 + 11);
  v17 = 0xE500000000000000;
  v18 = 0x33765F4345;
  if (v7 != 1)
  {
    v18 = 0x48535F33765F4345;
    v17 = 0xE800000000000000;
  }

  if (v7)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x765F4343455F5645;
  }

  if (v7)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xEF312E4E53412D31;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_1DB09E254();

    if ((v21 & 1) == 0)
    {
LABEL_30:
      v22 = 0;
      return v22 & 1;
    }
  }

  if ((v3 != v8 || v4 != v9) && (sub_1DB09E254() & 1) == 0 || (v5 != v10 || v24 != v11) && (sub_1DB09E254() & 1) == 0)
  {
    goto LABEL_30;
  }

  v22 = sub_1DAF65BFC(v25, v27);
  return v22 & 1;
}

double sub_1DAF651A4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DAF66A0C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1DAF65208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAF6527C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DAF652E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAF65358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAF653C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAF64E64(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DAF65404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAF1A294(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAF65450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAF64E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAF65484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAF35018();
  *a1 = result;
  return result;
}

uint64_t sub_1DAF654B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAF6550C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t EncryptedDataContainer.data.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *EncryptedDataContainer.deinit()
{

  return v0;
}

uint64_t EncryptedDataContainer.__deallocating_deinit()
{
  EncryptedDataContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t EncryptedDataContainer.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for EncryptedDataContainer.CodingKeys(255, *(*v2 + 80), *(*v2 + 88), *(*v2 + 96));
  swift_getWitnessTable();
  v4 = sub_1DB09E1A4();
  v16[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E434();
  v30 = 0;
  v7 = v16[1];
  sub_1DB09E104();
  if (v7)
  {
    return (*(v16[0] + 8))(v6, v4);
  }

  v9 = v16[0];
  v10 = v2[5];
  v11 = v2[3];
  v25 = v2[4];
  v26 = v10;
  v12 = v2[5];
  v13 = v2[7];
  v27 = v2[6];
  v28 = v13;
  v14 = v2[3];
  v24[0] = v2[2];
  v24[1] = v14;
  v20 = v25;
  v21 = v12;
  v15 = v2[7];
  v22 = v27;
  v23 = v15;
  v18 = v24[0];
  v19 = v11;
  v29 = 1;
  sub_1DAF65F2C(v24, v17);
  sub_1DAF65F64();
  sub_1DB09E194();
  v17[2] = v20;
  v17[3] = v21;
  v17[4] = v22;
  v17[5] = v23;
  v17[0] = v18;
  v17[1] = v19;
  sub_1DAF65FB8(v17);
  return (*(v9 + 8))(v6, v4);
}

uint64_t EncryptedDataContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  EncryptedDataContainer.init(from:)(a1);
  return v2;
}

uint64_t *EncryptedDataContainer.init(from:)(void *a1)
{
  type metadata accessor for EncryptedDataContainer.CodingKeys(255, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  swift_getWitnessTable();
  v4 = sub_1DB09E0E4();
  v14 = *(v4 - 8);
  v15 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E414();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v14;
    v7 = v15;
    LOBYTE(v16) = 0;
    *(v1 + 16) = sub_1DB09E044();
    *(v1 + 24) = v9;
    v22 = 1;
    sub_1DAF65FE8();
    sub_1DB09E0C4();
    (*(v8 + 8))(v6, v7);
    v11 = v19;
    *(v1 + 64) = v18;
    *(v1 + 80) = v11;
    v12 = v21;
    *(v1 + 96) = v20;
    *(v1 + 112) = v12;
    v13 = v17;
    *(v1 + 32) = v16;
    *(v1 + 48) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DAF65BAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = EncryptedDataContainer.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAF65BFC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1DB09E254();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1DB09E254();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  if (a1[4] != a2[4] || v15 != v16)
  {
    v17 = a1;
    v18 = a2;
    v19 = sub_1DB09E254();
    a2 = v18;
    v20 = v19;
    a1 = v17;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v21 = a1[6];
  v22 = a2[6];
  result = (v21 | v22) == 0;
  if (v21 && v22)
  {

    return sub_1DB07E9D8(v21, v22);
  }

  return result;
}

uint64_t sub_1DAF65D58(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0x33765F4345;
  if (v3 != 1)
  {
    v5 = 0x48535F33765F4345;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x765F4343455F5645;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF312E4E53412D31;
  }

  v9 = 0xE500000000000000;
  v10 = 0x33765F4345;
  if (*a2 != 1)
  {
    v10 = 0x48535F33765F4345;
    v9 = 0xE800000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xEF312E4E53412D31;
  }

  if (v6 == v11 && v7 == v12)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
LABEL_28:
      v20 = 0;
      return v20 & 1;
    }
  }

  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  if ((*(a1 + 1) != *(a2 + 8) || *(a1 + 2) != *(a2 + 16)) && (sub_1DB09E254() & 1) == 0 || (v14 != v16 || v15 != v17) && (sub_1DB09E254() & 1) == 0)
  {
    goto LABEL_28;
  }

  v18 = *(a1 + 56);
  v24[0] = *(a1 + 40);
  v24[1] = v18;
  v24[2] = *(a1 + 72);
  v25 = *(a1 + 11);
  v19 = *(a2 + 56);
  v22[0] = *(a2 + 40);
  v22[1] = v19;
  v22[2] = *(a2 + 72);
  v23 = *(a2 + 88);
  v20 = sub_1DAF65BFC(v24, v22);
  return v20 & 1;
}

unint64_t sub_1DAF65F64()
{
  result = qword_1EE302D80;
  if (!qword_1EE302D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D80);
  }

  return result;
}

unint64_t sub_1DAF65FE8()
{
  result = qword_1ECC0E610;
  if (!qword_1ECC0E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E610);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DAF660FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DAF66144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF66200(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAF6624C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E660, &qword_1DB0A3118);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF67320();
  sub_1DB09E414();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1DB09E084();
    v10 = 1;
    sub_1DB09E084();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_1DAF66430(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001DB0C3070 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DB0C3090 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C30B0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB0C30D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DAF665A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E668, &qword_1DB0A3120);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF67374();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v29 = 0;
  v9 = sub_1DB09E044();
  v11 = v10;
  v23 = v9;
  v28 = 1;
  v12 = sub_1DB09E044();
  v24 = v13;
  v21 = v12;
  v27 = 2;
  v20 = sub_1DB09E044();
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  v26 = 3;
  sub_1DAF673C8(&qword_1EE301928, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DB09E074();
  (*(v6 + 8))(v8, v5);
  v15 = v25;

  v16 = v24;

  v17 = v22;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  *a2 = v23;
  a2[1] = v11;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v16;
  a2[4] = v19;
  a2[5] = v17;
  a2[6] = v15;
  return result;
}

uint64_t sub_1DAF668E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DB0C3030 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656572674179656BLL && a2 == 0xEC000000746E656DLL || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6710379 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAF66A0C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E620, &qword_1DB0A2D50);
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF66D28();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  LOBYTE(v31) = 0;
  sub_1DAF66EB0();
  v9 = v30;
  sub_1DB09E0C4();
  v10 = v37;
  LOBYTE(v31) = 1;
  sub_1DAF66F04();
  sub_1DB09E0C4();
  v26 = v39;
  v27 = v37;
  v28 = v40;
  v29 = v38;
  v53 = 2;
  sub_1DAF66F58();
  sub_1DB09E0C4();
  (*(v8 + 8))(v7, v9);
  v30 = v49;
  v24 = *(&v50 + 1);
  v25 = v50;
  v22 = *(&v51 + 1);
  v23 = v51;
  v20 = *(&v52 + 1);
  v21 = v52;
  LOBYTE(v31) = v10;
  v12 = v26;
  v11 = v27;
  v13 = v28;
  v14 = v29;
  *(&v31 + 1) = v27;
  *&v32 = v29;
  *(&v32 + 1) = v26;
  *&v33 = v28;
  *(&v33 + 1) = v49;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  sub_1DAF65F2C(&v31, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  LOBYTE(v37) = v10;
  v38 = v11;
  v39 = v14;
  v40 = v12;
  v41 = v13;
  v42 = v30;
  v43 = v25;
  v44 = v24;
  v45 = v23;
  v46 = v22;
  v47 = v21;
  v48 = v20;
  result = sub_1DAF65FB8(&v37);
  v16 = v34;
  a2[2] = v33;
  a2[3] = v16;
  v17 = v36;
  a2[4] = v35;
  a2[5] = v17;
  v18 = v32;
  *a2 = v31;
  a2[1] = v18;
  return result;
}

unint64_t sub_1DAF66D28()
{
  result = qword_1EE302D98;
  if (!qword_1EE302D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D98);
  }

  return result;
}

unint64_t sub_1DAF66D7C()
{
  result = qword_1EE301EA8;
  if (!qword_1EE301EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EA8);
  }

  return result;
}

unint64_t sub_1DAF66DD0()
{
  result = qword_1EE3028F8;
  if (!qword_1EE3028F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028F8);
  }

  return result;
}

unint64_t sub_1DAF66E5C()
{
  result = qword_1EE301A00;
  if (!qword_1EE301A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301A00);
  }

  return result;
}

unint64_t sub_1DAF66EB0()
{
  result = qword_1ECC0E628;
  if (!qword_1ECC0E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E628);
  }

  return result;
}

unint64_t sub_1DAF66F04()
{
  result = qword_1ECC0E630;
  if (!qword_1ECC0E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E630);
  }

  return result;
}

unint64_t sub_1DAF66F58()
{
  result = qword_1ECC0E638;
  if (!qword_1ECC0E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E638);
  }

  return result;
}

uint64_t sub_1DAF66FEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1DAF67048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAF670C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAF6710C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF67170()
{
  result = qword_1ECC0E640;
  if (!qword_1ECC0E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E640);
  }

  return result;
}

unint64_t sub_1DAF671C8()
{
  result = qword_1ECC0E648;
  if (!qword_1ECC0E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E648);
  }

  return result;
}

unint64_t sub_1DAF67220()
{
  result = qword_1EE302D88;
  if (!qword_1EE302D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D88);
  }

  return result;
}

unint64_t sub_1DAF67278()
{
  result = qword_1EE302D90;
  if (!qword_1EE302D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D90);
  }

  return result;
}

unint64_t sub_1DAF672CC()
{
  result = qword_1EE301EA0;
  if (!qword_1EE301EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EA0);
  }

  return result;
}