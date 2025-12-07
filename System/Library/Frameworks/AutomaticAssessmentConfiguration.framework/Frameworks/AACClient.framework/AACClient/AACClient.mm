uint64_t sub_236DFB26C()
{
  v1 = *v0;
  sub_236E16600();
  MEMORY[0x2383BEC10](v1);
  return sub_236E16620();
}

uint64_t sub_236DFB2E0(uint64_t a1)
{
  v2 = *v1;
  sub_236E16600();
  MEMORY[0x2383BEC10](v2);
  return sub_236E16620();
}

uint64_t sub_236DFB324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_236DFB4A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AECPublicErrors.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AECPublicErrors.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AECPublicErrors();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AECPublicErrors.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AECPublicErrors();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_236DFB4A0(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_236DFB4DC()
{
  result = qword_27DE84EE0;
  if (!qword_27DE84EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84EE0);
  }

  return result;
}

void type metadata accessor for AEPolicySessionEvent()
{
  if (!qword_27DE85490)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DE85490);
    }
  }
}

uint64_t sub_236DFB5E4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE855E0, &qword_236E17CF8);
  v26[4] = swift_getTupleTypeMetadata2();
  sub_236E16370();
  sub_236E15F10();
  v26[3] = swift_getWitnessTable();
  v4 = sub_236E15DE0();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DE855E8, &qword_236E17D00);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_236E16370();
  MEMORY[0x28223BE20](v9 - 8);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v26 - v10, 1, 1, TupleTypeMetadata2);
  v11 = sub_236E15F20();
  v13 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
  v14 = (*(v12 + 16))(v13, v12);
  v26[2] = v15;
  v29 = v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = *(v2 + 80);
  v17[2] = v18;
  v17[3] = v3;
  v17[4] = v16;
  v17[5] = v11;
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v3;
  v19[4] = sub_236DFC3F8;
  v19[5] = v17;

  swift_getTupleTypeMetadata2();
  sub_236E15E60();
  swift_getWitnessTable();
  v20 = sub_236E15FA0();

  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v20;
  sub_236E15EA0();
  swift_allocObject();

  v22 = sub_236E15EC0();
  v29 = v11;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v3;
  sub_236E15F60();

  v24 = v27;
  swift_getWitnessTable();
  sub_236E15F50();

  (*(v28 + 8))(v7, v24);
  return v22;
}

uint64_t sub_236DFBAC0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v30 = a3;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DE855E8, &qword_236E17D00);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v26 - v10;
  v12 = *(a7 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_236E16370();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v29(0, 0);
  }

  v20 = *(Strong + 56);
  v26 = Strong;
  v20(v27);
  v21 = *(v12 + 32);
  v21(v11, v14, a7);
  v21(v18, v11, a7);
  v22 = &v18[*(TupleTypeMetadata2 + 48)];
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v24;
  *v22 = sub_236DFC5D8;
  *(v22 + 1) = v23;
  (*(v28 + 56))(v18, 0, 1, TupleTypeMetadata2);

  sub_236E15F00();

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_236DFBDA8(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DE855E8, &qword_236E17D00);
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a2(a1, sub_236DFC5D4, v9);
}

uint64_t sub_236DFBE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v51 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DE855E8, &qword_236E17D00);
  v50 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - v9;
  v10 = sub_236E16370();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  (*(v11 + 16))(&v42 - v18, a1, v10);
  v20 = 1;
  v48 = *(v6 + 48);
  if (v48(v19, 1, TupleTypeMetadata2) != 1)
  {
    v43 = *(TupleTypeMetadata2 + 48);
    v45 = v10;
    v21 = v50;
    v22 = *(*(v50 - 8) + 32);
    v23 = v46;
    v44 = v14;
    v22(v46, v19, v50);
    v24 = swift_allocObject();
    v49 = v6;
    v25 = v24;
    *(v24 + 16) = *&v19[v43];
    v26 = &v17[*(TupleTypeMetadata2 + 48)];
    v27 = v21;
    v10 = v45;
    v22(v17, v23, v27);
    v14 = v44;
    v20 = 0;
    *v26 = sub_236DFC50C;
    v26[1] = v25;
    v6 = v49;
  }

  v30 = *(v6 + 56);
  v28 = v6 + 56;
  v29 = v30;
  v31 = 1;
  v30(v17, v20, 1, TupleTypeMetadata2);
  (*(v11 + 32))(v14, v17, v10);
  v32 = v48(v14, 1, TupleTypeMetadata2);
  v33 = v51;
  if (v32 != 1)
  {
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = v50;
    v36 = *(*(v50 - 8) + 32);
    v37 = v47;
    v36(v47, v14, v50);
    v38 = swift_allocObject();
    v49 = v28;
    v39 = v38;
    *(v38 + 16) = *&v14[v34];
    v40 = &v33[*(TupleTypeMetadata2 + 48)];
    v36(v33, v37, v35);
    v31 = 0;
    *v40 = sub_236DFC508;
    *(v40 + 1) = v39;
  }

  return v29(v33, v31, 1, TupleTypeMetadata2);
}

uint64_t sub_236DFC278()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_236DFC380()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236DFC3B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236DFC404()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236DFC448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236DFC4D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_236DFC5DC(uint64_t a1)
{
  result = sub_236E16370();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_236DFC6E8(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = sub_236E16370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = *(v3 + 96);
  v10 = *(v4 - 8);
  v11 = *(v10 + 56);
  v11(&v2[v9], 1, 1, v4);
  v12 = *(*v2 + 104);
  *&v2[v12] = sub_236E15E40();
  v2[*(*v2 + 112)] = 0;
  *&v2[*(*v2 + 128)] = 0;
  (*(v10 + 32))(v8, v15, v4);
  v11(v8, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v9], v8, v5);
  swift_endAccess();
  *&v2[*(*v2 + 120)] = v16;
  return v2;
}

uint64_t sub_236DFC900(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_236E15E50();
  if (sub_236E15E30())
  {
    goto LABEL_10;
  }

  sub_236E15E50();
  v5 = sub_236E15E30();
  v6 = sub_236E15E50();
  if (v5)
  {
LABEL_9:
    *(v1 + v3) = v6;
LABEL_10:
    swift_endAccess();
    v8 = *(v1 + v3);
    sub_236E15E50();
    result = sub_236E15E30();
    if (result)
    {
      goto LABEL_13;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!v8)
      {
        return sub_236DFCD08();
      }

LABEL_13:
      v9 = *(*v1 + 128);
      if (!*(v1 + v9))
      {
        ObjectType = swift_getObjectType();
        sub_236DFCADC(ObjectType);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85688, &qword_236E17E98);
        sub_236DFD98C();
        v11 = sub_236E15FA0();

        *(v1 + v9) = v11;
      }

      return sub_236DFCD08();
    }

    __break(1u);
    goto LABEL_17;
  }

  result = sub_236E15E30();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = sub_236E15E50();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_236DFCADC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_236DFDA30();
  swift_unknownObjectRetain();
  v4 = sub_236E15F50();

  return v4;
}

uint64_t sub_236DFCB70()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_236E16370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  *(v1 + *(v2 + 112)) = 1;
  if (*(v1 + *(*v1 + 128)))
  {

    sub_236E15E90();
  }

  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v8 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t sub_236DFCD08()
{
  v45 = *v0;
  v1 = v45;
  v2 = *(v45 + 80);
  v3 = sub_236E16370();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = *(v2 - 8);
  MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = *(v1 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v7, v0 + v11, v3);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  (*(v8 + 32))(v10, v7, v2);
  if (*(v0 + *(*v0 + 112)))
  {
    return (*(v8 + 8))(v10, v2);
  }

  v13 = v0;
  v14 = *(*v0 + 104);
  swift_beginAccess();
  v42 = v14;
  v15 = *(v13 + v14);
  sub_236E15E50();
  result = sub_236E15E30();
  if ((result & 1) == 0)
  {
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    if (!v15)
    {
      return (*(v8 + 8))(v10, v2);
    }
  }

  v41 = v2;
  v16 = *(*v13 + 120);
  v43 = v13;
  v17 = [*(v13 + v16) currentWindows];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85678, &qword_236E17E88);
  v18 = sub_236E16130();

  v46 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
    goto LABEL_38;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v20 = MEMORY[0x277D84F90];
  v44 = v10;
  v40 = v8;
  if (v19)
  {
    v8 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2383BEA00](v8, v18);
        v21 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          v22 = v46;
          v20 = MEMORY[0x277D84F90];
          goto LABEL_25;
        }
      }

      else
      {
        if (v8 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          v19 = sub_236E164E0();
          goto LABEL_10;
        }

        v10 = *(v18 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v21 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_22;
        }
      }

      if ([v10 isVisible] && objc_msgSend(v10, sel_windowNumber) > 0)
      {
        sub_236E16420();
        sub_236E16450();
        sub_236E16460();
        sub_236E16430();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v8;
      if (v21 == v19)
      {
        goto LABEL_23;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_25:

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_40:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v23 = sub_236E164E0();
  if (!v23)
  {
    goto LABEL_40;
  }

LABEL_28:
  v46 = v20;
  result = sub_236DFD860(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v24 = 0;
  v25 = v46;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x2383BEA00](v24, v22);
    }

    else
    {
      v26 = *(v22 + 8 * v24 + 32);
      swift_unknownObjectRetain();
    }

    v27 = [v26 windowNumber];
    swift_unknownObjectRelease();
    v46 = v25;
    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_236DFD860((v28 > 1), v29 + 1, 1);
      v25 = v46;
    }

    ++v24;
    *(v25 + 16) = v29 + 1;
    *(v25 + 8 * v29 + 32) = v27;
  }

  while (v23 != v24);

