void sub_27522B788(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(a3 + 8);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_27522F2F8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27522BD20;
  aBlock[3] = &block_descriptor_23;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  v15 = [a2 requestRepresentationWithOptions:v14 completionHandler:v13];
  _Block_release(v13);
}

void sub_27522B964(void *a1)
{
  v2 = sub_27522F9FC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_27522F51C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  if (a1)
  {
    v10 = a1;
    v11 = [v10 contentURL];
    if (v11)
    {
      v12 = v11;
      sub_27522F50C();

      (*(v4 + 32))(v9, v7, v3);
      sub_27522F9EC();
      v13 = sub_27522F97C();
      v36 = v14;
      v37 = v13;
      v15 = [v10 requestedHeaders];
      if (v15 && (v16 = v15, v17 = [v15 firstHeaderForKey_], v16, v17))
      {
        v18 = sub_27522F9BC();
        v34 = v19;
        v35 = v18;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v20 = [v10 requestedHeaders];
      if (v20 && (v21 = v20, v22 = [v20 firstHeaderForKey_], v21, v22))
      {
        v23 = sub_27522F9BC();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v26 = [v10 requestedHeaders];
      if (v26)
      {
        v27 = v23;
        v28 = v26;
        v29 = [v26 &selRef:*MEMORY[0x277D06FB8] encodeAsIDsFrom:? + 5];

        if (v29)
        {
          v30 = sub_27522F9BC();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v23 = v27;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      *&v38 = v37;
      *(&v38 + 1) = v36;
      *&v39 = v35;
      *(&v39 + 1) = v34;
      *&v40 = v23;
      *(&v40 + 1) = v25;
      *&v41 = v30;
      *(&v41 + 1) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
      sub_27522FBEC();

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
      sub_27522FBEC();
    }
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
    sub_27522FBEC();
  }
}

void sub_27522BD20(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_27522BDB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27522BE50;

  return MessageExtractor.next()(a1);
}

uint64_t sub_27522BE50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27522BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_27522BFE4;

  return MessageExtractor.next()(a1);
}

uint64_t sub_27522BFE4()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_27522FBBC();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_27522C154, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_27522C154()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB8, &qword_275231340);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t groupAndSortMessages(_:)(uint64_t a1)
{
  v2 = sub_27522F7CC();
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    v7 = 0;
    v10 = MEMORY[0x277D84F98];
LABEL_21:
    v34 = sub_275228AFC(v10);

    sub_27522EC64(v7, 0);
    return v34;
  }

  v7 = 0;
  v38 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = a1 + v38;
  v9 = *(v3 + 72);
  v39 = (v3 + 16);
  v36 = (v3 + 32);
  v37 = v9;
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = sub_27522F77C();
    v12 = v5;
    v13 = v2;
    (*v39)(v5, v8, v2);
    sub_27522EC64(v7, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v10;
    v16 = sub_27521CC84(v11);
    v17 = v10[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (v10[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v15)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_27521C32C();
        v10 = v40;
        if (v20)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_27521BBC4(v19, isUniquelyReferenced_nonNull_native);
      v10 = v40;
      v21 = sub_27521CC84(v11);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_24;
      }

      v16 = v21;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    v10[(v16 >> 6) + 8] |= 1 << v16;
    *(v10[6] + 8 * v16) = v11;
    *(v10[7] + 8 * v16) = MEMORY[0x277D84F90];
    v23 = v10[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_23;
    }

    v10[2] = v25;
LABEL_12:
    v26 = v10[7];
    v27 = *(v26 + 8 * v16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 8 * v16) = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_275227CA8(0, v27[2] + 1, 1, v27);
      *(v26 + 8 * v16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_275227CA8((v29 > 1), v30 + 1, 1, v27);
      *(v26 + 8 * v16) = v27;
    }

    v27[2] = v30 + 1;
    v31 = v27 + v38;
    v32 = v37;
    v33 = &v31[v30 * v37];
    v5 = v12;
    v2 = v13;
    (*v36)(v33, v12, v13);
    v8 += v32;
    v7 = sub_27522C520;
    if (!--v6)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_27522FEDC();
  __break(1u);
  return result;
}

uint64_t sub_27522C530(uint64_t a1)
{
  v2 = sub_27522F7CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v7 = sub_27521C61C(MEMORY[0x277D84F90]);
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_27:
    v55 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B3DE0, &qword_275231288);
    sub_27522372C(&qword_2809B3C60, &unk_2809B3DE0, &qword_275231288, MEMORY[0x277D83958]);
    v45 = sub_27522F95C();

    return v45;
  }

  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v51 = v2;
  v52 = v10;
  v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v47 = *(v9 + 56);
  v48 = (v9 - 8);
  v49 = v5;
  v50 = v9;
  while (1)
  {
    v52(v5, v11, v2);
    v12 = sub_27522F7BC();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_27522F7BC();
      v16 = sub_27522FA1C();
      v18 = v17;
    }

    else
    {
      v18 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    v20 = v7 + 2;
    v19 = v7[2];
    v53 = v6;
    if (v19)
    {
      v21 = sub_27521B594(v16, v18);
      if (v22)
      {
        v20 = (v7[7] + 8 * v21);
      }
    }

    v23 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v7;
    v26 = sub_27521B594(v16, v18);
    v27 = v7[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v7[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_27521C1C4();
        if (v30)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_27521B924(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_27521B594(v16, v18);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_30;
      }

      v26 = v31;
      if (v30)
      {
LABEL_18:

        v7 = v55;
        *(*(v55 + 56) + 8 * v26) = v23;
        goto LABEL_22;
      }
    }

    v7 = v55;
    *(v55 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v33 = (v7[6] + 16 * v26);
    *v33 = v16;
    v33[1] = v18;
    *(v7[7] + 8 * v26) = v23;
    v34 = v7[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_29;
    }

    v7[2] = v36;
LABEL_22:
    v54 = v23;
    v55 = 0x207265646E6553;
    v56 = 0xE700000000000000;
    v37 = sub_27522FE9C();
    MEMORY[0x277C6E4A0](v37);

    MEMORY[0x277C6E4A0](8250, 0xE200000000000000);
    v5 = v49;
    v38 = sub_27522F78C();
    MEMORY[0x277C6E4A0](v38);

    v39 = v55;
    v40 = v56;
    v6 = v53;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v2 = v51;
    if ((v41 & 1) == 0)
    {
      v6 = sub_27522795C(0, *(v6 + 2) + 1, 1, v6);
    }

    v43 = *(v6 + 2);
    v42 = *(v6 + 3);
    if (v43 >= v42 >> 1)
    {
      v6 = sub_27522795C((v42 > 1), v43 + 1, 1, v6);
    }

    (*v48)(v5, v2);
    *(v6 + 2) = v43 + 1;
    v44 = &v6[16 * v43];
    *(v44 + 4) = v39;
    *(v44 + 5) = v40;
    v11 += v47;
    if (!--v8)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_27522FEDC();
  __break(1u);
  return result;
}

uint64_t filterBySender(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D80, &qword_2752316C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  sub_27522F83C();
  sub_27522F7BC();
  v4 = sub_27522FA1C();
  v6 = v5;

  v9[1] = v4;
  v9[2] = v6;
  sub_27522EC74();
  sub_27522372C(&qword_2809B3D90, &qword_2809B3D80, &qword_2752316C0, MEMORY[0x277D85AC0]);
  v7 = sub_27522F94C();

  (*(v1 + 8))(v3, v0);
  return v7 & 1;
}

uint64_t sub_27522CBD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27522CC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27522CCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageExtractor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_27522CD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E58, &unk_275231830);
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

char *sub_27522CE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E50, &qword_275231828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_27522CF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CC0, &qword_275231390);
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

void *sub_27522D068(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_27522D244(uint64_t *a1)
{
  v2 = *(sub_27522F7CC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_27522EC18(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_27522D2EC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_27522D2EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27522FE8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_27522F7CC();
        v6 = sub_27522FB9C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_27522F7CC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_27522D7B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_27522D418(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27522D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_27522F5CC();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_27522F7CC();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_27522F79C();
      v32 = v59;
      sub_27522F79C();
      v62 = sub_27522F59C();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27522D7B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_27522F5CC();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v133 - v11;
  v12 = sub_27522F7CC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v133 - v19;
  result = MEMORY[0x28223BE20](v18);
  v160 = &v133 - v21;
  v22 = a3[1];
  v145 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_27522EB20(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_27522E3B8(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_27522EB20(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_27522EA94(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      sub_27522F79C();
      v34 = v158;
      sub_27522F79C();
      LODWORD(v148) = sub_27522F59C();
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        sub_27522F79C();
        v46 = v158;
        sub_27522F79C();
        LOBYTE(v161) = sub_27522F59C() & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275227E80(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_275227E80((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_27522E3B8(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_27522EB20(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_27522EA94(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v145[1];
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    sub_27522F79C();
    v120 = v158;
    sub_27522F79C();
    LODWORD(v161) = sub_27522F59C();
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_27522E3B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_27522F5CC();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v56 - v10;
  v72 = sub_27522F7CC();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_27522F79C();
            v49 = v67;
            sub_27522F79C();
            v69 = sub_27522F59C();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_27522F79C();
        v29 = v67;
        sub_27522F79C();
        v69 = sub_27522F59C();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_27522EB34(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_27522EA94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_27522EB20(v3);
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

uint64_t sub_27522EB34(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_27522F7CC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_27522EC64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_27522EC74()
{
  result = qword_2809B3D88;
  if (!qword_2809B3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3D88);
  }

  return result;
}

uint64_t sub_27522ED30(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_27522EE00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_27522EEB0(uint64_t a1)
{
  sub_2752286C8(319, &qword_2809B3DB8, 0x277D06D78);
  if (v1 <= 0x3F)
  {
    sub_2752286C8(319, &qword_2809B3DC0, 0x277D06D60);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ECMessageBodyStringAccumulatorOptions(319);
      if (v3 <= 0x3F)
      {
        sub_27522EFB8(319);
        if (v4 <= 0x3F)
        {
          sub_27522F010(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27522EFB8(uint64_t a1)
{
  if (!qword_2809B3DC8)
  {
    sub_27522F5CC();
    v1 = sub_27522FCAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2809B3DC8);
    }
  }
}

void sub_27522F010(uint64_t a1)
{
  if (!qword_2809B3DD0)
  {
    sub_2752286C8(255, &qword_2809B3DD8, 0x277D06DB8);
    v1 = sub_27522FBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2809B3DD0);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27522F08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_27522F0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27522F134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageExtractor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27522F198(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_27522F1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27522F21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27522F264()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_27522F2F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);

  sub_27522B964(a1);
}

uint64_t sub_27522F394()
{
  v0 = sub_27522F87C();
  __swift_allocate_value_buffer(v0, qword_2809B5470);
  __swift_project_value_buffer(v0, qword_2809B5470);
  return sub_27522F86C();
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