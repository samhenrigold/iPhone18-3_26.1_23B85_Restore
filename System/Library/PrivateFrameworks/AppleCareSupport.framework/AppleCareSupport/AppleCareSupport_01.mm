unint64_t sub_24029FBAC()
{
  result = qword_27E3C8F78;
  if (!qword_27E3C8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F78);
  }

  return result;
}

unint64_t sub_24029FC04()
{
  result = qword_27E3C8F80;
  if (!qword_27E3C8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F80);
  }

  return result;
}

unint64_t sub_24029FC5C()
{
  result = qword_27E3C8F88;
  if (!qword_27E3C8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F88);
  }

  return result;
}

uint64_t Clock.measureInheritingActorContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029FDA4, 0, 0);
}

uint64_t sub_24029FDA4()
{
  v1 = *(v0 + 24);
  sub_2402A78D8();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_24029FEA4;

  return v4();
}

uint64_t sub_24029FEA4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2402A00C4;
  }

  else
  {
    v2 = sub_24029FFB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24029FFB8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  sub_2402A78D8();
  swift_getAssociatedConformanceWitness();
  sub_2402A7718();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2402A00C4()
{
  (*(v0[9] + 8))(v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2402A014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_2402A76E8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A021C, 0, 0);
}

uint64_t sub_2402A021C()
{
  v0[11] = sub_2402A7708();
  v0[12] = sub_2402A08AC(&qword_27E3C8D18, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2402A78D8();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2402A0318;
  v3 = v0[5];
  v2 = v0[6];

  return sub_240291444(v3, v2);
}

uint64_t sub_2402A0318()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2402A08F8;
  }

  else
  {
    v2 = sub_2402A08F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2402A042C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_2402A76E8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A04FC, 0, 0);
}