LABEL_41:
  v46 = v25;
  v30 = v41;
  v31 = sub_236E15E10();

  v33 = v42;
  v32 = v43;
  swift_beginAccess();
  v34 = *(v32 + v33);
  sub_236E15E50();
  if (sub_236E15E30())
  {
    v35 = v40;
    goto LABEL_52;
  }

  sub_236E15E50();
  v36 = sub_236E15E30();
  v37 = sub_236E15E50();
  v35 = v40;
  if (v36)
  {
    v32 = v43;
LABEL_51:
    *(v32 + v33) = v37;
    v34 = v37;
LABEL_52:
    sub_236E15E50();
    if (sub_236E15E30())
    {
LABEL_59:
      swift_endAccess();
      return (*(v35 + 8))(v44, v30);
    }

    sub_236E15E50();
    result = sub_236E15E30();
    if (result)
    {
      v38 = sub_236E15E50();
LABEL_58:
      *(v32 + v33) = v38;
      goto LABEL_59;
    }

    if ((v34 & 0x8000000000000000) == 0)
    {
      if (v34)
      {
        v38 = v34 - 1;
        goto LABEL_58;
      }

      goto LABEL_63;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = sub_236E15E30();
  v32 = v43;
  if (result)
  {
    goto LABEL_49;
  }

  if ((v34 | v31) < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v37 = v34 + v31;
  if (__OFADD__(v34, v31))
  {
LABEL_49:
    v37 = sub_236E15E50();
    goto LABEL_51;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_236DFD384()
{
  v1 = *(*v0 + 96);
  v2 = sub_236E16370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_236DFD440()
{
  v0 = sub_236DFD384();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_236DFD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AECCurrentWindowNumbersPublisher.AECCurrentWindowsSubscription(0, v10, v11, v11);
  (*(v7 + 16))(v9, a1, a3);
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = sub_236DFC6E8(v9, a2);
  v16[3] = v12;
  v16[4] = swift_getWitnessTable();
  v16[0] = v13;
  sub_236E15E00();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

id sub_236DFD6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_236E028F4;
  v7[3] = &block_descriptor;
  v4 = _Block_copy(v7);

  v5 = [a3 observeWindowLifecycleChangesWithHandler_];
  _Block_release(v4);
  return v5;
}

unint64_t sub_236DFD7C4()
{
  result = qword_27DE85670;
  if (!qword_27DE85670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85670);
  }

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

char *sub_236DFD860(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_236DFD880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236DFD880(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85680, &qword_236E17E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_236DFD98C()
{
  result = qword_27DE85690;
  if (!qword_27DE85690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE85688, &qword_236E17E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85690);
  }

  return result;
}

uint64_t sub_236DFD9F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_236DFDA30()
{
  result = qword_27DE85698;
  if (!qword_27DE85698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85698);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_236DFDAC8()
{
  type metadata accessor for AECAssessmentSession();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DE87160 = result;
  return result;
}

uint64_t sub_236DFDB30()
{
  v2 = *v0;
  v1 = v0[1];
  if (qword_27DE84ED0 != -1)
  {
    swift_once();
  }

  result = qword_27DE871B8;
  if (unk_27DE871C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE856A8, &qword_236E18030);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_236E17F60;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_236DFDCAC();
    *(v4 + 32) = v2;
    *(v4 + 40) = v1;

    return sub_236E160D0();
  }

  return result;
}

unint64_t sub_236DFDC58()
{
  result = qword_27DE856A0;
  if (!qword_27DE856A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE856A0);
  }

  return result;
}

unint64_t sub_236DFDCAC()
{
  result = qword_27DE856B0;
  if (!qword_27DE856B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE856B0);
  }

  return result;
}

void sub_236DFDD00(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_236E164D0() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  v30 = v7;
  v31 = v4;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v11;
  v14 = v6;
  v15 = v11;
  if (v6)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v18 = *(*(v7 + 56) + v17);
    v19 = *(*(v7 + 48) + v17);
    v20 = v18;
    if (v19)
    {
      while (1)
      {
        v32 = objc_opt_self();
        v21 = v20;
        v22 = [v20 configurationInfo];
        sub_236E16080();

        v23 = sub_236E16070();

        v24 = [v32 propertyList:v23 isValidForFormat:100];

        if ((v24 & 1) == 0)
        {
          break;
        }

        v11 = v15;
        v6 = v16;
        v7 = v30;
        v4 = v31;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_236E164F0())
        {
          sub_236DFE044(0, &qword_27DE856B8, 0x277CE46E0);
          swift_dynamicCast();
          v19 = v33;
          sub_236DFE044(0, &qword_27DE856C0, 0x277CE46E8);
          swift_dynamicCast();
          v20 = v33;
          v15 = v11;
          v16 = v6;
          if (v33)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v25 = [v19 bundleIdentifier];
      v26 = sub_236E160C0();
      v28 = v27;

      sub_236DFDC58();
      swift_allocError();
      *v29 = v26;
      v29[1] = v28;

      sub_236DFE03C(v30);
    }

    else
    {
LABEL_19:
      sub_236DFE03C(v7);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_19;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_236DFE044(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_236DFE098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_236DFE0E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_236DFE138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_236E15E40();
  if (sub_236E15E30())
  {
    v5 = sub_236E16180();

    return v5;
  }

  sub_236E15E50();
  if (sub_236E15E30())
  {
    goto LABEL_7;
  }

  v7 = sub_236E161B0();
  sub_236E15E50();
  if (sub_236E15E30())
  {
    goto LABEL_7;
  }

  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    result = sub_236E16500();
    __break(1u);
    return result;
  }

  if (v7 >= a1)
  {
    sub_236E15E50();
    if ((sub_236E15E30() & 1) == 0)
    {
      sub_236E16200();
      sub_236E16380();
      swift_getWitnessTable();
      v8 = sub_236E161F0();
      sub_236E16200();
      sub_236E161F0();
      return v8;
    }

    goto LABEL_12;
  }

LABEL_7:

  sub_236E16180();
  return a2;
}

uint64_t sub_236DFE328()
{
  sub_236DFE7C8();

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_236DFE3A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE856D0, &qword_236E180F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE856D8, &qword_236E180F8);
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - v6;
  v8 = v0[6];
  v9 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v8);
  (*(v9 + 16))(v8, v9);
  v11 = v10;
  v18 = v10;
  swift_beginAccess();
  sub_236E15E80();
  swift_endAccess();
  v21 = v11;
  sub_236DFEB50();
  v12 = sub_236E16330();
  v20 = v12;
  v13 = sub_236E16310();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85E30, &unk_236E18100);
  sub_236DFECCC(&qword_27DE856E8, &unk_27DE85E30, &unk_236E18100, MEMORY[0x277CBCD90]);
  sub_236DFEB9C(&qword_27DE856F0, sub_236DFEB50, MEMORY[0x277D85228]);
  sub_236E15F90();
  sub_236DFEBE4(v4);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_236DFEC84;
  *(v15 + 24) = v14;
  sub_236DFECCC(&qword_27DE856F8, &qword_27DE856D8, &qword_236E180F8, MEMORY[0x277CBCD60]);
  v16 = v19;
  sub_236E15FA0();

  (*(v5 + 8))(v7, v16);
  swift_beginAccess();
  sub_236E15E80();
  swift_endAccess();

  sub_236DFEA00(v1[2]);
}

uint64_t sub_236DFE740(void *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_236DFEA00(a1);
  }

  return a2(0, 0);
}

void *sub_236DFE7C8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[13];
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_236E163B0();
    sub_236E15EA0();
    sub_236DFEB9C(&qword_27DE856C8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_236E16250();
    v2 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_236DFE03C(v2);
      v1[13] = MEMORY[0x277D84FA0];

      __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
      return sub_236E0A5CC();
    }

    while (1)
    {
      sub_236E15E90();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_236E163C0())
      {
        sub_236E15EA0();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236DFEA00(void *a1)
{
  v2 = v1;
  if ([a1 _allowsContentCapture])
  {
    if (qword_27DE84ED8 != -1)
    {
      swift_once();
    }

    v3 = sub_236E15DC0();
    __swift_project_value_buffer(v3, qword_27DE871C8);
    v4 = sub_236E15DA0();
    v5 = sub_236E162D0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_236DF9000, v4, v5, "Not applying content capture restrictions because the config allows content capture", v6, 2u);
      MEMORY[0x2383BF300](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
    return sub_236E0A5CC();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
    return sub_236E0A478();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_236DFEB50()
{
  result = qword_27DE856E0;
  if (!qword_27DE856E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE856E0);
  }

  return result;
}

uint64_t sub_236DFEB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236DFEBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE856D0, &qword_236E180F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DFEC4C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236DFEC8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236DFECCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_236DFED14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_236E16560();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_236E15D70();

  v11 = [v10 ae_verboseDescription];
  v12 = sub_236E160C0();

  return v12;
}

uint64_t sub_236DFEE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a2;
  sub_236E16230();
  v4[22] = sub_236E16220();
  v6 = sub_236E16210();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_236DFEF30, v6, v5);
}

uint64_t sub_236DFEF30()
{
  v1 = v0[19];
  if (*(v1 + 56))
  {
    v2 = v0[20];

    v2(0);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *(v1 + 24);
    v6 = sub_236E00B38();
    v0[25] = v6;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_236DFF0C0;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85718, &qword_236E18200);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_236DFF524;
    v0[13] = &block_descriptor_14;
    v0[14] = v7;
    [v5 activateSingleAppModeSessionWithConfiguration:v6 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_236DFF0C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_236DFF35C;
  }

  else
  {
    v5 = sub_236DFF1F0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_236DFF1F0()
{
  v1 = v0[25];
  v2 = v0[19];

  *(v2 + 56) = v0[18];

  swift_unknownObjectRelease();
  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v3 = sub_236E15DC0();
  __swift_project_value_buffer(v3, qword_27DE871C8);
  v4 = sub_236E15DA0();
  v5 = sub_236E162D0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236DF9000, v4, v5, "Activated SAM", v6, 2u);
    MEMORY[0x2383BF300](v6, -1, -1);
  }

  v7 = v0[20];
  v8 = v0[19];

  [*(v8 + 16) systemUptime];
  *(v8 + 40) = v9;
  *(v8 + 48) = 0;
  v7(0);
  v10 = v0[1];

  return v10();
}

uint64_t sub_236DFF35C()
{
  v1 = v0[25];

  swift_willThrow();

  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = sub_236E15DC0();
  __swift_project_value_buffer(v3, qword_27DE871C8);
  v4 = v2;
  v5 = sub_236E15DA0();
  v6 = sub_236E162D0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_236DF9000, v5, v6, "Failed to activate SAM: %{public}@", v8, 0xCu);
    sub_236E00AD0(v9);
    MEMORY[0x2383BF300](v9, -1, -1);
    MEMORY[0x2383BF300](v8, -1, -1);
  }

  v12 = v0[26];
  v13 = v0[20];

  v14 = v12;
  v13(v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_236DFF524(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85710, &qword_236E181F0);
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
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_236DFF600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  sub_236E16230();
  v4[21] = sub_236E16220();
  v6 = sub_236E16210();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_236DFF69C, v6, v5);
}

uint64_t sub_236DFF69C()
{
  if (*(v0[18] + 56))
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_236DFF784;

    return sub_236DFFFE4();
  }

  else
  {
    v3 = v0[19];

    v3(0);
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_236DFF784()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_236DFF8A4, v3, v2);
}

uint64_t sub_236DFF8A4()
{
  v1 = *(v0[18] + 56);
  v0[25] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[3] = sub_236DFFAE4;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85700, &qword_236E181E0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_236DFFF38;
    v0[13] = &block_descriptor_0;
    v0[14] = v2;
    [swift_unknownObjectRetain() deactivateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    if (qword_27DE84ED8 != -1)
    {
      swift_once();
    }

    v3 = sub_236E15DC0();
    __swift_project_value_buffer(v3, qword_27DE871C8);
    v4 = sub_236E15DA0();
    v5 = sub_236E162D0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_236DF9000, v4, v5, "Deactivated SAM", v6, 2u);
      MEMORY[0x2383BF300](v6, -1, -1);
    }

    v7 = v0[19];
    v8 = v0[18];

    *(v8 + 56) = 0;
    swift_unknownObjectRelease();
    *(v8 + 40) = 0;
    *(v8 + 48) = 1;
    v7(0);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_236DFFAE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_236DFFD6C;
  }

  else
  {
    v5 = sub_236DFFC14;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_236DFFC14()
{

  swift_unknownObjectRelease();
  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E15DC0();
  __swift_project_value_buffer(v1, qword_27DE871C8);
  v2 = sub_236E15DA0();
  v3 = sub_236E162D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236DF9000, v2, v3, "Deactivated SAM", v4, 2u);
    MEMORY[0x2383BF300](v4, -1, -1);
  }

  v5 = v0[19];
  v6 = v0[18];

  *(v6 + 56) = 0;
  swift_unknownObjectRelease();
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  v5(0);
  v7 = v0[1];

  return v7();
}

uint64_t sub_236DFFD6C()
{

  swift_willThrow();
  swift_unknownObjectRelease();
  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_236E15DC0();
  __swift_project_value_buffer(v2, qword_27DE871C8);
  v3 = v1;
  v4 = sub_236E15DA0();
  v5 = sub_236E162D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_236DF9000, v4, v5, "Failed to deactive SAM: %{public}@", v7, 0xCu);
    sub_236E00AD0(v8);
    MEMORY[0x2383BF300](v8, -1, -1);
    MEMORY[0x2383BF300](v7, -1, -1);
  }

  v11 = v0[26];
  v12 = v0[19];

  v13 = v11;
  v12(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_236DFFF38(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85710, &qword_236E181F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_236DFFFE4()
{
  v1[2] = v0;
  v2 = sub_236E164B0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E000A4, 0, 0);
}

uint64_t sub_236E000A4()
{
  v1 = v0[2];
  if ((*(v1 + 48) & 1) != 0 || (v2 = *(v1 + 40), [*(v1 + 16) systemUptime], v4 = v3 - v2, v5 = 5.0, v4 >= 5.0))
  {

    v16 = v0[1];

    return v16();
  }

  else
  {
    if (qword_27DE84ED8 != -1)
    {
      swift_once();
      v5 = 5.0;
    }

    v6 = v5 - v4;
    v7 = sub_236E15DC0();
    v0[6] = __swift_project_value_buffer(v7, qword_27DE871C8);
    v8 = sub_236E15DA0();
    v9 = sub_236E162D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_236DF9000, v8, v9, "Minimum SAM session duration not reached, waiting %{public}f", v10, 0xCu);
      MEMORY[0x2383BF300](v10, -1, -1);
    }

    v11 = sub_236E16630();
    v13 = v12;
    sub_236E165A0();
    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_236E002C0;

    return sub_236E00618(v11, v13, 0, 0, 1);
  }
}

uint64_t sub_236E002C0()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_236E00CD8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_236E00458;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_236E00458(uint64_t a1)
{
  v2 = sub_236E15DA0();
  v3 = sub_236E162D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236DF9000, v2, v3, "Finished waiting for minimum session duration.", v4, 2u);
    MEMORY[0x2383BF300](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_236E00530()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_236E005B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236E00618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_236E164A0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_236E00718, 0, 0);
}

uint64_t sub_236E00718()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_236E164B0();
  v5 = sub_236E00C88(&qword_27DE85720, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_236E16580();
  sub_236E00C88(qword_27DE85728, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_236E164C0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_236E008A8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_236E008A8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236E00A64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_236E00A64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_236E00AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85708, &qword_236E181E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_236E00B38()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBAA78]) init];
  [v0 setAllowsAutoCorrection_];
  [v0 setAllowsSmartPunctuation_];
  [v0 setAllowsSpellCheck_];
  [v0 setAllowsPredictiveKeyboard_];
  [v0 setAllowsKeyboardShortcuts_];
  [v0 setAllowsActivityContinuation_];
  [v0 setAllowsDictation_];
  [v0 setAllowsAccessibilityLiveCaptions_];
  [v0 setAllowsAccessibilityReader_];
  [v0 setAllowsAccessibilitySpeech_];
  [v0 setAllowsAccessibilityTypingFeedback_];
  [v0 setAllowsPasswordAutoFill_];
  [v0 setAllowsContinuousPathKeyboard_];
  [v0 setShowsUserConfirmationPromptsAndBanners_];
  return v0;
}

uint64_t sub_236E00C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236E00CDC(uint64_t a1)
{
  result = sub_236E16370();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_236E00DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = sub_236E16370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *(v4 + 96);
  v11 = *(v5 - 8);
  v12 = *(v11 + 56);
  v12(&v3[v10], 1, 1, v5);
  v13 = *(*v3 + 112);
  *&v3[v13] = sub_236E15E40();
  *&v3[*(*v3 + 120)] = 0;
  (*(v11 + 32))(v9, v17, v5);
  v12(v9, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  v14 = &v3[*(*v3 + 104)];
  v15 = v19;
  *v14 = v18;
  v14[1] = v15;
  return v3;
}

uint64_t sub_236E00FF0(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_236E15E50();
  if (sub_236E15E30())
  {
    goto LABEL_10;
  }

  sub_236E15E50();
  v5 = sub_236E15E30();
  v6 = sub_236E15E50();
  if (v5)
  {
LABEL_9:
    *(v1 + v3) = v6;
LABEL_10:
    swift_endAccess();
    return sub_236E01248();
  }

  result = sub_236E15E30();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = sub_236E15E50();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_236E010CC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_236E16370();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 120);
  v8 = *(v0 + v7);
  if (v8)
  {
    [v8 invalidate];
  }

  *(v0 + v7) = 0;
  swift_unknownObjectRelease();
  (*(*(v2 - 8) + 56))(v6, 1, 1, v2);
  v9 = *(*v0 + 96);
  swift_beginAccess();
  (*(v4 + 40))(v0 + v9, v6, v3);
  return swift_endAccess();
}

uint64_t sub_236E01248()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_236E15E50();
  result = sub_236E15E30();
  if (result)
  {
    goto LABEL_4;
  }

  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if (v2)
  {
LABEL_4:
    v4 = *(*v0 + 120);
    if (*(v0 + v4))
    {
      return result;
    }

    *(v0 + v4) = sub_236E0131C();
  }

  else
  {
    v5 = *(*v0 + 120);
    result = *(v0 + v5);
    if (!result)
    {
      return result;
    }

    [result invalidate];
    *(v0 + v5) = 0;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_236E0131C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 104));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;

  v5 = v2(sub_236E01980, v4);

  return v5;
}

