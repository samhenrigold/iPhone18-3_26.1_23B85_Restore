unint64_t sub_264D980BC()
{
  result = qword_27FFB1D68;
  if (!qword_27FFB1D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1D50, &qword_264E268C0);
    sub_264D98234(&qword_27FFB1D70, type metadata accessor for UsageDetailChart, &protocol conformance descriptor for UsageDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1D68);
  }

  return result;
}

unint64_t sub_264D98178()
{
  result = qword_27FFB1D78;
  if (!qword_27FFB1D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1D40, &qword_264E268B0);
    sub_264D98234(&qword_27FFB1D80, type metadata accessor for UsageOverviewChart, &protocol conformance descriptor for UsageOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1D78);
  }

  return result;
}

uint64_t sub_264D98234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264D9827C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264D982F0(uint64_t a1, int a2)
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

uint64_t sub_264D98338(uint64_t result, int a2, int a3)
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

uint64_t sub_264D983A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_264E244D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_264E24C88();
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  (*(v13 + 32))(v17 + v16, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v15;
  a4[1] = sub_264D987CC;
  a4[2] = v17;
  a4[3] = 0;
  a4[4] = 0;
}

uint64_t sub_264D98518(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_264E244C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DB8, &qword_264E269B0);
  return sub_264E24E58();
}

uint64_t sub_264D985B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;

  v10 = sub_264E24F58();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA8, &qword_264E269A0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DB0, &qword_264E269A8);
  v15 = (a2 + *(result + 36));
  *v15 = sub_264D986F4;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_264D986B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264D98700()
{
  v1 = sub_264E244D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264D987CC()
{
  sub_264E244D8();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];
  v4 = v0[5];

  return sub_264D98518(v1, v2, v3, v4);
}

unint64_t sub_264D98838()
{
  result = qword_27FFB1DC0;
  if (!qword_27FFB1DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1DB0, &qword_264E269A8);
    sub_264D81DCC(&qword_27FFB1DC8, &qword_27FFB1DA8, &qword_264E269A0, MEMORY[0x277CE04B0]);
    sub_264D81DCC(&qword_27FFB1DD0, qword_27FFB1DD8, &qword_264E269B8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1DC0);
  }

  return result;
}

uint64_t sub_264D98AB0(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_264D98E4C(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_264D99040(const void *a1)
{
  *(v1 + 56) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_264D990A8, 0, 0);
}

uint64_t sub_264D990A8()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E70, &qword_264E26AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264E269C0;
  sub_264E23F38();
  *(inited + 32) = sub_264E23F28();
  sub_264DC66B4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_264D9B7A4();
  v3 = sub_264E25268();

  (v1)[2](v1, v3, 0);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264D991C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v43 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v43 - v4;
  v6 = sub_264E23928();
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v43 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E70, &qword_264E26AF0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_264E269D0;
  v10 = sub_264E23C38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v5, 1, 1, v10);
  v14 = sub_264E23C48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v46 = v14;
  v16(v2, 1, 1, v14);
  v47 = v16;
  sub_264E23918();
  v12(v5, 1, 1, v10);
  v16(v2, 1, 1, v14);
  v18 = v17;
  sub_264E23918();
  v49 = sub_264E23F88();
  v19 = objc_allocWithZone(v49);
  *(v51 + 32) = sub_264E23F78();
  v43[1] = v13;
  v44 = v12;
  v12(v5, 1, 1, v10);
  v20 = v46;
  v21 = v47;
  v45 = v18;
  v47(v2, 1, 1, v46);
  sub_264E23918();
  v12(v5, 1, 1, v10);
  v21(v2, 1, 1, v20);
  sub_264E23918();
  v22 = objc_allocWithZone(v49);
  *(v51 + 40) = sub_264E23F78();
  v43[0] = v10;
  v23 = v44;
  v44(v5, 1, 1, v10);
  v24 = v47;
  v47(v2, 1, 1, v20);
  sub_264E23918();
  v23(v5, 1, 1, v10);
  v24(v2, 1, 1, v20);
  sub_264E23918();
  v25 = objc_allocWithZone(v49);
  *(v51 + 48) = sub_264E23F78();
  v26 = v43[0];
  v23(v5, 1, 1, v43[0]);
  v27 = v47;
  v47(v2, 1, 1, v20);
  sub_264E23918();
  v23(v5, 1, 1, v26);
  v27(v2, 1, 1, v20);
  v28 = v27;
  sub_264E23918();
  v29 = objc_allocWithZone(v49);
  *(v51 + 56) = sub_264E23F78();
  v30 = v26;
  v31 = v26;
  v32 = v44;
  v44(v5, 1, 1, v31);
  v33 = v46;
  v28(v2, 1, 1, v46);
  sub_264E23918();
  v32(v5, 1, 1, v30);
  v28(v2, 1, 1, v33);
  sub_264E23918();
  v34 = objc_allocWithZone(v49);
  *(v51 + 64) = sub_264E23F78();
  v32(v5, 1, 1, v30);
  v35 = v46;
  v28(v2, 1, 1, v46);
  sub_264E23918();
  v32(v5, 1, 1, v30);
  v36 = v35;
  v28(v2, 1, 1, v35);
  sub_264E23918();
  v37 = objc_allocWithZone(v49);
  *(v51 + 72) = sub_264E23F78();
  v38 = v43[0];
  v32(v5, 1, 1, v43[0]);
  v28(v2, 1, 1, v36);
  sub_264E23918();
  v32(v5, 1, 1, v38);
  v28(v2, 1, 1, v36);
  sub_264E23918();
  v39 = objc_allocWithZone(v49);
  v40 = sub_264E23F78();
  v41 = v51;
  *(v51 + 80) = v40;
  return v41;
}

uint64_t sub_264D9A1AC(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_264D9A258;

  return sub_264D9B588();
}

uint64_t sub_264D9A258(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_264E23948();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

void *sub_264D9A468()
{

  return v0;
}

uint64_t sub_264D9A498()
{
  sub_264D9A468();

  return swift_deallocClassInstance();
}

uint64_t sub_264D9A4E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264D9A59C;

  return sub_264D9A1AC(v2, v3);
}

uint64_t sub_264D9A59C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264D9A690(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_264D9BB74;

  return v6();
}

uint64_t sub_264D9A778()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264D9BB74;

  return sub_264D9A690(v2, v3, v4);
}

uint64_t sub_264D9A838(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_264D9A59C;

  return v7();
}

uint64_t sub_264D9A924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264D9BB74;

  return sub_264D9A838(a1, v4, v5, v6);
}

uint64_t sub_264D9A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_264D9ACAC(a3, v23 - v10);
  v12 = sub_264E25248();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_264D9AD1C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_264E25238();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_264E25208();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_264E25158() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_264D9AD1C(a3);

    return v21;
  }

LABEL_8:
  sub_264D9AD1C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_264D9ACAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D9AD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D9AD84(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264D9AE7C;

  return v6(a1);
}

uint64_t sub_264D9AE7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264D9AF74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D9AFAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D9BB74;

  return sub_264D9AD84(a1, v4);
}

uint64_t sub_264D9B064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D9A59C;

  return sub_264D9AD84(a1, v4);
}

uint64_t sub_264D9B11C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_264E25418();
    sub_264E23F48();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_264E253A8();
    v4 = 0xD000000000000046;
    v3 = 0x8000000264E2B820;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  sub_264E23F48();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_264E253A8();
  v3 = 0x8000000264E2B7D0;
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x26674F2E0](v4, v3);
  MEMORY[0x26674F2E0](0x74696D694C707041, 0xE800000000000000);
  MEMORY[0x26674F2E0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_264E254D8();
  MEMORY[0x26674F2E0](v6);

  result = sub_264E253F8();
  __break(1u);
  return result;
}

void sub_264D9B2BC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264E25408())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E68, &qword_264E26AD8);
      v3 = sub_264E25388();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264E25408();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = sub_264D9B11C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_264E252F8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_264E23F48();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_264E25308();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_264E252F8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_264E23F48();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_264E25308();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_264D9B5A4()
{
  sub_264D991C8();
  v1 = objc_allocWithZone(sub_264E23F68());
  sub_264E23F58();
  sub_264E23F18();
  sub_264E23F08();
  if (MEMORY[0x277D84F90] >> 62 && sub_264E25408())
  {
    sub_264D9B2BC(MEMORY[0x277D84F90]);
  }

  v2 = objc_allocWithZone(sub_264E23EF8());
  v3 = sub_264E23EE8();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_264D9B6B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D9B6F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D9BB74;

  return sub_264D99040(v2);
}

unint64_t sub_264D9B7A4()
{
  result = qword_27FFB1E78;
  if (!qword_27FFB1E78)
  {
    sub_264E23F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1E78);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264D9B844()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264D9BB74;

  return sub_264D98E4C(v2, v3);
}

uint64_t sub_264D9B8FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264D9BB74;

  return sub_264D9BB3C(v2, v3, v4);
}

uint64_t objectdestroy_55Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264D9BA0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264D9BB74;

  return sub_264D9BB40(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_264D9BB9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_264D9BBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264D9BC5C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_264E238E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264D9BD1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E238E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MostUsedListSectionNotifications(uint64_t a1)
{
  result = qword_27FFB1E80;
  if (!qword_27FFB1E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D9BE0C(uint64_t a1)
{
  result = sub_264E238E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264D9BEA4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_264D9BEB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E98, &qword_264E26C60);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for MostUsedListSectionNotifications(0);
  v8 = sub_264D9C104(v1 + *(v7 + 20));
  if (v8[2])
  {
    MEMORY[0x28223BE20](v8);
    *(&v12 - 2) = v9;
    *(&v12 - 1) = v1;
    sub_264D9CCEC();
    sub_264D9CE9C();
    sub_264D9CF58();
    sub_264E24F18();

    (*(v13 + 32))(a1, v6, v4);
    return (*(v13 + 56))(a1, 0, 1, v4);
  }

  else
  {

    v11 = *(v13 + 56);

    return v11(a1, 1, 1, v4);
  }
}

uint64_t *sub_264D9C104(uint64_t a1)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  MEMORY[0x28223BE20](v91);
  v90 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v88 - v5;
  v96 = MEMORY[0x277D84F98];
  v6 = *v1;
  v95 = a1;
  sub_264DA260C(sub_264DA5CC8, v94, v6, &qword_27FFB1ED0, &qword_264E28610);
  v88 = 0;
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v93 = v7;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v92 = v14;
    if (!v11)
    {
      break;
    }

LABEL_10:
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    v17 = v93;
    v18 = *(v93 + 48);
    v19 = sub_264E238E8();
    v20 = *(v19 - 8);
    v21 = v89;
    (*(v20 + 16))(v89, v18 + *(v20 + 72) * v16, v19);
    v22 = *(*(v17 + 56) + 8 * v16);
    v23 = v91;
    *&v21[*(v91 + 48)] = v22;
    v24 = v21;
    v25 = v90;
    sub_264DA56B8(v24, v90);
    v26 = *(v25 + *(v23 + 48));
    v27 = *(v20 + 8);

    v27(v25, v19);
    v28 = *(v26 + 16);
    v14 = v92;
    v29 = *(v92 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      sub_264E25498();
      __break(1u);
      goto LABEL_60;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v14 + 3) >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v14 = sub_264DBBCB4(isUniquelyReferenced_nonNull_native, v32, 1, v14);
    }

    v11 &= v11 - 1;
    if (*(v26 + 16))
    {
      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v28)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v33 = *(v14 + 2);
        v34 = __OFADD__(v33, v28);
        v35 = v33 + v28;
        if (v34)
        {
          goto LABEL_57;
        }

        *(v14 + 2) = v35;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  v91 = *(v14 + 2);
  if (v91)
  {
    v36 = v14;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = v36 + 32;
    while (v41 < *(v92 + 2))
    {
      v93 = v41;
      v44 = *(v42 + 1);
      v43 = *(v42 + 2);
      v45 = *v42;
      v100 = v42[48];
      v98 = v44;
      v99 = v43;
      v97 = v45;
      v13 = *(&v45 + 1);
      v46 = v45;
      v47 = swift_allocObject();
      v49 = *(v42 + 1);
      v48 = *(v42 + 2);
      v50 = *v42;
      *(v47 + 64) = v42[48];
      *(v47 + 32) = v49;
      *(v47 + 48) = v48;
      *(v47 + 16) = v50;
      sub_264DA5778(&v97, v101);
      sub_264DA5778(&v97, v101);

      sub_264D91628(v37, v38);
      v51 = swift_allocObject();
      *(v51 + 16) = sub_264DA5770;
      *(v51 + 24) = v47;
      v52 = v51;
      v53 = v47;
      sub_264D91628(v39, v40);
      v54 = v96;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v54;
      v57 = sub_264D9D57C(v46, v13);
      v58 = v54[2];
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_50;
      }

      v61 = v56;
      if (v54[3] >= v60)
      {
        if ((v55 & 1) == 0)
        {
          sub_264DA1158(&qword_27FFB1EC0, &qword_264E26C78);
          v54 = v101[0];
        }
      }

      else
      {
        sub_264D9E3EC(v60, v55, &qword_27FFB1EC0, &qword_264E26C78);
        v54 = v101[0];
        v62 = sub_264D9D57C(v46, v13);
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_59;
        }

        v57 = v62;
      }

      v64 = v52;
      v96 = v54;
      v65 = v53;
      if (v61)
      {

        v66 = 56 * v57;
      }

      else
      {
        (*(v64 + 16))(v101);
        v67 = v101[0];
        v68 = v101[1];
        v69 = v103;
        v70 = v104;
        v71 = v105;
        v66 = 56 * v57;
        v72 = v102;
        v54[(v57 >> 6) + 8] |= 1 << v57;
        v73 = (v54[6] + 16 * v57);
        *v73 = v46;
        v73[1] = v13;
        v74 = v54[7] + 56 * v57;
        *v74 = v67;
        *(v74 + 8) = v68;
        *(v74 + 16) = v72;
        *(v74 + 32) = v69;
        *(v74 + 40) = v70;
        *(v74 + 48) = v71 & 1;
        v75 = v54[2];
        v34 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v34)
        {
          goto LABEL_53;
        }

        v54[2] = v76;
      }

      v13 = v98;
      v77 = v54[7] + v66;
      v78 = *(v77 + 16);
      v34 = __OFADD__(v78, v98);
      v79 = v78 + v98;
      if (v34)
      {
        goto LABEL_51;
      }

      *(v77 + 16) = v79;
      v81 = sub_264D9D1F4(v101, 0x7070416C6C415F5FLL, 0xEB000000005F5F73);
      if (*(v80 + 8))
      {
        v82 = *(v80 + 16);
        v34 = __OFADD__(v82, v13);
        v83 = v82 + v13;
        if (v34)
        {
          goto LABEL_52;
        }

        *(v80 + 16) = v83;
      }

      (v81)(v101, 0);
      v41 = v93 + 1;
      sub_264DA5814(&v97);
      v42 += 56;
      v39 = sub_264DA57C0;
      v37 = sub_264DA5770;
      v38 = v65;
      v40 = v64;
      if (v91 == v41)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_49;
  }

  v37 = 0;
  v65 = 0;
  v39 = 0;
  v64 = 0;
