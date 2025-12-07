uint64_t sub_23B76F6FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1807E0, &qword_23B773270);
  v2[4] = swift_task_alloc();
  v3 = sub_23B772D0C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1807E8, &qword_23B773278);
  v2[8] = swift_task_alloc();
  v4 = sub_23B772DDC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_23B772E0C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B76F8F0, 0, 0);
}

uint64_t sub_23B76F8F0()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = v0[14];
    v4 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[8];
    v8 = v0[3];
    sub_23B772F1C();

    sub_23B772DFC();
    (*(v5 + 16))(v3, v4, v6);
    sub_23B7700E0(MEMORY[0x277D84F90]);
    *v7 = v8;
    v9 = *MEMORY[0x277D612B0];
    v10 = sub_23B772E3C();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v7, v9, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v12 = v8;
    sub_23B772DCC();
    if (qword_2811A3900 != -1)
    {
      swift_once();
    }

    v13 = sub_23B772E6C();
    __swift_project_value_buffer(v13, qword_2811A3910);
    v14 = sub_23B772E4C();
    v15 = sub_23B772F5C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B76E000, v14, v15, "Calling SiriSuggestionsAPI to fetch example utterance for intent", v16, 2u);
      MEMORY[0x23EEA79B0](v16, -1, -1);
    }

    sub_23B772D3C();
    v0[16] = sub_23B772D2C();
    v21 = v0[4];
    sub_23B772CFC();
    v22 = sub_23B772DEC();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = swift_task_alloc();
    v0[17] = v23;
    *v23 = v0;
    v23[1] = sub_23B76FE14;
    v25 = v0[11];
    v26 = v0[7];
    v27 = v0[4];
    v28 = v0[2];
    v24.n128_u64[0] = 1.0;

    return MEMORY[0x2821C6060](v28, v25, v26, v27, v24);
  }

  else
  {
    v17 = v0[2];
    v18 = sub_23B772D6C();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_23B76FE14()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  sub_23B770234(v4, &qword_27E1807E0, &qword_23B773270);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23B76FFBC, 0, 0);
}

uint64_t sub_23B76FFBC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
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

