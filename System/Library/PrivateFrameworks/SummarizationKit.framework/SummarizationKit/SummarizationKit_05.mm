uint64_t sub_22804278C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v82 = a4;
  v90 = sub_228136CDC();
  v7 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22813804C();
  v81 = *(v96 - 8);
  v9 = MEMORY[0x28223BE20](v96);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v74 - v12;
  v94 = sub_22813889C();
  v97 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_22813713C();
  v92 = *(v18 - 8);
  v93 = v18;
  MEMORY[0x28223BE20](v18);
  v91 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22813716C();
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  v85 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22813701C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v78 = a1;
  v88 = v11;
  v79 = v25;
  v27 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v83 = v23;
  v84 = v22;
  v76 = a3;
  v75 = a2;
  v77 = v7;
  if (byte_2813C4629)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v28 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v28 = &qword_2813C76F8;
  }

  v29 = *(*v28 + 1608);
  v30 = *(*v28 + 1616);
  v80 = *(*v28 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v30(&v98, v80);

    v29 = v98;
    v32 = v83;
    v31 = v84;
    if (!v98)
    {
      return 0;
    }
  }

  else
  {

    v32 = v83;
    v31 = v84;
    if (!v29)
    {
      return 0;
    }
  }

  v33 = v17;
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v34 = v85;
  sub_228139B6C();
  v35 = v91;
  sub_22813715C();
  v86[1](v34, v87);
  sub_22813710C();
  (*(v92 + 8))(v35, v93);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {

    sub_2280457D0(v33, &qword_27D81E328, &qword_2281402C0);
    return 0;
  }

  v36 = v79;
  (*(v32 + 32))(v79, v33, v31);
  v98 = sub_228136FFC();
  v99 = v37;
  MEMORY[0x28223BE20](v98);
  *(&v74 - 2) = &v98;
  v38 = sub_2280B866C(v82, (&v74 - 4), v29);

  if ((v38 & 1) == 0)
  {
    (*(v32 + 8))(v36, v31);
    return 0;
  }

  v93 = *(v97 + 16);
  v39 = v78 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v40 = *(v97 + 72);
  v41 = (v81 + 8);
  v97 += 16;
  v91 = (v97 - 8);
  v92 = v40;
  v86 = (v77 + 8);
  v87 = MEMORY[0x277D84F90];
  v42 = v88;
  v43 = v94;
  v93(v14, v39, v94);
  while (1)
  {
    v44 = v95;
    sub_22813887C();
    sub_22813802C();
    v45 = sub_22813803C();
    v46 = *v41;
    v47 = v14;
    v48 = v96;
    (*v41)(v42, v96);
    v46(v44, v48);
    if (v45)
    {
      v49 = sub_22813888C();
      v14 = v47;
      if (v50)
      {
        v51 = v49;
        v52 = v50;
        v98 = v49;
        v99 = v50;
        v53 = v89;
        sub_228136C8C();
        sub_227FDB420();
        v54 = sub_2281397AC();
        v56 = v55;
        (*v86)(v53, v90);

        v57 = HIBYTE(v56) & 0xF;
        if ((v56 & 0x2000000000000000) == 0)
        {
          v57 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (v57)
        {
          v98 = 34;
          v99 = 0xE100000000000000;
          MEMORY[0x22AAB1970](v51, v52);

          MEMORY[0x22AAB1970](34, 0xE100000000000000);
          v58 = v98;
          v59 = v99;
          (*v91)(v14, v94);
          v60 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_2281338C0(0, *(v60 + 2) + 1, 1, v60);
          }

          v62 = *(v60 + 2);
          v61 = *(v60 + 3);
          if (v62 >= v61 >> 1)
          {
            v60 = sub_2281338C0((v61 > 1), v62 + 1, 1, v60);
          }

          *(v60 + 2) = v62 + 1;
          v87 = v60;
          v63 = &v60[16 * v62];
          *(v63 + 4) = v58;
          *(v63 + 5) = v59;
          v42 = v88;
          v43 = v94;
        }

        else
        {
          v43 = v94;
          (*v91)(v14, v94);

          v42 = v88;
        }
      }

      else
      {
        v43 = v94;
        (*v91)(v47, v94);
      }
    }

    else
    {
      (*v91)(v47, v43);
      v14 = v47;
    }

    v39 += v92;
    if (!--v26)
    {
      break;
    }

    v93(v14, v39, v43);
  }

  if (!*(v87 + 16))
  {

    (*(v83 + 8))(v79, v84);
    return 0;
  }

  v98 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
  v64 = sub_22813925C();
  v66 = v65;

  if (v76)
  {
    v67 = v75;
  }

  else
  {
    v67 = 0;
  }

  if (v76)
  {
    v68 = v76;
  }

  else
  {
    v68 = 0xE000000000000000;
  }

  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  v71 = v83;
  v70 = v84;
  if (v69)
  {
    v98 = 0;
    v99 = 0xE000000000000000;

    sub_22813988C();

    v98 = v67;
    v99 = v68;
    MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228145FC0);
  }

  else
  {

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_22813988C();

    v98 = 0xD000000000000019;
    v99 = 0x8000000228145FE0;
  }

  MEMORY[0x22AAB1970](v64, v66);

  MEMORY[0x22AAB1970](46, 0xE100000000000000);
  v73 = v98;
  (*(v71 + 8))(v79, v70);
  return v73;
}

Swift::String __swiftcall SKMailMessage.preprocessForLanguageCheck()()
{
  v0 = sub_22813895C();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_22813893C();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v9 = sub_2280433F4(inited);
  v11 = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_2280433F4(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
      v13 = sub_22813925C();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228043AD4(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_228043AD4((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_228043584(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_22804561C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
      v13 = sub_22813925C();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228043AD4(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_228043AD4((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_228043714(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280437A8;

  return SKMailMessage.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280437A8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280439EC@<X0>(os_unfair_lock_s **a1@<X0>, const char *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  KeyPath = swift_getKeyPath(a2);
  os_unfair_lock_lock((v4 + 16));
  v6 = sub_2280D2D08((v4 + 24), KeyPath);
  v8 = v7;
  os_unfair_lock_unlock((v4 + 16));

  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  return result;
}

char *sub_228043AB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228043D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043AD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228043E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043AF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228043F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228043B14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB18, &qword_22813DA60, MEMORY[0x277CC9740]);
  *v3 = result;
  return result;
}

void *sub_228043B58(void *a1, int64_t a2, char a3)
{
  result = sub_227FCCB58(a1, a2, a3, *v3, &qword_27D81EB98, &qword_22813DAE8, &qword_27D81EBA0, &qword_22813DAF0);
  *v3 = result;
  return result;
}

void *sub_228043B98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB48, &unk_22813DA90, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_228043BDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280440A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043BFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280441D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043C1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280442D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043C3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280443F8(a1, a2, a3, *v3, &qword_27D81EB68, &qword_22813DAB8);
  *v3 = result;
  return result;
}

char *sub_228043C6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280443F8(a1, a2, a3, *v3, &qword_27D81EB70, &qword_22813DAC0);
  *v3 = result;
  return result;
}

char *sub_228043C9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280444F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228043CBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB60, &qword_22813DAB0, MEMORY[0x277CC8C40]);
  *v3 = result;
  return result;
}

char *sub_228043D00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280447C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228043D20(void *a1, int64_t a2, char a3)
{
  result = sub_227FCCB58(a1, a2, a3, *v3, &qword_27D81EB38, &unk_22813DA80, &qword_27D81EB40, &qword_228142EC0);
  *v3 = result;
  return result;
}

char *sub_228043D60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280448F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228043D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA8, &qword_22813DAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_228043E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_228043F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB28, &qword_22813DA70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

void *sub_2280440A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB20, &qword_22813DA68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2280441D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB88, &qword_22813DAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_2280442D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB80, &qword_22813DAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2280443F8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_2280444F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB78, &qword_22813DAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

void *sub_2280445E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size_1(v17);
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

char *sub_2280447C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB58, &qword_22813DAA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

char *sub_2280448F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

uint64_t sub_228044A14(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void))
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, &v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a3;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_0(&v16, v17);
    MEMORY[0x28223BE20](v9);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);

    sub_228045234(v11, a2, isUniquelyReferenced_nonNull_native, &v15, v8, a4);
    __swift_destroy_boxed_opaque_existential_0(&v16);

    *a3 = v15;
  }

  else
  {
    sub_2280457D0(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, &v16);

    return sub_2280457D0(&v16, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228044BA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a3;

    sub_228044E30(v8, a2, isUniquelyReferenced_nonNull_native, &v7);

    *a3 = v7;
  }

  else
  {
    sub_2280457D0(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v8);

    return sub_2280457D0(v8, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228044D4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t *, uint64_t, uint64_t *, uint64_t))
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a3;

    a5(v12, a2, isUniquelyReferenced_nonNull_native, &v11, a4);

    *a3 = v11;
  }

  else
  {
    sub_2280457D0(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v12);

    return sub_2280457D0(v12, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

uint64_t sub_228044E30(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v8 = a1[3];
  v9 = __swift_mutable_project_boxed_opaque_existential_0(a1, v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  sub_228045830(v11, a2, v5, a4, v8);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

_OWORD *sub_228044F24(_OWORD *a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(uint64_t, void))
{
  v10 = *a4;
  v11 = a5(a2, *a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_22801D03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2280196BC(v16, a3 & 1);
    v11 = a5(a2, *a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *a4;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_227FE5EAC(a1, v22);
  }

  else
  {
    sub_2280451CC(v11, a2, a1, v21);
  }
}

_OWORD *sub_228045078(_OWORD *a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(uint64_t, void))
{
  v10 = *a4;
  v11 = a5(a2, *a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_22801D03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2280196BC(v16, a3 & 1);
    v11 = a5(a2, *a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *a4;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_227FE5EAC(a1, v22);
  }

  else
  {
    sub_2280451CC(v11, a2, a1, v21);
  }
}

_OWORD *sub_2280451CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_228045234(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, void))
{
  v31 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v13 = *a4;
  v15 = a6(a2, *a4);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_227FE5EAC(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v18, a3 & 1);
  v24 = a6(a2, *a4);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  MEMORY[0x28223BE20](v26);
  v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_228045A48(v15, a2, v28, v21, a5);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

uint64_t sub_228045458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228041788();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t objectdestroyTm_4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280454D4(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (*(v1 + 16) >= 2uLL)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v3 = sub_22813882C();
    __swift_project_value_buffer(v3, qword_2813C8A20);
    sub_228045B14(a1, v9);
    v4 = sub_22813880C();
    v5 = sub_2281396DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(v10 + 16);
      sub_228045B70(v9);
      *(v6 + 4) = v7;
      _os_log_impl(&dword_227FC3000, v4, v5, "Expect only one summarization style. Received %ld.", v6, 0xCu);
      MEMORY[0x22AAB28A0](v6, -1, -1);
    }

    else
    {
      sub_228045B70(v9);
    }
  }

  return sub_22803C5FC(v1, &unk_283B5B308) & 1;
}

uint64_t sub_22804561C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for SKMailMessage(uint64_t a1)
{
  result = qword_2813C7AA0;
  if (!qword_2813C7AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280456D8(uint64_t a1)
{
  result = sub_22813899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228045760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280457D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_228045830(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v29 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_227FEB40C();
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_227FE5EAC(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v16, a3 & 1);
  v22 = sub_227FEB40C();
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v29);
  MEMORY[0x28223BE20](v24);
  v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_228045A48(v13, a2, v26, v19, a5);
  __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_228045A48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v16 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(&v15, (a4[7] + 32 * a1));
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

uint64_t sub_228045BC4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2281399BC() & 1;
  }
}

void *sub_228045C90@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = [v4 rangeAtIndex_];
  v8 = v7;
  sub_22813967C();
  if (v9)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v10 = sub_22813882C();
    __swift_project_value_buffer(v10, qword_2813C89F0);
    v11 = sub_22813880C();
    v12 = sub_2281396EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_227FC3000, v11, v12, "Unexpected failure converting match range to string range.", v13, 2u);
      MEMORY[0x22AAB28A0](v13, -1, -1);
    }

    v14 = sub_22813927C();
    v15 = [v14 substringWithRange_];

    v16 = sub_2281392AC();
    v18 = v17;

    a4[3] = MEMORY[0x277D837D0];
    result = sub_227FDB420();
    a4[4] = result;
    *a4 = v16;
    a4[1] = v18;
  }

  else
  {
    v20 = sub_22813948C();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    a4[3] = MEMORY[0x277D83E40];
    a4[4] = sub_228045E64();
    result = swift_allocObject();
    *a4 = result;
    result[2] = v20;
    result[3] = v22;
    result[4] = v24;
    result[5] = v26;
  }

  return result;
}

unint64_t sub_228045E64()
{
  result = qword_2813C4718;
  if (!qword_2813C4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4718);
  }

  return result;
}

uint64_t sub_228045EB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6709621;
    }

    else
    {
      v4 = 1752457584;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C646E7562;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE300000000000000;
  v8 = 6709621;
  if (a2 != 2)
  {
    v8 = 1752457584;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656C646E7562;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2281399BC();
  }

  return v11 & 1;
}

