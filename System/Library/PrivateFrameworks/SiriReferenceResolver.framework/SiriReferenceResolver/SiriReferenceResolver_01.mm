_BYTE **sub_268CA5D20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_268CA5D30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for RREntityMatcher(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_268CA5E3C(uint64_t a1, uint64_t a2)
{
  sub_268CB7E50();
  sub_268CB79E0();
  v4 = sub_268CB7E70();

  return sub_268CA5FD4(a1, a2, v4);
}

unint64_t sub_268CA5EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268CB7E50();
  sub_268CB79E0();
  sub_268CB79E0();
  v8 = sub_268CB7E70();

  return sub_268CA6088(a1, a2, a3, a4, v8);
}

unint64_t sub_268CA5F54()
{
  sub_268CB7790();
  sub_268CA632C(qword_28131E6C8);
  sub_268CB79D0();
  v0 = OUTLINED_FUNCTION_23();

  return sub_268CA6184(v0, v1);
}

unint64_t sub_268CA5FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268CB7DC0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268CA6088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_268CB7DC0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_268CB7DC0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_268CA6184(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_268CB7790();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_268CA632C(&qword_2802DA3B8);
    v9 = sub_268CB79F0();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_268CA632C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268CB7790();
    OUTLINED_FUNCTION_23();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268CA636C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return sub_268CB7DC0();
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_268CA65CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA520, &qword_268CB8CE8);
  __swift_allocate_value_buffer(v0, qword_2802DA668);
  __swift_project_value_buffer(v0, qword_2802DA668);
  sub_268CB7680();
  sub_268CB7180();
  return sub_268CB7690();
}

uint64_t sub_268CA665C@<X0>(void *a2@<X8>)
{
  v43 = a2;
  v3 = sub_268CB7160();
  v45 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v42 - v7;
  sub_268CB7340();
  swift_allocObject();
  v9 = sub_268CB7330();
  v10 = sub_268CB7670();
  v12 = v11;
  if (qword_28131E9F0 != -1)
  {
    swift_once();
  }

  v13 = qword_28131EC78 == v10 && unk_28131EC80 == v12;
  v44 = v6;
  if (v13 || (sub_268CB7DC0() & 1) != 0)
  {

    sub_268CB7240();
    sub_268CB71F0();
    if (v46)
    {
      sub_268CB74C0();
      swift_allocObject();
      sub_268CB74B0();
      sub_268CB7220();
      if (v14)
      {
        sub_268CB7490();
      }

      sub_268CB7230();
      if (v15)
      {
        sub_268CB74A0();
      }

      goto LABEL_13;
    }

    v23 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    v25 = v24;
    v26 = 0x8000000268CB9CD0;
    v27 = 0xD000000000000031;
LABEL_18:
    *v24 = v27;
    v24[1] = v26;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D61E00], v23);
    swift_willThrow();
  }

  if (qword_28131E9E8 != -1)
  {
    swift_once();
  }

  v29 = qword_28131EC68 == v10 && unk_28131EC70 == v12;
  if (v29 || (sub_268CB7DC0() & 1) != 0)
  {

    sub_268CB72B0();
    sub_268CB71F0();
    if (!v46)
    {
      v23 = sub_268CB76F0();
      sub_268CA6EAC();
      swift_allocError();
      v25 = v24;
      v26 = 0x8000000268CB9C90;
      v27 = 0xD000000000000032;
      goto LABEL_18;
    }

    sub_268CB7500();
    swift_allocObject();
    sub_268CB74F0();
    sub_268CB7290();
    if (v30)
    {
      sub_268CB74D0();
    }

    sub_268CB72A0();
    if (v31)
    {
      sub_268CB74E0();
    }
  }

  else
  {
    if (qword_28131E9E0 != -1)
    {
      swift_once();
    }

    if (qword_28131EC58 == v10 && unk_28131EC60 == v12)
    {
    }

    else
    {
      v39 = sub_268CB7DC0();

      if ((v39 & 1) == 0)
      {
        v23 = sub_268CB76F0();
        sub_268CA6EAC();
        swift_allocError();
        v25 = v24;
        v26 = 0x8000000268CB9BC0;
        v27 = 0xD000000000000023;
        goto LABEL_18;
      }
    }

    sub_268CB73B0();
    sub_268CB71F0();
    if (!v46)
    {
      v23 = sub_268CB76F0();
      sub_268CA6EAC();
      swift_allocError();
      v25 = v24;
      v26 = 0x8000000268CB9BF0;
      v27 = 0xD000000000000033;
      goto LABEL_18;
    }

    sub_268CB75E0();
    swift_allocObject();
    sub_268CB75D0();
    sub_268CB7390();
    if (v40)
    {
      sub_268CB75B0();
    }

    sub_268CB73A0();
    if (v41)
    {
      sub_268CB75C0();
    }
  }

LABEL_13:

  sub_268CB7300();

  v16 = sub_268CB7660();
  v17 = *(v16 + 16);
  if (v17)
  {
    v42[1] = v16;
    v42[2] = v2;
    v18 = v9;
    v19 = *(v45 + 16);
    v20 = v16 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v21 = *(v45 + 72);
    v22 = (v45 + 8);
    do
    {
      v19(v8, v20, v3);
      sub_268CB7090();
      (*v22)(v8, v3);
      v20 += v21;
      --v17;
    }

    while (v17);

    v9 = v18;
  }

  else
  {
  }

  v32 = v44;
  sub_268CB7130();
  sub_268CB7090();
  if (MEMORY[0x26D62AA30](v9))
  {
    sub_268CB7180();
    sub_268CB71F0();
    v33 = v46;
    if (v46)
    {
      (*(v45 + 8))(v32, v3);

      *v43 = v33;
      return result;
    }

    v36 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v37 = 0xD00000000000002ALL;
    v37[1] = 0x8000000268CB9C60;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D61E00], v36);
    swift_willThrow();
  }

  else
  {
    v34 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v35 = 0xD00000000000002DLL;
    v35[1] = 0x8000000268CB9C30;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D61E00], v34);
    swift_willThrow();
  }

  return (*(v45 + 8))(v32, v3);
}

unint64_t sub_268CA6EAC()
{
  result = qword_2802DA550;
  if (!qword_2802DA550)
  {
    sub_268CB76F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA550);
  }

  return result;
}

uint64_t sub_268CA6F20()
{
  v1 = sub_268CB74C0();
  OUTLINED_FUNCTION_3_3(v1);
  v2 = sub_268CB74B0();
  MEMORY[0x26D62AA30]();
  result = OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    result = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v2 = 0x8000000268CB95B0;
    v4 = 0xD000000000000012;
  }

  qword_28131EC78 = v4;
  unk_28131EC80 = v2;
  return result;
}

uint64_t sub_268CA6F9C()
{
  v1 = sub_268CB7500();
  OUTLINED_FUNCTION_3_3(v1);
  v2 = sub_268CB74F0();
  MEMORY[0x26D62AA30]();
  result = OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    result = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v2 = 0x8000000268CB95D0;
    v4 = 0xD000000000000013;
  }

  qword_28131EC68 = v4;
  unk_28131EC70 = v2;
  return result;
}

void sub_268CA7018()
{
  v1 = sub_268CB75E0();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB75D0();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v2 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }

  qword_28131EC58 = v2;
  unk_28131EC60 = v3;
}

void sub_268CA7088()
{
  v1 = sub_268CB7340();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7330();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v3 = 0xED00006E6F737265;
    OUTLINED_FUNCTION_4_2();
    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x505F000000000000;
  }

  qword_28131ECB8 = v4;
  unk_28131ECC0 = v3;
}

uint64_t sub_268CA7104()
{
  v1 = sub_268CB7480();
  OUTLINED_FUNCTION_3_3(v1);
  v2 = sub_268CB7470();
  MEMORY[0x26D62AA30]();
  result = OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    result = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v2 = 0x8000000268CB9A40;
    v4 = 0xD000000000000011;
  }

  qword_28131EC88 = v4;
  unk_28131EC90 = v2;
  return result;
}

void sub_268CA7180()
{
  v1 = sub_268CB7570();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7560();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v2 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }

  qword_2802DA680 = v2;
  *algn_2802DA688 = v3;
}

void sub_268CA71F0()
{
  v1 = sub_268CB7530();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7520();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v2 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }

  qword_28131EC98 = v2;
  unk_28131ECA0 = v3;
}

void sub_268CA7260()
{
  v1 = sub_268CB7210();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7200();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v3 = 0xEA00000000007070;
    OUTLINED_FUNCTION_4_2();
    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x415F000000000000;
  }

  qword_28131ECA8 = v4;
  unk_28131ECB0 = v3;
}

void sub_268CA72D4()
{
  v1 = sub_268CB7360();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7350();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v3 = 0xED0000776F646E69;
    OUTLINED_FUNCTION_4_2();
    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x575F000000000000;
  }

  qword_28131ECC8 = v4;
  unk_28131ECD0 = v3;
}

uint64_t OUTLINED_FUNCTION_0_3()
{
}

uint64_t OUTLINED_FUNCTION_2_3()
{
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_268CA73C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268CB7D50();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_268CA73E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_268CB7D50();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_268CA7454()
{
  OUTLINED_FUNCTION_11_2();
  swift_beginAccess();
}

uint64_t sub_268CA7498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t RRResolver.__allocating_init(entities:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RRResolver.init(entities:)(a1);
  return v2;
}

uint64_t RRResolver.init(entities:)(uint64_t a1)
{
  type metadata accessor for RRResolver(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA538, &qword_268CB8D30);
  sub_268CB7A20();
  sub_268CB7740();
  *(v1 + OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities) = a1;
  return v1;
}

uint64_t type metadata accessor for RRResolver(uint64_t a1)
{
  result = qword_28131EBA0;
  if (!qword_28131EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268CA767C(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;

  v8 = sub_268CB7730();
  v9 = sub_268CB7BD0();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_8_3();
    v58 = a2;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_2();
    v11 = swift_slowAlloc();
    v65[0] = v11;
    *v10 = 136315138;
    sub_268CB7680();

    v12 = sub_268CB7A20();
    v14 = sub_268CA5820(v12, v13, v65);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_268C94000, v8, v9, "Find annotated entities with EntityUSO. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
    a2 = v58;
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  v15 = sub_268CB2F00(a1);
  if (!v15)
  {

    v35 = sub_268CB7730();
    v36 = sub_268CB7BD0();
    v37 = OUTLINED_FUNCTION_13_2();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_8_3();
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      v40 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
      OUTLINED_FUNCTION_11_2();
      swift_beginAccess();
      *(v39 + 4) = sub_268CA73C0(*(v4 + v40));

      _os_log_impl(&dword_268C94000, v35, v36, "total entity count in pool: %ld", v39, 0xCu);
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
    }

    else
    {
    }

    return sub_268CB32D4(a1);
  }

  if (v5 != -1 && (v5 & 1) == 0)
  {
    v41 = v15;
    sub_268CAADB4(a2, v5);
    sub_268CAADB4(a2, v5);
    sub_268CAADA8(a2, 0);
    v65[0] = sub_268CAA5B4(a2);
    sub_268CA9034(v65);
    if (!v61)
    {
      v62 = v5;
      sub_268CAADCC(a2, v5);
      v42 = v65[0];
      v60 = MEMORY[0x277D84F90];
      v65[0] = MEMORY[0x277D84F90];
      v43 = sub_268CA73C0(v42);
      for (i = 0; ; ++i)
      {
        if (v43 == i)
        {

          v48 = v65[0];
          v65[0] = MEMORY[0x277D84F90];
          v49 = sub_268CA73C0(v48);
          v50 = 0;
          while (1)
          {
            if (v49 == v50)
            {

              sub_268CAADCC(a2, v62);
              return v60;
            }

            if ((v48 & 0xC000000000000001) != 0)
            {
              v51 = MEMORY[0x26D62B570](v50, v48);
            }

            else
            {
              if (v50 >= *(v48 + 16))
              {
                goto LABEL_70;
              }

              v51 = *(v48 + 8 * v50 + 32);
            }

            v52 = v51;
            v53 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_69;
            }

            static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)(v51, v41, 0);
            v55 = v54;

            ++v50;
            if (v55)
            {
              MEMORY[0x26D62B3D0](v56);
              if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_268CB7B70();
              }

              sub_268CB7BA0();
              v60 = v65[0];
              v50 = v53;
            }
          }
        }

        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x26D62B570](i, v42);
        }

        else
        {
          if (i >= *(v42 + 16))
          {
            goto LABEL_68;
          }

          v45 = *(v42 + 8 * i + 32);
        }

        v46 = v45;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_268CB78C0();
        if (v47 >= 0.0025)
        {
          sub_268CB7D00();
          sub_268CB7D20();
          sub_268CB7D30();
          sub_268CB7D10();
        }

        else
        {
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v59 = v15;
  v16 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  OUTLINED_FUNCTION_11_2();
  swift_beginAccess();
  v17 = *(v4 + v16);
  v60 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v18 = sub_268CA73C0(v17);

  for (j = 0; v18 != j; ++j)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D62B570](j, v17);
    }

    else
    {
      if (j >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v20 = *(v17 + 8 * j + 32);
    }

    v21 = v20;
    if (__OFADD__(j, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    sub_268CB7810();
    v22 = sub_268CB7670();
    v24 = v23;

    if (v22 == 0xD000000000000010 && 0x8000000268CB9610 == v24)
    {
    }

    else
    {
      v26 = sub_268CB7DC0();

      if ((v26 & 1) == 0)
      {

        continue;
      }
    }

    sub_268CB7D00();
    sub_268CB7D20();
    sub_268CB7D30();
    sub_268CB7D10();
  }

  v27 = v63;
  v64 = MEMORY[0x277D84F90];
  v28 = sub_268CA73C0(v27);
  v29 = 0;
  while (v28 != v29)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x26D62B570](v29, v27);
    }

    else
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_66;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_65;
    }

    static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)(v30, v59, 0);
    v34 = v33;

    ++v29;
    if (v34)
    {
      MEMORY[0x26D62B3D0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268CB7B70();
      }

      sub_268CB7BA0();
      v60 = v64;
      v29 = v32;
    }
  }

  return v60;
}

void *sub_268CA7D60(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA590, &qword_268CB8E08);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA598, &qword_268CB8E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_268CAD2F8(a1);
  v10 = v9;
  if (sub_268CA73C0(v9))
  {
    sub_268CB7060();
    sub_268CB71F0();
    if (v32)
    {

      v11 = sub_268CA767C(a1, v10, 0);
      if (sub_268CA73C0(v11))
      {

        v10 = v11;
      }

      else
      {
      }
    }
  }

  v12 = sub_268CA767C(a1, 0, 255);
  v13 = v12;
  if (!sub_268CA837C(a1))
  {
    goto LABEL_8;
  }

  sub_268CB72C0();
  v14 = sub_268CB4D18(v8);
  v16 = v15;
  sub_268CAAE38(v8, &qword_2802DA598, &qword_268CB8E10);
  if (v16)
  {

LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v18 = sub_268CB7930();
  v17 = 1;
  v19 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v18);
  v20 = sub_268CB52DC(v12, v19, v2, v14);

  sub_268CAAA08(v12, 0);
  sub_268CAAE38(v19, &qword_2802DA590, &qword_268CB8E08);
  v13 = v20;
LABEL_10:
  v21 = sub_268CB7730();
  v22 = sub_268CB7BC0();
  v23 = OUTLINED_FUNCTION_13_2();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_268C94000, v21, v22, "Sorting resolved candidates with saliency score", v25, 2u);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  sub_268CAADA8(v13, 0);

  v32 = sub_268CAA5B4(v26);
  sub_268CA9034(&v32);
  sub_268CAAA08(v13, 0);
  v27 = v32;
  v28 = sub_268CA81EC(v10, v32, 0, v17);
  sub_268CAAA08(v13, 0);
  sub_268CAAA08(v27, 0);

  return v28;
}

void *sub_268CA81EC(unint64_t a1, void *a2, char a3, char a4)
{
  if (a1 >> 62)
  {
    if (sub_268CB7D50())
    {
LABEL_3:

      v8 = 0;
      v9 = a1;
      if ((a4 & 1) == 0)
      {
        return v9;
      }

      goto LABEL_7;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_268CAADA8(a2, a3 & 1);
  v9 = a2;
  v8 = a3;
  if ((a4 & 1) == 0)
  {
    return v9;
  }

LABEL_7:
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA450, &qword_268CB8960);
    swift_willThrowTypedImpl();
    return v9;
  }

  if (!sub_268CA73C0(a2) || (sub_268CA90B0(a2, a1) & 1) != 0)
  {
    return v9;
  }

  v11 = sub_268CB7730();
  v12 = sub_268CB7BC0();
  v13 = OUTLINED_FUNCTION_13_2();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_268C94000, v11, v12, "Resolver ordinal match results are diffrent from Marrs results. Returning ordinal match results", v15, 2u);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  sub_268CAAA08(v9, v8 & 1);

  sub_268CAADA8(a2, 0);
  return a2;
}

uint64_t sub_268CA837C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8BA0;
  *(inited + 32) = a1;
  v31 = inited;
  v3 = sub_268CA73C0(inited);

  if (!v3)
  {
LABEL_44:

    return 0;
  }

LABEL_2:
  result = sub_268CA73E4(inited);
  if (result)
  {
    __break(1u);
    goto LABEL_51;
  }

  result = sub_268CA73C0(inited);
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((inited & 0xC000000000000001) == 0)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(inited + 32);

      goto LABEL_7;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v5 = MEMORY[0x26D62B570](0, inited);
LABEL_7:
  result = sub_268CA73C0(inited);
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  result = sub_268CA73C0(inited);
  if (result < 1)
  {
    goto LABEL_53;
  }

  v6 = sub_268CA73C0(inited);
  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_268CAA514(result, 1);
  sub_268CAAC64(0, 1, 0);
  sub_268CB7650();
  v8 = sub_268CA63D0();

  if (!v8)
  {
    goto LABEL_19;
  }

  result = sub_268CA73C0(v8);
  if (!result)
  {

    goto LABEL_19;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v8);
    goto LABEL_15;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_15:

    v9 = sub_268CB7620();

    if (v9)
    {
      sub_268CB72E0();

      sub_268CB71F0();

      v10 = v30;
      if (v30)
      {
LABEL_49:

        return v10;
      }
    }

