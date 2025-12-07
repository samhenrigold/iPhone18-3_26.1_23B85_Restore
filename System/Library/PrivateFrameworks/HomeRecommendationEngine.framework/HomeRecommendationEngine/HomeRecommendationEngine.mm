id MatterCommandActionMap.__allocating_init(commandTemplates:enforceExecutionOrder:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = a1;
  v5[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithCondition_childMaps_, 0, 0);
}

id MatterCommandActionMap.init(commandTemplates:enforceExecutionOrder:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = a1;
  v2[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MatterCommandActionMap();
  return objc_msgSendSuper2(&v4, sel_initWithCondition_childMaps_, 0, 0);
}

id MatterCommandActionMap.init(rawCommands:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_254406CB0())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x259C0B190](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_2543E3C48(v5 + OBJC_IVAR___HREMatterCommandMap_template, v15);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2543E4D88(0, v4[2] + 1, 1, v4);
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        v4 = sub_2543E4D88((v8 > 1), v9 + 1, 1, v4);
      }

      v4[2] = v9 + 1;
      sub_2543E4ED0(v15, &v4[5 * v9 + 4]);
      ++v3;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_19:

  v10 = type metadata accessor for MatterCommandActionMap();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = v4;
  v11[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = 1;
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCondition_childMaps_, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_2543E3C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2543E3CAC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x259C0AFA0](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_254406B90();
      }

      result = sub_254406BA0();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

void *sub_2543E3EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = sub_254406AC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  v12 = sub_254406B00();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254406C10();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = &qword_27F5F8B20;
    v17 = &qword_254409E50;
    v18 = v11;
LABEL_5:
    sub_2543E50A0(v18, v16, v17);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_254406AF0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v16 = &unk_27F5F8D80;
    v17 = &qword_254409E48;
    v18 = v4;
    goto LABEL_5;
  }

  v20 = (*(v6 + 32))(v8, v4, v5);
  MEMORY[0x28223BE20](v20);
  v23[-2] = a1;
  v23[-1] = v8;
  v22 = sub_2543E3CAC(sub_2543E5100, &v23[-4], v21);
  (*(v13 + 8))(v15, v12);
  (*(v6 + 8))(v8, v5);
  return v22;
}

uint64_t sub_2543E4204@<X0>(void *a1@<X0>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_254406B10();
  *a4 = result;
  return result;
}

id MatterCommandActionMap.__allocating_init(condition:childMaps:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_2543E51AC(0, &qword_27F5F8B08, off_2797759E8);
    v4 = sub_254406B70();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithCondition:a1 childMaps:v4];

  return v5;
}

id sub_2543E461C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t (*a4)(void), unsigned int *a5)
{
  v8 = sub_254406B20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v13 = a4(0);
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  (*(v9 + 104))(v11, *a5, v8);
  v21[3] = v8;
  v21[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v15 = type metadata accessor for MatterCommandMap();
  v16 = objc_allocWithZone(v15);
  sub_2543E3C48(v21, v16 + OBJC_IVAR___HREMatterCommandMap_template);
  v20.receiver = v16;
  v20.super_class = v15;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return v17;
}

unsigned int *sub_2543E4800(unsigned int *a1, uint64_t (*a2)(void), unsigned int *a3)
{
  v6 = sub_254406B20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a2(0);
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(v7 + 104))(v9, *a3, v6);
  v19[3] = v6;
  v19[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
  v13 = type metadata accessor for MatterCommandMap();
  v14 = objc_allocWithZone(v13);
  sub_2543E3C48(v19, v14 + OBJC_IVAR___HREMatterCommandMap_template);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

id sub_2543E49B8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_254406B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *a3, v4);
  v15[3] = v4;
  v15[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
  v9 = type metadata accessor for MatterCommandMap();
  v10 = objc_allocWithZone(v9);
  sub_2543E3C48(v15, v10 + OBJC_IVAR___HREMatterCommandMap_template);
  v14.receiver = v10;
  v14.super_class = v9;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v15);

  return v11;
}

