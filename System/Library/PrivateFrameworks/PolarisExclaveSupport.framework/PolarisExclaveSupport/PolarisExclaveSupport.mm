uint64_t sub_25EC472C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25EC47328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_25EC47378()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25EC473B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14PolarisRuntime11GraphConfigVIegl_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25EC47404(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25EC47414()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25EC4744C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_25EC474A4@<X0>(_DWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  result = sub_25EC79A94();
  *a1 = v3;
  return result;
}

uint64_t sub_25EC474F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
}

uint64_t sub_25EC4754C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  swift_beginAccess();
  *a2 = *(v3 + v4);
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

uint64_t sub_25EC476AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC476CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
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

uint64_t sub_25EC4772C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC4774C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_25EC4779C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25EC7A074();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25EC508F0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25EC508F0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25EC7A064();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25EC7A044();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25EC7A044();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25EC7A074();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25EC508F0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25EC7A074();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25EC508F0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25EC508F0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25EC7A044();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC47BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(void *), uint64_t a9, unint64_t a10)
{
  v18 = a9;
  v17 = a10;
  v41 = 47;
  v42 = 0xE100000000000000;
  v39 = &v41;

  v20 = sub_25EC4779C(0x7FFFFFFFFFFFFFFFLL, 1, a8, v38, a5, a6, v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = (v20 + 32 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = a7;
    v26 = a4;
    v27 = a1;
    v28 = a2;
    v29 = v22[2];
    v30 = v22[3];
    swift_bridgeObjectRetain_n();

    a5 = MEMORY[0x25F8CB850](v23, v24, v29, v30);
    a6 = v31;
    a2 = v28;
    a1 = v27;
    a4 = v26;
    a7 = v25;
    v17 = a10;
    v18 = a9;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25EC7A890;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_25EC7A144();

  v41 = v18;
  v42 = v17;
  MEMORY[0x25F8CB870](a5, a6);

  MEMORY[0x25F8CB870](58, 0xE100000000000000);
  v40 = a7;
  v33 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v33);

  MEMORY[0x25F8CB870](32, 0xE100000000000000);
  MEMORY[0x25F8CB870](a3, a4);
  MEMORY[0x25F8CB870](2108704, 0xE300000000000000);
  MEMORY[0x25F8CB870](a1, a2);
  v34 = v41;
  v35 = v42;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 32) = v34;
  *(v32 + 40) = v35;
  sub_25EC7A2B4();
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

uint64_t sub_25EC47EB0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25EC7A244() & 1;
  }
}

void sub_25EC47F1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t PolarisMutex.__allocating_init()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v2);
  swift_endAccess();
  pthread_mutexattr_destroy(&v2);
  return v0;
}

uint64_t PolarisMutex.init()()
{
  v3 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v2);
  swift_endAccess();
  pthread_mutexattr_destroy(&v2);
  return v0;
}

BOOL sub_25EC48110()
{
  swift_beginAccess();
  v1 = pthread_mutex_trylock((v0 + 16));
  swift_endAccess();
  return v1 == 0;
}

uint64_t PolarisCondition.__allocating_init()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_condattr_init(&v2);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v2);
  swift_endAccess();
  pthread_condattr_destroy(&v2);
  return v0;
}

uint64_t PolarisCondition.init()()
{
  v3 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_condattr_init(&v2);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v2);
  swift_endAccess();
  pthread_condattr_destroy(&v2);
  return v0;
}

uint64_t PolarisCondition.wait(mutex:)(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  pthread_cond_wait((v1 + 16), (a1 + 16));
  swift_endAccess();
  return swift_endAccess();
}

uint64_t sub_25EC48388(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

uint64_t sub_25EC483F0(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t sub_25EC48460(void (*a1)(uint64_t), uint64_t a2)
{
  swift_beginAccess();
  a1(v2 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

unint64_t sub_25EC485D8()
{
  result = sub_25EC4E1E0(MEMORY[0x277D84F90]);
  qword_27FD36648 = result;
  return result;
}

uint64_t sub_25EC48618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_25EC79874();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_25EC798D4();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  result = sub_25EC79DF4();
  if (result < 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    v25[0] = a2;
    v25[1] = v2;
    if (result)
    {
      v12 = 0;
      v26 = *MEMORY[0x277D3E780];
      v13 = (v5 + 104);
      v25[2] = v8 + 32;
      v14 = MEMORY[0x277D84F90];
      v27 = v10;
      v28 = result;
      do
      {
        result = sub_25EC79E04();
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8CB970](v12, result);
        }

        else
        {
          if (v12 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        v15 = sub_25EC79E14();
        v17 = v16;
        v19 = v18;

        if (v19)
        {

          sub_25EC4E124();
          swift_allocError();
          *v24 = 0;
          *(v24 + 4) = 10;
          return swift_willThrow();
        }

        *v7 = v15;
        v7[1] = v17;
        (*v13)(v7, v26, v30);
        v20 = v27;
        sub_25EC79894();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_25EC509FC(0, v14[2] + 1, 1, v14);
        }

        v21 = v28;
        v23 = v14[2];
        v22 = v14[3];
        if (v23 >= v22 >> 1)
        {
          v14 = sub_25EC509FC((v22 > 1), v23 + 1, 1, v14);
        }

        ++v12;
        v14[2] = v23 + 1;
        (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v20, v29);
      }

      while (v21 != v12);
    }

    return sub_25EC797C4();
  }

  return result;
}

uint64_t sub_25EC48944()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC4897C()
{
}

uint64_t sub_25EC489AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC48A14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC48A54(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + 24);
  swift_beginAccess();
  v5 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_25EC50A24(0, v5[2] + 1, 1, v5);
    *(v4 + 16) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_25EC50A24((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a2;
  v9[5] = a1;
  *(v4 + 16) = v5;
  swift_endAccess();
}

uint64_t sub_25EC48B40(uint64_t a1, int a2)
{
  v3 = v2;
  type metadata accessor for DataInputController();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  swift_beginAccess();

  MEMORY[0x25F8CB8A0](v7);
  if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25EC7A0A4();
  }

  sub_25EC7A0C4();
  return swift_endAccess();
}

uint64_t sub_25EC48C0C(uint64_t a1)
{
  v76 = a1;
  v69 = sub_25EC79704();
  v68 = *(v69 - 8);
  v3 = MEMORY[0x28223BE20](v69);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v63 - v5;
  v82 = sub_25EC79CC4();
  v6 = *(v82 - 8);
  v7 = MEMORY[0x28223BE20](v82);
  v81 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v63 - v9;
  v65 = sub_25EC797F4();
  v66 = *(v65 - 8);
  v10 = MEMORY[0x28223BE20](v65);
  v75 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361D8, &qword_25EC7AD68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_25EC79774();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25EC79794();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25EC79984();
  (*(v17 + 104))(v19, *MEMORY[0x277D3E770], v16);
  v22 = sub_25EC79D54();
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  v72 = v21;
  sub_25EC79784();
  swift_beginAccess();
  v74 = v1;
  v23 = v1[8];
  if (v23 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25EC7A184())
  {
    v25 = v75;
    if (i)
    {
      v84 = MEMORY[0x277D84F90];

      sub_25EC5B72C(0, i & ~(i >> 63), 0);
      if ((i & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v27 = v84;
        v79 = i;
        v80 = v23 & 0xC000000000000001;
        v77 = v23 & 0xFFFFFFFFFFFFFF8;
        v78 = v6 + 32;
        while (1)
        {
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v80)
          {
            v29 = MEMORY[0x25F8CB970](v26, v23);
          }

          else
          {
            if (v26 >= *(v77 + 16))
            {
              goto LABEL_83;
            }

            v29 = *(v23 + 8 * v26 + 32);
          }

          v30 = sub_25EC79E24();
          if (v2)
          {

            (*(v71 + 8))(v72, v70);
          }

          v31 = v30;
          swift_beginAccess();
          *(v29 + 32) = v31;

          sub_25EC48618(v31, v85);
          swift_endAccess();

          v84 = v27;
          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_25EC5B72C((v32 > 1), v33 + 1, 1);
            v27 = v84;
          }

          *(v27 + 16) = v33 + 1;
          (*(v6 + 32))(v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33, v85, v82);
          ++v26;
          if (v28 == v79)
          {

            v25 = v75;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_82;
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      sub_25EC797C4();
      v34 = v74;
      swift_beginAccess();
      v23 = v34[7];
      if (!(v23 >> 62))
      {
        v35 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    v35 = sub_25EC7A184();
LABEL_19:
    if (!v35)
    {
      break;
    }

    v83[0] = MEMORY[0x277D84F90];

    sub_25EC5B72C(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_92;
    }

    v36 = 0;
    v37 = v83[0];
    v85 = v23 & 0xC000000000000001;
    v78 = v23 & 0xFFFFFFFFFFFFFF8;
    v79 = v6 + 32;
    v80 = v35;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v85)
      {
        v39 = MEMORY[0x25F8CB970](v36, v23);
      }

      else
      {
        if (v36 >= *(v78 + 16))
        {
          goto LABEL_86;
        }

        v39 = *(v23 + 8 * v36 + 32);
      }

      v40 = sub_25EC79E44();
      if (v2)
      {

        (*(v66 + 8))(v73, v65);
        (*(v71 + 8))(v72, v70);
      }

      v41 = v40;
      swift_beginAccess();
      *(v39 + 40) = v41;

      sub_25EC48618(v41, v81);
      swift_endAccess();

      v83[0] = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_25EC5B72C((v42 > 1), v43 + 1, 1);
        v37 = v83[0];
      }

      *(v37 + 16) = v43 + 1;
      (*(v6 + 32))(v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43, v81, v82);
      ++v36;
      if (v38 == v80)
      {

        goto LABEL_33;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_33:
  result = sub_25EC797C4();
  if (!v74[4])
  {
    __break(1u);
    return result;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = v67;
  sub_25EC79714();
  swift_unknownObjectRelease();
  v23 = v68;
  v45 = v64;
  v46 = v69;
  (*(v68 + 16))(v64, v6, v69);
  if ((*(v23 + 88))(v45, v46) == *MEMORY[0x277D3E728])
  {
    sub_25EC47B5C(0xD000000000000017, 0x800000025EC80BC0, 0x2865747563657865, 0xEC000000293A7461, 0xD00000000000002CLL, 0x800000025EC80460, 272);
  }

  else
  {
    sub_25EC47B5C(0xD000000000000016, 0x800000025EC80BA0, 0x2865747563657865, 0xEC000000293A7461, 0xD00000000000002CLL, 0x800000025EC80460, 274);
    (*(v23 + 8))(v45, v46);
  }

  v25 = v74[8];
  if (!(v25 >> 62))
  {
    v47 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_39;
  }

LABEL_92:
  v47 = sub_25EC7A184();
LABEL_39:

  if (v47)
  {
    v48 = 0;
    v85 = v25 & 0xC000000000000001;
    while (1)
    {
      if (v85)
      {
        v49 = MEMORY[0x25F8CB970](v48, v25);
        v23 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v48 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v49 = *(v25 + 8 * v48 + 32);

        v23 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      swift_beginAccess();
      v6 = *(v49 + 32);
      if (!v6)
      {
LABEL_65:
        sub_25EC4E124();
        swift_allocError();
        *v54 = 2;
        *(v54 + 4) = 10;
        swift_willThrow();

        goto LABEL_78;
      }

      *(v49 + 32) = 0;
      sub_25EC79E34();
      if (v2)
      {
        break;
      }

      ++v48;
      if (v23 == v47)
      {
        goto LABEL_51;
      }
    }

LABEL_79:

    (*(v68 + 8))(v67, v69);
    v61 = *(v66 + 8);
    v62 = v65;
    v61(v75, v65);
    v61(v73, v62);
    (*(v71 + 8))(v72, v70);
  }

  else
  {
LABEL_51:

    v50 = v74[7];
    if (v50 >> 62)
    {
      v51 = sub_25EC7A184();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51)
    {
      v52 = 0;
      v85 = v50 & 0xC000000000000001;
      do
      {
        if (v85)
        {
          v53 = MEMORY[0x25F8CB970](v52, v50);
          v23 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v53 = *(v50 + 8 * v52 + 32);

          v23 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }
        }

        swift_beginAccess();
        v6 = *(v53 + 40);
        if (!v6)
        {
          goto LABEL_65;
        }

        *(v53 + 40) = 0;
        sub_25EC79E54();
        if (v2)
        {
          goto LABEL_79;
        }

        ++v52;
      }

      while (v23 != v51);
    }

    v55 = v74;
    swift_beginAccess();
    v56 = v55[6];
    if (v56 >> 62)
    {
      v57 = sub_25EC7A184();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v57)
    {
      v23 = 0;
      v6 = v56 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          MEMORY[0x25F8CB970](v23, v56);
          v58 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v23 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v58 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_77:
            __break(1u);
            break;
          }
        }

        sub_25EC79834();

        ++v23;
      }

      while (v58 != v57);
    }

LABEL_78:

    (*(v68 + 8))(v67, v69);
    v59 = *(v66 + 8);
    v60 = v65;
    v59(v75, v65);
    v59(v73, v60);
    return (*(v71 + 8))(v72, v70);
  }
}

void *TaskController.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TaskController.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25EC49C18()
{
  v1 = *v0;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v1);
  return sub_25EC7A304();
}

uint64_t sub_25EC49C60(uint64_t a1)
{
  v2 = *v1;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v2);
  return sub_25EC7A304();
}

uint64_t sub_25EC49CA4()
{
  v1 = 0x7964616572;
  if (*v0 != 1)
  {
    v1 = 0x6E69747563657865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_25EC49D00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_25EC49DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_25EC49E68(unsigned int a1, uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x277D85DE8];
  v6 = sub_25EC79A64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25EC79A54();
  swift_allocObject();
  *(v2 + 24) = sub_25EC79A44();
  v10 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig;
  v11 = sub_25EC79734();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  type metadata accessor for PolarisMutex();
  v13 = swift_allocObject();
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 16) = 0u;
  v21.__sig = 0;
  *v21.__opaque = 0;
  pthread_mutexattr_init(&v21);
  swift_beginAccess();
  pthread_mutex_init((v13 + 16), &v21);
  swift_endAccess();
  pthread_mutexattr_destroy(&v21);
  *(v3 + v12) = v13;
  v14 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond;
  type metadata accessor for PolarisCondition();
  v15 = swift_allocObject();
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 16) = 0u;
  v21.__sig = 0;
  *v21.__opaque = 0;
  pthread_condattr_init(&v21);
  swift_beginAccess();
  pthread_cond_init((v15 + 16), &v21);
  swift_endAccess();
  pthread_condattr_destroy(&v21);
  *(v3 + v14) = v15;
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) = 0;
  v16 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tailReceiver;
  (*(v7 + 104))(v9, *MEMORY[0x277D3E790], v6);
  sub_25EC799B4();
  swift_allocObject();
  v22 = 1;
  *(v3 + v16) = sub_25EC79974();
  v17 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  *(v3 + v17) = sub_25EC4E708(MEMORY[0x277D84F90], &qword_27FD361B0, &unk_25EC7B4E0);
  v18 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_currentUniqueId;
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_currentUniqueId) = 0;
  *(v3 + 16) = a1;
  (*(v7 + 16))(v9, a2, v6);
  swift_allocObject();
  v22 = 0;
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver) = sub_25EC79974();
  v19 = *(v3 + v18);
  if (v19 >= 0xFFFF0000)
  {
    __break(1u);
  }

  *(v3 + v18) = v19 + 0x10000;
  sub_25EC79864();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headSender) = sub_25EC79844();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v3;
  sub_25EC79994();
  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v3;
  sub_25EC79994();
  swift_unownedRelease();
  (*(v7 + 8))(a2, v6);
  return v3;
}