LABEL_19:
    v10 = v5;
    v11 = sub_268CB7650();
    v12 = 0;
    v13 = v11 + 64;
    v27 = v11 + 64;
    v28 = v11;
    v14 = 1 << *(v11 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v11 + 64);
    v17 = (v14 + 63) >> 6;
    v26 = v17;
    if (v16)
    {
LABEL_23:
      v18 = v12;
LABEL_27:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = *(*(v28 + 56) + ((v18 << 9) | (8 * v19)));
      v10 = MEMORY[0x277D84F90];
      v30 = MEMORY[0x277D84F90];
      v21 = sub_268CA73C0(v20);

      v22 = 0;
      v29 = v10;
      while (1)
      {
        if (v21 == v22)
        {

          v10 = &v31;
          sub_268CA879C(v29);
          v12 = v18;
          v17 = v26;
          v13 = v27;
          if (!v16)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26D62B570](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v10 = *(v20 + 8 * v22 + 32);
        }

        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v24 = sub_268CB7620();

        ++v22;
        if (v24)
        {
          MEMORY[0x26D62B3D0](v25);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_268CB7B70();
          }

          v10 = &v30;
          sub_268CB7BA0();
          v29 = v30;
          v22 = v23;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
LABEL_24:
      while (1)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v18 >= v17)
        {

          inited = v31;
          if (sub_268CA73C0(v31))
          {
            goto LABEL_2;
          }

          goto LABEL_44;
        }

        v16 = *(v13 + 8 * v18);
        ++v12;
        if (v16)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_268CA879C(unint64_t a1)
{
  v3 = sub_268CA73C0(a1);
  v4 = sub_268CA73C0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_268CAA514(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_268CAA7BC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_268CA8848(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268CAA4AC(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_268CB7160();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_268CA8948(uint64_t a1)
{

  v1 = sub_268CB7730();
  v2 = sub_268CB7BC0();

  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_8_3();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_2();
    v4 = swift_slowAlloc();
    v37 = v4;
    *v3 = 136315138;
    sub_268CB77D0();
    sub_268CAAA14();
    v5 = sub_268CB7D90();
    v7 = sub_268CA5820(v5, v6, &v37);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_268C94000, v1, v2, "Resolver call with ResolveQuery: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  v8 = sub_268CB77B0();
  v9 = sub_268CA7D60(v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {

    v12 = sub_268CB7730();
    v13 = sub_268CB7BD0();
    v14 = OUTLINED_FUNCTION_13_2();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_8_3();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_7_2();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315138;
      v18 = sub_268CB7910();
      v19 = MEMORY[0x26D62B400](v9, v18);
      v21 = sub_268CA5820(v19, v20, &v37);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_268C94000, v12, v13, "Resolved candicates BEFORE post-processing and thresholding: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
    }

    v22 = sub_268CA1ACC(v9);
    sub_268CAAA08(v9, 0);
    v37 = MEMORY[0x277D84F90];
    v23 = sub_268CA73C0(v22);
    for (i = 0; v23 != i; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D62B570](i, v22);
      }

      else
      {
        if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      sub_268CB78C0();
      if (v27 >= 0.0025)
      {
        sub_268CB7D00();
        sub_268CB7D20();
        sub_268CB7D30();
        sub_268CB7D10();
      }

      else
      {
      }
    }

    v28 = v37;

    v29 = sub_268CB7730();
    v30 = sub_268CB7BD0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_7_2();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 134218242;
      *(v31 + 4) = 0x3F647AE147AE147BLL;
      *(v31 + 12) = 2080;
      v33 = sub_268CB7910();
      v34 = MEMORY[0x26D62B400](v28, v33);
      v36 = sub_268CA5820(v34, v35, &v37);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_268C94000, v29, v30, "Resolved candicates AFTER post-processing and thresholding (>=%f): %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
    }

    sub_268CAAA08(v9, 0);
  }
}

uint64_t sub_268CA8D7C(uint64_t a1)
{
  v2 = sub_268CB7950();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = OUTLINED_FUNCTION_5_3();
  if (v6(v5) == *MEMORY[0x277D5FEA8])
  {
    v7 = OUTLINED_FUNCTION_5_3();
    v8(v7);
    sub_268CB77D0();
    swift_allocObject();

    OUTLINED_FUNCTION_11_2();
    v9 = sub_268CB77A0();
    sub_268CA8948(v9);
    v11 = v10;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_3();
    v13(v12);
    sub_268CAAA6C();
    v11 = swift_allocError();
    *v14 = 0;
  }

  return v11;
}

uint64_t RRResolver.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  sub_268CB7750();
  OUTLINED_FUNCTION_2_4();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t RRResolver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  sub_268CB7750();
  OUTLINED_FUNCTION_2_4();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_268CA9034(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_268CAAC50(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_268CA9958(v6);
  return sub_268CB7D10();
}

uint64_t sub_268CA90B0(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268CB7D50())
  {
    if (a2 >> 62)
    {
      result = sub_268CB7D50();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_268CB7910();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D62B570](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x26D62B570](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_268CB7C10();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_268CA9270(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268CA9294(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_268CB7910();
      result = sub_268CB7B90();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_268CA92F0()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA468, &qword_268CB8978);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA418, &qword_268CB8E00);
    swift_arrayInitWithCopy();
  }
}

void sub_268CA9410()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA588, &unk_268CB8DF0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268CA94F4()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA580, &qword_268CB8DE8);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_268CA95D0()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_268CA9724(v7, v4);
  v9 = *(sub_268CB7160() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_268CA9840(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_268CA96A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_268CA9724(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5A0, qword_268CB8E18);
  v4 = *(sub_268CB7160() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_268CA9820(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_4(a3, result);
  }

  return result;
}

void sub_268CA9840(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (sub_268CB7160(), OUTLINED_FUNCTION_2_4(), a1 + *(v6 + 72) * a2 <= a3))
  {
    sub_268CB7160();
    v8 = OUTLINED_FUNCTION_5_3();

    MEMORY[0x2821FE828](v8);
  }

  else if (a3 != a1)
  {
    v7 = OUTLINED_FUNCTION_5_3();

    MEMORY[0x2821FE820](v7);
  }
}

void *sub_268CA9904(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_268CA9928@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_268CA9958(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268CB7D80();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_268CA9294(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_268CA9B20(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_268CA9A38(0, v3, 1, a1);
  }
}

void sub_268CA9A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        sub_268CB78C0();
        v15 = v14;
        sub_268CB78C0();
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_268CA9B20(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_91:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v8 = v104;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v90 = (v7 + 16);
      v91 = *(v7 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v92 = v7;
        v93 = (v7 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v7 = v95[1];
        sub_268CAA148((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v7), v102);
        if (v8)
        {
          break;
        }

        if (v7 < v94)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_118;
        }

        *v93 = v94;
        v93[1] = v7;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v7 = v92;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v7 = sub_268CAA378(v7);
    goto LABEL_93;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = (*a3 + 8 * v6);
      v11 = 8 * v6;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = v6 + 1;
      v15 = *(*a3 + 8 * v9);
      OUTLINED_FUNCTION_9_2(v13);
      v17 = OUTLINED_FUNCTION_15_1(v16);

      v9 = v14;
      v99 = v8;
      v18 = v8 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v9 + 1;
        if (v20 >= v5)
        {
          break;
        }

        v21 = *(v12 - 1);
        v22 = v20;
        v23 = *v12;
        v24 = OUTLINED_FUNCTION_9_2(v21);
        sub_268CB78C0();
        v26 = v25;

        v9 = v22;
        ++v12;
        v18 = v19 + 1;
        if (v17 < v4 == v26 >= v24)
        {
          goto LABEL_9;
        }
      }

      v9 = v5;
LABEL_9:
      if (v17 >= v4)
      {
        v8 = v99;
      }

      else
      {
        v8 = v99;
        if (v9 < v99)
        {
          goto LABEL_123;
        }

        if (v99 < v9)
        {
          if (v5 >= v19)
          {
            v27 = v19;
          }

          else
          {
            v27 = v5;
          }

          v28 = 8 * v27 - 8;
          v29 = v9;
          v30 = v99;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_122;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v9 < v8)
    {
      goto LABEL_121;
    }

    v101 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268CA94F4();
      v7 = v88;
    }

    v48 = *(v7 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v7 + 24) >> 1)
    {
      sub_268CA94F4();
      v7 = v89;
    }

    *(v7 + 16) = v49;
    v50 = v7 + 32;
    v51 = (v7 + 32 + 16 * v48);
    *v51 = v8;
    v51[1] = v101;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v7 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v7 + 32);
          v56 = *(v7 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_108;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_111;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_116;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v49 < 2)
        {
          goto LABEL_110;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_73:
        if (v73)
        {
          goto LABEL_113;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v80 < v72)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_103:
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v84 = v7;
        v85 = (v50 + 16 * (v52 - 1));
        v86 = *v85;
        v7 = v50 + 16 * v52;
        v87 = *(v7 + 8);
        sub_268CAA148((*a3 + 8 * *v85), (*a3 + 8 * *v7), (*a3 + 8 * v87), v102);
        if (v104)
        {
          goto LABEL_101;
        }

        if (v87 < v86)
        {
          goto LABEL_103;
        }

        v8 = *(v84 + 16);
        if (v52 > v8)
        {
          goto LABEL_104;
        }

        *v85 = v86;
        v85[1] = v87;
        if (v52 >= v8)
        {
          goto LABEL_105;
        }

        v49 = v8 - 1;
        memmove((v50 + 16 * v52), (v7 + 16), 16 * (v8 - 1 - v52));
        v7 = v84;
        *(v84 + 16) = v8 - 1;
        if (v8 <= 2)
        {
          goto LABEL_87;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_106;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_107;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_109;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_112;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v5 = a3[1];
    v6 = v101;
    if (v101 >= v5)
    {
      goto LABEL_91;
    }
  }

  v34 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_124;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v9 == v34)
  {
    goto LABEL_38;
  }

  v35 = *a3;
  v36 = *a3 + 8 * v9 - 8;
  v100 = v8;
  v102 = v34;
  v37 = v8 - v9;
LABEL_31:
  v38 = v9;
  v39 = *(v35 + 8 * v9);
  v40 = v37;
  v41 = v36;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    OUTLINED_FUNCTION_9_2(v42);
    v45 = OUTLINED_FUNCTION_15_1(v44);

    if (v45 >= v4)
    {
LABEL_36:
      v9 = v38 + 1;
      v36 += 8;
      --v37;
      if ((v38 + 1) == v102)
      {
        v9 = v102;
        v8 = v100;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v46;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_268CAA148(void **__src, id *__dst, id *a3, void **a4)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = a3 - __dst;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v13 = &v6[v10];
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_38;
      }

      v15 = v7;
      v16 = *v6;
      v17 = *v8;
      OUTLINED_FUNCTION_9_2(v16);
      v19 = OUTLINED_FUNCTION_15_1(v18);

      if (v19 >= v5)
      {
        break;
      }

      v20 = v8;
      v21 = v9 == v8++;
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v9;
      v7 = v15;
    }

    v20 = v6;
    v21 = v9 == v6++;
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v9 = *v20;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v13 = &v6[v11];
  v38 = v6;
LABEL_25:
  v23 = v8 - 1;
  v24 = v7 - 1;
  while (v13 > v6 && v8 > v9)
  {
    v26 = v8;
    v27 = v9;
    v28 = v24;
    v29 = v23;
    v30 = *v23;
    v31 = *(v13 - 1);
    OUTLINED_FUNCTION_9_2(v30);
    v33 = OUTLINED_FUNCTION_15_1(v32);

    v7 = v28;
    v34 = v28 + 1;
    if (v33 < v5)
    {
      v8 = v29;
      v9 = v27;
      v6 = v38;
      if (v34 != v26)
      {
        *v7 = *v29;
        v8 = v29;
      }

      goto LABEL_25;
    }

    if (v13 != v34)
    {
      *v28 = *(v13 - 1);
    }

    v24 = v28 - 1;
    --v13;
    v23 = v29;
    v9 = v27;
    v6 = v38;
  }

LABEL_38:
  v35 = v13 - v6;
  if (v8 != v6 || v8 >= &v6[v35])
  {
    memmove(v8, v6, 8 * v35);
  }

  return 1;
}

char *sub_268CAA38C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_4(a3, result);
  }

  return result;
}

char *sub_268CAA3AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA580, &qword_268CB8DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_268CAA4AC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_268CA95D0();
    *v1 = v5;
  }
}

uint64_t sub_268CAA514(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_268CB7D50();
LABEL_9:
  result = sub_268CB7CE0();
  *v2 = result;
  return result;
}

void *sub_268CAA5B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_268CB7D50();
    if (v4)
    {
      v5 = v4;
      v2 = sub_268CA96A4(v4, 0);
      sub_268CAA648((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_268CAA648(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268CB7D50();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268CA73C0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268CB7910();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268CAADE4(&qword_2802DA578, &qword_2802DA570, &qword_268CB8DE0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA570, &qword_268CB8DE0);
          v9 = sub_268CAA99C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268CAA7BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268CB7D50();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268CA73C0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268CB7680();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268CAADE4(&qword_2802DA568, &qword_2802DA560, &unk_268CB8DD0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA560, &unk_268CB8DD0);
          v9 = sub_268CAA930(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_268CAA930(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_3();
    v5 = MEMORY[0x26D62B570](v7);
  }

  *v3 = v5;
  return sub_268CAA994;
}

void (*sub_268CAA99C(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_3();
    v7 = MEMORY[0x26D62B570](v9);
  }

  *v3 = v7;
  return sub_268CAAA00;
}

void sub_268CAAA08(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_268CAAA14()
{
  result = qword_28131E6C0;
  if (!qword_28131E6C0)
  {
    sub_268CB77D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131E6C0);
  }

  return result;
}

unint64_t sub_268CAAA6C()
{
  result = qword_2802DA558;
  if (!qword_2802DA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA558);
  }

  return result;
}

uint64_t dispatch thunk of RRResolver.resolve(query:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

uint64_t sub_268CAAC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_268CB7680();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_268CB7D50();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_268CB7D50();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

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

id sub_268CAADA8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id sub_268CAADB4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_268CAADA8(result, a2 & 1);
  }

  return result;
}

void sub_268CAADCC(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_268CAAA08(a1, a2 & 1);
  }
}

uint64_t sub_268CAADE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_268CAAE38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_4();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_268C95A70(a3);

  return sub_268CA9270(a2, v5, a3);
}

double OUTLINED_FUNCTION_9_2(uint64_t a1)
{

  sub_268CB78C0();
  return result;
}

double OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  sub_268CB78C0();
  return result;
}

uint64_t type metadata accessor for MediaItemStructuredDataHandler(uint64_t a1)
{
  result = qword_2802DA5A8;
  if (!qword_2802DA5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268CAB038(uint64_t a1)
{
  result = sub_268CB7750();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268CAB104(void *a1)
{
  v3 = sub_268CB7840();
  v5 = sub_268CAB1C8(v3, v4, a1);
  if (v1)
  {
  }

  v7 = v5;

  v8 = sub_268C9F044(0, 0, 0, 0, v7, 0, 0, 0, 0xF000000000000000);

  return v8;
}

void *sub_268CAB1C8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_268CB7380();
  OUTLINED_FUNCTION_2_0();
  v34 = v8;
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_5();
  v33 = v10 - v9;
  sub_268CB7160();
  OUTLINED_FUNCTION_2_0();
  v36 = v11;
  v37 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_5();
  v15 = v14 - v13;
  sub_268CB7460();
  swift_allocObject();
  v16 = sub_268CB7450();
  v38 = v16;
  sub_268CABA88(a3, &selRef_title);
  if (v17)
  {
    sub_268CB7440();
  }

  sub_268CAB564(a1, a2, &v38, a3);
  if (v3)
  {
  }

  else
  {
    sub_268CABA88(a3, &selRef_identifier);
    if (v18)
    {

      OUTLINED_FUNCTION_1_5(v19, v20, v21, v22, v23, 0xEB0000000064496DLL);
      sub_268CB7090();
      (*(v37 + 8))(v15, v36);
    }

    sub_268CABA88(a3, &selRef_identifier);
    if (v24)
    {

      OUTLINED_FUNCTION_1_5(v25, v26, v27, v28, v29, 0xEC0000006C72556DLL);
      sub_268CB7090();
      (*(v37 + 8))(v15, v36);
    }

    sub_268CB75A0();
    swift_allocObject();
    sub_268CB7590();
    v30 = [a3 type] - 1;
    if (v30 <= 0x13)
    {
      (*(v34 + 104))(v33, **(&unk_279C47970 + v30), v35);
      sub_268CB7580();
      (*(v34 + 8))(v33, v35);

      sub_268CB7430();
    }

    sub_268CABA88(a3, &selRef_artist);
    if (v31)
    {
      swift_allocObject();
      sub_268CB7450();
      sub_268CB7440();

      sub_268CB7420();
    }

    a3 = MEMORY[0x26D62AA30](v16);
  }

  return a3;
}

uint64_t sub_268CAB564(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35[1] = a3;
  sub_268CB7160();
  OUTLINED_FUNCTION_2_0();
  v36 = v9;
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_5();
  v12 = v11 - v10;
  sub_268CB7700();
  OUTLINED_FUNCTION_2_0();
  v38 = v14;
  v39 = v13;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = a1 == 0x6C7070612E6D6F63 && a2 == 0xEF636973754D2E65;
  if (v20 || (sub_268CB7DC0() & 1) != 0 || OUTLINED_FUNCTION_4_4() == 1 || OUTLINED_FUNCTION_4_4() == 2 || OUTLINED_FUNCTION_4_4() == 5 || (result = OUTLINED_FUNCTION_4_4(), result == 14))
  {
    result = sub_268CABA88(a4, &selRef_identifier);
    if (v22)
    {
      sub_268CB7720();

      if (!v4)
      {
        v24 = v38;
        v23 = v39;
        (*(v38 + 16))(v17, v19, v39);
        v25 = (*(v24 + 88))(v17, v23);
        if (v25 == *MEMORY[0x277D2A540])
        {
          v26 = OUTLINED_FUNCTION_3_5();
          v27(v26);

          sub_268CB7130();
          sub_268CB7090();
          (*(v36 + 8))(v12, v37);
          return (*(v24 + 8))(v19, v39);
        }

        else if (v25 == *MEMORY[0x277D2A548])
        {
          v28 = OUTLINED_FUNCTION_3_5();
          v29(v28);
          v30 = *v17;

          v35[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5B8, qword_268CB8E80) + 64);
          v40 = v30;
          sub_268CB7D90();

          sub_268CB7130();
          sub_268CB7090();
          (*(v36 + 8))(v12, v37);
          (*(v24 + 8))(v19, v39);
          v31 = sub_268CB7710();
          return (*(*(v31 - 8) + 8))(&v17[v35[0]], v31);
        }

        else
        {
          v32 = sub_268CB76F0();
          sub_268CA6EAC();
          swift_allocError();
          *v33 = 0xD000000000000026;
          v33[1] = 0x8000000268CB9D90;
          (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D61E00], v32);
          swift_willThrow();
          v34 = *(v24 + 8);
          v34(v19, v23);
          return (v34)(v17, v23);
        }
      }
    }
  }

  return result;
}