uint64_t sub_228045FD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656761;
  v3 = 0x7373654D6C69616DLL;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0x80000002281438E0;
    v10 = 0xD000000000000011;
    if (a1 == 4)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x8000000228143900;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v10;
    }

    if (v4 == 3)
    {
      v8 = 0x80000002281438C0;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
    v6 = 0xEC0000006E6F6974;
    if (a1 != 1)
    {
      v5 = 0x7373654D74786574;
      v6 = 0xEB00000000656761;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x7373654D6C69616DLL;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEB00000000656761;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000012;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (a2 == 4)
      {
        v2 = 0x80000002281438E0;
      }

      else
      {
        v2 = 0x8000000228143900;
      }

      if (v7 != v11)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0xD000000000000011;
    v2 = 0x80000002281438C0;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEC0000006E6F6974;
      if (v7 != 0x6163696669746F6ELL)
      {
        goto LABEL_38;
      }
    }

    else if (v7 != 0x7373654D74786574)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != v3)
  {
LABEL_38:
    v12 = sub_2281399BC();
    goto LABEL_39;
  }

LABEL_35:
  if (v8 != v2)
  {
    goto LABEL_38;
  }

  v12 = 1;
LABEL_39:

  return v12 & 1;
}

uint64_t sub_2280461C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656E694C706F74;
    }

    else
    {
      v3 = 0x6369706F74;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x736973706F6E7973;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F436C6175736976;
    v4 = 0xEE0073747065636ELL;
  }

  else
  {
    v3 = 0x6F546C6175736976;
    v4 = 0xED0000656E694C70;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656E694C706F74;
    }

    else
    {
      v9 = 0x6369706F74;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F436C6175736976;
    v6 = 0xEE0073747065636ELL;
    if (a2 != 3)
    {
      v5 = 0x6F546C6175736976;
      v6 = 0xED0000656E694C70;
    }

    if (a2 == 2)
    {
      v7 = 0x736973706F6E7973;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2281399BC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_228046378(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    for (i = v5; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      result = sub_22813713C() - 8;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = sub_2280EB0D0(a2, &v17);
      if (v2)
      {

        return v6;
      }

      v8 = v18;
      if (v18)
      {
        break;
      }

      if (v5 == v3)
      {
        return v6;
      }
    }

    v9 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2281338C0(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v10 = *(v6 + 16);
    v11 = *(v6 + 24);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v16 = v10 + 1;
      v14 = v6;
      v15 = *(v6 + 16);
      result = sub_2281338C0((v11 > 1), v10 + 1, 1, v14);
      v10 = v15;
      v12 = v16;
      v6 = result;
    }

    *(v6 + 16) = v12;
    v13 = v6 + 16 * v10;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
  }

  while (v5 != v3);
  return v6;
}

uint64_t sub_228046520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059D8C;

  return sub_2280465F4(a1, a2, a3, a4);
}

uint64_t sub_2280465F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280466F4, 0, 0);
}

uint64_t sub_2280466F4()
{
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v1 = SKMailMessage.preprocessForLanguageCheck()();
  v0[11] = v1._object;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22813882C();
  v3 = __swift_project_value_buffer(v2, qword_2813C8A20);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_228046834;
  v5 = v0[10];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_2280C5BB0(v8, v1._countAndFlagsBits, v1._object, v5, v6, v7, v3);
}