uint64_t sub_236E01418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_236E16370();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(*result + 96);
    swift_beginAccess();
    (*(v5 + 16))(v8, v13 + v14, v4);
    if ((*(v9 + 48))(v8, 1, a2) == 1)
    {

      return (*(v5 + 8))(v8, v4);
    }

    (*(v9 + 32))(v11, v8, a2);
    v15 = *(*v13 + 112);
    swift_beginAccess();
    v16 = *(v13 + v15);
    sub_236E15E50();
    if (sub_236E15E30())
    {
      goto LABEL_11;
    }

    sub_236E15E50();
    result = sub_236E15E30();
    if (result)
    {
      v17 = sub_236E15E50();
LABEL_10:
      *(v13 + v15) = v17;
LABEL_11:
      swift_endAccess();
      v18 = sub_236E15E10();
      swift_beginAccess();
      v19 = *(v13 + v15);
      sub_236E15E50();
      if (sub_236E15E30())
      {
LABEL_20:
        swift_endAccess();
        sub_236E01248();

        return (*(v9 + 8))(v11, a2);
      }

      sub_236E15E50();
      v20 = sub_236E15E30();
      v21 = sub_236E15E50();
      if (v20)
      {
LABEL_19:
        *(v13 + v15) = v21;
        goto LABEL_20;
      }

      result = sub_236E15E30();
      if (result)
      {
LABEL_17:
        v21 = sub_236E15E50();
        goto LABEL_19;
      }

      if (((v19 | v18) & 0x8000000000000000) == 0)
      {
        v21 = v19 + v18;
        if (!__OFADD__(v19, v18))
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    else if (v16)
    {
      v17 = v16 - 1;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_236E01764()
{
  v1 = *(*v0 + 96);
  v2 = sub_236E16370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_236E01824()
{
  v0 = sub_236E01764();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_236E01910()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236E01948()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_236E0198C(uint64_t *a1, int a2)
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

uint64_t sub_236E019D4(uint64_t result, int a2, int a3)
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

uint64_t sub_236E01A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AECObservationPublisher.AECObservationSubscription(0, v12, v13, v12);
  (*(v9 + 16))(v11, a1, a4);
  swift_allocObject();

  v15 = sub_236E00DE8(v11, a2, a3);
  v18[3] = v14;
  v18[4] = swift_getWitnessTable();
  v18[0] = v15;
  sub_236E15E00();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_236E01B94(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_236DFDA30();
  swift_unknownObjectRetain();
  v4 = sub_236E15F50();

  return v4;
}

id sub_236E01C28(uint64_t a1, uint64_t a2, void *a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_236E028F4;
  v7[3] = &block_descriptor_1;
  v4 = _Block_copy(v7);

  v5 = [a3 observeWindowResizeEventsWithHandler_];
  _Block_release(v4);
  return v5;
}

uint64_t sub_236E01CF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236E01D48()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_236E02108();

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

void sub_236E01DCC(void *a1, id a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    v8 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    type metadata accessor for AECAssessmentStateConduit();
    v12 = swift_allocObject();
    v13 = a5;
    *(v12 + 16) = a5;
    v14 = objc_opt_self();
    v15 = a1;
    v16 = v13;
    *(v12 + 24) = [v14 proxyWithEndpoint:v15 queue:a6];

    a3(v17, 0);
  }

  else
  {
    sub_236E16500();
    __break(1u);
  }
}

uint64_t sub_236E02018()
{
  if (*v0 == 1)
  {
    if (qword_27DE84EB8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27DE87188;
  }

  else if (*v0)
  {
    if (qword_27DE84EB0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27DE87178;
  }

  else
  {
    if (qword_27DE84EA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27DE87168;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_236E02108()
{
  v1 = (v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler);
  v2 = *(v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler);
  v3 = *(v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_236E036D4(v2, v3);
  [*(v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_listener) invalidate];
  [*(v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_connection) invalidate];
  v4 = *(v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_singleAppModeToggler);
  if (v4)
  {
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = nullsub_1;
    v5[4] = 0;

    sub_236E15FB0();
  }

  sub_236E036E4(v0 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_contentCaptureController, v7);
  if (!v8)
  {
    return sub_236E03754(v7);
  }

  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_236E0A5CC();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

id sub_236E02270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AECLifetimeConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_236E02588(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v10 = sub_236E15DC0();
  __swift_project_value_buffer(v10, qword_27DE871C8);
  v11 = sub_236E15DA0();
  v12 = sub_236E162D0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_236DF9000, v11, v12, a3, v13, 2u);
    MEMORY[0x2383BF300](v13, -1, -1);
  }

  v14 = *(v7 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_singleAppModeToggler);
  if (v14)
  {
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;

    sub_236E15FB0();
  }
}

void sub_236E027CC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_236E160B0();
  [a4 doubleValue];
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v15[4] = sub_236E03894;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_236E028F4;
  v15[3] = &block_descriptor_29;
  v14 = _Block_copy(v15);

  [a1 presentBannerWithTitle:v10 duration:v14 completion:v12];
  _Block_release(v14);
}

uint64_t sub_236E028F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_236E02A18(char *a1, int a2, void *aBlock, void (*a4)(char *))
{
  v6 = _Block_copy(aBlock);
  sub_236E036E4(&a1[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_contentCaptureController], v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    a4(a1);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v7 = a1;
    sub_236E03754(v8);
  }

  v6[2](v6, 0);

  _Block_release(v6);
}

void sub_236E02AC4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_connection;
  if (*&Strong[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_connection])
  {

LABEL_4:
    [a2 invalidate];
    return;
  }

  v6 = Strong;
  v7 = [objc_allocWithZone(MEMORY[0x277CE4730]) init];
  v8 = [v7 makeInterface];

  [a2 setExportedInterface_];
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  [a2 setExportedObject_];

  v13[4] = sub_236E036BC;
  v13[5] = a1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_236E028F4;
  v13[3] = &block_descriptor_14_0;
  v10 = _Block_copy(v13);

  [a2 setInvalidationHandler_];
  _Block_release(v10);
  v11 = *&v6[v5];
  *&v6[v5] = a2;
  v12 = a2;

  [v12 resume];
}

void sub_236E02C94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler);
    v3 = *(Strong + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler + 8);
    v4 = Strong;
    sub_236E036C4(v2, v3);

    if (v2)
    {
      sub_236E02DB0();
      v5 = swift_allocError();
      *v6 = 0;
      v2();
      sub_236E036D4(v2, v3);
    }
  }
}

unint64_t sub_236E02DB0()
{
  result = qword_27DE85A30;
  if (!qword_27DE85A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85A30);
  }

  return result;
}

uint64_t sub_236E02E04(uint64_t a1)
{
  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v2 = sub_236E15DC0();
  __swift_project_value_buffer(v2, qword_27DE871C8);
  v3 = sub_236E15DA0();
  v4 = sub_236E162D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_236DF9000, v3, v4, "Lifetime connection did begin", v5, 2u);
    MEMORY[0x2383BF300](v5, -1, -1);
  }

  v6 = *(a1 + 16);

  return v6(a1, 0);
}

uint64_t sub_236E02F00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void))
{
  v29 = a3;
  v9 = sub_236E15FE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236E16000();
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v17 = *(a4 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_uiPrimitives);
  if (v17)
  {
    sub_236DFEB50();
    v28 = v13;
    _Block_copy(a5);
    swift_unknownObjectRetain();
    v27 = sub_236E16330();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v19 = v29;
    v18[4] = a2;
    v18[5] = v19;
    v18[6] = sub_236E037F4;
    v18[7] = v16;
    aBlock[4] = sub_236E0384C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236E028F4;
    aBlock[3] = &block_descriptor_23;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v21 = v19;

    sub_236E15FF0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_236E03600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85A40, &qword_236E18A10);
    sub_236E03658();
    sub_236E16390();
    v22 = v27;
    MEMORY[0x2383BE940](0, v15, v12, v20);
    _Block_release(v20);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v12, v9);
    (*(v30 + 8))(v15, v28);
  }

  else
  {
    sub_236E02DB0();
    v24 = swift_allocError();
    *v25 = 1;
    _Block_copy(a5);
    v26 = sub_236E15D70();
    (a5)[2](a5, v26);
  }
}

uint64_t sub_236E032B0(void *a1)
{
  v2 = v1;
  v4 = sub_236E15FE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_236E16000();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *(v2 + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_236E035E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236E028F4;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_236E15FF0();
  v17[1] = MEMORY[0x277D84F90];
  sub_236E03600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85A40, &qword_236E18A10);
  sub_236E03658();
  sub_236E16390();
  MEMORY[0x2383BE940](0, v11, v7, v14);
  _Block_release(v14);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);

  return 1;
}

uint64_t sub_236E03568()
{
  MEMORY[0x2383BF3A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236E035A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_236E03600()
{
  result = qword_27DE85EE0;
  if (!qword_27DE85EE0)
  {
    sub_236E15FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85EE0);
  }

  return result;
}

unint64_t sub_236E03658()
{
  result = qword_27DE85EF0;
  if (!qword_27DE85EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DE85A40, &qword_236E18A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85EF0);
  }

  return result;
}

uint64_t sub_236E036C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_236E036D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_236E036E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE85A50, &qword_236E184E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E03754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE85A50, &qword_236E184E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236E037BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236E037FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_236E0385C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E038C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_236E03C80;

  return sub_236DFF600(a1, v4, v5, v6);
}

uint64_t sub_236E03978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_236E03A2C;

  return sub_236DFEE94(a1, v4, v5, v6);
}

uint64_t sub_236E03A2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_9AACClient26AECLifetimeConnectionErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_236E03B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236E03BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_236E03C34(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_236E03C94()
{
  v0 = sub_236E160B0();
  v1 = sub_236E160B0();
  if (qword_27DE84EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87160;
  v3 = sub_236E160B0();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = sub_236E160C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_27DE87168 = v5;
  unk_27DE87170 = v7;
}

void sub_236E03DD0()
{
  v0 = sub_236E160B0();
  v1 = sub_236E160B0();
  if (qword_27DE84EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87160;
  v3 = sub_236E160B0();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = sub_236E160C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_27DE87178 = v5;
  unk_27DE87180 = v7;
}

void sub_236E03EF8()
{
  v0 = sub_236E160B0();
  v1 = sub_236E160B0();
  if (qword_27DE84EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87160;
  v3 = sub_236E160B0();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = sub_236E160C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_27DE87188 = v5;
  unk_27DE87190 = v7;
}

void sub_236E04020()
{
  v0 = sub_236E160B0();
  v1 = sub_236E160B0();
  if (qword_27DE84EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87160;
  v3 = sub_236E160B0();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = sub_236E160C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_27DE87198 = v5;
  unk_27DE871A0 = v7;
}

void sub_236E04148()
{
  v0 = sub_236E160B0();
  v1 = sub_236E160B0();
  if (qword_27DE84EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87160;
  v3 = sub_236E160B0();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = sub_236E160C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_27DE871A8 = v5;
  unk_27DE871B0 = v7;
}

void sub_236E04270()
{
  v0 = sub_236E160B0();
  v1 = sub_236E160B0();
  if (qword_27DE84EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87160;
  v3 = sub_236E160B0();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = sub_236E160C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_27DE871B8 = v5;
  unk_27DE871C0 = v7;
}

uint64_t sub_236E043F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_236E044E4()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_236E045A8(uint64_t a1)
{
  v16 = a1;
  v2 = sub_236E16320();
  v14 = *(v2 - 8);
  v15 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236E162F0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_236E16000();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_236E15D90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236DFEB50();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_236E163E0();

  v17 = 0xD00000000000001ELL;
  v18 = 0x8000000236E19D80;
  sub_236E15D80();
  sub_236E04980(&qword_27DE85B58, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v11 = sub_236E16540();
  MEMORY[0x2383BE6E0](v11);

  (*(v8 + 8))(v10, v7);
  sub_236E15FF0();
  v17 = MEMORY[0x277D84F90];
  sub_236E04980(&qword_27DE85B60, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85B68, &qword_236E18668);
  sub_236E049C8();
  sub_236E16390();
  (*(v14 + 104))(v4, *MEMORY[0x277D85260], v15);
  v1[3] = sub_236E16350();
  v1[4] = dispatch_group_create();
  v1[2] = v16;
  return v1;
}

uint64_t sub_236E04914()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_236E04980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_236E049C8()
{
  result = qword_27DE85B70[0];
  if (!qword_27DE85B70[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE85B68, &qword_236E18668);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE85B70);
  }

  return result;
}

uint64_t sub_236E04A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_236E04AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236E04AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_236E04B58@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CE4738]) init];
  if ([v5 isInternalOS] && !objc_msgSend(__swift_project_boxed_opaque_existential_1(a2, a2[3])[6], sel_isBeingTested))
  {
    v7 = __swift_project_boxed_opaque_existential_1(a2, a2[3])[8];
    v8 = __swift_project_boxed_opaque_existential_1(a2, a2[3])[7];
    v6 = [objc_opt_self() preferencesWithPreferencePrimitives:v7 systemNotificationPrimitives:v8 queue:a1];
  }

  else
  {
    v6 = [objc_opt_self() defaultPreferences];
  }

  v9 = v6;
  v10 = objc_allocWithZone(MEMORY[0x277CE4728]);
  v11 = v9;
  v12 = [v10 init];
  v13 = [v12 makeFeatureFlags];

  type metadata accessor for AECNoOpPolicyStore();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = [objc_allocWithZone(MEMORY[0x277CE4740]) init];
  v16 = [v15 makePrimitives];

  sub_236E04D20(a2, a3);
  a3[5] = v11;
  a3[6] = v13;
  a3[7] = v14;
  a3[8] = v16;
  a3[9] = a1;

  return a1;
}

uint64_t sub_236E04D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236E04D84@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AECAutocorrectModeConfigurationValidator();
  v3 = swift_allocObject();
  v4 = sub_236E04F18(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_236E04F18((v5 > 1), v6 + 1, 1, v4);
  }

  v16 = v2;
  v17 = &off_2849D43F0;
  *&v15 = v3;
  v4[2] = v7;
  sub_236E05060(&v15, &v4[5 * v6 + 4]);
  v8 = type metadata accessor for AECParticipantConfigurationValidator();
  v9 = swift_allocObject();
  v10 = v4[3];
  v11 = v6 + 2;
  if ((v6 + 2) > (v10 >> 1))
  {
    v14 = v9;
    v4 = sub_236E04F18((v10 > 1), v11, 1, v4);
    v9 = v14;
  }

  v16 = v8;
  v17 = &off_2849D2B98;
  *&v15 = v9;
  v4[2] = v11;
  sub_236E05060(&v15, &v4[5 * v7 + 4]);
  v12 = type metadata accessor for AECUnionAssessmentConfigurationValidator();
  result = swift_allocObject();
  *(result + 16) = v4;
  a1[3] = v12;
  a1[4] = &off_2849D43E0;
  *a1 = result;
  return result;
}

void *sub_236E04F18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85BF8, "X-");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85C00, &qword_236E18788);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_236E05060(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_236E0508C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_236E050D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_236E0512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_236E0A9E8;
  v8[3] = &block_descriptor_17;
  v7 = _Block_copy(v8);

  [a6 deactivateWithCompletion_];
  _Block_release(v7);
}