uint64_t sub_268CABA88(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268CB7A10();

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_268CB7130();
}

id OUTLINED_FUNCTION_4_4()
{

  return [v0 (v1 + 504)];
}

uint64_t sub_268CABB58()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver15RRReaderMatcher_logger;
  v2 = sub_268CB7750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for RRReaderMatcher(uint64_t a1)
{
  result = qword_2802DA5C0;
  if (!qword_2802DA5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268CABC48(uint64_t a1)
{
  result = sub_268CB7750();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268CABCD8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v1 = sub_268CB7A00();
  v2 = [v0 persistentDomainForName_];

  if (!v2 || (v3 = sub_268CB79B0(), v2, !v3))
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_8;
  }

  sub_268CA39AC(0xD000000000000012, 0x8000000268CB9E90, v3, &v6);

  if (!*(&v7 + 1))
  {
LABEL_8:
    sub_268CABFC4(&v6);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268CABE18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v1 = sub_268CB7A00();
  v2 = [v0 persistentDomainForName_];

  if (!v2 || (v3 = sub_268CB79B0(), v2, !v3))
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_268CA39AC(0x617461446B636F6DLL, 0xEC00000065707954, v3, &v6);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_268CABFC4(&v6);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268CABF5C(char a1)
{
  if (a1)
  {
    return 0x617461446B636F6DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_268CABFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA410, &unk_268CB8920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268CAC02C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_allocate_value_buffer(v0, qword_2802DA698);
  __swift_project_value_buffer(v0, qword_2802DA698);
  sub_268CB7680();
  sub_268CB7370();
  return sub_268CB7690();
}

uint64_t sub_268CAC0BC@<X0>(uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_268CB7160();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = sub_268CB7750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D0, &unk_268CB8F00);
  sub_268CB7A20();
  v49 = "specifyingContactAddress";
  sub_268CB7740();
  sub_268CB7570();
  swift_allocObject();
  v53 = sub_268CB7560();
  sub_268CB7650();
  v12 = sub_268CA63D0();

  if (!v12)
  {
    goto LABEL_15;
  }

  if (!sub_268CAAE90())
  {

LABEL_15:
    v29 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v30 = 0xD000000000000020;
    v30[1] = 0x8000000268CB9EB0;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D61E00], v29);
    swift_willThrow();

    return (*(v9 + 8))(v11, v8);
  }

  sub_268CAAE98();
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v12);
  }

  else
  {
  }

  v13 = sub_268CB7620();

  if (!v13)
  {
    goto LABEL_15;
  }

  v45 = v8;
  sub_268CB7410();
  swift_allocObject();
  v14 = sub_268CB7400();
  v44 = v13;
  sub_268CB71A0();

  sub_268CB7550();
  v43 = v14;

  sub_268CAC85C();
  v46 = v11;
  if (v15)
  {
    v16 = sub_268CB7730();
    v17 = sub_268CB7BD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_268C94000, v16, v17, "Adding end node since it contains at least one valid int", v18, 2u);
      MEMORY[0x26D62BBE0](v18, -1, -1);
    }

    sub_268CB7540();

    v11 = v46;
  }

  sub_268CB7530();
  swift_allocObject();
  v19 = sub_268CB7520();

  v47 = v19;
  sub_268CB7510();

  v20 = sub_268CB7660();
  v21 = *(v20 + 16);
  if (v21)
  {
    v41 = v9;
    v42 = v2;
    v22 = v52;
    v23 = *(v51 + 16);
    v24 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v40 = v20;
    v25 = v20 + v24;
    v26 = *(v51 + 72);
    v27 = (v51 + 8);
    v28 = v47;
    do
    {
      v23(v7, v25, v22);
      sub_268CB7090();
      (*v27)(v7, v22);
      v25 += v26;
      --v21;
    }

    while (v21);

    v9 = v41;
    v11 = v46;
  }

  else
  {

    v28 = v47;
  }

  v32 = v50;
  sub_268CB7130();
  sub_268CB7090();
  v33 = MEMORY[0x26D62AA30](v28);
  v34 = v52;
  if (v33)
  {
    sub_268CB7370();
    sub_268CB71F0();
    v35 = v54;
    if (v54)
    {

      (*(v51 + 8))(v32, v34);
      result = (*(v9 + 8))(v11, v45);
      *v48 = v35;
      return result;
    }

    v38 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v39 = 0xD00000000000002ALL;
    v39[1] = 0x8000000268CB9C60;
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D61E00], v38);
    swift_willThrow();
  }

  else
  {
    v36 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v37 = 0xD00000000000002DLL;
    v37[1] = 0x8000000268CB9C30;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D61E00], v36);
    swift_willThrow();
  }

  (*(v51 + 8))(v32, v34);
  return (*(v9 + 8))(v11, v45);
}

void sub_268CAC85C()
{
  v1 = sub_268CB7750();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D0, &unk_268CB8F00);
  sub_268CB7A20();
  sub_268CB7740();
  sub_268CB7650();
  v2 = sub_268CA63D0();

  if (!v2)
  {
    goto LABEL_91;
  }

  if (!sub_268CAAE90())
  {
    v25 = OUTLINED_FUNCTION_0_5();
    v26(v25);

    return;
  }

  OUTLINED_FUNCTION_6();
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_89;
  }