uint64_t sub_2402A04FC()
{
  v0[11] = sub_2402A7708();
  v0[12] = sub_2402A08AC(&qword_27E3C8D18, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2402A78D8();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2402A05F8;
  v3 = v0[5];
  v2 = v0[6];

  return sub_24029AAF8(v3, v2);
}

uint64_t sub_2402A05F8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2402A0824;
  }

  else
  {
    v2 = sub_2402A070C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2402A070C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_2402A78D8();
  sub_2402A08AC(&qword_27E3C8D20, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2402A7718();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_2402A0824()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2402A08AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2402A0944()
{
  v1 = sub_24029D62C(&unk_28522CD38);
  sub_24029DDD0(&unk_28522CD58);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2402A09D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2402A7708();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2402A0A94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2402A7708();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CompositeHTTPHeadersProvider(uint64_t a1)
{
  result = qword_27E3C8F90;
  if (!qword_27E3C8F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2402A0B84(uint64_t a1)
{
  sub_2402A0C08(319);
  if (v1 <= 0x3F)
  {
    sub_2402A7708();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2402A0C08(uint64_t a1)
{
  if (!qword_27E3C8FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8D78, &qword_2402A94B0);
    v1 = sub_2402A7448();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3C8FA0);
    }
  }
}

uint64_t sub_2402A0C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v7 = sub_2402A76E8();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_2402A7468();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[11] = v8;
  v5[12] = v10;

  return MEMORY[0x2822009F8](sub_2402A0D78, v8, v10);
}

uint64_t sub_2402A0D78()
{
  v1 = v0[4];
  v0[13] = sub_2402A7708();
  v0[14] = sub_2402A3704(&qword_27E3C8D18, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2402A78D8();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_2402A0ED0;

  return v4();
}

uint64_t sub_2402A0ED0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[10], v2[7]);
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_2402A1114;
  }

  else
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_2402A0FFC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2402A0FFC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_2402A78D8();
  sub_2402A3704(&qword_27E3C8D20, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2402A7718();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_2402A1114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2402A1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_2402A7118();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v5[23] = *(v7 + 64);
  v5[24] = swift_task_alloc();
  v8 = *(type metadata accessor for CompositeHTTPHeadersProvider(0) - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FA8, &qword_2402A94F0);
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A135C, 0, 0);
}

uint64_t sub_2402A135C()
{
  v1 = **(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v32 = *(v0 + 200);
    v3 = v1 + 32;
    v30 = **(v0 + 136);
    v31 = *(v0 + 176);
    v29 = *(v0 + 184) + 7;
    v4 = sub_2402A74E8();
    v5 = *(v4 - 8);
    v28 = *(v5 + 56);
    v27 = (v5 + 48);
    v26 = (v5 + 8);
    do
    {
      v36 = v2;
      v33 = *(v0 + 232);
      v35 = *(v0 + 224);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      v9 = *(v0 + 192);
      v10 = *(v0 + 168);
      v34 = *(v0 + 160);
      v11 = *(v0 + 144);
      v12 = *(v0 + 152);
      v28();
      sub_24028C068(v3, v0 + 16);
      sub_2402A30DC(v11, v8);
      (*(v31 + 16))(v9, v12, v10);
      v13 = (*(v32 + 80) + 72) & ~*(v32 + 80);
      v14 = (v7 + *(v31 + 80) + v13) & ~*(v31 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      sub_24029CC34((v0 + 16), v15 + 32);
      sub_2402A32D0(v8, v15 + v13);
      (*(v31 + 32))(v15 + v14, v9, v10);
      *(v15 + ((v29 + v14) & 0xFFFFFFFFFFFFFFF8)) = v34;
      sub_2402A34C0(v33, v35);
      LODWORD(v13) = (*v27)(v35, 1, v4);

      v17 = *(v0 + 224);
      if (v13 == 1)
      {
        sub_2402A3530(*(v0 + 224));
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_2402A74D8();
        (*v26)(v17, v4);
        if (*v16)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_2402A7468();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
      v21 = v19 | v18;
      if (v19 | v18)
      {
        v21 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v18;
        *(v0 + 80) = v19;
      }

      v6 = *(v0 + 232);
      *(v0 + 88) = 1;
      *(v0 + 96) = v21;
      *(v0 + 104) = v30;
      swift_task_create();

      sub_2402A3530(v6);
      v3 += 40;
      v2 = v36 - 1;
    }

    while (v36 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  sub_2402A7538();
  *(v0 + 264) = MEMORY[0x277D84F98];
  v22 = sub_2402A3598();
  v23 = swift_task_alloc();
  *(v0 + 272) = v23;
  *v23 = v0;
  v23[1] = sub_2402A1790;
  v24 = *(v0 + 240);

  return MEMORY[0x282200308](v0 + 112, v24, v22);
}

uint64_t sub_2402A1790()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    (*(v2[31] + 8))(v2[32], v2[30]);

    v3 = sub_2402A1C88;
  }

  else
  {
    v3 = sub_2402A18C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2402A18C4()
{
  v1 = v0[14];
  v43 = v0 + 14;
  v2 = v0[33];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[15] = v2;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v6 = ~(-1 << -v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 64);
    v8 = (63 - v5) >> 6;

    v12 = 0;
    v40 = v0;
    v41 = v1;
    v13 = v0[33];
    for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
    {
      if (!v7)
      {
        v18 = v12;
        while (1)
        {
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          if (v17 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v17);
          ++v18;
          if (v7)
          {
            goto LABEL_14;
          }
        }

        sub_2402A35FC(v1);

        v40[33] = v13;
        v34 = sub_2402A3598();
        v35 = swift_task_alloc();
        v40[34] = v35;
        *v35 = v40;
        v35[1] = sub_2402A1790;
        v10 = v40[30];
        v9 = v43;
        v11 = v34;

        return MEMORY[0x282200308](v9, v10, v11);
      }

      v17 = v12;
LABEL_14:
      v19 = (v17 << 10) | (16 * __clz(__rbit64(v7)));
      v20 = (*(v1 + 48) + v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = (*(v1 + 56) + v19);
      v24 = v23[1];
      v42 = *v23;

      v9 = sub_24029CFE8(v22, v21);
      v25 = v13[2];
      v26 = (v10 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return MEMORY[0x282200308](v9, v10, v11);
      }

      v29 = v10;
      if (v13[3] >= v28)
      {
        if ((i & 1) == 0)
        {
          v39 = v9;
          sub_24028ADF0();
          v9 = v39;
        }
      }

      else
      {
        sub_24028A51C(v28, i & 1);
        v9 = sub_24029CFE8(v22, v21);
        if ((v29 & 1) != (v10 & 1))
        {

          return sub_2402A78C8();
        }
      }

      v7 &= v7 - 1;
      v13 = v43[1];
      if (v29)
      {
        v15 = v9;

        v16 = (v13[7] + 16 * v15);
        *v16 = v42;
        v16[1] = v24;
      }

      else
      {
        v13[(v9 >> 6) + 8] |= 1 << v9;
        v30 = (v13[6] + 16 * v9);
        *v30 = v22;
        v30[1] = v21;
        v31 = (v13[7] + 16 * v9);
        *v31 = v42;
        v31[1] = v24;
        v32 = v13[2];
        v27 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v27)
        {
          goto LABEL_34;
        }

        v13[2] = v33;
      }

      v12 = v17;
      v1 = v41;
    }
  }

  v36 = v0[16];
  (*(v0[31] + 8))(v0[32], v0[30]);
  *v36 = v2;

  v37 = v0[1];

  return v37();
}

uint64_t sub_2402A1C88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2402A1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[18] = a1;
  sub_2402A79C8();
  v7[23] = swift_task_alloc();
  sub_2402A79A8();
  v7[24] = swift_task_alloc();
  sub_2402A7A18();
  v7[25] = swift_task_alloc();
  v8 = sub_2402A7A28();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v9 = sub_2402A7318();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A1ED4, 0, 0);
}

uint64_t sub_2402A1ED4()
{
  v28 = v0;
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v5 = __swift_project_value_buffer(v2, qword_27E3CA818);
  *(v0 + 264) = v5;
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_24028C068(v4, v0 + 16);
  v7 = sub_2402A72F8();
  v8 = sub_2402A7598();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
    v26 = v10;
    v17 = (*(v16 + 8))(v15, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v20 = sub_240299328(v17, v19, &v27);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_240288000, v7, v8, "Computing headers using %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CBE530](v14, -1, -1);
    MEMORY[0x245CBE530](v13, -1, -1);

    (*(v11 + 8))(v26, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v21 = *(v0 + 152);
  *(v0 + 136) = 0;
  type metadata accessor for CompositeHTTPHeadersProvider(0);
  v22 = swift_task_alloc();
  *(v0 + 288) = v22;
  v23 = *(v0 + 168);
  *(v22 + 16) = v0 + 136;
  *(v22 + 24) = v21;
  *(v22 + 32) = v23;
  v24 = swift_task_alloc();
  *(v0 + 296) = v24;
  *v24 = v0;
  v24[1] = sub_2402A21BC;

  return sub_2402A0C6C(0, 0, &unk_2402A9518, v22);
}

uint64_t sub_2402A21BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v7 = sub_2402A28E4;
  }

  else
  {
    *(v6 + 312) = a2;
    *(v6 + 320) = a1;

    v7 = sub_2402A22F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2402A22F8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v0[41] = (*(v4 + 8))(v3, v4);
  v0[42] = v5;

  return MEMORY[0x2822009F8](sub_2402A2398, v1, 0);
}

uint64_t sub_2402A2398()
{
  v7 = v0;
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = sub_2402A7A48();
  sub_2402A7A48();
  *&v6[3] = MEMORY[0x277D839F8];
  *&v6[4] = &off_28522D750;
  v6[0] = v4 * 1.0e-18 + v3;
  swift_beginAccess();

  sub_24028F660(v6, v2, v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2402A24A4, 0, 0);
}

uint64_t sub_2402A24A4()
{
  v34 = v0;
  v30 = v0[34];
  v1 = v0[28];
  v27 = v0[29];
  v28 = v0[33];
  v2 = v0[27];
  v24 = v0[26];
  v25 = v0[31];
  v26 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D28, &qword_2402A8D78);
  sub_2402A79F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2402A8C10;
  sub_2402A79E8();
  sub_2402A79D8();
  sub_24029A7D8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2402A7A08();
  sub_2402A7998();
  sub_2402A79B8();
  sub_2402A7988();
  sub_2402A3704(&qword_27E3C8D30, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
  sub_2402A7A38();
  (*(v2 + 8))(v1, v24);
  v5 = v0[15];
  v4 = v0[16];
  v30(v25, v28, v27);
  sub_24028C068(v26, (v0 + 7));

  v6 = sub_2402A72F8();
  v7 = sub_2402A7598();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315394;
    v29 = v5;
    v32 = v11;
    v33 = v13;
    v15 = v0[10];
    v14 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v15);
    v31 = v9;
    v16 = (*(v14 + 8))(v15, v14);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v19 = sub_240299328(v16, v18, &v33);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_240299328(v29, v4, &v33);
    _os_log_impl(&dword_240288000, v6, v7, "Computed headers using %s in %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CBE530](v13, -1, -1);
    MEMORY[0x245CBE530](v12, -1, -1);

    result = (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v21 = v0[17];
  if (v21)
  {
    v22 = v0[18];

    *v22 = v21;

    v23 = v0[1];

    return v23();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2402A28E4()
{
  v1 = v0[38];
  v2 = v0[19];

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  sub_2402A36B0();
  swift_allocError();
  *v8 = v5;
  v8[1] = v7;
  v8[2] = v1;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2402A2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2402A2A48, 0, 0);
}

uint64_t sub_2402A2A48()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2402A2B74;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_2402A2B74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2402A2CC0, 0, 0);
  }
}

uint64_t sub_2402A2CC0()
{
  **(v0 + 16) = *(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2402A2D4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2402A2D70, 0, 0);
}

uint64_t sub_2402A2D70()
{
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2402A2E7C;

  return MEMORY[0x282200740](v0 + 16, v2, v2, 0, 0, &unk_2402A94E0, v3, v2);
}

uint64_t sub_2402A2E7C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2402A2FB4;
  }

  else
  {

    v2 = sub_2402A2F98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2402A2FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2402A3018(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24029CC14;

  return sub_2402A1180(a1, a2, v6, v7, v8);
}

uint64_t sub_2402A30DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2402A3140()
{
  v1 = (type metadata accessor for CompositeHTTPHeadersProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2402A7118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  v11 = v1[7];
  v12 = sub_2402A7708();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v9 | 7);
}

uint64_t sub_2402A32D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2402A3334(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CompositeHTTPHeadersProvider(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2402A7118() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_240296080;

  return sub_2402A1D20(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v12);
}

uint64_t sub_2402A34C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2402A3530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2402A3598()
{
  result = qword_27E3C8FB0;
  if (!qword_27E3C8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8FA8, &qword_2402A94F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FB0);
  }

  return result;
}

uint64_t sub_2402A3604()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24029CC14;

  return sub_2402A2A24(v2, v3, v5, v4);
}

unint64_t sub_2402A36B0()
{
  result = qword_27E3C8FB8;
  if (!qword_27E3C8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FB8);
  }

  return result;
}