uint64_t sub_25EC4A2BC(uint64_t a1)
{
  sub_25EC4E124();
  swift_allocError();
  *v1 = 0;
  *(v1 + 4) = 10;
  return swift_willThrow();
}

uint64_t sub_25EC4A310(uint64_t a1)
{
  v2 = v1;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000029, 0x800000025EC80B00);
  v3 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v3);

  MEMORY[0x25F8CB870](0x6D61726620746120, 0xEC0000003D644965);
  v4 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v4);

  sub_25EC47B5C(0, 0xE000000000000000, 0xD000000000000018, 0x800000025EC80B30, 0xD00000000000002CLL, 0x800000025EC80460, 405);

  v5 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v6 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v6 + 16));
  swift_endAccess();

  v7 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state;
  if (*(v2 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) == 1)
  {
    sub_25EC7A144();

    v8 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v8);

    MEMORY[0x25F8CB870](0xD000000000000021, 0x800000025EC80B70);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80B30, 0xD00000000000002CLL, 0x800000025EC80460, 414);

    *(v2 + v7) = 2;
    v9 = *(v2 + v5);
    swift_beginAccess();

    pthread_mutex_unlock((v9 + 16));
    swift_endAccess();

    sub_25EC79984();
    return sub_25EC79834();
  }

  else
  {
    v11 = *(v2 + v5);
    swift_beginAccess();

    pthread_mutex_unlock((v11 + 16));
    swift_endAccess();

    sub_25EC7A144();

    v12 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v12);

    MEMORY[0x25F8CB870](0xD000000000000012, 0x800000025EC80B50);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80B30, 0xD00000000000002CLL, 0x800000025EC80460, 411);
  }
}

uint64_t sub_25EC4A6B4(uint64_t a1)
{
  v2 = v1;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000029, 0x800000025EC80A90);
  v3 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v3);

  MEMORY[0x25F8CB870](0x6D61726620746120, 0xEC0000003D644965);
  v4 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v4);

  sub_25EC47B5C(0, 0xE000000000000000, 0xD000000000000018, 0x800000025EC80AC0, 0xD00000000000002CLL, 0x800000025EC80460, 425);

  sub_25EC79984();
  v5 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v6 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v6 + 16));
  swift_endAccess();

  sub_25EC7A144();

  v7 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v7);

  MEMORY[0x25F8CB870](0xD00000000000001DLL, 0x800000025EC804B0);
  sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80AC0, 0xD00000000000002CLL, 0x800000025EC80460, 430);

  *(v2 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) = 1;
  v8 = *(v2 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond);
  swift_beginAccess();

  pthread_cond_signal((v8 + 16));
  swift_endAccess();

  v9 = *(v2 + v5);
  swift_beginAccess();

  pthread_mutex_unlock((v9 + 16));
  swift_endAccess();

  result = sub_25EC79954();
  if (result)
  {
    sub_25EC7A144();

    v11 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v11);

    MEMORY[0x25F8CB870](0xD00000000000001ALL, 0x800000025EC80AE0);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80AC0, 0xD00000000000002CLL, 0x800000025EC80460, 437);

    v12 = sub_25EC79964();
    return sub_25EC4A310(v12);
  }

  return result;
}

uint64_t sub_25EC4AA6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v3 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state;
  if (*(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) == 2)
  {
    v5 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v1 + v2);
      swift_beginAccess();
      swift_beginAccess();

      pthread_cond_wait((v6 + 16), (v7 + 16));
      swift_endAccess();
      swift_endAccess();
    }

    while (*(v1 + v4) == 2);
  }

  sub_25EC7A144();

  v8 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v8);

  MEMORY[0x25F8CB870](0xD000000000000020, 0x800000025EC80410);
  sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000017, 0x800000025EC80440, 0xD00000000000002CLL, 0x800000025EC80460, 451);

  *(v1 + v4) = 0;
  v9 = *(v1 + v2);
  swift_beginAccess();

  pthread_mutex_unlock((v9 + 16));
  swift_endAccess();
}

BOOL sub_25EC4AC84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v3 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state;
  v5 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state);
  if (*(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state))
  {
    sub_25EC7A144();

    v6 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v6);

    MEMORY[0x25F8CB870](0xD000000000000013, 0x800000025EC80490);
    sub_25EC47BA8(0x3D6870617267, 0xE600000000000000, 0x7247656C62616E65, 0xED00002928687061, 0xD00000000000002CLL, 0x800000025EC80460, 463);
  }

  else
  {
    sub_25EC7A144();

    v7 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v7);

    MEMORY[0x25F8CB870](0xD00000000000001DLL, 0x800000025EC804B0);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0x7247656C62616E65, 0xED00002928687061, 0xD00000000000002CLL, 0x800000025EC80460, 466);

    *(v1 + v4) = 1;
  }

  v8 = *(v1 + v2);
  swift_beginAccess();

  pthread_mutex_unlock((v8 + 16));
  swift_endAccess();

  return v5 == 0;
}

uint64_t GraphController.deinit()
{

  sub_25EC4E178(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig);

  return v0;
}

uint64_t GraphController.__deallocating_deinit()
{
  GraphController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25EC4AFF0()
{
  v2 = v0;
  result = swift_beginAccess();
  v4 = *(v0 + 16);
  if (*(v4 + 16))
  {
    while (1)
    {
      result = swift_beginAccess();
      if (!*(v4 + 16))
      {
        break;
      }

      v5 = *(v4 + 40);

      sub_25EC4F3B0(0, 1, sub_25EC50A24, sub_25EC4E810);
      swift_endAccess();
      sub_25EC48C0C(v5);

      if (!v1)
      {
        v4 = *(v2 + 16);
        if (*(v4 + 16))
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_25EC4B0E8()
{
  swift_beginAccess();
  result = *(*(v0 + 16) + 16);
  if (HIDWORD(result))
  {
    __break(1u);
  }

  return result;
}

uint64_t Executor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC4B19C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t sub_25EC4B234(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_25EC4B354(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v12 = swift_allocObject();
  sub_25EC79DE4();
  swift_allocObject();

  v14 = a6(v13, a4, a5);
  if (v6)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v14;
    *(v12 + 16) = a1;
    type metadata accessor for Executor();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D84F90];
    *(v16 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = v16;
    *(v12 + 40) = a2;
    sub_25EC79A54();
    swift_allocObject();

    *(v12 + 48) = sub_25EC79A44();
    swift_allocObject();
    *(v12 + 56) = sub_25EC79A44();
    *(v12 + 32) = v15;
    v18 = sub_25EC4E708(v17, &qword_27FD361D0, &qword_25EC7AD60);

    *(v12 + 64) = v18;
  }

  return v12;
}

uint64_t sub_25EC4B508(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  sub_25EC79DE4();
  swift_allocObject();

  v15 = a6(v14, a4, a5);
  if (v7)
  {

    type metadata accessor for SessionManager();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;
    *(v9 + 16) = a1;
    type metadata accessor for Executor();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D84F90];
    *(v17 + 16) = MEMORY[0x277D84F90];
    *(v9 + 24) = v17;
    *(v9 + 40) = a2;
    sub_25EC79A54();
    swift_allocObject();

    *(v9 + 48) = sub_25EC79A44();
    swift_allocObject();
    *(v9 + 56) = sub_25EC79A44();
    *(v9 + 32) = v16;
    v19 = sub_25EC4E708(v18, &qword_27FD361D0, &qword_25EC7AD60);

    *(v9 + 64) = v19;
  }

  return v9;
}

uint64_t sub_25EC4B678(uint64_t a1)
{
  v3 = sub_25EC79A64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 64) + 16) && (sub_25EC4CDB4(a1), (v7 & 1) != 0))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_25EC7A144();

    v12 = 0x3D64496870617267;
    v13 = 0xE900000000000028;
    LODWORD(v14) = a1;
    v8 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v8);

    MEMORY[0x25F8CB870](0xD000000000000010, 0x800000025EC804D0);
    sub_25EC47BA8(v12, v13, 0xD000000000000012, 0x800000025EC804F0, 0xD00000000000002CLL, 0x800000025EC80460, 611);

    sub_25EC4E124();
    swift_allocError();
    *v9 = a1;
    *(v9 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D3E798], v3);
    type metadata accessor for GraphController(0);
    v3 = swift_allocObject();
    sub_25EC49E68(a1, v6);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + 64);
    *(v1 + 64) = 0x8000000000000000;
    sub_25EC4DB9C(v3, a1, isUniquelyReferenced_nonNull_native, sub_25EC5CD50, &qword_27FD361D0, &qword_25EC7AD60);
    *(v1 + 64) = v14;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_25EC4B938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = (a1 + 32);
  swift_beginAccess();
  v3 = v2;
  v4 = v1;
  do
  {
    v6 = *v3++;
    v5 = v6;
    if (!*(*(v52 + 64) + 16) || (sub_25EC4CDB4(v5), (v7 & 1) == 0))
    {
      sub_25EC4E124();
      swift_allocError();
      *v10 = v5;
      *(v10 + 4) = 3;
      swift_willThrow();
      return v5;
    }

    --v4;
  }

  while (v4);
  v5 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  swift_beginAccess();
  do
  {
    if (*(*(v52 + 64) + 16))
    {
      sub_25EC4CDB4(*v2);
      if (v8)
      {

        MEMORY[0x25F8CB8A0](v9);
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25EC7A0A4();
        }

        sub_25EC7A0C4();
        v5 = v53;
      }
    }

    ++v2;
    --v1;
  }

  while (v1);