LABEL_5:

  v3 = sub_268CB7620();

  if (!v3)
  {
LABEL_91:
    v55 = OUTLINED_FUNCTION_0_5();
    v56(v55);
    return;
  }

  sub_268CB7650();
  v4 = sub_268CA63D0();

  if (!v4)
  {
    goto LABEL_46;
  }

  if (!sub_268CAAE90())
  {
    v29 = OUTLINED_FUNCTION_0_5();
    v30(v29);

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_6();
  if ((v4 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  v5 = sub_268CB7620();

  if (!v5)
  {
LABEL_46:
    v27 = OUTLINED_FUNCTION_0_5();
    v28(v27);
LABEL_50:

    return;
  }

  sub_268CB7650();
  v6 = sub_268CA63D0();

  if (!v6)
  {
    goto LABEL_49;
  }

  if (!sub_268CAAE90())
  {
    v50 = OUTLINED_FUNCTION_0_5();
    v51(v50);

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_6();
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_95;
  }

LABEL_15:

  v7 = sub_268CB7620();

  v60 = v7;
  if (!v7)
  {
LABEL_49:
    v31 = OUTLINED_FUNCTION_0_5();
    v32(v31);

    goto LABEL_50;
  }

  v8 = v5;
  v9 = sub_268CB7650();
  v10 = 0;
  v11 = v9 + 64;
  OUTLINED_FUNCTION_1_6(v9);
  v5 = v13 & v12;
  v15 = (v14 + 63) >> 6;
  while (1)
  {
    while (1)
    {
LABEL_17:
      if (v5)
      {
        goto LABEL_22;
      }

      do
      {
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_88;
        }

        if (v16 >= v15)
        {
          v59 = 1;
          goto LABEL_52;
        }

        v5 = *(v11 + 8 * v16);
        ++v10;
      }

      while (!v5);
      v10 = v16;
LABEL_22:
      OUTLINED_FUNCTION_2_6();
      if (v17)
      {
        v18 = OUTLINED_FUNCTION_4_5();
      }

      else
      {
        v18 = OUTLINED_FUNCTION_7_3();
      }

      v5 &= v5 - 1;
      if (v18)
      {
        if ((v8 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_8_4();
          if (v19)
          {
            OUTLINED_FUNCTION_10_3();
            goto LABEL_28;
          }

          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          OUTLINED_FUNCTION_14();
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_9_3();

LABEL_28:
        v8 = sub_268CB7620();

        if (v8)
        {
          break;
        }
      }
    }

    sub_268CB7650();
    OUTLINED_FUNCTION_9_3();

    if (!*(v0 + 16))
    {
      goto LABEL_43;
    }

    v20 = OUTLINED_FUNCTION_3_6();
    if ((v21 & 1) == 0)
    {
      goto LABEL_43;
    }

    v8 = *(*(v0 + 56) + 8 * v20);

    if (v8 >> 62)
    {
      break;
    }

    if (OUTLINED_FUNCTION_7_3())
    {
      goto LABEL_33;
    }

LABEL_43:
  }

  if (!OUTLINED_FUNCTION_4_5())
  {
    goto LABEL_43;
  }

LABEL_33:
  if ((v8 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
    v0 = v24;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_8_4();
  if (v22)
  {
    OUTLINED_FUNCTION_10_3();
LABEL_36:

    v58 = sub_268CB7600();
    v8 = v23;

    if ((v8 & 1) != 0 || !v58)
    {
      goto LABEL_17;
    }

    v59 = 0;
LABEL_52:

    v33 = v60;
    v34 = sub_268CB7650();
    v35 = 0;
    v5 = v34 + 64;
    OUTLINED_FUNCTION_1_6(v34);
    v38 = v37 & v36;
    v40 = (v39 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        if (!v38)
        {
          while (1)
          {
            v41 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v41 >= v40)
            {

              if ((v59 & 1) == 0)
              {
                goto LABEL_90;
              }

              v52 = sub_268CB7730();
              v53 = sub_268CB7BD0();
              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                *v54 = 0;
                _os_log_impl(&dword_268C94000, v52, v53, "Not returning endNode builder because all values are zeroes", v54, 2u);
                MEMORY[0x26D62BBE0](v54, -1, -1);
              }

              goto LABEL_91;
            }

            v38 = *(v5 + 8 * v41);
            ++v35;
            if (v38)
            {
              v35 = v41;
              goto LABEL_58;
            }
          }

LABEL_88:
          __break(1u);
LABEL_89:
          OUTLINED_FUNCTION_14();
          goto LABEL_5;
        }

LABEL_58:
        OUTLINED_FUNCTION_2_6();
        if (v42)
        {
          v43 = OUTLINED_FUNCTION_4_5();
        }

        else
        {
          v43 = OUTLINED_FUNCTION_7_3();
        }

        v38 &= v38 - 1;
        if (v43)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {

            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_9_3();
          }

          else
          {
            OUTLINED_FUNCTION_8_4();
            if (!v44)
            {
              goto LABEL_94;
            }

            OUTLINED_FUNCTION_10_3();
          }

          v33 = sub_268CB7620();

          if (v33)
          {
            break;
          }
        }
      }

      sub_268CB7650();
      OUTLINED_FUNCTION_9_3();

      if (!*(v0 + 16))
      {
        goto LABEL_79;
      }

      v45 = OUTLINED_FUNCTION_3_6();
      if ((v46 & 1) == 0)
      {
        goto LABEL_79;
      }

      v33 = *(*(v0 + 56) + 8 * v45);

      if (v33 >> 62)
      {
        if (OUTLINED_FUNCTION_4_5())
        {
          goto LABEL_69;
        }

LABEL_79:
      }

      else
      {
        if (!OUTLINED_FUNCTION_7_3())
        {
          goto LABEL_79;
        }

LABEL_69:
        if ((v33 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_14();
          v0 = v49;
        }

        else
        {
          OUTLINED_FUNCTION_8_4();
          if (!v47)
          {
            goto LABEL_97;
          }

          OUTLINED_FUNCTION_10_3();
        }

        v57 = sub_268CB7600();
        v33 = v48;

        if ((v33 & 1) == 0 && v57)
        {

LABEL_90:
          sub_268CB7410();
          swift_allocObject();
          sub_268CB7400();
          sub_268CB71A0();

          goto LABEL_91;
        }
      }
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
}

unint64_t OUTLINED_FUNCTION_3_6()
{

  return sub_268CA5E3C(0x5672656765746E69, 0xEC00000065756C61);
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return sub_268CB7D50();
}

uint64_t OUTLINED_FUNCTION_10_3()
{
}

id sub_268CAD0F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_268CB7160();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268CB7210();
  swift_allocObject();
  v10 = sub_268CB7200();

  sub_268CB7130();
  sub_268CB7090();
  (*(v7 + 8))(v9, v6);
  v11 = MEMORY[0x26D62AA30](v10);
  if (v11)
  {
    v12 = sub_268C9F044(a1, a2, a1, a2, v11, 0, 0, 0, 0xF000000000000000);
  }

  else
  {
    v12 = a3;
  }

  return v12;
}

void sub_268CAD2F8(uint64_t a1)
{
  v4 = v1;
  v79 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  sub_268CAD91C(a1);
  if (v6)
  {
    v7 = v6;

    v8 = sub_268CB7730();
    v9 = sub_268CB7BD0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_16_0();
      *v10 = 134217984;
      *(v10 + 4) = *(v7 + 16);

      _os_log_impl(&dword_268C94000, v8, v9, "extractUsoIdentifiersFromReferenceNodes count: %ld", v10, 0xCu);
      OUTLINED_FUNCTION_5_0();
    }

    else
    {
    }

    v2 = 117;
    if (sub_268CB7670() == 0x6E456F4E5F6F7375 && v25 == 0xEC00000079746974)
    {
    }

    else
    {
      v27 = sub_268CB7DC0();

      if ((v27 & 1) == 0)
      {
LABEL_16:
        v12 = sub_268CAF7BC(v7);
        v81 = v12;
        v13 = sub_268CB7730();
        v28 = sub_268CB7BD0();
        if (OUTLINED_FUNCTION_5_4(v28))
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_7_4();
          LODWORD(OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger) = 136315138;
          sub_268CB7910();
          v29 = OUTLINED_FUNCTION_8_5();
          MEMORY[0x26D62B400](v29);
          v30 = OUTLINED_FUNCTION_0_6();
          OUTLINED_FUNCTION_1_7(v30, v31, v32, v33, v34, v35, v36, v37);
          OUTLINED_FUNCTION_6_4();
          *(&OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger + 4) = v4;
          v24 = "all other non-uso_NoEntity typed entities: %s";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    if ((sub_268CAEE14(v7) & 1) == 0)
    {
      sub_268CAF2E0(v7);
      v12 = v38;
      v81 = v38;
      v13 = sub_268CB7730();
      v39 = sub_268CB7BD0();
      if (OUTLINED_FUNCTION_5_4(v39))
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_7_4();
        LODWORD(OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger) = 136315138;
        sub_268CB7910();
        v40 = OUTLINED_FUNCTION_8_5();
        MEMORY[0x26D62B400](v40);
        v41 = OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_1_7(v41, v42, v43, v44, v45, v46, v47, v48);
        OUTLINED_FUNCTION_6_4();
        *(&OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger + 4) = v4;
        v24 = "uso_NoEntity entities: %s";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v11 = sub_268CAFB70();
  if (!v11)
  {
    v7 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v7 = v11;
  v12 = sub_268CAF7BC(v11);
  v81 = v12;
  v13 = sub_268CB7730();
  v14 = sub_268CB7BD0();
  if (OUTLINED_FUNCTION_5_4(v14))
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_7_4();
    LODWORD(OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger) = 136315138;
    sub_268CB7910();
    v15 = OUTLINED_FUNCTION_8_5();
    MEMORY[0x26D62B400](v15);
    v16 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_7(v16, v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_6_4();
    *(&OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger + 4) = v4;
    v24 = "extractContextualMatcherIdentifiers entities: %s";
LABEL_20:
    _os_log_impl(&dword_268C94000, v13, v2, v24, &OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

LABEL_21:

LABEL_22:
  v49 = sub_268CB7730();
  v50 = sub_268CB7BD0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_16_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_4();
    *v51 = 136315138;
    sub_268CB7910();
    v52 = OUTLINED_FUNCTION_8_5();
    MEMORY[0x26D62B400](v52);

    v61 = OUTLINED_FUNCTION_1_7(v53, v54, v55, v56, v57, v58, v59, v60);

    *(v51 + 4) = v61;
    _os_log_impl(&dword_268C94000, v49, v50, "entities before mapping: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v80[0] = MEMORY[0x277D84F90];
  v62 = sub_268CAAE90();

  v63 = 0;
  while (v62 != v63)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x26D62B570](v63, v12);
    }

    else
    {
      if (v63 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v64 = *(v12 + 8 * v63 + 32);
    }

    v65 = v64;
    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)(v64, a1, 1);
    v68 = v67;

    ++v63;
    if (v68)
    {
      MEMORY[0x26D62B3D0]();
      if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268CB7B70();
      }

      sub_268CB7BA0();
      v79 = v80[0];
      v63 = v66;
    }
  }

  swift_beginAccess();

  v81 = v79;
  sub_268CB034C(&v81, v7);
  swift_endAccess();

  v69 = sub_268CB7730();
  v70 = sub_268CB7BD0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_16_0();
    v72 = swift_slowAlloc();
    v80[0] = v72;
    *v71 = 136315138;
    v73 = sub_268CB7910();

    v75 = MEMORY[0x26D62B400](v74, v73);
    v77 = v76;

    v78 = sub_268CA5820(v75, v77, v80);

    *(v71 + 4) = v78;
    _os_log_impl(&dword_268C94000, v69, v70, "filterByMarrsIdentifiersResults: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }
}

void sub_268CAD91C(uint64_t a1)
{
  v176 = sub_268CB7790();
  v174 = *(v176 - 8);
  v2 = MEMORY[0x28223BE20](v176);
  v155 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v175 = &v142 - v5;
  MEMORY[0x28223BE20](v4);
  v177 = &v142 - v6;
  v7 = sub_268CB7100();
  v154 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v151 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5E0, &qword_268CB8FA0);
  MEMORY[0x28223BE20](v161);
  v160 = &v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v156 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v164 = &v142 - v14;
  MEMORY[0x28223BE20](v13);
  v162 = &v142 - v15;
  v169 = sub_268CB7160();
  v165 = *(v169 - 8);
  v16 = MEMORY[0x28223BE20](v169);
  v157 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v163 = &v142 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v142 - v21;
  MEMORY[0x28223BE20](v20);
  v166 = &v142 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8BA0;
  *(inited + 32) = a1;
  v182 = inited;
  v148 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA600, &qword_268CB8FB8);
  v24 = sub_268CB79C0();
  v25 = sub_268CB2924(&unk_287987740);
  v181 = v25;

  v170 = v7;
  while (2)
  {
    v26 = *(v25 + 16);

    if (v26)
    {
      v27 = v182;
      if (sub_268CAAE90())
      {
        if (!sub_268CA73E4(v27))
        {
          if (!sub_268CAAE90())
          {
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          sub_268CAAE98();
          if ((v27 & 0xC000000000000001) != 0)
          {
            v173 = MEMORY[0x26D62B570](0, v27);
          }

          else
          {
            v173 = *(v27 + 32);
          }

          if (!sub_268CAAE90())
          {
            goto LABEL_137;
          }

          if (sub_268CAAE90() < 1)
          {
            goto LABEL_134;
          }

          v28 = sub_268CAAE90();
          v29 = __OFSUB__(v28, 1);
          v30 = v28 - 1;
          if (v29)
          {
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          sub_268CAA514(v30, 1);
          sub_268CAAC64(0, 1, 0);
          v31 = 1 << *(v25 + 32);
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          else
          {
            v32 = -1;
          }

          v33 = v32 & *(v25 + 56);
          v34 = (v31 + 63) >> 6;

          v35 = 0;
          while (1)
          {
            v36 = v35;
            if (!v33)
            {
              break;
            }

LABEL_19:
            v37 = (*(v25 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v33)))));
            v39 = *v37;
            v38 = v37[1];

            v40 = sub_268CB7650();
            if (*(v40 + 16) && (v41 = sub_268CA5E3C(v39, v38), (v42 & 1) != 0))
            {
              v43 = *(*(v40 + 56) + 8 * v41);
            }

            else
            {
              v43 = MEMORY[0x277D84F90];
            }

            if (v43 >> 62)
            {
              v44 = sub_268CB7D50();
            }

            else
            {
              v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v33 &= v33 - 1;
            if (v44)
            {
              sub_268CB2AB4(v39, v38);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v180 = v24;
              sub_268C9E7D4(v43, v39, v38, isUniquelyReferenced_nonNull_native);

              v24 = v180;
            }

            else
            {
            }
          }

          while (1)
          {
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              __break(1u);
              goto LABEL_123;
            }

            if (v35 >= v34)
            {
              break;
            }

            v33 = *(v25 + 56 + 8 * v35);
            ++v36;
            if (v33)
            {
              goto LABEL_19;
            }
          }

          v25 = v181;
          v46 = *(v181 + 16);

          v7 = v170;
          if (!v46)
          {
LABEL_52:

            continue;
          }

          v158 = v25;
          v159 = v24;
          v47 = sub_268CB7650();
          v48 = 0;
          v50 = v47 + 64;
          v49 = *(v47 + 64);
          v171 = v47;
          v51 = 1 << *(v47 + 32);
          if (v51 < 64)
          {
            v52 = ~(-1 << v51);
          }

          else
          {
            v52 = -1;
          }

          v53 = v52 & v49;
          v54 = (v51 + 63) >> 6;
          v167 = v54;
          v168 = v47 + 64;
          if (v53)
          {
LABEL_34:
            v55 = v48;
LABEL_38:
            v56 = __clz(__rbit64(v53));
            v53 &= v53 - 1;
            v57 = *(*(v171 + 56) + ((v55 << 9) | (8 * v56)));
            v58 = MEMORY[0x277D84F90];
            v180 = MEMORY[0x277D84F90];
            v59 = sub_268CAAE90();

            v60 = 0;
            v172 = v58;
            while (1)
            {
              if (v59 == v60)
              {

                sub_268CA879C(v172);
                v48 = v55;
                v7 = v170;
                v54 = v167;
                v50 = v168;
                if (!v53)
                {
                  goto LABEL_35;
                }

                goto LABEL_34;
              }

              if ((v57 & 0xC000000000000001) != 0)
              {
                MEMORY[0x26D62B570](v60, v57);
              }

              else
              {
                if (v60 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_120;
                }
              }

              v61 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                break;
              }

              v62 = sub_268CB7620();

              ++v60;
              if (v62)
              {
                MEMORY[0x26D62B3D0](v63);
                if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_268CB7B70();
                }

                sub_268CB7BA0();
                v172 = v180;
                v60 = v61;
              }
            }

            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_35:
          while (1)
          {
            v55 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            if (v55 >= v54)
            {

              v24 = v159;
              v25 = v158;
              goto LABEL_52;
            }

            v53 = *(v50 + 8 * v55);
            ++v48;
            if (v53)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
        }

        __break(1u);
        goto LABEL_133;
      }
    }

    break;
  }

  if (!*(v24 + 16))
  {
LABEL_121:

LABEL_128:

    return;
  }

  v180 = MEMORY[0x277D84FA0];
  v179 = MEMORY[0x277D84F90];
  v64 = *(v24 + 64);
  v147 = v24 + 64;
  v65 = 1 << *(v24 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v64;
  v144 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  v146 = (v65 + 63) >> 6;
  v173 = v165 + 16;
  v68 = (v154 + 104);
  LODWORD(v168) = *MEMORY[0x277D5E4C0];
  v149 = (v154 + 32);
  v153 = (v154 + 8);
  v172 = (v165 + 8);
  v152 = (v165 + 32);

  v69 = 0;
  v70.n128_u64[0] = 134218242;
  v142 = v70;
  v71 = v169;
  v159 = v24;
LABEL_58:
  if (v67)
  {
    goto LABEL_63;
  }

  do
  {
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_131;
    }

    if (v72 >= v146)
    {

      v112 = v179;
      v166 = *(v179 + 16);
      if (!v166)
      {
LABEL_123:

        v115 = MEMORY[0x277D84F90];
LABEL_124:

        v139 = sub_268CB7730();
        v140 = sub_268CB7BD0();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          *v141 = 134217984;
          *(v141 + 4) = *(v115 + 16);

          _os_log_impl(&dword_268C94000, v139, v140, "Found %ld marrs identifier(s) total", v141, 0xCu);
          MEMORY[0x26D62BBE0](v141, -1, -1);
        }

        else
        {
        }

        goto LABEL_128;
      }

      v113 = 0;
      v161 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v162 = v179 + v161;
      v114 = (v174 + 16);
      v115 = MEMORY[0x277D84F90];
      v116 = (v174 + 8);
      v164 = v179;
      while (v113 < *(v112 + 16))
      {
        v171 = v115;
        v117 = *(v165 + 72);
        v170 = v113;
        v168 = v117;
        v167 = *(v165 + 16);
        v167(v163, v162 + v117 * v113, v71);
        sub_268CB70E0();
        sub_268CB7140();
        sub_268CB7760();
        v118 = v180;
        if (*(v180 + 16))
        {
          sub_268CB2E04(qword_28131E6C8, MEMORY[0x277D5FE18], MEMORY[0x277D5FE20]);
          v119 = sub_268CB79D0();
          v120 = ~(-1 << *(v118 + 32));
          while (1)
          {
            v121 = v119 & v120;
            if (((*(v118 + 56 + (((v119 & v120) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v119 & v120)) & 1) == 0)
            {
              break;
            }

            v122 = v174;
            v123 = v175;
            v124 = v176;
            (*(v174 + 16))(v175, *(v118 + 48) + *(v174 + 72) * v121, v176);
            sub_268CB2E04(&qword_2802DA3B8, MEMORY[0x277D5FE18], MEMORY[0x277D5FE28]);
            v125 = sub_268CB79F0();
            v126 = *(v122 + 8);
            v126(v123, v124);
            v119 = v121 + 1;
            if (v125)
            {
              v126(v177, v176);
              v127 = v169;
              v115 = v171;
              v112 = v164;
              goto LABEL_117;
            }
          }
        }

        v167(v157, v163, v169);
        v115 = v171;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268CA95D0();
          v115 = v137;
        }

        v128 = v168;
        v129 = *(v115 + 16);
        if (v129 >= *(v115 + 24) >> 1)
        {
          sub_268CA95D0();
          v115 = v138;
        }

        v112 = v164;
        *(v115 + 16) = v129 + 1;
        v127 = v169;
        (*v152)(v115 + v161 + v129 * v128, v157, v169);
        v130 = v155;
        v131 = v176;
        v132 = v177;
        (*v114)(v155, v177, v176);
        v133 = v175;
        sub_268C99080(v175, v130, v134, v135);
        v136 = *v116;
        (*v116)(v133, v131);
        v136(v132, v131);
LABEL_117:
        v113 = v170 + 1;
        (*v172)(v163, v127);
        v71 = v127;
        if (v113 == v166)
        {

          goto LABEL_124;
        }
      }

      goto LABEL_136;
    }

    v67 = *(v147 + 8 * v72);
    ++v69;
  }

  while (!v67);
  v69 = v72;
LABEL_63:
  v150 = v67;
  v73 = __clz(__rbit64(v67)) | (v69 << 6);
  v74 = *(v24 + 56);
  v75 = (*(v24 + 48) + 16 * v73);
  v76 = *v75;
  v77 = v75[1];
  v78 = *(v74 + 8 * v73);
  if (v78 >> 62)
  {
    v79 = sub_268CB7D50();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v79 < 2)
  {
  }

  else
  {

    v80 = sub_268CB7730();
    v81 = sub_268CB7BE0();
    v82 = v80;
    if (os_log_type_enabled(v80, v81))
    {
      v83 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v178 = v171;
      *v83 = v142.n128_u32[0];
      if (v78 >> 62)
      {
        v84 = sub_268CB7D50();
      }

      else
      {
        v84 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v83 + 4) = v84;
      *(v83 + 12) = 2080;
      v85 = sub_268CA5820(v76, v77, &v178);

      *(v83 + 14) = v85;
      v86 = v81;
      v87 = v82;
      _os_log_impl(&dword_268C94000, v82, v86, "Input uso entity has %ld child nodes for edge %s, but SRR only expects exact 1 from MARRS", v83, 0x16u);
      v88 = v171;
      __swift_destroy_boxed_opaque_existential_0Tm(v171);
      MEMORY[0x26D62BBE0](v88, -1, -1);
      MEMORY[0x26D62BBE0](v83, -1, -1);
    }

    else
    {
    }
  }

  v89 = v164;
  v90 = v150;
  if ((v78 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v78);
LABEL_76:

    v91 = sub_268CB7610();

    v93 = sub_268CB7670() == 0x6E456F4E5F6F7375 && v92 == 0xEC00000079746974;
    if (v93)
    {
    }

    else
    {
      v94 = sub_268CB7DC0();

      if ((v94 & 1) == 0)
      {
        v95 = 0;
        v171 = *(v91 + 16);
        v143 = MEMORY[0x277D84F90];
        v71 = v169;
        v154 = v91;
        while (1)
        {
          if (v171 == v95)
          {

            v91 = v143;
            v90 = v150;
LABEL_101:
            v67 = (v90 - 1) & v90;
            sub_268CA8848(v91);
            v24 = v159;
            goto LABEL_58;
          }

          if (v95 >= *(v91 + 16))
          {
            goto LABEL_130;
          }

          v167 = ((*(v165 + 80) + 32) & ~*(v165 + 80));
          v158 = *(v165 + 72);
          (*(v165 + 16))(v166, v167 + v91 + v158 * v95, v71);
          v96 = v162;
          sub_268CB7110();
          (*v68)(v89, v168, v7);
          __swift_storeEnumTagSinglePayload(v89, 0, 1, v7);
          v97 = *(v161 + 48);
          v98 = v89;
          v99 = v160;
          sub_268CB2D94(v96, v160);
          sub_268CB2D94(v98, v99 + v97);
          if (__swift_getEnumTagSinglePayload(v99, 1, v7) == 1)
          {
            break;
          }

          v101 = v68;
          v102 = v156;
          sub_268CB2D94(v99, v156);
          if (__swift_getEnumTagSinglePayload(v99 + v97, 1, v7) == 1)
          {
            sub_268CA5D30(v164, &qword_2802DA5D8, &qword_268CB8F98);
            sub_268CA5D30(v162, &qword_2802DA5D8, &qword_268CB8F98);
            (*v153)(v102, v7);
            v100 = v99;
            v68 = v101;
            v91 = v154;
LABEL_90:
            sub_268CA5D30(v100, &qword_2802DA5E0, &qword_268CB8FA0);
            goto LABEL_92;
          }

          v103 = v151;
          (*v149)(v151, v99 + v97, v7);
          sub_268CB2E04(&qword_2802DA5E8, MEMORY[0x277D5E4D8], MEMORY[0x277D5E4E0]);
          v104 = sub_268CB79F0();
          v105 = *v153;
          (*v153)(v103, v7);
          sub_268CA5D30(v164, &qword_2802DA5D8, &qword_268CB8F98);
          sub_268CA5D30(v162, &qword_2802DA5D8, &qword_268CB8F98);
          v105(v102, v7);
          sub_268CA5D30(v99, &qword_2802DA5D8, &qword_268CB8F98);
          v68 = v101;
          v91 = v154;
          if (v104)
          {
LABEL_93:
            v106 = *v152;
            (*v152)(v145, v166, v169);
            v107 = v143;
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v178 = v107;
            v89 = v164;
            if ((v108 & 1) == 0)
            {
              sub_268CB0EA8(0, *(v107 + 16) + 1, 1);
              v107 = v178;
            }

            v110 = *(v107 + 16);
            v109 = *(v107 + 24);
            v111 = v107;
            if (v110 >= v109 >> 1)
            {
              sub_268CB0EA8((v109 > 1), v110 + 1, 1);
              v111 = v178;
            }

            ++v95;
            *(v111 + 16) = v110 + 1;
            v143 = v111;
            v71 = v169;
            v106(v167 + v111 + v110 * v158, v145, v169);
            v7 = v170;
          }

          else
          {
LABEL_92:
            v71 = v169;
            (*v172)(v166, v169);
            ++v95;
            v89 = v164;
          }
        }

        sub_268CA5D30(v98, &qword_2802DA5D8, &qword_268CB8F98);
        sub_268CA5D30(v96, &qword_2802DA5D8, &qword_268CB8F98);
        v93 = __swift_getEnumTagSinglePayload(v99 + v97, 1, v7) == 1;
        v100 = v99;
        if (!v93)
        {
          goto LABEL_90;
        }

        sub_268CA5D30(v99, &qword_2802DA5D8, &qword_268CB8F98);
        goto LABEL_93;
      }
    }

    v71 = v169;
    goto LABEL_101;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

LABEL_138:
  __break(1u);
}

uint64_t sub_268CAEE14(uint64_t a1)
{
  v2 = sub_268CB7100();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5E0, &qword_268CB8FA0);
  MEMORY[0x28223BE20](v39);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = *(sub_268CB7160() - 8);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v38 = *MEMORY[0x277D5E4C0];
  v18 = (v3 + 104);
  v30 = (v3 + 32);
  v33 = (v3 + 8);
  v19 = *(v16 + 72);
  v36 = v14;
  v37 = v19;
  v20 = v34;
  v35 = v12;
  v29 = (v3 + 104);
  while (1)
  {
    sub_268CB7110();
    (*v18)(v12, v38, v2);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
    v21 = *(v39 + 48);
    sub_268CB2D94(v14, v6);
    sub_268CB2D94(v12, &v6[v21]);
    if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
    {
      break;
    }

    sub_268CB2D94(v6, v20);
    if (__swift_getEnumTagSinglePayload(&v6[v21], 1, v2) == 1)
    {
      sub_268CA5D30(v12, &qword_2802DA5D8, &qword_268CB8F98);
      sub_268CA5D30(v14, &qword_2802DA5D8, &qword_268CB8F98);
      v22 = v20;
      (*v33)(v20, v2);
      goto LABEL_8;
    }

    v23 = v31;
    (*v30)(v31, &v6[v21], v2);
    sub_268CB2E04(&qword_2802DA5E8, MEMORY[0x277D5E4D8], MEMORY[0x277D5E4E0]);
    v32 = sub_268CB79F0();
    v24 = v34;
    v25 = v12;
    v26 = *v33;
    (*v33)(v23, v2);
    sub_268CA5D30(v25, &qword_2802DA5D8, &qword_268CB8F98);
    sub_268CA5D30(v14, &qword_2802DA5D8, &qword_268CB8F98);
    v22 = v24;
    v26(v24, v2);
    v18 = v29;
    sub_268CA5D30(v6, &qword_2802DA5D8, &qword_268CB8F98);
    if (v32)
    {
      return 1;
    }

LABEL_10:
    v14 = v36;
    v17 += v37;
    --v15;
    v20 = v22;
    v12 = v35;
    if (!v15)
    {
      return 0;
    }
  }

  v22 = v20;
  sub_268CA5D30(v12, &qword_2802DA5D8, &qword_268CB8F98);
  sub_268CA5D30(v14, &qword_2802DA5D8, &qword_268CB8F98);
  if (__swift_getEnumTagSinglePayload(&v6[v21], 1, v2) != 1)
  {
LABEL_8:
    sub_268CA5D30(v6, &qword_2802DA5E0, &qword_268CB8FA0);
    goto LABEL_10;
  }

  sub_268CA5D30(v6, &qword_2802DA5D8, &qword_268CB8F98);
  return 1;
}

void sub_268CAF2E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v35 - v4;
  v5 = sub_268CB7160();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v36 = v1;
  v12 = sub_268CB7730();
  v13 = sub_268CB7BC0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_268C94000, v12, v13, "Query with UsoNoEntity pathway", v14, 2u);
    MEMORY[0x26D62BBE0](v14, -1, -1);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v41 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = a1 + v41;
    v17 = *(v6 + 72);
    v39 = (v6 + 16);
    v40 = v17;
    v37 = (v6 + 32);
    v38 = (v6 + 8);

    v42 = v5;
    do
    {
      v47 = v15;
      v48 = a1;
      v49 = sub_268CB7140();
      v50 = v18;

      MEMORY[0x26D62B330](0x776F646168532DLL, 0xE700000000000000);

      v45 = v50;
      v46 = v49;
      sub_268CB70E0();
      v44 = v19;
      sub_268CB7150();
      sub_268CB70F0();
      sub_268CB7110();
      a1 = v48;
      v20 = v42;
      sub_268CB7120();
      (*v39)(v9, v11, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268CA95D0();
        a1 = v23;
      }

      v21 = *(a1 + 16);
      if (v21 >= *(a1 + 24) >> 1)
      {
        sub_268CA95D0();
        a1 = v24;
      }

      (*v38)(v11, v20);
      *(a1 + 16) = v21 + 1;
      v22 = v40;
      (*v37)(a1 + v41 + v21 * v40, v9, v20);
      v16 += v22;
      v15 = v47 - 1;
    }

    while (v47 != 1);
  }

  else
  {
  }

  v48 = a1;
  v25 = sub_268CAF7BC(a1);
  v49 = MEMORY[0x277D84F90];
  v26 = sub_268CAAE90();
  for (i = 0; ; ++i)
  {
    if (v26 == i)
    {

      return;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D62B570](i, v25);
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_268CB7810();
    v30 = sub_268CB7670();
    v32 = v31;

    if (v30 == 0xD000000000000011 && 0x8000000268CB9A40 == v32)
    {
    }

    else
    {
      v34 = sub_268CB7DC0();

      if (v34)
      {
      }

      else
      {
        sub_268CB7D00();
        sub_268CB7D20();
        sub_268CB7D30();
        sub_268CB7D10();
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_268CAF7BC(uint64_t a1)
{
  v2 = sub_268CB7790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(sub_268CB7160() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    v10 = (v3 + 8);
    v29 = MEMORY[0x277D84F90];
    do
    {
      sub_268CB70E0();
      sub_268CB7140();
      sub_268CB7760();
      v11 = sub_268CB07F8();
      if (v11)
      {
        v12 = v11;
        MEMORY[0x26D62B3D0]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();

        (*v10)(v5, v2);
        v29 = v31;
      }

      else
      {
        (*v10)(v5, v2);
      }

      v8 += v9;
      --v6;
    }

    while (v6);
    v13 = sub_268CB7730();
    v14 = sub_268CB7BD0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = sub_268CB7910();
      v18 = v29;

      v20 = MEMORY[0x26D62B400](v19, v17);
      v22 = v21;

      v23 = sub_268CA5820(v20, v22, &v30);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_268C94000, v13, v14, "queryByMARRSSpans entities: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x26D62BBE0](v16, -1, -1);
      MEMORY[0x26D62BBE0](v15, -1, -1);
    }

    else
    {

      return v29;
    }
  }

  else
  {
    v24 = sub_268CB7730();
    v25 = sub_268CB7BD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_268C94000, v24, v25, "usoIdentifiers are empty", v26, 2u);
      MEMORY[0x26D62BBE0](v26, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t sub_268CAFB70()
{
  v1 = v0;
  v2 = sub_268CB7100();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5E0, &qword_268CB8FA0);
  MEMORY[0x28223BE20](v60);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v59 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v41 - v13;
  v62 = sub_268CB7160();
  v48 = *(v62 - 8);
  v15 = MEMORY[0x28223BE20](v62);
  v44 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = v41 - v17;
  sub_268CB7650();
  v18 = sub_268CA63D0();

  if (!v18)
  {
    return 0;
  }

  if (!sub_268CAAE90())
  {

    return 0;
  }

  v46 = v14;
  sub_268CAAE98();
  v41[1] = v1;
  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v19 = MEMORY[0x26D62B570](0, v18);
  }

  else
  {
    v19 = *(v18 + 32);
  }

  v20 = v48;

  v41[2] = v19;
  v18 = v19;
  v21 = sub_268CB7610();
  v22 = 0;
  v23 = *(v21 + 16);
  v57 = v20 + 16;
  v58 = v23;
  v56 = *MEMORY[0x277D5E4A8];
  v55 = (v3 + 104);
  v45 = (v3 + 32);
  v50 = (v3 + 8);
  v53 = (v20 + 8);
  v42 = (v20 + 32);
  v43 = MEMORY[0x277D84F90];
  v24 = v46;
  v51 = v6;
  v52 = v2;
  v54 = v21;
  while (v58 != v22)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v3 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = *(v20 + 72);
    (*(v20 + 16))(v61, v21 + v3 + v25 * v22, v62);
    sub_268CB7110();
    (*v55)(v12, v56, v2);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
    v18 = *(v60 + 48);
    sub_268CB2D94(v24, v6);
    sub_268CB2D94(v12, &v6[v18]);
    if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
    {
      sub_268CA5D30(v12, &qword_2802DA5D8, &qword_268CB8F98);
      v6 = v51;
      sub_268CA5D30(v24, &qword_2802DA5D8, &qword_268CB8F98);
      if (__swift_getEnumTagSinglePayload(&v6[v18], 1, v2) == 1)
      {
        sub_268CA5D30(v6, &qword_2802DA5D8, &qword_268CB8F98);
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_268CB2D94(v6, v59);
    if (__swift_getEnumTagSinglePayload(&v6[v18], 1, v2) == 1)
    {
      v18 = &qword_2802DA5D8;
      sub_268CA5D30(v12, &qword_2802DA5D8, &qword_268CB8F98);
      v2 = v52;
      sub_268CA5D30(v24, &qword_2802DA5D8, &qword_268CB8F98);
      (*v50)(v59, v2);
LABEL_13:
      sub_268CA5D30(v6, &qword_2802DA5E0, &qword_268CB8FA0);
      goto LABEL_15;
    }

    v26 = &v6[v18];
    v27 = v59;
    v28 = v47;
    (*v45)(v47, v26, v2);
    sub_268CB2E04(&qword_2802DA5E8, MEMORY[0x277D5E4D8], MEMORY[0x277D5E4E0]);
    LODWORD(v49) = sub_268CB79F0();
    v18 = v12;
    v29 = *v50;
    v24 = v46;
    (*v50)(v28, v2);
    sub_268CA5D30(v12, &qword_2802DA5D8, &qword_268CB8F98);
    sub_268CA5D30(v24, &qword_2802DA5D8, &qword_268CB8F98);
    v30 = v27;
    v6 = v51;
    v29(v30, v52);
    v20 = v48;
    v2 = v52;
    sub_268CA5D30(v6, &qword_2802DA5D8, &qword_268CB8F98);
    if (v49)
    {
LABEL_16:
      v31 = *v42;
      (*v42)(v44, v61, v62);
      v18 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268CB0EA8(0, *(v18 + 16) + 1, 1);
        v18 = v63;
      }

      v34 = *(v18 + 16);
      v33 = *(v18 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v49 = v34 + 1;
        v43 = v34;
        sub_268CB0EA8((v33 > 1), v34 + 1, 1);
        v35 = v49;
        v34 = v43;
        v18 = v63;
      }

      ++v22;
      *(v18 + 16) = v35;
      v43 = v18;
      v31((v18 + v3 + v34 * v25), v44, v62);
      v21 = v54;
    }

    else
    {
LABEL_15:
      (*v53)(v61, v62);
      ++v22;
      v21 = v54;
    }
  }

  v36 = v43;

  v37 = sub_268CB7730();
  v38 = sub_268CB7BD0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = *(v36 + 16);

    _os_log_impl(&dword_268C94000, v37, v38, "Found %ld csm uso identifier(s).", v39, 0xCu);
    MEMORY[0x26D62BBE0](v39, -1, -1);
  }

  else
  {
  }

  return v36;
}

uint64_t sub_268CB034C(unint64_t *a1, uint64_t a2)
{
  v33 = a1;
  v43 = sub_268CB7160();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_268CB7790();
  v36 = *(v39 - 8);
  v5 = MEMORY[0x28223BE20](v39);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - v8;
  v9 = sub_268CB7730();
  v10 = sub_268CB7BC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_268C94000, v9, v10, "Sorting Marrs results with marrs and then saliency scores", v11, 2u);
    MEMORY[0x26D62BBE0](v11, -1, -1);
  }

  sub_268CB2E04(qword_28131E6C8, MEMORY[0x277D5FE18], MEMORY[0x277D5FE20]);
  v12 = v39;
  v45 = sub_268CB79C0();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v40 = (v36 + 16);
    v15 = *(v3 + 72);
    v37 = (v36 + 8);
    v38 = (v3 + 16);
    v34 = (v3 + 40);
    v35 = (v3 + 32);
    while (1)
    {
      sub_268CB70E0();
      sub_268CB7140();
      v16 = v41;
      sub_268CB7760();
      v17 = *v40;
      (*v40)(v7, v16, v12);
      (*v38)(v42, v14, v43);
      v18 = v45;
      swift_isUniquelyReferenced_nonNull_native();
      v44 = v18;
      v19 = sub_268CA5F54();
      if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F0, &qword_268CB8FA8);
      if (sub_268CB7D40())
      {
        v23 = sub_268CA5F54();
        v12 = v39;
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_18;
        }

        v21 = v23;
      }

      else
      {
        v12 = v39;
      }

      v25 = v44;
      if (v22)
      {
        (*v34)(v44[7] + v21 * v15, v42, v43);
        v26 = *v37;
        (*v37)(v7, v12);
        v26(v41, v12);
      }

      else
      {
        v44[(v21 >> 6) + 8] |= 1 << v21;
        v27 = v36;
        v17((v25[6] + *(v36 + 72) * v21), v7, v12);
        (*v35)(v25[7] + v21 * v15, v42, v43);
        v28 = *(v27 + 8);
        v28(v7, v12);
        v28(v41, v12);
        v29 = v25[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_17;
        }

        v25[2] = v31;
      }

      v45 = v25;
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_268CB7DE0();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_268CB0E28(v33, &v45);
  }

  return result;
}

