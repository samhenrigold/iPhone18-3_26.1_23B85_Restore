uint64_t sub_2310266D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23102671C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_231028CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id shcore_log_object(uint64_t a1)
{
  if (shcore_log_object_onceToken != -1)
  {
    shcore_log_object_cold_1();
  }

  v2 = shcore_log_object_sLogObject;

  return v2;
}

uint64_t __shcore_log_object_block_invoke()
{
  shcore_log_object_sLogObject = os_log_create("com.apple.shazam.ShazamCore", [@"core" cStringUsingEncoding:4]);

  return MEMORY[0x2821F96F8]();
}

void sub_231029ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23102BDAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102C180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102C2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102D338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102D860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t Dictionary.mapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a1;
  v14[8] = a2;
  v9 = sub_231032CBC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4C8, &qword_231034530);
  WitnessTable = swift_getWitnessTable();
  result = sub_231031270(sub_231031238, v14, v9, TupleTypeMetadata2, v11, WitnessTable, MEMORY[0x277D84950], &v15);
  if (!v8)
  {
    v16 = result;
    sub_231032D0C();
    swift_getWitnessTable();
    return sub_231032CAC();
  }

  return result;
}

uint64_t sub_231031078@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v18[1] = a5;
  v19 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = v18 - v14;
  result = a2(a1);
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v13 + 16))(v15, a1, TupleTypeMetadata2);
    (*(*(a4 - 8) + 32))(a6 + v17, &v15[*(TupleTypeMetadata2 + 48)], a4);
    return (*(*(v19 - 8) + 8))(v15);
  }

  return result;
}

uint64_t sub_231031270(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_231032D5C();
  if (!v19)
  {
    return sub_231032CFC();
  }

  v41 = v19;
  v45 = sub_231032DAC();
  v32 = sub_231032DBC();
  sub_231032D8C();
  result = sub_231032D4C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_231032D7C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_231032D9C();
      result = sub_231032D6C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t sub_23103184C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2310318F4;

  return sub_231032748();
}

uint64_t sub_2310318F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v4)
  {
    v6 = *(v3 + 16);
    v7 = sub_231032CCC();

    (v6)[2](v6, v7);
    _Block_release(v6);
  }

  else
  {
  }

  v8 = *(v5 + 8);

  return v8();
}

SHStorefront __swiftcall SHStorefront.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SHStorefront()
{
  result = qword_27DD3B4D0;
  if (!qword_27DD3B4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD3B4D0);
  }

  return result;
}

uint64_t sub_231031B50()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231032C0C;

  return sub_23103184C(v2);
}

uint64_t sub_231031BFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_231032C0C;

  return v6();
}

uint64_t sub_231031CE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_231032C0C;

  return sub_231031BFC(v2, v3, v4);
}

uint64_t sub_231031DA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_231031E8C;

  return v7();
}

uint64_t sub_231031E8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231031FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_231031E8C;

  return sub_231031DA4(a1, v4, v5, v6);
}

uint64_t sub_23103208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4D8, &qword_231034540);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_231032378(a3, v23 - v10);
  v12 = sub_231032D3C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_231032BAC(v11, &qword_27DD3B4D8, &qword_231034540);
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

  sub_231032D2C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_231032D1C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_231032CEC() + 32;
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

    sub_231032BAC(a3, &qword_27DD3B4D8, &qword_231034540);

    return v21;
  }

LABEL_8:
  sub_231032BAC(a3, &qword_27DD3B4D8, &qword_231034540);
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

uint64_t sub_231032378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4D8, &qword_231034540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310323E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2310324E0;

  return v6(a1);
}

uint64_t sub_2310324E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2310325D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231032C0C;

  return sub_2310323E8(a1, v4);
}

uint64_t sub_231032690(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231031E8C;

  return sub_2310323E8(a1, v4);
}

uint64_t sub_231032748()
{
  v1 = sub_231032C8C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4E0, &qword_231034598);
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_23103286C;

  return MEMORY[0x2821243B0]();
}

uint64_t sub_23103286C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_231032A38;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_2310329A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2310329A4()
{
  v1 = sub_231032CDC();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_231032A38()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_231032C4C();
  sub_231032C7C();
  (*(v4 + 8))(v1, v3);
  v5 = sub_231032C6C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v2, 1, v5);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_231032BAC(v0[5], &qword_27DD3B4E0, &qword_231034598);
    v9 = 0xE100000000000000;
    v10 = 45;
  }

  else
  {
    sub_231032C5C();
    (*(v6 + 8))(v8, v5);
    v10 = sub_231032CDC();
    v9 = v11;
  }

  v12 = v0[1];

  return v12(v10, v9);
}

uint64_t sub_231032BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}