unint64_t sub_23B7700E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1807F8, &qword_23B773288);
    v3 = sub_23B772FBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_23B770294(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_23B771E2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23B770304(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B770234(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B770294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180800, &qword_23B773290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23B770304(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t static SiriKitIntentTip.create(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = sub_23B772DBC();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_23B772D9C();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180808, &qword_23B7732B8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = sub_23B772D6C();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = *(a3 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B770534, 0, 0);
}

uint64_t sub_23B770534()
{
  (*(v0[8] + 40))(v0[7]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_23B7705EC;
  v2 = v0[17];
  v3 = v0[6];

  return sub_23B76F6FC(v2, v3);
}

uint64_t sub_23B7705EC()
{

  return MEMORY[0x2822009F8](sub_23B7706E8, 0, 0);
}

uint64_t sub_23B7706E8()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    v5 = v0[7];
    v6 = v0[5];
    (*(v4 + 8))(v0[22], v5);
    sub_23B770234(v3, &qword_27E180808, &qword_23B7732B8);
    (*(v4 + 56))(v6, 1, 1, v5);
  }

  else
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[12];
    v10 = v0[11];
    v25 = v0[13];
    v26 = v0[10];
    v27 = v0[8];
    v29 = v0[7];
    (*(v2 + 32))(v0[20], v3, v1);
    sub_23B772D4C();
    sub_23B772D7C();
    (*(v8 + 8))(v7, v25);
    v11 = sub_23B772DAC();
    v13 = v12;
    (*(v10 + 8))(v9, v26);
    (*(v27 + 24))(v11, v13, v29);
    if (qword_2811A3908 != -1)
    {
      swift_once();
    }

    v14 = v0[21];
    v15 = v0[19];
    v16 = v0[20];
    v17 = v0[18];
    v18 = v0[16];
    v19 = v0[7];
    v28 = v0[22];
    v30 = v0[5];
    v20 = sub_23B772E7C();
    v22 = v21;
    (*(v15 + 16))(v18, v16, v17);
    (*(v15 + 56))(v18, 0, 1, v17);
    swift_beginAccess();
    sub_23B770A20(v18, v20, v22);
    swift_endAccess();
    (*(v15 + 8))(v16, v17);
    (*(v14 + 32))(v30, v28, v19);
    (*(v14 + 56))(v30, 0, 1, v19);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_23B770A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180808, &qword_23B7732B8);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = sub_23B772D6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23B770234(a1, &qword_27E180808, &qword_23B7732B8);
    sub_23B772058(a2, a3, v8);

    return sub_23B770234(v8, &qword_27E180808, &qword_23B7732B8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_23B772734(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_23B770C24(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B772E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B772D9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B772D6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180808, &qword_23B7732B8);
  MEMORY[0x28223BE20]();
  v12 = &v37 - v11;
  if (qword_2811A3908 != -1)
  {
    swift_once();
  }

  v13 = sub_23B772E7C();
  v15 = v14;
  swift_beginAccess();
  v16 = qword_2811A3928;
  if (*(qword_2811A3928 + 16))
  {
    v38 = v6;
    v17 = v5;
    v18 = v3;
    v19 = v2;
    v20 = sub_23B771E2C(v13, v15);
    v22 = v21;

    if (v22)
    {
      (*(v9 + 16))(v12, *(v16 + 56) + *(v9 + 72) * v20, v8);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v2 = v19;
    v3 = v18;
    v5 = v17;
    v6 = v38;
  }

  else
  {

    v23 = 1;
  }

  (*(v9 + 56))(v12, v23, 1, v8);
  if ((*(v9 + 48))(v12, 1, v8))
  {
    sub_23B770234(v12, &qword_27E180808, &qword_23B7732B8);
    swift_endAccess();
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = v39;
    (*(v9 + 16))(v39, v12, v8);
    sub_23B770234(v12, &qword_27E180808, &qword_23B7732B8);
    swift_endAccess();
    v27 = v40;
    sub_23B772D4C();
    (*(v9 + 8))(v26, v8);
    v28 = v41;
    sub_23B772D8C();
    (*(v6 + 8))(v27, v5);
    v24 = sub_23B772E1C();
    v25 = v29;
    (*(v3 + 8))(v28, v2);
  }

  v30 = qword_2811A3900;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_23B772E6C();
  __swift_project_value_buffer(v31, qword_2811A3910);
  v32 = sub_23B772E4C();
  v33 = sub_23B772F5C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_23B771884(v24, v25, v42);
    _os_log_impl(&dword_23B76E000, v32, v33, "Derived loggingIntentIdentifier: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23EEA79B0](v35, -1, -1);
    MEMORY[0x23EEA79B0](v34, -1, -1);
  }

  return v24;
}

uint64_t sub_23B771174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v8 = a3();
  v9 = v5;
  v6 = sub_23B770C24(a1, a2);
  MEMORY[0x23EEA76E0](v6);

  return MEMORY[0x282134A98](v8, v9);
}

void (*SiriKitIntentTip.notifySiriTipOnDisplay.getter(uint64_t a1, uint64_t a2))()
{
  v2 = sub_23B772D6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180808, &qword_23B7732B8);
  MEMORY[0x28223BE20]();
  v7 = &v22 - v6;
  if (qword_2811A3908 != -1)
  {
    swift_once();
  }

  v8 = sub_23B772E7C();
  v10 = v9;
  swift_beginAccess();
  v11 = qword_2811A3928;
  if (*(qword_2811A3928 + 16))
  {
    v12 = sub_23B771E2C(v8, v10);
    v14 = v13;

    if (v14)
    {
      (*(v3 + 16))(v7, *(v11 + 56) + *(v3 + 72) * v12, v2);
      v15 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = 1;
LABEL_8:
  (*(v3 + 56))(v7, v15, 1, v2);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_23B770234(v7, &qword_27E180808, &qword_23B7732B8);
    swift_endAccess();
    if (qword_2811A3900 != -1)
    {
      swift_once();
    }

    v16 = sub_23B772E6C();
    __swift_project_value_buffer(v16, qword_2811A3910);
    v17 = sub_23B772E4C();
    v18 = sub_23B772F5C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B76E000, v17, v18, "Could not get callback function from cache", v19, 2u);
      MEMORY[0x23EEA79B0](v19, -1, -1);
    }

    return nullsub_1;
  }

  else
  {
    (*(v3 + 16))(v5, v7, v2);
    sub_23B770234(v7, &qword_27E180808, &qword_23B7732B8);
    swift_endAccess();
    v21 = sub_23B772D5C();
    (*(v3 + 8))(v5, v2);
    return v21;
  }
}

uint64_t SiriKitIntentTip.siriIcon.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180810, &qword_23B7732C0);
  MEMORY[0x28223BE20]();
  v1 = &v15 - v0;
  v2 = sub_23B772EBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFDeviceSupportsSystemAssistantExperience())
  {
    sub_23B772ECC();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    sub_23B772EEC();

    (*(v3 + 8))(v5, v2);
    sub_23B772E9C();
    v6 = sub_23B772EAC();
    (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
    v7 = sub_23B772EDC();

    sub_23B770234(v1, &qword_27E180810, &qword_23B7732C0);
    return v7;
  }

  else
  {
    v9 = sub_23B772F0C();
    v10 = [objc_opt_self() bundleWithIdentifier_];

    if (v10)
    {
      return sub_23B772EFC();
    }

    else
    {
      if (qword_2811A3900 != -1)
      {
        swift_once();
      }

      v11 = sub_23B772E6C();
      __swift_project_value_buffer(v11, qword_2811A3910);
      v12 = sub_23B772E4C();
      v13 = sub_23B772F5C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23B76E000, v12, v13, "Could not get bundle for identifier to get the siriIcon", v14, 2u);
        MEMORY[0x23EEA79B0](v14, -1, -1);
      }

      return 0;
    }
  }
}