uint64_t sub_228046834()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_228046B98;
  }

  else
  {
    v2 = sub_228046964;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228046964()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_228046C28;
      v9 = v0[9];
      v10 = v0[3];
      v11 = v0[4];

      return sub_22804BFE0(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228046B98()
{
  sub_228059C78(*(v0 + 80), &qword_27D81E778, &qword_22813BC80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228046C28()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228046E20;
  }

  else
  {
    v5 = sub_228046D98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228046D98()
{
  sub_228059C78(*(v0 + 80), &qword_27D81E778, &qword_22813BC80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228046E20()
{
  v1 = v0[2];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v3 = v0[1];

  return v3();
}

uint64_t sub_228046EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22813713C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228046FEC, 0, 0);
}

uint64_t sub_228046FEC()
{
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = sub_22813882C();
  v2 = __swift_project_value_buffer(v1, qword_2813C8A20);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22804710C;
  v4 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2280C5BB0(v9, v5, v6, v4, v7, v8, v2);
}

uint64_t sub_22804710C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_228047454;
  }

  else
  {
    v2 = sub_228047220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228047220()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_2280474E4;
      v9 = v0[10];
      v10 = v0[3];
      v11 = v0[4];

      return sub_22804CDFC(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228047454()
{
  sub_228059C78(*(v0 + 88), &qword_27D81E778, &qword_22813BC80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280474E4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2280476DC;
  }

  else
  {
    v5 = sub_228047654;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228047654()
{
  sub_228059C78(*(v0 + 88), &qword_27D81E778, &qword_22813BC80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280476DC()
{
  v1 = v0[2];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2280477A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280478A8, 0, 0);
}

uint64_t sub_2280478A8()
{
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v1 = sub_2280A0AE8();
  v3 = v2;
  v0[11] = v2;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  v5 = __swift_project_value_buffer(v4, qword_2813C8A20);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_2280479E8;
  v7 = v0[10];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_2280C5BB0(v10, v1, v3, v7, v8, v9, v5);
}

uint64_t sub_2280479E8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_228059DB0;
  }

  else
  {
    v2 = sub_228047B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228047B18()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_228047D4C;
      v9 = v0[9];
      v10 = v0[3];
      v11 = v0[4];

      return sub_22804DC18(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228047D4C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228059D7C;
  }

  else
  {
    v5 = sub_228059E70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228047EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228047FBC, 0, 0);
}

uint64_t sub_228047FBC()
{
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v1 = sub_228138A6C();
  v0[11] = v2;
  if (qword_2813C49E0 != -1)
  {
    v13 = v1;
    v14 = v2;
    swift_once();
    v2 = v14;
    v1 = v13;
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_22813882C();
  v6 = __swift_project_value_buffer(v5, qword_2813C8A20);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_228048118;
  v8 = v0[10];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_2280C5BB0(v11, v4, v3, v8, v9, v10, v6);
}

uint64_t sub_228048118()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_228059DB4;
  }

  else
  {
    v2 = sub_228048254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228048254()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_228048488;
      v9 = v0[9];
      v10 = v0[3];
      v11 = v0[4];

      return sub_22804EA34(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228048488()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228059D80;
  }

  else
  {
    v5 = sub_228059E74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280485F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22813713C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280486F8, 0, 0);
}

uint64_t sub_2280486F8()
{
  (*(v0[8] + 56))(v0[10], 1, 1, v0[7]);
  v1 = SKUserNotification.preprocessForLanguageCheck()();
  v0[11] = v1._object;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22813882C();
  v3 = __swift_project_value_buffer(v2, qword_2813C8A20);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_228048838;
  v5 = v0[10];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_2280C5BB0(v8, v1._countAndFlagsBits, v1._object, v5, v6, v7, v3);
}

uint64_t sub_228048838()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_228059DB8;
  }

  else
  {
    v2 = sub_228048968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228048968()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_228048B9C;
      v9 = v0[9];
      v10 = v0[3];
      v11 = v0[4];

      return sub_22804F850(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[10], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228048B9C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228059D84;
  }

  else
  {
    v5 = sub_228059E78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228048D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22813713C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228048E0C, 0, 0);
}

uint64_t sub_228048E0C()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  v0[2] = v1;
  v2 = SKMailMessageThread.preprocessForLanguageCheck()();
  v0[12] = v2._object;
  if (v3)
  {
    sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    v7 = __swift_project_value_buffer(v6, qword_2813C8A20);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_228048FCC;
    v9 = v0[11];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return sub_2280C5BB0(v12, v2._countAndFlagsBits, v2._object, v9, v10, v11, v7);
  }
}

uint64_t sub_228048FCC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_228049330;
  }

  else
  {
    v2 = sub_2280490FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280490FC()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_2280493C0;
      v9 = v0[10];
      v10 = v0[4];
      v11 = v0[5];

      return sub_22805066C(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228049330()
{
  sub_228059C78(*(v0 + 88), &qword_27D81E778, &qword_22813BC80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280493C0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2280495B8;
  }

  else
  {
    v5 = sub_228049530;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228049530()
{
  sub_228059C78(*(v0 + 88), &qword_27D81E778, &qword_22813BC80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280495B8()
{
  v1 = v0[3];
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);
  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v3 = v0[1];

  return v3();
}

uint64_t sub_228049684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22813713C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228049784, 0, 0);
}

uint64_t sub_228049784()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  v0[2] = v1;
  v2 = SKTextMessageThread.preprocessForLanguageCheck()();
  v0[12] = v2._object;
  if (v3)
  {
    sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    v7 = __swift_project_value_buffer(v6, qword_2813C8A20);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_228049944;
    v9 = v0[11];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return sub_2280C5BB0(v12, v2._countAndFlagsBits, v2._object, v9, v10, v11, v7);
  }
}

uint64_t sub_228049944()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_228059D74;
  }

  else
  {
    v2 = sub_228049A74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228049A74()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_228049CA8;
      v9 = v0[10];
      v10 = v0[4];
      v11 = v0[5];

      return sub_228051488(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228049CA8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228059EA4;
  }

  else
  {
    v5 = sub_228059E68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228049E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22813713C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228049F18, 0, 0);
}

uint64_t sub_228049F18()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  v0[2] = v1;
  v2 = SKUserNotificationThread.preprocessForLanguageCheck()();
  v0[12] = v2._object;
  if (v3)
  {
    sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    v7 = __swift_project_value_buffer(v6, qword_2813C8A20);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_22804A0D8;
    v9 = v0[11];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return sub_2280C5BB0(v12, v2._countAndFlagsBits, v2._object, v9, v10, v11, v7);
  }
}

uint64_t sub_22804A0D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_228059D78;
  }

  else
  {
    v2 = sub_22804A208;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22804A208()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_22804A43C;
      v9 = v0[10];
      v10 = v0[4];
      v11 = v0[5];

      return sub_2280522A4(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22804A43C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228059EA8;
  }

  else
  {
    v5 = sub_228059E6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22804A5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22813713C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22804A6AC, 0, 0);
}

uint64_t sub_22804A6AC()
{
  (*(v0[9] + 56))(v0[11], 1, 1, v0[8]);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = sub_22813882C();
  v2 = __swift_project_value_buffer(v1, qword_2813C8A20);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22804A7CC;
  v4 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2280C5BB0(v9, v5, v6, v4, v7, v8, v2);
}

uint64_t sub_22804A7CC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_228059DBC;
  }

  else
  {
    v2 = sub_22804A8E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22804A8E0()
{
  v1 = v0[5];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_22804AB14;
      v9 = v0[10];
      v10 = v0[3];
      v11 = v0[4];

      return sub_2280530C0(v9, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  sub_228059C78(v0[11], &qword_27D81E778, &qword_22813BC80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22804AB14()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_228059D88;
  }

  else
  {
    v5 = sub_228059E7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t Summarizable.checkSupportedLanguage(modelBundleID:requestInfo:styles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22804AD2C, 0, 0);
}

uint64_t sub_22804AD2C()
{
  v1 = v0[9];
  v2 = sub_22813713C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_22804AE10;
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_22804B7E8(v9, v10, v7, v4, v8, v5, v6);
}

uint64_t sub_22804AE10()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_228059C78(v2, &qword_27D81E778, &qword_22813BC80);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22804AF84, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22804AF84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22804B000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_228059D9C;

  return Summarizable.checkSupportedLanguage(modelBundleID:requestInfo:styles:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22804B0D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22804B440(a1, a2);
  v8 = [objc_opt_self() sharedAssistant];
  v9 = sub_22813927C();

  v10 = [v8 stringFromString:v9 byApplyingSmartQuotes:1 smartDashes:1 quotesArray:0];

  v11 = sub_2281392AC();
  v13 = v12;

  v16[0] = v11;
  v16[1] = v13;
  sub_228136C8C();
  sub_227FDB420();
  v14 = sub_2281397AC();
  (*(v5 + 8))(v7, v4);

  return v14;
}

uint64_t sub_22804B28C(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22804B614(a1, a2);
  v8 = [objc_opt_self() sharedAssistant];
  v9 = sub_22813927C();

  v10 = [v8 stringFromString:v9 byApplyingSmartQuotes:1 smartDashes:1 quotesArray:0];

  v11 = sub_2281392AC();
  v13 = v12;

  v16[0] = v11;
  v16[1] = v13;
  sub_228136C8C();
  sub_227FDB420();
  v14 = sub_2281397AC();
  (*(v5 + 8))(v7, v4);

  return v14;
}

uint64_t sub_22804B440(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_22813945C();

  v5 = sub_22812BBD0(1uLL, v3, a2);
  v7 = v6;

  if (!((v5 ^ v7) >> 14) || (sub_22813978C(), , (sub_22813920C() & 1) == 0))
  {

    goto LABEL_9;
  }

  v8 = sub_22813921C();

  if (v8)
  {
LABEL_9:

LABEL_10:

    return v3;
  }

  v9 = sub_2281391FC();

  v10 = sub_22812BBD0(1uLL, v3, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x22AAB18D0](v10, v12, v14, v16);
  v19 = v18;

  MEMORY[0x22AAB1970](v17, v19);

  return v9;
}

uint64_t sub_22804B614(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_22813945C();

  v5 = sub_22812BBD0(1uLL, v3, a2);
  v7 = v6;

  if (!((v5 ^ v7) >> 14) || (sub_22813978C(), , (sub_22813920C() & 1) == 0))
  {

    goto LABEL_9;
  }

  v8 = sub_22813921C();

  if (v8)
  {
LABEL_9:

LABEL_10:

    return v3;
  }

  v9 = sub_2281391FC();

  v10 = sub_22812BBD0(1uLL, v3, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x22AAB18D0](v10, v12, v14, v16);
  v19 = v18;

  MEMORY[0x22AAB1970](v17, v19);

  return v9;
}

uint64_t sub_22804B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_22813713C();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22804B8B4, 0, 0);
}

uint64_t sub_22804B8B4()
{
  v1 = (*(v0[8] + 24))(v0[7]);
  v0[13] = v2;
  v3 = v1;
  v4 = v2;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v5 = sub_22813882C();
  v6 = __swift_project_value_buffer(v5, qword_2813C8A20);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22804BA2C;
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return sub_2280C5BB0(v10, v3, v4, v8, v11, v9, v6);
}

uint64_t sub_22804BA2C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22804BB94, 0, 0);
  }
}

uint64_t sub_22804BB94()
{
  v1 = v0[6];
  v2 = (v1 + 32);
  v3 = *(v1 + 16);
  while (v3)
  {
    v5 = *v2;
    if (v5 <= 2 && v5 != 1 && v5 != 2)
    {

LABEL_13:
      sub_22813715C();
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_22804BD98;
      v9 = v0[12];
      v10 = v0[7];
      v11 = v0[8];
      v12 = v0[3];
      v13 = v0[4];

      return sub_228053EDC(v9, v12, v13, v10, v11);
    }

    v4 = sub_2281399BC();

    ++v2;
    --v3;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_22804BD98()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22804BF40, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22804BF40()
{
  v1 = *(v0 + 16);
  v2 = sub_22813716C();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22804BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_22804C184;

  return sub_228054D04(a2, a3);
}

uint64_t sub_22804C184(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804C284, 0, 0);
}

uint64_t sub_22804C284()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = type metadata accessor for SKMailMessage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE8, &qword_22813DCB0);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E9C, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_22804CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_22804CFA0;

  return sub_22805535C(a2, a3);
}

uint64_t sub_22804CFA0(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804D0A0, 0, 0);
}

uint64_t sub_22804D0A0()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = &type metadata for SKTextChunk;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF0, &qword_22813DCC8);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059EA0, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_22804DC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_22804DDBC;

  return sub_228055A34(a2, a3);
}

uint64_t sub_22804DDBC(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804DEBC, 0, 0);
}

uint64_t sub_22804DEBC()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = type metadata accessor for SKNoteMessage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB0, &qword_22813DB78);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059C08, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_22804EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_22804EBD8;

  return sub_22805608C(a2, a3);
}

uint64_t sub_22804EBD8(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804ECD8, 0, 0);
}

