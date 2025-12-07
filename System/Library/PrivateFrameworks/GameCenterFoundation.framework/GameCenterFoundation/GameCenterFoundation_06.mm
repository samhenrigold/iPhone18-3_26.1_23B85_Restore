void sub_227A5A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v6 = sub_227A720EC();
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  v45 = 0;
  v12 = 0;
  v47 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v42 = v10;
  v43 = v7;
  v40 = (v7 + 8);
  v41 = v7 + 16;
LABEL_5:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = *(v47 + 48);
    v25 = *(v43 + 72);
    v46 = v23;
    (*(v43 + 16))(v10, v24 + v25 * v23, v6, v8);
    v26 = sub_227A720DC();
    v28 = v27;
    if (*(a4 + 16))
    {
      v29 = v26;
      sub_227A72F2C();
      sub_227A7255C();
      v30 = sub_227A72F4C();
      v31 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v32 = v30 & v31;
        if (((*(a4 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
        {
          break;
        }

        v33 = (*(a4 + 48) + 16 * v32);
        if (*v33 != v29 || v33[1] != v28)
        {
          v35 = sub_227A72E5C();
          v30 = v32 + 1;
          if ((v35 & 1) == 0)
          {
            continue;
          }
        }

        v10 = v42;
        v6 = v44;
        (*v40)(v42, v44);
        *(v39 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        v36 = __OFADD__(v45++, 1);
        v18 = v48;
        if (v36)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }
    }

    v10 = v42;
    v6 = v44;
    (*v40)(v42, v44);
    v18 = v48;
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {

      sub_227A58C8C(v39, v38);

      return;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v48 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_227A5AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v40 = a4;
  v38 = a1;
  v5 = sub_227A720EC();
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v11 = 0;
  v45 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v41 = v7 + 16;
  v42 = v7;
  v43 = v6;
  v44 = (v7 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    (*(v42 + 16))(v10, *(v45 + 48) + *(v42 + 72) * v22, v5, v8);
    v23 = sub_227A720DC();
    v24 = v10;
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = sub_227A720DC();
      v30 = v29;
      v31 = sub_227A4C78C();
      if (v32)
      {
        if (v28 == v31 && v32 == v30)
        {

          v24 = v10;
          goto LABEL_22;
        }

        v34 = sub_227A72E5C();

        v5 = v43;
        (*v44)(v10, v43);
        if ((v34 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v5 = v43;
        (*v44)(v10, v43);
LABEL_24:
        *(v38 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_27:

          sub_227A58C8C(v38, v37);

          return;
        }
      }
    }

    else
    {
LABEL_22:
      v5 = v43;
      (*v44)(v24, v43);
      v10 = v24;
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_27;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_227A5AD54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v31 = (v9 - 1) & v9;
LABEL_12:
    v29 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v29);
    result = sub_227A5B280(v14, &selRef_pseudonym);
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = v15;
    if (*(a4 + 16))
    {
      v17 = result;
      sub_227A72F2C();
      sub_227A7255C();
      v18 = sub_227A72F4C();
      v19 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v20 = v18 & v19;
        if (((*(v32 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          break;
        }

        v21 = (*(a4 + 48) + 16 * v20);
        if (*v21 != v17 || v16 != v21[1])
        {
          v23 = sub_227A72E5C();
          v18 = v20 + 1;
          if ((v23 & 1) == 0)
          {
            continue;
          }
        }

        *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v24 = __OFADD__(v28++, 1);
        v9 = v31;
        if (v24)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    v9 = v31;
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v25 = sub_227A58F80(v27, a2, v28, a3);

      return v25;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v31 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *sub_227A5AF8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a5(a4, 2);
    v14 = a6(v13, a2, a3, a4);
    a7(a4, 2);

    return v14;
  }

  return result;
}

void sub_227A5B04C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_227A720EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_2279EF994(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_2279F3774(v5, &qword_27D7DC5C0, &qword_227AA0538);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227A5B280(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_227A724EC();
  }

  return OUTLINED_FUNCTION_86();
}

uint64_t sub_227A5B30C(void *a1)
{
  v2 = [a1 playerID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_227A5B3BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v58 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v58 - v13;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227A720EC();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A71EFC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ChannelMigrationActionMessage(0);
  v74[3] = v69;
  v74[4] = sub_227A589A8(&qword_27D7DE458, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA1668);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  sub_227A60604(a1);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v22 = sub_227A7227C();
  __swift_project_value_buffer(v22, qword_27D7DE210);
  sub_2279F4B58(v74, v73);
  v23 = *(v19 + 16);
  v70 = a3;
  v23(v21, a3, v18);

  v24 = sub_227A7226C();
  v25 = sub_227A7289C();

  v26 = a4;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v61 = v11;
    v28 = v27;
    v29 = swift_slowAlloc();
    v60 = ScoresResponseActionMessage;
    v30 = v29;
    v72 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_227A46730(a4[3], a4[4], &v72);
    *(v28 + 12) = 2080;
    sub_2279F4B58(v73, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v31 = sub_227A7251C();
    v59 = a4;
    v32 = v31;
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v35 = sub_227A46730(v32, v34, &v72);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    sub_227A71EEC();
    v36 = sub_227A720DC();
    v38 = v37;
    (*(v66 + 8))(v17, v67);
    (*(v19 + 8))(v21, v18);
    v39 = v36;
    v26 = v59;
    v40 = sub_227A46730(v39, v38, &v72);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_227904000, v24, v25, "%s-> Received action message: %s from %s", v28, 0x20u);
    swift_arrayDestroy();
    v41 = v30;
    ScoresResponseActionMessage = v60;
    MEMORY[0x22AAA1930](v41, -1, -1);
    v42 = v28;
    v11 = v61;
    MEMORY[0x22AAA1930](v42, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  v43 = *(boxed_opaque_existential_1 + *(v69 + 20));
  if (v43 >> 6 != 3)
  {
    if (v43 >> 6 == 2 && v43 == 129)
    {
      v44 = v26[9];
      if (v44)
      {
        v45 = v26[10];
        sub_2279F4B58(v74, v73);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v46 = v64;
        v47 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
          v48 = v46;
          v49 = v62;
          sub_227A6055C(v48);
          v44(v49);
          sub_22790D4C0(v44, v45);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v74);
        }

        sub_22790D4C0(v44, v45);
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);
        v54 = &qword_27D7DE380;
        v55 = &qword_227AA5D30;
        v56 = v46;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v74);
    }

LABEL_17:
    sub_227A5DA88(boxed_opaque_existential_1, v70, v26);
    return __swift_destroy_boxed_opaque_existential_0Tm(v74);
  }

  if (v43 != 192)
  {
    goto LABEL_17;
  }

  v50 = v26[11];
  if (v50)
  {
    v51 = v26[12];
    sub_2279F4B58(v74, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      v52 = v65;
      __swift_storeEnumTagSinglePayload(v65, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C(v52);
      v50(v11);
      sub_22790D4C0(v50, v51);
      goto LABEL_16;
    }

    sub_22790D4C0(v50, v51);
    v57 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, ScoresResponseActionMessage);
    v54 = &qword_27D7DD460;
    v55 = &qword_227AA4108;
    v56 = v57;
LABEL_21:
    sub_2279F3774(v56, v54, v55);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v74);
}

uint64_t sub_227A5BB8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v58 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v58 - v13;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227A720EC();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A71EFC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v74[3] = updated;
  v74[4] = sub_227A589A8(&qword_27D7DE428, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA24A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  sub_227A60604(a1);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v22 = sub_227A7227C();
  __swift_project_value_buffer(v22, qword_27D7DE210);
  sub_2279F4B58(v74, v73);
  v23 = *(v19 + 16);
  v70 = a3;
  v23(v21, a3, v18);

  v24 = sub_227A7226C();
  v25 = sub_227A7289C();

  v26 = a4;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v61 = v11;
    v28 = v27;
    v29 = swift_slowAlloc();
    v60 = ScoresResponseActionMessage;
    v30 = v29;
    v72 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_227A46730(a4[3], a4[4], &v72);
    *(v28 + 12) = 2080;
    sub_2279F4B58(v73, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v31 = sub_227A7251C();
    v59 = a4;
    v32 = v31;
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v35 = sub_227A46730(v32, v34, &v72);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    sub_227A71EEC();
    v36 = sub_227A720DC();
    v38 = v37;
    (*(v66 + 8))(v17, v67);
    (*(v19 + 8))(v21, v18);
    v39 = v36;
    v26 = v59;
    v40 = sub_227A46730(v39, v38, &v72);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_227904000, v24, v25, "%s-> Received action message: %s from %s", v28, 0x20u);
    swift_arrayDestroy();
    v41 = v30;
    ScoresResponseActionMessage = v60;
    MEMORY[0x22AAA1930](v41, -1, -1);
    v42 = v28;
    v11 = v61;
    MEMORY[0x22AAA1930](v42, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  v43 = *(boxed_opaque_existential_1 + *(updated + 20));
  if (v43 >> 6 != 3)
  {
    if (v43 >> 6 == 2 && v43 == 129)
    {
      v44 = v26[9];
      if (v44)
      {
        v45 = v26[10];
        sub_2279F4B58(v74, v73);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v46 = v64;
        v47 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
          v48 = v46;
          v49 = v62;
          sub_227A6055C(v48);
          v44(v49);
          sub_22790D4C0(v44, v45);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v74);
        }

        sub_22790D4C0(v44, v45);
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);
        v54 = &qword_27D7DE380;
        v55 = &qword_227AA5D30;
        v56 = v46;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v74);
    }

LABEL_17:
    sub_227A5E1C4(boxed_opaque_existential_1, v70, v26);
    return __swift_destroy_boxed_opaque_existential_0Tm(v74);
  }

  if (v43 != 192)
  {
    goto LABEL_17;
  }

  v50 = v26[11];
  if (v50)
  {
    v51 = v26[12];
    sub_2279F4B58(v74, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      v52 = v65;
      __swift_storeEnumTagSinglePayload(v65, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C(v52);
      v50(v11);
      sub_22790D4C0(v50, v51);
      goto LABEL_16;
    }

    sub_22790D4C0(v50, v51);
    v57 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, ScoresResponseActionMessage);
    v54 = &qword_27D7DD460;
    v55 = &qword_227AA4108;
    v56 = v57;
LABEL_21:
    sub_2279F3774(v56, v54, v55);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v74);
}

uint64_t sub_227A5C35C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v58 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v58 - v13;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227A720EC();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A71EFC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for JoinChannelActionMessage(0);
  v74[3] = v69;
  v74[4] = sub_227A589A8(&qword_27D7DE3F8, type metadata accessor for JoinChannelActionMessage, &unk_227AA1998);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  sub_227A60604(a1);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v22 = sub_227A7227C();
  __swift_project_value_buffer(v22, qword_27D7DE210);
  sub_2279F4B58(v74, v73);
  v23 = *(v19 + 16);
  v70 = a3;
  v23(v21, a3, v18);

  v24 = sub_227A7226C();
  v25 = sub_227A7289C();

  v26 = a4;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v61 = v11;
    v28 = v27;
    v29 = swift_slowAlloc();
    v60 = ScoresResponseActionMessage;
    v30 = v29;
    v72 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_227A46730(a4[3], a4[4], &v72);
    *(v28 + 12) = 2080;
    sub_2279F4B58(v73, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v31 = sub_227A7251C();
    v59 = a4;
    v32 = v31;
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v35 = sub_227A46730(v32, v34, &v72);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    sub_227A71EEC();
    v36 = sub_227A720DC();
    v38 = v37;
    (*(v66 + 8))(v17, v67);
    (*(v19 + 8))(v21, v18);
    v39 = v36;
    v26 = v59;
    v40 = sub_227A46730(v39, v38, &v72);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_227904000, v24, v25, "%s-> Received action message: %s from %s", v28, 0x20u);
    swift_arrayDestroy();
    v41 = v30;
    ScoresResponseActionMessage = v60;
    MEMORY[0x22AAA1930](v41, -1, -1);
    v42 = v28;
    v11 = v61;
    MEMORY[0x22AAA1930](v42, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  v43 = *(boxed_opaque_existential_1 + *(v69 + 20));
  if (v43 >> 6 != 3)
  {
    if (v43 >> 6 == 2 && v43 == 129)
    {
      v44 = v26[9];
      if (v44)
      {
        v45 = v26[10];
        sub_2279F4B58(v74, v73);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v46 = v64;
        v47 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
          v48 = v46;
          v49 = v62;
          sub_227A6055C(v48);
          v44(v49);
          sub_22790D4C0(v44, v45);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v74);
        }

        sub_22790D4C0(v44, v45);
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);
        v54 = &qword_27D7DE380;
        v55 = &qword_227AA5D30;
        v56 = v46;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v74);
    }

LABEL_17:
    sub_227A5E900(boxed_opaque_existential_1, v70, v26);
    return __swift_destroy_boxed_opaque_existential_0Tm(v74);
  }

  if (v43 != 192)
  {
    goto LABEL_17;
  }

  v50 = v26[11];
  if (v50)
  {
    v51 = v26[12];
    sub_2279F4B58(v74, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      v52 = v65;
      __swift_storeEnumTagSinglePayload(v65, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C(v52);
      v50(v11);
      sub_22790D4C0(v50, v51);
      goto LABEL_16;
    }

    sub_22790D4C0(v50, v51);
    v57 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, ScoresResponseActionMessage);
    v54 = &qword_27D7DD460;
    v55 = &qword_227AA4108;
    v56 = v57;
LABEL_21:
    sub_2279F3774(v56, v54, v55);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v74);
}

uint64_t sub_227A5CB2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v59 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v59 - v13;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227A720EC();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227A71EFC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = ScoresActionMessage;
  v73[3] = ScoresActionMessage;
  v73[4] = sub_227A589A8(&qword_27D7DE3C8, type metadata accessor for QueryScoresActionMessage, &unk_227AA1728);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_227A60604(a1);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v23 = sub_227A7227C();
  __swift_project_value_buffer(v23, qword_27D7DE210);
  sub_2279F4B58(v73, v72);
  v24 = *(v20 + 16);
  v69 = a3;
  v24(v22, a3, v19);

  v25 = sub_227A7226C();
  v26 = sub_227A7289C();

  v27 = a4;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v61 = v11;
    v29 = v28;
    v30 = swift_slowAlloc();
    v60 = ScoresResponseActionMessage;
    v31 = v30;
    v71 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_227A46730(a4[3], a4[4], &v71);
    *(v29 + 12) = 2080;
    sub_2279F4B58(v72, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v32 = sub_227A7251C();
    v59 = a4;
    v33 = v32;
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    v36 = sub_227A46730(v33, v35, &v71);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2080;
    sub_227A71EEC();
    v37 = sub_227A720DC();
    v39 = v38;
    (*(v65 + 8))(v18, v66);
    (*(v20 + 8))(v22, v19);
    v40 = v37;
    v27 = v59;
    v41 = sub_227A46730(v40, v39, &v71);

    *(v29 + 24) = v41;
    _os_log_impl(&dword_227904000, v25, v26, "%s-> Received action message: %s from %s", v29, 0x20u);
    swift_arrayDestroy();
    v42 = v31;
    ScoresResponseActionMessage = v60;
    MEMORY[0x22AAA1930](v42, -1, -1);
    v43 = v29;
    v11 = v61;
    MEMORY[0x22AAA1930](v43, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v22, v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  v44 = v68;
  v45 = *(boxed_opaque_existential_1 + *(v68 + 28));
  if (v45 >> 6 != 3)
  {
    if (v45 >> 6 == 2 && v45 == 129)
    {
      v46 = v27[9];
      if (v46)
      {
        v47 = v27[10];
        sub_2279F4B58(v73, v72);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v48 = v63;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v48, 0, 1, v44);
          v49 = v48;
          v50 = v62;
          sub_227A6055C(v49);
          v46(v50);
          sub_22790D4C0(v46, v47);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v73);
        }

        sub_22790D4C0(v46, v47);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v44);
        v55 = &qword_27D7DE380;
        v56 = &qword_227AA5D30;
        v57 = v48;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v73);
    }

LABEL_17:
    sub_227A5F03C(boxed_opaque_existential_1, v69, v27);
    return __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  if (v45 != 192)
  {
    goto LABEL_17;
  }

  v51 = v27[11];
  if (v51)
  {
    v52 = v27[12];
    sub_2279F4B58(v73, v72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      v53 = v64;
      __swift_storeEnumTagSinglePayload(v64, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C(v53);
      v51(v11);
      sub_22790D4C0(v51, v52);
      goto LABEL_16;
    }

    sub_22790D4C0(v51, v52);
    v58 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, ScoresResponseActionMessage);
    v55 = &qword_27D7DD460;
    v56 = &qword_227AA4108;
    v57 = v58;
LABEL_21:
    sub_2279F3774(v57, v55, v56);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v73);
}

uint64_t sub_227A5D2E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v56 - v13;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227A720EC();
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A71EFC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = ScoresResponseActionMessage;
  v70[4] = sub_227A589A8(&qword_27D7DE388, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA17E8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  sub_227A60604(a1);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v22 = sub_227A7227C();
  __swift_project_value_buffer(v22, qword_27D7DE210);
  sub_2279F4B58(v70, v69);
  v23 = *(v19 + 16);
  v66 = a3;
  v23(v21, a3, v18);

  v24 = sub_227A7226C();
  v25 = sub_227A7289C();

  v26 = a4;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v57 = ScoresResponseActionMessage;
    v28 = v27;
    v29 = swift_slowAlloc();
    v58 = v9;
    v30 = v29;
    v68 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_227A46730(a4[3], a4[4], &v68);
    *(v28 + 12) = 2080;
    sub_2279F4B58(v69, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v31 = sub_227A7251C();
    v56 = a4;
    v32 = v31;
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    v35 = sub_227A46730(v32, v34, &v68);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    sub_227A71EEC();
    v36 = sub_227A720DC();
    v38 = v37;
    (*(v63 + 8))(v17, v64);
    (*(v19 + 8))(v21, v18);
    v39 = v36;
    v26 = v56;
    v40 = sub_227A46730(v39, v38, &v68);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_227904000, v24, v25, "%s-> Received action message: %s from %s", v28, 0x20u);
    swift_arrayDestroy();
    v41 = v30;
    v9 = v58;
    MEMORY[0x22AAA1930](v41, -1, -1);
    v42 = v28;
    ScoresResponseActionMessage = v57;
    MEMORY[0x22AAA1930](v42, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
  }

  v43 = *(boxed_opaque_existential_1 + *(ScoresResponseActionMessage + 24));
  if (v43 >> 6 != 3)
  {
    if (v43 >> 6 == 2 && v43 == 129)
    {
      v44 = v26[9];
      if (v44)
      {
        v45 = v26[10];
        sub_2279F4B58(v70, v69);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v9 = v62;
        v46 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v46);
          v47 = v9;
          v48 = v59;
          sub_227A6055C(v47);
          v44(v48);
          sub_22790D4C0(v44, v45);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v70);
        }

        sub_22790D4C0(v44, v45);
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v46);
        v54 = &qword_27D7DE380;
        v55 = &qword_227AA5D30;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v70);
    }