uint64_t sub_2402A3704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2402A375C()
{
  sub_2402A7648();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_2402A73A8();
  v4 = v3;

  MEMORY[0x245CBD8D0](v2, v4);

  qword_27E3C8FC0 = 0xD00000000000001BLL;
  *algn_27E3C8FC8 = 0x80000002402AA0C0;
  return result;
}

uint64_t sub_2402A383C(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return MEMORY[0x2822009F8](sub_2402A385C, 0, 0);
}

uint64_t sub_2402A385C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD0, &qword_2402A9578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2402A9530;
  *(inited + 32) = sub_2402A73A8();
  v2 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD00000000000002ALL;
  *(inited + 56) = 0x80000002402AA010;
  *(inited + 80) = sub_2402A73A8();
  *(inited + 88) = v4;
  if (qword_27E3C8A98 != -1)
  {
    swift_once();
  }

  v5 = qword_27E3C8FC0;
  v6 = *algn_27E3C8FC8;
  *(inited + 120) = v2;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  *(inited + 128) = sub_2402A73A8();
  v7 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = v8;
  *(inited + 144) = 60;
  *(inited + 176) = sub_2402A73A8();
  *(inited + 216) = v7;
  *(inited + 184) = v9;
  *(inited + 192) = 262800;
  *(inited + 224) = sub_2402A73A8();
  *(inited + 232) = v10;

  v11 = sub_2402A5030();
  v13 = v0[43];
  v12 = v0[44];
  type metadata accessor for SecAccessControl(0);
  *(inited + 264) = v14;
  *(inited + 240) = v11;
  *(inited + 272) = sub_2402A73A8();
  *(inited + 280) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C8C50, &qword_2402A8778);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2402A8C10;
  *(v16 + 32) = sub_2402A73A8();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_2402A73A8();
  *(v16 + 56) = v18;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD8, &unk_2402A9580);
  *(inited + 288) = v16;
  v19 = sub_24029D740(inited);
  v0[45] = v19;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8E10, &unk_2402A8F40);
  swift_arrayDestroy();
  v20 = swift_task_alloc();
  v0[46] = v20;
  v20[2] = v19;
  v20[3] = v13;
  v20[4] = v12;
  v21 = swift_task_alloc();
  v0[47] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
  *v21 = v0;
  v21[1] = sub_2402A3C34;

  return MEMORY[0x2822008A0](v0 + 42, 0, 0, 0xD000000000000010, 0x80000002402AA040, sub_2402A5190, v20, v22);
}