uint64_t sub_22804ECD8()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = type metadata accessor for SKTextMessage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC8, &qword_22813DC10);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E8C, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_22804F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_22804F9F4;

  return sub_2280566E4(a2, a3);
}

uint64_t sub_22804F9F4(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22804FAF4, 0, 0);
}

uint64_t sub_22804FAF4()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = type metadata accessor for SKUserNotification(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE0, &qword_22813DC88);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E98, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_22805066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_228050810;

  return sub_228056D3C(a2, a3);
}

uint64_t sub_228050810(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_228050910, 0, 0);
}

uint64_t sub_228050910()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = &type metadata for SKMailMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD0, &qword_22813DC38);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E90, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_228051488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_22805162C;

  return sub_228057394(a2, a3);
}

uint64_t sub_22805162C(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22805172C, 0, 0);
}

uint64_t sub_22805172C()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = &type metadata for SKTextMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC0, &qword_22813DBE8);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E88, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_2280522A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_228052448;

  return sub_2280579EC(a2, a3);
}

uint64_t sub_228052448(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_228052548, 0, 0);
}

uint64_t sub_228052548()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = &type metadata for SKUserNotificationThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB8, &qword_22813DBC0);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E84, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_2280530C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_22813713C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_228053264;

  return sub_228058044(a2, a3);
}

uint64_t sub_228053264(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_228053364, 0, 0);
}

uint64_t sub_228053364()
{
  v109 = v0;
  v1 = v0[36];
  if (!v1)
  {
LABEL_41:

    v94 = v0[1];
    goto LABEL_42;
  }

  v102 = *(v1 + 16);
  v97 = v0[36];
  if (!v102)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v100 = v0[32];
  v101 = (v100 + 8);
  v99 = v0 + 30;
  v96 = v0 + 29;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[30];
    (*(v100 + 16))(v0[34], v1 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v2, v0[31]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v99;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[29];
    v9 = v0[30];
    v11 = sub_228136FFC();
    v98 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v96;
      v1 = v97;
      v0 = v104;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v96;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v98 == v17)
    {

      v0 = v104;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v104;
      v1 = v97;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[27];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[27];
    if (v23 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[26];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[26];
    if (v29 == 1)
    {
      sub_228059C78(v0[26], &qword_27D81E320, &unk_22813A7D0);
      v1 = v97;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v97;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v101)(v0[34], v0[31]);
      goto LABEL_10;
    }

    v1 = v97;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v101)(v0[34], v0[31]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[34];
    v35 = v0[31];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v97;
    (*v101)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v102 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[33];
  v39 = v104[32];
  v40 = v104[31];
  v41 = v104[25];
  v42 = v104[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v104 + 2));
  sub_228004954(v41, (v104 + 7));
  sub_228004954(v41, (v104 + 12));
  sub_228004954(v41, (v104 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v104[33];
  if (v46)
  {
    v48 = v104[28];
    v49 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v49 = 136316674;
    v51 = v104[5];
    v50 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    v55 = sub_227FCC340(v52, v54, &v105);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v104[10];
    v56 = v104[11];
    __swift_project_boxed_opaque_existential_1(v104 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    v61 = sub_227FCC340(v58, v60, &v105);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v104[15];
    v62 = v104[16];
    __swift_project_boxed_opaque_existential_1(v104 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
    v67 = sub_227FCC340(v64, v66, &v105);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v104[20];
    v68 = v104[21];
    __swift_project_boxed_opaque_existential_1(v104 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v104[28];
    if (v72 == 1)
    {
      sub_228059C78(v104[28], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    (*(v104[32] + 8))(v104[33], v104[31]);
    v80 = sub_227FCC340(v75, v74, &v105);

    *(v49 + 40) = v80;
    *(v49 + 48) = 2082;
    v104[22] = &type metadata for SKText;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD8, &qword_22813DC60);
    v81 = sub_2281392EC();
    v83 = sub_227FCC340(v81, v82, &v105);

    *(v49 + 50) = v83;
    *(v49 + 58) = 2082;
    v78 = v104;
    v106 = MEMORY[0x277D84FA0];
    v84 = sub_228046378(v97, &v106);
    v107 = 91;
    v108 = 0xE100000000000000;
    v104[23] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v85 = sub_22813925C();
    v87 = v86;

    MEMORY[0x22AAB1970](v85, v87);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v88 = v107;
    v89 = v108;

    v90 = sub_227FCC340(v88, v89, &v105);

    *(v49 + 60) = v90;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v103, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v104[32];
    v77 = v104[31];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v104 + 12);
  }

  v91 = swift_allocObject();
  *(v91 + 16) = 17;
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  v92 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E94, v91);
  sub_227FDB3CC();
  swift_allocError();
  *v93 = 17;
  *(v93 + 8) = v92;
  swift_willThrow();

  v94 = v78[1];
LABEL_42:

  return v94();
}

uint64_t sub_228053EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a3;
  v5[26] = a4;
  v5[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v9 = sub_22813713C();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[36] = v10;
  *v10 = v5;
  v10[1] = sub_22805409C;

  return sub_22805869C(a2, a3, a4);
}

uint64_t sub_22805409C(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_22805419C, 0, 0);
}

uint64_t sub_22805419C()
{
  v110 = v0;
  v1 = v0[37];
  if (!v1)
  {
LABEL_41:

    v95 = v0[1];
    goto LABEL_42;
  }

  v103 = *(v1 + 16);
  v98 = v0[37];
  if (!v103)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v101 = v0[33];
  v102 = (v101 + 8);
  v100 = v0 + 31;
  v97 = v0 + 30;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[31];
    (*(v101 + 16))(v0[35], v1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v2, v0[32]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v100;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[30];
    v9 = v0[31];
    v11 = sub_228136FFC();
    v99 = v12;
    v13 = *(v5 + 8);
    v13(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v97;
      v1 = v98;
      v0 = v105;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v14 = *v97;
    v15 = sub_228136FFC();
    v17 = v16;
    v13(v14, v4);
    if (v11 == v15 && v99 == v17)
    {

      v0 = v105;
    }

    else
    {
      v18 = sub_2281399BC();

      v0 = v105;
      v1 = v98;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v0[28];
    sub_22813712C();
    v20 = sub_2281370BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = v0[28];
    if (v23 == 1)
    {
      sub_228059C78(v0[28], &qword_27D81E320, &unk_22813A7D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v25 = sub_228136FFC();
      v26 = v27;
      (*(v21 + 8))(v24, v20);
    }

    v28 = v0[27];
    sub_22813712C();
    v29 = v22(v28, 1, v20);
    v30 = v0[27];
    if (v29 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v1 = v98;
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v31 = sub_228136FFC();
    v33 = v32;
    (*(v21 + 8))(v30, v20);
    if (!v26)
    {
      v1 = v98;
      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v102)(v0[35], v0[32]);
      goto LABEL_10;
    }

    v1 = v98;
    if (!v33)
    {
      goto LABEL_29;
    }

    if (v25 == v31 && v26 == v33)
    {

LABEL_39:
      (*v102)(v0[35], v0[32]);
LABEL_40:

      goto LABEL_41;
    }

    v34 = v0[35];
    v35 = v0[32];
    v36 = sub_2281399BC();

    v37 = v35;
    v1 = v98;
    (*v102)(v34, v37);
    if (v36)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v103 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v38 = v0[34];
  v39 = v105[33];
  v40 = v105[32];
  v41 = v105[25];
  v42 = v105[24];
  v43 = sub_22813882C();
  __swift_project_value_buffer(v43, qword_2813C8A20);
  sub_228004954(v41, (v105 + 2));
  sub_228004954(v41, (v105 + 7));
  sub_228004954(v41, (v105 + 12));
  sub_228004954(v41, (v105 + 17));
  (*(v39 + 16))(v38, v42, v40);

  v44 = sub_22813880C();
  v45 = sub_2281396DC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v105[34];
  if (v46)
  {
    v48 = v105[29];
    v49 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v106 = v104;
    *v49 = 136316674;
    v51 = v105[5];
    v50 = v105[6];
    __swift_project_boxed_opaque_existential_1(v105 + 2, v51);
    v52 = (*(v50 + 16))(v51, v50);
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 2);
    v55 = sub_227FCC340(v52, v54, &v106);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v57 = v105[10];
    v56 = v105[11];
    __swift_project_boxed_opaque_existential_1(v105 + 7, v57);
    v58 = (*(*(v56 + 8) + 8))(v57);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 7);
    v61 = sub_227FCC340(v58, v60, &v106);

    *(v49 + 14) = v61;
    *(v49 + 22) = 2080;
    v63 = v105[15];
    v62 = v105[16];
    __swift_project_boxed_opaque_existential_1(v105 + 12, v63);
    v64 = (*(*(v62 + 8) + 16))(v63);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 12);
    v67 = sub_227FCC340(v64, v66, &v106);

    *(v49 + 24) = v67;
    *(v49 + 32) = 1024;
    v69 = v105[20];
    v68 = v105[21];
    __swift_project_boxed_opaque_existential_1(v105 + 17, v69);
    LODWORD(v68) = (*(*(v68 + 8) + 24))(v69);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 17);
    *(v49 + 34) = v68;
    *(v49 + 38) = 2082;
    sub_22813710C();
    v70 = sub_22813701C();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v48, 1, v70);
    v73 = v105[29];
    if (v72 == 1)
    {
      sub_228059C78(v105[29], &qword_27D81E328, &qword_2281402C0);
      v74 = 0xE300000000000000;
      v75 = 7104878;
    }

    else
    {
      v75 = sub_228136FFC();
      v74 = v79;
      (*(v71 + 8))(v73, v70);
    }

    v80 = v105[26];
    (*(v105[33] + 8))(v105[34], v105[32]);
    v81 = sub_227FCC340(v75, v74, &v106);

    *(v49 + 40) = v81;
    *(v49 + 48) = 2082;
    v105[22] = v80;
    swift_getMetatypeMetadata();
    v82 = sub_2281392EC();
    v84 = sub_227FCC340(v82, v83, &v106);

    *(v49 + 50) = v84;
    *(v49 + 58) = 2082;
    v78 = v105;
    v107 = MEMORY[0x277D84FA0];
    v85 = sub_228046378(v98, &v107);
    v108 = 91;
    v109 = 0xE100000000000000;
    v105[23] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v86 = sub_22813925C();
    v88 = v87;

    MEMORY[0x22AAB1970](v86, v88);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v89 = v108;
    v90 = v109;

    v91 = sub_227FCC340(v89, v90, &v106);

    *(v49 + 60) = v91;
    _os_log_impl(&dword_227FC3000, v44, v45, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v49, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v104, -1, -1);
    MEMORY[0x22AAB28A0](v49, -1, -1);
  }

  else
  {
    v76 = v105[33];
    v77 = v105[32];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 17);

    (*(v76 + 8))(v47, v77);
    v78 = v105;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v105 + 12);
  }

  v92 = swift_allocObject();
  *(v92 + 16) = 17;
  *(v92 + 24) = 0;
  *(v92 + 32) = 0;
  v93 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E80, v92);
  sub_227FDB3CC();
  swift_allocError();
  *v94 = 17;
  *(v94 + 8) = v93;
  swift_willThrow();

  v95 = v78[1];