LABEL_17:
    sub_227A5F78C(boxed_opaque_existential_1, v66, v26);
    return __swift_destroy_boxed_opaque_existential_0Tm(v70);
  }

  if (v43 != 192)
  {
    goto LABEL_17;
  }

  v49 = v26[11];
  if (v49)
  {
    v50 = v26[12];
    sub_2279F4B58(v70, v69);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v9, 0, 1, ScoresResponseActionMessage);
      v51 = v9;
      v52 = v60;
      sub_227A6055C(v51);
      v49(v52);
      sub_22790D4C0(v49, v50);
      goto LABEL_16;
    }

    sub_22790D4C0(v49, v50);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, ScoresResponseActionMessage);
    v54 = &qword_27D7DD460;
    v55 = &qword_227AA4108;
LABEL_21:
    sub_2279F3774(v9, v54, v55);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v70);
}

uint64_t sub_227A5DA88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for JoinChannelActionMessage(0);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for ChannelMigrationActionMessage(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  MEMORY[0x28223BE20](updated);
  v45 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = v13;
  v48[4] = sub_227A589A8(&qword_27D7DE458, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA1668);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_227A60604(a1);
  v22 = *(boxed_opaque_existential_1 + *(v13 + 20));
  v23 = a3;
  switch(v22 >> 6)
  {
    case 1u:
      v26 = a3[13];
      if (v26)
      {
        v27 = a3[14];
        sub_2279F4B58(v48, v47);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v28 = v46;
          sub_227A6055C(v7);
          v26(v28);
          sub_22790D4C0(v26, v27);
          goto LABEL_22;
        }

        sub_22790D4C0(v26, v27);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        v35 = &qword_27D7DD0E8;
        v36 = &qword_227AA36A0;
        v37 = v7;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v48);
    case 3u:
      if (v22 == 193)
      {
        sub_2279F4B58(v48, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v18, 1, 1, updated);
          v35 = &qword_27D7DE398;
          v36 = &qword_227AA5D40;
          v37 = v18;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v18, 0, 1, updated);
        v29 = v45;
        sub_227A6055C(v18);
        v30 = *&v29[*(updated + 24)];
        v47[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v30);
        v31 = v47[0];
        v32 = sub_227A4C78C();
        if (v33 && (v34 = sub_227A498C0(v32, v33, v31), , v34))
        {

          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v38 = sub_227A7227C();
          __swift_project_value_buffer(v38, qword_27D7DE210);

          v39 = sub_227A7226C();
          v40 = sub_227A728AC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v47[0] = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_227A46730(v23[3], v23[4], v47);
            _os_log_impl(&dword_227904000, v39, v40, "%s-> No need to handle participant update since all pseudonyms allowed already.", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v42);
            MEMORY[0x22AAA1930](v42, -1, -1);
            MEMORY[0x22AAA1930](v41, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v24 = a3[7];
      if (v24)
      {
        v25 = a3[8];
        sub_2279F4B58(v48, v47);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
          sub_227A6055C(v12);
          v24(v15);
          sub_22790D4C0(v24, v25);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v24, v25);
          __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
          v35 = &qword_27D7DD0D0;
          v36 = &qword_227AA3660;
          v37 = v12;
LABEL_16:
          sub_2279F3774(v37, v35, v36);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v48);
}

uint64_t sub_227A5E1C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for JoinChannelActionMessage(0);
  MEMORY[0x28223BE20](v8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for ChannelMigrationActionMessage(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  MEMORY[0x28223BE20](updated);
  v46 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = v21;
  v49[4] = sub_227A589A8(&qword_27D7DE428, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA24A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  sub_227A60604(a1);
  v23 = *(boxed_opaque_existential_1 + *(updated + 20));
  v24 = a3;
  switch(v23 >> 6)
  {
    case 1u:
      v27 = a3[13];
      if (v27)
      {
        v28 = a3[14];
        sub_2279F4B58(v49, v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v29 = v47;
          sub_227A6055C(v7);
          v27(v29);
          sub_22790D4C0(v27, v28);
          goto LABEL_22;
        }

        sub_22790D4C0(v27, v28);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        v36 = &qword_27D7DD0E8;
        v37 = &qword_227AA36A0;
        v38 = v7;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v49);
    case 3u:
      if (v23 == 193)
      {
        sub_2279F4B58(v49, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v18, 1, 1, updated);
          v36 = &qword_27D7DE398;
          v37 = &qword_227AA5D40;
          v38 = v18;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v18, 0, 1, updated);
        v30 = v46;
        sub_227A6055C(v18);
        v31 = *&v30[*(updated + 24)];
        v48[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v31);
        v32 = v48[0];
        v33 = sub_227A4C78C();
        if (v34 && (v35 = sub_227A498C0(v33, v34, v32), , v35))
        {

          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v39 = sub_227A7227C();
          __swift_project_value_buffer(v39, qword_27D7DE210);

          v40 = sub_227A7226C();
          v41 = sub_227A728AC();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v48[0] = v43;
            *v42 = 136315138;
            *(v42 + 4) = sub_227A46730(v24[3], v24[4], v48);
            _os_log_impl(&dword_227904000, v40, v41, "%s-> No need to handle participant update since all pseudonyms allowed already.", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v43);
            MEMORY[0x22AAA1930](v43, -1, -1);
            MEMORY[0x22AAA1930](v42, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v25 = a3[7];
      if (v25)
      {
        v26 = a3[8];
        sub_2279F4B58(v49, v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
          sub_227A6055C(v12);
          v25(v15);
          sub_22790D4C0(v25, v26);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v25, v26);
          __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
          v36 = &qword_27D7DD0D0;
          v37 = &qword_227AA3660;
          v38 = v12;
LABEL_16:
          sub_2279F3774(v38, v36, v37);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_227A5E900(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for JoinChannelActionMessage(0);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for ChannelMigrationActionMessage(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  MEMORY[0x28223BE20](updated);
  v45 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = v8;
  v48[4] = sub_227A589A8(&qword_27D7DE3F8, type metadata accessor for JoinChannelActionMessage, &unk_227AA1998);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_227A60604(a1);
  v22 = *(boxed_opaque_existential_1 + *(v8 + 20));
  v23 = a3;
  switch(v22 >> 6)
  {
    case 1u:
      v26 = a3[13];
      if (v26)
      {
        v27 = a3[14];
        sub_2279F4B58(v48, v47);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v28 = v46;
          sub_227A6055C(v7);
          v26(v28);
          sub_22790D4C0(v26, v27);
          goto LABEL_22;
        }

        sub_22790D4C0(v26, v27);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        v35 = &qword_27D7DD0E8;
        v36 = &qword_227AA36A0;
        v37 = v7;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v48);
    case 3u:
      if (v22 == 193)
      {
        sub_2279F4B58(v48, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v18, 1, 1, updated);
          v35 = &qword_27D7DE398;
          v36 = &qword_227AA5D40;
          v37 = v18;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v18, 0, 1, updated);
        v29 = v45;
        sub_227A6055C(v18);
        v30 = *&v29[*(updated + 24)];
        v47[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v30);
        v31 = v47[0];
        v32 = sub_227A4C78C();
        if (v33 && (v34 = sub_227A498C0(v32, v33, v31), , v34))
        {

          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v38 = sub_227A7227C();
          __swift_project_value_buffer(v38, qword_27D7DE210);

          v39 = sub_227A7226C();
          v40 = sub_227A728AC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v47[0] = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_227A46730(v23[3], v23[4], v47);
            _os_log_impl(&dword_227904000, v39, v40, "%s-> No need to handle participant update since all pseudonyms allowed already.", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v42);
            MEMORY[0x22AAA1930](v42, -1, -1);
            MEMORY[0x22AAA1930](v41, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v24 = a3[7];
      if (v24)
      {
        v25 = a3[8];
        sub_2279F4B58(v48, v47);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
          sub_227A6055C(v12);
          v24(v15);
          sub_22790D4C0(v24, v25);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v24, v25);
          __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
          v35 = &qword_27D7DD0D0;
          v36 = &qword_227AA3660;
          v37 = v12;
LABEL_16:
          sub_2279F3774(v37, v35, v36);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v48);
}

uint64_t sub_227A5F03C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - v6;
  v7 = type metadata accessor for JoinChannelActionMessage(0);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for ChannelMigrationActionMessage(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  MEMORY[0x28223BE20](updated);
  v45 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v49[3] = ScoresActionMessage;
  v49[4] = sub_227A589A8(&qword_27D7DE3C8, type metadata accessor for QueryScoresActionMessage, &unk_227AA1728);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  sub_227A60604(a1);
  v22 = *(boxed_opaque_existential_1 + *(ScoresActionMessage + 28));
  v23 = a3;
  switch(v22 >> 6)
  {
    case 1u:
      v26 = a3[13];
      if (v26)
      {
        v27 = a3[14];
        sub_2279F4B58(v49, v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v28 = v47;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v28, 0, 1, v7);
          v29 = v46;
          sub_227A6055C(v28);
          v26(v29);
          sub_22790D4C0(v26, v27);
          goto LABEL_22;
        }

        sub_22790D4C0(v26, v27);
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v7);
        v36 = &qword_27D7DD0E8;
        v37 = &qword_227AA36A0;
        v38 = v28;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v49);
    case 3u:
      if (v22 == 193)
      {
        sub_2279F4B58(v49, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v17, 1, 1, updated);
          v36 = &qword_27D7DE398;
          v37 = &qword_227AA5D40;
          v38 = v17;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v17, 0, 1, updated);
        v30 = v45;
        sub_227A6055C(v17);
        v31 = *&v30[*(updated + 24)];
        v48[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v31);
        v32 = v48[0];
        v33 = sub_227A4C78C();
        if (v34 && (v35 = sub_227A498C0(v33, v34, v32), , v35))
        {

          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v39 = sub_227A7227C();
          __swift_project_value_buffer(v39, qword_27D7DE210);

          v40 = sub_227A7226C();
          v41 = sub_227A728AC();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v48[0] = v43;
            *v42 = 136315138;
            *(v42 + 4) = sub_227A46730(v23[3], v23[4], v48);
            _os_log_impl(&dword_227904000, v40, v41, "%s-> No need to handle participant update since all pseudonyms allowed already.", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v43);
            MEMORY[0x22AAA1930](v43, -1, -1);
            MEMORY[0x22AAA1930](v42, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v24 = a3[7];
      if (v24)
      {
        v25 = a3[8];
        sub_2279F4B58(v49, v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
          sub_227A6055C(v11);
          v24(v14);
          sub_22790D4C0(v24, v25);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v24, v25);
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
          v36 = &qword_27D7DD0D0;
          v37 = &qword_227AA3660;
          v38 = v11;
LABEL_16:
          sub_2279F3774(v38, v36, v37);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_227A5F78C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - v6;
  v7 = type metadata accessor for JoinChannelActionMessage(0);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for ChannelMigrationActionMessage(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  MEMORY[0x28223BE20](updated);
  v45 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v49[3] = ScoresResponseActionMessage;
  v49[4] = sub_227A589A8(&qword_27D7DE388, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA17E8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  sub_227A60604(a1);
  v22 = *(boxed_opaque_existential_1 + *(ScoresResponseActionMessage + 24));
  v23 = a3;
  switch(v22 >> 6)
  {
    case 1u:
      v26 = a3[13];
      if (v26)
      {
        v27 = a3[14];
        sub_2279F4B58(v49, v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v28 = v47;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v28, 0, 1, v7);
          v29 = v46;
          sub_227A6055C(v28);
          v26(v29);
          sub_22790D4C0(v26, v27);
          goto LABEL_22;
        }

        sub_22790D4C0(v26, v27);
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v7);
        v36 = &qword_27D7DD0E8;
        v37 = &qword_227AA36A0;
        v38 = v28;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v49);
    case 3u:
      if (v22 == 193)
      {
        sub_2279F4B58(v49, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v17, 1, 1, updated);
          v36 = &qword_27D7DE398;
          v37 = &qword_227AA5D40;
          v38 = v17;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v17, 0, 1, updated);
        v30 = v45;
        sub_227A6055C(v17);
        v31 = *&v30[*(updated + 24)];
        v48[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v31);
        v32 = v48[0];
        v33 = sub_227A4C78C();
        if (v34 && (v35 = sub_227A498C0(v33, v34, v32), , v35))
        {

          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v39 = sub_227A7227C();
          __swift_project_value_buffer(v39, qword_27D7DE210);

          v40 = sub_227A7226C();
          v41 = sub_227A728AC();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v48[0] = v43;
            *v42 = 136315138;
            *(v42 + 4) = sub_227A46730(v23[3], v23[4], v48);
            _os_log_impl(&dword_227904000, v40, v41, "%s-> No need to handle participant update since all pseudonyms allowed already.", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v43);
            MEMORY[0x22AAA1930](v43, -1, -1);
            MEMORY[0x22AAA1930](v42, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v24 = a3[7];
      if (v24)
      {
        v25 = a3[8];
        sub_2279F4B58(v49, v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
          sub_227A6055C(v11);
          v24(v14);
          sub_22790D4C0(v24, v25);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v24, v25);
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
          v36 = &qword_27D7DD0D0;
          v37 = &qword_227AA3660;
          v38 = v11;
LABEL_16:
          sub_2279F3774(v38, v36, v37);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_227A5FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_defaultActor_initialize();
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = sub_227A7243C();
  *(a4 + 160) = 0;
  *(a4 + 168) = 0;
  v9 = OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate;
  v10 = sub_227A71C2C();
  __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
  *(a4 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_support + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_283AFCC50;
  swift_unknownObjectWeakAssign();

  *(a4 + 112) = a5;
  *(a4 + 120) = a2;
  *(a4 + 128) = a3;
  return a4;
}

void sub_227A5FFE8()
{
  v1 = OUTLINED_FUNCTION_105_0();
  v2 = type metadata accessor for JoinChannelActionMessage(v1);
  OUTLINED_FUNCTION_149(v2);
  OUTLINED_FUNCTION_102_1();
  sub_227A583BC(v0, v3);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227A600A4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A55C7C(v3, v4, v5, v6, v7);
}

uint64_t sub_227A60130()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A5639C(v3, v4, v5, v6, v7);
}

uint64_t sub_227A601BC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A54684(v3, v4, v5, v6, v7);
}

uint64_t sub_227A60248()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A54DB4(v3, v4, v5, v6, v7);
}

uint64_t sub_227A602D4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A603B8()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A5555C(v3, v4, v5, v6, v7);
}

uint64_t sub_227A60444()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A52678(v3, v4, v5, v6, v7);
}

uint64_t sub_227A604D0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A53F70(v3, v4, v5, v6, v7);
}

uint64_t sub_227A6055C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_99_0();
  v3(v2);
  OUTLINED_FUNCTION_51();
  v4 = OUTLINED_FUNCTION_86();
  v5(v4);
  return v1;
}

uint64_t sub_227A605B0()
{
  v1 = OUTLINED_FUNCTION_105_0();
  v2(v1);
  OUTLINED_FUNCTION_51();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_227A60604(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_99_0();
  v3(v2);
  OUTLINED_FUNCTION_51();
  v4 = OUTLINED_FUNCTION_86();
  v5(v4);
  return v1;
}

uint64_t sub_227A60658()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_227A56F98(v5, v6, v7, v1);
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_129_0();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  sub_227A71C6C();
  OUTLINED_FUNCTION_51();
  (*(v4 + 8))(v1 + v3);

  return MEMORY[0x2821FE8E8](v1);
}

void sub_227A607D8()
{
  v1 = OUTLINED_FUNCTION_105_0();
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(v1);
  OUTLINED_FUNCTION_149(ScoresResponseActionMessage);
  OUTLINED_FUNCTION_102_1();
  sub_227A583BC(v0, v3);
}

uint64_t sub_227A608A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_149(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_227A60928()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A4F0F4(v3, v4, v5, v6, v7);
}

uint64_t sub_227A609B4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A502DC(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_69Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_227A60A80()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_227A582D4(v5, v6, v7, v1);
}

uint64_t objectdestroy_12Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_51();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t OUTLINED_FUNCTION_31_2()
{
}

double OUTLINED_FUNCTION_33_3()
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_36_2()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{
  *(v2 - 112) = a1;
  *(v2 - 136) = v1;
  sub_2279FF11C((v2 - 136), (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_227A6055C(v0);
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_227A605B0();
}

uint64_t OUTLINED_FUNCTION_67_2(unint64_t *a1)
{

  return sub_227A589A8(a1, v1, &unk_227AA2450);
}

uint64_t OUTLINED_FUNCTION_83_0()
{
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_108_1(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 32;
}

uint64_t OUTLINED_FUNCTION_113_1(unint64_t *a1)
{

  return sub_227A589A8(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return sub_227A4C78C();
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

unint64_t OUTLINED_FUNCTION_116_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);

  return sub_227A46730(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_118_0()
{
}

unint64_t OUTLINED_FUNCTION_121_0()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_227A46730(v3, v4, (v1 - 120));
}

uint64_t OUTLINED_FUNCTION_132_0()
{
}

void OUTLINED_FUNCTION_134_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_135_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_136_0()
{

  JUMPOUT(0x22AA9FBC0);
}

uint64_t OUTLINED_FUNCTION_137_0()
{
}

void OUTLINED_FUNCTION_138_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

void OUTLINED_FUNCTION_139_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t TransportMonitorPlayerStat.monitoring.getter()
{
  v1 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring);

  return v1;
}

uint64_t TransportMonitorPlayerStat.description.getter()
{
  sub_227A72B1C();
  MEMORY[0x22AA9FE40](0x666F206574617453, 0xE900000000000020);
  MEMORY[0x22AA9FE40](*(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring), *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring + 8));
  MEMORY[0x22AA9FE40](0x6E6574616C7B203ALL, 0xEC000000203A7963);
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0xD000000000000012, 0x8000000227A9F970);
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0x6F43746E6573202CLL, 0xED0000203A746E75);
  v1 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v1);

  MEMORY[0x22AA9FE40](0xD000000000000011, 0x8000000227A9F990);
  v2 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v2);

  MEMORY[0x22AA9FE40](125, 0xE100000000000000);
  return 0;
}

id TransportMonitorPlayerStat.init(monitoring:latency:averageLatency:sentCount:receivedCount:)()
{
  OUTLINED_FUNCTION_1_21();
  ObjectType = swift_getObjectType();
  v8 = &v1[OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring];
  *v8 = v4;
  *(v8 + 1) = v3;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_latency] = v6;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_averageLatency] = v5;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_sentCount] = v2;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_receivedCount] = v0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_227A61A3C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_227A7240C();

  return v5;
}

void *sub_227A61AC0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___GKTransportMonitorStat_playerStats);
  v3 = sub_227A7243C();
  v4 = sub_227A06998();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      return v3;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAA03F0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = *&v6[OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring];
    v8 = *&v6[OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring + 8];
    v10 = *&v6[*a1];
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_2279FDBCC(v9, v8);
    if (__OFADD__(v3[2], (v12 & 1) == 0))
    {
      goto LABEL_20;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE560, &qword_227AA5F50);
    if (sub_227A72C2C())
    {
      v15 = sub_2279FDBCC(v9, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v13 = v15;
    }

    if (v14)
    {
      *(v3[7] + 8 * v13) = v10;
    }

    else
    {
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v9;
      v17[1] = v8;
      *(v3[7] + 8 * v13) = v10;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v3[2] = v20;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_227A72EAC();
  __break(1u);
  return result;
}

uint64_t sub_227A61D28(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___GKTransportMonitorStat_playerStats);
  result = sub_227A06998();
  v5 = result;
  v6 = 0;
  for (i = 0.0; ; i = i + v9)
  {
    if (v6 == v5)
    {
      return sub_227A06998();
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x22AAA03F0](v6, v3);
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_13;
      }

      v9 = *(result + *a1);
      result = swift_unknownObjectRelease();
      continue;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v3 + 32 + 8 * v6++);
    v9 = *(v8 + *a1);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void TransportMonitorStat.overallPacketLoss.getter()
{
  v1 = *(v0 + OBJC_IVAR___GKTransportMonitorStat_playerStats);
  v2 = sub_227A06998();
  v3 = 0;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v5)
    {
      v6 = MEMORY[0x22AAA03F0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v7 = *&v6[OBJC_IVAR___GKTransportMonitorPlayerStat_sentCount];

    ++v3;
    v8 = __OFADD__(v4, v7);
    v4 += v7;
    if (v8)
    {
      goto LABEL_24;
    }
  }

  v9 = sub_227A06998();
  v10 = 0;
  v11 = 0;
  while (v9 != v10)
  {
    if (v5)
    {
      v12 = MEMORY[0x22AAA03F0](v10, v1);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v12 = *(v1 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_25;
    }

    v13 = *&v12[OBJC_IVAR___GKTransportMonitorPlayerStat_receivedCount];

    ++v10;
    v8 = __OFADD__(v11, v13);
    v11 += v13;
    if (v8)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_91();
}

id sub_227A61FBC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_227A724BC();

  return v5;
}

uint64_t TransportMonitorStat.description.getter()
{
  sub_227A72B1C();
  MEMORY[0x22AA9FE40](0xD000000000000019, 0x8000000227A9F9F0);
  TransportMonitorStat.overallLatency.getter();
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0xD000000000000012, 0x8000000227A9F970);
  TransportMonitorStat.overallAverageLatency.getter();
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0x74656B636170202CLL, 0xEE00203A73736F4CLL);
  TransportMonitorStat.overallPacketLoss.getter();
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](125, 0xE100000000000000);
  return 0;
}

id sub_227A62144(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GKTransportMonitorStat_playerStats] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TransportMonitorStat.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_227A62254(uint64_t a1)
{
  v3 = sub_227A71D0C();
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2279FDB38();
  OUTLINED_FUNCTION_0_26();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE570, &qword_227AA5FE8);
  if ((OUTLINED_FUNCTION_2_17(v11) & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2279FDB38();
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_227A72EAC();
    __break(1u);
    return;
  }

  v9 = v12;
LABEL_5:
  v14 = *v1;
  if (v10)
  {
    *(v14[7] + 8 * v9) = a1;
    OUTLINED_FUNCTION_91();
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    v17();
    sub_227A629A8(v9, v5, a1, v14);
    OUTLINED_FUNCTION_91();
  }
}

_OWORD *sub_227A623E4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_2279FDBCC(a2, a3);
  OUTLINED_FUNCTION_0_26();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8B0, &qword_227AA0E40);
  if ((OUTLINED_FUNCTION_2_17(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_2279FDBCC(a2, a3);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    v16 = (v15[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    return sub_2279FF11C(a1, v16);
  }

  else
  {
    sub_227A62A60(v10, a2, a3, a1, v15);
  }
}

uint64_t sub_227A62510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2279FDBCC(a2, a3);
  OUTLINED_FUNCTION_0_26();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFD8, &qword_227AA4A60);
  if ((OUTLINED_FUNCTION_2_17(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_2279FDBCC(a2, a3);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    *(v15[7] + 8 * v10) = a1;
  }

  else
  {
    sub_227A62ACC(v10, a2, a3, a1, v15);
  }
}

uint64_t sub_227A62630(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_2279FDBCC(a1, a2);
  OUTLINED_FUNCTION_0_26();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE560, &qword_227AA5F50);
  result = sub_227A72C2C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_2279FDBCC(a1, a2);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a4;
  }

  else
  {
    sub_227A62B14(v11, a1, a2, v15, a4);
  }

  return result;
}

uint64_t sub_227A62750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_2279FDBCC(a3, a4);
  OUTLINED_FUNCTION_0_26();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE568, &unk_227AA5FD8);
  if ((sub_227A72C2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_2279FDBCC(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
    OUTLINED_FUNCTION_91();
  }

  else
  {
    sub_227A62BE8(v13, a3, a4, a1, a2, v17);
    OUTLINED_FUNCTION_91();
  }
}

id sub_227A62888(uint64_t a1, void *a2, char a3)
{
  sub_2279FDC44();
  OUTLINED_FUNCTION_0_26();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFC8, &qword_227AA4A48);
  if ((sub_227A72C2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_2279FDC44();
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_227A40414();
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a1;
  }

  else
  {
    sub_227A62C34(v8, a2, a1, v12);

    return a2;
  }
}

uint64_t sub_227A629A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_227A71D0C();
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

_OWORD *sub_227A62A60(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2279FF11C(a4, (a5[7] + 32 * a1));
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

unint64_t sub_227A62ACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_227A62B14(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
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

unint64_t sub_227A62BE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_227A62C34(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return sub_227A72C2C();
}

uint64_t sub_227A62CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v5 = OUTLINED_FUNCTION_149(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_227A7276C();
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_12_1();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  OUTLINED_FUNCTION_12_1();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_227AA6108;
  v13[5] = v12;
  sub_227A659A8(0, 0, v7, &unk_227AA6118, v13);
}

id LimitedPresentationManager.init(defaultsKey:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v7 = OUTLINED_FUNCTION_149(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
  v11 = sub_227A71C2C();
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v2[14] = a1;
  v2[15] = a2;
  if (a2 && (v15 = objc_opt_self(), , v16 = [v15 standardUserDefaults], v17 = sub_227A724BC(), , v18 = objc_msgSend(v16, sel_dictionaryForKey_, v17), v16, v17, v18) && (v19 = sub_227A7241C(), v18, v19))
  {
    sub_2279F9104(v19, &v38, 0x746E756F63, 0xE500000000000000);
    if (*(&v39 + 1))
    {
      if (OUTLINED_FUNCTION_17_5(v20, v21, v22, MEMORY[0x277D83B88]))
      {
        v23 = v36;
      }

      else
      {
        v23 = 0;
      }

      v2[16] = v23;
      goto LABEL_13;
    }

    v24 = 0;
  }

  else
  {
    v19 = 0;
    v38 = 0u;
    v39 = 0u;
    v24 = 1;
  }

  sub_227A04918(&v38, &qword_27D7DC610, &qword_227AA0590);
  v2[16] = 0;
  if (v24)
  {
    v38 = 0u;
    v39 = 0u;
    v25 = 1;
    goto LABEL_16;
  }

LABEL_13:
  sub_2279F9104(v19, &v38, 1702125924, 0xE400000000000000);
  if (*(&v39 + 1))
  {
    v26 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v9, v26 ^ 1u, 1, v11);
    v25 = 0;
    goto LABEL_17;
  }

  v25 = 0;
LABEL_16:
  sub_227A04918(&v38, &qword_27D7DC610, &qword_227AA0590);
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
LABEL_17:
  swift_beginAccess();
  sub_227A346D0(v9, v2 + v10);
  swift_endAccess();
  if (v25)
  {
    v38 = 0u;
    v39 = 0u;
LABEL_22:
    sub_227A04918(&v38, &qword_27D7DC610, &qword_227AA0590);
    goto LABEL_23;
  }

  sub_2279F9104(v19, &v38, 0x6465646565637865, 0xED000074696D694CLL);

  if (!*(&v39 + 1))
  {
    goto LABEL_22;
  }

  if (!OUTLINED_FUNCTION_17_5(v30, v31, v32, MEMORY[0x277D839B0]))
  {
LABEL_23:
    v33 = 0;
    goto LABEL_24;
  }

  v33 = v36;
LABEL_24:
  *(v2 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = v33;
  v37.receiver = v2;
  v37.super_class = ObjectType;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t LimitedPresentationManager.presentationDisabled(config:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_5_12(sub_227A631CC, v2);
}

uint64_t sub_227A631CC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = v0[2];
  sub_227A6324C();
  v3 = sub_227A63540(v2, v1);
  sub_227A64078();
  v4 = v0[1];

  return v4(v3 & 1);
}

void sub_227A6324C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  if (*(v0 + 120))
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = sub_227A724BC();
    v6 = [v4 dictionaryForKey_];

    if (v6)
    {
      v7 = sub_227A7241C();
    }

    else
    {
      v7 = sub_227A7243C();
    }

    sub_2279F9104(v7, &v17, 0x746E756F63, 0xE500000000000000);
    if (v18)
    {
      if (swift_dynamicCast())
      {
        v8 = v16;
        goto LABEL_10;
      }
    }

    else
    {
      sub_227A04918(&v17, &qword_27D7DC610, &qword_227AA0590);
    }

    v8 = 0;
LABEL_10:
    *(v0 + 128) = v8;
    sub_2279F9104(v7, &v17, 1702125924, 0xE400000000000000);
    if (v18)
    {
      v9 = sub_227A71C2C();
      v10 = swift_dynamicCast() ^ 1;
      v11 = v3;
      v12 = v9;
    }

    else
    {
      sub_227A04918(&v17, &qword_27D7DC610, &qword_227AA0590);
      v12 = sub_227A71C2C();
      v11 = v3;
      v10 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v10, 1, v12);
    v13 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
    swift_beginAccess();
    sub_227A346D0(v3, v0 + v13);
    swift_endAccess();
    sub_2279F9104(v7, &v17, 0x6465646565637865, 0xED000074696D694CLL);

    if (v18)
    {
      if (swift_dynamicCast())
      {
        v14 = v16;
LABEL_18:
        *(v0 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = v14;
        return;
      }
    }

    else
    {
      sub_227A04918(&v17, &qword_27D7DC610, &qword_227AA0590);
    }

    v14 = 0;
    goto LABEL_18;
  }
}

uint64_t sub_227A63540(void *a1, void *a2)
{
  v3 = v2;
  v103 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v92 - v9;
  v11 = sub_227A71C2C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v92 - v23;
  if (![a1 enabled])
  {
    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v26 = sub_227A7227C();
    __swift_project_value_buffer(v26, qword_280B551E8);
    v27 = v103;
    v28 = sub_227A7226C();
    v29 = sub_227A7289C();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_9;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v105[0] = v31;
    *v30 = 136315138;
    v32 = sub_227A650F4();
    v34 = sub_227A46730(v32, v33, v105);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_227904000, v28, v29, "GKLimitedPresentationManager %s: Disabled by the bag", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x22AAA1930](v31, -1, -1);
    v35 = v30;
LABEL_8:
    MEMORY[0x22AAA1930](v35, -1, -1);
LABEL_9:

    return 1;
  }

  v101 = v12;
  v25 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
  swift_beginAccess();
  sub_227A34844(v3 + v25, v10, &qword_27D7DD358, &unk_227AA3BF0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_227A04918(v10, &qword_27D7DD358, &unk_227AA3BF0);
  }

  else
  {
    (*(v101 + 32))(v24, v10, v11);
    if (sub_227A6509C(a1) && ([a1 resetPeriod], v37 >= 0.0) && (v38 = sub_227A64FC0(v24), objc_msgSend(a1, sel_resetPeriod), v39 <= v38))
    {
      if (qword_280B551E0 != -1)
      {
        swift_once();
      }

      v76 = sub_227A7227C();
      __swift_project_value_buffer(v76, qword_280B551E8);
      (*(v101 + 16))(v20, v24, v11);
      v98 = v103;
      v99 = a1;
      v100 = sub_227A7226C();
      v77 = sub_227A7289C();

      v97 = v77;
      if (os_log_type_enabled(v100, v77))
      {
        v78 = swift_slowAlloc();
        v96 = v78;
        v95 = swift_slowAlloc();
        v104 = v95;
        *v78 = 136315650;
        v79 = sub_227A650F4();
        v98 = sub_227A46730(v79, v80, &v104);

        v81 = v96;
        *(v96 + 1) = v98;
        *(v81 + 6) = 2080;
        sub_227A660BC();
        v82 = sub_227A72E1C();
        v84 = v83;
        v85 = *(v101 + 8);
        v93 = v82;
        v94 = v85;
        v98 = (v101 + 8);
        v85(v20, v11);
        v86 = sub_227A46730(v93, v84, &v104);

        v87 = v96;
        *(v96 + 14) = v86;
        *(v87 + 11) = 2048;
        [v99 resetPeriod];
        *(v87 + 3) = v88;
        _os_log_impl(&dword_227904000, v100, v97, "GKLimitedPresentationManager %s: reset period has passed (lastAppearanceDate = %s, resetPeriod = %f). resetting count to 0", v87, 0x20u);
        v89 = v95;
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v89, -1, -1);
        MEMORY[0x22AAA1930](v87, -1, -1);

        v94(v24, v11);
      }

      else
      {

        v90 = v20;
        v91 = *(v101 + 8);
        v91(v90, v11);
        v91(v24, v11);
      }

      *(v3 + 128) = 0;
      *(v3 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = 1;
    }

    else
    {
      (*(v101 + 8))(v24, v11);
    }
  }

  if (sub_227A6509C(a1))
  {
    if (*(v3 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit))
    {
      v41 = &selRef_limit;
    }

    else
    {
      v41 = &selRef_initialLimit;
    }

    v40 = *(v3 + 128);
    if (v40 != [a1 *v41])
    {
      return 1;
    }

    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v42 = sub_227A7227C();
    __swift_project_value_buffer(v42, qword_280B551E8);
    swift_retain_n();
    v43 = a1;
    v44 = v103;
    v45 = v43;
    v28 = sub_227A7226C();
    v46 = sub_227A7289C();

    if (!os_log_type_enabled(v28, v46))
    {

      return 1;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v104 = v48;
    *v47 = 136315650;
    v49 = sub_227A650F4();
    v51 = sub_227A46730(v49, v50, &v104);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2048;
    v52 = *(v3 + 128);

    *(v47 + 14) = v52;

    *(v47 + 22) = 2048;
    if (*(v3 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit))
    {
      v53 = &selRef_limit;
    }

    else
    {
      v53 = &selRef_initialLimit;
    }

    v54 = [v45 *v53];

    *(v47 + 24) = v54;

    _os_log_impl(&dword_227904000, v28, v46, "GKLimitedPresentationManager %s: limit exceeded (count = %ld, effective limit = %ld). Disabling presentation until reset period passes.", v47, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AAA1930](v48, -1, -1);
    v35 = v47;
    goto LABEL_8;
  }

  sub_227A34844(v3 + v25, v7, &qword_27D7DD358, &unk_227AA3BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_227A04918(v7, &qword_27D7DD358, &unk_227AA3BF0);
  }

  else
  {
    v55 = v101;
    (*(v101 + 32))(v17, v7, v11);
    v56 = sub_227A64FC0(v17);
    [a1 minTimeBetweenAppearances];
    if (v56 < v57 || ([a1 minTimeBetweenAppearances], v58 < 0.0))
    {
      if (qword_280B551E0 != -1)
      {
        swift_once();
      }

      v59 = sub_227A7227C();
      __swift_project_value_buffer(v59, qword_280B551E8);
      (*(v55 + 16))(v14, v17, v11);
      v60 = v103;
      v61 = a1;
      v62 = sub_227A7226C();
      v63 = sub_227A7289C();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = v103;
        *v64 = 136315650;
        v65 = sub_227A650F4();
        v67 = sub_227A46730(v65, v66, &v104);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2080;
        sub_227A660BC();
        v68 = sub_227A72E1C();
        v70 = v69;
        ObjectType = v17;
        v71 = *(v55 + 8);
        v71(v14, v11);
        v72 = sub_227A46730(v68, v70, &v104);

        *(v64 + 14) = v72;
        *(v64 + 22) = 2048;
        [v61 minTimeBetweenAppearances];
        *(v64 + 24) = v73;
        _os_log_impl(&dword_227904000, v62, v63, "GKLimitedPresentationManager %s: Too soon since last presentation (lastAppearanceDate = %s, minTimeBetween = %f). Disabling presentation.", v64, 0x20u);
        v74 = v103;
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v74, -1, -1);
        MEMORY[0x22AAA1930](v64, -1, -1);

        v71(ObjectType, v11);
      }

      else
      {

        v75 = *(v55 + 8);
        v75(v14, v11);
        v75(v17, v11);
      }

      return 1;
    }

    (*(v55 + 8))(v17, v11);
  }

  return 0;
}

void sub_227A64078()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = sub_227A71C2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00E0;
    *(inited + 32) = 0x746E756F63;
    *(inited + 40) = 0xE500000000000000;
    v9 = MEMORY[0x277D83B88];
    *(inited + 48) = *(v0 + 128);
    *(inited + 72) = v9;
    strcpy((inited + 80), "exceededLimit");
    *(inited + 94) = -4864;
    v10 = *(v0 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit);
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 96) = v10;
    v11 = sub_227A7243C();
    v12 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
    swift_beginAccess();
    sub_227A34844(v0 + v12, v3, &qword_27D7DD358, &unk_227AA3BF0);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_227A04918(v3, &qword_27D7DD358, &unk_227AA3BF0);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v20 = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
      sub_2279FF11C(&v19, v18);
      swift_isUniquelyReferenced_nonNull_native();
      v17[1] = v11;
      sub_227A623E4(v18, 1702125924, 0xE400000000000000);
      (*(v5 + 8))(v7, v4);
    }

    v14 = [objc_opt_self() standardUserDefaults];
    v15 = sub_227A7240C();

    v16 = sub_227A724BC();
    [v14 setValue:v15 forKey:v16];
  }
}