LABEL_15:
  if (v5 >> 62)
  {
    goto LABEL_68;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v5;
  if (!result)
  {
LABEL_69:
    v5 = MEMORY[0x277D84F90];
LABEL_70:

    return v5;
  }

LABEL_17:
  if (result >= 1)
  {
    v12 = v5;
    v5 = 0;
    v47 = v12 & 0xC000000000000001;
    v42 = v12 + 32;
    v46 = result;
    do
    {
      if (v47)
      {
        v13 = MEMORY[0x25F8CB970](v5, v45);
      }

      else
      {
        v13 = *(v45 + 8 * v5 + 32);
      }

      if ((sub_25EC799E4() & 1) == 0)
      {
        sub_25EC7A144();
        MEMORY[0x25F8CB870](0xD00000000000001DLL, 0x800000025EC80510);
        v14 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v14);

        MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC80530);
        sub_25EC47BA8(0, 0xE000000000000000, 0xD000000000000017, 0x800000025EC80550, 0xD00000000000002CLL, 0x800000025EC80460, 669);
      }

      if (!GSTService.deregisterReceiver(receiverId:)(*(v13 + 16)))
      {
        sub_25EC7A144();

        v15 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v15);

        MEMORY[0x25F8CB870](0xD000000000000013, 0x800000025EC80570);
        sub_25EC47BA8(0xD00000000000001DLL, 0x800000025EC80510, 0xD000000000000017, 0x800000025EC80550, 0xD00000000000002CLL, 0x800000025EC80460, 672);
      }

      ++v5;
    }

    while (v46 != v5);
    v16 = 0;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v47)
      {
        v17 = MEMORY[0x25F8CB970](v16, v45);
      }

      else
      {
        if (v16 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v17 = *(v42 + 8 * v16);
      }

      v44 = v16 + 1;
      sub_25EC4AA6C();
      v18 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
      swift_beginAccess();
      v43 = v17;
      v5 = *(v17 + v18);
      v49 = v5 + 64;
      v19 = 1 << *(v5 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v5 + 64);
      v48 = (v19 + 63) >> 6;

      v22 = 0;
      v50 = v5;
      while (1)
      {
LABEL_37:
        if (v21)
        {
          goto LABEL_42;
        }

LABEL_38:
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        if (v23 >= v48)
        {
          break;
        }

        v21 = *(v49 + 8 * v23);
        ++v22;
        if (!v21)
        {
          goto LABEL_38;
        }

        v22 = v23;
LABEL_42:
        v24 = *(*(v5 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        swift_beginAccess();
        v25 = *(v24 + 48);
        if (v25 >> 62)
        {
          v26 = sub_25EC7A184();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 &= v21 - 1;
        if (v26)
        {
          if (v26 >= 1)
          {
            v27 = v25 & 0xC000000000000001;

            v28 = 0;
            v51 = v26;
            while (1)
            {
              if (v27)
              {
                v29 = MEMORY[0x25F8CB970](v28, v25);
              }

              else
              {
                v29 = *(v25 + 8 * v28 + 32);
              }

              sub_25EC79854();
              v30 = *(v29 + 16);
              if (v30 == 2)
              {
                if ((sub_25EC799D4() & 1) == 0)
                {
                  sub_25EC7A144();
                  MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
                  v35 = sub_25EC7A224();
                  MEMORY[0x25F8CB870](v35);

                  MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC805B0);
                  v26 = v51;
                  sub_25EC47BA8(0, 0xE000000000000000, 0xD000000000000022, 0x800000025EC805D0, 0xD00000000000002CLL, 0x800000025EC80460, 624);
                }

                v36 = *(*(v52 + 40) + 16);
                v37 = *(v36 + 32);
                swift_beginAccess();

                pthread_mutex_lock((v37 + 16));
                swift_endAccess();

                LOBYTE(v37) = sub_25EC799D4();
                v38 = *(v36 + 32);
                swift_beginAccess();

                pthread_mutex_unlock((v38 + 16));
                swift_endAccess();

                v27 = v25 & 0xC000000000000001;
                if (v37)
                {
                  goto LABEL_48;
                }

                sub_25EC7A144();
                MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
                v39 = sub_25EC7A224();
                MEMORY[0x25F8CB870](v39);

                MEMORY[0x25F8CB870](0xD000000000000015, 0x800000025EC80600);
                v32 = 0xD000000000000021;
                v26 = v51;
                v33 = 0x800000025EC80620;
                v34 = 634;
              }

              else
              {
                if (v30 != 1 || (sub_25EC799D4() & 1) != 0)
                {
                  goto LABEL_48;
                }

                sub_25EC7A144();
                MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
                v31 = sub_25EC7A224();
                MEMORY[0x25F8CB870](v31);

                MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC805B0);
                v32 = 0xD000000000000022;
                v33 = 0x800000025EC805D0;
                v27 = v25 & 0xC000000000000001;
                v34 = 624;
              }

              sub_25EC47BA8(0, 0xE000000000000000, v32, v33, 0xD00000000000002CLL, 0x800000025EC80460, v34);

LABEL_48:
              ++v28;

              if (v26 == v28)
              {

                v5 = v50;
                goto LABEL_37;
              }
            }
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          result = sub_25EC7A184();
          v45 = v5;
          if (!result)
          {
            goto LABEL_69;
          }

          goto LABEL_17;
        }
      }

      MEMORY[0x25F8CB8A0](v40);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      v5 = v54;
      v41 = *(v43 + 16);
      swift_beginAccess();
      sub_25EC4D0E4(v41, sub_25EC60DA0, sub_25EC5CD50);
      swift_endAccess();

      v16 = v44;
      if (v44 == v46)
      {
        goto LABEL_70;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC4C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_beginAccess();
  if (*(*(v3 + 64) + 16) && (sub_25EC4CDB4(a1), (v6 & 1) != 0))
  {

    v7 = sub_25EC799F4();

    if ((v7 & 1) == 0)
    {
      sub_25EC7A144();

      v8 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v8);

      sub_25EC47BA8(0xD00000000000002FLL, 0x800000025EC80680, 0xD00000000000002ALL, 0x800000025EC80650, 0xD00000000000002CLL, 0x800000025EC80460, 711);

      sub_25EC4E124();
      swift_allocError();
      *v9 = v4;
      *(v9 + 4) = 6;
      swift_willThrow();
    }
  }

  else
  {
    sub_25EC7A144();

    v11 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v11);

    MEMORY[0x25F8CB870](0x756F6620746F6E20, 0xEA0000000000646ELL);
    sub_25EC47BA8(0x206870617247, 0xE600000000000000, 0xD00000000000002ALL, 0x800000025EC80650, 0xD00000000000002CLL, 0x800000025EC80460, 707);

    sub_25EC4E124();
    swift_allocError();
    *v12 = a1;
    *(v12 + 4) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_25EC4C5EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  v8 = *(v3 + 32);
  v17 = *a3;
  LODWORD(v18) = v7;
  type metadata accessor for PSWriterM3Demo(0);
  swift_allocObject();

  result = PSWriterM3Demo.init(resourceID:pbsManager:entrySize:bufferConfig:)(a1, v8, a2, &v17);
  if (!result)
  {
    sub_25EC47BA8(0xD000000000000019, 0x800000025EC806B0, 0xD000000000000038, 0x800000025EC806D0, 0xD00000000000002CLL, 0x800000025EC80460, 731);
    sub_25EC4E124();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 10;
    swift_willThrow();
    return a2;
  }

  if (!HIDWORD(a1))
  {
    a2 = result;
    v10 = *(v4 + 40);
    if (sub_25EC79A34())
    {
      type metadata accessor for TightbeamTriggerChannel();
      *(swift_allocObject() + 16) = v10;
      sub_25EC4E9A0();

      v11 = sub_25EC79A04();

      if (v11)
      {
        sub_25EC47B5C(0xD00000000000001DLL, 0x800000025EC80730, 0xD000000000000038, 0x800000025EC806D0, 0xD00000000000002CLL, 0x800000025EC80460, 747);
        return a2;
      }

      v17 = 0;
      v18 = 0xE000000000000000;
      sub_25EC7A144();

      v17 = 0xD00000000000001ELL;
      v18 = 0x800000025EC80710;
      v19 = sub_25EC79854();
      v14 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v14);

      sub_25EC47BA8(v17, v18, 0xD000000000000038, 0x800000025EC806D0, 0xD00000000000002CLL, 0x800000025EC80460, 743);

      v15 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      *v16 = v15;
      *(v16 + 4) = 7;
    }

    else
    {
      sub_25EC4E124();
      swift_allocError();
      *v13 = a1;
      *(v13 + 4) = 8;
    }

    swift_willThrow();

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC4C938()
{
  if (sub_25EC6CC64())
  {
    v0 = sub_25EC79854();
    if (PolarisGSTServiceHandle.deregisterSender(senderId:)(v0))
    {
      sub_25EC79854();
      if (sub_25EC799D4())
      {
        return sub_25EC47B5C(0xD00000000000001DLL, 0x800000025EC807B0, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 774);
      }

      sub_25EC7A144();

      sub_25EC79854();
      v6 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v6);

      sub_25EC47BA8(0xD00000000000001ALL, 0x800000025EC80790, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 770);

      sub_25EC4E124();
      swift_allocError();
      v3 = 10;
      v4 = 3;
    }

    else
    {
      sub_25EC7A144();
      MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
      v7 = sub_25EC79854();
      v5 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v5);

      MEMORY[0x25F8CB870](0xD000000000000015, 0x800000025EC80600);
      sub_25EC47BA8(HIDWORD(v7), 0xE000000000000000, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 765);

      v4 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      v3 = 9;
    }
  }

  else
  {
    sub_25EC47BA8(0xD00000000000001ALL, 0x800000025EC80750, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 759);
    sub_25EC4E124();
    swift_allocError();
    v3 = 10;
    v4 = 1;
  }

  *v2 = v4;
  *(v2 + 4) = v3;
  return swift_willThrow();
}

void *SessionManager.deinit()
{

  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25EC4CD24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
  v2 = sub_25EC7A014();

  return sub_25EC4CDFC(a1, v2);
}

unint64_t sub_25EC4CDB4(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x25F8CBAE0](*(v1 + 40), a1, 4);

  return sub_25EC4CFB0(v2, v3);
}

unint64_t sub_25EC4CDFC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
      v15 = sub_25EC7A024();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_25EC4CFB0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25EC4D01C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25EC4CDB4(a1);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v12 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25EC5CD64();
      v8 = v12;
    }

    v9 = v6;
    v10 = *(*(v8 + 56) + 4 * v6);
    sub_25EC5C744(v9, v8);
    *v2 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10 | (((v5 & 1) == 0) << 32);
}

uint64_t sub_25EC4D0E4(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_25EC4CDB4(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v14 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v14;
  }

  v12 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v12;
}

uint64_t sub_25EC4D198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36180, &qword_25EC7AD20);
  result = sub_25EC7A1A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x25F8CBAE0](*(v7 + 40), v20, 4);
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25EC4D400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36198, &qword_25EC7AD38);
  v39 = v4;
  result = sub_25EC7A1A4();
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

      sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
      result = sub_25EC7A014();
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

uint64_t sub_25EC4D7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25EC7A1A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 4 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = MEMORY[0x25F8CBAE0](*(v9 + 40), v22, 4);
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 4 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_25EC4DA50(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25EC4CDB4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25EC5CD64();
    result = v17;
    goto LABEL_8;
  }

  sub_25EC4D198(v14, a3 & 1);
  result = sub_25EC4CDB4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 4 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 4 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25EC7A264();
  __break(1u);
  return result;
}

unint64_t sub_25EC4DB9C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = v6;
  v14 = *v6;
  result = sub_25EC4CDB4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      sub_25EC4D7E4(v20, a3 & 1, a5, a6);
      result = sub_25EC4CDB4(a2);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_25EC7A264();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a4();
      result = v23;
    }
  }

  v25 = *v10;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 4 * result) = a2;
    *(v25[7] + 8 * result) = a1;
    v26 = v25[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v19)
    {
      v25[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  *(v25[7] + 8 * result) = a1;
}

uint64_t sub_25EC4DD18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = *v3;
  v14 = sub_25EC4CD24(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25EC5CEC4();
      goto LABEL_7;
    }

    sub_25EC4D400(v17, a3 & 1);
    v22 = sub_25EC4CD24(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25EC4DF14(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25EC7A264();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25EC4DF14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
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

BOOL _s21PolarisExclaveSupport12SessionErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  v5 = *(a2 + 4);
  if (v3 <= 4)
  {
    if (*(a1 + 4) > 1u)
    {
      if (v3 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v3 == 3)
      {
        if (v5 != 3)
        {
          return 0;
        }
      }

      else if (v5 != 4)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (*(a1 + 4))
    {
      if (v5 != 1)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (!*(a2 + 4))
    {
      return v2 == v4;
    }
  }

  else if (*(a1 + 4) > 7u)
  {
    if (v3 == 8)
    {
      if (v5 != 8)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v3 == 9)
    {
      if (v5 != 9)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (v5 == 10 && v4 == 2)
        {
          return 1;
        }
      }

      else if (v5 == 10 && v4 == 3)
      {
        return 1;
      }
    }

    else if (v2)
    {
      if (v5 == 10 && v4 == 1)
      {
        return 1;
      }
    }

    else if (v5 == 10 && !v4)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == 5)
    {
      if (v5 != 5)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v3 == 6)
    {
      if (v5 != 6)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v5 == 7)
    {
      return v2 == v4;
    }
  }

  return 0;
}

unint64_t sub_25EC4E124()
{
  result = qword_27FD36110;
  if (!qword_27FD36110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36110);
  }

  return result;
}

uint64_t sub_25EC4E178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25EC4E1E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361C0, &qword_25EC7AD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361C8, &qword_25EC7AD58);
    v7 = sub_25EC7A1B4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25EC4F520(v9, v5, &qword_27FD361C0, &qword_25EC7AD50);
      result = sub_25EC4CD24(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 12 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EC4E3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36190, &qword_25EC7AD30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36198, &qword_25EC7AD38);
    v7 = sub_25EC7A1B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25EC4F520(v9, v5, &qword_27FD36190, &qword_25EC7AD30);
      result = sub_25EC4CD24(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EC4E604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36180, &qword_25EC7AD20);
    v3 = sub_25EC7A1B4();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25EC4CDB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25EC4E708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_25EC7A1B4();
  LODWORD(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_25EC4CDB4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 4 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 2);
    v17 = *v12;

    v10 = sub_25EC4CDB4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25EC4E810(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361E0, &qword_25EC7AD70);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for GraphController(uint64_t a1)
{
  result = qword_27FD36150;
  if (!qword_27FD36150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25EC4E9A0()
{
  result = qword_27FD36140;
  if (!qword_27FD36140)
  {
    type metadata accessor for TightbeamTriggerChannel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36140);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 5))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 4);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 4) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_25EC4EA98(uint64_t a1)
{
  if (*(a1 + 4) <= 9u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_25EC4EAB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    LOBYTE(a2) = 10;
  }

  *(result + 4) = a2;
  return result;
}

void sub_25EC4EB8C(uint64_t a1)
{
  sub_25EC4EDA8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25EC4EDA8(uint64_t a1)
{
  if (!qword_27FD36160)
  {
    sub_25EC79734();
    v1 = sub_25EC7A0F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD36160);
    }
  }
}

uint64_t getEnumTagSinglePayload for GraphController.GraphState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphController.GraphState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25EC4F1C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25EC4F224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_25EC4F288()
{
  result = qword_27FD36168;
  if (!qword_27FD36168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36168);
  }

  return result;
}

unint64_t sub_25EC4F2DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC4F3B0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
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