void *sub_268CB07F8()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_268CB7D50())
  {

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D62B570](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_268CB7770();
      v10 = v9;
      if (v8 == sub_268CB7840() && v10 == v11)
      {
      }

      else
      {
        v13 = sub_268CB7DC0();

        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v14 = sub_268CB7780();
      v16 = v15;
      if (v14 == sub_268CB7890() && v16 == v17)
      {

LABEL_25:

        return v6;
      }

      v19 = sub_268CB7DC0();

      if (v19)
      {
        goto LABEL_25;
      }

LABEL_21:

      if (v7 == i)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return 0;
}

BOOL sub_268CB09F8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_268CB7160();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F8, &qword_268CB8FB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_268CB7790();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = *a1;
  v42 = *a2;
  sub_268CB7840();
  v40 = v20;
  sub_268CB7890();
  sub_268CB7760();
  v44 = a3;
  sub_268CA3B04(*a3, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v6);
  v39 = v8;
  if (EnumTagSinglePayload)
  {
    sub_268CA5D30(v14, &qword_2802DA5F8, &qword_268CB8FB0);
    v22 = 0.0;
    v23 = v41;
  }

  else
  {
    v23 = v41;
    (*(v41 + 16))(v8, v14, v6);
    sub_268CA5D30(v14, &qword_2802DA5F8, &qword_268CB8FB0);
    v24 = COERCE_DOUBLE(sub_268CB70F0());
    v26 = v25;
    (*(v23 + 8))(v8, v6);
    if (v26)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v24;
    }
  }

  sub_268CB7840();
  sub_268CB7890();
  v27 = v43;
  sub_268CB7760();
  sub_268CA3B04(*v44, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6))
  {
    sub_268CA5D30(v12, &qword_2802DA5F8, &qword_268CB8FB0);
  }

  else
  {
    v28 = v39;
    (*(v23 + 16))(v39, v12, v6);
    sub_268CA5D30(v12, &qword_2802DA5F8, &qword_268CB8FB0);
    v29 = COERCE_DOUBLE(sub_268CB70F0());
    v31 = v30;
    (*(v23 + 8))(v28, v6);
    if ((v31 & 1) == 0)
    {
      v33 = v29;
      if (v22 != v29)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  if (v22 != 0.0)
  {
    v33 = 0.0;
    goto LABEL_12;
  }

LABEL_10:
  sub_268CB78C0();
  v22 = v32;
  sub_268CB78C0();
LABEL_12:
  v34 = v33 < v22;
  v35 = v46;
  v36 = *(v45 + 8);
  v36(v27, v46);
  v36(v19, v35);
  return v34;
}

void sub_268CB0E28(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_268CB6E5C(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_268CB107C(v6, a2);
  *a1 = v4;
}

void *sub_268CB0EA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268CB0EC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268CB0EC8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5A0, qword_268CB8E18);
  v10 = *(sub_268CB7160() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_268CB7160() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_268CA9840(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_268CB107C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v6 = sub_268CB7D80();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_268CA9294(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_268CB170C(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_268CB1170(0, v5, 1, a1, a2);
  }
}

void sub_268CB1170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v72 = a5;
  v9 = sub_268CB7160();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F8, &qword_268CB8FB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v56 - v14;
  v67 = sub_268CB7790();
  v15 = MEMORY[0x28223BE20](v67);
  v70 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v56 - v18;
  v57 = a2;
  if (a3 == a2)
  {
    return;
  }

  v68 = *a4;
  v69 = (v61 + 16);
  v62 = (v61 + 8);
  v64 = (v17 + 8);
  v19 = v68 + 8 * a3 - 8;
  v20 = a1 - a3;
  while (2)
  {
    v59 = v19;
    v60 = a3;
    v21 = *(v68 + 8 * a3);
    v58 = v20;
    do
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      sub_268CB7840();
      sub_268CB7890();
      sub_268CB7760();
      v25 = *v72;
      if (*(*v72 + 16) && (v26 = sub_268CA5F54(), (v27 & 1) != 0))
      {
        v28 = *(v25 + 56) + *(v61 + 72) * v26;
        v29 = v65;
        (*(v61 + 16))(v65, v28, v9);
        v30 = 0;
      }

      else
      {
        v30 = 1;
        v29 = v65;
      }

      __swift_storeEnumTagSinglePayload(v29, v30, 1, v9);
      if (__swift_getEnumTagSinglePayload(v29, 1, v9))
      {
        sub_268CA5D30(v29, &qword_2802DA5F8, &qword_268CB8FB0);
        v31 = 0.0;
      }

      else
      {
        v32 = v63;
        (*v69)(v63, v29, v9);
        sub_268CA5D30(v29, &qword_2802DA5F8, &qword_268CB8FB0);
        *&v33 = COERCE_DOUBLE(sub_268CB70F0());
        v35 = v34;
        (*v62)(v32, v9);
        v31 = 0.0;
        if ((v35 & 1) == 0)
        {
          v31 = *&v33;
        }
      }

      sub_268CB7840();
      sub_268CB7890();
      v36 = v70;
      sub_268CB7760();
      v37 = *v72;
      if (*(*v72 + 16) && (v38 = sub_268CA5F54(), (v39 & 1) != 0))
      {
        v40 = *(v37 + 56) + *(v61 + 72) * v38;
        v41 = v66;
        (*(v61 + 16))(v66, v40, v9);
        v42 = 0;
      }

      else
      {
        v42 = 1;
        v41 = v66;
      }

      __swift_storeEnumTagSinglePayload(v41, v42, 1, v9);
      if (__swift_getEnumTagSinglePayload(v41, 1, v9))
      {
        sub_268CA5D30(v41, &qword_2802DA5F8, &qword_268CB8FB0);
      }

      else
      {
        v43 = v63;
        (*v69)(v63, v41, v9);
        sub_268CA5D30(v41, &qword_2802DA5F8, &qword_268CB8FB0);
        v44 = COERCE_DOUBLE(sub_268CB70F0());
        v46 = v45;
        v47 = v43;
        v36 = v70;
        (*v62)(v47, v9);
        if ((v46 & 1) == 0)
        {
          v49 = v44;
          if (v31 != v44)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      if (v31 != 0.0)
      {
        v49 = 0.0;
        goto LABEL_22;
      }

LABEL_20:
      sub_268CB78C0();
      v31 = v48;
      sub_268CB78C0();
LABEL_22:
      v50 = v49 < v31;
      v51 = *v64;
      v52 = v36;
      v53 = v67;
      (*v64)(v52, v67);
      v51(v71, v53);

      if (!v50)
      {
        break;
      }

      if (!v68)
      {
        __break(1u);
        return;
      }

      v54 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v54;
      v19 -= 8;
    }

    while (!__CFADD__(v20++, 1));
    a3 = v60 + 1;
    v19 = v59 + 8;
    v20 = v58 - 1;
    if (v60 + 1 != v57)
    {
      continue;
    }

    break;
  }
}

void sub_268CB170C(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v198 = a5;
  v175 = a1;
  v197 = sub_268CB7160();
  v7 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v188 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F8, &qword_268CB8FB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v189 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v172 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v179 = &v172 - v16;
  MEMORY[0x28223BE20](v15);
  v178 = &v172 - v17;
  v193 = sub_268CB7790();
  v18 = MEMORY[0x28223BE20](v193);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v172 - v21;
  MEMORY[0x28223BE20](v20);
  v183 = a3;
  v27 = *(a3 + 1);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_136:
    a3 = *v175;
    if (!*v175)
    {
      goto LABEL_178;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v164 = v29 + 16;
      v165 = *(v29 + 2);
      while (v165 >= 2)
      {
        if (!*v183)
        {
          goto LABEL_175;
        }

        v166 = v29;
        v29 += 16 * v165;
        v167 = *v29;
        v168 = &v164[2 * v165];
        v169 = *(v168 + 1);
        v170 = v185;
        sub_268CB2630((*v183 + 8 * *v29), (*v183 + 8 * *v168), (*v183 + 8 * v169), a3, v198);
        v185 = v170;
        if (v170)
        {
          break;
        }

        if (v169 < v167)
        {
          goto LABEL_163;
        }

        if (v165 - 2 >= *v164)
        {
          goto LABEL_164;
        }

        *v29 = v167;
        *(v29 + 1) = v169;
        v171 = *v164 - v165;
        if (*v164 < v165)
        {
          goto LABEL_165;
        }

        v165 = *v164 - 1;
        sub_268CAA38C(v168 + 16, v171, v168);
        *v164 = v165;
        v29 = v166;
      }

LABEL_146:

      return;
    }

LABEL_172:
    v29 = sub_268CAA378(v29);
    goto LABEL_138;
  }

  v182 = v22;
  v28 = 0;
  v195 = (v7 + 16);
  v196 = v26;
  v187 = (v7 + 8);
  v191 = (v23 + 8);
  v29 = MEMORY[0x277D84F90];
  v174 = a4;
  v186 = v7;
  v194 = v25;
  v192 = v14;
  v184 = &v172 - v24;
  while (2)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_43;
    }

    v181 = v27;
    a3 = *v183;
    v32 = *(*v183 + 8 * v31);
    v199 = *(*v183 + 8 * v28);
    v33 = v199;
    v200 = v32;
    v34 = v32;
    v35 = v33;
    v36 = v185;
    LODWORD(v180) = sub_268CB09F8(&v200, &v199, v198);
    v185 = v36;
    if (v36)
    {

      return;
    }

    v172 = v29;

    v177 = 8 * v30;
    v37 = v30;
    v38 = &a3[8 * v30 + 16];
    v173 = v37;
    v39 = (v37 + 2);
    v40 = v181;
    while (1)
    {
      v41 = v39;
      if (v31 + 1 >= v40)
      {
        break;
      }

      v190 = v39;
      v42 = *(v38 - 1);
      a3 = *v38;
      v43 = v42;
      sub_268CB7840();
      sub_268CB7890();
      sub_268CB7760();
      v44 = *v198;
      if (*(*v198 + 16) && (v45 = sub_268CA5F54(), (v46 & 1) != 0))
      {
        v47 = *(v44 + 56) + *(v186 + 72) * v45;
        v48 = v178;
        (*(v186 + 16))(v178, v47, v197);
        v49 = 0;
      }

      else
      {
        v49 = 1;
        v48 = v178;
      }

      v50 = v197;
      __swift_storeEnumTagSinglePayload(v48, v49, 1, v197);
      if (__swift_getEnumTagSinglePayload(v48, 1, v50))
      {
        sub_268CA5D30(v48, &qword_2802DA5F8, &qword_268CB8FB0);
        v51 = 0.0;
      }

      else
      {
        v52 = v188;
        (*v195)(v188, v48, v50);
        sub_268CA5D30(v48, &qword_2802DA5F8, &qword_268CB8FB0);
        *&v53 = COERCE_DOUBLE(sub_268CB70F0());
        v55 = v54;
        (*v187)(v52, v50);
        v51 = 0.0;
        if ((v55 & 1) == 0)
        {
          v51 = *&v53;
        }
      }

      sub_268CB7840();
      sub_268CB7890();
      v56 = v182;
      sub_268CB7760();
      v57 = *v198;
      if (*(*v198 + 16) && (v58 = sub_268CA5F54(), (v59 & 1) != 0))
      {
        v60 = *(v57 + 56) + *(v186 + 72) * v58;
        v61 = v179;
        (*(v186 + 16))(v179, v60, v50);
        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v179;
      }

      __swift_storeEnumTagSinglePayload(v61, v62, 1, v50);
      if (__swift_getEnumTagSinglePayload(v61, 1, v50))
      {
        sub_268CA5D30(v61, &qword_2802DA5F8, &qword_268CB8FB0);
      }

      else
      {
        v63 = v188;
        (*v195)(v188, v61, v50);
        sub_268CA5D30(v61, &qword_2802DA5F8, &qword_268CB8FB0);
        v64 = COERCE_DOUBLE(sub_268CB70F0());
        v66 = v65;
        v67 = v63;
        v56 = v182;
        (*v187)(v67, v50);
        if ((v66 & 1) == 0)
        {
          v69 = v64;
          if (v51 != v64)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      if (v51 != 0.0)
      {
        v69 = 0.0;
        goto LABEL_25;
      }

LABEL_23:
      sub_268CB78C0();
      v51 = v68;
      sub_268CB78C0();
LABEL_25:
      v70 = v69 < v51;
      v71 = *v191;
      v72 = v56;
      v29 = v193;
      (*v191)(v72, v193);
      v71(v184, v29);

      ++v38;
      ++v31;
      v41 = v190;
      v39 = v190 + 1;
      v14 = v192;
      v40 = v181;
      if ((v180 ^ v70))
      {
        goto LABEL_30;
      }
    }

    v31 = v40;
LABEL_30:
    if ((v180 & 1) == 0)
    {
      v29 = v172;
      a4 = v174;
      v30 = v173;
      goto LABEL_43;
    }

    v30 = v173;
    if (v31 < v173)
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v29 = v172;
    if (v173 < v31)
    {
      if (v40 >= v41)
      {
        v73 = v41;
      }

      else
      {
        v73 = v40;
      }

      v74 = 8 * v73 - 8;
      v75 = v31;
      v76 = v173;
      v77 = v177;
      do
      {
        if (v76 != --v75)
        {
          v78 = *v183;
          if (!*v183)
          {
            goto LABEL_176;
          }

          v79 = *&v78[v77];
          *&v78[v77] = *&v78[v74];
          *&v78[v74] = v79;
        }

        ++v76;
        v74 -= 8;
        v77 += 8;
      }

      while (v76 < v75);
    }

    a4 = v174;
LABEL_43:
    v80 = *(v183 + 1);
    if (v31 >= v80)
    {
      goto LABEL_83;
    }

    if (__OFSUB__(v31, v30))
    {
      goto LABEL_168;
    }

    if (v31 - v30 >= a4)
    {
LABEL_83:
      if (v31 < v30)
      {
        goto LABEL_167;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268CA94F4();
        v29 = v162;
      }

      v120 = *(v29 + 2);
      v121 = v120 + 1;
      if (v120 >= *(v29 + 3) >> 1)
      {
        sub_268CA94F4();
        v29 = v163;
      }

      *(v29 + 2) = v121;
      v122 = v29 + 32;
      v123 = &v29[16 * v120 + 32];
      v124 = v181;
      *v123 = v30;
      *(v123 + 1) = v124;
      v190 = *v175;
      if (!v190)
      {
        goto LABEL_177;
      }

      if (!v120)
      {
LABEL_132:
        v27 = *(v183 + 1);
        v28 = v181;
        a4 = v174;
        if (v181 >= v27)
        {
          goto LABEL_136;
        }

        continue;
      }

      while (1)
      {
        v125 = v121 - 1;
        v126 = &v122[16 * v121 - 16];
        v127 = &v29[16 * v121];
        if (v121 >= 4)
        {
          break;
        }

        if (v121 == 3)
        {
          v128 = *(v29 + 4);
          v129 = *(v29 + 5);
          v138 = __OFSUB__(v129, v128);
          v130 = v129 - v128;
          v131 = v138;
LABEL_103:
          if (v131)
          {
            goto LABEL_154;
          }

          v143 = *v127;
          v142 = *(v127 + 1);
          v144 = __OFSUB__(v142, v143);
          v145 = v142 - v143;
          v146 = v144;
          if (v144)
          {
            goto LABEL_157;
          }

          v147 = *(v126 + 1);
          v148 = v147 - *v126;
          if (__OFSUB__(v147, *v126))
          {
            goto LABEL_160;
          }

          if (__OFADD__(v145, v148))
          {
            goto LABEL_162;
          }

          if (v145 + v148 >= v130)
          {
            if (v130 < v148)
            {
              v125 = v121 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v121 < 2)
        {
          goto LABEL_156;
        }

        v150 = *v127;
        v149 = *(v127 + 1);
        v138 = __OFSUB__(v149, v150);
        v145 = v149 - v150;
        v146 = v138;
LABEL_118:
        if (v146)
        {
          goto LABEL_159;
        }

        v152 = *v126;
        v151 = *(v126 + 1);
        v138 = __OFSUB__(v151, v152);
        v153 = v151 - v152;
        if (v138)
        {
          goto LABEL_161;
        }

        if (v153 < v145)
        {
          goto LABEL_132;
        }

LABEL_125:
        if (v125 - 1 >= v121)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (!*v183)
        {
          goto LABEL_174;
        }

        a3 = v29;
        v157 = &v122[16 * v125 - 16];
        v158 = *v157;
        v29 = &v122[16 * v125];
        v159 = *(v29 + 1);
        v160 = v185;
        sub_268CB2630((*v183 + 8 * *v157), (*v183 + 8 * *v29), (*v183 + 8 * v159), v190, v198);
        v185 = v160;
        if (v160)
        {
          goto LABEL_146;
        }

        if (v159 < v158)
        {
          goto LABEL_149;
        }

        v161 = *(a3 + 2);
        if (v125 > v161)
        {
          goto LABEL_150;
        }

        *v157 = v158;
        *(v157 + 1) = v159;
        if (v125 >= v161)
        {
          goto LABEL_151;
        }

        v121 = v161 - 1;
        sub_268CAA38C(v29 + 16, v161 - 1 - v125, &v122[16 * v125]);
        v29 = a3;
        *(a3 + 2) = v161 - 1;
        if (v161 <= 2)
        {
          goto LABEL_132;
        }
      }

      v132 = &v122[16 * v121];
      v133 = *(v132 - 8);
      v134 = *(v132 - 7);
      v138 = __OFSUB__(v134, v133);
      v135 = v134 - v133;
      if (v138)
      {
        goto LABEL_152;
      }

      v137 = *(v132 - 6);
      v136 = *(v132 - 5);
      v138 = __OFSUB__(v136, v137);
      v130 = v136 - v137;
      v131 = v138;
      if (v138)
      {
        goto LABEL_153;
      }

      v139 = *(v127 + 1);
      v140 = v139 - *v127;
      if (__OFSUB__(v139, *v127))
      {
        goto LABEL_155;
      }

      v138 = __OFADD__(v130, v140);
      v141 = v130 + v140;
      if (v138)
      {
        goto LABEL_158;
      }

      if (v141 >= v135)
      {
        v155 = *v126;
        v154 = *(v126 + 1);
        v138 = __OFSUB__(v154, v155);
        v156 = v154 - v155;
        if (v138)
        {
          goto LABEL_166;
        }

        if (v130 < v156)
        {
          v125 = v121 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_103;
    }

    break;
  }

  if (__OFADD__(v30, a4))
  {
    goto LABEL_169;
  }

  if (v30 + a4 >= v80)
  {
    v81 = *(v183 + 1);
  }

  else
  {
    v81 = v30 + a4;
  }

  if (v81 < v30)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v31 == v81)
  {
    goto LABEL_83;
  }

  v82 = v14;
  v172 = v29;
  v190 = *v183;
  v83 = &v190[8 * v31 - 8];
  v173 = v30;
  v84 = v30 - v31;
  v176 = v81;
LABEL_53:
  v181 = v31;
  v85 = *&v190[8 * v31];
  v177 = v84;
  v180 = v83;
  v86 = v83;
  while (1)
  {
    v87 = *v86;
    v88 = v85;
    v89 = v87;
    sub_268CB7840();
    sub_268CB7890();
    sub_268CB7760();
    v90 = *v198;
    if (*(*v198 + 16) && (v91 = sub_268CA5F54(), (v92 & 1) != 0))
    {
      v93 = v197;
      (*(v186 + 16))(v82, *(v90 + 56) + *(v186 + 72) * v91, v197);
      v94 = 0;
    }

    else
    {
      v94 = 1;
      v93 = v197;
    }

    __swift_storeEnumTagSinglePayload(v82, v94, 1, v93);
    if (__swift_getEnumTagSinglePayload(v82, 1, v93))
    {
      sub_268CA5D30(v82, &qword_2802DA5F8, &qword_268CB8FB0);
      v95 = 0.0;
    }

    else
    {
      v96 = v188;
      (*v195)(v188, v82, v93);
      sub_268CA5D30(v82, &qword_2802DA5F8, &qword_268CB8FB0);
      *&v97 = COERCE_DOUBLE(sub_268CB70F0());
      v99 = v98;
      (*v187)(v96, v93);
      v95 = 0.0;
      if ((v99 & 1) == 0)
      {
        v95 = *&v97;
      }
    }

    sub_268CB7840();
    sub_268CB7890();
    v100 = v194;
    sub_268CB7760();
    v101 = *v198;
    if (*(*v198 + 16))
    {
      v102 = sub_268CA5F54();
      v103 = v189;
      v104 = v197;
      if (v105)
      {
        (*(v186 + 16))(v189, *(v101 + 56) + *(v186 + 72) * v102, v197);
        v106 = 0;
      }

      else
      {
        v106 = 1;
      }

      v82 = v192;
    }

    else
    {
      v106 = 1;
      v103 = v189;
      v82 = v192;
      v104 = v197;
    }

    __swift_storeEnumTagSinglePayload(v103, v106, 1, v104);
    if (__swift_getEnumTagSinglePayload(v103, 1, v104))
    {
      sub_268CA5D30(v103, &qword_2802DA5F8, &qword_268CB8FB0);
LABEL_71:
      if (v95 == 0.0)
      {
        goto LABEL_72;
      }

      v113 = 0.0;
      goto LABEL_74;
    }

    v107 = v188;
    (*v195)(v188, v103, v104);
    sub_268CA5D30(v103, &qword_2802DA5F8, &qword_268CB8FB0);
    v108 = COERCE_DOUBLE(sub_268CB70F0());
    v110 = v109;
    v111 = v107;
    v100 = v194;
    (*v187)(v111, v104);
    if (v110)
    {
      goto LABEL_71;
    }

    v113 = v108;
    if (v95 == v108)
    {
LABEL_72:
      sub_268CB78C0();
      v95 = v112;
      sub_268CB78C0();
    }

LABEL_74:
    a3 = (v113 < v95);
    v114 = *v191;
    v115 = v100;
    v116 = v193;
    (*v191)(v115, v193);
    v114(v196, v116);

    if ((a3 & 1) == 0)
    {
      goto LABEL_81;
    }

    if (!v190)
    {
      break;
    }

    v117 = *v86;
    v85 = *(v86 + 1);
    *v86 = v85;
    *(v86 + 1) = v117;
    v86 -= 8;
    if (__CFADD__(v84++, 1))
    {
LABEL_81:
      v31 = v181 + 1;
      v83 = v180 + 8;
      v84 = v177 - 1;
      if (v181 + 1 == v176)
      {
        v31 = v176;
        v29 = v172;
        v14 = v82;
        v30 = v173;
        goto LABEL_83;
      }

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
}

uint64_t sub_268CB2630(char *a1, char *a2, id *a3, char *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_268CA9820(a2, (a3 - a2) / 8, a4);
    v26 = a2;
    v12 = (v5 + 8 * v9);
    v27 = -v5;
    __src = v5;
LABEL_15:
    v28 = v26 - 1;
    v29 = v6 - 1;
    v30 = v12 + v27;
    v50 = v26;
    while (v12 > v5 && v26 > v7)
    {
      v51 = v30;
      v32 = v29;
      v33 = v12;
      v34 = (v12 - 1);
      v55 = *(v12 - 1);
      v35 = v28;
      v54 = *v28;
      v36 = v54;
      v37 = v55;
      v38 = v36;
      v39 = sub_268CB09F8(&v55, &v54, a5);
      if (v53)
      {

        v26 = v50;
        v47 = v51 / 8;
        v45 = __src;
        if (v50 < __src || v50 >= &__src[8 * (v51 / 8)])
        {
          memmove(v50, __src, 8 * v47);
          return 1;
        }

        if (v50 != __src)
        {
          v44 = 8 * v47;
          goto LABEL_41;
        }

        return 1;
      }

      v40 = v39;

      if (v40)
      {
        v6 = v32;
        v5 = __src;
        v26 = v35;
        v12 = v33;
        if (v32 + 1 != v50)
        {
          *v32 = *v35;
          v26 = v35;
        }

        goto LABEL_15;
      }

      v26 = v50;
      v28 = v35;
      if (v33 != (v32 + 1))
      {
        *v32 = *v34;
      }

      v29 = v32 - 1;
      v30 = v51 - 8;
      v12 = v34;
      v5 = __src;
    }

LABEL_29:
    v41 = (v12 - v5) / 8;
    if (v26 < v5 || v26 >= v5 + 8 * v41)
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v26 == v5)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_268CA9820(a1, (a2 - a1) / 8, a4);
  v11 = a2;
  v12 = (v5 + 8 * v8);
  while (1)
  {
    if (v5 >= v12 || v11 >= v6)
    {
      v26 = v7;
      goto LABEL_29;
    }

    v14 = v12;
    v15 = v6;
    v16 = v7;
    v17 = v11;
    v55 = *v11;
    v54 = *v5;
    v18 = v54;
    v19 = v55;
    v20 = v18;
    v21 = sub_268CB09F8(&v55, &v54, a5);
    if (v53)
    {
      break;
    }

    v22 = v21;
    v53 = 0;

    if (v22)
    {
      v23 = v17;
      v11 = v17 + 1;
      v24 = v16 == v17;
    }

    else
    {
      v23 = v5;
      v24 = v16 == v5;
      v5 += 8;
      v11 = v17;
    }

    v12 = v14;
    if (!v24)
    {
      *v16 = *v23;
    }

    v7 = v16 + 8;
    v6 = v15;
  }

  v41 = (v14 - v5) / 8;
  v26 = v16;
  if (v16 >= v5 && v16 < v5 + 8 * v41)
  {
    goto LABEL_39;
  }

LABEL_40:
  v44 = 8 * v41;
  v45 = v5;
LABEL_41:
  memmove(v26, v45, v44);
  return 1;
}

uint64_t sub_268CB2924(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C8, &qword_268CB8760);
  result = sub_268CB7CB0();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_268CB7E50();

    sub_268CB79E0();
    result = sub_268CB7E70();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_268CB7DC0() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268CB2AB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_268CB7E50();
  sub_268CB79E0();
  v6 = sub_268CB7E70();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_268CB7DC0() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_268C9A4C4();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_268CB2BDC(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_268CB2BDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_268CB7C80();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_268CB7E50();

        sub_268CB79E0();
        v10 = sub_268CB7E70();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_268CB2D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268CB2E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_6()
{
}

unint64_t OUTLINED_FUNCTION_1_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_268CA5820(v8, v9, va);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_5_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_4()
{
}

double OUTLINED_FUNCTION_8_5()
{

  return result;
}

uint64_t sub_268CB2F00(char *a1)
{
  v2 = sub_268CB7160();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  sub_268CB7060();
  sub_268CB71F0();
  if (!v41)
  {
    return 0;
  }

  v9 = sub_268CB7660();
  v10 = v9;
  v40 = *(v9 + 16);
  if (!v40)
  {
LABEL_12:

    return 0;
  }

  v39 = v8;
  v11 = 0;
  v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    (*(v3 + 16))(v6, v12 + *(v3 + 72) * v11, v2);
    a1 = v6;
    v13 = sub_268CB7150();
    if (v14)
    {
      break;
    }

LABEL_11:
    ++v11;
    (*(v3 + 8))(v6, v2);
    if (v40 == v11)
    {
      goto LABEL_12;
    }
  }

  a1 = v14;
  if (v13 != 0x6C6F636F746F7270 || v14 != 0xE800000000000000)
  {
    v16 = sub_268CB7DC0();

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  v12 = 0xD000000000000018;

  (*(v3 + 32))(v39, v6, v2);
  v6 = sub_268CB7140();
  a1 = v18;
  v19 = OUTLINED_FUNCTION_5_5();
  v20(v19);
  OUTLINED_FUNCTION_3_7();
  v22 = v6 == 0xD000000000000016 && v21 == a1;
  if (v22 || (OUTLINED_FUNCTION_1_8(0xD000000000000016, v21) & 1) != 0)
  {

    v23 = sub_268CB7460();
    OUTLINED_FUNCTION_3_3(v23);
    sub_268CB7450();
LABEL_21:
    v17 = MEMORY[0x26D62AA30]();

    return v17;
  }

  OUTLINED_FUNCTION_3_7();
  v26 = v6 == 0xD000000000000013 && v25 == a1;
  if (v26 || (OUTLINED_FUNCTION_1_8(0xD000000000000013, v25) & 1) != 0)
  {

    v27 = sub_268CB7340();
    OUTLINED_FUNCTION_3_3(v27);
    sub_268CB7330();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_7();
  v29 = v6 == 0xD000000000000020 && v28 == a1;
  if (v29 || (OUTLINED_FUNCTION_1_8(0xD000000000000020, v28) & 1) != 0)
  {

    v30 = sub_268CB7280();
    OUTLINED_FUNCTION_3_3(v30);
    sub_268CB7270();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_7();
  v32 = v6 == 0xD000000000000018 && v31 == a1;
  if (v32 || (OUTLINED_FUNCTION_1_8(0xD000000000000018, v31) & 1) != 0)
  {

    v33 = sub_268CB7210();
    OUTLINED_FUNCTION_3_3(v33);
    sub_268CB7200();
    goto LABEL_21;
  }

LABEL_42:
  OUTLINED_FUNCTION_3_7();
  if (v6 == v12 && v34 == a1)
  {

LABEL_49:
    v37 = sub_268CB73D0();
    OUTLINED_FUNCTION_3_3(v37);
    sub_268CB73C0();
    goto LABEL_21;
  }

  v36 = OUTLINED_FUNCTION_1_8(0xD000000000000018, v34);

  if (v36)
  {
    goto LABEL_49;
  }

  return 0;
}

uint64_t sub_268CB32D4(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  swift_beginAccess();
  v5 = *(v1 + v4);
  result = sub_268CAAE90();
  if (result)
  {
    v7 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v35 = v5 & 0xC000000000000001;

    v8 = 0;
    v32 = a1;
    v34 = v7;
    do
    {
      if (v35)
      {
        v9 = MEMORY[0x26D62B570](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)(v9, a1, 0);
      if (v11)
      {
        v12 = v11;
        v13 = sub_268CB7810();
        v14 = sub_268CB2F00(v13);

        if (v14)
        {
          static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)(v12, v14, 0);
          if (v15)
          {
            v16 = v15;
            v17 = sub_268CB7730();
            v18 = sub_268CB7BD0();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v36 = v33;
              *v19 = 136315138;
              sub_268CB7810();
              sub_268CB7680();
              v20 = sub_268CB7A20();
              v22 = v5;
              v23 = sub_268CA5820(v20, v21, &v36);

              *(v19 + 4) = v23;
              v5 = v22;
              _os_log_impl(&dword_268C94000, v17, v18, "RREntityMatcher found a new match: %s. Replacing common_AppEntity", v19, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v33);
              MEMORY[0x26D62BBE0](v33, -1, -1);
              v24 = v19;
              a1 = v32;
              MEMORY[0x26D62BBE0](v24, -1, -1);
            }

            v25 = v16;
            MEMORY[0x26D62B3D0]();
            OUTLINED_FUNCTION_0_7();
            if (v26)
            {
              OUTLINED_FUNCTION_2_7();
            }

            OUTLINED_FUNCTION_5_5();
            sub_268CB7BA0();
          }

          else
          {
            v28 = v12;
            MEMORY[0x26D62B3D0]();
            OUTLINED_FUNCTION_0_7();
            if (v26)
            {
              OUTLINED_FUNCTION_2_7();
            }

            OUTLINED_FUNCTION_5_5();
            sub_268CB7BA0();
          }
        }

        else
        {
          v27 = v12;
          MEMORY[0x26D62B3D0]();
          OUTLINED_FUNCTION_0_7();
          if (v26)
          {
            OUTLINED_FUNCTION_2_7();
          }

          OUTLINED_FUNCTION_5_5();
          sub_268CB7BA0();
        }

        v3 = v37;
        v7 = v34;
      }

      else
      {
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v29 = sub_268CB7730();
  v30 = sub_268CB7BD0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = sub_268CAAE90();

    _os_log_impl(&dword_268C94000, v29, v30, "result entity count: %ld", v31, 0xCu);
    MEMORY[0x26D62BBE0](v31, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2)
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_268CB7B70();
}

uint64_t sub_268CB36F8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000726F7272;
  v3 = 0x456E776F6E6B6E75;
  v4 = a1;
  v5 = 0x456E776F6E6B6E75;
  v6 = 0xEC000000726F7272;
  switch(v4)
  {
    case 1:
      v5 = 0x74754F64656D6974;
      v6 = 0xED0000726F727245;
      break;
    case 2:
      v5 = 0x617461446B6E696CLL;
      v6 = 0xEB000000006C694ELL;
      break;
    case 3:
      v5 = 0xD00000000000001DLL;
      v6 = 0x8000000268CB96E0;
      break;
    case 4:
      v6 = 0x8000000268CB9700;
      v5 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x74754F64656D6974;
      v2 = 0xED0000726F727245;
      break;
    case 2:
      v3 = 0x617461446B6E696CLL;
      v2 = 0xEB000000006C694ELL;
      break;
    case 3:
      v3 = 0xD00000000000001DLL;
      v2 = 0x8000000268CB96E0;
      break;
    case 4:
      v2 = 0x8000000268CB9700;
      v3 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268CB7DC0();
  }

  return v8 & 1;
}

uint64_t sub_268CB38AC(char a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x707954676E6F7277;
  if (a1)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_2_8();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x707954676E6F7277;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_2_8();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_268CB7DC0();
  }

  return v18 & 1;
}

uint64_t sub_268CB3990(uint64_t a1)
{
  v1 = a1;
  sub_268CB7E50();
  sub_268CB39D8(v3, v1);
  return sub_268CB7E70();
}

uint64_t sub_268CB39D8(uint64_t a1, char a2)
{
  sub_268CB79E0();
}

uint64_t sub_268CB3AD0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
  }

  sub_268CB79E0();
}

uint64_t sub_268CB3B3C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_268CB7E50();
  if (v2)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
  }

  sub_268CB79E0();

  return sub_268CB7E70();
}

uint64_t sub_268CB3BBC(uint64_t a1, char a2)
{
  sub_268CB7E50();
  sub_268CB39D8(v4, a2);
  return sub_268CB7E70();
}

unint64_t ResolutionError.errorDescription.getter()
{
  if (*v0)
  {
    return 0xD000000000000061;
  }

  else
  {
    return 0xD000000000000050;
  }
}

SiriReferenceResolver::LinkError_optional __swiftcall LinkError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268CB7D60();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LinkError.rawValue.getter()
{
  result = 0x456E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x74754F64656D6974;
      break;
    case 2:
      result = 0x617461446B6E696CLL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268CB3DE0@<X0>(unint64_t *a1@<X8>)
{
  result = LinkError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s21SiriReferenceResolver15ResolutionErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_268CB7E50();
  MEMORY[0x26D62B700](v1);
  return sub_268CB7E70();
}

uint64_t sub_268CB3E50(uint64_t a1)
{
  v2 = *v1;
  sub_268CB7E50();
  MEMORY[0x26D62B700](v2);
  return sub_268CB7E70();
}

unint64_t sub_268CB3E98()
{
  result = qword_2802DA608;
  if (!qword_2802DA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA608);
  }

  return result;
}

unint64_t sub_268CB3EF4()
{
  result = qword_2802DA610;
  if (!qword_2802DA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA610);
  }

  return result;
}

unint64_t sub_268CB3F4C()
{
  result = qword_2802DA618;
  if (!qword_2802DA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinkError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268CB410C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268CB4194(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t static RRResolverLog.logger<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  sub_268CB7A20();
  return sub_268CB7740();
}

_BYTE *storeEnumTagSinglePayload for RRResolverLog(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_268CB44B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268CB7160();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268CB7340();
  swift_allocObject();
  v8 = sub_268CB7330();
  v9 = [a3 displayName];
  sub_268CB7A10();

  sub_268CB7320();

  v10 = [a3 personHandle];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 type];

  if (!v12)
  {
    goto LABEL_8;
  }

  if (v12 == 2)
  {
    sub_268CB74C0();
    swift_allocObject();
    sub_268CB74B0();
    v16 = [a3 personHandle];
    if (!v16 || (sub_268CB4A2C(v16), !v17))
    {
    }

    sub_268CB74A0();

    goto LABEL_16;
  }

  if (v12 != 1)
  {
LABEL_8:

    return 0;
  }

  sub_268CB7500();
  swift_allocObject();
  sub_268CB74F0();
  v13 = [a3 personHandle];
  if (!v13 || (sub_268CB4A2C(v13), !v14))
  {
  }

  sub_268CB74E0();

LABEL_16:
  sub_268CB7300();

  sub_268CABA88(a3, &selRef_contactIdentifier);
  if (v18)
  {
    if (sub_268CB7310())
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  sub_268CABA88(a3, &selRef_customIdentifier);
  if (v19)
  {
    if (sub_268CB7310())
    {
LABEL_21:

      OUTLINED_FUNCTION_0_9();
      sub_268CB7130();
      sub_268CB7090();

      (*(v5 + 8))(v7, v4);
      return v8;
    }

LABEL_22:
  }

  return v8;
}

uint64_t sub_268CB487C(void *a1)
{
  v2 = sub_268CB7840();
  v4 = sub_268CB44B4(v2, v3, a1);

  if (v4)
  {
    v5 = MEMORY[0x26D62AA30](v4);
    if (v5)
    {
      v6 = sub_268C9F044(0, 0, 0, 0, v5, 0, 0, 0, 0xF000000000000000);

      return v6;
    }

    else
    {
      sub_268CB49D8();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_268CB49D8();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_268CB49D8()
{
  result = qword_2802DA620;
  if (!qword_2802DA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA620);
  }

  return result;
}

uint64_t sub_268CB4A2C(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268CB7A10();

  return v3;
}

void sub_268CB4B7C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v15 = *(*(a3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));

      a1(&v14, &v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        MEMORY[0x26D62B3D0](v12);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();
      }

      v8 &= v8 - 1;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_268CB4D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA598, &qword_268CB8E10);
  v3 = OUTLINED_FUNCTION_9_1(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_268CB6EC0(a1, &v14 - v7, &qword_2802DA598, &qword_268CB8E10);
  v9 = sub_268CB72D0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    sub_268CB6EC0(v8, v6, &qword_2802DA598, &qword_268CB8E10);
    v11 = *(v9 - 8);
    v12 = (*(v11 + 88))(v6, v9);
    if (v12 == *MEMORY[0x277D5EC30])
    {
      v10 = 4;
    }

    else if (v12 == *MEMORY[0x277D5EC40])
    {
      v10 = 2;
    }

    else
    {
      if (v12 == *MEMORY[0x277D5EB60])
      {
        goto LABEL_8;
      }

      if (v12 == *MEMORY[0x277D5EBD0])
      {
        v10 = 24;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBA0])
      {
        v10 = 17;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EC28])
      {
        v10 = 8;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBA8])
      {
        v10 = -3;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EC10])
      {
        v10 = 6;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EB90])
      {
        v10 = 19;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBB0])
      {
        v10 = 25;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EC08])
      {
        v10 = 9;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EC60])
      {
        v10 = 11;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBE0])
      {
        goto LABEL_28;
      }

      if (v12 == *MEMORY[0x277D5EB88])
      {
        v10 = 14;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBC8])
      {
        v10 = -2;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBB8])
      {
        v10 = 21;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EB98])
      {
        v10 = 13;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBE8])
      {
LABEL_28:
        v10 = -1;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBD8])
      {
        v10 = 22;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EB68])
      {
        v10 = 15;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EB78])
      {
        v10 = 20;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EBF8])
      {
        v10 = 5;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EB70])
      {
        v10 = 16;
        goto LABEL_37;
      }

      if (v12 == *MEMORY[0x277D5EC00])
      {
LABEL_8:
        v10 = 1;
      }

      else if (v12 == *MEMORY[0x277D5EC50])
      {
        v10 = 7;
      }

      else if (v12 == *MEMORY[0x277D5EB80])
      {
        v10 = 18;
      }

      else if (v12 == *MEMORY[0x277D5EBC0])
      {
        v10 = 23;
      }

      else if (v12 == *MEMORY[0x277D5EC58])
      {
        v10 = 12;
      }

      else if (v12 == *MEMORY[0x277D5EC20])
      {
        v10 = 3;
      }

      else if (v12 == *MEMORY[0x277D5EC18])
      {
        v10 = 10;
      }

      else
      {
        (*(v11 + 8))(v6, v9);
        v10 = 0;
      }
    }
  }