uint64_t sub_227A64468(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_227A64540;

  return LimitedPresentationManager.presentationDisabled(config:context:)(v7, v8);
}

uint64_t sub_227A64540()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_36();
  v2 = v1[5];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_13_6();
  v8(v7);
  _Block_release(v2);
  OUTLINED_FUNCTION_41();

  return v9();
}

uint64_t LimitedPresentationManager.presentationDisabled(config:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_5_12(sub_227A646C0, v1);
}

id sub_227A646C0()
{
  OUTLINED_FUNCTION_42();
  result = [objc_allocWithZone(GKLimitedPresentationContext) initWithScope:0 elementType:0];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    sub_227A6324C();
    v4 = sub_227A63540(v3, v2);
    sub_227A64078();

    v5 = *(v0 + 8);

    return v5(v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227A647F8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_227A648BC;

  return LimitedPresentationManager.presentationDisabled(config:)(v5);
}

uint64_t sub_227A648BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_6();
  v7(v6);
  _Block_release(v2);
  OUTLINED_FUNCTION_41();

  return v8();
}

uint64_t LimitedPresentationManager.reset()()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 40) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v2);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A64A94, v0, 0);
}

uint64_t sub_227A64A94()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v2 + 128) = 0;
  sub_227A71C2C();
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
  OUTLINED_FUNCTION_16_6();
  sub_227A346D0(v1, v2 + v7);
  swift_endAccess();
  *(v2 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = 0;
  sub_227A64078();

  OUTLINED_FUNCTION_41();

  return v8();
}