uint64_t sub_2402A3C34()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_2402A3D74;
  }

  else
  {

    v2 = sub_2402A3D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2402A3D74()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2402A3DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - v11;
  sub_2402A3FEC(a2);
  v13 = sub_2402A7328();

  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_2402A526C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2402A4634;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);
  sub_2402A531C(a3, a4);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v16);
}

uint64_t sub_2402A3FEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C9000, &qword_2402A9598);
    v2 = sub_2402A77F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    sub_24029BBB0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24029D8F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24029D8F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24029D8F4(v31, v32);
    result = sub_2402A7618();
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
    result = sub_24029D8F4(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2402A42B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a2)
  {
    v9 = a1;
    v10 = sub_2402A4548(a2);
    if (v10)
    {
      v11 = v10;
      if (v10 >> 62)
      {
        if (sub_2402A77C8())
        {
          goto LABEL_6;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v12 = sub_2402A53C4(a4, a5, v9);
        v14 = v13;
        v15 = sub_2402A54FC(v11);
        v17 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2402A8C10;
        strcpy((inited + 32), "X-Apple-Baa-S");
        *(inited + 46) = -4864;
        *(inited + 48) = sub_2402A7238();
        *(inited + 56) = v19;
        *(inited + 64) = 0x2D656C7070412D58;
        *(inited + 72) = 0xEB00000000616142;
        *(inited + 80) = sub_2402A7238();
        *(inited + 88) = v20;
        sub_24029D62C(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C70, &qword_2402A88A0);
        swift_arrayDestroy();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
        sub_2402A7488();

        sub_24028DDCC(v15, v17);
        sub_24028DDCC(v12, v14);
      }
    }

    else
    {
    }
  }

  sub_2402A5370();
  swift_allocError();
  *v22 = a3;
  *(v22 + 8) = 2;
  swift_willThrow();
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  return sub_2402A7478();
}