void (*sub_236E051E4())(uint64_t a1, uint64_t a2)
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  swift_unknownObjectRetain();
  return sub_236E05824;
}

uint64_t sub_236E05268()
{
  v1 = *v0;

  return v1;
}

void sub_236E052A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_236E154FC();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_236E0571C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_236E05520;
  v9[3] = &block_descriptor_3;
  v8 = _Block_copy(v9);

  [v5 activateSingleAppModeSessionWithConfiguration:v6 completion:v8];
  _Block_release(v8);
}

void sub_236E0539C(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v10 = &type metadata for AECSingleAppModeDeactivation;
    v11 = &off_2849D3568;
    v7 = swift_allocObject();
    *&v9 = v7;
    v7[2] = 0xD000000000000026;
    v7[3] = 0x8000000236E19E40;
    v7[4] = 4;
    v7[5] = a1;
    type metadata accessor for AECPolicyDeactivationRunner();
    v8 = swift_allocObject();
    sub_236E05060(&v9, v8 + 16);
    swift_unknownObjectRetain_n();
    a3(v8, 0);
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_236E16500();
    __break(1u);
  }
}

uint64_t sub_236E05520(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void (*sub_236E055A0())(uint64_t a1, uint64_t a2)
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);
  v7 = *v0;
  v3 = swift_allocObject();
  *(v3 + 16) = *v0;
  *(v3 + 32) = *(v0 + 2);
  *(v3 + 40) = v2;
  *(v3 + 48) = v1;
  sub_236E05688(&v7, &v6);
  v4 = v2;
  swift_unknownObjectRetain();
  return sub_236E05680;
}

uint64_t sub_236E05638()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236E056E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236E05748(uint64_t a1, int a2)
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

uint64_t sub_236E05790(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_5Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_236E0583C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_236E15D70();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_236E059A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_236E15D70();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_236E05A18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_236E05A74(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 8);

  v4(v1, v3);

  v5 = sub_236E160B0();

  return v5;
}

uint64_t sub_236E05B1C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);

  v5 = v4(v1, v3);

  return v5;
}

uint64_t sub_236E05D00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_236E05D40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_236E15D70();
  (*(v2 + 16))(v2, v3);
}

void sub_236E05DA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = v4[5];
  v11 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v10);
  v12 = *(v11 + 16);

  v13 = v12(v10, v11);
  v15 = v13;
  v17 = v16;
  if (v14)
  {
    if (v14 == 1)
    {
      v13(sub_236E05FC8, v9);

      v18 = v15;
      v19 = v17;
      v20 = 1;
    }

    else
    {
      (v13)(a1, a2, sub_236E05FC8, v9);

      v18 = v15;
      v19 = v17;
      v20 = 2;
    }

    sub_236E06004(v18, v19, v20);
  }

  else
  {
    v21 = (v13)();
    v22 = v21;
    if (v23)
    {
      a3(0, v21);

      sub_236E06004(v15, v17, 0);
      v24 = v22;
      v25 = 1;
    }

    else
    {
      a3(v21, 0);

      sub_236E06004(v15, v17, 0);
      v24 = v22;
      v25 = 0;
    }

    sub_236E0601C(v24, v25);
  }
}

uint64_t sub_236E05F90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E05FC8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_236E06004(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_236E0601C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_236E06044()
{
  sub_236E06128();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_236E060B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_236E062D8(v2, v3);
  }

  return result;
}

void sub_236E06128()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
    if (*(v0 + 24))
    {

      sub_236E15E90();
    }

    *(v0 + 24) = 0;

    swift_beginAccess();
    v1 = *(v0 + 32);
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_9:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        while (1)
        {
          v8 = __clz(__rbit64(v4));
          v4 &= v4 - 1;
          v9 = *(*(v1 + 48) + ((v7 << 9) | (8 * v8)));
          v10 = *(v0 + 16);

          v11 = [v10 windowForWindowNumber_];
          if (v11)
          {
            sub_236E07690(v11, "Disabling content capture restriction for window with window number: %{public}ld", 0, "Error disabling content capture restriction for window. CGError code: %{public}d");
            sub_236E15E90();

            swift_unknownObjectRelease();
            v6 = v7;
            if (!v4)
            {
              goto LABEL_9;
            }
          }

          else
          {

            v6 = v7;
            if (!v4)
            {
              goto LABEL_9;
            }
          }

LABEL_13:
          v7 = v6;
        }
      }
    }

    __break(1u);
  }
}

id sub_236E062D8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_236E15FE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_236E16000();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236E16020();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v20 = &v50 - v19;
  if (a2)
  {
    result = swift_beginAccess();
    if (*(*(v3 + 32) + 16))
    {
      result = sub_236E06E90(a1);
      if (v22)
      {
        if (qword_27DE84ED8 != -1)
        {
          swift_once();
        }

        v23 = sub_236E15DC0();
        __swift_project_value_buffer(v23, qword_27DE871C8);
        v24 = sub_236E15DA0();
        v25 = sub_236E162D0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134349056;
          *(v26 + 4) = a1;
          _os_log_impl(&dword_236DF9000, v24, v25, "Removing window with window number: %{public}ld from restricted content capture policy", v26, 0xCu);
          MEMORY[0x2383BF300](v26, -1, -1);
        }

        v27 = [*(v3 + 16) windowForWindowNumber_];
        if (v27)
        {
          sub_236E07690(v27, "Disabling content capture restriction for window with window number: %{public}ld", 0, "Error disabling content capture restriction for window. CGError code: %{public}d");
          swift_unknownObjectRelease();
        }

        if (*(*(v3 + 32) + 16))
        {
          sub_236E06E90(a1);
          if (v28)
          {
            swift_retain_n();
            sub_236E15E90();
          }
        }

        swift_beginAccess();
        sub_236E06ED4(a1);
        swift_endAccess();
      }
    }
  }

  else
  {
    v58 = v18;
    v59 = v17;
    swift_beginAccess();
    if (!*(*(v3 + 32) + 16) || (result = sub_236E06E90(a1), (v29 & 1) == 0))
    {
      result = [*(v3 + 16) windowForWindowNumber_];
      if (result)
      {
        v56 = v6;
        v57 = result;
        v54 = v10;
        v30 = a1;
        if (qword_27DE84ED8 != -1)
        {
          swift_once();
        }

        v53 = v9;
        v55 = v7;
        v31 = sub_236E15DC0();
        __swift_project_value_buffer(v31, qword_27DE871C8);
        v32 = sub_236E15DA0();
        v33 = sub_236E162D0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134349056;
          *(v34 + 4) = v30;
          _os_log_impl(&dword_236DF9000, v32, v33, "Adding window with window number: %{public}ld to restricted content capture policy", v34, 0xCu);
          MEMORY[0x2383BF300](v34, -1, -1);
        }

        v35 = v57;
        ObjectType = swift_getObjectType();
        aBlock[0] = sub_236E01B94(ObjectType);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        *(v38 + 24) = v30;
        v50 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85688, &qword_236E17E98);
        sub_236DFECCC(&qword_27DE85690, &qword_27DE85688, &qword_236E17E98, MEMORY[0x277CBCD90]);
        v39 = sub_236E15FA0();

        sub_236E07690(v35, "Enabling content capture restriction for window with window number: %{public}ld", 1, "Error enabling content capture restriction for window. CGError code: %{public}d");
        swift_beginAccess();
        v52 = v39;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v3 + 32);
        *(v3 + 32) = 0x8000000000000000;
        v41 = v50;
        sub_236E07504(v39, v50, isUniquelyReferenced_nonNull_native);
        *(v3 + 32) = v62;
        swift_endAccess();
        sub_236DFEB50();
        v51 = sub_236E16330();
        sub_236E16010();
        sub_236E16040();
        v58 = *(v58 + 8);
        v42 = v16;
        v43 = v59;
        (v58)(v42, v59);
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        *(v45 + 24) = v41;
        aBlock[4] = sub_236E0786C;
        aBlock[5] = v45;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_236E028F4;
        aBlock[3] = &block_descriptor_4;
        v46 = _Block_copy(aBlock);

        sub_236E15FF0();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_236E03600();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85A40, &qword_236E18A10);
        sub_236DFECCC(&qword_27DE85EF0, &unk_27DE85A40, &qword_236E18A10, MEMORY[0x277D83970]);
        v47 = v53;
        v48 = v56;
        sub_236E16390();
        v49 = v51;
        MEMORY[0x2383BE900](v20, v12, v47, v46);
        _Block_release(v46);

        swift_unknownObjectRelease();

        (*(v55 + 8))(v47, v48);
        (*(v60 + 8))(v12, v54);
        return (v58)(v20, v43);
      }
    }
  }

  return result;
}

uint64_t sub_236E06AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = [*(result + 16) windowForWindowNumber_];
    if (v5)
    {
      sub_236E07690(v5, "Enabling content capture restriction for window with window number: %{public}ld", 1, "Error enabling content capture restriction for window. CGError code: %{public}d");
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_236E06B90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = [*(result + 16) windowForWindowNumber_];
    if (v4)
    {
      sub_236E07690(v4, "Enabling content capture restriction for window with window number: %{public}ld", 1, "Error enabling content capture restriction for window. CGError code: %{public}d");
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_236E06C2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for AECConcreteRestrictedWindowContentAssertion();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F98];
  *(v5 + 24) = 0;
  *(v5 + 32) = v6;
  *(v5 + 16) = v3;
  *(v5 + 40) = 1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_236DFD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85C70, &qword_236E189F8);
  sub_236DFECCC(&qword_27DE85C78, &qword_27DE85C70, &qword_236E189F8, &unk_236E18B00);
  sub_236E15F50();

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85C80, &unk_236E18A00);
  sub_236DFECCC(&qword_27DE85C88, &qword_27DE85C80, &unk_236E18A00, MEMORY[0x277CBCD90]);
  v7 = sub_236E15FA0();

  *(v5 + 24) = v7;

  a1[3] = v4;
  a1[4] = &off_2849D3680;
  *a1 = v5;
  return result;
}

uint64_t sub_236E06DF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_236E06E50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_236E06E90(uint64_t a1)
{
  v2 = sub_236E165F0();

  return sub_236E0733C(a1, v2);
}