uint64_t sub_25EC4F4D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD361A0, &unk_25EC7AD40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25EC4F520(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25EC4F5B8(uint64_t a1, void (*a2)(uint64_t))
{
  swift_unownedRetainStrong();
  a2(a1);
}

uint64_t Graph.lowerToGraphDescription()@<X0>(_DWORD *a1@<X8>)
{
  v78 = a1;
  v108 = sub_25EC79C14();
  v2 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = sub_25EC79BF4();
  v4 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25EC79AF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v106 = &v75[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v75[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v75[-v18];
  sub_25EC79B74();
  sub_25EC79A94();
  v20 = *(v11 + 8);
  v110 = v11 + 8;
  v111 = v10;
  v109 = v20;
  v20(v19, v10);
  v76 = v115;
  v77 = v1;
  result = sub_25EC79B84();
  v86 = *(result + 16);
  if (v86)
  {
    v22 = 0;
    v85 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v84 = v7 + 16;
    v96 = (v4 + 8);
    v97 = v4 + 16;
    v100 = (v2 + 8);
    v101 = v2 + 16;
    v79 = (v7 + 8);
    v23 = MEMORY[0x277D84F90];
    v90 = v2;
    v83 = v4;
    v89 = v9;
    v82 = v6;
    v81 = v7;
    v80 = result;
    while (v22 < *(result + 16))
    {
      v94 = v23;
      v95 = v22;
      (*(v7 + 16))(v9, v85 + *(v7 + 72) * v22, v6);
      v24 = v87;
      sub_25EC79AA4();
      v25 = v111;
      sub_25EC79A94();
      v109(v24, v25);
      v93 = v114;
      v92 = sub_25EC79AE4();
      v91 = v26;
      v27 = sub_25EC79AB4();
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v30 = *(v4 + 72);
        v31 = *(v4 + 16);
        v112 = MEMORY[0x277D84F90];
        while (1)
        {
          v33 = v98;
          v32 = v99;
          v31(v98, v29, v99);
          v34 = v106;
          sub_25EC79BD4();
          v35 = v111;
          sub_25EC79A94();
          v109(v34, v35);
          v36 = v113;
          v37 = sub_25EC79BE4();
          result = (*v96)(v33, v32);
          if ((v37 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (HIDWORD(v37))
          {
            goto LABEL_41;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_25EC50D90(0, *(v112 + 2) + 1, 1, v112);
          }

          v39 = *(v112 + 2);
          v38 = *(v112 + 3);
          if (v39 >= v38 >> 1)
          {
            v112 = sub_25EC50D90((v38 > 1), v39 + 1, 1, v112);
          }

          v40 = v112;
          *(v112 + 2) = v39 + 1;
          v41 = &v40[12 * v39];
          *(v41 + 8) = v36;
          *(v41 + 9) = v37;
          v41[40] = 0;
          v29 += v30;
          if (!--v28)
          {

            v2 = v90;
            v9 = v89;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v112 = MEMORY[0x277D84F90];
LABEL_15:
      v42 = sub_25EC79AC4();
      v43 = *(v42 + 16);
      v44 = v105;
      if (v43)
      {
        v45 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v88 = v42;
        v46 = v42 + v45;
        v47 = *(v2 + 72);
        v103 = *(v2 + 16);
        v104 = v47;
        v48 = MEMORY[0x277D84F90];
        do
        {
          v103(v44, v46, v108);
          if (qword_27FD360E0 != -1)
          {
            swift_once();
          }

          v49 = qword_27FD36648;
          sub_25EC79C04();
          swift_getObjectType();
          v50 = v102;
          sub_25EC798E4();
          swift_unknownObjectRelease();
          if (*(v49 + 16) && (v51 = sub_25EC4CD24(v50), (v52 & 1) != 0))
          {
            v53 = (*(v49 + 56) + 12 * v51);
            v54 = *v53;
            v107 = v53[1];
            v55 = v53[2];
            v109(v50, v111);
          }

          else
          {
            v109(v50, v111);
            if (qword_27FD360E8 != -1)
            {
              swift_once();
            }

            v54 = qword_27FD36330;
            v107 = HIDWORD(qword_27FD36330);
            v55 = dword_27FD36338;
          }

          sub_25EC79C04();
          swift_getObjectType();
          v56 = v106;
          sub_25EC798E4();
          swift_unknownObjectRelease();
          v57 = v111;
          sub_25EC79A94();
          v109(v56, v57);
          v58 = v113;
          sub_25EC79C04();
          swift_getObjectType();
          v59 = sub_25EC79904();
          swift_unknownObjectRelease();
          (*v100)(v44, v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_25EC50C80(0, *(v48 + 2) + 1, 1, v48);
          }

          v61 = *(v48 + 2);
          v60 = *(v48 + 3);
          if (v61 >= v60 >> 1)
          {
            v48 = sub_25EC50C80((v60 > 1), v61 + 1, 1, v48);
          }

          *(v48 + 2) = v61 + 1;
          v62 = &v48[24 * v61];
          *(v62 + 8) = v58;
          *(v62 + 36) = v59 | (v54 << 32);
          *(v62 + 44) = v107 | (v55 << 32);
          *(v62 + 26) = 512;
          v44 = v105;
          v46 += v104;
          --v43;
        }

        while (v43);

        v2 = v90;
        v9 = v89;
      }

      else
      {

        v48 = MEMORY[0x277D84F90];
      }

      v63 = sub_25EC79AD4();
      v65 = v64;
      v6 = v82;
      (*v79)(v9, v82);
      v23 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_25EC50B58(0, *(v23 + 2) + 1, 1, v23);
      }

      v67 = *(v23 + 2);
      v66 = *(v23 + 3);
      if (v67 >= v66 >> 1)
      {
        v23 = sub_25EC50B58((v66 > 1), v67 + 1, 1, v23);
      }

      *(v23 + 2) = v67 + 1;
      v68 = &v23[56 * v67];
      *(v68 + 8) = v93;
      v22 = v95 + 1;
      v69 = v91;
      *(v68 + 5) = v92;
      *(v68 + 6) = v69;
      *(v68 + 7) = v112;
      *(v68 + 8) = v48;
      *(v68 + 9) = v63;
      *(v68 + 10) = v65;
      v4 = v83;
      v7 = v81;
      result = v80;
      if (v22 == v86)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
LABEL_39:
    v70 = sub_25EC79BB4();
    v72 = v71;
    result = sub_25EC79B24();
    v73 = v78;
    *v78 = v76;
    v73[1] = v23;
    v73[2] = v70;
    v73[3] = v72;
    v73[4] = result;
    v73[5] = v74;
  }

  return result;
}

uint64_t Task.lowerToTaskDescription()@<X0>(_DWORD *a1@<X8>)
{
  v58 = a1;
  v2 = sub_25EC79C14();
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  MEMORY[0x28223BE20](v2);
  v66 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_25EC79BF4();
  v5 = *(v65 - 1);
  MEMORY[0x28223BE20](v65);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v54 - v13;
  sub_25EC79AA4();
  sub_25EC79A94();
  v15 = *(v9 + 8);
  v63 = (v9 + 8);
  v64 = v8;
  v62 = v15;
  v15(v14, v8);
  v57 = v75;
  v16 = sub_25EC79AE4();
  v55 = v17;
  v56 = v16;
  v18 = sub_25EC79AB4();
  v19 = *(v18 + 16);
  v59 = v1;
  if (v19)
  {
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v22 = *(v20 + 64);
    v54[1] = v18;
    v23 = v18 + ((v22 + 32) & ~v22);
    v60 = *(v20 + 56);
    v61 = v21;
    v24 = (v20 - 8);
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v65;
      v27 = v20;
      v61(v7, v23, v65);
      sub_25EC79BD4();
      v28 = v64;
      sub_25EC79A94();
      v62(v12, v28);
      v29 = v70;
      v30 = sub_25EC79BE4();
      result = (*v24)(v7, v26);
      if ((v30 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v30))
      {
        goto LABEL_23;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_25EC50D90(0, *(v25 + 2) + 1, 1, v25);
      }

      v33 = *(v25 + 2);
      v32 = *(v25 + 3);
      v69 = v25;
      if (v33 >= v32 >> 1)
      {
        v69 = sub_25EC50D90((v32 > 1), v33 + 1, 1, v69);
      }

      v34 = v69;
      *(v69 + 2) = v33 + 1;
      v25 = v34;
      v35 = &v34[12 * v33];
      *(v35 + 8) = v29;
      *(v35 + 9) = v30;
      v35[40] = 0;
      v23 += v60;
      --v19;
      v20 = v27;
      if (!v19)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

    v69 = MEMORY[0x277D84F90];
LABEL_12:
    v36 = sub_25EC79AC4();
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = *(v68 + 16);
      v39 = v36 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v64 = *(v68 + 72);
      v65 = v38;
      v68 += 16;
      v62 = v36;
      v63 = (v68 - 8);
      v40 = MEMORY[0x277D84F90];
      do
      {
        v41 = v66;
        v42 = v67;
        (v65)(v66, v39, v67);
        Output.lowerToOutputInfo()(&v70);
        (*v63)(v41, v42);
        v43 = v70;
        v45 = v71;
        v44 = v72;
        v46 = v73;
        v47 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_25EC50C80(0, *(v40 + 2) + 1, 1, v40);
        }

        v49 = *(v40 + 2);
        v48 = *(v40 + 3);
        if (v49 >= v48 >> 1)
        {
          v40 = sub_25EC50C80((v48 > 1), v49 + 1, 1, v40);
        }

        *(v40 + 2) = v49 + 1;
        v50 = &v40[24 * v49];
        *(v50 + 8) = v43;
        *(v50 + 36) = v45;
        *(v50 + 44) = v44;
        v50[52] = v46;
        v50[53] = v47;
        v39 += v64;
        --v37;
      }

      while (v37);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    result = sub_25EC79AD4();
    v51 = v58;
    *v58 = v57;
    v52 = v55;
    v51[1] = v56;
    v51[2] = v52;
    v51[3] = v69;
    v51[4] = v40;
    v51[5] = result;
    v51[6] = v53;
  }

  return result;
}

unint64_t Input.lowerToInputInfo()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  sub_25EC79BD4();
  sub_25EC79A94();
  (*(v3 + 8))(v5, v2);
  v6 = v8[3];
  result = sub_25EC79BE4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a1 = v6;
    *(a1 + 4) = result;
    *(a1 + 8) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Output.lowerToOutputInfo()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  if (qword_27FD360E0 != -1)
  {
    swift_once();
  }

  v9 = qword_27FD36648;
  sub_25EC79C04();
  swift_getObjectType();
  sub_25EC798E4();
  swift_unknownObjectRelease();
  if (*(v9 + 16) && (v10 = sub_25EC4CD24(v8), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 12 * v10);
    v13 = *v12;
    v22 = v12[1];
    v14 = v12[2];
    v15 = *(v3 + 8);
    v15(v8, v2);
    v16 = v13;
  }

  else
  {
    v15 = *(v3 + 8);
    v15(v8, v2);
    if (qword_27FD360E8 != -1)
    {
      swift_once();
    }

    v16 = qword_27FD36330;
    v22 = HIDWORD(qword_27FD36330);
    v14 = dword_27FD36338;
  }

  sub_25EC79C04();
  swift_getObjectType();
  sub_25EC798E4();
  swift_unknownObjectRelease();
  sub_25EC79A94();
  v15(v6, v2);
  v17 = v23;
  sub_25EC79C04();
  swift_getObjectType();
  v18 = sub_25EC79904();
  result = swift_unknownObjectRelease();
  v20 = v22 | (v14 << 32);
  *a1 = v17;
  *(a1 + 4) = v18 | (v16 << 32);
  *(a1 + 12) = v20;
  *(a1 + 20) = 512;
  return result;
}

char *sub_25EC508F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36258, &unk_25EC7ADD0);
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

void *sub_25EC50A24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36228, &qword_25EC7ADA8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361E0, &qword_25EC7AD70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EC50B58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36240, &qword_25EC7ADC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EC50C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36248, &unk_25EC7B4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25EC50D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36250, &qword_25EC7ADC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25EC50EA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36238, &qword_25EC7ADB8);
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

char *sub_25EC50FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
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

char *sub_25EC510B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36230, &qword_25EC7ADB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25EC511F8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36218, &qword_25EC7AD98);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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

char *sub_25EC513E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36200, &unk_25EC7B400);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EC514F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36208, &qword_25EC7AD88);
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