LABEL_42:

  return v95();
}

uint64_t sub_228054D04(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228054DCC, 0, 0);
}

uint64_t sub_228054DCC()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_228055234;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = type metadata accessor for SKMailMessage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE8, &qword_22813DCB0);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_228055234()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EAC, 0, 0);
}

uint64_t sub_22805535C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228055424, 0, 0);
}

uint64_t sub_228055424()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_22805588C;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = &type metadata for SKTextChunk;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF0, &qword_22813DCC8);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_22805588C()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280559B4, 0, 0);
}

uint64_t sub_2280559B4()
{
  v1 = *(v0 + 48);
  v2 = GMSModelInfo.supportedLanguagesForTopicSummaries.getter();
  sub_228059CD8(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_228055A34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228055AFC, 0, 0);
}

uint64_t sub_228055AFC()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_228055F64;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = type metadata accessor for SKNoteMessage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB0, &qword_22813DB78);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_228055F64()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EB0, 0, 0);
}

uint64_t sub_22805608C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228056154, 0, 0);
}

uint64_t sub_228056154()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_2280565BC;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = type metadata accessor for SKTextMessage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC8, &qword_22813DC10);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_2280565BC()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EB4, 0, 0);
}

uint64_t sub_2280566E4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280567AC, 0, 0);
}

uint64_t sub_2280567AC()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_228056C14;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = type metadata accessor for SKUserNotification(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE0, &qword_22813DC88);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_228056C14()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EB8, 0, 0);
}

uint64_t sub_228056D3C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228056E04, 0, 0);
}

uint64_t sub_228056E04()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_22805726C;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = &type metadata for SKMailMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD0, &qword_22813DC38);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_22805726C()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EBC, 0, 0);
}

uint64_t sub_228057394(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22805745C, 0, 0);
}

uint64_t sub_22805745C()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_2280578C4;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = &type metadata for SKTextMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC0, &qword_22813DBE8);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_2280578C4()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EC0, 0, 0);
}

uint64_t sub_2280579EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228057AB4, 0, 0);
}

uint64_t sub_228057AB4()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_228057F1C;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = &type metadata for SKUserNotificationThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB8, &qword_22813DBC0);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_228057F1C()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EC4, 0, 0);
}

uint64_t sub_228058044(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[5] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22805810C, 0, 0);
}

uint64_t sub_22805810C()
{
  v25 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v23, v5);

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v6 = v0[5];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = sub_228058574;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v0[2] = &type metadata for SKText;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD8, &qword_22813DC60);
    v19 = sub_2281392EC();
    v21 = sub_227FCC340(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_228058574()
{
  v1 = *(*v0 + 40);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EC8, 0, 0);
}

uint64_t sub_22805869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v3[6] = swift_task_alloc();
  type metadata accessor for GMSModelInfo(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228058768, 0, 0);
}

uint64_t sub_228058768()
{
  v26 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 320);
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v24, v5);

    if ((v24 & 1) == 0)
    {
LABEL_14:
      v6 = v0[6];
      v7 = sub_2281376EC();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[8] = v8;
      *v8 = v0;
      v8[1] = sub_228058BC0;
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v12 = v0[4];

      return sub_228011668(v9, v11, v12, v10);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = sub_22813882C();
  __swift_project_value_buffer(v14, qword_2813C8A20);
  v15 = sub_22813880C();
  v16 = sub_2281396BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[5];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    v0[2] = v17;
    swift_getMetatypeMetadata();
    v20 = sub_2281392EC();
    v22 = sub_227FCC340(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_227FC3000, v15, v16, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v19);
    MEMORY[0x22AAB28A0](v19, -1, -1);
    MEMORY[0x22AAB28A0](v18, -1, -1);
  }

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_228058BC0()
{
  v1 = *(*v0 + 48);

  sub_228059C78(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228058CE8, 0, 0);
}

uint64_t sub_228058CE8()
{
  v1 = *(v0 + 56);
  v2 = GMSModelInfo.supportedLanguagesForTopicSummaries.getter();
  sub_228059CD8(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_228058D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059D90;

  return sub_2280485F8(a1, a2, a3, a4);
}

uint64_t sub_228058E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059D94;

  return sub_2280477A8(a1, a2, a3, a4);
}

uint64_t sub_228058F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_228059D98;

  return sub_22804A5AC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_228059024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_228059114;

  return sub_228046EEC(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_228059114()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228059208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_228059DA0;

  return sub_228048D0C(a1, a2, a3, a4, v10);
}

uint64_t sub_2280592E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059DA4;

  return sub_228047EBC(a1, a2, a3, a4);
}

uint64_t sub_2280593B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_228059DA8;

  return sub_228049684(a1, a2, a3, a4, v10);
}

uint64_t sub_228059494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_228059DAC;

  return sub_228049E18(a1, a2, a3, a4, v10);
}

uint64_t sub_228059570(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22804B614(a1, a2);
  v8 = [objc_opt_self() sharedAssistant];
  v9 = sub_22813927C();

  v10 = [v8 stringFromString:v9 byApplyingSmartQuotes:1 smartDashes:1 quotesArray:0];

  v11 = sub_2281392AC();
  v13 = v12;

  v16[0] = v11;
  v16[1] = v13;
  sub_228136C8C();
  sub_227FDB420();
  v14 = sub_2281397AC();
  (*(v5 + 8))(v7, v4);

  return v14;
}

uint64_t dispatch thunk of Summarizable.preprocess(sharedSessionData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22805986C;

  return v9(a1, a2, a3);
}

uint64_t sub_22805986C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of Summarizable.checkSupportedLanguage(modelBundleID:requestInfo:styles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_228059B14;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_228059B14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_228059C14()
{
  result = qword_2813C4678;
  if (!qword_2813C4678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EB10, &unk_22813DB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4678);
  }

  return result;
}

uint64_t sub_228059C78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228059CD8(uint64_t a1)
{
  v2 = type metadata accessor for GMSModelInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228059EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(v8 + 624) = v15;
  *(v8 + 616) = a7;
  *(v8 + 608) = a6;
  *(v8 + 600) = a5;
  *(v8 + 592) = a4;
  *(v8 + 584) = a3;
  *(v8 + 576) = a2;
  *(v8 + 568) = a1;
  v10 = sub_22813882C();
  *(v8 + 632) = v10;
  *(v8 + 640) = *(v10 - 8);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v11 = sub_228136F8C();
  *(v8 + 664) = v11;
  *(v8 + 672) = *(v11 - 8);
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  v12 = type metadata accessor for SummarizationResult(0);
  *(v8 + 696) = v12;
  *(v8 + 704) = *(v12 - 8);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF8, &qword_22813DD20);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 856) = *a8;

  return MEMORY[0x2822009F8](sub_22805A130, 0, 0);
}

void *sub_22805A130()
{
  v148 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 600);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(*(v4 + 8) + 16))(v3);
  v7 = v6;
  v9 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  v10 = (*(*(v8 + 8) + 8))(v9);
  sub_22805DD40(v5, v7, v10, v11, v1);
  LOBYTE(v5) = *(v0 + 856);
  v12 = *(v0 + 760);
  v13 = *(v0 + 600);

  LOBYTE(v147[0]) = v5;
  *(v0 + 768) = sub_2280DEE74(v13, v12, v147);
  v138 = (v0 + 552);
  v15 = *(v0 + 592);
  v16 = *(v15 + 64);
  v139 = v15 + 64;
  v140 = *(v0 + 704);
  v142 = v15;
  v143 = *(v0 + 696);
  v17 = -1;
  v18 = -1 << *(v15 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & v16;
  v20 = (63 - v18) >> 6;

  v21 = 0;
  v22 = &unk_27D81EC00;
  v145 = v0;
  while (1)
  {
    if (v19)
    {
      v23 = v21;
      goto LABEL_18;
    }

    v24 = v20 <= v21 + 1 ? v21 + 1 : v20;
    v25 = v24 - 1;
    do
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_85:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);

        return sub_2281399EC();
      }

      if (v23 >= v20)
      {
        v42 = *(v0 + 744);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_22813DD28);
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v19 = 0;
        v21 = v25;
        goto LABEL_19;
      }

      v19 = *(v139 + 8 * v23);
      ++v21;
    }

    while (!v19);
    v21 = v23;
LABEL_18:
    v26 = *(v0 + 744);
    v27 = *(v0 + 720);
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v29 = v28 | (v23 << 6);
    v30 = *(*(v142 + 48) + v29);
    sub_22805CF8C(*(v142 + 56) + *(v140 + 72) * v29, v27);
    v31 = v22;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_22813DD28);
    v33 = *(v32 + 48);
    *v26 = v30;
    sub_22805DCCC(v27, &v26[v33], type metadata accessor for SummarizationResult);
    v34 = *(*(v32 - 8) + 56);
    v35 = v32;
    v22 = v31;
    v0 = v145;
    v34(v26, 0, 1, v35);