uint64_t sub_236E06ED4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_236E06E90(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_236E073A8();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_236E071CC(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_236E06F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE85C90, &qword_236E18A18);
  result = sub_236E16530();
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

      result = sub_236E165F0();
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

uint64_t sub_236E071CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_236E163A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_236E165F0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_236E0733C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_236E073A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE85C90, &qword_236E18A18);
  v2 = *v0;
  v3 = sub_236E16520();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_236E07504(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_236E06E90(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_236E06F5C(v14, a3 & 1);
      result = sub_236E06E90(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_236E16570();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_236E073A8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_236E07650()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_236E07690(void *a1, const char *a2, char a3, const char *a4, ...)
{
  if (qword_27DE84ED8 != -1)
  {
    swift_once();
  }

  v8 = sub_236E15DC0();
  __swift_project_value_buffer(v8, qword_27DE871C8);
  swift_unknownObjectRetain();
  v9 = sub_236E15DA0();
  v10 = sub_236E162D0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = [a1 windowNumber];
    swift_unknownObjectRelease();
    _os_log_impl(&dword_236DF9000, v9, v10, a2, v11, 0xCu);
    MEMORY[0x2383BF300](v11, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v12 = [a1 setRestrictsContentCapture_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_236E15DA0();
    v15 = sub_236E162C0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67240192;
      *(v16 + 4) = v13;
      _os_log_impl(&dword_236DF9000, v14, v15, a4, v16, 8u);
      MEMORY[0x2383BF300](v16, -1, -1);
    }
  }

  return [a1 refresh];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236E07890()
{
  v0 = sub_236E15DC0();
  __swift_allocate_value_buffer(v0, qword_27DE871C8);
  __swift_project_value_buffer(v0, qword_27DE871C8);
  sub_236E160C0();
  return sub_236E15DB0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_236E07964(uint64_t a1)
{
  result = sub_236E16370();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_236E07A70(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_236E16290();
  if (!v19)
  {
    return sub_236E16180();
  }

  v41 = v19;
  v45 = sub_236E16480();
  v32 = sub_236E16490();
  sub_236E16440();
  result = sub_236E16280();
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
      v22 = sub_236E162B0();
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
      sub_236E16470();
      result = sub_236E162A0();
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

uint64_t sub_236E07EDC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25 = a1;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = sub_236E16370();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = v3[20];
  v10 = *(v5 - 8);
  v23 = *(v10 + 56);
  v24 = v9;
  v23(v2 + v9, 1, 1, v5);
  v11 = v2 + *(*v2 + 176);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  v12 = *(*v2 + 192);
  v13 = v3[10];
  v14 = v3[14];
  *(v2 + v12) = sub_236E16060();
  v15 = *(*v2 + 200);
  v16 = v3[18];
  *&v17 = v13;
  *(&v17 + 1) = v4[11];
  *&v18 = v14;
  *(&v18 + 1) = v4[15];
  v29[1] = v18;
  v29[0] = v17;
  v30 = v16;
  type metadata accessor for AECCollectionDeltaPublisher.CollectionDelta(0, v29);
  *(v2 + v15) = sub_236E16180();
  v19 = *(*v2 + 208);
  *(v2 + v19) = sub_236E15E40();
  *(v2 + *(*v2 + 216)) = 0;
  (*(v10 + 32))(v8, v25, v5);
  v23(v8, 0, 1, v5);
  v20 = v24;
  swift_beginAccess();
  (*(v26 + 40))(v2 + v20, v8, v27);
  swift_endAccess();
  (*(*(v3[13] - 8) + 32))(v2 + *(*v2 + 168), v28);
  return v2;
}

uint64_t sub_236E0823C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_236E15E50();
  if ((sub_236E15E30() & 1) == 0)
  {
    sub_236E15E50();
    v6 = sub_236E15E30();
    v7 = sub_236E15E50();
    if ((v6 & 1) == 0)
    {
      result = sub_236E15E30();
      if (result)
      {
        goto LABEL_7;
      }

      if ((v5 | a1) < 0)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v7 = v5 + a1;
      if (__OFADD__(v5, a1))
      {
LABEL_7:
        v7 = sub_236E15E50();
      }

      else if (v7 < 0)
      {
LABEL_18:
        __break(1u);
        return result;
      }
    }

    *(v1 + v4) = v7;
  }

  swift_endAccess();
  sub_236E15E50();
  result = sub_236E15E30();
  if ((result & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        return result;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_13:
  v9 = *(*v1 + 176);
  swift_beginAccess();
  sub_236E0A398(v1 + v9, &v14);
  v10 = v16;
  result = sub_236E0A408(&v14);
  if (!v10)
  {
    v20 = v1;
    v11 = *(v3 + 152);
    v12 = *(v3 + 80);
    v15 = *(v3 + 96);
    v13 = *(v3 + 104);
    v14 = v12;
    v16 = v13;
    v17 = *(v3 + 120);
    v18 = *(v3 + 136);
    v19 = v11;
    type metadata accessor for AECCollectionDeltaPublisher.AECCollectionDeltaSubscription(0, &v14);
    swift_getWitnessTable();
    return sub_236E15F40();
  }

  return result;
}

uint64_t sub_236E08440()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 96);
  v4 = sub_236E16370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  *(v1 + *(v2 + 184)) = 1;
  v8 = *(*v1 + 176);
  swift_beginAccess();
  sub_236E0A398(v1 + v8, &v12);
  if (*(&v13 + 1))
  {
    sub_236E04D20(&v12, v11);
    sub_236E0A408(&v12);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_236E15E20();
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_236E0A408(&v12);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_beginAccess();
  sub_236E0A328(&v12, v1 + v8);
  swift_endAccess();
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v9 = *(*v1 + 160);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_236E08668(void *a1)
{
  sub_236E04D20(a1, v5);
  v3 = *(*v1 + 176);
  swift_beginAccess();
  sub_236E0A328(v5, v1 + v3);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236E15E50();
  return sub_236E15E70();
}

uint64_t sub_236E08700(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v4 + 16))(&v7 - v3, a1, AssociatedTypeWitness);
  v5 = sub_236E16270();
  sub_236E08AB4(v5);

  return sub_236E15E40();
}

uint64_t sub_236E08860(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - v5;
  v7 = sub_236E16370();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v2 + 160);
  swift_beginAccess();
  (*(v8 + 16))(v10, v1 + v11, v7);
  if ((*(v4 + 48))(v10, 1, v3))
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v4 + 16))(v6, v10, v3);
  (*(v8 + 8))(v10, v7);
  sub_236E15DF0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_236E08AB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v29 = *(*v1 + 192);

  v5 = *(v4 + 80);
  v6 = *(v4 + 112);
  v28 = a1;
  v7 = sub_236E16240();

  v27 = sub_236E16240();
  v34 = *(v4 + 88);
  v26 = *(v4 + 120);
  *&v8 = v5;
  *(&v8 + 1) = v34;
  v31 = v8;
  *&v9 = v6;
  *(&v9 + 1) = v26;
  v21 = v9;
  v10 = *(v4 + 144);
  v53[0] = v8;
  v53[1] = v9;
  v54 = v10;
  v11 = v10;
  v30 = v10;
  v24 = type metadata accessor for AECCollectionDeltaPublisher.CollectionDelta(255, v53);
  sub_236E161E0();
  sub_236E16550();
  swift_allocObject();
  v25 = sub_236E16140();
  v22 = v12;
  *&v53[0] = v7;
  v49 = v11;
  v50 = *(v4 + 152);
  v23 = v50;
  v13 = sub_236E16260();
  v33 = *(v4 + 96);
  v45 = v31;
  v46 = v33;
  v32 = *(v4 + 128);
  v47 = v21;
  v48 = v32;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_236E07A70(sub_236E0A1D0, v44, v13, v24, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);

  *v22 = v16;
  *&v53[0] = v27;
  v36 = v5;
  v37 = v34;
  v38 = v33;
  v39 = v6;
  v40 = v26;
  v41 = v32;
  v42 = v30;
  v43 = v23;
  v18 = sub_236E07A70(sub_236E0A1EC, v35, v13, v24, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  v22[1] = v18;
  sub_236E161E0();
  v52 = v25;
  v51 = sub_236E16180();
  swift_getWitnessTable();
  sub_236E16100();

  v19 = *&v53[0];
  *(v2 + v29) = v28;

  v52 = v19;
  swift_beginAccess();
  swift_getWitnessTable();
  sub_236E161C0();
  swift_endAccess();
  return sub_236E08F0C();
}

uint64_t sub_236E08F0C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 144);
  v4 = *(v2 + 80);
  v53 = v2;
  v5 = *(v2 + 112);
  v58[0] = v4;
  v58[1] = v5;
  v59 = v3;
  v6 = type metadata accessor for AECCollectionDeltaPublisher.CollectionDelta(0, v58);
  v54 = *(v6 - 8);
  v49 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v48 - v7;
  v8 = *(v2 + 96);
  v9 = sub_236E16370();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  v17 = *(v2 + 160);
  swift_beginAccess();
  (*(v10 + 16))(v13, &v1[v17], v9);
  v18 = *(v14 + 48);
  v56 = v8;
  if (v18(v13, 1, v8) == 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 32))(v16, v13, v56);
  v20 = v14;
  if (v1[*(*v1 + 184)])
  {
    return (*(v20 + 8))(v16, v56);
  }

  v21 = *(*v1 + 208);
  swift_beginAccess();
  v55 = v21;
  v22 = *&v1[v21];
  sub_236E15E50();
  result = sub_236E15E30();
  if ((result & 1) == 0)
  {
    if (v22 < 0)
    {
      goto LABEL_42;
    }

    if (!v22)
    {
      return (*(v20 + 8))(v16, v56);
    }
  }

  v23 = *(*v1 + 200);
  swift_beginAccess();

  v24 = sub_236E161B0();
  v52 = v16;
  v25 = v24;

  v26 = v25 < 1;
  v16 = v52;
  if (v26)
  {
    return (*(v20 + 8))(v16, v56);
  }

  v48 = v20;
  v27 = *&v1[v23];
  v28 = v55;
  v29 = *&v1[v55];

  v30 = sub_236DFE138(v29, v27, v6);
  v32 = v31;

  *&v1[v23] = v32;

  v33 = sub_236E161B0();
  swift_beginAccess();
  v34 = *&v1[v28];
  sub_236E15E50();
  v35 = sub_236E15E30();
  v36 = v51;
  if ((v35 & 1) == 0)
  {
    sub_236E15E50();
    result = sub_236E15E30();
    if (result)
    {
      result = sub_236E15E50();
    }

    else
    {
      if (v34 < 0)
      {
        goto LABEL_43;
      }

      result = v34 - v33;
      if (__OFSUB__(v34, v33))
      {
        result = 0;
      }

      else if (result < 0)
      {
        goto LABEL_44;
      }
    }

    *&v1[v55] = result;
  }

  swift_endAccess();
  if (!sub_236E161B0())
  {
LABEL_38:

    sub_236E08F0C();
    return (*(v48 + 8))(v52, v56);
  }

  v37 = 0;
  v38 = (v54 + 16);
  v39 = (v54 + 8);
  v50 = (v54 + 8);
  while (1)
  {
    v40 = sub_236E16190();
    sub_236E16150();
    if (v40)
    {
      (*(v54 + 16))(v36, v30 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v37, v6);
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = sub_236E163F0();
      if (v49 != 8)
      {
        goto LABEL_45;
      }

      v57[0] = result;
      (*v38)(v36, v57, v6);
      swift_unknownObjectRelease();
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v42 = sub_236E15E10();
    (*v39)(v36, v6);
    v43 = v55;
    swift_beginAccess();
    v44 = *&v1[v43];
    sub_236E15E50();
    if ((sub_236E15E30() & 1) == 0)
    {
      break;
    }

LABEL_22:
    swift_endAccess();
    ++v37;
    if (v41 == sub_236E161B0())
    {
      goto LABEL_38;
    }
  }

  v45 = v6;
  sub_236E15E50();
  v46 = sub_236E15E30();
  v47 = sub_236E15E50();
  if (v46)
  {
    v6 = v45;
    v39 = v50;
    v36 = v51;
LABEL_21:
    *&v1[v55] = v47;
    goto LABEL_22;
  }

  result = sub_236E15E30();
  v6 = v45;
  v39 = v50;
  v36 = v51;
  if (result)
  {
LABEL_31:
    v47 = sub_236E15E50();
    goto LABEL_21;
  }

  if (((v44 | v42) & 0x8000000000000000) == 0)
  {
    v47 = v44 + v42;
    if (!__OFADD__(v44, v42))
    {
      if (v47 < 0)
      {
        goto LABEL_41;
      }

      goto LABEL_21;
    }

    goto LABEL_31;
  }

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
  return result;
}

uint64_t *sub_236E095CC()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = sub_236E16370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 104) - 8) + 8))(v0 + *(*v0 + 168));
  sub_236E0A408(v0 + *(*v0 + 176));

  return v0;
}