LABEL_37:
  sub_268CAAE38(v8, &qword_2802DA598, &qword_268CB8E10);
  return v10;
}

void sub_268CB524C(unint64_t *a1, uint64_t (*a2)(id, id), uint64_t a3)
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_268CB6E5C(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v8[1] = v7;
  sub_268CB6200(v8, a2, a3);
  *a1 = v6;
}

uint64_t sub_268CB52DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  v7 = OUTLINED_FUNCTION_9_1(v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA590, &qword_268CB8E08);
  v14 = OUTLINED_FUNCTION_9_1(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = sub_268CB7930();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268CB6EC0(a2, v16, &qword_2802DA590, &qword_268CB8E08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v65 = v18;
  v67 = v20;
  v61 = v17;
  if (EnumTagSinglePayload == 1)
  {
    (*(v18 + 104))(v20, *MEMORY[0x277D5FE50], v17);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_268CAAE38(v16, &qword_2802DA590, &qword_268CB8E08);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
  }

  v68 = MEMORY[0x277D84F90];
  v22 = sub_268CAAE90();
  v23 = 0;
  v66 = v12;
  while (v22 != v23)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D62B570](v23, a1);
    }

    else
    {
      if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v24 = *(a1 + 8 * v23 + 32);
    }

    v25 = v24;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      result = sub_268CB7DE0();
      __break(1u);
      return result;
    }

    sub_268CB78B0();
    v26 = sub_268CB7800();
    if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
    {

      sub_268CAAE38(v12, &qword_2802DA4E0, &qword_268CB8A08);
    }

    else
    {
      sub_268CAAE38(v12, &qword_2802DA4E0, &qword_268CB8A08);
      sub_268CB7D00();
      sub_268CB7D20();
      v12 = v66;
      sub_268CB7D30();
      sub_268CB7D10();
    }

    ++v23;
  }

  v27 = v68;
  v28 = sub_268CAAE90();
  v29 = 0;
  v66 = MEMORY[0x277D84F98];
  v30 = v65;
  while (1)
  {
    v31 = v67;
    if (v28 == v29)
    {
      break;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D62B570](v29, v27);
    }

    else
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_41;
      }

      v32 = *(v27 + 8 * v29 + 32);
    }

    v33 = v32;
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_40;
    }

    sub_268CB78B0();
    v35 = sub_268CB7800();
    if (__swift_getEnumTagSinglePayload(v10, 1, v35) == 1)
    {

      sub_268CAAE38(v10, &qword_2802DA4E0, &qword_268CB8A08);
      ++v29;
    }

    else
    {
      v36 = sub_268CB77E0();
      v38 = v37;
      (*(*(v35 - 8) + 8))(v10, v35);
      v39 = v66;
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v39;
      v60 = v36;
      v64 = v38;
      v40 = sub_268CA5E3C(v36, v38);
      if (__OFADD__(*(v39 + 16), (v41 & 1) == 0))
      {
        goto LABEL_42;
      }

      v42 = v40;
      LODWORD(v66) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA628, qword_268CB93F0);
      if (sub_268CB7D40())
      {
        v43 = sub_268CA5E3C(v60, v64);
        v45 = v66;
        v30 = v65;
        if ((v66 & 1) != (v44 & 1))
        {
          goto LABEL_44;
        }

        v42 = v43;
      }

      else
      {
        v30 = v65;
        v45 = v66;
      }

      v46 = v68;
      if (v45)
      {
      }

      else
      {
        *&v68[8 * (v42 >> 6) + 64] |= 1 << v42;
        v47 = (*(v46 + 6) + 16 * v42);
        v48 = v64;
        *v47 = v60;
        v47[1] = v48;
        *(*(v46 + 7) + 8 * v42) = MEMORY[0x277D84F90];
        v49 = *(v46 + 2);
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_43;
        }

        *(v46 + 2) = v51;
      }

      v66 = v46;
      v52 = (*(v46 + 7) + 8 * v42);
      v53 = v33;
      MEMORY[0x26D62B3D0]();
      if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268CB7B70();
      }

      sub_268CB7BA0();

      v29 = v34;
    }
  }

  MEMORY[0x28223BE20](v54);
  v55 = v63;
  *(&v60 - 4) = v62;
  *(&v60 - 3) = v55;
  *(&v60 - 2) = v31;
  sub_268CB4B7C(sub_268CB6DC0, (&v60 - 6), v66);
  v56 = v31;
  v58 = v57;

  (*(v30 + 8))(v56, v61);
  return v58;
}