uint64_t sub_227A64B64(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_227A66114;

  return LimitedPresentationManager.reset()();
}

uint64_t LimitedPresentationManager.didPresent()()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 40) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v2);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A64CA0, v0, 0);
}

void sub_227A64CA0()
{
  v2 = *(v0 + 40);
  if (__OFADD__(*(v2 + 128), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_42();
    v3 = *(v0 + 48);
    *(v2 + 128) = v4;
    sub_227A71C1C();
    v5 = sub_227A71C2C();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    v6 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
    OUTLINED_FUNCTION_16_6();
    sub_227A346D0(v3, v2 + v6);
    swift_endAccess();
    sub_227A64078();

    OUTLINED_FUNCTION_41();

    v7();
  }
}

uint64_t sub_227A64D84(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_135();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return sub_227A62CD4(a5, v8);
}

uint64_t sub_227A64DF0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_227A64E98;

  return LimitedPresentationManager.didPresent()();
}

uint64_t sub_227A64E98()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_41();

  return v5();
}

double sub_227A64FC0(uint64_t a1)
{
  v1 = sub_227A71C2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227A71C1C();
  sub_227A71BBC();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return fabs(v6);
}

BOOL sub_227A6509C(void *a1)
{
  if (*(v1 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit))
  {
    v2 = &selRef_limit;
  }

  else
  {
    v2 = &selRef_initialLimit;
  }

  v3 = [a1 *v2];
  return (v3 & 0x8000000000000000) == 0 && *(v1 + 128) >= v3;
}