uint64_t sub_236E0971C()
{
  v0 = sub_236E095CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_236E09788(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_236E097F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_236E09938(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_236E09B60(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_236E09BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_236E09CD0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_236E09F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16[4];
  v18 = v16[5];
  v19 = v16[6];
  v25[0] = v16[2];
  v25[1] = v7;
  v25[2] = v20;
  v26 = v7;
  WitnessTable = v17;
  v28 = v18;
  v29 = v21;
  v30 = v18;
  v31 = v19;
  v32 = v19;
  v22 = type metadata accessor for AECCollectionDeltaPublisher.AECCollectionDeltaSubscription(0, v25);
  (*(v13 + 16))(v15, a1, a3);
  (*(v8 + 16))(v11, v4, v7);
  swift_allocObject();
  v23 = sub_236E07EDC(v15, v11);
  v26 = v22;
  WitnessTable = swift_getWitnessTable();
  v25[0] = v23;
  sub_236E15E00();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_236E0A208@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 80);
  v7 = *(v3 + 16);
  v6 = *(v3 + 48);
  (*(*(v7 - 8) + 16))(a3, a1);
  v8[0] = v7;
  v8[1] = v6;
  v9 = v4;
  type metadata accessor for AECCollectionDeltaPublisher.CollectionDelta(0, v8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_236E0A2B4@<X0>(uint64_t *a3@<X8>)
{
  v5 = *(v3 + 80);
  v6 = *(v3 + 48);
  v8[0] = *(v3 + 16);
  v8[1] = v6;
  v9 = v5;
  type metadata accessor for AECCollectionDeltaPublisher.CollectionDelta(0, v8);
  result = sub_236E16170();
  *a3 = result;
  return result;
}

uint64_t sub_236E0A328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E18, &unk_236E18C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E0A398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E18, &unk_236E18C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E0A408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E18, &unk_236E18C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236E0A478()
{
  v1 = v0;
  swift_beginAccess();
  sub_236E0A7C8(v0 + 56, v8);
  v2 = v8[3];
  result = sub_236E0A838(v8);
  if (!v2)
  {
    if (qword_27DE84ED8 != -1)
    {
      swift_once();
    }

    v4 = sub_236E15DC0();
    __swift_project_value_buffer(v4, qword_27DE871C8);
    v5 = sub_236E15DA0();
    v6 = sub_236E162D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_236DF9000, v5, v6, "Starting window content restriction", v7, 2u);
      MEMORY[0x2383BF300](v7, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_236E06C2C(v8);
    swift_beginAccess();
    sub_236E0A8A0(v8, v1 + 56);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_236E0A5CC()
{
  v1 = v0;
  swift_beginAccess();
  sub_236E0A7C8(v0 + 56, &v9);
  v2 = *(&v10 + 1);
  result = sub_236E0A838(&v9);
  if (v2)
  {
    if (qword_27DE84ED8 != -1)
    {
      swift_once();
    }

    v4 = sub_236E15DC0();
    __swift_project_value_buffer(v4, qword_27DE871C8);
    v5 = sub_236E15DA0();
    v6 = sub_236E162D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_236DF9000, v5, v6, "Stopping window content restriction", v7, 2u);
      MEMORY[0x2383BF300](v7, -1, -1);
    }

    sub_236E0A7C8(v1 + 56, &v9);
    if (*(&v10 + 1))
    {
      sub_236E04D20(&v9, v8);
      sub_236E0A838(&v9);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_236E06128();
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      sub_236E0A838(&v9);
    }

    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    swift_beginAccess();
    sub_236E0A8A0(&v9, v1 + 56);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_236E0A764()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_236E0A838(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_236E0A7C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E20, &qword_236E18C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E0A838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E20, &qword_236E18C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236E0A8A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E20, &qword_236E18C78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E0A910(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_236E0A950(uint64_t *a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  a2(v3, sub_236E0B1B8, v6);
}

void sub_236E0A9E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_236E0AA54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_236E0AAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[9];
  v7 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v9;
  v18 = sub_236E15EA0();
  v19 = MEMORY[0x277CBCDA0];
  aBlock[0] = v8;
  swift_beginAccess();

  sub_236E0B0A4(aBlock, (v2 + 11));
  swift_endAccess();
  aBlock[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_236E0B114;
  *(v11 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85E30, &unk_236E18100);
  sub_236E0B154();
  v12 = sub_236E15FA0();

  v3[16] = v12;

  v13 = v3[3];
  v14 = *(v3[2] + 24);
  v19 = a1;
  v20 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236E0A9E8;
  v18 = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  [v14 publishAssessmentState:v13 withCompletion:v15];
  _Block_release(v15);
}

uint64_t sub_236E0ACE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v7 + 24);
  v12[4] = sub_236E0B1F8;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_236E0A9E8;
  v12[3] = &block_descriptor_19;
  v10 = _Block_copy(v12);

  [v9 publishAssessmentState:a1 withCompletion:v10];
  _Block_release(v10);
}

void sub_236E0ADF0(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_236E0AE68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_236E0BD2C(v2 + 88, aBlock, &qword_27DE85E28, ",+");
  if (!v9)
  {
    sub_236E0BE90(aBlock, &qword_27DE85E28, ",+");
    if (!*(v2 + 128))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_236E04D20(aBlock, v7);
  sub_236E0BE90(aBlock, &qword_27DE85E28, ",+");
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_236E15E20();
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (*(v2 + 128))
  {
LABEL_3:

    sub_236E15E90();
  }

LABEL_4:
  v5 = *(*(v2 + 16) + 24);
  v10 = a1;
  v11 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236E0A9E8;
  v9 = &block_descriptor_5;
  v6 = _Block_copy(aBlock);

  [v5 endPublications_];
  _Block_release(v6);
}

uint64_t sub_236E0AFF8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  sub_236E0BE90(v0 + 88, &qword_27DE85E28, ",+");

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236E0B0A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E28, ",+");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E0B11C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_236E0B154()
{
  result = qword_27DE856E8;
  if (!qword_27DE856E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DE85E30, &unk_236E18100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE856E8);
  }

  return result;
}

uint64_t sub_236E0B1B8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t get_enum_tag_for_layout_string_9AACClient25AECWindowContentCapturing_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_236E0B24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_236E0B294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_236E0B310())(uint64_t a1, uint64_t a2)
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  return sub_236E0BF40;
}

void sub_236E0B394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *__swift_project_boxed_opaque_existential_1(a5 + 3, a5[6]);
  v37 = [objc_opt_self() daemonProxyWithQueue_];
  v12 = a5[8];
  v11 = a5[9];
  v13 = a5[21];
  sub_236E0BBD8(a5, v40);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = v40[9];
  *(v14 + 160) = v40[8];
  *(v14 + 176) = v15;
  *(v14 + 192) = v40[10];
  v16 = v40[5];
  *(v14 + 96) = v40[4];
  *(v14 + 112) = v16;
  v17 = v40[7];
  *(v14 + 128) = v40[6];
  *(v14 + 144) = v17;
  v18 = v40[1];
  *(v14 + 32) = v40[0];
  *(v14 + 48) = v18;
  v19 = v40[3];
  *(v14 + 64) = v40[2];
  *(v14 + 80) = v19;
  *(v14 + 208) = a1;
  *(v14 + 216) = a2;
  sub_236E0BD2C((a5 + 10), aBlock, qword_27DE85A50, &qword_236E184E0);
  v20 = type metadata accessor for AECLifetimeConnection();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_connection] = 0;
  v22 = &v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_uiPrimitives] = v12;
  *&v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_singleAppModeToggler] = v11;
  sub_236E0BD2C(aBlock, &v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_contentCaptureController], qword_27DE85A50, &qword_236E184E0);
  *&v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_queue] = v13;
  v23 = objc_opt_self();

  v24 = v13;

  swift_unknownObjectRetain();
  v25 = [v23 anonymousListener];
  *&v21[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_listener] = v25;
  v39.receiver = v21;
  v39.super_class = v20;
  v26 = objc_msgSendSuper2(&v39, sel_init);
  v27 = OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_listener;
  [*&v26[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_listener] setDelegate_];
  [*&v26[v27] resume];
  sub_236E0BE90(aBlock, qword_27DE85A50, &qword_236E184E0);
  v28 = &v26[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler];
  v29 = *&v26[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler];
  v30 = *&v26[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler + 8];
  *v28 = a1;
  *(v28 + 1) = a2;

  sub_236E036D4(v29, v30);
  v31 = [*&v26[v27] endpoint];
  v32 = swift_allocObject();
  v32[2] = sub_236E0BD18;
  v32[3] = v14;
  v32[4] = v26;
  v32[5] = v24;
  aBlock[4] = sub_236E0BDDC;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236E0AA54;
  aBlock[3] = &block_descriptor_31;
  v33 = _Block_copy(aBlock);
  v34 = v24;

  v35 = v26;

  [v37 registerPublisherWithLifetimeEndpoint:v31 completion:v33];
  _Block_release(v33);
}

uint64_t sub_236E0B720(void *a1, char a2, uint64_t (*a3)(void *, uint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    return a3(a1, 1, a3, a4, a5, a6, a7);
  }

  v12 = *(a5 + 120);
  sub_236E04D20(a5 + 128, v17);
  type metadata accessor for AECAssessmentModeAssertion();
  v14 = swift_allocObject();
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 16) = a1;
  *(v14 + 24) = v12;
  sub_236E05060(v17, v14 + 48);
  *(v14 + 32) = a6;
  *(v14 + 40) = a7;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  sub_236E0BE34(a1, 0);
  v16 = v12;

  sub_236E0AAE0(sub_236E0BE28, v15);
}

void sub_236E0B848(void *a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  if (a1)
  {
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = a1;
    v9 = a1;
    v10 = a1;

    sub_236E0AE68(sub_236E0BE84, v8);
  }

  else
  {
    v14 = &type metadata for AECAssessmentModeDeactivation;
    v15 = &off_2849D3C40;
    v11 = swift_allocObject();
    *&v13 = v11;
    v11[2] = 0xD00000000000002BLL;
    v11[3] = 0x8000000236E1A260;
    v11[4] = 3;
    v11[5] = a2;
    type metadata accessor for AECPolicyDeactivationRunner();
    v12 = swift_allocObject();
    sub_236E05060(&v13, v12 + 16);
    swift_retain_n();
    a3(v12, 0);
  }
}

uint64_t sub_236E0B9BC(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27DE84ED8 != -1)
    {
      swift_once();
    }

    v8 = sub_236E15DC0();
    __swift_project_value_buffer(v8, qword_27DE871C8);
    v9 = a1;
    v10 = sub_236E15DA0();
    v11 = sub_236E162C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_236DF9000, v10, v11, "Failed to cancel Assessment Mode assertion: %{public}@", v12, 0xCu);
      sub_236E0BE90(v13, &qword_27DE85708, &qword_236E181E8);
      MEMORY[0x2383BF300](v13, -1, -1);
      MEMORY[0x2383BF300](v12, -1, -1);
    }

    else
    {
    }
  }

  return a2(a4, 1);
}

void (*sub_236E0BB50())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_236E0BBD8(v0, v8);
  v1 = swift_allocObject();
  v2 = v8[9];
  v1[9] = v8[8];
  v1[10] = v2;
  v1[11] = v8[10];
  v3 = v8[5];
  v1[5] = v8[4];
  v1[6] = v3;
  v4 = v8[7];
  v1[7] = v8[6];
  v1[8] = v4;
  v5 = v8[1];
  v1[1] = v8[0];
  v1[2] = v5;
  v6 = v8[3];
  v1[3] = v8[2];
  v1[4] = v6;
  return sub_236E0BC88;
}

uint64_t sub_236E0BC10()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_236E0BC90()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_236E0BD2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_236E0BD94()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E0BDE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_236E0BE34(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_236E0BE44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_236E0BE90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E0BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_236E15FE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_236E16000();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_236E10C3C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236E028F4;
  aBlock[3] = &block_descriptor_81;
  v18 = _Block_copy(aBlock);

  sub_236E036C4(a3, a4);
  sub_236E15FF0();
  v22 = MEMORY[0x277D84F90];
  sub_236E03600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85A40, &qword_236E18A10);
  sub_236DFECCC(&qword_27DE85EF0, &unk_27DE85A40, &qword_236E18A10, MEMORY[0x277D83970]);
  sub_236E16390();
  MEMORY[0x2383BE940](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_236E0C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_236E15FE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_236E16000();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 32);
  dispatch_group_enter(v21);
  v20 = *(a1 + 16);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_236E10C9C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236E028F4;
  aBlock[3] = &block_descriptor_87;
  v18 = _Block_copy(aBlock);

  sub_236E036C4(a4, a5);
  sub_236E15FF0();
  v23 = MEMORY[0x277D84F90];
  sub_236E03600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85A40, &qword_236E18A10);
  sub_236DFECCC(&qword_27DE85EF0, &unk_27DE85A40, &qword_236E18A10, MEMORY[0x277D83970]);
  sub_236E16390();
  MEMORY[0x2383BE940](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22);

  return sub_236E162E0();
}

uint64_t sub_236E0C53C()
{
  sub_236E16600();
  MEMORY[0x2383BEC10](0);
  return sub_236E16620();
}

uint64_t sub_236E0C5A8(uint64_t a1)
{
  sub_236E16600();
  MEMORY[0x2383BEC10](0);
  return sub_236E16620();
}

uint64_t sub_236E0C5E8()
{
  if (qword_27DE84EC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27DE871A8;

  return v0;
}

uint64_t static AECAssessmentSession.supportsMultiAppConfiguration.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE4720]) init];
  v1 = [v0 makePrimitives];

  [v1 deviceType];
  swift_unknownObjectRelease();
  return AEIsMultiAppAvailableForDeviceType();
}

id sub_236E0C798()
{
  v1 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_236E0C84C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_236E0C9AC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_236E0CA0C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_236E0CAA4;
}

void sub_236E0CAA4(void **a1, char a2)
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

void sub_236E0CB54()
{
  v1 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_stateAntiphony;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E60, &qword_236E18E30);
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F98];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession) = 0;
  *(v0 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_updateSubscription) = 0;
  swift_unknownObjectWeakInit();
  sub_236E16500();
  __break(1u);
}

id AECAssessmentSession.init(configuration:queue:)(void *a1, void *a2)
{
  v29[3] = &type metadata for AECConcreteAssessmentPolicySessionPrimitives;
  v29[4] = &off_2849D43A0;
  v4 = swift_allocObject();
  v29[0] = v4;
  v5 = a2;
  sub_236E158D0(v5, (v4 + 16));
  sub_236E04B58(v5, v29, v28);
  type metadata accessor for AECAssessmentConfigurationValidatorFactory();
  swift_initStackObject();
  sub_236E04D84(v27);
  sub_236E0E8FC(v28, v26);
  sub_236E04D20(v27, v25);
  v24[3] = &type metadata for AECConcreteAssessmentPolicySessionPrimitives;
  v24[4] = &off_2849D43A0;
  v24[0] = swift_allocObject();
  sub_236E0E958(v4 + 16, v24[0] + 16);
  v6 = type metadata accessor for AECAssessmentSession();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for AECConcreteAssessmentPolicySessionPrimitives);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v23[3] = &type metadata for AECConcreteAssessmentPolicySessionPrimitives;
  v23[4] = &off_2849D43A0;
  v12 = swift_allocObject();
  v23[0] = v12;
  v13 = *(v10 + 3);
  *(v12 + 48) = *(v10 + 2);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v10 + 4);
  *(v12 + 96) = *(v10 + 10);
  v14 = *(v10 + 1);
  *(v12 + 16) = *v10;
  *(v12 + 32) = v14;
  v15 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_stateAntiphony;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E60, &qword_236E18E30);
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F98];
  *&v7[v15] = v16;
  *&v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession] = 0;
  *&v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_updateSubscription] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration] = a1;
  sub_236E0E8FC(v26, &v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policyBundleFactory]);
  sub_236E04D20(v25, &v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator]);
  type metadata accessor for AECTaskQueue();
  swift_allocObject();
  v17 = v5;
  v18 = a1;
  *&v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_taskQueue] = sub_236E045A8(v17);
  sub_236E04D20(v23, &v7[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySessionPrimitives]);
  v22.receiver = v7;
  v22.super_class = v6;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_236E0EA28(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_236E0EA28(v28);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

char *sub_236E0D038(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;

    sub_236E0FAA0(v6, a1, a2);
  }

  return result;
}

void sub_236E0D0B8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v3)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = sub_236E15D70();
        [v7 assessmentSession:v5 failedToBeginWithError:v8];

LABEL_8:
        swift_unknownObjectRelease();
        return;
      }
    }

    else if (v2)
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 assessmentSessionDidBegin_];

        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_236E0D1F8(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  sub_236E0BF88(sub_236E0EAC4, v3, sub_236E0EAD0, v5);
}

void *sub_236E0D310(void (*a1)(id *), uint64_t a2, uint64_t a3, _BYTE *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;

    sub_236E10344(a4, v8, a1, a2);
  }

  return result;
}

void sub_236E0D398(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v5)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = sub_236E15D70();
        [v9 assessmentSesson:v7 failedToUpdateToConfiguration:a3 error:v10];