uint64_t sub_2402A4548(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2402A7698();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24029BBB0(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2402A7678();
    sub_2402A76A8();
    sub_2402A76B8();
    sub_2402A7688();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_2402A4634(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_2402A7438();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void *sub_2402A46E8()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2402A7228();
  v5[0] = 0;
  v1 = [v0 compressedDataUsingAlgorithm:3 error:v5];

  v2 = v5[0];
  if (v1)
  {
    v3 = sub_2402A7248();
  }

  else
  {
    v3 = v2;
    sub_2402A71B8();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_2402A47BC(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_2402A7648();

    v7 = 0xD000000000000021;
    if (a1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    sub_2402A7648();

    v7 = 0xD00000000000001CLL;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
    goto LABEL_10;
  }

  sub_2402A7648();

  v7 = 0xD000000000000024;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getErrorValue();
  v3 = sub_2402A78E8();
  v5 = v4;
LABEL_10:
  MEMORY[0x245CBD8D0](v3, v5);

  return v7;
}

uint64_t sub_2402A4934(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C9008, &qword_2402A9720);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2402A5910();
  sub_2402A7978();
  v10[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD8, &unk_2402A9580);
  sub_2402A5B0C(&qword_27E3C9018, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2402A7868();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2402A4AFC()
{
  v1 = sub_2402A70E8();
  v0[3] = v1;
  v0[4] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = sub_24029D62C(MEMORY[0x277D84F90]);
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_2402A4BF4;

    return sub_2402A383C(v6, v7);
  }
}

uint64_t sub_2402A4BF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2402A4D84;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_2402A4D1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2402A4D1C()
{
  sub_24028DDB8(v0[3], v0[4]);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2402A4D84()
{
  sub_24028DDB8(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2402A4DE8()
{
  sub_2402A7938();
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_2402A4E4C(uint64_t a1)
{
  sub_2402A7938();
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_2402A4E98@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2402A7818();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2402A4F18@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2402A7818();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2402A4F70(uint64_t a1)
{
  v2 = sub_2402A5910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2402A4FAC(uint64_t a1)
{
  v2 = sub_2402A5910();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2402A4FE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2402A5964(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SecAccessControlRef sub_2402A5030()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, v5);
  if (!result)
  {
    v1 = v5[0];
    if (v5[0])
    {
      type metadata accessor for CFError(0);
      sub_2402A57F8();
      v2 = swift_allocError();
      *v3 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_2402A5370();
    swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_2402A5128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8E10, &unk_2402A8F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2402A519C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_24028DDCC(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2402A526C(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return sub_2402A42B4(a1, a2, a3, v7, v8);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2402A531C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2402A5370()
{
  result = qword_27E3C8FE8;
  if (!qword_27E3C8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FE8);
  }

  return result;
}

uint64_t sub_2402A53C4(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_2402A7228();
  Signature = SecKeyCreateSignature(a3, v4, v5, v13);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_2402A7248();
  }

  else
  {
    v9 = v13[0];
    if (v13[0])
    {
      type metadata accessor for CFError(0);
      sub_2402A57F8();
      v8 = swift_allocError();
      *v10 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_2402A5370();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = 1;
    swift_willThrow();
  }

  return v8;
}

char *sub_2402A54FC(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_2402A77C8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_24028B630(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x245CBDB20](v6, a1);
        v8 = SecCertificateCopyData(v7);
        v9 = sub_2402A7248();
        v11 = v10;

        v12 = sub_2402A7238();
        v14 = v13;
        sub_24028DDCC(v9, v11);
        swift_unknownObjectRelease();
        v16 = *(v35 + 16);
        v15 = *(v35 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_24028B630((v15 > 1), v16 + 1, 1);
        }

        ++v6;
        *(v35 + 16) = v16 + 1;
        v17 = v35 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v4 != v6);
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18;
        v20 = SecCertificateCopyData(v19);
        v21 = sub_2402A7248();
        v23 = v22;

        v24 = sub_2402A7238();
        v26 = v25;
        sub_24028DDCC(v21, v23);

        v28 = *(v35 + 16);
        v27 = *(v35 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_24028B630((v27 > 1), v28 + 1, 1);
        }

        *(v35 + 16) = v28 + 1;
        v29 = v35 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        ++v18;
        --v4;
      }

      while (v4);
    }

    v2 = v1;
  }

  sub_2402A7178();
  swift_allocObject();
  v30 = sub_2402A7168();
  sub_2402A57A4();
  v31 = sub_2402A7158();
  if (v2)
  {
  }

  else
  {
    v33 = v31;
    v34 = v32;

    v30 = sub_2402A46E8();
    sub_24028DDCC(v33, v34);
  }

  return v30;
}

unint64_t sub_2402A57A4()
{
  result = qword_27E3C8FF0;
  if (!qword_27E3C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FF0);
  }

  return result;
}

unint64_t sub_2402A57F8()
{
  result = qword_27E3C8FF8;
  if (!qword_27E3C8FF8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FF8);
  }

  return result;
}

uint64_t sub_2402A586C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2402A58B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_2402A5910()
{
  result = qword_27E3C9010;
  if (!qword_27E3C9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9010);
  }

  return result;
}

void *sub_2402A5964(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C9020, &qword_2402A9728);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2402A5910();
  sub_2402A7968();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD8, &unk_2402A9580);
    sub_2402A5B0C(&qword_27E3C9028, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2402A7848();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

uint64_t sub_2402A5B0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8FD8, &unk_2402A9580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2402A5B8C()
{
  result = qword_27E3C9030;
  if (!qword_27E3C9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9030);
  }

  return result;
}

unint64_t sub_2402A5BE4()
{
  result = qword_27E3C9038;
  if (!qword_27E3C9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9038);
  }

  return result;
}

unint64_t sub_2402A5C3C()
{
  result = qword_27E3C9040;
  if (!qword_27E3C9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9040);
  }

  return result;
}

uint64_t sub_2402A5CBC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24028A21C;

  return sub_2402A5D64();
}

uint64_t sub_2402A5D80()
{
  v0[13] = objc_opt_self();
  v0[14] = sub_2402A74B8();
  v0[15] = sub_2402A74A8();
  v2 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_2402A5E28, v2, v1);
}

uint64_t sub_2402A5E28()
{
  v1 = *(v0 + 104);

  *(v0 + 128) = [v1 currentDevice];

  return MEMORY[0x2822009F8](sub_2402A5EB0, 0, 0);
}

uint64_t sub_2402A5EB0()
{
  *(v0 + 136) = sub_2402A74A8();
  v2 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_2402A5F3C, v2, v1);
}

uint64_t sub_2402A5F3C()
{
  v1 = *(v0 + 128);

  *(v0 + 144) = [v1 systemVersion];

  return MEMORY[0x2822009F8](sub_2402A5FC4, 0, 0);
}

uint64_t sub_2402A5FC4()
{
  v1 = v0[18];
  v2 = sub_2402A73A8();
  v4 = v3;

  v5 = _CFCopySystemVersionDictionary();
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  sub_24028C320();
  sub_2402A64D0();
  v7 = sub_2402A7338();
  v8 = *MEMORY[0x277CBEC70];
  if (!*MEMORY[0x277CBEC70])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*(v7 + 16))
    {
      v14 = sub_24029D060(v8);
      if (v15)
      {
        v10 = *(*(v7 + 56) + 8 * v14);
        swift_unknownObjectRetain();

        goto LABEL_9;
      }
    }

LABEL_14:

LABEL_15:
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v9 = v8;
  v10 = sub_2402A77A8();

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_9:

  v0[19] = v4;
  v0[20] = v2;
  v0[12] = v10;
  swift_dynamicCast();
  v16 = v0[11];
  v0[21] = v0[10];
  v0[22] = v16;
  v0[23] = sub_2402A74A8();
  v17 = sub_2402A7468();
  v19 = v18;
  v11 = sub_2402A6174;
  v12 = v17;
  v13 = v19;

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2402A6174()
{
  v1 = *(v0 + 104);

  *(v0 + 192) = [v1 currentDevice];

  return MEMORY[0x2822009F8](sub_2402A61FC, 0, 0);
}

uint64_t sub_2402A61FC(uint64_t a1)
{
  *(v1 + 200) = sub_2402A74A8();
  v3 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_2402A6288, v3, v2);
}