void *sub_25EC51628(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_25EC51804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F8, &qword_25EC7AD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t GraphDescription.init(graphId:tasks:onSubmit:onTeardown:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t TaskDescription.init(taskId:workload:inputs:outputs:onSubmit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t InputInfo.init(dependencyId:type:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  *a3 = result;
  *(a3 + 4) = v3;
  *(a3 + 8) = v4;
  return result;
}

__n128 OutputInfo.init(senderId:type:scope:)@<Q0>(int a1@<W0>, __n128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u8[0];
  v5 = *a3;
  *a4 = a1;
  result = *a2;
  *(a4 + 4) = *a2;
  *(a4 + 20) = v4;
  *(a4 + 21) = v5;
  return result;
}

uint64_t DependencyScope.hashValue.getter()
{
  v1 = *v0;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v1);
  return sub_25EC7A304();
}

uint64_t ResourceBufferConfig.init(selectorType:numRingBuffers:numViews:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ResourceBufferConfig.hash(into:)()
{
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t ResourceBufferConfig.hashValue.getter()
{
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC51B10()
{
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC51B7C()
{
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t sub_25EC51BC4(uint64_t a1)
{
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

BOOL static OutputDependencyType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if ((*(a2 + 16) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  return !((*a1 ^ *a2) >> 32) && *(a1 + 8) == *(a2 + 8);
}

uint64_t OutputDependencyType.hash(into:)()
{
  if (*(v0 + 16))
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t OutputDependencyType.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25EC7A2D4();
  if (v1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC51DD0()
{
  v1 = *(v0 + 16);
  sub_25EC7A2D4();
  if (v1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC51E78()
{
  if (*(v0 + 16))
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t sub_25EC51EF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25EC7A2D4();
  if (v2)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

BOOL sub_25EC51F94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if ((*(a2 + 16) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  return !((*a1 ^ *a2) >> 32) && *(a1 + 8) == *(a2 + 8);
}

BOOL static InputDependencyType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t InputDependencyType.hash(into:)()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t InputDependencyType.hashValue.getter()
{
  v1 = *(v0 + 4);
  sub_25EC7A2D4();
  if (v1 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC520E4()
{
  v1 = *(v0 + 4);
  sub_25EC7A2D4();
  if (v1 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC52154()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t sub_25EC521A4(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_25EC7A2D4();
  if (v2 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

BOOL sub_25EC52210(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

__n128 OutputInfo.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 20);
  result = *(v1 + 4);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t OutputInfo.hash(into:)()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 21);
  sub_25EC7A2F4();
  if (v1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return MEMORY[0x25F8CBB00](v2);
}

uint64_t OutputInfo.hashValue.getter()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 21);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  MEMORY[0x25F8CBB00](v2);
  return sub_25EC7A304();
}

uint64_t sub_25EC523DC()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 21);
  sub_25EC7A2F4();
  if (v1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return MEMORY[0x25F8CBB00](v2);
}

uint64_t sub_25EC52470(uint64_t a1)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 21);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v2)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  MEMORY[0x25F8CBB00](v3);
  return sub_25EC7A304();
}

void InputInfo.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *(v1 + 4);
  *(a1 + 4) = v2;
}

uint64_t InputInfo.init(senderId:type:scope:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  *a3 = result;
  *(a3 + 4) = v3;
  *(a3 + 8) = v4;
  return result;
}

uint64_t static InputInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 8) == 1)
    {
      if (v2)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 4) != *(a2 + 4))
      {
        v2 = 1;
      }

      if (v2 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t InputInfo.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_25EC7A2F4();
  if (v1 == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t InputInfo.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v1 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC52694()
{
  v1 = *(v0 + 8);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v1 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC52714()
{
  v1 = *(v0 + 8);
  sub_25EC7A2F4();
  if (v1 == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t sub_25EC52770(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v2 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC527EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TaskDescription.workload.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TaskDescription.onSubmit.getter()
{
  v1 = *(v0 + 40);
  sub_25EC473B4(v1, *(v0 + 48));
  return v1;
}

uint64_t GraphDescription.onSubmit.getter()
{
  v1 = *(v0 + 16);
  sub_25EC473B4(v1, *(v0 + 24));
  return v1;
}

uint64_t GraphDescription.onTeardown.getter()
{
  v1 = *(v0 + 32);
  sub_25EC473B4(v1, *(v0 + 40));
  return v1;
}

BOOL _s21PolarisExclaveSupport10OutputInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 20))
    {
      return 0;
    }

    if (*(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  return *(a1 + 21) == *(a2 + 21);
}

unint64_t sub_25EC5298C()
{
  result = qword_27FD36260;
  if (!qword_27FD36260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36260);
  }

  return result;
}

unint64_t sub_25EC529E4()
{
  result = qword_27FD36268;
  if (!qword_27FD36268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36268);
  }

  return result;
}

unint64_t sub_25EC52A3C()
{
  result = qword_27FD36270;
  if (!qword_27FD36270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36270);
  }

  return result;
}

unint64_t sub_25EC52A94()
{
  result = qword_27FD36278;
  if (!qword_27FD36278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36278);
  }

  return result;
}

unint64_t sub_25EC52AEC()
{
  result = qword_27FD36280;
  if (!qword_27FD36280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36280);
  }

  return result;
}

unint64_t sub_25EC52B44()
{
  result = qword_27FD36288;
  if (!qword_27FD36288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DependencyScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DependencyScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResourceBufferConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResourceBufferConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OutputDependencyType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OutputDependencyType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25EC52DBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC52DD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InputDependencyType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputDependencyType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_25EC52E54(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC52E70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

__n128 __swift_memcpy22_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OutputInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 22))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 21);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OutputInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 21) = a2 + 3;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InputInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25EC52FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25EC53024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25EC53080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25EC530C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25EC5312C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_25EC79C64();
  v6 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25EC533EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F0, &qword_25EC7B3F8);
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362B0, &qword_25EC7B298);
  v10 = MEMORY[0x28223BE20](v39);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v35 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v33 = &v30 - v16;
  v17 = *(a3 + 16);
  if (v17)
  {
    v30 = v15;
    v31 = a4;
    v18 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    while (1)
    {
      v41 = v5;
      v19 = v12;
      v20 = v36;
      sub_25EC60BD8(v18, v36);
      v21 = *(v37 + 48);
      v22 = sub_25EC79D34();
      v23 = *(*(v22 - 8) + 32);
      v24 = v35;
      v23(v35, v20, v22);
      v40 = *(v20 + v21);
      v12 = v19;
      v25 = v33;
      v23(v33, v24, v22);
      *(v25 + *(v39 + 48)) = v40;
      sub_25EC60C48(v25, v12);
      v26 = v41;
      v27 = v38(v12);
      v5 = v26;
      if (v26)
      {
        return sub_25EC60CB8(v12, &qword_27FD362B0, &qword_25EC7B298);
      }

      if (v27)
      {
        break;
      }

      sub_25EC60CB8(v12, &qword_27FD362B0, &qword_25EC7B298);
      v18 += v32;
      if (!--v17)
      {
        v28 = 1;
        a4 = v31;
        goto LABEL_10;
      }
    }

    a4 = v31;
    sub_25EC60C48(v12, v31);
    v28 = 0;
LABEL_10:
    v15 = v30;
  }

  else
  {
    v28 = 1;
  }

  return (*(v15 + 56))(a4, v28, 1, v39);
}

uint64_t GraphDeploymentEK.resourceWriters.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t _s21PolarisExclaveSupport17GraphDeploymentEKC11fetchGraphsAA012ExSerializedD9DataArrayVyAA6ResultOYKF@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v47 = sub_25EC79BC4();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  swift_beginAccess();

  pthread_mutex_lock((v9 + 16));
  swift_endAccess();

  if (*(v2 + 56))
  {
    v10 = *(v2 + 48);
    swift_beginAccess();

    pthread_mutex_unlock((v10 + 16));
    swift_endAccess();

    *a1 = 9;
    LOBYTE(v43) = 9;
    sub_25EC5B6D8();
    return swift_willThrowTypedImpl();
  }

  else
  {
    v39 = a2;
    *(v2 + 56) = 1;
    v12 = *(v2 + 48);
    swift_beginAccess();

    pthread_mutex_unlock((v12 + 16));
    swift_endAccess();

    v13 = *(v2 + 16);
    v14 = v13 + 56;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 56);
    v18 = (v15 + 63) >> 6;
    v41 = v6 + 16;
    v42 = v13;
    v19 = (v6 + 8);

    v20 = 0;
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v20;
      v22 = v47;
      if (!v17)
      {
        break;
      }

LABEL_10:
      (*(v6 + 16))(v8, *(v42 + 48) + *(v6 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v47);
      sub_25EC53B9C(v8, &v43);
      if (v3)
      {
        goto LABEL_20;
      }

      v17 &= v17 - 1;
      (*v19)(v8, v22);
      v23 = v44;
      if (v44)
      {
        v37 = v46;
        v38 = v43;
        v36 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_25EC50EA0(0, *(v40 + 2) + 1, 1, v40);
        }

        v25 = *(v40 + 2);
        v24 = *(v40 + 3);
        v26 = v25 + 1;
        v28 = v36;
        v27 = v37;
        v29 = v38;
        if (v25 >= v24 >> 1)
        {
          v34 = *(v40 + 2);
          v35 = v25 + 1;
          v32 = sub_25EC50EA0((v24 > 1), v25 + 1, 1, v40);
          v25 = v34;
          v26 = v35;
          v28 = v36;
          v27 = v37;
          v40 = v32;
          v29 = v38;
        }

        v30 = v40;
        *(v40 + 2) = v26;
        v31 = &v30[32 * v25];
        *(v31 + 8) = v29;
        *(v31 + 5) = v23;
        *(v31 + 6) = v28;
        *(v31 + 7) = v27;
      }

      else
      {
        sub_25EC541E8(v43, 0, v45, v46);
      }
    }

    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        *v39 = v40;
        return result;
      }

      v17 = *(v14 + 8 * v20);
      ++v21;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    MEMORY[0x25F8CBE40](v3);

    (*v19)(v8, v22);

    __break(1u);
  }

  return result;
}

uint64_t sub_25EC53B9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v60 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  sub_25EC79B74();
  sub_25EC79A94();
  v14 = *(v4 + 8);
  v71 = v3;
  v68 = v14;
  v69 = v4 + 8;
  v14(v13, v3);
  v61 = v74;
  v63 = a1;
  v15 = sub_25EC79B64();
  KeyPath = swift_getKeyPath();
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v70 = v4;
  v66 = KeyPath;
  v67 = v4 + 16;

  v22 = 0;
  v72 = MEMORY[0x277D84F90];
  if (v19)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v15 + 56 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      do
      {
LABEL_8:
        v24 = v71;
        (*(v70 + 16))(v11, *(v15 + 48) + *(v70 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v71);
        swift_getAtKeyPath();
        v25 = v73;
        v68(v11, v24);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25EC50FAC(0, *(v72 + 2) + 1, 1, v72);
          v72 = result;
        }

        v27 = *(v72 + 2);
        v26 = *(v72 + 3);
        if (v27 >= v26 >> 1)
        {
          result = sub_25EC50FAC((v26 > 1), v27 + 1, 1, v72);
          v72 = result;
        }

        v19 &= v19 - 1;
        v28 = v72;
        *(v72 + 2) = v27 + 1;
        *&v28[4 * v27 + 32] = v25;
      }

      while (v19);
    }
  }

  v29 = sub_25EC79B54();
  v30 = swift_getKeyPath();
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 56);
  v34 = (v31 + 63) >> 6;
  v66 = v30;

  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  if (v33)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v34)
    {

      v43 = sub_25EC79B44();
      v44 = swift_getKeyPath();
      v45 = v43 + 56;
      v46 = 1 << *(v43 + 32);
      v47 = -1;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      v48 = v47 & *(v43 + 56);
      v49 = (v46 + 63) >> 6;
      v65 = v44;

      v66 = v43;

      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      if (v48)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v52 >= v49)
        {

          v58 = v62;
          v59 = v72;
          *v62 = v61;
          v58[1] = v59;
          v58[2] = v36;
          v58[3] = v51;
          return result;
        }

        v48 = *(v45 + 8 * v52);
        ++v50;
        if (v48)
        {
          v50 = v52;
          do
          {
LABEL_34:
            v53 = v71;
            v54 = v64;
            (*(v70 + 16))(v64, *(v66 + 48) + *(v70 + 72) * (__clz(__rbit64(v48)) | (v50 << 6)), v71);
            swift_getAtKeyPath();
            v55 = v73;
            v68(v54, v53);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_25EC50FAC(0, *(v51 + 16) + 1, 1, v51);
              v51 = result;
            }

            v57 = *(v51 + 16);
            v56 = *(v51 + 24);
            if (v57 >= v56 >> 1)
            {
              result = sub_25EC50FAC((v56 > 1), v57 + 1, 1, v51);
              v51 = result;
            }

            v48 &= v48 - 1;
            *(v51 + 16) = v57 + 1;
            *(v51 + 4 * v57 + 32) = v55;
          }

          while (v48);
        }
      }

      goto LABEL_43;
    }

    v33 = *(v29 + 56 + 8 * v37);
    ++v35;
    if (v33)
    {
      v35 = v37;
      do
      {
LABEL_21:
        v38 = v71;
        v39 = v65;
        (*(v70 + 16))(v65, *(v29 + 48) + *(v70 + 72) * (__clz(__rbit64(v33)) | (v35 << 6)), v71);
        swift_getAtKeyPath();
        v40 = v73;
        v68(v39, v38);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25EC50FAC(0, *(v36 + 16) + 1, 1, v36);
          v36 = result;
        }

        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          result = sub_25EC50FAC((v41 > 1), v42 + 1, 1, v36);
          v36 = result;
        }

        v33 &= v33 - 1;
        *(v36 + 16) = v42 + 1;
        *(v36 + 4 * v42 + 32) = v40;
      }

      while (v33);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_25EC541E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GraphDeploymentEK.commitGraphs(added:removed:)(Swift::OpaquePointer added, Swift::OpaquePointer removed)
{
  v6 = sub_25EC79BC4();
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v94 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v103 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  *&v99 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v93 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v100 = v93 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v93 - v19;
  *&v96 = v2;
  v21 = *(v2 + 16);

  v23 = sub_25EC5FE90(v22, added._rawValue);
  v24 = v3;

  *&v101 = v23;
  v25 = *(v23 + 16);
  v26 = *(added._rawValue + 2);
  v102 = v11;
  if (v25 != v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v95 = swift_allocObject();
    *(v95 + 1) = xmmword_25EC7A890;
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_25EC7A144();

    v104 = 0xD00000000000002BLL;
    v105 = 0x800000025EC80BE0;
    if (v26)
    {
      v47 = *(v103 + 16);
      v48 = *(v103 + 72);
      v98 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v49 = added._rawValue + v98;
      *&v99 = v103 + 32;
      v103 += 16;
      *&v96 = v103 - 8;
      v50 = MEMORY[0x277D84F90];
      v97 = v47;
      for (i = v47(v20, v49, v11); ; i = v47(v20, v49, v11))
      {
        MEMORY[0x28223BE20](i);
        v93[-2] = v20;
        v52 = v24;
        if (sub_25EC54CDC(sub_25EC5FAC8, &v93[-4], v101))
        {
          (*v96)(v20, v11);
        }

        else
        {
          v53 = *v99;
          (*v99)(v100, v20, v11);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25EC5B7D0(0, *(v50 + 16) + 1, 1);
            v50 = v108;
          }

          v56 = *(v50 + 16);
          v55 = *(v50 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_25EC5B7D0((v55 > 1), v56 + 1, 1);
            v50 = v108;
          }

          *(v50 + 16) = v56 + 1;
          v11 = v102;
          v53(v50 + v98 + v56 * v48, v100, v102);
          v24 = v52;
          v47 = v97;
        }

        v49 += v48;
        if (!--v26)
        {
          break;
        }
      }
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v84 = v50;
    v85 = v11;
    goto LABEL_57;
  }

  v27 = sub_25EC5FE90(v21, removed._rawValue);

  v100 = v27;
  v28 = *(removed._rawValue + 2);
  if (*(v27 + 16) != v28)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v95 = swift_allocObject();
    *(v95 + 1) = xmmword_25EC7A890;
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_25EC7A144();

    v104 = 0xD00000000000002DLL;
    v105 = 0x800000025EC80C10;
    if (v28)
    {
      *&v101 = *(v103 + 16);
      v57 = *(v103 + 72);
      v97 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v58 = removed._rawValue + v97;
      v98 = v103 + 32;
      v103 += 16;
      *&v96 = v103 - 8;
      v59 = MEMORY[0x277D84F90];
      do
      {
        v60 = v102;
        v61 = (v101)(v16, v58, v102);
        MEMORY[0x28223BE20](v61);
        v93[-2] = v16;
        v62 = v24;
        if (sub_25EC54CDC(sub_25EC60D68, &v93[-4], v100))
        {
          (*v96)(v16, v60);
        }

        else
        {
          v63 = *v98;
          (*v98)(v99, v16, v60);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v108 = v59;
          if ((v64 & 1) == 0)
          {
            sub_25EC5B7D0(0, *(v59 + 16) + 1, 1);
            v59 = v108;
          }

          v66 = *(v59 + 16);
          v65 = *(v59 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_25EC5B7D0((v65 > 1), v66 + 1, 1);
            v59 = v108;
          }

          *(v59 + 16) = v66 + 1;
          v63(v59 + v97 + v66 * v57, v99, v102);
          v24 = v62;
        }

        v58 += v57;
        --v28;
      }

      while (v28);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v84 = v59;
    v85 = v102;
LABEL_57:
    v86 = MEMORY[0x25F8CB8B0](v84, v85);
    v88 = v87;

    MEMORY[0x25F8CB870](v86, v88);

    v89 = v104;
    v90 = v105;
    v91 = v95;
    *(v95 + 7) = MEMORY[0x277D837D0];
    *(v91 + 4) = v89;
    *(v91 + 5) = v90;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();
    return;
  }

  v93[1] = v3;
  v93[0] = *(v96 + 32);
  v29 = v101 + 56;
  v30 = 1 << *(v101 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v101 + 56);
  v33 = (v30 + 63) >> 6;
  v102 = v98 + 8;
  v103 = v98 + 16;

  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  if (v32)
  {
    while (1)
    {
      v36 = v35;
LABEL_11:
      v38 = v97;
      v39 = v98;
      v40 = v95;
      (*(v98 + 16))(v95, *(v101 + 48) + *(v98 + 72) * (__clz(__rbit64(v32)) | (v34 << 6)), v97);
      Graph.lowerToGraphDescription()(&v104);
      (*(v39 + 8))(v40, v38);
      v41 = v104;
      v42 = v105;
      v96 = v107;
      v99 = v106;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = v36;
      }

      else
      {
        v35 = sub_25EC510B0(0, *(v36 + 2) + 1, 1, v36);
      }

      v44 = *(v35 + 2);
      v43 = *(v35 + 3);
      if (v44 >= v43 >> 1)
      {
        v35 = sub_25EC510B0((v43 > 1), v44 + 1, 1, v35);
      }

      *(v35 + 2) = v44 + 1;
      v45 = &v35[48 * v44];
      *(v45 + 8) = v41;
      v32 &= v32 - 1;
      *(v45 + 5) = v42;
      v46 = v96;
      *(v45 + 3) = v99;
      *(v45 + 4) = v46;
      if (!v32)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v37 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v37);
    ++v34;
    if (v32)
    {
      v36 = v35;
      v34 = v37;
      goto LABEL_11;
    }
  }

  *&v96 = v35;

  v67 = v100 + 56;
  v68 = 1 << *(v100 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v100 + 56);
  v71 = (v68 + 63) >> 6;

  v72 = 0;
  v73 = MEMORY[0x277D84F90];
  if (v70)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {

      SessionManager.updateGraphs(added:removed:)(v96, v73);

      return;
    }

    v70 = *(v67 + 8 * v74);
    ++v72;
    if (v70)
    {
      v72 = v74;
      do
      {
LABEL_46:
        v75 = v97;
        v76 = v98;
        v77 = v94;
        (*(v98 + 16))(v94, *(v100 + 48) + *(v98 + 72) * (__clz(__rbit64(v70)) | (v72 << 6)), v97);
        Graph.lowerToGraphDescription()(&v104);
        (*(v76 + 8))(v77, v75);
        v78 = v104;
        v79 = v105;
        v99 = v107;
        v101 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_25EC510B0(0, *(v73 + 2) + 1, 1, v73);
        }

        v81 = *(v73 + 2);
        v80 = *(v73 + 3);
        if (v81 >= v80 >> 1)
        {
          v73 = sub_25EC510B0((v80 > 1), v81 + 1, 1, v73);
        }

        *(v73 + 2) = v81 + 1;
        v82 = &v73[48 * v81];
        *(v82 + 8) = v78;
        v70 &= v70 - 1;
        *(v82 + 5) = v79;
        v83 = v99;
        *(v82 + 3) = v101;
        *(v82 + 4) = v83;
      }

      while (v70);
    }
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_25EC54CDC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = sub_25EC79BC4();
  MEMORY[0x28223BE20](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC54EF4(uint64_t a1, uint64_t *a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v28 - 8);
  v6 = MEMORY[0x28223BE20](v28);
  v27 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v26 = *(a1 + 16);
  if (v26)
  {
    v11 = 0;
    v22 = (v5 + 8);
    v24 = (v5 + 32);
    v25 = v5 + 16;
    v12 = MEMORY[0x277D84F90];
    v20 = a2;
    v21 = a1;
    while (v11 < *(a1 + 16))
    {
      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = *(v5 + 72);
      (*(v5 + 16))(v10, a1 + v13 + v14 * v11, v28);
      v15 = sub_25EC568B8(v10, a2);
      if (v2)
      {
        (*v22)(v10, v28);

        goto LABEL_15;
      }

      if (v15)
      {
        v23 = *v24;
        v23(v27, v10, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25EC5B7D0(0, *(v12 + 16) + 1, 1);
          v12 = v29;
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_25EC5B7D0((v17 > 1), v18 + 1, 1);
          v12 = v29;
        }

        *(v12 + 16) = v18 + 1;
        result = (v23)(v12 + v13 + v18 * v14, v27, v28);
        a2 = v20;
        a1 = v21;
      }

      else
      {
        result = (*v22)(v10, v28);
      }

      if (v26 == ++v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_15:

    return v12;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GraphDeploymentEK.commitWriters(added:removed:)(Swift::OpaquePointer added, Swift::OpaquePointer removed)
{
  v4 = v3;
  rawValue = removed._rawValue;
  v155 = sub_25EC79C14();
  v147 = *(v155 - 8);
  v6 = MEMORY[0x28223BE20](v155);
  v154 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v153 = &v147 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36298, &unk_25EC7B280);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v162 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v147 - v12;
  v14 = sub_25EC79C64();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v160 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v161 = &v147 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v166 = &v147 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v165 = &v147 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v147 - v25;
  MEMORY[0x28223BE20](v24);
  v179 = &v147 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v28 = MEMORY[0x28223BE20](v27);
  v157 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v159 = &v147 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v148 = &v147 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v158 = &v147 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v167 = &v147 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v41 = &v147 - v40;
  v187 = MEMORY[0x277D84F90];
  v42 = *(added._rawValue + 2);
  v168 = v14;
  v169 = v15;
  v178 = v38;
  v149 = v39;
  v151 = v2;
  v150 = added._rawValue;
  v156 = v42;
  if (v42)
  {
    v177 = v13;
    v44 = *(v39 + 16);
    v43 = v39 + 16;
    v174 = *(v2 + 24);
    v175 = v44;
    v45 = added._rawValue + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v46 = *(v43 + 56);
    v172 = (v15 + 48);
    v173 = v46;
    v171 = (v15 + 32);
    v164 = (v15 + 16);
    v163 = v15 + 8;
    v47 = MEMORY[0x277D84F90];
    v176 = v43;
    v170 = (v43 - 8);
    v48 = v42;
    v49 = v38;
    for (i = (v44)(v41, v45, v38); ; i = (v175)(v41, v45, v49))
    {
      MEMORY[0x28223BE20](i);
      *(&v147 - 2) = v41;
      v51 = v177;
      sub_25EC5312C(sub_25EC60D84, v174, v177);
      if ((*v172)(v51, 1, v14) == 1)
      {
        sub_25EC60CB8(v51, &qword_27FD36298, &unk_25EC7B280);
      }

      else
      {
        v52 = *v171;
        v53 = v179;
        (*v171)(v179, v51, v14);
        (*v164)(v180, v53, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v181 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = sub_25EC511D0(0, v47[2] + 1, 1, v47);
        }

        v56 = v47[2];
        v55 = v47[3];
        v57 = v47;
        if (v56 >= v55 >> 1)
        {
          v57 = sub_25EC511D0((v55 > 1), v56 + 1, 1, v47);
        }

        v58 = v168;
        v59 = v169;
        (*(v169 + 8))(v179, v168);
        v57[2] = v56 + 1;
        v47 = v57;
        v52(v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56, v180, v58);
        v187 = v57;
        v4 = v181;
        v14 = v58;
        v49 = v178;
      }

      (*v170)(v41, v49);
      v45 = v173 + v45;
      if (!--v48)
      {
        break;
      }
    }
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
    v49 = v38;
  }

  if (v47[2] != v156)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_25EC7A890;
    v184 = 0;
    v185 = 0xE000000000000000;
    sub_25EC7A144();

    v184 = 0xD00000000000002DLL;
    v185 = 0x800000025EC80C40;

    sub_25EC54EF4(v76, &v187);
    v77 = MEMORY[0x25F8CB8B0]();
    v79 = v78;

    MEMORY[0x25F8CB870](v77, v79);

    v80 = v184;
    v81 = v185;
    *(v75 + 56) = MEMORY[0x277D837D0];
    *(v75 + 32) = v80;
    *(v75 + 40) = v81;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v82 = 1;
    swift_willThrow();
LABEL_57:

    return;
  }

  v186 = MEMORY[0x277D84F90];
  v60 = rawValue[2];
  v172 = v47;
  if (v60)
  {
    v176 = *(v149 + 16);
    v61 = *(v151 + 24);
    v62 = rawValue + ((*(v149 + 80) + 32) & ~*(v149 + 80));
    v177 = *(v149 + 72);
    v174 = (v169 + 48);
    v175 = v61;
    v173 = (v169 + 32);
    v170 = (v169 + 16);
    v171 = (v169 + 8);
    v180 = MEMORY[0x277D84F90];
    v181 = v149 + 16;
    v179 = (v149 + 8);
    v164 = v60;
    v63 = v162;
    for (j = v176(v167, v62, v49); ; j = v176(v66, v62, v49))
    {
      MEMORY[0x28223BE20](j);
      *(&v147 - 2) = v67;
      sub_25EC5312C(sub_25EC60338, v175, v63);
      if ((*v174)(v63, 1, v14) == 1)
      {
        sub_25EC60CB8(v63, &qword_27FD36298, &unk_25EC7B280);
      }

      else
      {
        v68 = *v173;
        v69 = v165;
        (*v173)(v165, v63, v14);
        (*v170)(v166, v69, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_25EC511D0(0, *(v180 + 2) + 1, 1, v180);
        }

        v71 = *(v180 + 2);
        v70 = *(v180 + 3);
        if (v71 >= v70 >> 1)
        {
          v180 = sub_25EC511D0((v70 > 1), v71 + 1, 1, v180);
        }

        v72 = v168;
        v73 = v169;
        (*(v169 + 8))(v165, v168);
        v74 = v180;
        *(v180 + 2) = v71 + 1;
        v68(&v74[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71], v166, v72);
        v186 = v74;
        v14 = v72;
        v49 = v178;
        v63 = v162;
      }

      v65 = *v179;
      v66 = v167;
      (*v179)(v167, v49);
      v62 = &v177[v62];
      v60 = (v60 - 1);
      if (!v60)
      {
        break;
      }
    }

    v83 = v180;
    if (*(v180 + 2) == v164)
    {
      v181 = v4;
      v84 = 0;
      v175 = (v151 + 32);
      v176 = (v151 + 40);
      v85 = v148;
      while (v84 < *(v83 + 2))
      {
        (*(v169 + 16))(v161, &v83[((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v84], v14);
        v86 = v158;
        sub_25EC79C34();
        v87 = v176;
        swift_beginAccess();
        if (!*(*v87 + 16) || (sub_25EC4CD24(v86), (v88 & 1) == 0))
        {
          swift_endAccess();
          v106 = v178;
          (v65)(v86, v178);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_25EC7A890;
          v184 = 0;
          v185 = 0xE000000000000000;
          sub_25EC7A144();

          v184 = 0x20726574697257;
          v185 = 0xE700000000000000;
          v108 = v159;
          v109 = v161;
          sub_25EC79C34();
          sub_25EC79A94();
          (v65)(v108, v106);
          v183 = v182;
          v110 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v110);

          MEMORY[0x25F8CB870](0xD000000000000012, 0x800000025EC80CA0);
          v111 = v184;
          v112 = v185;
          *(v107 + 56) = MEMORY[0x277D837D0];
          *(v107 + 32) = v111;
          *(v107 + 40) = v112;
          sub_25EC7A2B4();

          sub_25EC5B6D8();
          swift_allocError();
          *v113 = 1;
          swift_willThrow();
          (*v171)(v109, v168);

          goto LABEL_57;
        }

        swift_endAccess();

        (v65)(v86, v178);
        v89 = v181;
        sub_25EC4C938();
        v181 = v89;
        if (v89)
        {
          (*v171)(v161, v168);

          return;
        }

        v90 = sub_25EC79C24();
        v90();

        sub_25EC79C34();
        swift_beginAccess();
        v91 = sub_25EC4CD24(v85);
        if (v92)
        {
          v93 = v91;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v95 = *v87;
          v182 = *v87;
          *v87 = 0x8000000000000000;
          if ((v94 & 1) == 0)
          {
            sub_25EC5CEC4();
            v95 = v182;
          }

          v96 = v178;
          (v65)(*(v95 + 48) + v177 * v93, v178);

          sub_25EC5CA2C(v93, v95);
          (v65)(v85, v96);
          *v87 = v95;
          v83 = v180;
        }

        else
        {
          (v65)(v85, v178);
        }

        ++v84;
        swift_endAccess();

        v14 = v168;
        (*v171)(v161, v168);
        if (v164 == v84)
        {
          v97 = v169;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    goto LABEL_41;
  }

  v97 = v169;
  if (*(MEMORY[0x277D84F90] + 16))
  {
    v180 = MEMORY[0x277D84F90];
LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_25EC7A890;
    v184 = 0;
    v185 = 0xE000000000000000;
    sub_25EC7A144();

    v184 = 0xD00000000000002FLL;
    v185 = 0x800000025EC80C70;

    sub_25EC54EF4(v99, &v186);
    v100 = MEMORY[0x25F8CB8B0]();
    v102 = v101;

    MEMORY[0x25F8CB870](v100, v102);

    MEMORY[0x25F8CB870](41, 0xE100000000000000);
    v103 = v184;
    v104 = v185;
    *(v98 + 56) = MEMORY[0x277D837D0];
    *(v98 + 32) = v103;
    *(v98 + 40) = v104;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v105 = 1;
    swift_willThrow();
LABEL_56:

    goto LABEL_57;
  }

  v181 = v4;
  v175 = (v151 + 32);
  v176 = (v151 + 40);
  v83 = MEMORY[0x277D84F90];
LABEL_45:
  v114 = v160;
  v166 = v172[2];
  if (!v166)
  {
    goto LABEL_56;
  }

  v115 = 0;
  v171 = v172 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v170 = (v97 + 16);
  v179 = (v149 + 8);
  v165 = (v147 + 8);
  v167 = (v97 + 8);
  v180 = v83;
  while (v115 < v172[2])
  {
    (*(v97 + 16))(v114, &v171[*(v97 + 72) * v115], v14);
    v116 = v157;
    sub_25EC79C34();
    v117 = v176;
    swift_beginAccess();
    if (*(*v117 + 16))
    {
      sub_25EC4CD24(v116);
      if (v118)
      {
        swift_endAccess();
        v138 = v178;
        v139 = *v179;
        (*v179)(v116, v178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_25EC7A890;
        v184 = 0;
        v185 = 0xE000000000000000;
        sub_25EC7A144();

        v184 = 0x20726574697257;
        v185 = 0xE700000000000000;
        v141 = v114;
        v142 = v159;
        sub_25EC79C34();
        sub_25EC79A94();
        (v139)(v142, v138);
        v183 = v182;
        v143 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v143);

        MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC80CC0);
        v144 = v184;
        v145 = v185;
        *(v140 + 56) = MEMORY[0x277D837D0];
        *(v140 + 32) = v144;
        *(v140 + 40) = v145;
        sub_25EC7A2B4();

        sub_25EC5B6D8();
        swift_allocError();
        *v146 = 1;
        swift_willThrow();
        (*v167)(v141, v168);
        goto LABEL_56;
      }
    }

    v176 = v117;
    v177 = v115;
    swift_endAccess();
    v119 = v178;
    v120 = *v179;
    (*v179)(v116, v178);
    v174 = *v175;
    v121 = v153;
    sub_25EC79C44();
    sub_25EC79C04();
    v122 = *v165;
    v123 = v121;
    v124 = v155;
    (*v165)(v123, v155);
    swift_getObjectType();
    v125 = v159;
    sub_25EC798E4();
    swift_unknownObjectRelease();
    sub_25EC79A94();
    v173 = v120;
    (v120)(v125, v119);
    v126 = v184;
    v127 = v154;
    sub_25EC79C44();
    sub_25EC79C04();
    v122(v127, v124);
    swift_getObjectType();
    v128 = sub_25EC79904();
    swift_unknownObjectRelease();
    if (qword_27FD360E8 != -1)
    {
      swift_once();
    }

    v184 = qword_27FD36330;
    LODWORD(v185) = dword_27FD36338;
    v129 = v181;
    v130 = sub_25EC4C5EC(v126, v128, &v184);
    v181 = v129;
    if (v129)
    {
      (*v167)(v160, v168);

      goto LABEL_57;
    }

    v131 = v130;
    v115 = v177 + 1;
    v132 = v159;
    v114 = v160;
    sub_25EC79C34();
    v133 = v176;
    swift_beginAccess();

    v134 = swift_isUniquelyReferenced_nonNull_native();
    v182 = *v133;
    *v133 = 0x8000000000000000;
    sub_25EC4DD18(v131, v132, v134);
    (v173)(v132, v178);
    *v133 = v182;
    swift_endAccess();
    v135 = sub_25EC79C54();
    v136 = sub_25EC60D20(&qword_27FD362A0, type metadata accessor for PSWriterM3Demo, &protocol conformance descriptor for PSWriterM3Demo);

    v135(v137, v136);

    v14 = v168;
    (*v167)(v114, v168);
    v97 = v169;
    if (v166 == v115)
    {
      goto LABEL_56;
    }
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_25EC5679C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  a3(v6);
  LOBYTE(a3) = sub_25EC79A84();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_25EC568B8(uint64_t a1, uint64_t *a2)
{
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = v17 - v4;
  v6 = sub_25EC79C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v20 = *(v10 + 16);
  v11 = (v3 + 8);
  v17[2] = v7 + 8;
  v17[3] = v7 + 16;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (v20 == v13)
    {
LABEL_5:
      v16 = v20 == v14;

      return v16;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13++, v6);
    sub_25EC79C34();
    v15 = sub_25EC79A84();
    (*v11)(v5, v18);
    result = (*(v7 + 8))(v9, v6);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC56B04(_BYTE *a1)
{
  v174 = a1;
  v2 = sub_25EC79C64();
  v189 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v179 = &v174 - v6;
  v212 = sub_25EC79824();
  v7 = *(v212 - 8);
  v8 = MEMORY[0x28223BE20](v212);
  v211 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v210 = &v174 - v10;
  v11 = sub_25EC79C14();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v180 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v182 = &v174 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v202 = &v174 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v177 = &v174 - v20;
  MEMORY[0x28223BE20](v19);
  v206 = &v174 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v231 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v178 = &v174 - v25;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v26 = *(v200 - 8);
  v27 = MEMORY[0x28223BE20](v200);
  v175 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v205 = &v174 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v198 = &v174 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v218 = &v174 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v229 = &v174 - v36;
  MEMORY[0x28223BE20](v35);
  v199 = &v174 - v37;
  v217 = sub_25EC79BF4();
  v38 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v215 = &v174 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36300, &qword_25EC7B418);
  MEMORY[0x28223BE20](v40 - 8);
  v191 = &v174 - v41;
  v42 = sub_25EC79BC4();
  v43 = MEMORY[0x28223BE20](v42);
  v197 = &v174 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v187 = &v174 - v46;
  v176 = v1;
  v47 = *(v1 + 16);
  v49 = v47 + 56;
  v48 = *(v47 + 56);
  v50 = 1 << *(v47 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v190 = (v50 + 63) >> 6;
  v186 = v45 + 16;
  v185 = v45 + 32;
  v222 = (v26 + 32);
  v216 = v38;
  v213 = v38 + 8;
  v214 = v38 + 16;
  v219 = v26;
  v227 = (v26 + 48);
  v228 = v26 + 56;
  v226 = (v12 + 16);
  v223 = (v12 + 8);
  v209 = *MEMORY[0x277D3E778];
  v208 = (v7 + 104);
  v52 = v51 & v48;
  v207 = (v7 + 8);
  v201 = (v12 + 32);
  v188 = v45;
  v183 = (v45 + 8);
  v192 = v47;

  v54 = 0;
  v225 = v11;
  v230 = v12;
  v181 = v49;
  v196 = v2;
  v195 = v5;
  v184 = v42;
  while (1)
  {
    if (!v52)
    {
      v56 = v191;
      while (1)
      {
        v55 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_91;
        }

        if (v55 >= v190)
        {

          v116 = *(v176 + 24);
          v117 = v116 + 56;
          v118 = 1 << v116[32];
          v119 = -1;
          if (v118 < 64)
          {
            v119 = ~(-1 << v118);
          }

          v120 = v119 & *(v116 + 7);
          v121 = (v118 + 63) >> 6;
          v227 = (v189 + 32);
          v228 = v189 + 16;
          v230 = v189 + 8;
          v231 = v116;

          v122 = 0;
          v226 = v117;
          if (v120)
          {
            while (1)
            {
              v123 = v122;
LABEL_60:
              v124 = v189;
              v125 = v179;
              (*(v189 + 16))(v179, *(v231 + 6) + *(v189 + 72) * (__clz(__rbit64(v120)) | (v123 << 6)), v2);
              (*(v124 + 32))(v5, v125, v2);
              v126 = v180;
              sub_25EC79C44();
              sub_25EC79C04();
              v224 = *v223;
              v224(v126, v225);
              swift_getObjectType();
              v127 = v210;
              sub_25EC798F4();
              swift_unknownObjectRelease();
              v128 = v211;
              v129 = v212;
              (*v208)(v211, v209, v212);
              LOBYTE(v124) = sub_25EC79814();
              v130 = *v207;
              (*v207)(v128, v129);
              v130(v127, v129);
              if (v124)
              {
                break;
              }

              v120 &= v120 - 1;
              v5 = v195;
              v2 = v196;
              result = (*v230)(v195, v196);
              v122 = v123;
              v117 = v226;
              if (!v120)
              {
                goto LABEL_57;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
            v166 = swift_allocObject();
            *(v166 + 16) = xmmword_25EC7A890;
            v232 = 0;
            v233 = 0xE000000000000000;
            sub_25EC7A144();

            v232 = 0xD000000000000011;
            v233 = 0x800000025EC81050;
            v167 = v180;
            v168 = v195;
            sub_25EC79C44();
            sub_25EC79C04();
            v224(v167, v225);
            swift_getObjectType();
            v169 = v229;
            sub_25EC798E4();
            swift_unknownObjectRelease();
            v170 = v200;
            sub_25EC79A94();
            (*(v219 + 8))(v169, v170);
            v234 = v235;
            v171 = sub_25EC7A224();
            MEMORY[0x25F8CB870](v171);

            MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC81070);
            v172 = v232;
            v173 = v233;
            *(v166 + 56) = MEMORY[0x277D837D0];
            *(v166 + 32) = v172;
            *(v166 + 40) = v173;
            sub_25EC7A2B4();

            *v174 = 10;
            LOBYTE(v232) = 10;
            sub_25EC5B6D8();
            swift_willThrowTypedImpl();

            return (*v230)(v168, v196);
          }

LABEL_57:
          while (1)
          {
            v123 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              goto LABEL_92;
            }

            if (v123 >= v121)
            {
            }

            v120 = *&v117[8 * v123];
            ++v122;
            if (v120)
            {
              goto LABEL_60;
            }
          }
        }

        v52 = *(v49 + 8 * v55);
        ++v54;
        if (v52)
        {
          goto LABEL_10;
        }
      }
    }

    v55 = v54;
    v56 = v191;
LABEL_10:
    v194 = v52;
    v57 = __clz(__rbit64(v52));
    v193 = v55;
    v58 = v188;
    v59 = v187;
    (*(v188 + 16))(v187, *(v192 + 48) + *(v188 + 72) * (v57 | (v55 << 6)), v42);
    (*(v58 + 32))(v197, v59, v42);
    sub_25EC79B34();
    v60 = sub_25EC79B14();
    v61 = *(v60 - 8);
    result = (*(v61 + 48))(v56, 1, v60);
    if (result == 1)
    {
      goto LABEL_95;
    }

    v62 = sub_25EC79B04();
    (*(v61 + 8))(v56, v60);
    v204 = sub_25EC6A534(v62);

    result = sub_25EC79B94();
    v63 = result;
    v221 = *(result + 16);
    if (v221)
    {
      v64 = 0;
      v224 = MEMORY[0x277D84F90];
      v65 = v200;
      v66 = v178;
      v220 = result;
      while (v64 < *(v63 + 16))
      {
        v67 = v65;
        v68 = v216;
        v69 = v217;
        v70 = v63 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v64;
        v71 = v215;
        (*(v216 + 16))(v215, v70, v217);
        v72 = v229;
        sub_25EC79BD4();
        v73 = *v222;
        (*v222)(v66, v72, v67);
        (*v228)(v66, 0, 1, v67);
        v74 = *(v68 + 8);
        v65 = v67;
        v74(v71, v69);
        if ((*v227)(v66, 1, v67) == 1)
        {
          result = sub_25EC60CB8(v66, &qword_27FD362F8, &qword_25EC7B410);
          v63 = v220;
        }

        else
        {
          v75 = v199;
          v73(v199, v66, v67);
          v73(v218, v75, v67);
          v76 = v224;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_25EC511F8(0, *(v76 + 2) + 1, 1, v76);
          }

          v63 = v220;
          v78 = *(v76 + 2);
          v77 = *(v76 + 3);
          if (v78 >= v77 >> 1)
          {
            v76 = sub_25EC511F8((v77 > 1), v78 + 1, 1, v76);
          }

          *(v76 + 2) = v78 + 1;
          v79 = (*(v219 + 80) + 32) & ~*(v219 + 80);
          v224 = v76;
          v65 = v200;
          result = (v73)(v76 + v79 + *(v219 + 72) * v78, v218, v200);
        }

        if (v221 == ++v64)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v224 = MEMORY[0x277D84F90];
    v65 = v200;
LABEL_23:

    v80 = sub_25EC6A534(v224);

    if (*(v204 + 16) <= *(v80 + 16) >> 3)
    {
      v232 = v80;
      sub_25EC5D9A0(v204);

      v203 = v232;
    }

    else
    {
      v203 = sub_25EC5E268(v204, v80);
    }

    v81 = v222;
    result = sub_25EC79BA4();
    v82 = result;
    v221 = *(result + 16);
    if (v221)
    {
      v83 = 0;
      v224 = MEMORY[0x277D84F90];
      v220 = result;
      while (v83 < *(v82 + 16))
      {
        v84 = v230;
        v85 = v82 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v83;
        v86 = v206;
        v87 = v225;
        (*(v230 + 16))(v206, v85, v225);
        sub_25EC79C04();
        swift_getObjectType();
        v88 = v65;
        v89 = v229;
        sub_25EC798E4();
        v90 = v89;
        v65 = v88;
        v91 = *v81;
        (*v81)(v231, v90, v65);
        swift_unknownObjectRelease();
        (*v228)(v231, 0, 1, v65);
        v92 = v231;
        (*(v84 + 8))(v86, v87);
        if ((*v227)(v92, 1, v65) == 1)
        {
          result = sub_25EC60CB8(v92, &qword_27FD362F8, &qword_25EC7B410);
          v82 = v220;
        }

        else
        {
          v93 = v198;
          v91(v198, v92, v65);
          v91(v205, v93, v65);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v224 = sub_25EC511F8(0, *(v224 + 2) + 1, 1, v224);
          }

          v82 = v220;
          v95 = *(v224 + 2);
          v94 = *(v224 + 3);
          if (v95 >= v94 >> 1)
          {
            v224 = sub_25EC511F8((v94 > 1), v95 + 1, 1, v224);
          }

          v96 = v224;
          *(v224 + 2) = v95 + 1;
          result = (v91)(v96 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v95, v205, v65);
        }

        if (v221 == ++v83)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_89;
    }

    v224 = MEMORY[0x277D84F90];
LABEL_38:

    v97 = sub_25EC5DBC4(v224, v203);

    if (*(v97 + 16))
    {
      v131 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
      v228 = swift_allocObject();
      *(v228 + 16) = xmmword_25EC7A890;
      v232 = 0;
      v233 = 0xE000000000000000;
      sub_25EC7A144();
      MEMORY[0x25F8CB870](0x706E69206C6C7550, 0xED00002820737475);
      KeyPath = swift_getKeyPath();
      v133 = 1 << *(v97 + 32);
      v134 = -1;
      if (v133 < 64)
      {
        v134 = ~(-1 << v133);
      }

      v135 = v134 & *(v97 + 56);
      v136 = (v133 + 63) >> 6;
      v229 = (v219 + 8);
      v230 = v219 + 16;
      v231 = KeyPath;

      v137 = 0;
      v138 = MEMORY[0x277D84F90];
      result = v97;
      if (v135)
      {
        goto LABEL_71;
      }

      while (1)
      {
        v139 = v137 + 1;
        if (__OFADD__(v137, 1))
        {
          break;
        }

        if (v139 >= v136)
        {

          v146 = MEMORY[0x25F8CB8B0](v138, MEMORY[0x277D84CC0]);
          v148 = v147;

          MEMORY[0x25F8CB870](v146, v148);

          MEMORY[0x25F8CB870](0xD000000000000038, 0x800000025EC81010);
          v149 = v232;
          v150 = v233;
          v151 = v228;
          *(v228 + 56) = MEMORY[0x277D837D0];
          *(v151 + 32) = v149;
          *(v151 + 40) = v150;
          sub_25EC7A2B4();

          *v174 = 10;
          LOBYTE(v232) = 10;
LABEL_86:
          sub_25EC5B6D8();
          swift_willThrowTypedImpl();

          return (*v183)(v197, v184);
        }

        v135 = *(v97 + 56 + 8 * v139);
        ++v137;
        if (v135)
        {
          v137 = v139;
          do
          {
LABEL_71:
            v140 = v219;
            v141 = v175;
            (*(v219 + 16))(v175, *(result + 48) + *(v219 + 72) * (__clz(__rbit64(v135)) | (v137 << 6)), v131);
            swift_getAtKeyPath();
            v142 = v131;
            v143 = v235;
            (*(v140 + 8))(v141, v142);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = sub_25EC50FAC(0, *(v138 + 2) + 1, 1, v138);
            }

            v145 = *(v138 + 2);
            v144 = *(v138 + 3);
            if (v145 >= v144 >> 1)
            {
              v138 = sub_25EC50FAC((v144 > 1), v145 + 1, 1, v138);
            }

            v135 &= v135 - 1;
            *(v138 + 2) = v145 + 1;
            *&v138[4 * v145 + 32] = v143;
            v131 = v200;
            result = v97;
          }

          while (v135);
        }
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    result = sub_25EC79BA4();
    v98 = result;
    v204 = *(result + 16);
    if (v204)
    {
      v99 = 0;
      v220 = MEMORY[0x277D84F90];
      v100 = v225;
      v101 = v177;
      v102 = v230;
      v203 = result;
      while (v99 < *(v98 + 16))
      {
        v224 = ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v221 = *(v102 + 72);
        (*(v102 + 16))(v101, v224 + v98 + v221 * v99, v100);
        sub_25EC79C04();
        swift_getObjectType();
        v103 = v101;
        v104 = v210;
        sub_25EC798F4();
        swift_unknownObjectRelease();
        v105 = v211;
        v106 = v212;
        (*v208)(v211, v209, v212);
        v107 = sub_25EC79814();
        v108 = *v207;
        (*v207)(v105, v106);
        v108(v104, v106);
        if (v107)
        {
          v109 = *v201;
          (*v201)(v202, v103, v100);
          v110 = v220;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v232 = v110;
          v101 = v103;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25EC5B7F0(0, *(v110 + 16) + 1, 1);
            v110 = v232;
          }

          v98 = v203;
          v113 = *(v110 + 16);
          v112 = *(v110 + 24);
          if (v113 >= v112 >> 1)
          {
            sub_25EC5B7F0((v112 > 1), v113 + 1, 1);
            v110 = v232;
          }

          *(v110 + 16) = v113 + 1;
          v220 = v110;
          v100 = v225;
          result = (v109)(v224 + v110 + v113 * v221, v202, v225);
        }

        else
        {
          result = (*v223)(v103, v100);
          v101 = v103;
          v98 = v203;
        }

        ++v99;
        v102 = v230;
        if (v204 == v99)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_90;
    }

    v220 = MEMORY[0x277D84F90];
    v102 = v230;
LABEL_51:

    v114 = v220;
    v115 = *(v220 + 16);
    if (v115)
    {
      break;
    }

    v52 = (v194 - 1) & v194;
    v42 = v184;
    (*v183)(v197, v184);

    v54 = v193;
    v2 = v196;
    v5 = v195;
    v49 = v181;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_25EC7A890;
  v232 = 0;
  v233 = 0xE000000000000000;
  sub_25EC7A144();

  v232 = 0xD000000000000011;
  v233 = 0x800000025EC81050;
  swift_getKeyPath();

  v153 = 0;
  v154 = MEMORY[0x277D84F90];
  while (v153 < *(v114 + 16))
  {
    v155 = v114 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v153;
    v156 = v182;
    v157 = v225;
    (*(v102 + 16))(v182, v155, v225);
    swift_getAtKeyPath();
    v158 = v235;
    (*(v102 + 8))(v156, v157);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25EC50FAC(0, *(v154 + 16) + 1, 1, v154);
      v154 = result;
    }

    v160 = *(v154 + 16);
    v159 = *(v154 + 24);
    v114 = v220;
    if (v160 >= v159 >> 1)
    {
      result = sub_25EC50FAC((v159 > 1), v160 + 1, 1, v154);
      v154 = result;
    }

    ++v153;
    *(v154 + 16) = v160 + 1;
    *(v154 + 4 * v160 + 32) = v158;
    v102 = v230;
    if (v115 == v153)
    {

      v161 = MEMORY[0x25F8CB8B0](v154, MEMORY[0x277D84CC0]);
      v163 = v162;

      MEMORY[0x25F8CB870](v161, v163);

      MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC81070);
      v164 = v232;
      v165 = v233;
      *(v152 + 56) = MEMORY[0x277D837D0];
      *(v152 + 32) = v164;
      *(v152 + 40) = v165;
      sub_25EC7A2B4();

      *v174 = 10;
      LOBYTE(v232) = 10;
      goto LABEL_86;
    }
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_25EC5852C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25EC79C04();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *GraphDeploymentEK.deinit()
{

  return v0;
}

uint64_t GraphDeploymentEK.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC58690@<X0>(void *a1@<X8>)
{
  result = _s21PolarisExclaveSupport17GraphDeploymentEKC11fetchGraphsAA012ExSerializedD9DataArrayVyAA6ResultOYKF(&v5, a1);
  if (v1)
  {
    v3 = v5;
    sub_25EC5B6D8();
    result = swift_allocError();
    *v4 = v3;
  }

  return result;
}

uint64_t sub_25EC586F4@<X0>(void *a1@<X8>)
{
  if (*(v1 + 16))
  {

    _s21PolarisExclaveSupport17GraphDeploymentEKC11fetchGraphsAA012ExSerializedD9DataArrayVyAA6ResultOYKF(&v9, a1);
    if (v2)
    {
      v4 = v9;
      sub_25EC5B6D8();
      swift_allocError();
      *v5 = v4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25EC7A890;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = 0xD000000000000038;
    *(v6 + 40) = 0x800000025EC80CE0;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_25EC58874(uint64_t a1, uint64_t a2, void (*a3)(void *, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v31 - v13);
  v15 = *(v3 + 16);
  if (v15)
  {
    v32 = a2;
    v34 = v4;
    v35 = a3;
    v16 = *(a1 + 16);
    v33 = v15;
    if (v16)
    {
      v17 = (a1 + 32);
      v39 = *MEMORY[0x277D3E7A8];
      v37 = *(v9 + 104);
      v38 = v9 + 104;
      v36 = v9 + 32;

      v18 = MEMORY[0x277D84F90];
      do
      {
        v19 = *v17++;
        *v14 = v19;
        v37(v14, v39, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_25EC511F8(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_25EC511F8((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v14, v8);
        --v16;
      }

      while (v16);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v25 = *(v32 + 16);
    if (v25)
    {
      v26 = (v32 + 32);
      v39 = *MEMORY[0x277D3E7A8];
      v37 = *(v9 + 104);
      v38 = v9 + 104;
      v36 = v9 + 32;
      v27 = MEMORY[0x277D84F90];
      do
      {
        v28 = *v26++;
        *v12 = v28;
        v37(v12, v39, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_25EC511F8(0, v27[2] + 1, 1, v27);
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_25EC511F8((v29 > 1), v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        (*(v9 + 32))(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, v12, v8);
        --v25;
      }

      while (v25);
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v35(v18, v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25EC7A890;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 32) = 0xD000000000000038;
    *(v22 + 40) = 0x800000025EC80CE0;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }
}

uint64_t PolarisExclaveEndpoint.__allocating_init(taskRegistry:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PolarisExclaveEndpoint.init(taskRegistry:)(a1, a2);
  return v4;
}

void *PolarisExclaveEndpoint.init(taskRegistry:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v2[5] = 0;
  v2[2] = 0;
  v2[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25EC7A890;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD000000000000022;
  *(v3 + 40) = 0x800000025EC80D20;
  sub_25EC7A2B4();

  return v2;
}

void *PolarisExclaveEndpoint.__allocating_init(session:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_25EC604B4(a1);

  return v2;
}

void *PolarisExclaveEndpoint.init(session:)(uint64_t a1)
{
  v1 = sub_25EC604B4(a1);

  return v1;
}

void *PolarisExclaveEndpoint.__allocating_init(clientId:graphs:writers:gstService:pbsService:writersInfo:readersInfo:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  v10[5] = 0;
  type metadata accessor for SessionManager();
  v11 = swift_allocObject();
  sub_25EC79DE4();
  swift_allocObject();

  v12 = sub_25EC79DB4();
  if (v7)
  {

    swift_deallocPartialClassInstance();

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v12;
    *(v11 + 16) = a1;
    type metadata accessor for Executor();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D84F90];
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v11 + 24) = v14;
    *(v11 + 40) = a4;
    sub_25EC79A54();
    swift_allocObject();

    *(v11 + 48) = sub_25EC79A44();
    swift_allocObject();
    *(v11 + 56) = sub_25EC79A44();
    *(v11 + 32) = v13;
    v16 = sub_25EC4E3E8(v15);

    *(v11 + 64) = v16;
    type metadata accessor for GraphDeploymentEK();
    swift_allocObject();
    v18 = sub_25EC6036C(a2, a3, v11);

    v10[3] = 0;
    v10[4] = 0;
    v10[2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_25EC7A890;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 0xD000000000000022;
    *(v19 + 40) = 0x800000025EC80D20;
    sub_25EC7A2B4();
  }

  return v10;
}

void *PolarisExclaveEndpoint.init(clientId:graphs:writers:gstService:pbsService:writersInfo:readersInfo:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v7[5] = 0;
  type metadata accessor for SessionManager();
  v12 = swift_allocObject();
  sub_25EC79DE4();
  swift_allocObject();

  v13 = sub_25EC79DB4();
  if (v8)
  {

    swift_deallocPartialClassInstance();

    type metadata accessor for PolarisExclaveEndpoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    *(v12 + 16) = a1;
    type metadata accessor for Executor();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84F90];
    *(v15 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = v15;
    *(v12 + 40) = a4;
    sub_25EC79A54();
    swift_allocObject();

    *(v12 + 48) = sub_25EC79A44();
    swift_allocObject();
    *(v12 + 56) = sub_25EC79A44();
    *(v12 + 32) = v14;
    v17 = sub_25EC4E3E8(v16);

    *(v12 + 64) = v17;
    type metadata accessor for GraphDeploymentEK();
    swift_allocObject();
    v19 = sub_25EC6036C(a2, a3, v12);

    v9[3] = 0;
    v9[4] = 0;
    v9[2] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_25EC7A890;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 32) = 0xD000000000000022;
    *(v20 + 40) = 0x800000025EC80D20;
    sub_25EC7A2B4();
  }

  return v9;
}

uint64_t sub_25EC59340(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25EC7A890;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0xD00000000000002ALL;
  *(v2 + 40) = 0x800000025EC80D50;
  sub_25EC7A2B4();

  return a1;
}

uint64_t sub_25EC593E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_25EC79874();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_25EC798D4();
  v6 = *(v50 - 8);
  v7 = MEMORY[0x28223BE20](v50);
  v49 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v39 = sub_25EC79CC4();
  v11 = *(v39 - 8);
  v12 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = *a1;
  v40 = a2;
  sub_25EC797B4();
  v54 = 0;
  v55 = 0;
  v53 = v16;

  sub_25EC6F430(&v51);
  v17 = v52;
  if (!v52)
  {
  }

  v18 = v51;
  v45 = (v4 + 104);
  v19 = (v6 + 8);
  v44 = *MEMORY[0x277D3E780];
  v42 = (v6 + 32);
  v43 = (v6 + 16);
  v36 = (v11 + 8);
  v37 = (v11 + 16);
  while (1)
  {
    v41 = v18;
    result = sub_25EC79C84();
    v48 = *(v17 + 16);
    if (v48)
    {
      break;
    }

LABEL_3:

    v20 = v39;
    (*v37)(v38, v15, v39);
    sub_25EC79804();
    (*v36)(v15, v20);
    sub_25EC6F430(&v51);
    v18 = v51;
    v17 = v52;
    if (!v52)
    {
    }
  }

  v22 = 0;
  v23 = (v17 + 40);
  while (v22 < *(v17 + 16))
  {
    v25 = v17;
    v26 = *(v23 - 1);
    v27 = *v23;
    v28 = *(v26 + 16);

    v29 = swift_slowAlloc();
    memmove(v29, (v26 + 32), *(v26 + 16));
    v30 = &v29[v28];
    v31 = v45;
    v32 = v46;
    *v46 = v29;
    v32[1] = v30;
    (*v31)(v32, v44, v47);
    sub_25EC79894();

    if ((v27 & 1) == 0)
    {
      v33 = v49;
      sub_25EC798C4();
      v34 = v50;
      (*v19)(v10, v50);
      (*v42)(v10, v33, v34);
    }

    v24 = v50;
    (*v43)(v49, v10, v50);
    sub_25EC79CD4();
    result = (*v19)(v10, v24);
    v23 += 16;
    ++v22;
    v17 = v25;
    if (v48 == v22)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}