LABEL_8:
        swift_unknownObjectRelease();
        return;
      }
    }

    else if (v4)
    {
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        [v11 assessmentSessionDidUpdate_];

        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_236E0D610(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_236E0BF88(a1, v4, a2, v5);
}

uint64_t sub_236E0D6CC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = sub_236E16030();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(*(Strong + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_taskQueue) + 16);
    *v8 = v12;
    (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);

    v13 = v12;
    LOBYTE(v12) = sub_236E16050();
    result = (*(v6 + 8))(v8, v5);
    if ((v12 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v15 = *&v11[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession];
    if (v15)
    {
      v16 = swift_allocObject();
      v16[2] = v11;
      v16[3] = sub_236E0F448;
      v16[4] = v9;
      v24 = sub_236E0F48C;
      v25 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_236E0A9E8;
      v23 = &block_descriptor_6;
      v17 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v18 = v11;

      [v15 deactivateWithCompletion_];

      _Block_release(v17);

      return swift_unknownObjectRelease();
    }

    aBlock = 0;
    LOBYTE(v21) = 0;
    a1(&aBlock);
  }

  else
  {
  }
}

void sub_236E0D964(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v3)
    {
      if (qword_27DE84ED8 != -1)
      {
        swift_once();
      }

      v6 = sub_236E15DC0();
      __swift_project_value_buffer(v6, qword_27DE871C8);
      v7 = v2;
      v8 = sub_236E15DA0();
      v9 = sub_236E162C0();
      sub_236E0EE5C(v2, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18[0] = v11;
        *v10 = 136446210;
        swift_getErrorValue();
        v12 = sub_236DFED14(v16, v17);
        v14 = sub_236E0EE68(v12, v13, v18);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_236DF9000, v8, v9, "Encountered error while ending assessment session. Error: %{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x2383BF300](v11, -1, -1);
        MEMORY[0x2383BF300](v10, -1, -1);
      }
    }

    else if ((v2 & 1) == 0)
    {
LABEL_11:

      return;
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 assessmentSessionDidEnd_];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_11;
  }
}

uint64_t sub_236E0DB8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = a1;
  sub_236E0BF88(a3, v7, a4, v8);
}

id AECAssessmentSession.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AECAssessmentSession();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_236E0DD44(void *a1, id a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_236E10DD4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236E0E2DC;
    aBlock[3] = &block_descriptor_104;
    v11 = _Block_copy(aBlock);
    v12 = a1;
    v13 = a1;

    [v13 setInvalidationHandler_];
    _Block_release(v11);
    *(a5 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession) = v12;
    v14 = v13;
    swift_unknownObjectRelease();
    a3(1, 0);
  }

  else
  {
    sub_236E16500();
    __break(1u);
  }
}

char *sub_236E0DF20(void *a1, uint64_t a2)
{
  v4 = sub_236E15FE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_236E16000();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = v9;
    v20 = v8;
    v13 = *&result[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_taskQueue];
    v14 = result;

    v15 = *(v13 + 16);

    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a1;
    aBlock[4] = sub_236E10E1C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236E028F4;
    aBlock[3] = &block_descriptor_110;
    v17 = _Block_copy(aBlock);

    v18 = a1;
    sub_236E15FF0();
    v21 = MEMORY[0x277D84F90];
    sub_236E03600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE85A40, &qword_236E18A10);
    sub_236DFECCC(&qword_27DE85EF0, &unk_27DE85A40, &qword_236E18A10, MEMORY[0x277D83970]);
    sub_236E16390();
    MEMORY[0x2383BE940](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v19 + 8))(v11, v20);
  }

  return result;
}

void sub_236E0E21C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = sub_236E15D70();
      [v5 assessmentSession:v3 wasInterruptedWithError:v6];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_236E0E2DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_236E0E344(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v7)
    {
      v10 = v7;
      v11 = 1;
    }

    else
    {
      v12 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
      swift_beginAccess();
      v13 = *&v9[v12];
      *&v9[v12] = a5;
      v14 = a5;

      v10 = 1;
      v11 = 0;
    }

    a3(v10, v11);
  }

  else
  {
    a3(0, 0);
  }
}

void sub_236E0E410(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  *(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession) = 0;
  swift_unknownObjectRelease();
  v6 = *(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_stateAntiphony);
  swift_beginAccess();
  *(v6 + 16) = MEMORY[0x277D84F98];

  if (a1)
  {
    v7 = a1;
    a3(a1, 1);
  }

  else
  {
    a3(1, 0);
  }
}

uint64_t sub_236E0E4CC(uint64_t a1, uint64_t *a2, void *a3)
{
  v17 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85ED0, qword_236E18F18);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v20 = *a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_236E10B5C;
  *(v11 + 24) = v10;

  v12 = a3;
  v16[1] = sub_236E15E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EC0, &qword_236E18F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EB0, &qword_236E18F08);
  sub_236DFECCC(&qword_27DE85EC8, &qword_27DE85EC0, &qword_236E18F10, MEMORY[0x277CBCD90]);
  sub_236DFECCC(&qword_27DE85EB8, &qword_27DE85EB0, &qword_236E18F08, MEMORY[0x277CBCEB0]);
  sub_236E15F80();

  sub_236DFECCC(&qword_27DE85ED8, &qword_27DE85ED0, qword_236E18F18, MEMORY[0x277CBCCE0]);
  v13 = v18;
  v14 = sub_236E15F50();
  (*(v19 + 8))(v9, v13);
  *v17 = v14;
}

uint64_t sub_236E0E76C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_236E0E894()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
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

uint64_t sub_236E0EA7C()
{
  MEMORY[0x2383BF3A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_236E0EAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_236E0EB54@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t sub_236E0EDE0()
{
  result = qword_27DE85E98;
  if (!qword_27DE85E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85E98);
  }

  return result;
}

void sub_236E0EE5C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_236E0EE68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236E0EF34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_236E005B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_236E0EF34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_236E0F040(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_236E16410();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_236E0F040(uint64_t a1, unint64_t a2)
{
  v3 = sub_236E0F08C(a1, a2);
  sub_236E0F1BC(&unk_2849D27A8);
  return v3;
}

void *sub_236E0F08C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_236E0F2A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_236E16410();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_236E160F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236E0F2A8(v10, 0);
        result = sub_236E163D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_236E0F1BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_236E0F31C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_236E0F2A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EA0, &qword_236E18F00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_236E0F31C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EA0, &qword_236E18F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_236E0F410()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E0F44C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236E0F4B0(void (**a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  sub_236E036C4(a3, a4);
  v7(sub_236E10CF4, v8);
}

id sub_236E0F554(void *a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85E60, &qword_236E18E30);
  v49[4] = sub_236DFECCC(&qword_27DE85EF8, &qword_27DE85E60, &qword_236E18E30, &unk_236E190E8);
  v49[0] = a3;
  v48 = MEMORY[0x277D84F90];
  v10 = __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  if (a4)
  {
    v11 = v10[6];
    v12 = __swift_project_boxed_opaque_existential_1(a5, a5[3])[9];
    type metadata accessor for AECSingleAppModeToggler();
    v13 = swift_allocObject();
    sub_236E15FD0();
    swift_allocObject();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *(v13 + 32) = sub_236E15FC0();
    *(v13 + 40) = 0;
    *(v13 + 48) = 1;
    *(v13 + 56) = 0;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    v14 = __swift_project_boxed_opaque_existential_1(a5, a5[3]);
    sub_236E04D20(v14, &v39 + 8);
    v15 = __swift_project_boxed_opaque_existential_1(a5, a5[3])[10];
    v43 = 0u;
    v44 = 0u;
    *&v45 = 0;
    sub_236E04D20(v49, v46);
    v16 = a5[9];
    *&v38 = 0xD00000000000002ALL;
    *(&v38 + 1) = 0x8000000236E1A550;
    *&v39 = 0;
    *&v42 = v15;
    *(&v42 + 1) = v13;
    *(&v45 + 1) = a2;
    *(&v47 + 1) = v16;
    v36 = &type metadata for AECAssessmentModeActivation;
    v37 = &off_2849D3A70;
    v17 = swift_allocObject();
    *&v35 = v17;
    v18 = v46[1];
    v17[9] = v46[0];
    v17[10] = v18;
    v17[11] = v47;
    v19 = v43;
    v17[5] = v42;
    v17[6] = v19;
    v20 = v45;
    v17[7] = v44;
    v17[8] = v20;
    v21 = v39;
    v17[1] = v38;
    v17[2] = v21;
    v22 = v41;
    v17[3] = v40;
    v17[4] = v22;
    type metadata accessor for AECPolicyActivationRunner();
    v23 = swift_allocObject();
    sub_236E05060(&v35, v23 + 16);
    swift_unknownObjectRetain();

    v24 = v16;
    MEMORY[0x2383BE710](a2);
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_236E16160();
    }

    sub_236E161A0();
  }

  else
  {
    v25 = v10[9];
    *(&v39 + 1) = &type metadata for AECSingleAppModeActivation;
    *&v40 = &off_2849D3410;
    v26 = swift_allocObject();
    *&v38 = v26;
    v26[2] = 0xD000000000000028;
    v26[3] = 0x8000000236E1A520;
    v26[4] = 1;
    v26[5] = a1;
    v26[6] = v25;
    type metadata accessor for AECPolicyActivationRunner();
    v27 = swift_allocObject();
    sub_236E05060(&v38, v27 + 16);

    swift_unknownObjectRetain();
    MEMORY[0x2383BE710](a1);
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_236E16160();
    }

    sub_236E161A0();
  }

  v28 = a5[7];
  v29 = a5[8];
  v30 = a5[9];
  v31 = objc_allocWithZone(MEMORY[0x277CE4748]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85F00, &unk_236E18F30);
  v32 = sub_236E16120();

  v33 = [v31 initWithPolicyStore:v28 performancePrimitives:v29 activations:v32 queue:v30];

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v33;
}

uint64_t sub_236E0F940(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EB0, &qword_236E18F08);
  swift_allocObject();

  v5 = v3;
  return sub_236E15F30();
}

void sub_236E0F9D8(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *a4;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_236E11084;
  *(v8 + 24) = v7;

  v9 = v6;
  sub_236E15ED0();
}

void sub_236E0FAA0(char *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_236E16030();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(*&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_taskQueue] + 16);
  *v9 = v11;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);

  v12 = v11;
  v13 = sub_236E16050();
  (*(v7 + 8))(v9, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (*&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession])
  {
    aBlock = 0;
    LOBYTE(v67) = 0;
    a2(&aBlock);
LABEL_4:

    return;
  }

  v14 = &a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySessionPrimitives];
  v13 = [__swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySessionPrimitives] *&a1[OBJC:sel_deviceType IVAR:? :? :? :? TtC9AACClient20AECAssessmentSession:?policySessionPrimitives + 24])[5]];
  if ((AEIsAssessmentModeAvailableForDeviceType() & 1) == 0)
  {
    if (qword_27DE84ED8 == -1)
    {
LABEL_15:
      v28 = sub_236E15DC0();
      __swift_project_value_buffer(v28, qword_27DE871C8);
      v29 = sub_236E15DA0();
      v30 = sub_236E162C0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134349056;
        *(v31 + 4) = v13;
        _os_log_impl(&dword_236DF9000, v29, v30, "Failed to enter Assessment Mode on an unsupported platform: %{public}ld", v31, 0xCu);
        MEMORY[0x2383BF300](v31, -1, -1);
      }

      v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v33 = sub_236E160B0();
      v34 = [v32 initWithDomain:v33 code:2 userInfo:0];
      goto LABEL_18;
    }

LABEL_41:
    swift_once();
    goto LABEL_15;
  }

  v15 = __swift_project_boxed_opaque_existential_1(v14, *(v14 + 3));
  v16 = *MEMORY[0x277CE46B0];
  if (([v15[6] hasEntitlement_] & 1) == 0 && !objc_msgSend(__swift_project_boxed_opaque_existential_1(v14, *(v14 + 3))[6], sel_hasEntitlement_, *MEMORY[0x277CE46B8]))
  {
    if (qword_27DE84ED8 != -1)
    {
      swift_once();
    }

    v41 = sub_236E15DC0();
    __swift_project_value_buffer(v41, qword_27DE871C8);
    v37 = sub_236E15DA0();
    v38 = sub_236E162C0();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_28;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Process did not pass entitlement check for starting an assessment session";
    goto LABEL_27;
  }

  v17 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  v18 = v17;
  v19 = *&a1[v17];
  v20 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  if ((*(v19 + v20) & 1) != 0 || (v21 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture, swift_beginAccess(), *(v19 + v21) == 1))
  {
    if (([__swift_project_boxed_opaque_existential_1(v14 *(v14 + 3))[6]] & 1) == 0)
    {
      if (qword_27DE84ED8 != -1)
      {
        swift_once();
      }

      v36 = sub_236E15DC0();
      __swift_project_value_buffer(v36, qword_27DE871C8);
      v37 = sub_236E15DA0();
      v38 = sub_236E162C0();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_28;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Process did not pass entitlement check for using private configuration SPI";
LABEL_27:
      _os_log_impl(&dword_236DF9000, v37, v38, v40, v39, 2u);
      MEMORY[0x2383BF300](v39, -1, -1);
LABEL_28:

      sub_236E0EDE0();
      v42 = swift_allocError();
      aBlock = v42;
      LOBYTE(v67) = 1;
      a2(&aBlock);
      v43 = v42;
LABEL_34:

      goto LABEL_4;
    }
  }

  v22 = *&a1[v18];
  v23 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  v24 = *&v22[v23];
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = v22;

    v26 = sub_236E164E0();

    v27 = 0x278A0B000;
    if (!v26)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v44 = *(v24 + 16);
  v27 = 0x278A0B000uLL;
  if (v44)
  {
LABEL_30:
    if ([__swift_project_boxed_opaque_existential_1(v14 *(v14 + 3))[6]])
    {
      [__swift_project_boxed_opaque_existential_1(v14 *(v14 + 3))[5]];
      if (AEIsMultiAppAvailableForDeviceType())
      {
        goto LABEL_32;
      }
    }

    v50 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v33 = sub_236E160B0();
    v34 = [v50 initWithDomain:v33 code:3 userInfo:0];
LABEL_18:
    v35 = v34;

    aBlock = v35;
    LOBYTE(v67) = 1;
    a2(&aBlock);

    return;
  }