unint64_t sub_23B771884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B771950(v11, 0, 0, 1, a1, a2);
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
    sub_23B771FF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B771950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B771A5C(a5, a6);
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
    result = sub_23B772F8C();
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

void *sub_23B771A5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B771AA8(a1, a2);
  sub_23B771BD8(&unk_284E31A90);
  return v3;
}

void *sub_23B771AA8(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B771CC4(v5, 0);
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

  result = sub_23B772F8C();
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
        v10 = sub_23B772F4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B771CC4(v10, 0);
        result = sub_23B772F7C();
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

uint64_t sub_23B771BD8(uint64_t result)
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

  result = sub_23B771D38(result, v11, 1, v3);
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

void *sub_23B771CC4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180818, &qword_23B7732F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B771D38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180818, &qword_23B7732F8);
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

unint64_t sub_23B771E2C(uint64_t a1, uint64_t a2)
{
  sub_23B772FEC();
  sub_23B772F2C();
  v4 = sub_23B772FFC();

  return sub_23B771EF4(a1, a2, v4);
}

unint64_t sub_23B771EF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23B772FCC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_23B771FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B772058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23B771E2C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B772964();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_23B772D6C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_23B772548(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_23B772D6C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_23B7721C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_23B772D6C();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20]();
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180820, &unk_23B773300);
  v42 = v4;
  result = sub_23B772FAC();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_23B772FEC();
      sub_23B772F2C();
      result = sub_23B772FFC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_23B772548(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23B772F6C() + 1) & ~v5;
    while (1)
    {
      sub_23B772FEC();

      sub_23B772F2C();
      v9 = sub_23B772FFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_23B772D6C() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_23B772734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23B771E2C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23B772964();
      goto LABEL_7;
    }

    sub_23B7721C8(v15, a4 & 1);
    v26 = sub_23B771E2C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23B772FDC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_23B772D6C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23B7728B4(v12, a2, a3, a1, v18);
}

uint64_t sub_23B7728B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23B772D6C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_23B772964()
{
  v1 = v0;
  v35 = sub_23B772D6C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20]();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180820, &unk_23B773300);
  v3 = *v0;
  v4 = sub_23B772F9C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

uint64_t sub_23B772BE4()
{
  v0 = sub_23B772E6C();
  __swift_allocate_value_buffer(v0, qword_2811A3910);
  __swift_project_value_buffer(v0, qword_2811A3910);
  return sub_23B772E5C();
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