unsigned int *sub_2543E4B34(unsigned int *a1)
{
  v2 = sub_254406B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *a1, v2);
  v13[3] = v2;
  v13[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  v7 = type metadata accessor for MatterCommandMap();
  v8 = objc_allocWithZone(v7);
  sub_2543E3C48(v13, v8 + OBJC_IVAR___HREMatterCommandMap_template);
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

id MatterCommandMap.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2543E4D40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_2543E4D88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B30, &qword_254409E58);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B38, &qword_254409E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2543E4ED0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2543E4EE8()
{
  result = qword_27F5F8B10;
  if (!qword_27F5F8B10)
  {
    sub_254406B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5F8B10);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_2543E50A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2543E5100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_254406B10();
  *a2 = result;
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

uint64_t sub_2543E51AC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t HRETemplateRecommendationGeneratorProcess.matterCommandActions(for:with:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v11 = MEMORY[0x277D84FA0];
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v8 = MEMORY[0x277D84FA0];
LABEL_14:
    sub_2543E5D50(v8);
    v10 = v9;

    return v10;
  }

  result = sub_254406CB0();
  v4 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C0B190](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      sub_2543E5318(v6, a2);
      if (v7)
      {
        sub_2543E5B58(v7);
      }

      swift_unknownObjectRelease();
    }

    v8 = v11;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_2543E5318(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = sub_254406B00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v93 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v92 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - v12;
  v14 = sub_254406AC0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  swift_getObjectType();
  if ((sub_254406C00() & 1) == 0)
  {
    return;
  }

  v89 = v5;
  v90 = v6;
  v20 = sub_254406BF0();
  v21 = (v20 & 0xC000000000000001) != 0 ? sub_254406CB0() : *(v20 + 16);

  if (v21 != 1)
  {
    return;
  }

  v22 = sub_254406BF0();
  v23 = sub_2543E6380(v22);

  if (!v23)
  {
    return;
  }

  sub_2543E649C(v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {

    sub_2543E50A0(v13, &unk_27F5F8D80, &qword_254409E48);
    return;
  }

  v80 = v24;
  v81 = v15 + 48;
  v87 = v23;
  v85 = v2;
  v26 = *(v15 + 32);
  v25 = v15 + 32;
  v77 = v26;
  v26(v19, v13, v14);
  v27 = sub_254406AB0();
  v28 = sub_2543E7154(v27);
  v83 = 0;

  v29 = sub_2543E9620(v28);
  v88 = v29;

  v30 = 0;
  v32 = v29 + 56;
  v31 = *(v29 + 56);
  v33 = 1 << *(v29 + 32);
  v95[1] = MEMORY[0x277D84FA0];
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  v84 = (v7 + 48);
  v78 = v25;
  v79 = (v7 + 32);
  v82 = (v7 + 8);
  v86 = (v25 - 24);
  v37 = v94;
  while (v35)
  {
    v38 = v35;
LABEL_20:
    v35 = (v38 - 1) & v38;
    if (*(v37 + 16))
    {
      v40 = (*(v88 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v38)))));
      v41 = *v40;
      v42 = v40[1];
      v43 = v35;

      v44 = sub_2543E97D0(v41, v42);
      v46 = v45;

      v35 = v43;
      if (v46)
      {
        v47 = *(*(v37 + 56) + 8 * v44);
        type metadata accessor for MatterCommandActionMap();
        v48 = swift_dynamicCastClass();
        v35 = v43;
        if (v48)
        {
          v49 = v48;
          v50 = v47;
          v51 = [v85 snapshotContainer];
          if (v51)
          {
            v75 = v49;
            v76 = v50;
            v52 = v89;
            v53 = v51;
            sub_254406C10();
            v54 = v90;
            if ((*v84)(v52, 1, v90) == 1)
            {

              v55 = v52;
              v56 = &qword_27F5F8B20;
              v57 = &qword_254409E50;
              goto LABEL_29;
            }

            v74 = v53;
            v58 = v54;
            v59 = v93;
            (*v79)(v93, v52, v58);
            v60 = v92;
            sub_254406AF0();
            if (v80(v60, 1, v14) == 1)
            {

              (*v82)(v59, v90);
              v55 = v60;
              v56 = &unk_27F5F8D80;
              v57 = &qword_254409E48;
LABEL_29:
              sub_2543E50A0(v55, v56, v57);
              v35 = v43;
            }

            else
            {
              v61 = v91;
              v62 = v77(v91, v60, v14);
              v73 = &v71;
              MEMORY[0x28223BE20](v62);
              *(&v71 - 2) = v87;
              *(&v71 - 1) = v61;
              v63 = v83;
              v65 = sub_2543E3CAC(sub_2543E971C, (&v71 - 4), v64);
              (*v82)(v59, v90);
              (*v86)(v61, v14);
              v83 = v63;
              if (v65 >> 62)
              {
                if (sub_254406CB0())
                {
LABEL_32:
                  v73 = [v85 home];
                  LODWORD(v75) = *(v75 + OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder);
                  v72 = objc_allocWithZone(MEMORY[0x277D147C8]);
                  sub_2543E51AC(0, &qword_27F5F8B28, 0x277CD1B68);
                  v66 = v87;
                  v67 = sub_254406B70();

                  v68 = v73;
                  v69 = [v72 initWithHome:v73 commands:v67 accessory:v66 enforceExecutionOrder:v75];

                  sub_2543E7620(v95, v69);
                  v70 = v95[0];
                  goto LABEL_35;
                }
              }

              else if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v70 = v76;
LABEL_35:

              v37 = v94;
              v35 = v43;
            }
          }

          else
          {

            v35 = v43;
          }
        }
      }
    }
  }

  while (1)
  {
    v39 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      (*v86)(v19, v14);
      return;
    }

    v38 = *(v32 + 8 * v39);
    ++v30;
    if (v38)
    {
      v30 = v39;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_2543E5B58(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_254406C70();
    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    sub_2543E96C4(&qword_27F5F8E90, &qword_27F5F8E88, 0x277D147C8);
    sub_254406BE0();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_2543E9714(v1);
      return;
    }

    while (1)
    {
      sub_2543E7620(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_254406CE0())
      {
        sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2543E5D50(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_254406CB0())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8EA0, &qword_254409EA8);
  v3 = sub_254406D30();
LABEL_6:
  if (sub_2543E51AC(0, &qword_27F5F8E60, 0x277D14380) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_254406C70();
      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      sub_2543E96C4(&qword_27F5F8E90, &qword_27F5F8E88, 0x277D147C8);
      sub_254406BE0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_2543E78DC(v35);
    }

    if (sub_254406CE0())
    {
      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_2543E9714(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_254406C70();
    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    sub_2543E96C4(&qword_27F5F8E90, &qword_27F5F8E88, 0x277D147C8);
    sub_254406BE0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_254406CE0())
    {
LABEL_38:
      sub_2543E9714(v1);
      goto LABEL_57;
    }

    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_254406C20();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_2543E6380(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_254406C60();
    v5 = v4;
    v6 = sub_254406CF0();
    v8 = v7;
    v9 = MEMORY[0x259C0B0C0](v3, v5, v6, v7);
    sub_2543E96B8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_2543E96B8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_254406C40();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2543E93FC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_2543E96B8(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_2543E649C@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_254406B00();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (sub_254406C00())
  {
    v14 = sub_254406BF0();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v30 = v13;
      v15 = sub_254406CB0();
      v13 = v30;
    }

    else
    {
      v15 = *(v14 + 16);
    }

    if (v15 == 1)
    {
      v16 = sub_254406BF0();
      v17 = sub_2543E6380(v16);

      if (v17)
      {
        v18 = [v2 snapshotContainer];
        if (v18)
        {
          v19 = v18;
          sub_254406C10();

          if ((*(v11 + 48))(v9, 1, v10) != 1)
          {
            (*(v11 + 32))(v13, v9, v10);
            sub_254406AF0();

            (*(v11 + 8))(v13, v10);
            v27 = sub_254406AC0();
            v28 = *(v27 - 8);
            if ((*(v28 + 48))(v6, 1, v27) != 1)
            {
              (*(v28 + 32))(a2, v6, v27);
              return (*(v28 + 56))(a2, 0, 1, v27);
            }

            v23 = &unk_27F5F8D80;
            v24 = &qword_254409E48;
            v25 = v6;
            goto LABEL_15;
          }
        }

        else
        {

          (*(v11 + 56))(v9, 1, 1, v10);
        }

        v23 = &qword_27F5F8B20;
        v24 = &qword_254409E50;
        v25 = v9;
LABEL_15:
        sub_2543E50A0(v25, v23, v24);
        v26 = sub_254406AC0();
        return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
      }
    }
  }

  v20 = sub_254406AC0();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t StaticEndpoint.recommendationDeviceTypes.getter(uint64_t a1)
{
  v1 = sub_254406AB0();
  v2 = sub_2543E7154(v1);

  v3 = sub_2543E9620(v2);

  return v3;
}

uint64_t HRETemplateRecommendationGeneratorProcess.additionalIncludedObjects(in:with:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - v8;
  ObjectType = sub_254406B00();
  v11 = *(ObjectType - 1);
  MEMORY[0x28223BE20](ObjectType);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254406AC0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v57 - v18;
  v78 = MEMORY[0x277D84F90];
  v72 = a1;
  if (a1 >> 62)
  {
LABEL_41:
    v56 = v17;
    v19 = sub_254406CB0();
    v17 = v56;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_3:
      v59 = a2;
      a2 = 0;
      v20 = v72 & 0xC000000000000001;
      v21 = v72 & 0xFFFFFFFFFFFFFF8;
      v67 = (v11 + 6);
      v62 = (v11 + 4);
      v63 = 0;
      v60 = (v14 + 48);
      v61 = (v11 + 1);
      v58 = (v14 + 32);
      v57 = (v14 + 8);
      v64 = (v11 + 7);
      v70 = ObjectType;
      v71 = v9;
      v9 = (v72 + 32);
      v68 = v17;
      v75 = (v72 + 32);
      v76 = v72 & 0xC000000000000001;
      v77 = v72 & 0xFFFFFFFFFFFFFF8;
      v74 = v19;
      while (1)
      {
        if (v20)
        {
          v14 = MEMORY[0x259C0B190](a2, v72);
          v22 = __OFADD__(a2++, 1);
          if (v22)
          {
LABEL_38:
            __break(1u);
            return v78;
          }
        }

        else
        {
          if (a2 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v14 = *&v9[8 * a2];
          swift_unknownObjectRetain();
          v22 = __OFADD__(a2++, 1);
          if (v22)
          {
            goto LABEL_38;
          }
        }

        ObjectType = swift_getObjectType();
        v11 = v14;
        if (sub_254406C00() & 1) != 0 && (v11 = v14, (sub_254406C00()) && ((v23 = sub_254406BF0(), (v23 & 0xC000000000000001) == 0) ? (v11 = *(v23 + 16)) : (v11 = sub_254406CB0()), , v11 == 1))
        {
          v24 = sub_254406BF0();
          v11 = v24;
          v25 = v24 & 0xC000000000000001;
          if ((v24 & 0xC000000000000001) != 0)
          {
            v26 = v24 & 0xC000000000000001;
            v27 = sub_254406C60();
            v29 = v28;
            ObjectType = sub_254406CF0();
            v30 = v6;
            v32 = v31;
            v33 = MEMORY[0x259C0B0C0](v27, v29, ObjectType, v31);
            v34 = v32;
            v6 = v30;
            sub_2543E96B8(ObjectType, v34, 1);
            v25 = v26;
            v19 = v74;
            if (v33)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v35 = 0;
            v36 = (v24 + 56);
            v27 = 1 << *(v24 + 32);
            v37 = (v27 + 63) >> 6;
            while (1)
            {
              v39 = *v36++;
              v38 = v39;
              if (v39)
              {
                break;
              }

              v35 -= 64;
              if (!--v37)
              {
                v29 = *(v24 + 36);
                goto LABEL_23;
              }
            }

            v40 = __clz(__rbit64(v38));
            v29 = *(v24 + 36);
            if (v40 - v27 == v35)
            {
LABEL_23:
              sub_2543E96B8(v27, v29, v25 != 0);
              swift_unknownObjectRelease();

              v20 = v76;
              v21 = v77;
              v9 = v75;
              goto LABEL_5;
            }

            v27 = v40 - v35;
          }

          v41 = v25 != 0;
          sub_2543E93FC(v27, v29, v25 != 0, v11);
          ObjectType = v42;
          sub_2543E96B8(v27, v29, v41);

          v43 = [v73 snapshotContainer];
          if (v43)
          {
            v11 = v43;
            v44 = v71;
            sub_254406C10();

            v45 = v70;
            v46 = (*v67)(v44, 1, v70);
            v47 = v68;
            v21 = v77;
            if (v46 != 1)
            {
              v11 = v69;
              (*v62)(v69, v44, v45);
              sub_254406AF0();

              (*v61)(v11, v45);
              if ((*v60)(v6, 1, v47) == 1)
              {
                swift_unknownObjectRelease();
                v17 = sub_2543E50A0(v6, &unk_27F5F8D80, &qword_254409E48);
              }

              else
              {
                v48 = *v58;
                v49 = v66;
                (*v58)(v66, v6, v47);
                ObjectType = v65;
                v48(v65, v49, v47);
                v50 = sub_254406AB0();
                v51 = v63;
                v52 = sub_2543E7154(v50);
                v63 = v51;

                v53 = sub_2543E9620(v52);

                v11 = sub_2543E8BA8(v59, v53);
                (*v57)(ObjectType, v47);
                v54 = v11[2];

                if (v54)
                {
                  v11 = &v78;
                  sub_254406D60();
                  sub_254406D80();
                  sub_254406D90();
                  v17 = sub_254406D70();
                }

                else
                {
                  v17 = swift_unknownObjectRelease();
                }
              }

              v9 = v75;
              v20 = v76;
              goto LABEL_5;
            }

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            v44 = v71;
            (*v64)(v71, 1, 1, v70);
            v21 = v77;
          }

          v9 = v75;
          v17 = sub_2543E50A0(v44, &qword_27F5F8B20, &qword_254409E50);
          v20 = v76;
        }

        else
        {
          v17 = swift_unknownObjectRelease();
        }

LABEL_5:
        if (a2 == v19)
        {
          return v78;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2543E7154(uint64_t a1)
{
  v42 = sub_254406AE0();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v33 = v1;
  v49 = MEMORY[0x277D84F90];
  sub_2543E8A7C(0, v5, 0);
  v6 = v49;
  v7 = a1 + 56;
  result = sub_254406C40();
  v9 = result;
  v10 = 0;
  v39 = v3 + 16;
  v40 = 0x800000025440A1C0;
  v37 = a1 + 56;
  v38 = v3 + 8;
  v34 = a1 + 64;
  v35 = v5;
  v36 = v3;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v43 = v10;
    v44 = v13;
    v14 = *(a1 + 48) + *(v3 + 72) * v9;
    v15 = *(v3 + 16);
    v45 = v6;
    v17 = v41;
    v16 = v42;
    v15(v41, v14, v42);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_254406D40();

    v47 = 0xD000000000000014;
    v48 = v40;
    v46 = sub_254406AD0();
    v18 = sub_254406DB0();
    MEMORY[0x259C0AF90](v18);

    v19 = v3;
    v20 = v47;
    v21 = v48;
    v22 = v17;
    v6 = v45;
    result = (*(v19 + 8))(v22, v16);
    v49 = v6;
    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_2543E8A7C((v23 > 1), v24 + 1, 1);
      v6 = v49;
    }

    *(v6 + 16) = v24 + 1;
    v25 = v6 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v37;
    v26 = *(v37 + 8 * v12);
    if ((v26 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v9 & 0x3F));
    if (v27)
    {
      v11 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v34 + 8 * v12);
      while (v29 < (v11 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_2543E96B8(v9, v44, 0);
          v11 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_2543E96B8(v9, v44, 0);
    }

LABEL_4:
    v10 = v43 + 1;
    v9 = v11;
    v3 = v36;
    if (v43 + 1 == v35)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2543E74D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_254406DE0();
  sub_254406B40();
  v8 = sub_254406DF0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_254406DC0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2543E8094(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2543E7620(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_254406CC0();

    if (v9)
    {

      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_254406CB0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2543E7A1C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2543E7E6C(v20 + 1);
    }

    v18 = v8;
    sub_2543E7858(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
  v11 = sub_254406C20();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2543E8214(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_254406C30();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_2543E7858(uint64_t a1, uint64_t a2)
{
  sub_254406C20();
  result = sub_254406C50();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2543E78DC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_254406C20();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_2543E51AC(0, &qword_27F5F8E60, 0x277D14380);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_254406C30();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t sub_2543E7A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
    v2 = sub_254406D20();
    v15 = v2;
    sub_254406C70();
    if (sub_254406CE0())
    {
      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2543E7E6C(v9 + 1);
        }

        v2 = v15;
        result = sub_254406C20();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_254406CE0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2543E7C0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  result = sub_254406D10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_254406DE0();
      sub_254406B40();
      result = sub_254406DF0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2543E7E6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
  result = sub_254406D10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_254406C20();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2543E8094(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2543E7C0C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2543E8384();
      goto LABEL_16;
    }

    sub_2543E8630(v8 + 1);
  }

  v10 = *v4;
  sub_254406DE0();
  sub_254406B40();
  result = sub_254406DF0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_254406DC0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_254406DD0();
  __break(1u);
  return result;
}

void sub_2543E8214(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2543E7E6C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2543E84E0();
      goto LABEL_12;
    }

    sub_2543E8868(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_254406C20();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_254406C30();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_254406DD0();
  __break(1u);
}

void *sub_2543E8384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  v2 = *v0;
  v3 = sub_254406D00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2543E84E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
  v2 = *v0;
  v3 = sub_254406D00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2543E8630(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  result = sub_254406D10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_254406DE0();

      sub_254406B40();
      result = sub_254406DF0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2543E8868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
  result = sub_254406D10();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_254406C20();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_2543E8A7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2543E8A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2543E8A9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E80, &qword_254409E98);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_2543E8BA8(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_2543E8DFC((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2543E8D6C(v11, v6, a2, a1);

    MEMORY[0x259C0B7F0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2543E8D6C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2543E8DFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2543E8DFC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_254406DE0();

      sub_254406B40();
      v26 = sub_254406DF0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_254406DC0() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2543E91D8(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_254406DE0();

      sub_254406B40();
      v39 = sub_254406DF0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_254406DC0() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2543E91D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  result = sub_254406D30();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_254406DE0();

    sub_254406B40();
    result = sub_254406DF0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2543E93FC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C0B110](a1, a2, v7);
      sub_2543E51AC(0, &qword_27F5F8E78, 0x277CD1650);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2543E51AC(0, &qword_27F5F8E78, 0x277CD1650);
    if (sub_254406C90() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_254406CA0();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_254406C20();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_254406C30();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_2543E9620(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C0B010](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2543E74D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2543E96B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2543E96C4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2543E51AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2543E97D0(uint64_t a1, uint64_t a2)
{
  sub_254406DE0();
  sub_254406B40();
  v4 = sub_254406DF0();

  return sub_2543E9848(a1, a2, v4);
}

unint64_t sub_2543E9848(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_254406DC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _sSo31HRERecommendableObjectUtilitiesC24HomeRecommendationEngineE013recommendableB0_10involvedIn17snapshotContainerSbSo24HFAccessoryRepresentable_So0aB8Protocolp_SDySSSo12HREActionMapCGSo016HFMatterSnapshotK0CSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_254406AC0();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_254406B00();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if ((sub_254406C00() & 1) == 0)
  {
    return 0;
  }

  v46 = v8;
  v47 = a2;
  v17 = sub_254406BF0();
  v18 = (v17 & 0xC000000000000001) != 0 ? sub_254406CB0() : *(v17 + 16);

  if (v18 != 1)
  {
    return 0;
  }

  v19 = sub_254406BF0();
  v20 = sub_2543E6380(v19);

  if (!v20)
  {
    return 0;
  }

  if (!a3)
  {

    (*(v49 + 56))(v13, 1, 1, v14);
    goto LABEL_11;
  }

  sub_254406C10();
  v21 = v49;
  if ((*(v49 + 48))(v13, 1, v14) == 1)
  {

LABEL_11:
    v22 = &qword_27F5F8B20;
    v23 = &qword_254409E50;
    v24 = v13;
LABEL_12:
    sub_2543E50A0(v24, v22, v23);
    return 0;
  }

  (*(v21 + 32))(v16, v13, v14);
  sub_254406AF0();
  v26 = v48;
  v27 = v46;
  if ((*(v48 + 48))(v7, 1, v46) == 1)
  {
    (*(v21 + 8))(v16, v14);

    v22 = &unk_27F5F8D80;
    v23 = &qword_254409E48;
    v24 = v7;
    goto LABEL_12;
  }

  (*(v26 + 32))(v10, v7, v27);
  v28 = sub_254406AB0();
  v29 = sub_2543E7154(v28);

  v30 = sub_2543E9620(v29);

  v31 = v30 + 56;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 56);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v45 = v20;
  while (v34)
  {
    v37 = v34;
LABEL_26:
    v34 = (v37 - 1) & v37;
    if (*(v47 + 16))
    {
      v39 = (*(v30 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v37)))));
      v40 = v30;
      v42 = *v39;
      v41 = v39[1];

      sub_2543E97D0(v42, v41);
      LOBYTE(v42) = v43;
      v30 = v40;
      v20 = v45;

      if (v42)
      {

        v44 = 1;
LABEL_30:

        (*(v48 + 8))(v10, v46);
        (*(v49 + 8))(v16, v14);

        return v44;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      v44 = 0;
      goto LABEL_30;
    }

    v37 = *(v31 + 8 * v38);
    ++v36;
    if (v37)
    {
      v36 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2543E9E04()
{
  result = qword_27F5F8B08;
  if (!qword_27F5F8B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5F8B08);
  }

  return result;
}

void sub_2543F8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HRETelevisionProfileType()
{
  v0 = objc_opt_class();

  return [v0 description];
}

uint64_t HRECameraProfileType()
{
  v0 = objc_opt_class();

  return [v0 description];
}

uint64_t HRELightProfileType()
{
  v0 = objc_opt_class();

  return [v0 description];
}

void *_HRELocalizedStringWithDefaultValue(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = HREHomeRecommendationBundle();
  v8 = [v7 localizedStringForKey:v5 value:@"_" table:@"HRELocalizable"];

  v9 = [@"_" isEqualToString:v8];
  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v9 && a3)
  {
    NSLog(&cfstr_MissingLocaliz.isa, v5, @"HRELocalizable");
    v10 = v6;
  }

  v11 = v10;

  return v10;
}

id HREHomeRecommendationBundle()
{
  if (qword_27F5F9810 != -1)
  {
    dispatch_once(&qword_27F5F9810, &__block_literal_global_10);
  }

  v1 = _MergedGlobals_25;

  return v1;
}

uint64_t __HREHomeRecommendationBundle_block_invoke()
{
  _MergedGlobals_25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_2543FF1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2543FFB14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_254401D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}