uint64_t sub_2402A6288()
{
  v1 = *(v0 + 192);

  *(v0 + 208) = [v1 model];

  return MEMORY[0x2822009F8](sub_2402A6310, 0, 0);
}

uint64_t sub_2402A6310()
{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = sub_2402A73A8();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 16) = xmmword_2402A8810;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_2402A7648();

  MEMORY[0x245CBD8D0](v3, v2);

  MEMORY[0x245CBD8D0](0x20534F692FLL, 0xE500000000000000);
  MEMORY[0x245CBD8D0](v5, v4);

  MEMORY[0x245CBD8D0](47, 0xE100000000000000);
  MEMORY[0x245CBD8D0](v6, v8);

  *(inited + 48) = 0x73676E6974746553;
  *(inited + 56) = 0xEB000000002F312FLL;
  v10 = sub_24029D62C(inited);
  swift_setDeallocating();
  sub_24029DDD0(inited + 32);
  v11 = v0[1];

  return v11(v10);
}

unint64_t sub_2402A64D0()
{
  result = qword_27E3C9048[0];
  if (!qword_27E3C9048[0])
  {
    sub_24028C320();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E3C9048);
  }

  return result;
}

void sub_2402A6530(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2402A68C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2402A65B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2402A66F4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_2402A68C0()
{
  if (!qword_27E3C90D0)
  {
    v0 = sub_2402A7348();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3C90D0);
    }
  }
}