LABEL_19:
    v36 = *(v0 + 752);
    sub_22805CFF0(*(v0 + 744), v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_22813DD28);
    *(v0 + 776) = v37;
    v38 = *(v37 - 8);
    *(v0 + 784) = v38;
    v39 = *(v38 + 48);
    *(v0 + 792) = v39;
    *(v0 + 800) = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v39(v36, 1, v37) == 1)
    {
      break;
    }

    v40 = *(v0 + 752) + *(v37 + 48);
    v41 = *(v40 + *(v143 + 40));
    sub_22805DC6C(v40, type metadata accessor for SummarizationResult);
    if (v41 == 1)
    {
      v109 = *(v0 + 568);
      sub_22805DC6C(*(v0 + 760), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

      v110 = sub_228138E0C();
      (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
      goto LABEL_83;
    }
  }

  v44 = *(v142 + 32);
  *(v0 + 857) = v44;
  v45 = 1 << v44;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v142 + 64);

  v48 = 0;
  if (v47)
  {
    while (1)
    {
      v49 = *(v0 + 592);
LABEL_36:
      v54 = *(v0 + 784);
      v55 = *(v0 + 776);
      v56 = *(v0 + 728);
      v57 = *(v0 + 720);
      v58 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v59 = v58 | (v48 << 6);
      v60 = *(*(v49 + 48) + v59);
      sub_22805CF8C(*(v49 + 56) + *(*(v0 + 704) + 72) * v59, v57);
      v61 = *(v55 + 48);
      *v56 = v60;
      sub_22805DCCC(v57, &v56[v61], type metadata accessor for SummarizationResult);
      (*(v54 + 56))(v56, 0, 1, v55);
      v52 = v48;
LABEL_37:
      *(v0 + 816) = v52;
      *(v0 + 808) = v47;
      v62 = *(v0 + 792);
      v63 = *(v0 + 776);
      v64 = *(v0 + 736);
      sub_22805CFF0(*(v0 + 728), v64);
      v65 = v62(v64, 1, v63);
      v66 = *(v0 + 760);
      if (v65 == 1)
      {
        v111 = *(v0 + 568);

        sub_228138DEC();

        sub_22805DC6C(v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v112 = sub_228138E0C();
        (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
        goto LABEL_83;
      }

      v67 = *(v0 + 712);
      v68 = *(v0 + 600);
      sub_22805DCCC(*(v0 + 736) + *(*(v0 + 776) + 48), v67, type metadata accessor for SummarizationResult);
      if ((sub_22805D060(v67, v66, v68) & 1) == 0)
      {
        if (qword_2813C49E0[0] != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_76;
      }

      if (qword_2813C8178 != -1)
      {
        swift_once();
      }

      *(v0 + 824) = qword_2813C8B60;
      sub_228139B6C();
      v69 = *(*(v0 + 544) + 24);

      if (v69)
      {
        break;
      }

LABEL_52:
      v96 = *(v0 + 768);
      sub_228136F7C();
      if (v96)
      {
        v124 = *(v0 + 856);
        v125 = *(v0 + 712);
        v126 = *(v0 + 584);
        v127 = *(v0 + 576);
        v129 = *v125;
        v128 = v125[1];
        v146 = *(v0 + 608);
        sub_228004954(*(v0 + 600), v0 + 72);
        *(v0 + 16) = v127;
        *(v0 + 24) = v126;
        *(v0 + 32) = v129;
        *(v0 + 40) = v128;
        *(v0 + 48) = v146;
        *(v0 + 64) = v124;

        v130 = swift_task_alloc();
        *(v0 + 832) = v130;
        *v130 = v0;
        v130[1] = sub_22805B178;

        return sub_2280DD00C(v0 + 16);
      }

      v97 = *(v0 + 712);
      (*(*(v0 + 672) + 8))(*(v0 + 688), *(v0 + 664));
      sub_22805DC6C(v97, type metadata accessor for SummarizationResult);
      v48 = v52;
      if (!v47)
      {
        goto LABEL_28;
      }
    }

    v144 = v52;
    KeyPath = swift_getKeyPath("H6nU");
    os_unfair_lock_lock((v69 + 16));
    *(v0 + 216) = MEMORY[0x277D839B0];
    *(v0 + 192) = 0;
    sub_227FE5EAC((v0 + 192), (v0 + 224));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v69 + 24);
    *(v0 + 552) = v72;
    *(v69 + 24) = 0x8000000000000000;
    v73 = *(v0 + 248);
    v74 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 224, v73);
    v75 = *(v73 - 8);
    v76 = swift_task_alloc();
    (*(v75 + 16))(v76, v74, v73);
    v77 = *v76;
    v0 = v145;
    *(v145 + 280) = MEMORY[0x277D839B0];
    *(v145 + 256) = v77;

    v79 = sub_227FEB408();
    v80 = *(v72 + 16);
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_89;
    }

    v83 = v78;
    if (*(v72 + 24) >= v82)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v84 = v72;
        if ((v78 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_50;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
      v98 = sub_22813991C();
      v84 = v98;
      v99 = *(v72 + 16);
      if (v99)
      {
        result = (v98 + 64);
        v100 = ((1 << *(v84 + 32)) + 63) >> 6;
        if (v84 != v72 || result >= v72 + 64 + 8 * v100)
        {
          result = memmove(result, (v72 + 64), 8 * v100);
          v99 = *(v72 + 16);
        }

        v101 = 0;
        *(v84 + 16) = v99;
        v102 = 1 << *(v72 + 32);
        if (v102 < 64)
        {
          v103 = ~(-1 << v102);
        }

        else
        {
          v103 = -1;
        }

        v136 = (v102 + 63) >> 6;
        v0 = v145;
        v104 = v103 & *(v72 + 64);
        if (v104)
        {
          do
          {
            v105 = __clz(__rbit64(v104));
            v141 = (v104 - 1) & v104;
LABEL_70:
            v137 = v105 | (v101 << 6);
            v108 = *(*(v72 + 48) + 8 * v137);
            sub_227FEB0D4(*(v72 + 56) + 32 * v137, v145 + 512);
            *(*(v84 + 48) + 8 * v137) = v108;
            sub_227FE5EAC((v145 + 512), (*(v84 + 56) + 32 * v137));

            v104 = v141;
          }

          while (v141);
        }

        v106 = v101;
        while (1)
        {
          v101 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            break;
          }

          if (v101 >= v136)
          {
            goto LABEL_72;
          }

          v107 = *(v72 + 64 + 8 * v101);
          ++v106;
          if (v107)
          {
            v105 = __clz(__rbit64(v107));
            v141 = (v107 - 1) & v107;
            goto LABEL_70;
          }
        }

        __break(1u);
        return result;
      }

LABEL_72:

      if (v83)
      {
        goto LABEL_50;
      }

LABEL_46:
      v87 = *(v0 + 280);
      v88 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 256, v87);
      v89 = *(v87 - 8);
      v90 = swift_task_alloc();
      (*(v89 + 16))(v90, v88, v87);
      v0 = v145;
      v91 = *v90;
      *(v145 + 312) = MEMORY[0x277D839B0];
      *(v145 + 288) = v91;
      *(v84 + 8 * (v79 >> 6) + 64) |= 1 << v79;
      *(*(v84 + 48) + 8 * v79) = KeyPath;
      sub_227FE5EAC((v145 + 288), (*(v84 + 56) + 32 * v79));
      v92 = *(v84 + 16);
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        goto LABEL_90;
      }

      *(v84 + 16) = v94;

      __swift_destroy_boxed_opaque_existential_1Tm_6((v145 + 256));
    }

    else
    {
      sub_2280196BC(v82, isUniquelyReferenced_nonNull_native);
      v84 = *v138;
      v85 = sub_227FEB408();
      if ((v83 & 1) != (v86 & 1))
      {
        goto LABEL_85;
      }

      v79 = v85;
      if ((v83 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_50:
      v95 = (*(v84 + 56) + 32 * v79);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v95);
      sub_227FE5EAC((v0 + 256), v95);
    }

    v52 = v144;
    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 224));

    *(v69 + 24) = v84;
    os_unfair_lock_unlock((v69 + 16));

    goto LABEL_52;
  }