uint64_t sub_227A650F4()
{
  v3 = sub_227A6546C([v0 scope]);
  MEMORY[0x22AA9FE40](32, 0xE100000000000000);
  v1 = sub_227A6556C([v0 elementType]);
  MEMORY[0x22AA9FE40](v1);

  return v3;
}

void LimitedPresentationManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void LimitedPresentationManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t LimitedPresentationManager.deinit()
{

  sub_227A04918(v0 + OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate, &qword_27D7DD358, &unk_227AA3BF0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LimitedPresentationManager.__deallocating_deinit()
{
  LimitedPresentationManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for LimitedPresentationManager(uint64_t a1)
{
  result = qword_280B550E8;
  if (!qword_280B550E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A652F4(uint64_t a1)
{
  sub_227A2A954(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_227A653DC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_49(v1);

  return v4(v3);
}

uint64_t sub_227A6546C(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
      result = 0x6C61626F6C67;
      break;
    case 2:
      result = 0x6576656C20707061;
      break;
    case 3:
      result = 0x20737365636F7270;
      break;
    default:
      strcpy(v2, "unsupported-");
      v1 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v1);

      result = v2[0];
      break;
  }

  return result;
}

uint64_t sub_227A6556C(uint64_t result)
{
  if (result)
  {
    if (result == 1 || result == 2)
    {
      return 0x206E692D6E676973;
    }

    else
    {
      strcpy(v2, "unsupported-");
      v1 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v1);

      return v2[0];
    }
  }

  return result;
}

uint64_t sub_227A6563C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2279F50E8;

  return v6();
}

uint64_t sub_227A65724()
{
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_14(v1);

  return v4(v3);
}

uint64_t sub_227A657C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2279E5A6C;

  return v7();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_227A658E4()
{
  OUTLINED_FUNCTION_56();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_52(v6);
  *v7 = v8;
  v7[1] = sub_2279F50E8;

  return sub_227A657C0(v2, v3, v4, v5);
}

uint64_t sub_227A659A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_227A34844(a3, v22 - v10, &qword_27D7DC5B8, &qword_227AA04D0);
  v12 = sub_227A7276C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_227A04918(v11, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_227A726EC();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_227A7253C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_227A04918(a3, &qword_27D7DC5B8, &qword_227AA04D0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227A04918(a3, &qword_27D7DC5B8, &qword_227AA04D0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_227A65C84(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227A327F4;

  return v6(a1);
}

uint64_t sub_227A65D7C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_51_1(v1);

  return v4(v3);
}

uint64_t sub_227A65E14()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_51_1(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_135();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_227A65EE4()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_49(v1);

  return v4(v3);
}

uint64_t sub_227A65F74()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v5[1] = sub_2279F50E8;

  return sub_227A647F8(v1, v2, v3);
}

uint64_t sub_227A66020()
{
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_14(v1);

  return v4(v3);
}

unint64_t sub_227A660BC()
{
  result = qword_27D7DE578;
  if (!qword_27D7DE578)
  {
    sub_227A71C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE578);
  }

  return result;
}

double OUTLINED_FUNCTION_16_6()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t ReachabilityCallback_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void ReachabilityCallback(SCNetworkReachabilityRef, SCNetworkReachabilityFlags, void *)"}];

  return [v0 handleFailureInFunction:v1 file:@"GKReachability+NoARC.m" lineNumber:41 description:@"info was NULL in ReachabilityCallback"];
}

uint64_t ReachabilityCallback_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void ReachabilityCallback(SCNetworkReachabilityRef, SCNetworkReachabilityFlags, void *)"}];

  return [v0 handleFailureInFunction:v1 file:@"GKReachability+NoARC.m" lineNumber:42 description:@"info was wrong class in ReachabilityCallback"];
}

void _gkMarkFileAsPurgeable_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 136315394;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, " Can't open %s : %s\n", &v6, 0x16u);
}

void gkEnsureDirectory_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  v3 = v0;
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "Could not create target folder: %@,   %@", v2, 0x16u);
}

void OnBoardingKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getOBBundleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getOBBundleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:35 description:{@"Unable to find class %s", "OBBundle"}];

  __break(1u);
}

void __getOBPrivacyFlowClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getOBPrivacyFlowClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:32 description:{@"Unable to find class %s", "OBPrivacyFlow"}];

  __break(1u);
}

void __getASCArtworkClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getASCArtworkClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKGameInternal.m" lineNumber:27 description:{@"Unable to find class %s", "ASCArtwork"}];

  __break(1u);
}

void __getASCArtworkClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppStoreComponentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKGameInternal.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}