uint64_t sub_2402A691C(uint64_t a1)
{
  sub_2402A7648();
  v2 = (*(*(a1 + 24) + 8))(*(a1 + 16));

  MEMORY[0x245CBD8D0](0xD000000000000011, 0x80000002402AA160);
  return v2;
}

uint64_t sub_2402A69BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v8 = sub_2402A7318();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v4[6] = swift_task_alloc();
  v11 = a3 + 16;
  v9 = *(a3 + 16);
  v10 = *(v11 + 8);
  v12 = *(v10 + 16);
  v4[7] = v9;
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v4[8] = v13;
  *v13 = v4;
  v13[1] = sub_2402A6B50;

  return v15(a1, a2, v9, v10);
}

uint64_t sub_2402A6B50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2402A6CA8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2402A6CA8()
{
  v29 = v0;
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = __swift_project_value_buffer(v4, qword_27E3CA818);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2402A72F8();
  v8 = sub_2402A75A8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[5];
    v26 = v0[4];
    v27 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315394;
    swift_getMetatypeMetadata();
    v15 = sub_2402A7A78();
    v17 = sub_240299328(v15, v16, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_240288000, v7, v8, "Failed to retrieve headers using %s: '%@'. using fallback value.", v12, 0x16u);
    sub_2402A6FDC(v13);
    MEMORY[0x245CBE530](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CBE530](v14, -1, -1);
    MEMORY[0x245CBE530](v12, -1, -1);

    (*(v11 + 8))(v27, v26);
  }

  else
  {
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0[3] + *(v0[2] + 36));

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_2402A6F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24028A21C;

  return sub_2402A69BC(a1, a2, a3);
}

uint64_t sub_2402A6FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB8, &qword_2402A8E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeoutError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeoutError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}