LABEL_28:
  v50 = ((1 << *(v0 + 857)) + 63) >> 6;
  if (v50 <= (v48 + 1))
  {
    v51 = v48 + 1;
  }

  else
  {
    v51 = ((1 << *(v0 + 857)) + 63) >> 6;
  }

  v52 = v51 - 1;
  while (1)
  {
    v53 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      (*(*(v0 + 784) + 56))(*(v0 + 728), 1, 1, *(v0 + 776));
      v47 = 0;
      goto LABEL_37;
    }

    v49 = *(v0 + 592);
    v47 = *(v49 + 8 * v53 + 64);
    ++v48;
    if (v47)
    {
      v48 = v53;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_76:
  v113 = *(v0 + 600);
  __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
  sub_228004954(v113, v0 + 112);
  v114 = sub_22813880C();
  v115 = sub_2281396DC();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v147[0] = v117;
    *v116 = 136446210;
    v118 = *(v0 + 136);
    v119 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v118);
    v120 = (*(v119 + 16))(v118, v119);
    v122 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
    v123 = sub_227FCC340(v120, v122, v147);

    *(v116 + 4) = v123;
    _os_log_impl(&dword_227FC3000, v114, v115, "Request %{public}s rejected by safety guardrails.", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v117);
    MEMORY[0x22AAB28A0](v117, -1, -1);
    MEMORY[0x22AAB28A0](v116, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
  }

  v131 = *(v0 + 760);
  v132 = *(v0 + 712);
  v133 = *(v0 + 568);
  sub_228138DEC();

  sub_22805DC6C(v132, type metadata accessor for SummarizationResult);
  sub_22805DC6C(v131, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
  v134 = sub_228138E0C();
  (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
LABEL_83:

  v135 = *(v0 + 8);

  return v135();
}

uint64_t sub_22805B178(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 840) = a1;
  *(v5 + 848) = v2;

  if (v2)
  {

    v6 = sub_22805CBAC;
  }

  else
  {
    *(v5 + 858) = a2;
    v6 = sub_22805B2AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

char *sub_22805B2AC()
{
  v187 = v0;
  if (*(v0 + 858) > 1u)
  {
    if (*(v0 + 858) == 2)
    {
      v10 = *(v0 + 840);
      sub_228139B6C();
      v11 = *(*(v0 + 560) + 24);

      if (v11)
      {
        v176 = *(v0 + 840);
        v12 = *(v0 + 680);
        v13 = *(v0 + 672);
        v179 = *(v0 + 664);
        KeyPath = swift_getKeyPath("H6nU");
        os_unfair_lock_lock((v11 + 16));
        *(v0 + 344) = MEMORY[0x277D839B0];
        *(v0 + 320) = 1;
        sub_227FE5EAC((v0 + 320), (v0 + 352));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v186[0] = *(v11 + 24);
        v16 = *(v0 + 376);
        v17 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 352, v16);
        v182 = v10;
        v18 = *(v16 - 8);
        v19 = swift_task_alloc();
        (*(v18 + 16))(v19, v17, v16);
        LOBYTE(v16) = *v19;

        sub_22805CD30(v16, KeyPath, isUniquelyReferenced_nonNull_native, v186);
        __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 352));

        *(v11 + 24) = v186[0];
        os_unfair_lock_unlock((v11 + 16));

        v20 = swift_getKeyPath(" 6nU");
        os_unfair_lock_lock((v11 + 16));
        *(v0 + 408) = MEMORY[0x277D839B0];
        *(v0 + 384) = v176 & 1;
        sub_227FE5EAC((v0 + 384), (v0 + 416));

        LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
        v186[0] = *(v11 + 24);
        v21 = *(v0 + 440);
        v22 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 416, v21);
        v23 = *(v21 - 8);
        v24 = swift_task_alloc();
        (*(v23 + 16))(v24, v22, v21);
        LOBYTE(v21) = *v24;

        sub_22805CD30(v21, v20, v19, v186);
        __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 416));

        *(v11 + 24) = v186[0];
        os_unfair_lock_unlock((v11 + 16));

        sub_228136F7C();
        sub_228136F1C();
        v26 = v25;
        (*(v13 + 8))(v12, v179);
        swift_getKeyPath(byte_22813DD88);
        os_unfair_lock_lock((v11 + 16));
        *(v0 + 472) = MEMORY[0x277D839F8];
        *(v0 + 448) = v26 * 1000.0;
        sub_227FE5EAC((v0 + 448), (v0 + 480));

        LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
        v186[0] = *(v11 + 24);
        v27 = *(v0 + 504);
        v28 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 480, v27);
        v29 = *(v27 - 8);
        v30 = swift_task_alloc();
        (*(v29 + 16))(v30, v28, v27);
        v31 = *v30;

        sub_22805D944(v32, v19, v186, v31);
        __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 480));

        *(v11 + 24) = v186[0];
        os_unfair_lock_unlock((v11 + 16));

        if ((v182 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
LABEL_87:
          if (qword_2813C49E0[0] != -1)
          {
            swift_once();
          }

          v136 = *(v0 + 600);
          __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
          sub_228004954(v136, v0 + 152);
          v137 = sub_22813880C();
          v138 = sub_2281396DC();
          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v186[0] = v140;
            *v139 = 136446210;
            v141 = *(v0 + 176);
            v142 = *(v0 + 184);
            __swift_project_boxed_opaque_existential_1((v0 + 152), v141);
            v143 = (*(v142 + 16))(v141, v142);
            v145 = v144;
            __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 152));
            v146 = sub_227FCC340(v143, v145, v186);

            *(v139 + 4) = v146;
            _os_log_impl(&dword_227FC3000, v137, v138, "Request %{public}s rejected by factual consistency classifier.", v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm_6(v140);
            MEMORY[0x22AAB28A0](v140, -1, -1);
            MEMORY[0x22AAB28A0](v139, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 152));
          }

          v181 = *(v0 + 760);
          v39 = *(v0 + 712);
          v40 = *(v0 + 688);
          v41 = *(v0 + 672);
          v42 = *(v0 + 664);
          v43 = swift_allocObject();
          v44 = 47;
          *(v43 + 16) = 47;
          *(v43 + 24) = 0;
          *(v43 + 32) = 0;
          v45 = sub_22805D938;
          v46 = 121;
          goto LABEL_102;
        }
      }
    }

    else
    {
      v38 = *(*(v0 + 768) + 16);

      if (v38)
      {
        v181 = *(v0 + 760);
        v39 = *(v0 + 712);
        v40 = *(v0 + 688);
        v41 = *(v0 + 672);
        v42 = *(v0 + 664);
        v43 = swift_allocObject();
        v44 = 49;
        *(v43 + 16) = 49;
        *(v43 + 24) = 0;
        *(v43 + 32) = 0;
        v45 = sub_22805DD3C;
        v46 = 77;
LABEL_102:
        v169 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146080, v46, v45, v43);
        sub_227FDB3CC();
        swift_allocError();
        *v170 = v44;
        *(v170 + 8) = v169;
        swift_willThrow();

        sub_22805D8E4(v0 + 16);
        (*(v41 + 8))(v40, v42);
        v37 = v39;
        goto LABEL_103;
      }
    }

    v52 = *(v0 + 712);
    v65 = *(v0 + 688);
    v66 = *(v0 + 672);
    v67 = *(v0 + 664);
    sub_22805D8E4(v0 + 16);
    (*(v66 + 8))(v65, v67);
    goto LABEL_38;
  }

  if (*(v0 + 858))
  {
    if ((*(*(v0 + 768) + 16) & 1) == 0)
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v60 = __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v60 = __swift_project_value_buffer(*(v0 + 632), qword_2813C4990);
      }

      (*(*(v0 + 640) + 16))(*(v0 + 648), v60, *(v0 + 632));
      v61 = sub_22813880C();
      v62 = sub_2281396BC();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_227FC3000, v61, v62, "Factual consistency classifier didn't run due to a model manager error, but FCC is not required.", v63, 2u);
        MEMORY[0x22AAB28A0](v63, -1, -1);
      }

      v64 = *(v0 + 840);
      v52 = *(v0 + 712);
      v183 = *(v0 + 688);
      v53 = *(v0 + 672);
      v54 = *(v0 + 664);
      v55 = *(v0 + 648);
      v56 = *(v0 + 640);
      v57 = *(v0 + 632);

      v58 = v64;
      v59 = 1;
      goto LABEL_35;
    }

    v33 = *(v0 + 840);
    v180 = *(v0 + 712);
    v181 = *(v0 + 760);
    v2 = *(v0 + 688);
    v3 = *(v0 + 672);
    v4 = *(v0 + 664);

    v34 = swift_allocObject();
    *(v34 + 16) = 50;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    sub_22805DB30(v33, 1u);
    v35 = sub_227FF96D4(v33, 0xD00000000000007ELL, 0x8000000228146080, 96, sub_22805DD34, v34);
    sub_22805DB1C(v33, 1u);
    sub_227FDB3CC();
    swift_allocError();
    *v36 = 50;
    *(v36 + 8) = v35;
    swift_willThrow();

    v8 = v33;
    v9 = 1;
    goto LABEL_11;
  }

  if ((*(*(v0 + 768) + 16) & 1) == 0)
  {
    if (qword_2813C49E0[0] != -1)
    {
      goto LABEL_117;
    }

    while (1)
    {
      v47 = __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v47 = __swift_project_value_buffer(*(v0 + 632), qword_2813C4990);
      }

      (*(*(v0 + 640) + 16))(*(v0 + 656), v47, *(v0 + 632));
      v48 = sub_22813880C();
      v49 = sub_2281396BC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_227FC3000, v48, v49, "Factual consistency classifier didn't run because the asset is missing, but FCC is not required.", v50, 2u);
        MEMORY[0x22AAB28A0](v50, -1, -1);
      }

      v51 = *(v0 + 840);
      v52 = *(v0 + 712);
      v183 = *(v0 + 688);
      v53 = *(v0 + 672);
      v54 = *(v0 + 664);
      v55 = *(v0 + 656);
      v56 = *(v0 + 640);
      v57 = *(v0 + 632);

      v58 = v51;
      v59 = 0;
LABEL_35:
      sub_22805DB1C(v58, v59);

      (*(v56 + 8))(v55, v57);
      sub_22805D8E4(v0 + 16);
      (*(v53 + 8))(v183, v54);
LABEL_38:
      sub_22805DC6C(v52, type metadata accessor for SummarizationResult);
      v68 = *(v0 + 848);
      v69 = *(v0 + 816);
      v70 = *(v0 + 808);
      if (v70)
      {
        break;
      }