void sub_268CB5958(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = sub_268CB5BA0(*a1, a2, a3);
  if (v4)
  {

    v8 = 0;
LABEL_31:
    *a4 = v8;
    return;
  }

  v9 = v7;
  v10 = sub_268CAAE90();
  if (!v10)
  {

    v8 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v27 = a4;
  v12 = v9 & 0xC000000000000001;
  sub_268CAAE98();
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v13 = MEMORY[0x26D62B570](0, v9);
  }

  else
  {
    v13 = *(v9 + 32);
  }

  v14 = v13;
  v26 = v9 + 32;
  v15 = 1;
  while (v11 != v15)
  {
    if (v12)
    {
      v16 = MEMORY[0x26D62B570](v15, v9);
    }

    else
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v16 = *(v9 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_268CB78C0();
    v19 = v18;
    sub_268CB78C0();
    if (v19 < v20)
    {

      ++v15;
      v14 = v17;
    }

    else
    {

      ++v15;
    }
  }

  sub_268CB78C0();

  v21 = a2;
  if ((a2 & 0x8000000000000000) == 0 || (v21 = -a2, !__OFSUB__(0, a2)))
  {
    v22 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
      if (v22 >= sub_268CAAE90())
      {

        v8 = 0;
      }

      else
      {
        sub_268CAAE98();
        if (v12)
        {
          v23 = MEMORY[0x26D62B570](v22, v9);
        }

        else
        {
          v23 = *(v26 + 8 * v22);
        }

        v24 = v23;
        sub_268CB78D0();

        if (v12)
        {
          v25 = MEMORY[0x26D62B570](v22, v9);
        }

        else
        {
          v25 = *(v26 + 8 * v22);
        }

        v8 = v25;
      }

      a4 = v27;
      goto LABEL_31;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_268CB5BA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_268CB7930();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  (*(v8 + 16))(v10, a3, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);

  sub_268CB524C(&v15, sub_268CB6DE0, v12);
  if (v3)
  {

    return swift_willThrow();
  }

  else
  {

    if (a2 < 0)
    {
      sub_268CB605C();
    }

    return v15;
  }
}

uint64_t sub_268CB5D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v4 = sub_268CB7930();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_268CB78B0();
  v14 = sub_268CB7800();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v25 = a3;
  v26 = v4;
  v24 = sub_268CB77F0();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  sub_268CB78B0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    v13 = v11;
LABEL_4:
    sub_268CAAE38(v13, &qword_2802DA4E0, &qword_268CB8A08);
    sub_268CAAA6C();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    return v17 & 1;
  }

  v18 = sub_268CB77F0();
  v15(v11, v14);
  v19 = v26;
  (*(v5 + 16))(v7, v25, v26);
  v20 = (*(v5 + 88))(v7, v19);
  if (v20 == *MEMORY[0x277D5FE50])
  {
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D5FE60])
  {
LABEL_8:
    v21 = v18 < v24;
LABEL_9:
    v17 = v21;
    return v17 & 1;
  }

  if (v20 == *MEMORY[0x277D5FE40])
  {
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D5FE68])
  {
    goto LABEL_8;
  }

  if (v20 == *MEMORY[0x277D5FE58])
  {
LABEL_6:
    v21 = v24 < v18;
    goto LABEL_9;
  }

  if (v20 == *MEMORY[0x277D5FE48])
  {
    goto LABEL_8;
  }

  result = sub_268CB7DB0();
  __break(1u);
  return result;
}