LABEL_42:

  v84 = v96[2];
  if (v84)
  {
    v13 = sub_264D8C320(v96[2], 0);
    v93 = sub_264D9163C();
    v85 = v101[0];
    v92 = *(&v102 + 1);
    v91 = v103;
    swift_bridgeObjectRetain_n();
    sub_264D8F07C(v85);
    if (v93 != v84)
    {
      goto LABEL_58;
    }
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v101[0] = v13;
  v13 = v88;
  sub_264DA5614(v101, &unk_2876A2C88);
  if (!v13)
  {

    v86 = v101[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB8, &qword_264E26C70);
    swift_arrayDestroy();

    sub_264D91628(v37, v65);
    sub_264D91628(v39, v64);
    return v86;
  }

LABEL_60:

  __break(1u);
  return result;
}

double sub_264D9C914@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *(type metadata accessor for MostUsedListSectionNotifications(0) + 20);

  v7 = sub_264D9C98C(a2 + v6);
  sub_264E02738(a1, v10, v7);
  result = v10[0].n128_f64[0];
  v9 = v10[1];
  *a3 = v10[0];
  a3[1] = v9;
  a3[2].n128_u8[0] = v11;
  return result;
}

char *sub_264D9C98C(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  v6 = *v1;
  v47 = a1;
  sub_264DA260C(sub_264DA59A0, v46, v6, &qword_27FFB1ED0, &qword_264E28610);
  v8 = *(v7 + 64);
  v40 = 0;
  v41 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v45 = v7;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v11)
  {
LABEL_10:
    v17 = __clz(__rbit64(v11)) | (v14 << 6);
    v18 = v45;
    v19 = *(v45 + 48);
    v20 = sub_264E238E8();
    v21 = *(v20 - 8);
    v22 = v42;
    (*(v21 + 16))(v42, v19 + *(v21 + 72) * v17, v20);
    v23 = *(*(v18 + 56) + 8 * v17);
    v24 = v44;
    *&v22[*(v44 + 48)] = v23;
    v25 = v22;
    v26 = v43;
    sub_264DA56B8(v25, v43);
    v27 = *(v26 + *(v24 + 48));
    v28 = *(v21 + 8);

    result = v28(v26, v20);
    v29 = *(v27 + 16);
    v30 = *(v15 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > *(v15 + 3) >> 1)
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_264DBBCB4(result, v32, 1, v15);
      v15 = result;
    }

    v11 &= v11 - 1;
    if (*(v27 + 16))
    {
      if ((*(v15 + 3) >> 1) - *(v15 + 2) < v29)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v33 = *(v15 + 2);
        v34 = __OFADD__(v33, v29);
        v35 = v33 + v29;
        if (v34)
        {
          goto LABEL_32;
        }

        *(v15 + 2) = v35;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v41 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  v36 = 0;
  v37 = *(v15 + 2) + 1;
  v38 = 48;
  while (--v37)
  {
    v39 = *&v15[v38];
    v38 += 56;
    v34 = __OFADD__(v36, v39);
    v36 += v39;
    if (v34)
    {
      __break(1u);
      break;
    }
  }

  return v36;
}

uint64_t sub_264D9CCEC()
{
  sub_264E247D8();
  v0 = sub_264E24AE8();
  v2 = v1;
  v4 = v3;
  sub_264E24A78();
  v5 = sub_264E24AD8();
  v7 = v6;
  v9 = v8;

  sub_264D817AC(v0, v2, v4 & 1);

  sub_264E248D8();
  v10 = sub_264E24AC8();
  v12 = v11;
  LOBYTE(v0) = v13;
  sub_264D817AC(v5, v7, v9 & 1);

  sub_264E24C08();
  sub_264D817AC(v10, v12, v0 & 1);
}

unint64_t sub_264D9CE9C()
{
  result = qword_27FFB1EA0;
  if (!qword_27FFB1EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1E90, &unk_264E26F50);
    sub_264DA59C0(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1EA0);
  }

  return result;
}

unint64_t sub_264D9CF58()
{
  result = qword_27FFB1EA8;
  if (!qword_27FFB1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1EA8);
  }

  return result;
}

uint64_t sub_264D9CFAC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *a2;
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(v11, a1, v13);
  *&v11[*(v9 + 56)] = v12;

  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (a1)
  {
    sub_264E23888();
    v15 = sub_264E238C8();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  sub_264DA5898(v11);
  return v15 & 1;
}

uint64_t sub_264D9D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
}

uint64_t (*sub_264D9D1F4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_264DA27AC(v6, a2, a3);
  return sub_264DA5CE8;
}

uint64_t (*sub_264D9D27C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_264DA2858(v6, a2, a3);
  return sub_264D9D304;
}

void sub_264D9D308(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_264D9D36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    result = 0;
  }

  else
  {
    result = sub_264E25478();
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_264D9D3C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  v17 = a3 + 40;
  v18 = *(a1 + 48);
  v42 = v18;
  v26 = v8;
  v27 = v9;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  while (1)
  {
    v21 = v3;
    v19 = *(v17 - 8);
    v35 = v4;
    v36 = v5;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    v40 = v9;
    v41 = v18;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v34 = v16;

    v19(&v43, &v35, &v28);
    if (v43)
    {
      break;
    }

    v35 = v10;
    v36 = v11;
    v37 = v12;
    v38 = v13;
    v39 = v14;
    v40 = v15;
    v41 = v16;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v42;
    v19(&v43, &v35, &v28);
    if (v43)
    {
      break;
    }

    v17 += 16;
    v3 = v21 - 1;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
    v18 = v42;
    if (v21 == 1)
    {
      return 0;
    }
  }

  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v42;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v19(&v43, &v35, &v28);

  return v43;
}

unint64_t sub_264D9D57C(uint64_t a1, uint64_t a2)
{
  sub_264E254A8();
  sub_264E25168();
  v4 = sub_264E254C8();

  return sub_264D9D79C(a1, a2, v4);
}