LABEL_40:
      v72 = ((1 << *(v0 + 857)) + 63) >> 6;
      if (v72 <= (v69 + 1))
      {
        v73 = v69 + 1;
      }

      else
      {
        v73 = ((1 << *(v0 + 857)) + 63) >> 6;
      }

      v74 = v73 - 1;
      while (1)
      {
        v75 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v75 >= v72)
        {
          (*(*(v0 + 784) + 56))(*(v0 + 728), 1, 1, *(v0 + 776));
          v70 = 0;
          goto LABEL_49;
        }

        v71 = *(v0 + 592);
        v70 = *(v71 + 8 * v75 + 64);
        ++v69;
        if (v70)
        {
          v69 = v75;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      swift_once();
    }

    while (1)
    {
      v71 = *(v0 + 592);
LABEL_48:
      v76 = *(v0 + 784);
      v77 = *(v0 + 776);
      v78 = *(v0 + 728);
      v79 = *(v0 + 720);
      v80 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v81 = v80 | (v69 << 6);
      v82 = *(*(v71 + 48) + v81);
      sub_22805CF8C(*(v71 + 56) + *(*(v0 + 704) + 72) * v81, v79);
      v83 = *(v77 + 48);
      *v78 = v82;
      sub_22805DCCC(v79, &v78[v83], type metadata accessor for SummarizationResult);
      (*(v76 + 56))(v78, 0, 1, v77);
      v74 = v69;
LABEL_49:
      *(v0 + 816) = v74;
      *(v0 + 808) = v70;
      v84 = *(v0 + 792);
      v85 = *(v0 + 776);
      v86 = *(v0 + 736);
      sub_22805CFF0(*(v0 + 728), v86);
      v87 = v84(v86, 1, v85);
      v88 = *(v0 + 760);
      if (v87 == 1)
      {
        v147 = *(v0 + 568);

        sub_228138DEC();

LABEL_107:
        sub_22805DC6C(v88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v173 = sub_228138E0C();
        (*(*(v173 - 8) + 56))(v147, 0, 1, v173);

        v171 = *(v0 + 8);
        goto LABEL_108;
      }

      v89 = *(v0 + 712);
      v90 = *(v0 + 600);
      sub_22805DCCC(*(v0 + 736) + *(*(v0 + 776) + 48), v89, type metadata accessor for SummarizationResult);
      v91 = sub_22805D060(v89, v88, v90);
      if (v68)
      {
        v148 = *(v0 + 760);
        v149 = *(v0 + 712);

        sub_22805DC6C(v149, type metadata accessor for SummarizationResult);
        v150 = v148;
        goto LABEL_104;
      }

      if ((v91 & 1) == 0)
      {
        if (qword_2813C49E0[0] != -1)
        {
          swift_once();
        }

        v151 = *(v0 + 600);
        __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
        sub_228004954(v151, v0 + 112);
        v152 = sub_22813880C();
        v153 = sub_2281396DC();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v186[0] = v155;
          *v154 = 136446210;
          v156 = *(v0 + 136);
          v157 = *(v0 + 144);
          __swift_project_boxed_opaque_existential_1((v0 + 112), v156);
          v158 = (*(v157 + 16))(v156, v157);
          v160 = v159;
          __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
          v161 = sub_227FCC340(v158, v160, v186);

          *(v154 + 4) = v161;
          _os_log_impl(&dword_227FC3000, v152, v153, "Request %{public}s rejected by safety guardrails.", v154, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_6(v155);
          MEMORY[0x22AAB28A0](v155, -1, -1);
          MEMORY[0x22AAB28A0](v154, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
        }

        v88 = *(v0 + 760);
        v172 = *(v0 + 712);
        v147 = *(v0 + 568);
        sub_228138DEC();

        sub_22805DC6C(v172, type metadata accessor for SummarizationResult);
        goto LABEL_107;
      }

      if (qword_2813C8178 != -1)
      {
        swift_once();
      }

      *(v0 + 824) = qword_2813C8B60;
      sub_228139B6C();
      v92 = *(*(v0 + 544) + 24);

      if (v92)
      {
        break;
      }

LABEL_84:
      v134 = *(v0 + 768);
      sub_228136F7C();
      if (v134)
      {
        v162 = *(v0 + 856);
        v163 = *(v0 + 712);
        v164 = *(v0 + 584);
        v165 = *(v0 + 576);
        v167 = *v163;
        v166 = v163[1];
        v185 = *(v0 + 608);
        sub_228004954(*(v0 + 600), v0 + 72);
        *(v0 + 16) = v165;
        *(v0 + 24) = v164;
        *(v0 + 32) = v167;
        *(v0 + 40) = v166;
        *(v0 + 48) = v185;
        *(v0 + 64) = v162;

        v168 = swift_task_alloc();
        *(v0 + 832) = v168;
        *v168 = v0;
        v168[1] = sub_22805B178;

        return sub_2280DD00C(v0 + 16);
      }

      v135 = *(v0 + 712);
      (*(*(v0 + 672) + 8))(*(v0 + 688), *(v0 + 664));
      sub_22805DC6C(v135, type metadata accessor for SummarizationResult);
      v68 = 0;
      v69 = v74;
      if (!v70)
      {
        goto LABEL_40;
      }
    }

    v184 = v74;
    v93 = swift_getKeyPath("H6nU");
    os_unfair_lock_lock((v92 + 16));
    *(v0 + 216) = MEMORY[0x277D839B0];
    *(v0 + 192) = 0;
    sub_227FE5EAC((v0 + 192), (v0 + 224));

    v94 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v92 + 24);
    *(v0 + 552) = v95;
    *(v92 + 24) = 0x8000000000000000;
    v96 = *(v0 + 248);
    v97 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 224, v96);
    v98 = *(v96 - 8);
    v99 = swift_task_alloc();
    (*(v98 + 16))(v99, v97, v96);
    v100 = *v99;
    *(v0 + 280) = MEMORY[0x277D839B0];
    *(v0 + 256) = v100;

    v102 = sub_227FEB408();
    v103 = *(v95 + 16);
    v104 = (v101 & 1) == 0;
    v105 = v103 + v104;
    if (__OFADD__(v103, v104))
    {
      goto LABEL_115;
    }

    v106 = v101;
    if (*(v95 + 24) >= v105)
    {
      if (v94)
      {
        v107 = v95;
        if ((v101 & 1) == 0)
        {
LABEL_81:
          v126 = *(v0 + 280);
          v127 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 256, v126);
          v128 = *(v126 - 8);
          v129 = swift_task_alloc();
          (*(v128 + 16))(v129, v127, v126);
          v130 = *v129;
          *(v0 + 312) = MEMORY[0x277D839B0];
          *(v0 + 288) = v130;
          *(v107 + 8 * (v102 >> 6) + 64) |= 1 << v102;
          *(*(v107 + 48) + 8 * v102) = v93;
          sub_227FE5EAC((v0 + 288), (*(v107 + 56) + 32 * v102));
          v131 = *(v107 + 16);
          v132 = __OFADD__(v131, 1);
          v133 = v131 + 1;
          if (v132)
          {
            goto LABEL_116;
          }

          *(v107 + 16) = v133;

          __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 256));

          goto LABEL_83;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
        v111 = sub_22813991C();
        v107 = v111;
        v112 = *(v95 + 16);
        if (v112)
        {
          result = (v111 + 64);
          v114 = (v95 + 64);
          v115 = ((1 << *(v107 + 32)) + 63) >> 6;
          if (v107 != v95 || result >= &v114[8 * v115])
          {
            result = memmove(result, v114, 8 * v115);
            v112 = *(v95 + 16);
          }

          v116 = 0;
          *(v107 + 16) = v112;
          v117 = 1 << *(v95 + 32);
          if (v117 < 64)
          {
            v118 = ~(-1 << v117);
          }

          else
          {
            v118 = -1;
          }

          v119 = v118 & *(v95 + 64);
          v120 = (v117 + 63) >> 6;
          v174 = v120;
          if (v119)
          {
            do
            {
              v121 = __clz(__rbit64(v119));
              v178 = (v119 - 1) & v119;
LABEL_78:
              v124 = v121 | (v116 << 6);
              v125 = *(*(v95 + 48) + 8 * v124);
              v175 = v124;
              v177 = 32 * v124;
              sub_227FEB0D4(*(v95 + 56) + 32 * v124, v0 + 512);
              *(*(v107 + 48) + 8 * v175) = v125;
              sub_227FE5EAC((v0 + 512), (*(v107 + 56) + v177));

              v120 = v174;
              v119 = v178;
            }

            while (v178);
          }

          v122 = v116;
          while (1)
          {
            v116 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              break;
            }

            if (v116 >= v120)
            {
              goto LABEL_80;
            }

            v123 = *(v95 + 64 + 8 * v116);
            ++v122;
            if (v123)
            {
              v121 = __clz(__rbit64(v123));
              v178 = (v123 - 1) & v123;
              goto LABEL_78;
            }
          }

          __break(1u);
          return result;
        }

LABEL_80:

        if ((v106 & 1) == 0)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      sub_2280196BC(v105, v94);
      v107 = *(v0 + 552);
      v108 = sub_227FEB408();
      if ((v106 & 1) != (v109 & 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);

        return sub_2281399EC();
      }

      v102 = v108;
      if ((v106 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    v110 = (*(v107 + 56) + 32 * v102);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v110);
    sub_227FE5EAC((v0 + 256), v110);
LABEL_83:
    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 224));

    *(v92 + 24) = v107;
    os_unfair_lock_unlock((v92 + 16));

    v74 = v184;
    goto LABEL_84;
  }

  v1 = *(v0 + 840);
  v180 = *(v0 + 712);
  v181 = *(v0 + 760);
  v2 = *(v0 + 688);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);

  v5 = swift_allocObject();
  *(v5 + 16) = 48;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  sub_22805DB30(v1, 0);
  v6 = sub_227FF96D4(v1, 0xD00000000000007ELL, 0x8000000228146080, 85, sub_22805DD38, v5);
  sub_22805DB1C(v1, 0);
  sub_227FDB3CC();
  swift_allocError();
  *v7 = 48;
  *(v7 + 8) = v6;
  swift_willThrow();

  v8 = v1;
  v9 = 0;
LABEL_11:
  sub_22805DB1C(v8, v9);

  sub_22805D8E4(v0 + 16);
  (*(v3 + 8))(v2, v4);
  v37 = v180;
LABEL_103:
  sub_22805DC6C(v37, type metadata accessor for SummarizationResult);
  v150 = v181;
LABEL_104:
  sub_22805DC6C(v150, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  v171 = *(v0 + 8);
LABEL_108:

  return v171();
}