LABEL_32:
  v64 = v16;
  v45 = *&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator], *&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator + 24]);
  v46 = *&a1[v18];
  v63 = v18;
  v65 = *(v45 + 8);
  v47 = v46;
  v48 = v65();

  if (v48)
  {
    aBlock = v48;
    LOBYTE(v67) = 1;
    v49 = v48;
    a2(&aBlock);

    v43 = v48;
    goto LABEL_34;
  }

  v51 = v63;
  v52 = *&a1[v63];
  v53 = sub_236E1108C();

  v54 = *&a1[v51];
  v55 = *&a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_stateAntiphony];
  v56 = __swift_project_boxed_opaque_existential_1(v14, *(v14 + 3))[6];
  v57 = v54;
  if ([v56 hasEntitlement_])
  {
    [__swift_project_boxed_opaque_existential_1(v14 *(v14 + 3))[5]];
    v58 = AEIsMultiAppAvailableForDeviceType();
  }

  else
  {
    v58 = 0;
  }

  v59 = sub_236E0F554(v57, v53, v55, v58, &a1[OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policyBundleFactory]);

  v60 = swift_allocObject();
  v60[2] = sub_236E11084;
  v60[3] = v10;
  v60[4] = a1;
  v70 = sub_236E10DC8;
  v71 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_236E0AA54;
  v69 = &block_descriptor_100;
  v61 = _Block_copy(&aBlock);

  v62 = a1;

  [v59 activateSessionWithCompletion_];
  _Block_release(v61);
}

void sub_236E10344(_BYTE *a1, uint64_t a2, void (*a3)(id *), uint64_t a4)
{
  v8 = sub_236E16030();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = *(*(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_taskQueue) + 16);
  *v11 = v13;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);

  v14 = v13;
  LOBYTE(v13) = sub_236E16050();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = (a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySessionPrimitives);
  if (![__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySessionPrimitives) *(a2 + OBJC:sel_hasEntitlement_ IVAR:*MEMORY[0x277CE46B0] :? :? :? TtC9AACClient20AECAssessmentSession:?policySessionPrimitives + 24))[6]] || (objc_msgSend(__swift_project_boxed_opaque_existential_1(v15, v15[3])[5], sel_deviceType), !AEIsMultiAppAvailableForDeviceType()))
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v23 = sub_236E160B0();
    v24 = [v22 initWithDomain:v23 code:4 userInfo:0];

    v54 = v24;
    v55 = 1;
    v25 = &v54;
LABEL_10:
    a3(v25);

    return;
  }

  v16 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  if ((a1[v16] & 1) != 0 || (v17 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture, swift_beginAccess(), a1[v17] == 1))
  {
    if (([__swift_project_boxed_opaque_existential_1(v15 v15[3])[6]] & 1) == 0)
    {
      if (qword_27DE84ED8 == -1)
      {
LABEL_12:
        v26 = sub_236E15DC0();
        __swift_project_value_buffer(v26, qword_27DE871C8);
        v27 = sub_236E15DA0();
        v28 = sub_236E162C0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_236DF9000, v27, v28, "Process did not pass entitlement check for using private configuration SPI during configuration update", v29, 2u);
          MEMORY[0x2383BF300](v29, -1, -1);
        }

        v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v31 = sub_236E160B0();
        v24 = [v30 initWithDomain:v31 code:1 userInfo:0];

        v52 = v24;
        v53 = 1;
        v25 = &v52;
        goto LABEL_10;
      }

LABEL_25:
      swift_once();
      goto LABEL_12;
    }
  }

  v18 = *(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator + 24);
  v19 = *(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configurationValidator), v18);
  v20 = (*(v19 + 8))(a1, v18, v19);
  if (v20)
  {
    v52 = v20;
    v53 = 1;
    v21 = v20;
    a3(&v52);
  }

  else
  {
    sub_236E10A98();
    v32 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
    swift_beginAccess();
    v33 = *(a2 + v32);
    v34 = sub_236E16360();

    if (v34)
    {
      v48 = 0;
      v49 = 0;
    }

    else
    {
      if (*(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_policySession))
      {
        v35 = sub_236E1108C();
        v36 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_updateSubscription;
        if (*(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_updateSubscription))
        {

          sub_236E15E90();
        }

        v37 = *(a2 + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_stateAntiphony);
        v51 = v35;
        v47[0] = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EB0, &qword_236E18F08);
        swift_allocObject();
        v48 = sub_236E15F30();
        sub_236DFECCC(&qword_27DE85EB8, &qword_27DE85EB0, &qword_236E18F08, MEMORY[0x277CBCEB0]);
        v38 = sub_236E15F50();

        v50 = v38;
        v39 = swift_beginAccess();
        v40 = *(v37 + 16);
        MEMORY[0x28223BE20](v39);
        v47[-2] = &v50;
        v47[-1] = &v51;

        sub_236E0E76C(sub_236E10AE4, &v47[-4], v40);

        v51 = v50;
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        v42[2] = v41;
        v42[3] = sub_236E11084;
        v42[4] = v12;
        v42[5] = a1;
        v43 = a1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE85EC0, &qword_236E18F10);
        sub_236DFECCC(&qword_27DE85EC8, &qword_27DE85EC0, &qword_236E18F10, MEMORY[0x277CBCD90]);
        v44 = sub_236E15F70();

        *(a2 + v36) = v44;

        goto LABEL_23;
      }

      v45 = *(a2 + v32);
      *(a2 + v32) = a1;

      v48 = 1;
      v49 = 0;
      v46 = a1;
    }

    a3(&v48);
  }

LABEL_23:
}

unint64_t sub_236E10A98()
{
  result = qword_27DE85EA8;
  if (!qword_27DE85EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE85EA8);
  }

  return result;
}

uint64_t sub_236E10B08()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E10B68@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E10BEC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236E10C4C()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236E10CAC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_236E10CF4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = v4;
  dispatch_group_leave(*(v2 + 32));
  if (v3)
  {
    v3(&v5);
  }
}

uint64_t sub_236E10D48(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_236E10D88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_236E10DDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E10E24()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236E10E6C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t getEnumTagSinglePayload for AECAssessmentSessionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AECAssessmentSessionError(_WORD *result, int a2, int a3)
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

unint64_t sub_236E10FCC()
{
  result = qword_27DE85F08;
  if (!qword_27DE85F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE85F08);
  }

  return result;
}

id sub_236E1108C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CE46F8]) init];
  [v1 setEnabled_];
  v2 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  [v1 setMainIndividualConfiguration_];
  swift_beginAccess();
  sub_236DFE044(0, &qword_27DE856B8, 0x277CE46E0);
  sub_236DFE044(0, &qword_27DE856C0, 0x277CE46E8);
  sub_236E14C5C();

  v3 = sub_236E16070();

  [v1 setConfigurationsByApplicationDescriptor_];

  v4 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  [v1 setAllowsAutoCorrection_];
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  [v1 setAllowsSmartPunctuation_];
  v6 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  [v1 setAllowsSpellCheck_];
  v7 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  [v1 setAllowsPredictiveKeyboard_];
  v8 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  [v1 setAllowsKeyboardShortcuts_];
  v9 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  [v1 setAllowsActivityContinuation_];
  v10 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  [v1 setAllowsDictation_];
  v11 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  swift_beginAccess();
  [v1 setAllowsAccessibilityKeyboard_];
  v12 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  [v1 setAllowsAccessibilityLiveCaptions_];
  v13 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  [v1 setAllowsAccessibilityReader_];
  v14 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  [v1 setAllowsAccessibilitySpeech_];
  v15 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  [v1 setAllowsAccessibilityTypingFeedback_];
  v16 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  [v1 setAllowsPasswordAutoFill_];
  v17 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  [v1 setAllowsContinuousPathKeyboard_];
  v18 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  swift_beginAccess();
  [v1 setAllowsKeyboardMathSolving_];
  v19 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  swift_beginAccess();
  [v1 setAllowsMathPaperSolving_];
  v20 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  swift_beginAccess();
  [v1 setAllowsScreenshots_];
  v21 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  [v1 set:*(v0 + v21) allowsNetworkAccess:?];
  v22 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  swift_beginAccess();
  [v1 set:*(v0 + v22) allowsContentCapture:?];
  return v1;
}

id sub_236E11598()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_236E1164C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_236E116A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_236E11928(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_236E11980(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_236E11A90()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E11B28(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E11C20()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E11CB8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E11DB0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E11E48(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E11F40()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E11FD8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E120D0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12168(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12260()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E122F8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E123F0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12488(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12580()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12618(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12710()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E127A8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E128A0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12938(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12A30()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12AC8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12BC0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12C58(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12D50()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12DE8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E12EE0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E12F78(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E13070()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E13108(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E13200()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E13298(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E13390()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E13428(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E13520()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E135B8(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_236E136B0()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_236E13748(char a1)
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AECAssessmentConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AECAssessmentConfiguration.init()()
{
  v1 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CE46E8]) init];
  *&v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor] = MEMORY[0x277D84F98];
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess] = 0;
  v0[OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AECAssessmentConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AECAssessmentConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AECAssessmentConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_236E13A04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_236E13A70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_22Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

unint64_t sub_236E14C5C()
{
  result = qword_27DE85FB8[0];
  if (!qword_27DE85FB8[0])
  {
    sub_236DFE044(255, &qword_27DE856B8, 0x277CE46E0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE85FB8);
  }

  return result;
}

uint64_t sub_236E14D10()
{
  sub_236E14E5C();

  v1 = qword_27DE86040;
  v2 = sub_236E15D90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_236E14D7C()
{
  v0 = sub_236E14D10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_236E14DD0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = qword_27DE86040;
  v6 = sub_236E15D90();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t sub_236E14E5C()
{
  if (*(v0 + 16))
  {
    v1 = qword_27DE86040;

    sub_236E151FC(v0 + v1);
  }

  *(v0 + 16) = 0;
}

uint64_t sub_236E14EF0(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_236E14F30()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_236E15D90();
  v18 = *(v3 - 8);
  v4 = v18;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_236E15D80();
  v17 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE855E0, &qword_236E17CF8);
  swift_getTupleTypeMetadata2();
  sub_236E15EF0();
  v10 = sub_236E15EE0();
  v11 = *(v4 + 16);
  v11(v7, v9, v3);
  v20 = v10;
  swift_beginAccess();
  sub_236E154A4();
  sub_236E16090();

  sub_236E160A0();
  swift_endAccess();
  type metadata accessor for AECCurrentValueAntiphony.Membership(0, v17, v12, v13);
  v11(v7, v9, v3);
  v14 = sub_236E14DD0(v1, v7);
  sub_236E15EA0();
  v19 = v14;

  swift_getWitnessTable();
  v15 = sub_236E15EB0();
  v19 = v10;
  swift_getWitnessTable();
  sub_236E15F50();

  (*(v18 + 8))(v9, v3);

  return v15;
}

uint64_t sub_236E151FC(uint64_t a1)
{
  v2 = sub_236E15D90();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v7 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE855E0, &qword_236E17CF8);
  swift_getTupleTypeMetadata2();
  sub_236E15EF0();
  sub_236E154A4();
  sub_236E16090();
  sub_236E160A0();
  return swift_endAccess();
}

uint64_t sub_236E1537C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_236E153CC(uint64_t a1)
{
  result = sub_236E15D90();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_236E154A4()
{
  result = qword_27DE860C8;
  if (!qword_27DE860C8)
  {
    sub_236E15D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE860C8);
  }

  return result;
}

id sub_236E154FC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBAA78]) init];
  v2 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  [v1 setAllowsAutoCorrection_];
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  [v1 setAllowsSmartPunctuation_];
  v4 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  [v1 setAllowsSpellCheck_];
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  [v1 setAllowsPredictiveKeyboard_];
  v6 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  [v1 setAllowsKeyboardShortcuts_];
  v7 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  [v1 setAllowsActivityContinuation_];
  v8 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  [v1 setAllowsDictation_];
  v9 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  [v1 setAllowsAccessibilityLiveCaptions_];
  v10 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  [v1 setAllowsAccessibilityReader_];
  v11 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  [v1 setAllowsAccessibilitySpeech_];
  v12 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  [v1 setAllowsAccessibilityTypingFeedback_];
  v13 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  [v1 setAllowsPasswordAutoFill_];
  v14 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  [v1 setAllowsContinuousPathKeyboard_];
  [v1 setShowsUserConfirmationPromptsAndBanners_];
  return v1;
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

uint64_t sub_236E15824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236E1586C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_236E158D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CE4720]) init];
  v5 = [v4 makePrimitives];

  a2[5] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277CE4758]) init];
  v7 = [v6 makePrimitives];

  a2[6] = v7;
  a2[7] = [objc_allocWithZone(MEMORY[0x277CE4718]) init];
  a2[8] = [objc_allocWithZone(MEMORY[0x277CE4710]) initWithDomain_];
  v8 = [objc_allocWithZone(MEMORY[0x277CBAA80]) init];
  v9 = [v8 makePrimitives];

  a2[9] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CBAA88]) init];
  v11 = [v10 makePrimitives];

  a2[10] = v11;
  a2[3] = &type metadata for AECConcreteAssessmentModePrimitives;
  a2[4] = &off_2849D2B88;
  *a2 = a1;
}

uint64_t sub_236E15A38(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  while (1)
  {
    if (v5 + v6 == -1)
    {
      return 0;
    }

    if (++v6 >= *(v3 + 16))
    {
      break;
    }

    v7 = result + 40;
    sub_236E04D20(result, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = (*(v9 + 8))(a1, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v11);
    result = v7;
    if (v10)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236E15B54()
{
  if (qword_27DE84EC0 != -1)
  {
    swift_once();
  }

  v0 = qword_27DE87198;

  return v0;
}

uint64_t sub_236E15BE0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  if (*(a1 + v2) != 1)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  if (*(a1 + v3))
  {
    return 0;
  }

  sub_236E15C84();
  return swift_allocError();
}

unint64_t sub_236E15C84()
{
  result = qword_27DE860D0;
  if (!qword_27DE860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE860D0);
  }

  return result;
}

unint64_t sub_236E15CEC()
{
  result = qword_27DE860D8;
  if (!qword_27DE860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE860D8);
  }

  return result;
}