unint64_t sub_264D9D5F4(uint64_t a1)
{
  sub_264E23AA8();
  v2 = MEMORY[0x277CC9578];
  sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = sub_264E25038();
  return sub_264D9D854(a1, v3, MEMORY[0x277CC9578], &qword_27FFB1868, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_264D9D6C8(uint64_t a1)
{
  sub_264E238E8();
  v2 = MEMORY[0x277CC88A8];
  sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  v3 = sub_264E25038();
  return sub_264D9D854(a1, v3, MEMORY[0x277CC88A8], &qword_27FFB1F20, v2, MEMORY[0x277CC88C8]);
}

unint64_t sub_264D9D79C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264E25478())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264D9D854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_264DA59C0(v24, v25, v26);
      v20 = sub_264E25068();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_264D9D9F4(char *__src, char *a2, char *a3, char *__dst, uint64_t a5)
{
  v6 = v5;
  v79 = a5;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = (a2 - __src) / 56;
  v12 = a3 - a2;
  v13 = (a3 - a2) / 56;
  if (v11 < v13)
  {
    v14 = 56 * v11;
    if (__dst != __src || &__src[v14] <= __dst)
    {
      v15 = __dst;
      memmove(__dst, __src, v14);
      __dst = v15;
    }

    v16 = &__dst[v14];
    if (v10 < 56 || v8 >= v7)
    {
      v33 = v9;
      v17 = __dst;
      goto LABEL_47;
    }

    v17 = __dst;
    v65 = &__dst[v14];
    while (1)
    {
      v18 = *(v8 + 1);
      v19 = *(v8 + 4);
      v20 = *(v8 + 5);
      v21 = v8[48];
      v73 = *v8;
      v74 = v18;
      v75 = *(v8 + 1);
      v76 = v19;
      v77 = v20;
      v78 = v21;
      v22 = *(v17 + 1);
      v24 = *(v17 + 4);
      v23 = *(v17 + 5);
      v25 = v17[48];
      v67 = *v17;
      v68 = v22;
      v69 = *(v17 + 1);
      v70 = v24;
      v71 = v23;
      v72 = v25;

      v26 = sub_264D9D3C4(&v73, &v67, v79);
      if (v6)
      {

        v58 = 56 * ((v65 - v17) / 56);
        if (v9 < v17 || v9 >= &v17[v58] || v9 != v17)
        {
          v33 = v9;
          goto LABEL_50;
        }

        goto LABEL_52;
      }

      v27 = v26;

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v8;
      v29 = v9 == v8;
      v8 += 56;
      v16 = v65;
      if (!v29)
      {
        goto LABEL_14;
      }

LABEL_15:
      v9 += 56;
      if (v17 >= v16 || v8 >= v7)
      {
        v33 = v9;
        goto LABEL_47;
      }
    }

    v28 = v17;
    v29 = v9 == v17;
    v17 += 56;
    v16 = v65;
    if (v29)
    {
      goto LABEL_15;
    }

LABEL_14:
    v30 = *v28;
    v31 = *(v28 + 1);
    v32 = *(v28 + 2);
    *(v9 + 6) = *(v28 + 6);
    *(v9 + 1) = v31;
    *(v9 + 2) = v32;
    *v9 = v30;
    goto LABEL_15;
  }

  v34 = 56 * v13;
  v17 = __dst;
  if (__dst != a2 || &a2[v34] <= __dst)
  {
    memmove(__dst, a2, 56 * v13);
  }

  v16 = &v17[v34];
  if (v12 < 56 || v8 <= v9)
  {
    v33 = v8;
    goto LABEL_47;
  }

  __srca = v17;
  v61 = v9;
LABEL_24:
  v66 = v6;
  v35 = 0;
  v36 = v16;
  v62 = v8 - 56;
  v63 = v7;
  while (1)
  {
    v37 = v36;
    v38 = &v36[v35];
    v39 = &v36[v35 - 56];
    v40 = *&v36[v35 - 48];
    v41 = *&v36[v35 - 24];
    v42 = *&v36[v35 - 16];
    v43 = v36[v35 - 8];
    v44 = *(v38 - 40);
    v73 = *v39;
    v74 = v40;
    v75 = v44;
    v76 = v41;
    v77 = v42;
    v78 = v43;
    v45 = *(v8 - 6);
    v47 = *(v8 - 3);
    v46 = *(v8 - 2);
    v48 = *(v8 - 8);
    v67 = *(v8 - 7);
    v68 = v45;
    v69 = *(v8 - 40);
    v70 = v47;
    v71 = v46;
    v72 = v48;

    v49 = sub_264D9D3C4(&v73, &v67, v79);
    if (v66)
    {
      break;
    }

    v50 = v49;

    if (v50)
    {
      v33 = v8 - 56;
      v7 = &v63[v35 - 56];
      if (&v63[v35] != v8)
      {
        v55 = *v62;
        v56 = *(v8 - 40);
        v57 = *(v8 - 24);
        *&v63[v35 - 8] = *(v8 - 1);
        *&v63[v35 - 40] = v56;
        *&v63[v35 - 24] = v57;
        *v7 = v55;
      }

      v16 = &v37[v35];
      v6 = 0;
      if (&v37[v35] <= __srca || (v8 -= 56, v62 <= v61))
      {
        v16 = &v37[v35];
        goto LABEL_46;
      }

      goto LABEL_24;
    }

    if (&v63[v35] != v38)
    {
      v51 = &v63[v35 - 56];
      v52 = *v39;
      v53 = *(v39 + 16);
      v54 = *(v39 + 32);
      *(v51 + 48) = *(v39 + 48);
      *(v51 + 16) = v53;
      *(v51 + 32) = v54;
      *v51 = v52;
    }

    v35 -= 56;
    v36 = v37;
    v16 = &v37[v35];
    if (&v37[v35] <= __srca)
    {
      v33 = v8;
LABEL_46:
      v17 = __srca;
LABEL_47:
      v58 = 56 * ((v16 - v17) / 56);
      if (v33 >= v17 && v33 < &v17[v58] && v33 == v17)
      {
        goto LABEL_52;
      }

LABEL_50:
      v59 = v17;
LABEL_51:
      memmove(v33, v59, v58);
      goto LABEL_52;
    }
  }

  v59 = __srca;
  v58 = 56 * ((v37 - __srca + v35) / 56);
  if (v8 < __srca || v8 >= &__srca[v58])
  {
    memmove(v8, __srca, v58);
    goto LABEL_52;
  }

  if (v8 != __srca)
  {
    v33 = v8;
    goto LABEL_51;
  }

LABEL_52:

  return 1;
}

uint64_t sub_264D9DF90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264D9E01C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_264D9E030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EC8, &unk_264E26C80);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_264D9E134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F08, &qword_264E28600);
  v33 = v4;
  result = sub_264E25438();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v33 & 1) == 0)
      {
      }

      sub_264E254A8();
      sub_264E25168();
      result = sub_264E254C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_264D9E3EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = v6;
  result = sub_264E25438();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v4;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v42 = (v14 - 1) & v14;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = v24[1];
      v45 = *v24;
      v26 = *(v7 + 56) + 56 * v23;
      v27 = *(v26 + 8);
      v43 = *v26;
      v44 = *(v26 + 16);
      v29 = *(v26 + 32);
      v28 = *(v26 + 40);
      v41 = *(v26 + 48);
      if ((v40 & 1) == 0)
      {
      }

      sub_264E254A8();
      sub_264E25168();
      result = sub_264E254C8();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v45;
      v18[1] = v25;
      v19 = *(v9 + 56) + 56 * v17;
      v14 = v42;
      *v19 = v43;
      *(v19 + 8) = v27;
      *(v19 + 16) = v44;
      *(v19 + 32) = v29;
      *(v19 + 40) = v28;
      *(v19 + 48) = v41;
      ++*(v9 + 16);
      v7 = v39;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v42 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_264D9E6F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F28, &unk_264E26CD0);
  v39 = v4;
  result = sub_264E25438();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_264E25038();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_264D9EAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_264E238E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F18, qword_264E28670);
  v39 = v4;
  result = sub_264E25438();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      result = sub_264E25038();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_264D9EE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_264E238E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F00, &unk_264E26CB0);
  v39 = v4;
  result = sub_264E25438();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      result = sub_264E25038();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_264D9F268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F38, &qword_264E26CE0);
  v39 = v4;
  result = sub_264E25438();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_264E25038();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_264D9F644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
  v40 = v4;
  result = sub_264E25438();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_264E25038();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_264D9FA18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_264E25438();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      result = sub_264E25038();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_264D9FE08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E23AA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F30, &qword_264E28630);
  v43 = v4;
  result = sub_264E25438();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_264DA5A6C(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_264DA5A08(v29 + v28 * v24, v47);
      }

      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_264E25038();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_264DA5A6C(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_264DA026C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EF8, &qword_264E26CA8);
  v38 = v4;
  result = sub_264E25438();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 56 * v21;
      if (v38)
      {
        v39 = *(v25 + 8);
        v26 = *(v25 + 16);
        v40 = *(v25 + 32);
        v41 = *v25;
        v42 = *(v25 + 40);
        v43 = *(v25 + 24);
        v44 = *(v25 + 48);
        v45 = *(v25 + 49);
        v46 = *(v25 + 50);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        *&v48[15] = *(v25 + 47);
        v47[1] = v28;
        *v48 = v29;
        v47[0] = v27;
        v45 = v48[17];
        v46 = v48[18];
        v44 = v48[16];
        v42 = *(&v29 + 1);
        v43 = *(&v28 + 1);
        v40 = v29;
        v26 = v28;
        v39 = *(&v27 + 1);
        v41 = v27;

        sub_264D90348(v47, v49);
      }

      sub_264E254A8();
      sub_264E25168();
      result = sub_264E254C8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v41;
      *(v17 + 8) = v39;
      *(v17 + 16) = v26;
      *(v17 + 24) = v43;
      *(v17 + 32) = v40;
      *(v17 + 40) = v42;
      *(v17 + 48) = v44;
      *(v17 + 49) = v45;
      *(v17 + 50) = v46;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_264DA05EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264E25378() + 1) & ~v5;
    do
    {
      sub_264E254A8();

      sub_264E25168();
      v12 = sub_264E254C8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 56 * v3;
        v19 = (v17 + 56 * v6);
        if (56 * v3 < (56 * v6) || v18 >= v19 + 56 || v3 != v6)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[2];
          *(v18 + 48) = *(v19 + 6);
          *(v18 + 16) = v10;
          *(v18 + 32) = v11;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_264DA07C4(int64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_264E25378();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v21 = sub_264E25038();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for PickupsDetailLegendView.DayPickups(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_264DA0B08(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_264DA0B50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_264DA0BFC(unint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a3[6];
  v10 = a4(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a3[7] + 8 * a1) = a5;
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

uint64_t sub_264DA0CD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_264DA0D8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264E23AA8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264DA0E48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264E238E8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264DA0F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  result = sub_264DA5A6C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_264DA0FDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F08, &qword_264E28600);
  v2 = *v0;
  v3 = sub_264E25428();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264DA1158(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264E25428();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v19 *= 56;
        v24 = *(v4 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        v28 = *(v24 + 32);
        v27 = *(v24 + 40);
        v29 = *(v24 + 48);
        v30 = (*(v6 + 48) + v20);
        v31 = *(v24 + 16);
        *v30 = v22;
        v30[1] = v23;
        v32 = *(v6 + 56) + v19;
        *v32 = v25;
        *(v32 + 8) = v26;
        *(v32 + 16) = v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v27;
        *(v32 + 48) = v29;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_264DA1370(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v32 = a1(0);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_264E25428();
  v10 = v9;
  if (*(v8 + 16))
  {
    v30[0] = v6;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v33 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v30[1] = v34 + 32;
    v30[2] = v34 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v34;
        v25 = *(v34 + 72) * v23;
        v26 = v31;
        v27 = v32;
        (*(v34 + 16))(v31, *(v8 + 48) + v25, v32);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v33;
        result = (*(v24 + 32))(*(v33 + 48) + v25, v26, v27);
        *(*(v29 + 56) + 8 * v23) = v28;
        v18 = v35;
      }

      while (v35);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v30[0];
        v10 = v33;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v35 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_264DA1624(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_264E25428();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

char *sub_264DA18A0()
{
  v1 = v0;
  v31 = sub_264E23AA8();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
  v3 = *v0;
  v4 = sub_264E25428();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_264DA1B38(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_264E238E8();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_264E25428();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

char *sub_264DA1DB0()
{
  v1 = v0;
  v2 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_264E23AA8();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F30, &qword_264E28630);
  v5 = *v0;
  v6 = sub_264E25428();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_264DA5A08(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_264DA5A6C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_264DA20B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EF8, &qword_264E26CA8);
  v2 = *v0;
  v3 = sub_264E25428();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[15] = *(v19 + v17 + 47);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 47) = *&v34[15];
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_264D90348(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264DA23AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_264DA3A14(v16, v11, a3, v9, a2, a5);
  result = MEMORY[0x26674FCD0](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

void sub_264DA260C(uint64_t (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      sub_264DA396C(v15, v12, a3, v10, a2, a4, a5);
      MEMORY[0x26674FCD0](v15, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v14 = v16 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v13);
  sub_264DA36D8(v14, v12, a3, v10, a2, a4, a5);
  if (v5)
  {
    swift_willThrow();
  }
}

uint64_t (*sub_264DA27AC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_264DA2F44(v7);
  v7[9] = sub_264DA2968(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_264DA5CEC;
}

uint64_t (*sub_264DA2858(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_264DA2F6C(v7);
  v7[9] = sub_264DA2B18(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_264DA2904;
}

void sub_264DA2908(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_264DA2968(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[8] = a3;
  v10[9] = v4;
  v10[7] = a2;
  v12 = *v4;
  v13 = sub_264D9D57C(a2, a3);
  *(v11 + 49) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_264DA1158(&qword_27FFB1EC0, &qword_264E26C78);
      v13 = v21;
      goto LABEL_11;
    }

    sub_264D9E3EC(v18, a4 & 1, &qword_27FFB1EC0, &qword_264E26C78);
    v13 = sub_264D9D57C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[10] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 56 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 32);
    v28 = *(v23 + 40);
    v29 = *(v23 + 48);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0uLL;
  }

  *v11 = v24;
  v11[1] = v25;
  *(v11 + 1) = v26;
  v11[4] = v27;
  v11[5] = v28;
  *(v11 + 48) = v29;
  return sub_264DA5CF0;
}

uint64_t (*sub_264DA2B18(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[8] = a3;
  v10[9] = v4;
  v10[7] = a2;
  v12 = *v4;
  v13 = sub_264D9D57C(a2, a3);
  *(v11 + 49) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_264DA1158(&qword_27FFB1EE8, &qword_264E26C98);
      v13 = v21;
      goto LABEL_11;
    }

    sub_264D9E3EC(v18, a4 & 1, &qword_27FFB1EE8, &qword_264E26C98);
    v13 = sub_264D9D57C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[10] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 56 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 32);
    v28 = *(v23 + 40);
    v29 = *(v23 + 48);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0uLL;
  }

  *v11 = v24;
  v11[1] = v25;
  *(v11 + 1) = v26;
  v11[4] = v27;
  v11[5] = v28;
  *(v11 + 48) = v29;
  return sub_264DA2CC8;
}

void sub_264DA2CCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v2 + 48);
  LOBYTE(v10) = *(v2 + 49);
  if (a2)
  {
    if (!v4)
    {
      if (*(v2 + 49))
      {
        v21 = v2[10];
        v22 = *v2[9];
        v23 = v3;
        v24 = v2[2];
        v25 = v2[3];
        v26 = v2[4];
        v27 = v2[5];
        sub_264DA5844(*(v22 + 48) + 16 * v21);
        sub_264DA05EC(v21, v22);
        v8 = v27;
        v7 = v26;
        v6 = v25;
        v5 = v24;
        v3 = v23;
      }

      goto LABEL_16;
    }

    v11 = v2[10];
    v12 = *v2[9];
    if (*(v2 + 49))
    {
      goto LABEL_9;
    }

    v14 = v2[7];
    v13 = v2[8];
    v12[(v11 >> 6) + 8] |= 1 << v11;
    v15 = (v12[6] + 16 * v11);
    *v15 = v14;
    v15[1] = v13;
    v10 = v12[7];
    v16 = v10 + 56 * v11;
    *v16 = v3;
    *(v16 + 8) = v4;
    *(v16 + 16) = v5;
    *(v16 + 24) = v6;
    *(v16 + 32) = v7;
    *(v16 + 40) = v8;
    *(v16 + 48) = v9 & 1;
    v17 = v12[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
LABEL_15:
      v40 = v3;
      v41 = v5;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v12[2] = v19;

      v3 = v40;
      v5 = v41;
      v6 = v42;
      v7 = v43;
      v8 = v44;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v4)
  {
    if (v10)
    {
      v28 = v2[10];
      v29 = *v2[9];
      v30 = v3;
      v31 = v5;
      v32 = v6;
      v33 = v7;
      v34 = v8;
      sub_264DA5844(*(v29 + 48) + 16 * v28);
      sub_264DA05EC(v28, v29);
      v8 = v34;
      v7 = v33;
      v6 = v32;
      v5 = v31;
      v3 = v30;
    }

    goto LABEL_16;
  }

  v11 = v2[10];
  v12 = *v2[9];
  if ((v10 & 1) == 0)
  {
    v36 = v2[7];
    v35 = v2[8];
    v12[(v11 >> 6) + 8] |= 1 << v11;
    v37 = (v12[6] + 16 * v11);
    *v37 = v36;
    v37[1] = v35;
    v38 = v12[7] + 56 * v11;
    *v38 = v3;
    *(v38 + 8) = v4;
    *(v38 + 16) = v5;
    *(v38 + 24) = v6;
    *(v38 + 32) = v7;
    *(v38 + 40) = v8;
    *(v38 + 48) = v9 & 1;
    v39 = v12[2];
    v18 = __OFADD__(v39, 1);
    v19 = v39 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v20 = v12[7] + 56 * v11;
  *v20 = v3;
  *(v20 + 8) = v4;
  *(v20 + 16) = v5;
  *(v20 + 24) = v6;
  *(v20 + 32) = v7;
  *(v20 + 40) = v8;
  *(v20 + 48) = v9 & 1;
LABEL_16:
  v45 = *v2;
  v46 = v2[1];
  v47 = v2[2];
  v48 = v2[3];
  v49 = v2[4];
  v50 = v2[5];
  sub_264DA5900(v3, v4, v5, v6, v7, v8);
  sub_264DA5950(v45, v46, v47, v48, v49, v50);

  free(v2);
}

uint64_t (*sub_264DA2F44(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_264DA5CC4;
}

uint64_t (*sub_264DA2F6C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_264DA2F94;
}

void sub_264DA2FA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v31 = a4;
  v24 = a2;
  v25 = a1;
  v5 = sub_264E238E8();
  v7 = MEMORY[0x28223BE20](v5);
  v32 = a3;
  v33 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a3 + 64);
  v26 = 0;
  v27 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v29 = v6 + 16;
  v30 = v6;
  v28 = (v6 + 8);
  while (v13)
  {
    v34 = (v13 - 1) & v13;
    v15 = __clz(__rbit64(v13)) | (v9 << 6);
    v16 = v33;
LABEL_11:
    v19 = v32;
    (*(v30 + 16))(v16, v32[6] + *(v30 + 72) * v15, v5, v7);
    v36 = *(v19[7] + 8 * v15);

    v20 = v35;
    v21 = v31(v16, &v36);
    v35 = v20;
    if (v20)
    {

      (*v28)(v16, v5);
      return;
    }

    v22 = v21;

    (*v28)(v16, v5);
    v13 = v34;
    if (v22)
    {
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA3E54(v25, v24, v26, v32);
        return;
      }
    }
  }

  v17 = v9;
  v16 = v33;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_16;
    }

    v18 = *(v27 + 8 * v9);
    ++v17;
    if (v18)
    {
      v34 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_264DA3228(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = sub_264E238E8();
  v6 = MEMORY[0x28223BE20](v37);
  v35 = a3;
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v5 + 16;
  v33 = v5;
  v30 = 0;
  v31 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v18 = v36;
    v19 = v37;
LABEL_11:
    v22 = v35;
    (*(v33 + 16))(v18, v35[6] + *(v33 + 72) * v17, v19, v6);
    v39 = *(v22[7] + 8 * v17);
    v23 = v38;
    v24 = v34(v18, &v39);
    v38 = v23;
    if (v23)
    {
      (*v31)(v18, v19);
      return;
    }

    v25 = v24;
    (*v31)(v18, v19);
    if (v25)
    {
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA41F4(v29, v28, v30, v35);
        return;
      }
    }
  }

  v20 = v8;
  v18 = v36;
  v19 = v37;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_264DA3480(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = sub_264E23AA8();
  v6 = MEMORY[0x28223BE20](v37);
  v35 = a3;
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v5 + 16;
  v33 = v5;
  v30 = 0;
  v31 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v18 = v36;
    v19 = v37;
LABEL_11:
    v22 = v35;
    (*(v33 + 16))(v18, v35[6] + *(v33 + 72) * v17, v19, v6);
    v39 = *(v22[7] + 8 * v17);
    v23 = v38;
    v24 = v34(v18, &v39);
    v38 = v23;
    if (v23)
    {
      (*v31)(v18, v19);
      return;
    }

    v25 = v24;
    (*v31)(v18, v19);
    if (v25)
    {
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA458C(v29, v28, v30, v35);
        return;
      }
    }
  }

  v20 = v8;
  v18 = v36;
  v19 = v37;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_264DA36D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28 = a6;
  v29 = a7;
  v36 = a4;
  v27 = a2;
  v30 = a1;
  v8 = sub_264E238E8();
  v10 = MEMORY[0x28223BE20](v8);
  v37 = a3;
  v38 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a3 + 64);
  v31 = 0;
  v32 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v34 = v9 + 16;
  v35 = v9;
  v33 = (v9 + 8);
  while (v16)
  {
    v39 = (v16 - 1) & v16;
    v18 = __clz(__rbit64(v16)) | (v12 << 6);
    v19 = v38;
LABEL_11:
    v22 = v37;
    (*(v35 + 16))(v19, v37[6] + *(v35 + 72) * v18, v8, v10);
    v41 = *(v22[7] + 8 * v18);

    v23 = v40;
    v24 = v36(v19, &v41);
    v40 = v23;
    if (v23)
    {

      (*v33)(v19, v8);
      return;
    }

    v25 = v24;

    (*v33)(v19, v8);
    v16 = v39;
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        sub_264DA3AB4(v30, v27, v31, v37, v28, v29);
        return;
      }
    }
  }

  v20 = v12;
  v19 = v38;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_16;
    }

    v21 = *(v32 + 8 * v12);
    ++v20;
    if (v21)
    {
      v39 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_264DA396C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    sub_264DA36D8(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

void *sub_264DA3A14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_264DA3AB4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v42 = a1;
  v50 = sub_264E238E8();
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v37 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_264E25448();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v42;
  }

  v18 = 0;
  v39 = v11 + 16;
  v40 = result;
  v48 = v11 + 32;
  v19 = result + 64;
  v38 = a4;
  v41 = v11;
  v20 = v50;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_16:
    v24 = v21 | (v18 << 6);
    v25 = a4[6];
    v47 = *(v11 + 72);
    v26 = v43;
    (*(v11 + 16))(v43, v25 + v47 * v24, v20);
    v27 = *(a4[7] + 8 * v24);
    v45 = *(v11 + 32);
    v45(v49, v26, v20);
    v16 = v40;
    sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v46 = v27;

    result = sub_264E25038();
    v28 = -1 << *(v16 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v11 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v19 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v11 = v41;
LABEL_26:
    *(v19 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v16 + 48) + v31 * v47, v49, v50);
    *(*(v16 + 56) + 8 * v31) = v46;
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v17 = v44;
    if (!a3)
    {
      return v16;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v23 = v42[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v44 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA3E54(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_264E238E8();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F18, qword_264E28670);
  result = sub_264E25448();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v42 = v23;

    result = sub_264E25038();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA41F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = sub_264E238E8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F00, &unk_264E26CB0);
  result = sub_264E25448();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v37[1] = v43 + 16;
  v38 = result;
  v44 = v43 + 32;
  v16 = result + 64;
  v39 = a1;
  v37[0] = a4;
  v17 = v45;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v43;
    v42 = *(v43 + 72);
    v25 = v40;
    (*(v43 + 16))(v40, v23 + v42 * v22, v17);
    v26 = *(a4[7] + 8 * v22);
    v27 = *(v24 + 32);
    v9 = v18;
    v27(v18, v25, v17);
    v13 = v38;
    sub_264DA59C0(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    result = sub_264E25038();
    v28 = -1 << *(v13 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a1 = v39;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_26:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v27)(*(v13 + 48) + v31 * v42, v9, v45);
    *(*(v13 + 56) + 8 * v31) = v26;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v14 = v41;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA458C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_264E23AA8();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
  result = sub_264E25448();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + 8 * v22);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_264DA59C0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    result = sub_264E25038();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v9, v47);
    *(*(v13 + 56) + 8 * v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264DA4988(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x277D84F90];
LABEL_90:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v26 = (v8 + 1);
    }

    else
    {
      __dst = v7;
      v10 = *a3;
      v11 = *a3 + 56 * (v8 + 1);
      v12 = *(v11 + 8);
      v13 = *(v11 + 32);
      v14 = *(v11 + 40);
      v15 = *(v11 + 48);
      v156 = *v11;
      v157 = v12;
      v158 = *(v11 + 16);
      v159 = v13;
      v160 = v14;
      v161 = v15;
      v16 = v10 + 56 * v8;
      v17 = *(v16 + 8);
      v19 = *(v16 + 32);
      v18 = *(v16 + 40);
      v20 = *(v16 + 48);
      v150 = *v16;
      v151 = v17;
      v152 = *(v16 + 16);
      v153 = v19;
      v154 = v18;
      v155 = v20;

      v21 = sub_264D9D3C4(&v156, &v150, a5);
      if (v6)
      {
LABEL_101:

        swift_bridgeObjectRelease_n();
      }

      v22 = v21;

      v23 = v8;
      v24 = (v8 + 2);
      v140 = v23;
      v145 = 56 * v23;
      v25 = (v10 + 56 * v23 + 160);
      while (1)
      {
        v26 = __dst;
        if (__dst == v24)
        {
          break;
        }

        v27 = *(v25 - 5);
        v28 = *(v25 - 2);
        v29 = *(v25 - 1);
        v30 = *v25;
        v156 = *(v25 - 6);
        v157 = v27;
        v158 = *(v25 - 2);
        v159 = v28;
        v160 = v29;
        v161 = v30;
        v31 = *(v25 - 12);
        v33 = *(v25 - 9);
        v32 = *(v25 - 8);
        v34 = *(v25 - 56);
        v150 = *(v25 - 13);
        v151 = v31;
        v152 = *(v25 - 88);
        v153 = v33;
        v154 = v32;
        v155 = v34;

        LODWORD(v29) = sub_264D9D3C4(&v156, &v150, a5);

        ++v24;
        v25 += 56;
        if ((v22 ^ v29))
        {
          v26 = v24 - 1;
          break;
        }
      }

      v8 = v140;
      if (v22)
      {
        if (v26 < v140)
        {
          goto LABEL_124;
        }

        if (v140 < v26)
        {
          v35 = 56 * v26 - 24;
          v36 = v145 + 48;
          v37 = v26;
          v38 = v140;
          do
          {
            if (v38 != --v37)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v39 = (v50 + v36);
              v40 = (v50 + v35);
              v41 = *(v39 - 6);
              v42 = *(v39 - 5);
              v43 = *(v39 - 2);
              v44 = *(v39 - 1);
              v45 = *v39;
              v46 = *(v39 - 2);
              v48 = *(v40 - 1);
              v47 = *v40;
              v49 = *(v40 - 2);
              *v39 = *(v40 + 2);
              *(v39 - 2) = v48;
              *(v39 - 1) = v47;
              *(v39 - 3) = v49;
              *(v40 - 4) = v41;
              *(v40 - 3) = v42;
              *(v40 - 1) = v46;
              *v40 = v43;
              *(v40 + 1) = v44;
              *(v40 + 16) = v45;
            }

            ++v38;
            v35 -= 56;
            v36 += 56;
          }

          while (v38 < v37);
        }
      }
    }

    v51 = a3[1];
    if (v26 >= v51)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v26, v8))
    {
      goto LABEL_120;
    }

    if (&v26[-v8] >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_127;
    }

    if (v8 + a4 >= v51)
    {
      v52 = a3[1];
    }

    else
    {
      v52 = v8 + a4;
    }

    if (v52 < v8)
    {
      goto LABEL_123;
    }

    if (v26 == v52)
    {
LABEL_29:
      v53 = v26;
      if (v26 < v8)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v144 = v52;
      v146 = *a3;
      v105 = *a3 + 56 * v26 - 56;
      v141 = v8;
      v106 = v8 - v26;
      do
      {
        __dst = v26;
        v137 = v106;
        v138 = v105;
        v107 = v105;
        do
        {
          v108 = v107 + 56;
          v109 = *(v107 + 64);
          v110 = *(v107 + 88);
          v111 = *(v107 + 96);
          v112 = *(v107 + 104);
          v156 = *(v107 + 56);
          v157 = v109;
          v158 = *(v107 + 72);
          v159 = v110;
          v160 = v111;
          v161 = v112;
          v113 = *(v107 + 8);
          v115 = *(v107 + 32);
          v114 = *(v107 + 40);
          v116 = *(v107 + 48);
          v150 = *v107;
          v151 = v113;
          v152 = *(v107 + 16);
          v153 = v115;
          v154 = v114;
          v155 = v116;

          v117 = sub_264D9D3C4(&v156, &v150, a5);
          if (v6)
          {
            goto LABEL_101;
          }

          v118 = v117;

          if ((v118 & 1) == 0)
          {
            break;
          }

          if (!v146)
          {
            goto LABEL_126;
          }

          v120 = *(v107 + 56);
          v119 = *(v107 + 64);
          v121 = *(v107 + 88);
          v122 = *(v107 + 96);
          v123 = *(v107 + 104);
          v124 = *(v107 + 72);
          v125 = *(v107 + 16);
          v126 = *(v107 + 48);
          *v108 = *v107;
          *(v107 + 72) = v125;
          *(v107 + 88) = *(v107 + 32);
          *v107 = v120;
          *(v107 + 8) = v119;
          *(v107 + 16) = v124;
          *(v107 + 32) = v121;
          *(v107 + 40) = v122;
          *(v107 + 48) = v123;
          v107 -= 56;
          *(v108 + 48) = v126;
        }

        while (!__CFADD__(v106++, 1));
        v26 = __dst + 1;
        v105 = v138 + 56;
        v106 = v137 - 1;
        v53 = v144;
      }

      while (__dst + 1 != v144);
      v8 = v141;
      if (v144 < v141)
      {
        goto LABEL_119;
      }
    }

    v143 = v53;
    v54 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_264D9E030(0, *(v9 + 2) + 1, 1, v9);
    }

    v56 = *(v9 + 2);
    v55 = *(v9 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v9 = sub_264D9E030((v55 > 1), v56 + 1, 1, v9);
    }

    *(v9 + 2) = v57;
    v58 = &v9[16 * v56];
    *(v58 + 4) = v54;
    *(v58 + 5) = v143;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v143;
    if (v143 >= v7)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v59 = v57 - 1;
    if (v57 >= 4)
    {
      v64 = &v9[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_106;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_107;
      }

      v71 = &v9[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_109;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_112;
      }

      if (v75 >= v67)
      {
        v93 = &v9[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_118;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v57 == 3)
    {
      v60 = *(v9 + 4);
      v61 = *(v9 + 5);
      v70 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      v63 = v70;
LABEL_49:
      if (v63)
      {
        goto LABEL_108;
      }

      v76 = &v9[16 * v57];
      v78 = *v76;
      v77 = *(v76 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v82 = &v9[16 * v59 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_115;
      }

      if (v80 + v85 >= v62)
      {
        if (v62 < v85)
        {
          v59 = v57 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v86 = &v9[16 * v57];
    v88 = *v86;
    v87 = *(v86 + 1);
    v70 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v70;
LABEL_63:
    if (v81)
    {
      goto LABEL_110;
    }

    v89 = &v9[16 * v59];
    v91 = *(v89 + 4);
    v90 = *(v89 + 5);
    v70 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v70)
    {
      goto LABEL_113;
    }

    if (v92 < v80)
    {
      goto LABEL_3;
    }

LABEL_70:
    v97 = v59 - 1;
    if (v59 - 1 >= v57)
    {
      break;
    }

    v98 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v99 = *&v9[16 * v97 + 32];
    v100 = *&v9[16 * v59 + 40];
    v101 = (v98 + 56 * v99);
    v102 = (v98 + 56 * *&v9[16 * v59 + 32]);
    v103 = (v98 + 56 * v100);

    sub_264D9D9F4(v101, v102, v103, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v100 < v99)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_264D9E01C(v9);
    }

    if (v97 >= *(v9 + 2))
    {
      goto LABEL_105;
    }

    v104 = &v9[16 * v97];
    *(v104 + 4) = v99;
    *(v104 + 5) = v100;
    v162 = v9;
    sub_264D9DF90(v59);
    v9 = v162;
    v57 = *(v162 + 2);
    if (v57 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v9 = sub_264D9E01C(v9);
LABEL_92:
  v162 = v9;
  v128 = *(v9 + 2);
  if (v128 < 2)
  {
LABEL_100:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v129 = *a3;
      if (!*a3)
      {
        break;
      }

      v130 = *&v9[16 * v128];
      v131 = *&v9[16 * v128 + 24];
      v132 = (v129 + 56 * v130);
      v133 = (v129 + 56 * *&v9[16 * v128 + 16]);
      v134 = (v129 + 56 * v131);

      sub_264D9D9F4(v132, v133, v134, __dst, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v131 < v130)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_264D9E01C(v9);
      }

      if (v128 - 2 >= *(v9 + 2))
      {
        goto LABEL_117;
      }

      v135 = &v9[16 * v128];
      *v135 = v130;
      *(v135 + 1) = v131;
      v162 = v9;
      sub_264D9DF90(v128 - 1);
      v9 = v162;
      v128 = *(v162 + 2);
      if (v128 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DA5318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v42 = *a4;
    v7 = v42 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_4:
    v30 = v7;
    v31 = a3;
    v29 = v8;
    while (1)
    {
      v9 = v7 + 56;
      v10 = *(v7 + 64);
      v11 = *(v7 + 88);
      v12 = *(v7 + 96);
      v13 = *(v7 + 104);
      v37[0] = *(v7 + 56);
      v37[1] = v10;
      v38 = *(v7 + 72);
      v39 = v11;
      v40 = v12;
      v41 = v13;
      v14 = *(v7 + 8);
      v16 = *(v7 + 32);
      v15 = *(v7 + 40);
      v17 = *(v7 + 48);
      v32[0] = *v7;
      v32[1] = v14;
      v33 = *(v7 + 16);
      v34 = v16;
      v35 = v15;
      v36 = v17;

      v18 = sub_264D9D3C4(v37, v32, a5);

      if (v5)
      {
        break;
      }

      if (v18)
      {
        if (!v42)
        {
          __break(1u);
          return result;
        }

        v20 = *(v7 + 56);
        v19 = *(v7 + 64);
        v21 = *(v7 + 88);
        v22 = *(v7 + 96);
        v23 = *(v7 + 104);
        v24 = *(v7 + 72);
        v25 = *(v7 + 16);
        v26 = *(v7 + 48);
        *v9 = *v7;
        *(v7 + 72) = v25;
        *(v7 + 88) = *(v7 + 32);
        *v7 = v20;
        *(v7 + 8) = v19;
        *(v7 + 16) = v24;
        *(v7 + 32) = v21;
        *(v7 + 40) = v22;
        *(v7 + 48) = v23;
        v7 -= 56;
        *(v9 + 48) = v26;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v7 = v30 + 56;
      v8 = v29 - 1;
      if (v31 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_264DA54CC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_264E25458();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_264E251E8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_264DA4988(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_264DA5318(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA5614(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_264DA4938(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_264DA54CC(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA56B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA5728()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

double sub_264DA57C0@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_264DA5898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB0, &qword_264E26C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_264DA5900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_264DA5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_264DA59C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DA5A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA5A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_264DA5AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_264DA5B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264DA5B98()
{
  result = qword_27FFB1F40;
  if (!qword_27FFB1F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1F48, qword_264E26D20);
    sub_264DA5C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1F40);
  }

  return result;
}

unint64_t sub_264DA5C1C()
{
  result = qword_27FFB1F50;
  if (!qword_27FFB1F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1E98, &qword_264E26C60);
    sub_264D9CE9C();
    sub_264D9CF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1F50);
  }

  return result;
}

uint64_t NotificationsDetailTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DA5D94@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v6 = sub_264E23C38();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2008, &unk_264E26E70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = *a2;
  v16 = a1;
  v42 = a1;
  sub_264D93C68(sub_264DA7718, v15, &v32 - v13);
  v43 = v3;
  v17 = type metadata accessor for NotificationsDetailChart.Model(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v37 = v18 + 48;
  v38 = v19;
  if (v19(v14, 1, v17) != 1)
  {
    return sub_264DA7738(v14, v41, type metadata accessor for NotificationsDetailChart.Model);
  }

  v20 = v8;
  v35 = v10;
  v21 = *(v10 + 16);
  v32 = a2;
  v33 = v21;
  v22 = v40;
  v21(v40, v16, v9);
  v23 = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
  v24 = v6;
  v36 = v17;
  v25 = v39;
  v26 = v41;
  v34 = v14;
  v27 = *(v39 + 16);
  v27(v8, v32 + v23, v6);
  v33(v26, v22, v9);
  v28 = type metadata accessor for DetailChart.Model(0);
  v27((v26 + v28[6]), v20, v6);
  v29 = v34;
  v30 = sub_264E24C58();
  (*(v25 + 8))(v20, v24);
  (*(v35 + 8))(v40, v9);
  *(v26 + v28[5]) = MEMORY[0x277D84F90];
  *(v26 + v28[7]) = v30;
  *(v26 + v28[8]) = 1;
  *(v26 + v28[9]) = 0;
  *(v26 + v28[10]) = 0x40AC200000000000;
  result = v38(v29, 1, v36);
  if (result != 1)
  {
    return sub_264D817BC(v29, &qword_27FFB2008, &unk_264E26E70);
  }

  return result;
}

uint64_t sub_264DA6140(uint64_t a1, uint64_t a2)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailChart.Model(0);
  sub_264E23AF8();
  v6 = sub_264E23A78();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t NotificationsDetailTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F58, &qword_264E26D60);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F60, &qword_264E26D68);
  sub_264DA6368(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB1F68, &qword_27FFB1F58, &qword_264E26D60, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DA6E2C(v3);
}

uint64_t sub_264DA6368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_264E24538();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_264E24558();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC0, &qword_264E26E28);
  v18 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v20 = &v27 - v19;
  type metadata accessor for NotificationsDetailTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v14, &qword_27FFB1F70, &qword_264E28470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  v35 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FD0, &qword_264E26E60);
  sub_264DA766C(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264DA753C();
  sub_264E24F48();
  sub_264E24528();
  v22 = v30;
  v23 = v31;
  (*(v30 + 16))(v29, v7, v31);
  sub_264E24548();
  (*(v22 + 8))(v7, v23);
  sub_264D81DCC(&qword_27FFB1FE8, &qword_27FFB1FC0, &qword_264E26E28, MEMORY[0x277CDF0C8]);
  v24 = v28;
  v25 = v32;
  sub_264E24B68();
  (*(v33 + 8))(v11, v25);
  return (*(v18 + 8))(v20, v24);
}

uint64_t sub_264DA6808@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v29[1] = a1;
  v29[0] = sub_264E23AA8();
  v3 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0]);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityNavigationState(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotificationsDetailTabView(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v17);
  v18 = *(v14 + 28);
  v19 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v10 + 16))(v12, &v16[v18 + *(v19 + 20)], v9);
  sub_264DA75F0(v16);
  type metadata accessor for NotificationsDetailTabView.Model(0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v20 = Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)(v8, v5);
  v21 = *(v3 + 8);
  v22 = v5;
  v23 = v29[0];
  v21(v22, v29[0]);
  v24 = v21(v8, v23);
  if (v20)
  {
    MEMORY[0x28223BE20](v24);
    v28 = a2;
    sub_264E0AB28(sub_264DA764C, &v29[-4], v20);
    v26 = v25;

    (*(v10 + 8))(v12, v9);
    v29[2] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FF0, &qword_264E26E68);
    type metadata accessor for NotificationsDetailChart(0);
    sub_264D81DCC(&qword_27FFB1FF8, &qword_27FFB1FF0, &qword_264E26E68, MEMORY[0x277D83980]);
    sub_264DA766C(&qword_27FFB1FE0, type metadata accessor for NotificationsDetailChart, &protocol conformance descriptor for NotificationsDetailChart);
    v28 = sub_264DA766C(&qword_27FFB2000, type metadata accessor for NotificationsDetailChart.Model, &unk_264E27348);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DA6C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsDetailChart.Model(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DA76B4(a1, v6);
  v7 = type metadata accessor for NotificationsDetailChart(0);
  *(a2 + *(v7 + 24)) = 0;
  sub_264DA76B4(v6, a2);
  return sub_264DA7738(v6, a2 + *(v7 + 20), type metadata accessor for DetailChart.Model);
}

uint64_t sub_264DA6D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F58, &qword_264E26D60);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F60, &qword_264E26D68);
  sub_264DA6368(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB1F68, &qword_27FFB1F58, &qword_264E26D60, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DA6E2C(v3);
}

uint64_t sub_264DA6E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F58, &qword_264E26D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA6EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsDetailTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DA6FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsDetailTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DA70FC(uint64_t a1)
{
  type metadata accessor for NotificationsDetailTabView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DA73DC(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DA71C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DA7284(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DA7328(uint64_t a1)
{
  sub_264DA73DC(319, &qword_27FFB1FA0, type metadata accessor for NotificationsDetailChart.Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DA73DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_264DA7444()
{
  result = qword_27FFB1FA8;
  if (!qword_27FFB1FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1FB0, "Į");
    sub_264D81DCC(&qword_27FFB1F68, &qword_27FFB1F58, &qword_264E26D60, MEMORY[0x277CE1198]);
    sub_264DA766C(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1FA8);
  }

  return result;
}

unint64_t sub_264DA753C()
{
  result = qword_27FFB1FD8;
  if (!qword_27FFB1FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1FD0, &qword_264E26E60);
    sub_264DA766C(&qword_27FFB1FE0, type metadata accessor for NotificationsDetailChart, &protocol conformance descriptor for NotificationsDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1FD8);
  }

  return result;
}

uint64_t sub_264DA75F0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityNavigationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA766C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DA76B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsDetailChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA7738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DA77C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_264E238E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DA7884(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E238E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MostUsedListSectionPickups(uint64_t a1)
{
  result = qword_27FFB2010;
  if (!qword_27FFB2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DA7974(uint64_t a1)
{
  result = sub_264E238E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DA7A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E98, &qword_264E26C60);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for MostUsedListSectionPickups(0);
  v8 = sub_264DA7C60(v1 + *(v7 + 20));
  if (v8[2])
  {
    MEMORY[0x28223BE20](v8);
    *(&v12 - 2) = v9;
    *(&v12 - 1) = v1;
    sub_264DA87FC();
    sub_264D9CE9C();
    sub_264D9CF58();
    sub_264E24F18();

    (*(v13 + 32))(a1, v6, v4);
    return (*(v13 + 56))(a1, 0, 1, v4);
  }

  else
  {

    v11 = *(v13 + 56);

    return v11(a1, 1, 1, v4);
  }
}

uint64_t *sub_264DA7C60(uint64_t a1)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  MEMORY[0x28223BE20](v89);
  v88 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v86 - v5;
  v94 = MEMORY[0x277D84F98];
  v6 = *v1;
  v93 = a1;
  v7 = 0;
  sub_264DA2268(sub_264DA8FE0, v92, v6);
  v86 = 0;
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v91 = v8;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v90 = v15;
    if (!v12)
    {
      break;
    }

LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = v91;
    v19 = *(v91 + 48);
    v20 = sub_264E238E8();
    v21 = *(v20 - 8);
    v22 = v87;
    (*(v21 + 16))(v87, v19 + *(v21 + 72) * v17, v20);
    v23 = v89;
    *&v22[*(v89 + 48)] = *(*(v18 + 56) + 8 * v17);
    v24 = v22;
    v25 = v88;
    sub_264DA8E34(v24, v88);
    v26 = *(v25 + *(v23 + 48));
    v27 = *(v21 + 8);

    v27(v25, v20);
    v7 = *(v26 + 16);
    v15 = v90;
    v28 = *(v90 + 2);
    v29 = v7 + v28;
    if (__OFADD__(v28, v7))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      sub_264E25498();
      __break(1u);
      goto LABEL_60;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v29 > *(v15 + 3) >> 1)
    {
      if (v28 <= v29)
      {
        v31 = v7 + v28;
      }

      else
      {
        v31 = v28;
      }

      v15 = sub_264DBBCD0(isUniquelyReferenced_nonNull_native, v31, 1, v15);
    }

    v12 &= v12 - 1;
    if (*(v26 + 16))
    {
      if ((*(v15 + 3) >> 1) - *(v15 + 2) < v7)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v7)
      {
        v32 = *(v15 + 2);
        v33 = __OFADD__(v32, v7);
        v34 = v7 + v32;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v15 + 2) = v34;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  v89 = *(v15 + 2);
  v35 = 0;
  if (v89)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v15 + 32;
    while (v39 < *(v15 + 2))
    {
      v91 = v39;
      v42 = *(v40 + 1);
      v41 = *(v40 + 2);
      v43 = *v40;
      v98 = v40[48];
      v96 = v42;
      v97 = v41;
      v95 = v43;
      v44 = *(&v43 + 1);
      v7 = v43;
      v45 = swift_allocObject();
      v47 = *(v40 + 1);
      v46 = *(v40 + 2);
      v48 = *v40;
      *(v45 + 64) = v40[48];
      *(v45 + 32) = v47;
      *(v45 + 48) = v46;
      *(v45 + 16) = v48;
      sub_264DA8F54(&v95, v99);
      sub_264DA8F54(&v95, v99);

      sub_264D91628(v35, v36);
      v49 = swift_allocObject();
      *(v49 + 16) = sub_264DA5770;
      *(v49 + 24) = v45;
      v50 = v49;
      v51 = v45;
      sub_264D91628(v37, v38);
      v52 = v94;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v52;
      v55 = sub_264D9D57C(v7, v44);
      v56 = v52[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_50;
      }

      v59 = v54;
      if (v52[3] >= v58)
      {
        if ((v53 & 1) == 0)
        {
          sub_264DA1144();
          v52 = v99[0];
        }
      }

      else
      {
        sub_264D9E3D8(v58, v53);
        v52 = v99[0];
        v60 = sub_264D9D57C(v7, v44);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }

        v55 = v60;
      }

      v62 = v50;
      v94 = v52;
      v63 = v51;
      if (v59)
      {

        v64 = 56 * v55;
      }

      else
      {
        (*(v62 + 16))(v99);
        v65 = v99[0];
        v66 = v99[1];
        v67 = v101;
        v68 = v102;
        v69 = v103;
        v64 = 56 * v55;
        v70 = v100;
        v52[(v55 >> 6) + 8] |= 1 << v55;
        v71 = (v52[6] + 16 * v55);
        *v71 = v7;
        v71[1] = v44;
        v72 = v52[7] + 56 * v55;
        *v72 = v65;
        *(v72 + 8) = v66;
        *(v72 + 16) = v70;
        *(v72 + 32) = v67;
        *(v72 + 40) = v68;
        *(v72 + 48) = v69 & 1;
        v73 = v52[2];
        v33 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v33)
        {
          goto LABEL_53;
        }

        v52[2] = v74;
      }

      v7 = v96;
      v75 = v52[7] + v64;
      v76 = *(v75 + 16);
      v33 = __OFADD__(v76, v96);
      v77 = v76 + v96;
      v15 = v90;
      if (v33)
      {
        goto LABEL_51;
      }

      *(v75 + 16) = v77;
      v79 = sub_264D9D27C(v99, 0x7070416C6C415F5FLL, 0xEB000000005F5F73);
      if (*(v78 + 8))
      {
        v80 = *(v78 + 16);
        v33 = __OFADD__(v80, v7);
        v81 = v7 + v80;
        if (v33)
        {
          goto LABEL_52;
        }

        *(v78 + 16) = v81;
      }

      (v79)(v99, 0);
      v39 = v91 + 1;
      sub_264DA8F9C(&v95);
      v40 += 56;
      v37 = sub_264DA57C0;
      v35 = sub_264DA5770;
      v36 = v63;
      v38 = v62;
      if (v89 == v39)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_49;
  }

  v63 = 0;
  v37 = 0;
  v62 = 0;
LABEL_42:

  v82 = v94[2];
  if (v82)
  {
    v7 = sub_264D8C334(v94[2], 0);
    v91 = sub_264D9163C();
    v83 = v99[0];
    v90 = *(&v100 + 1);
    v89 = v101;
    swift_bridgeObjectRetain_n();
    sub_264D8F07C(v83);
    if (v91 != v82)
    {
      goto LABEL_58;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v99[0] = v7;
  v7 = v86;
  sub_264DA8D70(v99, &unk_2876A2CC8);
  if (!v7)
  {

    v84 = v99[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB8, &qword_264E26C70);
    swift_arrayDestroy();

    sub_264D91628(v35, v63);
    sub_264D91628(v37, v62);
    return v84;
  }

LABEL_60:

  __break(1u);
  return result;
}

double sub_264DA8434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *(type metadata accessor for MostUsedListSectionPickups(0) + 20);

  v7 = sub_264DA84AC(a2 + v6);
  sub_264E02740(a1, v10, v7);
  result = v10[0].n128_f64[0];
  v9 = v10[1];
  *a3 = v10[0];
  a3[1] = v9;
  a3[2].n128_u8[0] = v11;
  return result;
}

char *sub_264DA84AC(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  v6 = *v1;
  v47 = a1;
  sub_264DA2268(sub_264DA8E14, v46, v6);
  v8 = *(v7 + 64);
  v40 = 0;
  v41 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v45 = v7;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v11)
  {
LABEL_10:
    v17 = __clz(__rbit64(v11)) | (v14 << 6);
    v18 = v45;
    v19 = *(v45 + 48);
    v20 = sub_264E238E8();
    v21 = *(v20 - 8);
    v22 = v42;
    (*(v21 + 16))(v42, v19 + *(v21 + 72) * v17, v20);
    v23 = *(*(v18 + 56) + 8 * v17);
    v24 = v44;
    *&v22[*(v44 + 48)] = v23;
    v25 = v22;
    v26 = v43;
    sub_264DA8E34(v25, v43);
    v27 = *(v26 + *(v24 + 48));
    v28 = *(v21 + 8);

    result = v28(v26, v20);
    v29 = *(v27 + 16);
    v30 = *(v15 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > *(v15 + 3) >> 1)
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_264DBBCD0(result, v32, 1, v15);
      v15 = result;
    }

    v11 &= v11 - 1;
    if (*(v27 + 16))
    {
      if ((*(v15 + 3) >> 1) - *(v15 + 2) < v29)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v33 = *(v15 + 2);
        v34 = __OFADD__(v33, v29);
        v35 = v33 + v29;
        if (v34)
        {
          goto LABEL_32;
        }

        *(v15 + 2) = v35;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v41 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  v36 = 0;
  v37 = *(v15 + 2) + 1;
  v38 = 48;
  while (--v37)
  {
    v39 = *&v15[v38];
    v38 += 56;
    v34 = __OFADD__(v36, v39);
    v36 += v39;
    if (v34)
    {
      __break(1u);
      break;
    }
  }

  return v36;
}

uint64_t sub_264DA87FC()
{
  sub_264E247D8();
  v0 = [objc_opt_self() bundle];
  v1 = sub_264E24AE8();
  v3 = v2;
  v5 = v4;
  sub_264E24A78();
  v6 = sub_264E24AD8();
  v8 = v7;
  v10 = v9;

  sub_264D817AC(v1, v3, v5 & 1);

  sub_264E248D8();
  v11 = sub_264E24AC8();
  v13 = v12;
  LOBYTE(v1) = v14;
  sub_264D817AC(v6, v8, v10 & 1);

  sub_264E24C08();
  sub_264D817AC(v11, v13, v1 & 1);
}

unint64_t sub_264DA89E8()
{
  result = qword_27FFB1B10;
  if (!qword_27FFB1B10)
  {
    sub_264E24948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1B10);
  }

  return result;
}

uint64_t sub_264DA8A40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *a2;
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(v11, a1, v13);
  *&v11[*(v9 + 56)] = v12;

  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (a1)
  {
    sub_264E23888();
    v15 = sub_264E238C8();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  sub_264DA8EA4(v11);
  return v15 & 1;
}

uint64_t sub_264DA8C28(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_264E25458();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_264E251E8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_264DA4988(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_264DA5318(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA8D70(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_264DA494C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_264DA8C28(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264DA8E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DA8EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2020, &unk_264E26F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DA8F0C()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_264DA8FFC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_264DA90EC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_264D817BC(a1, &qword_27FFB20A8, &qword_264E270C8);
    sub_264DBC7A8(a2, v7);
    v13 = sub_264E23AA8();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_264D817BC(v7, &qword_27FFB20A8, &qword_264E270C8);
  }

  else
  {
    sub_264DBD214(a1, v11, type metadata accessor for PickupsDetailLegendView.DayPickups);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_264DCD87C(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_264E23AA8();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_264DA930C()
{
  v0 = sub_264E23FC8();
  __swift_allocate_value_buffer(v0, qword_27FFB2028);
  v1 = __swift_project_value_buffer(v0, qword_27FFB2028);
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FFB6C08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ModelProvider.allActivityModel(forInterval:userAltDSID:deviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25[4] = a5;
  v25[2] = a3;
  v25[3] = a4;
  v25[1] = a2;
  v8 = sub_264E23EA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = sub_264E23EC8();
  v12 = *(v25[0] - 8);
  MEMORY[0x28223BE20](v25[0]);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264E23C38();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AllActivityView.Model(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23BF8();
  AllActivityView.Model.init(calendar:)(v17, v20);
  sub_264E238D8();
  if (v21 <= 0.0)
  {
    return sub_264DBD214(v20, a6, type metadata accessor for AllActivityView.Model);
  }

  v22 = sub_264E238E8();
  (*(*(v22 - 8) + 16))(v11, a1, v22);
  (*(v9 + 104))(v11, *MEMORY[0x277CC5830], v8);

  sub_264E23EB8();
  v23 = v25[7];
  sub_264DA9728(v14, v25[5], v20);
  (*(v12 + 8))(v14, v25[0]);
  if (!v23)
  {
    sub_264DBD27C(v20, a6, type metadata accessor for AllActivityView.Model);
  }

  return sub_264DBD184(v20, type metadata accessor for AllActivityView.Model);
}

void sub_264DA9728(char *a1, uint64_t a2, uint64_t a3)
{
  v81 = sub_264E23AA8();
  v86 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_264E238E8();
  v85 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v60 - v10;
  v83 = sub_264E23DB8();
  v74 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2078, &qword_264E270A0);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v60 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2080, &qword_264E270A8);
  v72 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = &v60 - v15;
  v16 = sub_264E23E58();
  v87 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v75 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = (&v60 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = sub_264E23DF8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v88;
  v28 = sub_264E23E68();
  if (v27)
  {
    v90[0] = v27;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2088, &unk_264E270B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v30 = v87;
    v31 = v76;
    (v87[4])(v76, v22, v16);
    v32 = v75;
    (v30[13])(v75, *MEMORY[0x277CC57A8], v16);
    v33 = sub_264E23E48();
    a1 = v30[1];
    (a1)(v32, v16);
    if ((v33 & 1) == 0)
    {
LABEL_8:
      sub_264DBD13C(&qword_27FFB2090, MEMORY[0x277CC57B0], MEMORY[0x277CC57B8]);
      swift_allocError();
      (v30[2])(v38, v31, v16);
      swift_willThrow();
      (a1)(v31, v16);
      goto LABEL_9;
    }

    if (qword_27FFB1690 == -1)
    {
LABEL_5:
      v34 = sub_264E23FC8();
      __swift_project_value_buffer(v34, qword_27FFB6C08);
      v35 = sub_264E23FA8();
      v36 = sub_264E252B8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_264D7D000, v35, v36, "enumerateActivitySegments DeviceActivityDataSource exception: dataSourceUnavailable", v37, 2u);
        MEMORY[0x26674FCD0](v37, -1, -1);
      }

      goto LABEL_8;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  v68 = v26;
  v69 = v24;
  v70 = v23;
  v39 = v84;
  v60 = 0;
  v67 = *(v28 + 16);
  if (v67)
  {
    v31 = 0;
    v30 = v69;
    v64 = v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v63 = v69 + 2;
    v62 = v69 + 1;
    v61 = (v72 + 1);
    v40 = v82;
    v16 = v83;
    v41 = v70;
    v66 = a1;
    v65 = v28;
    v87 = (v74 + 4);
    v88 = (v74 + 6);
    v75 = v85 + 8;
    v76 = (v86 + 8);
    v73 = a3;
    ++v74;
    while (v31 < *(v28 + 16))
    {
      v43 = v30[9];
      v72 = v31;
      v44 = v64 + v43 * v31;
      v45 = v68;
      (v30[2])(v68, v44, v41);
      sub_264E23DC8();
      (v30[1])(v45, v41);
      v46 = v89;
      sub_264E23E08();
      v47 = *v88;
      v48 = (*v88)(v40, 1, v16);
      v49 = v71;
      if (v48 != 1)
      {
        v85 = *v87;
        v86 = v47;
        do
        {
          (v85)(v12, v40, v16);
          v50 = *(type metadata accessor for AllActivityView.Model(0) + 104);
          v51 = v77;
          sub_264DDECDC(a3 + v50, v77);
          sub_264DBD0D4(v51, a3 + v50, &qword_27FFB1880, &qword_264E26220);
          sub_264DB0668(v12);
          sub_264DB203C(v12);
          v52 = v78;
          sub_264E23D98();
          _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
          v53 = *v75;
          v54 = v52;
          v55 = v80;
          (*v75)(v54, v80);
          sub_264E23D78();
          v57 = v56;
          type metadata accessor for UsageHeaderView.Model(0);
          v58 = v79;
          Calendar.fullDay(for:)(v49, v79);
          v16 = v83;
          sub_264DB5838(v57, v58, 0, 1, &qword_27FFB1D90, &unk_264E268E0);
          v59 = v55;
          a3 = v73;
          v53(v58, v59);
          v39 = v84;
          v46 = v89;
          (*v76)(v49, v81);
          sub_264DB2CC0();
          sub_264DB2EC8(v12);
          sub_264DB54B4(v12);
          sub_264DB5A50(v12);
          sub_264DB80BC(v12);
          sub_264DB424C(v12);
          sub_264DB92B0(v12);
          sub_264DB9640(v12);
          v40 = v82;
          sub_264DB4A64(v12);
          (*v74)(v12, v16);
          sub_264E23E08();
        }

        while ((v86)(v40, 1, v16) != 1);
      }

      v42 = v46;
      v31 = (v72 + 1);
      (*v61)(v39, v42);
      a1 = v66;
      v41 = v70;
      v30 = v69;
      v28 = v65;
      if (v31 == v67)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_18:
}

void sub_264DAA1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264E23C38();
  v169 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OverviewChart.Day(0);
  MEMORY[0x28223BE20](v8);
  v137 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_264E23AA8();
  v138 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v147 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v146 = v120 - v12;
  MEMORY[0x28223BE20](v13);
  v166 = v120 - v14;
  MEMORY[0x28223BE20](v15);
  v167 = v120 - v16;
  v175 = sub_264E23C18();
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v168 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v18 - 8);
  v145 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v156 = (v120 - v21);
  v172 = sub_264E238E8();
  v161 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v165 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v144 = v120 - v24;
  MEMORY[0x28223BE20](v25);
  v171 = v120 - v26;
  MEMORY[0x28223BE20](v27);
  v143 = v120 - v28;
  v148 = sub_264E23DB8();
  v160 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v178 = (v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2078, &qword_264E270A0);
  MEMORY[0x28223BE20](v30 - 8);
  v155 = v120 - v31;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2080, &qword_264E270A8);
  v159 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = v120 - v32;
  v33 = sub_264E23E58();
  v164 = *(v33 - 1);
  MEMORY[0x28223BE20](v33);
  v162 = v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v163 = v120 - v36;
  MEMORY[0x28223BE20](v37);
  v176 = v120 - v38;
  v39 = sub_264E23DF8();
  v130 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v177;
  v43 = sub_264E23E68();
  if (v42)
  {
    v179 = v42;
    v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2088, &unk_264E270B0);
    v45 = v176;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v8 = v163;
    v7 = v164;
    (*(v164 + 4))(v163, v45, v33);
    v46 = v162;
    (*(v7 + 13))(v162, *MEMORY[0x277CC57A8], v33);
    v47 = sub_264E23E48();
    v48 = *(v7 + 1);
    v48(v46, v33);
    if ((v47 & 1) == 0)
    {
LABEL_8:
      sub_264DBD13C(&qword_27FFB2090, MEMORY[0x277CC57B0], MEMORY[0x277CC57B8]);
      swift_allocError();
      (*(v7 + 2))(v53, v8, v33);
      swift_willThrow();
      v48(v8, v33);
      goto LABEL_9;
    }

    if (qword_27FFB1690 == -1)
    {
LABEL_5:
      v49 = sub_264E23FC8();
      __swift_project_value_buffer(v49, qword_27FFB6C08);
      v50 = sub_264E23FA8();
      v51 = sub_264E252B8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_264D7D000, v50, v51, "enumerateActivitySegments DeviceActivityDataSource exception: dataSourceUnavailable", v52, 2u);
        MEMORY[0x26674FCD0](v52, -1, -1);
      }

      goto LABEL_8;
    }

LABEL_43:
    swift_once();
    goto LABEL_5;
  }

  v128 = v41;
  v129 = v39;
  v120[1] = 0;
  v127 = *(v43 + 16);
  if (v127)
  {
    v54 = 0;
    v55 = v130;
    v126 = v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v125 = v130 + 16;
    v124 = v130 + 8;
    v152 = (v160 + 48);
    v150 = (v160 + 32);
    v142 = *MEMORY[0x277CC9940];
    v164 = (v173 + 13);
    v177 = (v138 + 8);
    v163 = (v173 + 1);
    v162 = v161 + 48;
    v158 = (v161 + 32);
    v133 = (v169 + 16);
    v132 = (v169 + 8);
    v141 = *MEMORY[0x277CC9968];
    v140 = (v138 + 16);
    v139 = (v160 + 8);
    v121 = (v159 + 8);
    v56 = v148;
    v48 = v178;
    v170 = a3;
    v123 = a1;
    v136 = v5;
    v135 = v7;
    v134 = v8;
    v122 = v43;
    v173 = (v161 + 8);
    while (1)
    {
      if (v54 >= *(v43 + 16))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v57 = *(v55 + 72);
      v131 = v54;
      v58 = v126 + v57 * v54;
      v59 = v128;
      v60 = v129;
      v61 = v55;
      (*(v55 + 16))(v128, v58, v129);
      v7 = v153;
      sub_264E23DC8();
      (*(v61 + 8))(v59, v60);
      v62 = v155;
      v63 = v154;
      sub_264E23E08();
      v151 = *v152;
      v64 = v151(v62, 1, v56);
      v33 = v156;
      v8 = v172;
      if (v64 != 1)
      {
        break;
      }

LABEL_12:
      v54 = v131 + 1;
      (*v121)(v7, v63);
      v55 = v130;
      v43 = v122;
      if (v54 == v127)
      {
        goto LABEL_38;
      }
    }

    v149 = *v150;
    v149(v48, v62, v56);
    while (1)
    {
      v176 = type metadata accessor for SummaryView.Model(0);
      v67 = *(v176 + 7);
      v7 = v168;
      v161 = *v164;
      (v161)(v168, v142, v175);
      v68 = v167;
      sub_264E23A98();
      v69 = v68;
      sub_264E23B08();
      v48 = *v177;
      (*v177)(v68, v174);
      v160 = *v163;
      (v160)(v7, v175);
      v159 = *v162;
      if ((v159)(v33, 1, v8) == 1)
      {
        break;
      }

      v70 = v143;
      v157 = *v158;
      v157(v143, v33, v8);
      v71 = v171;
      sub_264E23D98();
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      v72 = *v173;
      (*v173)(v71, v8);
      v73 = sub_264E238C8();
      v74 = v69;
      v75 = v174;
      v169 = v48;
      v48(v74, v174);
      v72(v70, v8);
      if (v73)
      {
        v76 = v171;
        sub_264E23D98();
        v77 = v167;
        _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
        v72(v76, v8);
        sub_264E23D78();
        v79 = v78;
        v80 = v170 + v67;
        v81 = v135;
        v82 = v136;
        (*v133)(v135, v80, v136);
        v83 = v137;
        sub_264E23AF8();
        (*v132)(v81, v82);
        v169(v77, v174);
        *(v83 + *(v134 + 20)) = v79;
        sub_264DAE2D0(v83);
        v84 = v83;
        v8 = v172;
        v75 = v174;
        sub_264DBD184(v84, type metadata accessor for OverviewChart.Day);
      }

      v85 = v75;
      v86 = v170 + *(v176 + 5);
      v87 = v144;
      sub_264E23D98();
      v88 = v166;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      v176 = v72;
      v72(v87, v8);
      sub_264E23D78();
      v90 = v89;
      v48 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
      v91 = v168;
      v92 = v175;
      (v161)(v168, v141, v175);
      v93 = v145;
      sub_264E23B08();
      v94 = v91;
      v8 = v172;
      (v160)(v94, v92);
      v95 = (v159)(v93, 1, v8);
      v96 = v146;
      if (v95 == 1)
      {
        sub_264D817BC(v93, &qword_27FFB1880, &qword_264E26220);
        sub_264E23AF8();
        (*v140)(v96, v88, v85);
        sub_264E23898();
      }

      else
      {
        v157(v165, v93, v8);
      }

      v7 = v147;
      v97 = v171;
      sub_264E23858();
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (v176)(v97, v8);
      v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36);
      v99 = *(v86 + v98);
      v100 = 0.0;
      if (*(v99 + 16))
      {
        v101 = sub_264D9D5F4(v7);
        v102 = v85;
        if (v103)
        {
          v100 = *(*(v99 + 56) + 8 * v101);
        }
      }

      else
      {
        v102 = v85;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179 = *(v86 + v98);
      v105 = v179;
      v106 = sub_264D9D5F4(v7);
      v108 = v105[2];
      v109 = (v107 & 1) == 0;
      v110 = __OFADD__(v108, v109);
      v111 = v108 + v109;
      v33 = v169;
      if (v110)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v48 = v107;
      if (v105[3] >= v111)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = v106;
          sub_264DA12F8();
          v106 = v119;
        }
      }

      else
      {
        sub_264D9E6F0(v111, isUniquelyReferenced_nonNull_native);
        v106 = sub_264D9D5F4(v7);
        if ((v48 & 1) != (v112 & 1))
        {
          sub_264E25498();
          __break(1u);
          return;
        }
      }

      v113 = v176;
      v114 = v90 + v100;
      v115 = v179;
      if (v48)
      {
        *(v179[7] + v106) = v114;
      }

      else
      {
        v179[(v106 >> 6) + 8] = (v179[(v106 >> 6) + 8] | (1 << v106));
        v116 = v106;
        (*(v138 + 16))(v115[6] + *(v138 + 72) * v106, v7, v102);
        *(v115[7] + v116) = v114;
        v117 = v115[2];
        v110 = __OFADD__(v117, 1);
        v118 = (v117 + 1);
        if (v110)
        {
          goto LABEL_40;
        }

        v115[2] = v118;
        v113 = v176;
      }

      v33(v7, v102);
      *(v86 + v98) = v115;
      v8 = v172;
      v113(v165, v172);
      v33(v166, v102);
      v48 = v178;
      v56 = v148;
      (*v139)(v178, v148);
      v65 = v155;
      v63 = v154;
      v7 = v153;
      sub_264E23E08();
      v66 = v151(v65, 1, v56);
      v33 = v156;
      if (v66 == 1)
      {
        goto LABEL_12;
      }

      v149(v48, v65, v56);
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_38:
}

uint64_t ModelProvider.addHourlyData(toDataModel:forDateInterval:userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_264E23EA8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_264E23EC8();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264DAB584, 0, 0);
}

uint64_t sub_264DAB584()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_264E238E8();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC5838], v3);

  sub_264E23EB8();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_264DAB6F4;
  v7 = v0[14];
  v8 = v0[8];
  v9 = v0[2];

  return sub_264DAB918(v7, v8, v9);
}

uint64_t sub_264DAB6F4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_264DAB890;
  }

  else
  {
    v2 = sub_264DAB808;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264DAB808()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264DAB890()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264DAB918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = sub_264E23DB8();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2078, &qword_264E270A0);
  v3[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2080, &qword_264E270A8);
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v7 = sub_264E23E58();
  v3[12] = v7;
  v3[13] = *(v7 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = sub_264E23DF8();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[20] = v9;
  *v9 = v3;
  v9[1] = sub_264DABB90;

  return MEMORY[0x2821162E0](a1, 0);
}

uint64_t sub_264DABB90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_264DABFDC;
  }

  else
  {
    v4 = sub_264DABCA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264DABCA4()
{
  result = v0[21];
  v16 = *(result + 16);
  if (v16)
  {
    v2 = 0;
    v13 = result + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80));
    v14 = v0[18];
    v3 = v0[6];
    v12 = (v0[10] + 8);
    v15 = v0[21];
    v22 = (v3 + 48);
    v21 = (v3 + 32);
    v18 = (v3 + 8);
    while (v2 < *(result + 16))
    {
      v4 = v0[19];
      v5 = v0[17];
      v6 = v0[8];
      v19 = v0[5];
      v17 = v2;
      (*(v14 + 16))(v4, v13 + *(v14 + 72) * v2, v5);
      sub_264E23DC8();
      (*(v14 + 8))(v4, v5);
      sub_264E23E08();
      v7 = *v22;
      if ((*v22)(v6, 1, v19) != 1)
      {
        v20 = *v21;
        do
        {
          v8 = v0[8];
          v9 = v0[7];
          v10 = v0[5];
          v20(v9, v8, v10);
          type metadata accessor for AllActivityView.Model(0);
          sub_264DB1A1C(v9);
          sub_264DB203C(v9);
          sub_264DB2EC8(v9);
          sub_264DB766C(v9);
          sub_264DB87E8(v9);
          sub_264DB424C(v9);
          sub_264DBB24C(v9);
          sub_264DB4A64(v9);
          (*v18)(v9, v10);
          sub_264E23E08();
        }

        while (v7(v8, 1, v10) != 1);
      }

      ++v2;
      (*v12)(v0[11], v0[9]);
      result = v15;
      if (v17 + 1 == v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_264DABFDC()
{
  v1 = *(v0 + 176);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2088, &unk_264E270B0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);

    (*(v6 + 32))(v4, v3, v7);
    (*(v6 + 104))(v5, *MEMORY[0x277CC57A8], v7);
    v8 = sub_264E23E48();
    v9 = *(v6 + 8);
    v9(v5, v7);
    if (v8)
    {
      if (qword_27FFB1690 != -1)
      {
        swift_once();
      }

      v10 = sub_264E23FC8();
      __swift_project_value_buffer(v10, qword_27FFB6C08);
      v11 = sub_264E23FA8();
      v12 = sub_264E252B8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_264D7D000, v11, v12, "enumerateActivitySegments DeviceActivityDataSource exception: dataSourceUnavailable", v13, 2u);
        MEMORY[0x26674FCD0](v13, -1, -1);
      }
    }

    v14 = *(v0 + 120);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    sub_264DBD13C(&qword_27FFB2090, MEMORY[0x277CC57B0], MEMORY[0x277CC57B8]);
    swift_allocError();
    (*(v15 + 16))(v17, v14, v16);
    swift_willThrow();
    v9(v14, v16);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t ModelProvider.summaryModel(forUserAltDSID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v91 = a1;
  v95 = a3;
  v88 = sub_264E23EA8();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_264E23EC8();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v5 - 8);
  v113 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v81 - v8;
  v118 = sub_264E238E8();
  v10 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v85 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v104 = &v81 - v13;
  MEMORY[0x28223BE20](v14);
  v101 = &v81 - v15;
  MEMORY[0x28223BE20](v16);
  v109 = &v81 - v17;
  v103 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v103);
  v112 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SummaryView.Model(0);
  MEMORY[0x28223BE20](v19 - 8);
  v105 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_264E23C38();
  v117 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v102 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v81 - v26;
  v28 = sub_264E23AA8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v98 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v115 = &v81 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v81 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v81 - v37;
  sub_264E23A98();
  v107 = v27;
  sub_264E23BF8();
  v116 = v29;
  v39 = *(v29 + 16);
  v114 = v38;
  v39(v35, v38, v28);
  sub_264E23BF8();
  v40 = v35;
  v110 = v24;
  Calendar.weeksRoundedToDay(untilDateInLastDay:weekCount:)(v35, 1, v9);
  v99 = v10[6];
  v100 = v10 + 6;
  if (v99(v9, 1, v118) == 1)
  {
    sub_264D817BC(v9, &qword_27FFB1880, &qword_264E26220);
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {
    v41 = v10[4];
    v42 = v109;
    v43 = v118;
    v84 = v10 + 4;
    v83 = v41;
    v41(v109, v9, v118);
    v97 = v40;
    v39(v115, v40, v28);
    v96 = v39;
    v44 = v10[2];
    v45 = v101;
    v44(v101, v42, v43);
    v108 = v28;
    v46 = v103;
    v47 = v117;
    v48 = v112;
    (*(v117 + 16))(&v112[*(v103 + 24)], v110, v111);
    *v48 = 1;
    v49 = v98;
    v96(v98, v115, v28);
    v50 = v104;
    v51 = v118;
    v96 = (v10 + 2);
    v82 = v44;
    v44(v104, v45, v118);
    v52 = v112;
    sub_264D9173C(v49, v50, &v112[*(v46 + 20)]);
    v53 = v10[1];
    v53(v45, v51);
    v55 = v116 + 8;
    v54 = *(v116 + 8);
    v56 = v108;
    v54(v115, v108);
    v57 = v109;
    v109 = (v10 + 1);
    v104 = v53;
    v53(v57, v51);
    v58 = *(v47 + 8);
    v59 = v111;
    v117 = v47 + 8;
    v58(v110, v111);
    v115 = v54;
    v116 = v55;
    v54(v97, v56);
    v60 = v102;
    sub_264E23BF8();
    v61 = v105;
    SummaryView.Model.init(dateState:calendar:)(v52, v60, v105);
    v62 = v113;
    v63 = v107;
    Calendar.weeksPreceding(date:weekCount:)(v114, 2, v113);
    v64 = v99(v62, 1, v51);
    v65 = v59;
    if (v64 == 1)
    {
      v66 = v63;
      v67 = v58;
      sub_264D817BC(v113, &qword_27FFB1880, &qword_264E26220);
      if (qword_27FFB1690 != -1)
      {
        swift_once();
      }

      v68 = sub_264E23FC8();
      __swift_project_value_buffer(v68, qword_27FFB6C08);
      v69 = sub_264E23FA8();
      v70 = sub_264E252A8();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = v65;
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_264D7D000, v69, v70, "Unable to calculate weeksPreceding. Returning empty SummaryView model.", v72, 2u);
        v73 = v72;
        v65 = v71;
        MEMORY[0x26674FCD0](v73, -1, -1);
      }

      v67(v66, v65);
      (v115)(v114, v108);
      return sub_264DBD214(v61, v95, type metadata accessor for SummaryView.Model);
    }

    else
    {
      v75 = v56;
      v76 = v85;
      v77 = v118;
      v83(v85, v113, v118);
      v78 = v86;
      v82(v86, v76, v77);
      (*(v87 + 104))(v78, *MEMORY[0x277CC5830], v88);

      v79 = v89;
      sub_264E23EB8();
      v80 = v106;
      sub_264DAA1D0(v79, v94, v61);
      (*(v90 + 8))(v79, v92);
      (v104)(v76, v118);
      v58(v107, v59);
      (v115)(v114, v75);
      if (!v80)
      {
        sub_264DBD27C(v61, v95, type metadata accessor for SummaryView.Model);
      }

      return sub_264DBD184(v61, type metadata accessor for SummaryView.Model);
    }
  }

  return result;
}