void sub_268CB605C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v2 = sub_268CAAE90();
      if (__OFSUB__(v2, 1))
      {
        __break(1u);
        return;
      }

      if (v2 - 1 < 1)
      {
        return;
      }

      v3 = v2;
      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v3 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x26D62B570](v4, v1);
          v10 = MEMORY[0x26D62B570](v3 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v3 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_268CB6E5C(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_268CB6E5C(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v3;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v3 - 2;
        --v3;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    while (sub_268CB7D50());
  }
}

void sub_268CB6200(uint64_t *a1, uint64_t (*a2)(id, id), uint64_t a3)
{
  v7 = a1[1];
  v8 = sub_268CB7D80();
  if (v8 < v7)
  {
    v9 = v8;
    v10 = sub_268CA9294(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);
    sub_268CB63F8(v12, v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_268CB6300(0, v7, 1, a1, a2);
  }
}

void sub_268CB6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_268CB63F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id), uint64_t a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v108 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_97;
    }

    goto LABEL_139;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v12 = *a3;
      v13 = *(*a3 + 8 * v11);
      v14 = *(*a3 + 8 * v9);
      v15 = v13;
      LODWORD(v108) = a5(v14, v15);
      if (v7)
      {

        goto LABEL_107;
      }

      v105 = v10;

      v99 = 8 * v11;
      v16 = (v12 + 8 * v11 + 16);
      v102 = v11;
      v17 = v11 + 2;
      while (1)
      {
        v18 = v17;
        if (v9 + 1 >= v8)
        {
          break;
        }

        v19 = v8;
        v20 = *(v16 - 1);
        v21 = *v16;
        v22 = v20;
        v23 = a5(v21, v22);

        v24 = v108 ^ v23;
        ++v16;
        ++v9;
        v17 = v18 + 1;
        v8 = v19;
        if (v24)
        {
          goto LABEL_10;
        }
      }

      v9 = v8;
LABEL_10:
      if (v108)
      {
        v25 = v102;
        if (v9 < v102)
        {
          goto LABEL_133;
        }

        v10 = v105;
        if (v102 >= v9)
        {
          v11 = v102;
          goto LABEL_25;
        }

        if (v8 >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = v8;
        }

        v27 = 8 * v26 - 8;
        v28 = v9;
        v29 = v99;
        do
        {
          if (v25 != --v28)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_137;
            }

            v31 = *(v30 + v29);
            *(v30 + v29) = *(v30 + v27);
            *(v30 + v27) = v31;
          }

          ++v25;
          v27 -= 8;
          v29 += 8;
        }

        while (v25 < v28);
      }

      else
      {
        v10 = v105;
      }

      v11 = v102;
    }

LABEL_25:
    v32 = a3[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_129;
      }

      if (v9 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v11 + a4;
          }

          if (v33 >= v11)
          {
            if (v9 == v33)
            {
              goto LABEL_34;
            }

            v107 = v10;
            v78 = v11;
            v79 = *a3;
            v80 = *a3 + 8 * v9 - 8;
            v103 = v78;
            v81 = v78 - v9;
            v98 = v33;
            while (1)
            {
              v82 = *(v79 + 8 * v9);
              v100 = v81;
              v108 = v80;
              do
              {
                v83 = *v80;
                v84 = v82;
                v15 = v83;
                v85 = a5(v84, v15);
                if (v7)
                {

LABEL_107:
                  return;
                }

                v86 = v85;

                if ((v86 & 1) == 0)
                {
                  break;
                }

                if (!v79)
                {
                  goto LABEL_136;
                }

                v87 = *v80;
                v82 = *(v80 + 8);
                *v80 = v82;
                *(v80 + 8) = v87;
                v80 -= 8;
              }

              while (!__CFADD__(v81++, 1));
              ++v9;
              v80 = (v108 + 8);
              v81 = v100 - 1;
              if (v9 == v98)
              {
                v9 = v98;
                v10 = v107;
                v11 = v103;
                goto LABEL_34;
              }
            }
          }
        }

        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

LABEL_34:
    if (v9 < v11)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268CA94F4();
      v10 = v89;
    }

    v34 = *(v10 + 2);
    v35 = v34 + 1;
    if (v34 >= *(v10 + 3) >> 1)
    {
      sub_268CA94F4();
      v10 = v90;
    }

    *(v10 + 2) = v35;
    v36 = v10 + 32;
    v37 = &v10[16 * v34 + 32];
    *v37 = v11;
    *(v37 + 1) = v9;
    v106 = *a1;
    if (!*a1)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    }

    if (v34)
    {
      break;
    }

LABEL_83:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_95;
    }
  }

  while (1)
  {
    v38 = v35 - 1;
    v39 = &v36[16 * v35 - 16];
    v40 = &v10[16 * v35];
    if (v35 >= 4)
    {
      v45 = &v36[16 * v35];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_116;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_117;
      }

      v52 = *(v40 + 1);
      v53 = v52 - *v40;
      if (__OFSUB__(v52, *v40))
      {
        goto LABEL_119;
      }

      v51 = __OFADD__(v43, v53);
      v54 = v43 + v53;
      if (v51)
      {
        goto LABEL_122;
      }

      if (v54 >= v48)
      {
        v68 = *v39;
        v67 = *(v39 + 1);
        v51 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v51)
        {
          goto LABEL_127;
        }

        if (v43 < v69)
        {
          v38 = v35 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

    if (v35 == 3)
    {
      v41 = *(v10 + 4);
      v42 = *(v10 + 5);
      v51 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      v44 = v51;
LABEL_54:
      if (v44)
      {
        goto LABEL_118;
      }

      v56 = *v40;
      v55 = *(v40 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_121;
      }

      v60 = *(v39 + 1);
      v61 = v60 - *v39;
      if (__OFSUB__(v60, *v39))
      {
        goto LABEL_124;
      }

      if (__OFADD__(v58, v61))
      {
        goto LABEL_126;
      }

      if (v58 + v61 >= v43)
      {
        if (v43 < v61)
        {
          v38 = v35 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (v35 < 2)
    {
      goto LABEL_120;
    }

    v63 = *v40;
    v62 = *(v40 + 1);
    v51 = __OFSUB__(v62, v63);
    v58 = v62 - v63;
    v59 = v51;
LABEL_69:
    if (v59)
    {
      goto LABEL_123;
    }

    v65 = *v39;
    v64 = *(v39 + 1);
    v51 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v51)
    {
      goto LABEL_125;
    }

    if (v66 < v58)
    {
      goto LABEL_83;
    }

LABEL_76:
    if (v38 - 1 >= v35)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v70 = &v36[16 * v38 - 16];
    v71 = *v70;
    v72 = v38;
    v73 = &v36[16 * v38];
    v74 = *(v73 + 1);
    sub_268CB6AA4((*a3 + 8 * *v70), (*a3 + 8 * *v73), (*a3 + 8 * v74), v106, a5);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v74 < v71)
    {
      goto LABEL_110;
    }

    v108 = 0;
    v7 = v36;
    v75 = v9;
    v76 = v10;
    v10 = *(v10 + 2);
    if (v72 > v10)
    {
      goto LABEL_111;
    }

    *v70 = v71;
    *(v70 + 1) = v74;
    if (v72 >= v10)
    {
      goto LABEL_112;
    }

    v35 = (v10 - 1);
    sub_268CAA38C(v73 + 16, &v10[-v72 - 1], v73);
    *(v76 + 2) = v10 - 1;
    v77 = v10 > 2;
    v10 = v76;
    v9 = v75;
    v36 = v7;
    v7 = 0;
    if (!v77)
    {
      goto LABEL_83;
    }
  }

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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v10 = sub_268CAA378(v10);
LABEL_97:
  v91 = v10 + 16;
  v92 = *(v10 + 2);
  while (v92 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_135;
    }

    v93 = v10;
    v94 = &v10[16 * v92];
    v10 = *v94;
    v95 = &v91[2 * v92];
    v96 = *(v95 + 1);
    sub_268CB6AA4((*a3 + 8 * *v94), (*a3 + 8 * *v95), (*a3 + 8 * v96), v108, a5);
    if (v7)
    {
      break;
    }

    if (v96 < v10)
    {
      goto LABEL_113;
    }

    if (v92 - 2 >= *v91)
    {
      goto LABEL_114;
    }

    *v94 = v10;
    *(v94 + 1) = v96;
    v97 = *v91 - v92;
    if (*v91 < v92)
    {
      goto LABEL_115;
    }

    v92 = *v91 - 1;
    sub_268CAA38C(v95 + 16, v97, v95);
    *v91 = v92;
    v10 = v93;
  }

LABEL_105:
}

uint64_t sub_268CB6AA4(char *a1, char *a2, id *a3, char *a4, uint64_t (*a5)(id, id))
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_268CA9820(a1, (a2 - a1) / 8, a4);
    v11 = a4;
    v12 = &a4[8 * v8];
    for (i = v12; ; v12 = i)
    {
      if (v11 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_29;
      }

      v14 = v5;
      v15 = v7;
      v16 = v6;
      v17 = v11;
      v18 = *v11;
      v19 = *v6;
      v20 = v18;
      v21 = a5(v19, v20);
      if (v55)
      {

        v45 = (i - v17) / 8;
        if (v15 < v17 || v15 >= &v17[v45])
        {
          v43 = 8 * v45;
          v44 = v15;
          v11 = v17;
          goto LABEL_51;
        }

        if (v15 != v17)
        {
          v43 = 8 * v45;
          v44 = v15;
          v11 = v17;
LABEL_51:
          memmove(v44, v11, v43);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v16;
      v6 = v16 + 1;
      v11 = v17;
      if (v15 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = v15 + 8;
      v5 = v14;
    }

    v23 = v17;
    v11 = v17 + 1;
    v6 = v16;
    if (v15 == v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v15 = *v23;
    goto LABEL_13;
  }

  sub_268CA9820(a2, (a3 - a2) / 8, a4);
  v12 = &a4[8 * v9];
  v50 = v7;
  v51 = a4;
  v25 = -a4;
  v49 = -a4;
LABEL_15:
  v26 = v6 - 1;
  --v5;
  v27 = &v12[v25];
  while (1)
  {
    if (v12 <= v51 || v6 <= v7)
    {
      v11 = v51;
LABEL_29:
      v41 = (v12 - v11) / 8;
      if (v6 < v11 || v6 >= &v11[v41])
      {
        v43 = 8 * v41;
        v44 = v6;
        goto LABEL_51;
      }

      if (v6 != v11)
      {
        v43 = 8 * v41;
        v44 = v6;
        goto LABEL_51;
      }

      return 1;
    }

    v53 = v27;
    v29 = v6;
    v30 = v12;
    v32 = (v12 - 8);
    v31 = *(v12 - 1);
    v33 = v26;
    v34 = *v26;
    v35 = v31;
    v36 = v34;
    v37 = a5(v35, v36);

    if (v55)
    {
      break;
    }

    v6 = v29;
    v55 = 0;
    v38 = v5 + 1;
    if (v37)
    {
      v39 = v38 == v29;
      v40 = v33;
      v6 = v33;
      v25 = v49;
      v7 = v50;
      v12 = v30;
      if (!v39)
      {
        *v5 = *v40;
        v25 = v49;
        v6 = v40;
      }

      goto LABEL_15;
    }

    v26 = v33;
    if (v30 != v38)
    {
      *v5 = *v32;
    }

    --v5;
    v27 = v53 - 8;
    v12 = v32;
    v7 = v50;
  }

  v11 = v51;
  v44 = v29;
  v47 = v29 < v51 || v29 >= &v51[8 * (v53 / 8)];
  if (v47 || v29 != v51)
  {
    v43 = 8 * (v53 / 8);
    goto LABEL_51;
  }

  return 1;
}

uint64_t sub_268CB6DE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_268CB7930();
  OUTLINED_FUNCTION_9_1(v5);
  return sub_268CB5D3C(a1, a2, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80))) & 1;
}

uint64_t sub_268CB6E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268CB7D50();
  }

  return sub_268CB7CE0();
}

uint64_t sub_268CB6EC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_4();
  (*(v6 + 16))(a2, a1);
  return a2;
}