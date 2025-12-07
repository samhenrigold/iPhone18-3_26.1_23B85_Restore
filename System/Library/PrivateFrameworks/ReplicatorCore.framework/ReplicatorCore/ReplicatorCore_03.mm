char *sub_2304761DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2(a4, a5);
  v10 = sub_23047647C(a6, a7, v9);
  v12 = v11;
  v13 = v10;

  if (v12 < 0x8000)
  {
    return v13;
  }

  if (qword_281499E60 != -1)
  {
    swift_once();
  }

  v15 = sub_2304A5B74();
  __swift_project_value_buffer(v15, qword_28149B050);
  v16 = sub_2304A5B54();
  v17 = sub_2304A5E74();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_230430000, v16, v17, "[state-capture] cannot capture state data larger than 32KB", v18, 2u);
    MEMORY[0x23191A000](v18, -1, -1);
  }

  return 0;
}

char *sub_23047647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = sub_2304A3EC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = objc_opt_self();
  v10 = sub_2304A5CC4();
  *v50 = 0;
  v11 = [v9 dataWithPropertyList:v10 format:200 options:0 error:v50];

  v12 = *v50;
  if (!v11)
  {
    v18 = v12;
    sub_2304A3F24();

    swift_willThrow();
    return v11;
  }

  v13 = sub_2304A3FD4();
  v15 = v14;

  v49 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v49);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_40;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v11 = v22;
    *v50 = 1;
    memset(&v50[4], 0, 196);
    sub_230476B88(a1, a2, &v50[136], &v51);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_32;
      }

      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      v21 = __OFSUB__(v31, v32);
      v33 = v31 - v32;
      v23 = v49;
      if (!v21)
      {
LABEL_25:
        if ((v33 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v33))
          {
            *&v50[4] = v33;
            v34 = *&v50[176];
            v11[10] = *&v50[160];
            v11[11] = v34;
            *(v11 + 24) = *&v50[192];
            v35 = *&v50[112];
            v11[6] = *&v50[96];
            v11[7] = v35;
            v36 = *&v50[144];
            v11[8] = *&v50[128];
            v11[9] = v36;
            v37 = *&v50[48];
            v11[2] = *&v50[32];
            v11[3] = v37;
            v38 = *&v50[80];
            v11[4] = *&v50[64];
            v11[5] = v38;
            v39 = *&v50[16];
            *v11 = *v50;
            v11[1] = v39;
            if (v16 != 2)
            {
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_46;
              }

              v24 = HIDWORD(v13) - v13;
              goto LABEL_35;
            }

            if (__OFSUB__(*(v13 + 24), *(v13 + 16)))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

            sub_2304A3FE4();
            v41 = *(v13 + 16);
            v40 = *(v13 + 24);
            sub_2304617C4(v13, v23);
            v21 = __OFSUB__(v40, v41);
            v24 = v40 - v41;
            if (!v21)
            {
              goto LABEL_37;
            }

            __break(1u);
LABEL_32:
            v23 = v49;
            *&v50[4] = 0;
            v42 = *&v50[176];
            v11[10] = *&v50[160];
            v11[11] = v42;
            *(v11 + 24) = *&v50[192];
            v43 = *&v50[112];
            v11[6] = *&v50[96];
            v11[7] = v43;
            v44 = *&v50[144];
            v11[8] = *&v50[128];
            v11[9] = v44;
            v45 = *&v50[48];
            v11[2] = *&v50[32];
            v11[3] = v45;
            v46 = *&v50[80];
            v11[4] = *&v50[64];
            v11[5] = v46;
            v47 = *&v50[16];
            *v11 = *v50;
            v11[1] = v47;
            sub_2304A3FE4();
            v24 = 0;
LABEL_36:
            sub_2304617C4(v13, v23);
LABEL_37:
            if (!__OFADD__(v24, 200))
            {
              return v11;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v23 = v49;
      v24 = BYTE6(v49);
      *&v50[4] = BYTE6(v49);
      v25 = *&v50[176];
      v11[10] = *&v50[160];
      v11[11] = v25;
      *(v11 + 24) = *&v50[192];
      v26 = *&v50[112];
      v11[6] = *&v50[96];
      v11[7] = v26;
      v27 = *&v50[144];
      v11[8] = *&v50[128];
      v11[9] = v27;
      v28 = *&v50[48];
      v11[2] = *&v50[32];
      v11[3] = v28;
      v29 = *&v50[80];
      v11[4] = *&v50[64];
      v11[5] = v29;
      v30 = *&v50[16];
      *v11 = *v50;
      v11[1] = v30;
LABEL_35:
      sub_2304A3FE4();
      goto LABEL_36;
    }

    LODWORD(v33) = HIDWORD(v13) - v13;
    v23 = v49;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v33 = v33;
    goto LABEL_25;
  }

  *v50 = 12;
  sub_230462828(MEMORY[0x277D84F90]);
  sub_230477788(&qword_27DB54510, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
  sub_2304A3F04();
  v11 = v8;
  sub_2304A3EB4();
  (*(v6 + 8))(v8, v5);
  swift_willThrow();
  sub_2304617C4(v13, v49);
  return v11;
}

uint64_t sub_2304769FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_230476A4C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StateCaptureEntry();
  v12 = swift_allocObject();

  v13 = a3;

  sub_230475D28(a1, a2, v13, a4, a5);
  if (qword_28149A260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = qword_28149A268;
  qword_28149A268 = 0x8000000000000000;
  sub_23045C34C(v12, a6, isUniquelyReferenced_nonNull_native);
  qword_28149A268 = v16;
  swift_endAccess();
}

uint64_t sub_230476B88(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_2304A60F4();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_2304A60F4();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_230476C24()
{
  sub_230464B24(v0 + 64, v6, &qword_27DB54518, &qword_2304A7988);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_5Tm(v6, v7);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_28149A568 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_28149A570;
      MEMORY[0x28223BE20](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_230475088(v4);
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    sub_230477834(v6);
  }

  sub_230477834(v0 + 64);
  return swift_deallocClassInstance();
}

void *sub_230476D94()
{
  v8[0] = sub_2304A5ED4();
  v1 = *(v8[0] - 8);
  MEMORY[0x28223BE20](v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2304A5C64();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v6;
  sub_23047773C();
  sub_2304A5C24();
  v8[1] = MEMORY[0x277D84F90];
  sub_230477788(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_2304777D0();
  sub_2304A5FA4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v8[0]);
  v0[4] = sub_2304A5F04();
  return v0;
}

uint64_t sub_230476FDC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  result = sub_230464F00(v3);
  *a2 = result;
  return result;
}

void sub_230477074(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_230469C40(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
}

uint64_t sub_230477124(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_5Tm(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (, sub_230469C40(a2, a3), v14 = v13, , (v14 & 1) != 0))
  {
    if (qword_281499E60 != -1)
    {
      swift_once();
    }

    v26 = sub_2304A5B74();
    __swift_project_value_buffer(v26, qword_28149B050);

    v27 = sub_2304A5B54();
    v28 = sub_2304A5E74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v32[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_23046A5C8(a2, a3, v32);
      _os_log_impl(&dword_230430000, v27, v28, "[state-capture] identifier [%{public}s] is already in use", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x23191A000](v30, -1, -1);
      MEMORY[0x23191A000](v29, -1, -1);
    }

    result = sub_2304A6254();
    __break(1u);
  }

  else
  {
    sub_230464834(a1, v32);
    v15 = swift_allocObject();
    sub_230433DAC(v32, v15 + 16);
    type metadata accessor for StateCaptureItem();
    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v12;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = sub_23047766C;
    v16[7] = v15;
    v17 = qword_28149A758;

    if (v17 != -1)
    {
      swift_once();
    }

    sub_230475F0C(sub_23047766C, v15, v10, v12, a2, a3, (v16 + 8));

    if (qword_281499E60 != -1)
    {
      swift_once();
    }

    v18 = sub_2304A5B74();
    __swift_project_value_buffer(v18, qword_28149B050);

    v19 = sub_2304A5B54();
    v20 = sub_2304A5E94();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v32[0] = v22;
      *v21 = 136446466;
      v23 = sub_23046A5C8(v10, v12, v32);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_23046A5C8(a2, a3, v32);
      _os_log_impl(&dword_230430000, v19, v20, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23191A000](v22, -1, -1);
      MEMORY[0x23191A000](v21, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_23045C498(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v31;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_230477600()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23047766C(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_5Tm(v2 + 2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

char *sub_23047770C(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

unint64_t sub_23047773C()
{
  result = qword_281499D80;
  if (!qword_281499D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281499D80);
  }

  return result;
}

uint64_t sub_230477788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2304777D0()
{
  result = qword_281499DB8;
  if (!qword_281499DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB54370, &qword_2304A7980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DB8);
  }

  return result;
}

uint64_t sub_230477834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54518, &qword_2304A7988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2304778B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2304A5294();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_230464970(a1, &qword_27DB53FD0, &qword_2304A7428);
    sub_23047916C(a2, a3, MEMORY[0x277D46850], MEMORY[0x277D46850], sub_230471050, v9);

    return sub_230464970(v9, &qword_27DB53FD0, &qword_2304A7428);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_23045BC5C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_230477ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23045BF7C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_2304A4FF4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_230469D9C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_2304714B0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_2304A4FF4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_2304798F0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_2304A4FF4();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_230477C7C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_2304A4F74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_230464970(a1, &qword_27DB54650, &qword_2304A74D8);
    sub_230478F44(a2, v7);
    v12 = sub_2304A4084();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_230464970(v7, &qword_27DB54650, &qword_2304A74D8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_23045C148(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2304A4084();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_230477EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2304A4024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_230464970(a1, &qword_27DB546F0, &unk_2304A7A40);
    sub_23047916C(a2, a3, MEMORY[0x277CC9578], MEMORY[0x277CC9578], sub_230472298, v9);

    return sub_230464970(v9, &qword_27DB546F0, &unk_2304A7A40);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_23045C614(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2304780AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54740, &qword_2304A7A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_2304A5054();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_230464970(a1, &unk_27DB54740, &qword_2304A7A60);
    v13 = sub_23046A0EC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_230472548();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_23047A2B8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_230464970(v8, &unk_27DB54740, &qword_2304A7A60);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_23045C810(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_230478334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23047A5D8;
  *(v9 + 24) = v8;
  v12[4] = sub_23047A5E4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_230478D34;
  v12[3] = &block_descriptor_2;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2304784CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = sub_2304A5C04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2304A5C64();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2304A5BF4();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2304A5C94();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v45 - v14;
  v15 = sub_2304A4024();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  swift_beginAccess();
  v53 = a1;
  v25 = *(a1 + 24);
  if (*(v25 + 16))
  {

    v26 = sub_230469C40(v58, v59);
    if (v27)
    {
      (*(v16 + 16))(v24, *(v25 + 56) + *(v16 + 72) * v26, v15);

      (*(v16 + 56))(v24, 0, 1, v15);
      return sub_230464970(v24, &qword_27DB546F0, &unk_2304A7A40);
    }
  }

  v46 = v4;
  v47 = v5;
  v29 = *(v16 + 56);
  v29(v24, 1, 1, v15);
  sub_230464970(v24, &qword_27DB546F0, &unk_2304A7A40);
  v30 = v59;

  sub_2304A4004();
  sub_2304A4014();
  (*(v16 + 8))(v18, v15);
  v29(v22, 0, 1, v15);
  v31 = v53;
  swift_beginAccess();
  v32 = v22;
  v33 = v58;
  sub_230477EA8(v32, v58, v30);
  swift_endAccess();
  sub_2304A5C74();
  *v9 = 100;
  v34 = v48;
  v35 = v49;
  (*(v48 + 104))(v9, *MEMORY[0x277D85178], v49);
  v36 = v50;
  sub_2304A5C84();
  (*(v34 + 8))(v9, v35);
  v37 = *(v51 + 8);
  v38 = v13;
  v39 = v52;
  v37(v38, v52);
  v51 = *(v31 + 16);
  v40 = swift_allocObject();
  v40[2] = v31;
  v40[3] = v33;
  v40[4] = v30;
  aBlock[4] = sub_23047A658;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_19;
  v41 = _Block_copy(aBlock);

  v42 = v54;
  sub_2304A5C34();
  v60 = MEMORY[0x277D84F90];
  sub_23047A6C8(&qword_281499DE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_23047A664();
  v43 = v56;
  v44 = v46;
  sub_2304A5FA4();
  MEMORY[0x231919420](v36, v42, v43, v41);
  _Block_release(v41);
  (*(v47 + 8))(v43, v44);
  (*(v55 + 8))(v42, v57);
  v37(v36, v39);
}

uint64_t sub_230478BD0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_2304A4024();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_beginAccess();

  sub_230477EA8(v8, a2, a3);
  swift_endAccess();
  v10 = a1[7];
  v11 = a1[8];
  __swift_project_boxed_opaque_existential_5Tm(a1 + 4, v10);
  return (*(v11 + 8))(a2, a3, v10, v11);
}

uint64_t sub_230478D5C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_230478DEC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_230469CB8(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_230479720(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_2304711E8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_2304A6224();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2304A6044();
  v8 = sub_230479300(v5, v7);

  v9 = sub_230469CB8(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_230479720(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_230478F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_230469E70(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2304719EC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2304A4084();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_2304A4F74();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_230479C10(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_2304A4F74();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2304790E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23046A0EC(a1);
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
    sub_230471FCC();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_230479F54(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_23047916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_230469C40(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_23047A0C4(v14, v16, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_230479300(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
    v2 = sub_2304A6294();
    v19 = v2;
    sub_2304A61A4();
    v3 = sub_2304A6234();
    if (v3)
    {
      v4 = v3;
      sub_2304A4984();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_23046E490(v12 + 1, 1);
        }

        v2 = v19;
        sub_23047A6C8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
        result = sub_2304A5CF4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2304A6234();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_230479570(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    do
    {
      sub_2304A6394();

      sub_2304A5D54();
      v9 = sub_2304A63B4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230479720(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    sub_2304A4984();
    sub_23047A6C8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
    do
    {
      result = sub_2304A5CF4();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + 8 * v3);
          v14 = (v12 + 8 * v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

      else if (v9 >= v8 || v3 >= v9)
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

unint64_t sub_2304798F0(int64_t a1, uint64_t a2)
{
  v40 = sub_2304A4FF4();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2304A5FC4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_23047A6C8(&qword_281499F88, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      v23 = sub_2304A5CF4();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_230479C10(int64_t a1, uint64_t a2)
{
  v4 = sub_2304A4084();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2304A5FC4();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_23047A6C8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_2304A5CF4();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_2304A4F74() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

uint64_t sub_230479F54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2304A6384();
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

unint64_t sub_23047A0C4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2304A5FC4() + 1) & ~v6;
    while (1)
    {
      sub_2304A6394();

      sub_2304A5D54();
      v11 = sub_2304A63B4();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23047A2B8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2304A5FC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2304A6384();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_2304A5054() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23047A464(uint64_t a1, unint64_t a2)
{
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v4 = sub_2304A5B74();
  __swift_project_value_buffer(v4, qword_28149B008);

  v5 = sub_2304A5B54();
  v6 = sub_2304A5E94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_23046A5C8(a1, a2, &v11);
    _os_log_impl(&dword_230430000, v5, v6, "Publishing %{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23191A000](v8, -1, -1);
    MEMORY[0x23191A000](v7, -1, -1);
  }

  v9 = sub_2304A5D44();
  notify_post((v9 + 32));
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_23047A664()
{
  result = qword_281499DC8;
  if (!qword_281499DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB544D0, &qword_2304A7788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DC8);
  }

  return result;
}

uint64_t sub_23047A6C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23047A718()
{
  result = sub_23047A738();
  qword_28149B068 = result;
  return result;
}

uint64_t sub_23047A738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v25 - v1;
  v3 = sub_2304A3FC4();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  sub_23048BD04(v2);
  v15 = v34;
  (*(v34 + 56))(v2, 0, 1, v3);
  v32 = *(v15 + 32);
  v33 = v15 + 32;
  v32(v14, v2, v3);
  sub_2304A3F64();
  v16 = sub_2304A5B44();
  v29 = *(v15 + 16);
  v30 = v15 + 16;
  v31 = v16;
  v35 = 3;
  *&v17 = 136315138;
  v26 = v17;
  v25[1] = v3;
  v25[0] = v4;
  v27 = v12;
  v28 = v14;
  v18 = v29;
  v29(v9, v12, v3);
  v18(v6, v14, v3);
  v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v20 = swift_allocObject();
  v32((v20 + v19), v6, v3);
  v21 = sub_2304A5B24();
  v22 = *(v34 + 8);
  v23 = v21;
  v22(v12, v3);
  v22(v14, v3);
  return v23;
}

void sub_23047AD7C(void *a1, uint64_t a2)
{
  if (qword_281499E28 != -1)
  {
    swift_once();
  }

  v4 = sub_2304A5B74();
  __swift_project_value_buffer(v4, qword_28149AFF0);
  v5 = a1;
  v6 = sub_2304A5B54();
  v7 = sub_2304A5E74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230430000, v6, v7, "Database corruption detected: %{public}@", v8, 0xCu);
    sub_230464970(v9, &qword_27DB53F30, &qword_2304A7390);
    MEMORY[0x23191A000](v9, -1, -1);
    MEMORY[0x23191A000](v8, -1, -1);
  }

  sub_23047AF38(a2);
  exit(0);
}

void sub_23047AEC8(void *a1)
{
  v3 = *(sub_2304A3FC4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_23047AD7C(a1, v4);
}

void sub_23047AF38(uint64_t a1)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A3FC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v68 = v61 - v8;
  MEMORY[0x28223BE20](v7);
  v67 = v61 - v9;
  v66 = objc_opt_self();
  v10 = [v66 defaultManager];
  v11 = sub_2304A3F54();
  v70[0] = 0;
  v12 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:v70];

  v13 = v70[0];
  if (v12)
  {
    v14 = sub_2304A5DC4();
    v15 = v13;

    v17 = v14;
    v18 = *(v14 + 16);
    if (v18)
    {
      v21 = *(v3 + 16);
      v20 = v3 + 16;
      v19 = v21;
      v22 = *(v20 + 64);
      v61[1] = v17;
      v23 = v17 + ((v22 + 32) & ~v22);
      v64 = *(v20 + 56);
      v69 = (v20 - 8);
      *&v16 = 136315138;
      v62 = v16;
      v24 = v67;
      v25 = v68;
      v63 = v20;
      v65 = v21;
      v21(v67, v23, v2);
      while (1)
      {
        if (qword_281499E28 != -1)
        {
          swift_once();
        }

        v27 = sub_2304A5B74();
        __swift_project_value_buffer(v27, qword_28149AFF0);
        v19(v25, v24, v2);
        v28 = sub_2304A5B54();
        v29 = sub_2304A5E94();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = v2;
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v70[0] = v32;
          *v31 = v62;
          sub_23047B5B4();
          v33 = sub_2304A62D4();
          v35 = v34;
          v36 = *v69;
          (*v69)(v68, v30);
          v37 = sub_23046A5C8(v33, v35, v70);

          *(v31 + 4) = v37;
          _os_log_impl(&dword_230430000, v28, v29, "Removing %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          v38 = v32;
          v25 = v68;
          MEMORY[0x23191A000](v38, -1, -1);
          v39 = v31;
          v2 = v30;
          MEMORY[0x23191A000](v39, -1, -1);
        }

        else
        {

          v36 = *v69;
          (*v69)(v25, v2);
        }

        v40 = [v66 defaultManager];
        v24 = v67;
        v41 = sub_2304A3F54();
        v70[0] = 0;
        v42 = [v40 removeItemAtURL:v41 error:v70];

        if (v42)
        {
          v26 = v70[0];
        }

        else
        {
          v43 = v70[0];
          v44 = sub_2304A3F24();

          swift_willThrow();
        }

        v36(v24, v2);
        v19 = v65;
        v23 += v64;
        if (!--v18)
        {
          break;
        }

        v65(v24, v23, v2);
      }
    }
  }

  else
  {
    v45 = v70[0];
    v46 = sub_2304A3F24();

    swift_willThrow();
    if (qword_281499E28 != -1)
    {
      swift_once();
    }

    v47 = sub_2304A5B74();
    __swift_project_value_buffer(v47, qword_28149AFF0);
    (*(v3 + 16))(v6, a1, v2);
    v48 = v46;
    v49 = sub_2304A5B54();
    v50 = sub_2304A5E94();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = v3;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136315394;
      sub_23047B5B4();
      v54 = sub_2304A62D4();
      v56 = v55;
      (*(v51 + 8))(v6, v2);
      v57 = sub_23046A5C8(v54, v56, v70);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v58 = sub_2304A6324();
      v60 = sub_23046A5C8(v58, v59, v70);

      *(v52 + 14) = v60;
      _os_log_impl(&dword_230430000, v49, v50, "Unable to clean up %s: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23191A000](v53, -1, -1);
      MEMORY[0x23191A000](v52, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

unint64_t sub_23047B5B4()
{
  result = qword_28149AC60;
  if (!qword_28149AC60)
  {
    sub_2304A3FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149AC60);
  }

  return result;
}

uint64_t sub_23047B648()
{
  v0 = sub_2304A5B74();
  __swift_allocate_value_buffer(v0, qword_28149B008);
  __swift_project_value_buffer(v0, qword_28149B008);
  return sub_2304A5B64();
}

uint64_t sub_23047B6F4()
{
  v0 = sub_2304A5B74();
  __swift_allocate_value_buffer(v0, qword_28149B020);
  __swift_project_value_buffer(v0, qword_28149B020);
  return sub_2304A5B64();
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

uint64_t sub_23047B800(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2304A5B74();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2304A5B64();
}

uint64_t sub_23047B878()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54520, qword_2304A7B08);
    sub_230474FF4(&qword_281499DF0, &unk_27DB54520, qword_2304A7B08, MEMORY[0x277CBCE48]);
    v1 = sub_2304A5BC4();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_23047B93C()
{
  v9 = sub_2304A5ED4();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2304A5C64();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23047773C();
  v8[1] = "v20@?0i8r^{__CFDictionary=}12";
  v8[2] = v6;
  sub_2304A5C44();
  v11 = MEMORY[0x277D84F90];
  sub_23047BE04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980, MEMORY[0x277D83970]);
  sub_2304A5FA4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v9);
  *(v0 + 16) = sub_2304A5F04();
  *(v0 + 24) = 0;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54520, qword_2304A7B08);
  swift_allocObject();
  *(v0 + 32) = sub_2304A5BB4();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = MKBDeviceUnlockedSinceBoot() == 1;
  *(v0 + 48) = sub_23047BC40();
  return v0;
}

uint64_t sub_23047BBCC()
{
  MKBEventsUnregister();

  return swift_deallocClassInstance();
}

uint64_t sub_23047BC40()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_230433394;
  v8[5] = v0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23043331C;
  v8[3] = &block_descriptor_3;
  v1 = _Block_copy(v8);

  v2 = MKBEventsRegister();
  _Block_release(v1);
  if (!v2)
  {
    if (qword_27DB53E40 != -1)
    {
      swift_once();
    }

    v3 = sub_2304A5B74();
    __swift_project_value_buffer(v3, qword_27DB54BC0);
    v4 = sub_2304A5B54();
    v5 = sub_2304A5E74();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_230430000, v4, v5, "Failed to begin observing keybag: nil pointer", v6, 2u);
      MEMORY[0x23191A000](v6, -1, -1);
    }
  }

  return v2;
}

unint64_t sub_23047BE04()
{
  result = qword_281499D98;
  if (!qword_281499D98)
  {
    sub_2304A5EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499D98);
  }

  return result;
}

uint64_t sub_23047BE5C(uint64_t a1)
{
  v46 = sub_2304A4434();
  v3 = *(v46 - 8);
  v4 = MEMORY[0x28223BE20](v46);
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = v37 - v6;
  v7 = sub_2304A4BE4();
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2304A4E64();
  v47 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_2304A6044();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v63 = MEMORY[0x277D84F90];
  sub_23045FB6C(0, v11 & ~(v11 >> 63), 0);
  v12 = v63;
  if (v48)
  {
    result = sub_2304A6194();
  }

  else
  {
    result = sub_2304A5FB4();
    v14 = *(a1 + 36);
  }

  v60 = result;
  v61 = v14;
  v62 = v48 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v37[1] = v1;
    v15 = 0;
    v40 = (v3 + 8);
    v39 = v47 + 32;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v16 = a1;
    }

    v37[2] = v16;
    v41 = a1;
    v38 = v11;
    while (v15 < v11)
    {
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      v51 = v15 + 1;
      v52 = v15;
      v49 = v60;
      v50 = v61;
      v57 = v62;
      sub_230460478(v59, v60, v61, v62, a1);
      v25 = sub_2304A4964();
      v55 = v26;
      v56 = v25;
      v27 = sub_2304A4954();
      v53 = v28;
      v54 = v27;
      v29 = v44;
      sub_2304A4944();
      sub_2304A4414();
      v58 = v12;
      v30 = v10;
      v31 = *v40;
      v32 = v46;
      (*v40)(v29, v46);
      v33 = v45;
      sub_2304A4944();
      sub_2304A4424();
      v31(v33, v32);
      v10 = v30;
      v12 = v58;
      sub_2304A4BB4();
      sub_2304A4E24();

      v63 = v12;
      v35 = *(v12 + 16);
      v34 = *(v12 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_23045FB6C((v34 > 1), v35 + 1, 1);
        v12 = v63;
      }

      *(v12 + 16) = v35 + 1;
      result = (*(v47 + 32))(v12 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35, v10, v42);
      if (v48)
      {
        a1 = v41;
        if (!v57)
        {
          goto LABEL_28;
        }

        if (sub_2304A61C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54130, &qword_2304A74F8);
        v36 = sub_2304A5CE4();
        sub_2304A6244();
        result = v36(v59, 0);
      }

      else
      {
        v18 = v49;
        v17 = v50;
        v19 = v57;
        a1 = v41;
        v20 = sub_230460208(v49, v50, v57, v41);
        v22 = v21;
        v24 = v23;
        result = sub_230433B44(v18, v17, v19);
        v60 = v20;
        v61 = v22;
        v62 = v24 & 1;
      }

      v15 = v52 + 1;
      v11 = v38;
      if (v51 == v38)
      {
        sub_230433B44(v60, v61, v62);
        return v12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

char *sub_23047C3AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v4 = sub_2304A5B74();
    __swift_project_value_buffer(v4, qword_28149B008);
    v5 = sub_2304A5B54();
    v6 = sub_2304A5E94();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_230430000, v5, v6, "Connection invalidated", v7, 2u);
      MEMORY[0x23191A000](v7, -1, -1);
    }

    v8 = *&v3[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock];
    v10 = MEMORY[0x28223BE20](v9);
    MEMORY[0x28223BE20](v10);

    os_unfair_lock_lock(v8 + 4);
    sub_230475088(v11);
    os_unfair_lock_unlock(v8 + 4);
  }

  return result;
}

void sub_23047C558(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_23045AEF0(a2);
  swift_endAccess();
}

void sub_23047C5CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_23047C620();
  }
}

uint64_t sub_23047C620()
{
  v1 = v0;
  v10 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_230480818(v1, &v10);
  os_unfair_lock_unlock(v2 + 4);

  if (v10)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v4 = sub_2304A5B74();
    __swift_project_value_buffer(v4, qword_28149B008);
    v5 = sub_2304A5B54();
    v6 = sub_2304A5E94();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_230430000, v5, v6, "Publishing devices change", v7, 2u);
      MEMORY[0x23191A000](v7, -1, -1);
    }

    v8 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 32);
    __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster), *(v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 24));
    v9 = sub_2304A5144();
    (*(v8 + 8))(v9);
  }

  return result;
}

uint64_t sub_23047C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v212 = a1;
  v163 = a2;
  v2 = sub_2304A4024();
  MEMORY[0x28223BE20](v2 - 8);
  v162 = v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2304A4EE4();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v5 = v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54120, &qword_2304A74F0);
  v6 = MEMORY[0x28223BE20](v185);
  v184 = v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v209 = v150 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v208 = v150 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v207 = v150 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v211 = v150 - v15;
  MEMORY[0x28223BE20](v14);
  v183 = v150 - v16;
  v182 = sub_2304A4B64();
  v186 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  MEMORY[0x28223BE20](v18 - 8);
  v164 = v150 - v19;
  v157 = sub_2304A4544();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54680, &unk_2304A7BA0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v159 = v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v169 = v150 - v24;
  v189 = sub_2304A4434();
  v191 = *(v189 - 8);
  v25 = MEMORY[0x28223BE20](v189);
  v188 = v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v187 = v150 - v27;
  v168 = sub_2304A4BE4();
  v158 = *(v168 - 8);
  v28 = MEMORY[0x28223BE20](v168);
  v190 = v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v176 = v150 - v30;
  v205 = sub_2304A4114();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2304A4E94();
  v170 = *(v175 - 8);
  v32 = MEMORY[0x28223BE20](v175);
  v167 = v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v206 = v150 - v35;
  MEMORY[0x28223BE20](v34);
  v174 = v150 - v36;
  v172 = sub_2304A44F4();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v38 = v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v42 = v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = v150 - v43;
  v45 = sub_2304A4084();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v166 = v150 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v165 = v150 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v173 = v150 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = v150 - v53;
  sub_2304A4034();
  v55 = *(v46 + 48);
  if (v55(v44, 1, v45) == 1)
  {
    sub_230464970(v44, &qword_27DB53F20, &qword_2304A7388);
    if (qword_281499E38 == -1)
    {
LABEL_3:
      v56 = sub_2304A5B74();
      __swift_project_value_buffer(v56, qword_28149B008);
      v57 = sub_2304A5B54();
      v58 = sub_2304A5E74();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_230430000, v57, v58, "Could not create relationship ID from string", v59, 2u);
        MEMORY[0x23191A000](v59, -1, -1);
      }

      v60 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
      swift_allocError();
      (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D462E0], v60);
      return swift_willThrow();
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  v152 = v5;
  v153 = v46;
  v63 = *(v46 + 32);
  v155 = v54;
  v202 = v63;
  v63(v54, v44, v45);
  v64 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  v65 = v212;
  swift_beginAccess();
  sub_230474F80(v65 + v64, v213);
  __swift_project_boxed_opaque_existential_5Tm(v213, v213[3]);
  sub_2304A4214();
  __swift_destroy_boxed_opaque_existential_0Tm(v213);
  sub_2304A44B4();
  sub_2304A4034();

  v66 = v38;
  if (v55(v42, 1, v45) == 1)
  {
    sub_230464970(v42, &qword_27DB53F20, &qword_2304A7388);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v67 = sub_2304A5B74();
    __swift_project_value_buffer(v67, qword_28149B008);
    v68 = sub_2304A5B54();
    v69 = sub_2304A5E74();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v153;
    v72 = v155;
    if (v70)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_230430000, v68, v69, "Could not create device UUID from string", v73, 2u);
      MEMORY[0x23191A000](v73, -1, -1);
    }

    v74 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D462E0], v74);
    swift_willThrow();
    (*(v171 + 8))(v66, v172);
    return (*(v71 + 8))(v72, v45);
  }

  v151 = v45;
  v202(v173, v42, v45);
  v76 = v203;
  sub_2304A4454();
  v77 = v204;
  v78 = v205;
  v79 = (*(v204 + 88))(v76, v205);
  if (v79 != *MEMORY[0x277D46330])
  {
    v82 = v175;
    v80 = v170;
    v83 = v164;
    v84 = v210;
    v81 = v206;
    if (v79 == *MEMORY[0x277D46310])
    {
      v85 = MEMORY[0x277D46710];
    }

    else if (v79 == *MEMORY[0x277D46320])
    {
      v85 = MEMORY[0x277D46720];
    }

    else if (v79 == *MEMORY[0x277D46318])
    {
      v85 = MEMORY[0x277D46718];
    }

    else
    {
      if (v79 != *MEMORY[0x277D46328])
      {
        v87 = *(v170 + 104);
        if (v79 != *MEMORY[0x277D46308])
        {
          v87(v206, *MEMORY[0x277D46730], v175);
          (*(v77 + 8))(v76, v78);
          goto LABEL_24;
        }

        v86 = *MEMORY[0x277D46708];
        goto LABEL_23;
      }

      v85 = MEMORY[0x277D46728];
    }

    v86 = *v85;
    v87 = *(v170 + 104);
LABEL_23:
    v87(v206, v86, v175);
    goto LABEL_24;
  }

  v80 = v170;
  v81 = v206;
  v82 = v175;
  (*(v170 + 104))(v206, *MEMORY[0x277D46730], v175);
  v83 = v164;
  v84 = v210;
LABEL_24:
  (*(v80 + 32))(v174, v81, v82);
  v88 = v187;
  sub_2304A4494();
  sub_2304A4414();
  v89 = v191 + 8;
  v90 = *(v191 + 8);
  v91 = v88;
  v92 = v189;
  v90(v91, v189);
  v93 = v188;
  sub_2304A4494();
  sub_2304A4424();
  v191 = v89;
  v180 = v90;
  v90(v93, v92);
  sub_2304A4BB4();
  v94 = sub_2304A44D4();
  v150[1] = sub_23047BE5C(v94);
  v150[2] = v84;

  v95 = sub_2304A4474();
  v96 = *(v95 + 16);
  if (v96)
  {
    v150[0] = v66;
    v213[0] = MEMORY[0x277D84F90];
    sub_23045FB28(0, v96, 0);
    v97 = v213[0];
    v98 = sub_2304A5FB4();
    v178 = v186 + 32;
    v179 = v95;
    v177 = v95 + 64;
    while (1)
    {
      v205 = v98;
      v192 = v96;
      v206 = v97;
      v99 = *(v95 + 36);
      v100 = v185;
      v101 = *(v185 + 48);
      v102 = v183;
      v193 = v99;
      sub_230460364(v183, v183 + v101, v98, v99, 0, v95);
      v103 = sub_2304A41D4();
      v104 = *(v103 - 8);
      v105 = v211;
      (*(v104 + 32))(v211, v102, v103);
      v106 = *(v100 + 48);
      v107 = sub_2304A41F4();
      v212 = *(v107 - 8);
      v108 = *(v212 + 32);
      v109 = v102 + v101;
      v110 = v107;
      v210 = v107;
      v108(v105 + v106, v109);
      v111 = v207;
      sub_230464B24(v105, v207, &unk_27DB54120, &qword_2304A74F0);
      v204 = *(v100 + 48);
      v203 = sub_2304A41C4();
      v202 = v112;
      v113 = *(v104 + 8);
      v197 = v103;
      v113(v111, v103);
      v198 = v104 + 8;
      v196 = v113;
      v114 = v208;
      sub_230464B24(v105, v208, &unk_27DB54120, &qword_2304A74F0);
      v201 = *(v100 + 48);
      v200 = sub_2304A41A4();
      v199 = v115;
      v113(v114, v103);
      v116 = v209;
      sub_230464B24(v105, v209, &unk_27DB54120, &qword_2304A74F0);
      v117 = *(v100 + 48);
      v118 = v187;
      sub_2304A4194();
      v120 = v212 + 8;
      v119 = *(v212 + 8);
      v119(v116 + v117, v110);
      v195 = v119;
      v212 = v120;
      v194 = sub_2304A4414();
      v121 = v189;
      v122 = v180;
      v180(v118, v189);
      v123 = v184;
      sub_230464B24(v211, v184, &unk_27DB54120, &qword_2304A74F0);
      v124 = *(v100 + 48);
      v125 = v188;
      sub_2304A4194();
      v119(v123 + v124, v210);
      sub_2304A4424();
      v122(v125, v121);
      sub_2304A4BB4();
      v126 = v123;
      v127 = v197;
      v128 = v196;
      v196(v126, v197);
      v128(v209, v127);
      v129 = v181;
      sub_2304A4B24();
      sub_230464970(v211, &unk_27DB54120, &qword_2304A74F0);
      v130 = v210;
      v131 = v195;
      v195(v208 + v201, v210);
      v131(v207 + v204, v130);
      v97 = v206;
      v213[0] = v206;
      v133 = *(v206 + 2);
      v132 = *(v206 + 3);
      if (v133 >= v132 >> 1)
      {
        sub_23045FB28((v132 > 1), v133 + 1, 1);
        v97 = v213[0];
      }

      *(v97 + 2) = v133 + 1;
      (*(v186 + 32))(&v97[((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v133], v129, v182);
      v95 = v179;
      if (v205 < 0 || v205 >= -(-1 << *(v179 + 32)))
      {
        break;
      }

      if (((*(v177 + ((v205 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v205) & 1) == 0)
      {
        goto LABEL_43;
      }

      if (v193 != *(v179 + 36))
      {
        goto LABEL_44;
      }

      v98 = sub_2304A5FD4();
      v96 = v192 - 1;
      if (v192 == 1)
      {

        v66 = v150[0];
        v134 = v151;
        v83 = v164;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v97 = MEMORY[0x277D84F90];
  v134 = v151;
LABEL_35:
  sub_2304A4444();
  v135 = v156;
  v136 = v157;
  v137 = (*(v156 + 48))(v83, 1, v157);
  v206 = v97;
  if (v137 == 1)
  {
    sub_230464970(v83, &unk_27DB54110, &unk_2304A74E0);
    v138 = 1;
    v139 = v169;
  }

  else
  {
    v140 = v154;
    (*(v135 + 32))(v154, v83, v136);
    sub_2304A4534();
    sub_2304A4524();
    sub_2304A4514();
    v139 = v169;
    sub_2304A4F54();
    (*(v135 + 8))(v140, v136);
    v138 = 0;
  }

  v141 = sub_2304A4F64();
  (*(*(v141 - 8) + 56))(v139, v138, 1, v141);
  v142 = v153;
  v143 = *(v153 + 16);
  v143(v165, v173, v134);
  v143(v166, v155, v134);
  v144 = sub_2304A44C4();
  v211 = v145;
  v212 = v144;
  v146 = v158;
  (*(v158 + 16))(v190, v176, v168);
  v147 = v170;
  (*(v170 + 16))(v167, v174, v175);
  sub_230464B24(v139, v159, &unk_27DB54680, &unk_2304A7BA0);
  (*(v160 + 104))(v152, *MEMORY[0x277D46760], v161);
  sub_2304A3FF4();
  sub_2304A4484();
  sub_2304A4464();
  sub_2304A4F24();
  sub_230464970(v169, &unk_27DB54680, &unk_2304A7BA0);
  (*(v146 + 8))(v176, v168);
  (*(v147 + 8))(v174, v175);
  v148 = *(v142 + 8);
  v149 = v151;
  v148(v173, v151);
  (*(v171 + 8))(v66, v172);
  return (v148)(v155, v149);
}

uint64_t sub_23047E1FC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v124 = a2;
  v114 = a3;
  v121 = sub_2304A4084();
  v119 = *(v121 - 8);
  v4 = MEMORY[0x28223BE20](v121);
  v113 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v117 = &v112 - v6;
  v7 = sub_2304A4F74();
  v120 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v112 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v115 = &v112 - v11;
  MEMORY[0x28223BE20](v10);
  v123 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v112 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540F0, &unk_2304A7B90);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v112 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v112 - v28;
  v116 = a1;
  v30 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);
  v122 = v7;
  if (v30)
  {
    v118 = &v112 - v28;
    MEMORY[0x28223BE20](v27);
    *(&v112 - 2) = v124;

    sub_230436E34(sub_23048A350, (&v112 - 4), v30, v22);

    sub_230464ABC(v22, v20, &qword_27DB540F0, &unk_2304A7B90);
    if ((*(v14 + 48))(v20, 1, v13) == 1)
    {
      v31 = v120;
      v29 = v118;
      v32 = v122;
      (*(v120 + 7))(v118, 1, 1, v122);
      v33 = v123;
      v34 = v121;
    }

    else
    {
      sub_230464ABC(v20, v16, &unk_27DB54640, &qword_2304A73F8);
      v31 = v120;
      v29 = v118;
      v32 = v122;
      (*(v120 + 4))(v118, &v16[*(v13 + 48)], v122);
      v34 = v121;
      (*(v119 + 8))(v16, v121);
      (*(v31 + 7))(v29, 0, 1, v32);
      v33 = v123;
    }
  }

  else
  {
    v31 = v120;
    (*(v120 + 7))(&v112 - v28, 1, 1, v7);
    v33 = v123;
    v34 = v121;
    v32 = v7;
  }

  v35 = v124;
  sub_230464B24(v29, v26, &qword_27DB54650, &qword_2304A74D8);
  if ((*(v31 + 6))(v26, 1, v32) == 1)
  {
    sub_230464970(v26, &qword_27DB54650, &qword_2304A74D8);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v36 = sub_2304A5B74();
    __swift_project_value_buffer(v36, qword_28149B008);
    v37 = v119;
    v38 = v117;
    (*(v119 + 16))(v117, v35, v34);
    v39 = sub_2304A5B54();
    v40 = sub_2304A5E74();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v125 = v42;
      *v41 = 136446210;
      sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = sub_2304A62D4();
      v44 = v38;
      v45 = v29;
      v47 = v46;
      (*(v37 + 8))(v44, v34);
      v48 = sub_23046A5C8(v43, v47, &v125);
      v29 = v45;

      *(v41 + 4) = v48;
      _os_log_impl(&dword_230430000, v39, v40, "Could not find relationship ID in device list: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x23191A000](v42, -1, -1);
      MEMORY[0x23191A000](v41, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v38, v34);
    }

    v62 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D462E8], v62);
    swift_willThrow();
    return sub_230464970(v29, &qword_27DB54650, &qword_2304A74D8);
  }

  else
  {
    (*(v31 + 4))(v33, v26, v32);
    v49 = [*(v116 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_idsService) devices];
    if (v49)
    {
      v50 = v49;
      sub_230474F08(0, &qword_27DB54658, 0x277D186E0);
      v51 = sub_2304A5DC4();

      MEMORY[0x28223BE20](v52);
      *(&v112 - 2) = v33;
      v53 = sub_230437148(sub_23048A2F0, (&v112 - 4), v51);

      if (v53)
      {
        v54 = [v53 pushToken];
        if (v54)
        {
          v55 = v54;
          v56 = sub_2304A3FD4();
          v57 = v31;
          v59 = v58;

          sub_230464970(v29, &qword_27DB54650, &qword_2304A74D8);
          v60 = v114;
          *v114 = v56;
          v60[1] = v59;
          return v57[1](v33, v122);
        }

        else
        {
          v118 = v29;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v89 = sub_2304A5B74();
          __swift_project_value_buffer(v89, qword_28149B008);
          v90 = v112;
          v91 = v122;
          (*(v31 + 2))(v112, v33, v122);
          v92 = sub_2304A5B54();
          v93 = sub_2304A5E74();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = v34;
            v95 = v31;
            v96 = swift_slowAlloc();
            v120 = v96;
            v124 = swift_slowAlloc();
            v125 = v124;
            *v96 = 136446210;
            v97 = v90;
            v98 = v113;
            LODWORD(v121) = v93;
            sub_2304A4F04();
            sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v99 = sub_2304A62D4();
            v101 = v100;
            (*(v119 + 8))(v98, v94);
            v102 = *(v95 + 1);
            v102(v97, v91);
            v103 = sub_23046A5C8(v99, v101, &v125);

            v104 = v120;
            *(v120 + 1) = v103;
            v105 = v104;
            _os_log_impl(&dword_230430000, v92, v121, "Device has no push token: %{public}s", v104, 0xCu);
            v106 = v124;
            __swift_destroy_boxed_opaque_existential_0Tm(v124);
            MEMORY[0x23191A000](v106, -1, -1);
            MEMORY[0x23191A000](v105, -1, -1);
          }

          else
          {

            v109 = v90;
            v102 = *(v31 + 1);
            v102(v109, v91);
          }

          v110 = sub_2304A4104();
          sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
          swift_allocError();
          (*(*(v110 - 8) + 104))(v111, *MEMORY[0x277D462F0], v110);
          swift_willThrow();

          sub_230464970(v118, &qword_27DB54650, &qword_2304A74D8);
          return (v102)(v123, v91);
        }
      }

      else
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v72 = sub_2304A5B74();
        __swift_project_value_buffer(v72, qword_28149B008);
        v73 = v115;
        v74 = v122;
        (*(v31 + 2))(v115, v33, v122);
        v75 = sub_2304A5B54();
        v76 = v31;
        v77 = sub_2304A5E74();
        if (os_log_type_enabled(v75, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v80 = v34;
          v118 = v29;
          v81 = v79;
          v125 = v79;
          *v78 = 136446210;
          v82 = v113;
          sub_2304A4F04();
          sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v83 = sub_2304A62D4();
          v85 = v84;
          (*(v119 + 8))(v82, v80);
          v86 = *(v76 + 1);
          v86(v115, v122);
          v87 = sub_23046A5C8(v83, v85, &v125);

          *(v78 + 4) = v87;
          _os_log_impl(&dword_230430000, v75, v77, "IDS service has no matching device with ID %{public}s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          v88 = v81;
          v29 = v118;
          v74 = v122;
          MEMORY[0x23191A000](v88, -1, -1);
          MEMORY[0x23191A000](v78, -1, -1);
        }

        else
        {

          v86 = *(v76 + 1);
          v86(v73, v74);
        }

        v107 = sub_2304A4104();
        sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
        swift_allocError();
        (*(*(v107 - 8) + 104))(v108, *MEMORY[0x277D462F0], v107);
        swift_willThrow();
        sub_230464970(v29, &qword_27DB54650, &qword_2304A74D8);
        return (v86)(v123, v74);
      }
    }

    else
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v64 = sub_2304A5B74();
      __swift_project_value_buffer(v64, qword_28149B008);
      v65 = sub_2304A5B54();
      v66 = sub_2304A5E74();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v32;
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_230430000, v65, v66, "IDS service has no device list", v68, 2u);
        v69 = v68;
        v32 = v67;
        MEMORY[0x23191A000](v69, -1, -1);
      }

      v70 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
      swift_allocError();
      (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D462F0], v70);
      swift_willThrow();
      sub_230464970(v29, &qword_27DB54650, &qword_2304A74D8);
      return (*(v31 + 1))(v33, v32);
    }
  }
}

uint64_t sub_23047F240(id *a1)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 uniqueIDOverride];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2304A5D24();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_2304A4F04();
  v11 = sub_2304A4044();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (v8 == v11 && v10 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_2304A62F4();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_23047F3BC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a2;
  v113 = a3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54638, &unk_2304A7B80);
  MEMORY[0x28223BE20](v138);
  v146 = &v112 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v129 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v131 = &v112 - v9;
  MEMORY[0x28223BE20](v8);
  v132 = &v112 - v10;
  v11 = sub_2304A4084();
  v119 = *(v11 - 1);
  v12 = MEMORY[0x28223BE20](v11);
  v117 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v127 = &v112 - v15;
  MEMORY[0x28223BE20](v14);
  v142 = &v112 - v16;
  v17 = sub_2304A4F74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v121 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v20 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540F0, &unk_2304A7B90);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v112 - v33);
  v143 = a1;
  v35 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);
  v140 = v11;
  v116 = (&v112 - v33);
  v118 = v17;
  if (v35)
  {
    MEMORY[0x28223BE20](v32);
    v36 = v145;
    *(&v112 - 2) = v145;

    v37 = v120;
    sub_230436E34(sub_23048A2B4, (&v112 - 4), v35, v27);
    v120 = v37;

    sub_230464ABC(v27, v25, &qword_27DB540F0, &unk_2304A7B90);
    v38 = v144;
    v39 = v36;
    if ((*(v20 + 48))(v25, 1, v144) == 1)
    {
      v34 = v116;
      v17 = v118;
      (*(v18 + 56))(v116, 1, 1, v118);
      v40 = v140;
    }

    else
    {
      v42 = v25;
      v43 = v141;
      sub_230464ABC(v42, v141, &unk_27DB54640, &qword_2304A73F8);
      v34 = v116;
      v17 = v118;
      (*(v18 + 32))(v116, v43 + *(v38 + 48), v118);
      v40 = v140;
      (*(v119 + 8))(v43, v140);
      (*(v18 + 56))(v34, 0, 1, v17);
    }

    v41 = v132;
  }

  else
  {
    (*(v18 + 56))(&v112 - v33, 1, 1, v17);
    v41 = v132;
    v40 = v11;
    v39 = v145;
  }

  sub_230464B24(v34, v31, &qword_27DB54650, &qword_2304A74D8);
  if ((*(v18 + 48))(v31, 1, v17) == 1)
  {
    sub_230464970(v31, &qword_27DB54650, &qword_2304A74D8);
    if (qword_281499E38 == -1)
    {
LABEL_9:
      v44 = sub_2304A5B74();
      __swift_project_value_buffer(v44, qword_28149B008);
      v45 = v119;
      v46 = v142;
      (*(v119 + 16))(v142, v39, v40);
      v47 = sub_2304A5B54();
      v48 = sub_2304A5E74();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = v40;
        v51 = v34;
        v52 = v50;
        v53 = v49;
        v54 = swift_slowAlloc();
        v147 = v54;
        *v53 = 136446210;
        sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v55 = sub_2304A62D4();
        v56 = v46;
        v58 = v57;
        (*(v45 + 8))(v56, v52);
        v59 = sub_23046A5C8(v55, v58, &v147);
        v34 = v51;

        *(v53 + 4) = v59;
        _os_log_impl(&dword_230430000, v47, v48, "Could not find relationship ID in device list: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x23191A000](v54, -1, -1);
        MEMORY[0x23191A000](v53, -1, -1);
      }

      else
      {

        (*(v45 + 8))(v46, v40);
      }

      v97 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
      swift_allocError();
      (*(*(v97 - 8) + 104))(v98, *MEMORY[0x277D462E8], v97);
      swift_willThrow();
      return sub_230464970(v34, &qword_27DB54650, &qword_2304A74D8);
    }

LABEL_66:
    swift_once();
    goto LABEL_9;
  }

  v112 = v18;
  (*(v18 + 32))(v121, v31, v17);
  v60 = [*(v143 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_idsService) devices];
  if (!v60)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v99 = sub_2304A5B74();
    __swift_project_value_buffer(v99, qword_28149B008);
    v100 = sub_2304A5B54();
    v101 = sub_2304A5E74();
    v102 = os_log_type_enabled(v100, v101);
    v103 = v118;
    v104 = v112;
    if (v102)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_230430000, v100, v101, "IDS service has no device list", v105, 2u);
      MEMORY[0x23191A000](v105, -1, -1);
    }

    v106 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v106 - 8) + 104))(v107, *MEMORY[0x277D462F0], v106);
    swift_willThrow();
    (*(v104 + 8))(v121, v103);
    return sub_230464970(v34, &qword_27DB54650, &qword_2304A74D8);
  }

  v61 = v60;
  sub_230474F08(0, &qword_27DB54658, 0x277D186E0);
  v139 = sub_2304A5DC4();

  v62 = [objc_opt_self() sharedInstance];
  v63 = [v62 devices];

  v64 = [v63 all];
  sub_230474F08(0, &qword_27DB54660, 0x277D37B48);
  v65 = sub_2304A5DC4();

  v122 = v65;
  if (!(v65 >> 62))
  {
    v39 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = v131;
    if (v39)
    {
      goto LABEL_14;
    }

LABEL_68:

    (*(v112 + 8))(v121, v118);
    sub_230464970(v116, &qword_27DB54650, &qword_2304A74D8);
    return (*(v119 + 56))(v113, 1, 1, v140);
  }

  v39 = sub_2304A6044();
  v66 = v131;
  if (!v39)
  {
    goto LABEL_68;
  }

LABEL_14:
  v135 = v139 & 0xFFFFFFFFFFFFFF8;
  if (v139 >> 62)
  {
    v141 = sub_2304A6044();
  }

  else
  {
    v141 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = 0;
  v124 = v122 & 0xC000000000000001;
  v115 = v122 & 0xFFFFFFFFFFFFFF8;
  v114 = v122 + 32;
  v137 = v139 & 0xC000000000000001;
  v136 = (v119 + 56);
  v126 = (v119 + 32);
  v130 = (v119 + 8);
  v34 = &qword_27DB53F20;
  v40 = &qword_2304A7388;
  v123 = v39;
  v134 = (v119 + 48);
  while (1)
  {
    if (v124)
    {
      v68 = MEMORY[0x231919680](v67, v122);
    }

    else
    {
      if (v67 >= *(v115 + 16))
      {
        goto LABEL_65;
      }

      v68 = *(v114 + 8 * v67);
    }

    v142 = v68;
    v69 = __OFADD__(v67, 1);
    v70 = v67 + 1;
    if (v69)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v125 = v70;
    if (v141)
    {
      break;
    }

LABEL_19:

    v39 = v123;
    v67 = v125;
    if (v125 == v123)
    {
      goto LABEL_68;
    }
  }

  v71 = 0;
  while (1)
  {
    if (v137)
    {
      v72 = MEMORY[0x231919680](v71, v139);
    }

    else
    {
      if (v71 >= *(v135 + 16))
      {
        goto LABEL_61;
      }

      v72 = *(v139 + 8 * v71 + 32);
    }

    v73 = v72;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v143 = v71 + 1;
    v144 = v71;
    v74 = [v72 nsuuid];
    v145 = v73;
    if (v74)
    {
      v75 = v74;
      sub_2304A4064();

      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    v77 = *v136;
    v78 = v140;
    (*v136)(v41, v76, 1, v140);
    v79 = [v142 bluetoothIdentifier];
    sub_2304A4064();

    v133 = v77;
    v77(v66, 0, 1, v78);
    v80 = *(v138 + 48);
    v81 = v66;
    v82 = v146;
    sub_230464B24(v41, v146, &qword_27DB53F20, &qword_2304A7388);
    sub_230464B24(v81, v82 + v80, &qword_27DB53F20, &qword_2304A7388);
    v83 = *v134;
    if ((*v134)(v82, 1, v78) == 1)
    {
      break;
    }

    v84 = v146;
    v85 = v129;
    sub_230464B24(v146, v129, &qword_27DB53F20, &qword_2304A7388);
    if (v83(v84 + v80, 1, v78) == 1)
    {
      v66 = v131;
      sub_230464970(v131, &qword_27DB53F20, &qword_2304A7388);
      v41 = v132;
      sub_230464970(v132, &qword_27DB53F20, &qword_2304A7388);
      (*v130)(v85, v78);
      goto LABEL_28;
    }

    v86 = v127;
    (*v126)(v127, v84 + v80, v78);
    sub_2304332D4(&unk_27DB54450, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v128 = sub_2304A5D04();
    v87 = *v130;
    (*v130)(v86, v78);
    v66 = v131;
    sub_230464970(v131, &qword_27DB53F20, &qword_2304A7388);
    v41 = v132;
    sub_230464970(v132, &qword_27DB53F20, &qword_2304A7388);
    v87(v85, v78);
    sub_230464970(v84, &qword_27DB53F20, &qword_2304A7388);
    v11 = v145;
    if (v128)
    {
      goto LABEL_44;
    }

LABEL_29:

    v71 = v144 + 1;
    if (v143 == v141)
    {
      goto LABEL_19;
    }
  }

  sub_230464970(v81, &qword_27DB53F20, &qword_2304A7388);
  sub_230464970(v41, &qword_27DB53F20, &qword_2304A7388);
  v66 = v81;
  if (v83(v146 + v80, 1, v78) != 1)
  {
LABEL_28:
    sub_230464970(v146, &qword_27DB54638, &unk_2304A7B80);
    v34 = &qword_27DB53F20;
    v40 = &qword_2304A7388;
    v11 = v145;
    goto LABEL_29;
  }

  v34 = &qword_27DB53F20;
  v40 = &qword_2304A7388;
  sub_230464970(v146, &qword_27DB53F20, &qword_2304A7388);
  v11 = v145;
LABEL_44:
  v88 = [v11 uniqueIDOverride];
  if (v88)
  {
    v89 = v88;
    v144 = sub_2304A5D24();
    v91 = v90;
  }

  else
  {
    v144 = 0;
    v91 = 0;
  }

  v92 = v117;
  sub_2304A4F04();
  v93 = sub_2304A4044();
  v95 = v94;
  (*v130)(v92, v140);
  if (!v91)
  {

    goto LABEL_18;
  }

  if (v144 != v93 || v91 != v95)
  {
    v96 = sub_2304A62F4();

    if (v96)
    {

      goto LABEL_63;
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_62:

LABEL_63:

  v109 = v142;
  v110 = [v142 pairingID];
  v111 = v113;
  sub_2304A4064();

  (*(v112 + 8))(v121, v118);
  sub_230464970(v116, &qword_27DB54650, &qword_2304A74D8);
  return (v133)(v111, 0, 1, v140);
}

uint64_t sub_23048065C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2304A4084();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_230464B24(a1, &v15 - v9, &unk_27DB54640, &qword_2304A73F8);
  v11 = *(v8 + 56);
  sub_2304A4EC4();
  v12 = sub_2304A4F74();
  (*(*(v12 - 8) + 8))(&v10[v11], v12);
  LOBYTE(a1) = sub_2304A4054();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v10, v3);
  return a1 & 1;
}

void sub_230480818(uint64_t a1, BOOL *a2)
{
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v5 = sub_2304A5B74();
  __swift_project_value_buffer(v5, qword_28149B008);
  v6 = sub_2304A5B54();
  v7 = sub_2304A5E94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_230430000, v6, v7, "Relationships changed", v8, 2u);
    MEMORY[0x23191A000](v8, -1, -1);
  }

  v9 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices;
  v10 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);

  v11 = sub_230480B88();
  if (v2)
  {

    v12 = v2;
    v13 = sub_2304A5B54();
    v14 = sub_2304A5E74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_230430000, v13, v14, "Could not determine new device list: %{public}@", v15, 0xCu);
      sub_230464970(v16, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v16, -1, -1);
      MEMORY[0x23191A000](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v19 = v11;
    if (v10 && (, , v20 = sub_23045969C(v10, v19), , swift_bridgeObjectRelease_n(), (v20 & 1) != 0))
    {

      v21 = sub_2304A5B54();
      v22 = sub_2304A5E94();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_230430000, v21, v22, "Devices have not changed", v23, 2u);
        MEMORY[0x23191A000](v23, -1, -1);
      }
    }

    else
    {
      v24 = sub_2304A5B54();
      v25 = sub_2304A5E94();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_230430000, v24, v25, "Devices have changed", v26, 2u);
        MEMORY[0x23191A000](v26, -1, -1);
      }

      *a2 = *(a1 + v9) != 0;
      *(a1 + v9) = v19;
    }
  }
}

uint64_t sub_230480B88()
{
  v2 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  MEMORY[0x28223BE20](v45);
  v4 = &v38 - v3;
  v5 = sub_2304A4834();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v11;
  v12 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  sub_230474F80(v0 + v12, v47);
  __swift_project_boxed_opaque_existential_5Tm(v47, v48);
  v13 = sub_2304A4554();
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  v46 = 0;
  if (v13)
  {
    sub_230474F80(v2 + v12, v47);
    __swift_project_boxed_opaque_existential_5Tm(v47, v48);
    v46 = sub_2304A4574();
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore), *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore + 24));
  v14 = sub_2304A5404();
  if (v1)
  {

    v15 = sub_2304A51C4();
    v16 = v43;
    (*(*(v15 - 8) + 56))(v43, 1, 1, v15);
  }

  else
  {
    v17 = v14;
    if (*(v14 + 16) && (v18 = sub_230469C40(0xD000000000000011, 0x80000002304A8260), (v19 & 1) != 0))
    {
      v20 = v18;
      v44 = *(v17 + 56);
      v15 = sub_2304A51C4();
      v39 = *(v15 - 8);
      v21 = v44 + *(v39 + 72) * v20;
      v16 = v43;
      (*(v39 + 16))(v43, v21, v15);

      (*(v39 + 56))(v16, 0, 1, v15);
    }

    else
    {

      v15 = sub_2304A51C4();
      v16 = v43;
      (*(*(v15 - 8) + 56))(v43, 1, 1, v15);
    }
  }

  sub_230464B24(v16, v10, &qword_27DB540A0, &qword_2304A7490);
  sub_2304A51C4();
  v22 = *(v15 - 8);
  if ((*(v22 + 48))(v10, 1, v15) == 1)
  {
    sub_230464970(v10, &qword_27DB540A0, &qword_2304A7490);
    LODWORD(v44) = 0;
  }

  else
  {
    LODWORD(v44) = sub_2304A5184();
    (*(v22 + 8))(v10, v15);
  }

  sub_230474F80(v2 + v12, v47);
  __swift_project_boxed_opaque_existential_5Tm(v47, v48);
  v23 = v40;
  sub_2304A4824();
  v24 = sub_2304A4904();
  (*(v41 + 8))(v23, v42);
  v49 = MEMORY[0x277D84F98];
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 64);
  v28 = (v25 + 63) >> 6;

  for (i = 0; v27; i = v30)
  {
    v30 = i;
LABEL_19:
    v31 = __clz(__rbit64(v27)) | (v30 << 6);
    v32 = *(v24 + 48);
    v33 = sub_2304A4084();
    (*(*(v33 - 8) + 16))(v4, v32 + *(*(v33 - 8) + 72) * v31, v33);
    v34 = *(v24 + 56);
    v35 = sub_2304A46C4();
    (*(*(v35 - 8) + 16))(&v4[*(v45 + 48)], v34 + *(*(v35 - 8) + 72) * v31, v35);
    sub_230481254(&v49, v4, v44 & 1, v46);
    v27 &= v27 - 1;
    sub_230464970(v4, &unk_27DB54100, &qword_2304A74D0);
  }

  while (1)
  {
    v30 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      sub_230464970(v43, &qword_27DB540A0, &qword_2304A7490);

      v36 = v49;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      return v36;
    }

    v27 = *(v24 + 64 + 8 * v30);
    ++i;
    if (v27)
    {
      goto LABEL_19;
    }
  }

  __break(1u);

  sub_230464970(v4, &unk_27DB54100, &qword_2304A74D0);

  __break(1u);
  return result;
}

uint64_t sub_230481254(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v299 = a4;
  v352 = a2;
  v304 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  MEMORY[0x28223BE20](v5 - 8);
  v303 = &v292 - v6;
  v7 = sub_2304A4024();
  MEMORY[0x28223BE20](v7 - 8);
  v323 = &v292 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_2304A4F74();
  v301 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v300 = &v292 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  MEMORY[0x28223BE20](v10 - 8);
  v313 = &v292 - v11;
  v315 = sub_2304A4544();
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v298 = &v292 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54680, &unk_2304A7BA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v322 = &v292 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v332 = &v292 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v317 = &v292 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v294 = &v292 - v20;
  v21 = sub_2304A4084();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v319 = &v292 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v320 = &v292 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v321 = &v292 - v28;
  MEMORY[0x28223BE20](v27);
  v293 = &v292 - v29;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54120, &qword_2304A74F0);
  v30 = MEMORY[0x28223BE20](v364);
  v363 = &v292 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v387 = &v292 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v386 = &v292 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v385 = &v292 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v384 = &v292 - v39;
  MEMORY[0x28223BE20](v38);
  v362 = &v292 - v40;
  v361 = sub_2304A4B64();
  v365 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v360 = &v292 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_2304A4EE4();
  v341 = *(v336 - 8);
  v42 = MEMORY[0x28223BE20](v336);
  v318 = &v292 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v308 = &v292 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v309 = &v292 - v47;
  MEMORY[0x28223BE20](v46);
  v335 = &v292 - v48;
  v328 = sub_2304A4BE4();
  v327 = *(v328 - 8);
  v49 = MEMORY[0x28223BE20](v328);
  v366 = &v292 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v340 = &v292 - v51;
  v381 = sub_2304A4114();
  v388 = *(v381 - 8);
  MEMORY[0x28223BE20](v381);
  v383 = &v292 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_2304A4E94();
  v338 = *(v339 - 8);
  v53 = MEMORY[0x28223BE20](v339);
  v316 = &v292 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v337 = &v292 - v55;
  v325 = sub_2304A46A4();
  v326 = *(v325 - 8);
  v56 = MEMORY[0x28223BE20](v325);
  v324 = &v292 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v379 = &v292 - v59;
  MEMORY[0x28223BE20](v58);
  v61 = &v292 - v60;
  v370 = sub_2304A4434();
  v369 = *(v370 - 8);
  v62 = MEMORY[0x28223BE20](v370);
  v367 = &v292 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v368 = &v292 - v64;
  v348 = sub_2304A44F4();
  v65 = *(v348 - 8);
  v66 = MEMORY[0x28223BE20](v348);
  v297 = &v292 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v295 = &v292 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v307 = &v292 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v382 = &v292 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v329 = &v292 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v380 = &v292 - v77;
  MEMORY[0x28223BE20](v76);
  v344 = &v292 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  v80 = MEMORY[0x28223BE20](v79);
  v296 = &v292 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v312 = &v292 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v311 = &v292 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v310 = &v292 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v306 = &v292 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v331 = &v292 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v333 = &v292 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v334 = &v292 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v389 = &v292 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v100 = &v292 - v99;
  v351 = v98;
  v343 = &v292 - v99;
  v346 = v21;
  v347 = v22;
  if ((a3 & 1) == 0)
  {
    sub_230464B24(v352, &v292 - v99, &unk_27DB54100, &qword_2304A74D0);
    v101 = *(v79 + 48);
    v102 = v22;
    v103 = v344;
    sub_2304A4674();
    v104 = sub_2304A46C4();
    v105 = *(v104 - 8);
    v377 = *(v105 + 8);
    v378 = v104;
    v376 = v105 + 8;
    v377(&v100[v101]);
    v106 = v368;
    sub_2304A4494();
    v107 = v103;
    v22 = v102;
    (*(v65 + 8))(v107, v348);
    v108 = sub_2304A4414();
    (*(v369 + 8))(v106, v370);
    v109 = *(v102 + 8);
    v109(v100, v21);
    if (v108 == 7)
    {
      sub_230464B24(v352, v100, &unk_27DB54100, &qword_2304A74D0);
      v110 = *(v351 + 48);
      sub_2304A46B4();
      v100 = v343;
      v79 = v351;
      (v377)(&v343[v110], v378);
      v111 = *MEMORY[0x277D46408];
      v112 = v326;
      v113 = *(v326 + 104);
      v378 = v109;
      v114 = v379;
      v115 = v325;
      v113(v379, v111, v325);
      sub_2304332D4(&qword_27DB54690, MEMORY[0x277D46430], MEMORY[0x277D46438]);
      v116 = sub_2304A5D04();
      v117 = v114;
      LOBYTE(v114) = v116;
      v118 = *(v112 + 8);
      v118(v117, v115);
      v119 = v115;
      v21 = v346;
      v118(v61, v119);
      v22 = v347;
      result = v378(v100, v21);
      if (v114)
      {
        return result;
      }
    }
  }

  v121 = v21;
  v122 = v389;
  sub_230464B24(v352, v389, &unk_27DB54100, &qword_2304A74D0);
  v123 = v79;
  v124 = *(v79 + 48);
  v125 = v380;
  sub_2304A4674();
  v126 = sub_2304A46C4();
  v127 = *(v126 - 8);
  v128 = *(v127 + 8);
  v355 = v126;
  v354 = v128;
  v353 = v127 + 8;
  (v128)(v122 + v124);
  v129 = v383;
  sub_2304A4454();
  v130 = *(v65 + 8);
  v131 = v348;
  v350 = v65 + 8;
  v349 = v130;
  v130(v125, v348);
  v132 = v381;
  v133 = (*(v388 + 88))(v129, v381);
  if (v133 == *MEMORY[0x277D46330])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46730];
LABEL_14:
    v136 = *v135;
    v137 = *(v338 + 104);
LABEL_15:
    v137(v337, v136, v339);
    goto LABEL_16;
  }

  if (v133 == *MEMORY[0x277D46310])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46710];
    goto LABEL_14;
  }

  if (v133 == *MEMORY[0x277D46320])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46720];
    goto LABEL_14;
  }

  if (v133 == *MEMORY[0x277D46318])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46718];
    goto LABEL_14;
  }

  if (v133 == *MEMORY[0x277D46328])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46728];
    goto LABEL_14;
  }

  v137 = *(v338 + 104);
  if (v133 == *MEMORY[0x277D46308])
  {
    v134 = v352;
    v136 = *MEMORY[0x277D46708];
    goto LABEL_15;
  }

  v134 = v352;
  v137(v337, *MEMORY[0x277D46730], v339);
  (*(v388 + 8))(v383, v132);
LABEL_16:
  v330 = *(v22 + 8);
  v342 = v22 + 8;
  v330(v389, v121);
  v138 = v134;
  sub_230464B24(v134, v100, &unk_27DB54100, &qword_2304A74D0);
  v139 = *(v123 + 48);
  v140 = v344;
  sub_2304A4674();
  v354(&v100[v139], v355);
  v141 = v368;
  sub_2304A4494();
  v349(v140, v131);
  v389 = sub_2304A4414();
  v142 = v369 + 8;
  v143 = *(v369 + 8);
  v143(v141, v370);
  v144 = v138;
  v145 = v334;
  sub_230464B24(v144, v334, &unk_27DB54100, &qword_2304A74D0);
  v146 = v131;
  v147 = *(v351 + 48);
  v148 = v329;
  sub_2304A4674();
  v354((v145 + v147), v355);
  v149 = v367;
  sub_2304A4494();
  v349(v148, v146);
  sub_2304A4424();
  v369 = v142;
  v359 = v143;
  v143(v149, v370);
  sub_2304A4BB4();
  v150 = v352;
  v151 = v346;
  v152 = v330;
  v330(v145, v346);
  v152(v100, v151);
  sub_230464B24(v150, v100, &unk_27DB54100, &qword_2304A74D0);
  v153 = *(v351 + 48);
  sub_2304A4674();
  v354(&v100[v153], v355);
  v154 = sub_2304A44D4();
  v155 = v146;
  v156 = v349;
  v349(v140, v155);
  v157 = v345;
  v305 = sub_23047BE5C(v154);
  v345 = v157;

  v158 = v100;
  v159 = v346;
  v152(v158, v346);
  v160 = v351;
  v161 = v150;
  v162 = v333;
  sub_230464B24(v161, v333, &unk_27DB54100, &qword_2304A74D0);
  v163 = *(v160 + 48);
  v164 = v382;
  sub_2304A4674();
  v354((v162 + v163), v355);
  v165 = sub_2304A4474();
  v156(v164, v348);
  v166 = *(v165 + 16);
  if (!v166)
  {

    v388 = MEMORY[0x277D84F90];
    v204 = v352;
LABEL_27:
    v152(v333, v159);
    v205 = v331;
    sub_230464B24(v204, v331, &unk_27DB54100, &qword_2304A74D0);
    v206 = *(v160 + 48);
    v207 = v324;
    sub_2304A46B4();
    v354((v205 + v206), v355);
    v208 = v326;
    v209 = v325;
    v210 = (*(v326 + 88))(v207, v325);
    v211 = v347;
    v212 = v308;
    v213 = v306;
    if (v210 == *MEMORY[0x277D46428])
    {
      (*(v208 + 96))(v207, v209);
      v214 = v294;
      sub_2304A4034();

      if ((*(v211 + 48))(v214, 1, v159) == 1)
      {
        sub_230464970(v214, &qword_27DB53F20, &qword_2304A7388);
        v215 = MEMORY[0x277D46748];
      }

      else
      {
        v219 = *(v211 + 32);
        v220 = v293;
        v219(v293, v214, v159);
        v219(v212, v220, v159);
        v215 = MEMORY[0x277D46768];
      }

      v217 = v309;
      v218 = v336;
      v216 = v341;
      (*(v341 + 104))(v212, *v215, v336);
      (*(v216 + 32))(v217, v212, v218);
    }

    else if (v210 == *MEMORY[0x277D46408])
    {
      v216 = v341;
      v217 = v309;
      v218 = v336;
      (*(v341 + 104))(v309, *MEMORY[0x277D46748], v336);
    }

    else
    {
      v217 = v309;
      v218 = v336;
      if (v210 != *MEMORY[0x277D46418])
      {
        v291 = *(v341 + 104);
        v221 = v332;
        if (v210 == *MEMORY[0x277D46410])
        {
          v291(v309, *MEMORY[0x277D46750], v336);
        }

        else
        {
          v291(v309, *MEMORY[0x277D46760], v336);
          (*(v326 + 8))(v324, v209);
        }

        v216 = v341;
        goto LABEL_37;
      }

      v216 = v341;
      (*(v341 + 104))(v309, *MEMORY[0x277D46758], v336);
    }

    v221 = v332;
LABEL_37:
    v152(v331, v159);
    (*(v216 + 32))(v335, v217, v218);
    v222 = v352;
    sub_230464B24(v352, v213, &unk_27DB54100, &qword_2304A74D0);
    v223 = *(v351 + 48);
    v224 = v307;
    sub_2304A4674();
    v354((v213 + v223), v355);
    v225 = v313;
    sub_2304A4444();
    v226 = v225;
    v349(v224, v348);
    v227 = v314;
    v228 = v225;
    v229 = v315;
    if ((*(v314 + 48))(v228, 1, v315) == 1)
    {
      sub_230464970(v226, &unk_27DB54110, &unk_2304A74E0);
      v152(v213, v159);
      v230 = 1;
    }

    else
    {
      v231 = v226;
      v232 = v298;
      (*(v227 + 32))(v298, v231, v229);
      v152(v213, v159);
      sub_2304A4534();
      sub_2304A4524();
      sub_2304A4514();
      sub_2304A4F54();
      (*(v227 + 8))(v232, v229);
      v230 = 0;
    }

    v233 = v159;
    v234 = sub_2304A4F64();
    (*(*(v234 - 8) + 56))(v221, v230, 1, v234);
    v235 = v343;
    sub_230464B24(v222, v343, &unk_27DB54100, &qword_2304A74D0);
    v236 = *(v351 + 48);
    v237 = v344;
    sub_2304A4674();
    v354((v235 + v236), v355);
    sub_2304A44B4();
    v349(v237, v348);
    v238 = v317;
    sub_2304A4034();

    v152(v235, v233);
    v239 = v347;
    if ((*(v347 + 48))(v238, 1, v233) == 1)
    {

      sub_230464970(v221, &unk_27DB54680, &unk_2304A7BA0);
      (*(v341 + 8))(v335, v336);
      (*(v327 + 8))(v340, v328);
      (*(v338 + 8))(v337, v339);
      return sub_230464970(v238, &qword_27DB53F20, &qword_2304A7388);
    }

    else
    {
      v240 = v233;
      v241 = *(v239 + 32);
      v242 = v321;
      v241(v321, v238, v233);
      v243 = v352;
      if (v299)
      {
        LODWORD(v389) = sub_230495A50(v242, v299) ^ 1;
      }

      else
      {
        LODWORD(v389) = 0;
      }

      v244 = *(v347 + 16);
      v347 += 16;
      v387 = v244;
      (v244)(v320, v242, v240);
      v245 = v343;
      sub_230464B24(v243, v343, &unk_27DB54100, &qword_2304A74D0);
      v246 = v351;
      v247 = *(v351 + 48);
      sub_2304A4684();
      v248 = v355;
      v249 = v354;
      v354((v245 + v247), v355);
      v250 = v334;
      sub_230464B24(v243, v334, &unk_27DB54100, &qword_2304A74D0);
      v251 = *(v246 + 48);
      v252 = v344;
      sub_2304A4674();
      v249(v250 + v251, v248);
      v253 = sub_2304A44C4();
      v385 = v254;
      v386 = v253;
      v349(v252, v348);
      (*(v327 + 16))(v366, v340, v328);
      (*(v338 + 16))(v316, v337, v339);
      sub_230464B24(v332, v322, &unk_27DB54680, &unk_2304A7BA0);
      (*(v341 + 16))(v318, v335, v336);
      v255 = v243;
      v256 = v243;
      v257 = v310;
      sub_230464B24(v256, v310, &unk_27DB54100, &qword_2304A74D0);
      v258 = *(v246 + 48);
      sub_2304A4664();
      v259 = (v257 + v258);
      v260 = v354;
      v354(v259, v248);
      v261 = v255;
      v262 = v255;
      v263 = v311;
      sub_230464B24(v261, v311, &unk_27DB54100, &qword_2304A74D0);
      v264 = *(v246 + 48);
      v265 = v329;
      sub_2304A4674();
      v260(v263 + v264, v248);
      v266 = sub_2304A4484();
      v383 = v267;
      v384 = v266;
      v268 = v265;
      v269 = v348;
      v270 = v349;
      v349(v268, v348);
      v271 = v262;
      v272 = v312;
      sub_230464B24(v271, v312, &unk_27DB54100, &qword_2304A74D0);
      v273 = *(v246 + 48);
      v274 = v295;
      sub_2304A4674();
      v275 = v272 + v273;
      v276 = v355;
      v260(v275, v355);
      v277 = sub_2304A4464();
      v381 = v278;
      v382 = v277;
      v270(v274, v269);
      v279 = v270;
      v280 = v296;
      sub_230464B24(v352, v296, &unk_27DB54100, &qword_2304A74D0);
      v281 = *(v246 + 48);
      v282 = v297;
      sub_2304A4674();
      v260(v280 + v281, v276);
      sub_2304A44E4();
      v279(v282, v269);
      v283 = v300;
      v284 = v320;
      sub_2304A4F14();
      v285 = v346;
      v286 = v330;
      v330(v280, v346);
      v286(v312, v285);
      v286(v311, v285);
      v286(v310, v285);
      v286(v334, v285);
      v286(v343, v285);
      v287 = v321;
      (v387)(v284, v321, v285);
      v288 = v301;
      v289 = v303;
      v290 = v302;
      (*(v301 + 16))(v303, v283, v302);
      (*(v288 + 56))(v289, 0, 1, v290);
      sub_230477C7C(v289, v284);
      (*(v288 + 8))(v283, v290);
      v286(v287, v285);
      sub_230464970(v332, &unk_27DB54680, &unk_2304A7BA0);
      (*(v341 + 8))(v335, v336);
      (*(v327 + 8))(v340, v328);
      return (*(v338 + 8))(v337, v339);
    }
  }

  v390 = MEMORY[0x277D84F90];
  sub_23045FB28(0, v166, 0);
  v388 = v390;
  v167 = sub_2304A5FB4();
  v357 = v365 + 32;
  v358 = v165;
  v356 = v165 + 64;
  while (1)
  {
    v383 = v167;
    v371 = v166;
    v168 = *(v165 + 36);
    v169 = v364;
    v170 = *(v364 + 48);
    v171 = v362;
    v372 = v168;
    sub_230460364(v362, v362 + v170, v167, v168, 0, v165);
    v172 = sub_2304A41D4();
    v173 = *(v172 - 8);
    v174 = v384;
    (*(v173 + 32))(v384, v171, v172);
    v175 = *(v169 + 48);
    v176 = sub_2304A41F4();
    v373 = *(v176 - 8);
    v177 = *(v373 + 32);
    v389 = v176;
    v177(v174 + v175, v171 + v170, v176);
    v178 = v385;
    sub_230464B24(v174, v385, &unk_27DB54120, &qword_2304A74F0);
    v382 = *(v169 + 48);
    v179 = sub_2304A41C4();
    v380 = v180;
    v381 = v179;
    v182 = v173 + 8;
    v181 = *(v173 + 8);
    v375 = v172;
    v181(v178, v172);
    v376 = v182;
    v374 = v181;
    v183 = v386;
    sub_230464B24(v174, v386, &unk_27DB54120, &qword_2304A74F0);
    v379 = *(v169 + 48);
    v184 = sub_2304A41A4();
    v377 = v185;
    v378 = v184;
    v181(v183, v172);
    v186 = v174;
    v187 = v387;
    sub_230464B24(v174, v387, &unk_27DB54120, &qword_2304A74F0);
    v188 = *(v169 + 48);
    v189 = v368;
    sub_2304A4194();
    v190 = *(v373 + 8);
    v190(&v187[v188], v176);
    v373 = sub_2304A4414();
    v191 = v370;
    v192 = v359;
    v359(v189, v370);
    v193 = v363;
    sub_230464B24(v186, v363, &unk_27DB54120, &qword_2304A74F0);
    v194 = *(v169 + 48);
    v195 = v367;
    sub_2304A4194();
    v190((v193 + v194), v389);
    sub_2304A4424();
    v192(v195, v191);
    sub_2304A4BB4();
    v196 = v193;
    v198 = v374;
    v197 = v375;
    v374(v196, v375);
    v198(v387, v197);
    v199 = v360;
    sub_2304A4B24();
    sub_230464970(v384, &unk_27DB54120, &qword_2304A74F0);
    v200 = v389;
    v190(&v379[v386], v389);
    v190((v385 + v382), v200);
    v201 = v388;
    v390 = v388;
    v203 = *(v388 + 16);
    v202 = *(v388 + 24);
    if (v203 >= v202 >> 1)
    {
      sub_23045FB28((v202 > 1), v203 + 1, 1);
      v201 = v390;
    }

    *(v201 + 16) = v203 + 1;
    (*(v365 + 32))(v201 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v203, v199, v361);
    v165 = v358;
    result = v383;
    if (v383 < 0 || v383 >= -(-1 << *(v358 + 32)))
    {
      break;
    }

    if (((*(v356 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v383) & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v372 != *(v358 + 36))
    {
      goto LABEL_56;
    }

    v388 = v201;
    v167 = sub_2304A5FD4();
    v166 = v371 - 1;
    if (v371 == 1)
    {

      v204 = v352;
      v159 = v346;
      v160 = v351;
      v152 = v330;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_230483B74(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  sub_230474F80(v4, v9);
  __swift_project_boxed_opaque_existential_5Tm(v9, v9[3]);
  v5 = sub_2304A42C4() & 1;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (v5 != v3)
  {
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    sub_2304A42D4();
    swift_endAccess();
    v7 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 32);
    __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster), *(v2 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster + 24));
    v8 = sub_2304A5154();
    (*(v7 + 8))(v8);
  }

  return result;
}

BOOL sub_230483CA0(uint64_t a1, uint64_t a2)
{
  sub_2304A4084();
  sub_2304332D4(&unk_27DB54450, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_2304A5D04() & 1) == 0;
}

id sub_230483D80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_230483E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2304A4F74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18[1] = a1;
    v11 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v12 = MEMORY[0x28223BE20](Strong);
    v18[-2] = v12;
    MEMORY[0x28223BE20](v12);
    v18[-2] = sub_23048A310;
    v18[-1] = v13;

    os_unfair_lock_lock(v11 + 4);
    sub_23048A298(v14);
    os_unfair_lock_unlock(v11 + 4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      (*(v4 + 16))(v7, v9, v3);
      sub_2304A4CA4();
      swift_unknownObjectRelease();
      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v16 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D462E0], v16);
    return swift_willThrow();
  }
}

uint64_t sub_230484244()
{
  v1 = sub_2304A4084();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x2319182D0]();
    v8 = *(v6 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v9 = MEMORY[0x28223BE20](v7);
    *(&v15 - 2) = v6;
    *(&v15 - 1) = v4;
    MEMORY[0x28223BE20](v9);
    *(&v15 - 2) = sub_23048A2D4;
    *(&v15 - 1) = v10;

    os_unfair_lock_lock(v8 + 4);
    sub_230431F78(v11);
    os_unfair_lock_unlock(v8 + 4);
    if (v0)
    {
      swift_unknownObjectRelease();

      return (*(v2 + 8))(v4, v1);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
      sub_2304A4C84();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D462E0], v13);
    return swift_willThrow();
  }
}

uint64_t sub_230484768@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v23[1] = a1;
    v14 = MEMORY[0x2319182F0]();
    v15 = *(v13 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v16 = MEMORY[0x28223BE20](v14);
    v23[-2] = v13;
    v23[-1] = v5;
    MEMORY[0x28223BE20](v16);
    v23[-2] = sub_23048A27C;
    v23[-1] = v17;

    os_unfair_lock_lock(v15 + 4);
    v18 = v23[3];
    sub_23048A298(v19);
    os_unfair_lock_unlock(v15 + 4);
    if (v18)
    {
      swift_unknownObjectRelease();

      return (*(v3 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      sub_230464B24(v11, v9, &qword_27DB53F20, &qword_2304A7388);
      sub_2304A4CC4();
      swift_unknownObjectRelease();
      return sub_230464970(v11, &qword_27DB53F20, &qword_2304A7388);
    }
  }

  else
  {
    v21 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D462E0], v21);
    return swift_willThrow();
  }
}

void sub_230484D2C(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_2304A3F14();
    a2();
  }

  else
  {
    a2();
  }
}

uint64_t sub_230484EFC()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    MEMORY[0x231918350]();
    sub_230489814(v3);
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v5 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D462E0], v5);
    return swift_willThrow();
  }
}

uint64_t sub_230485238()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    MEMORY[0x2319182B0]();
    v6 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    sub_230474F80(v5 + v6, v11);
    __swift_project_boxed_opaque_existential_5Tm(v11, v11[3]);
    sub_2304A48F4();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v3, v0);
    return __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v8 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D462E0], v8);
    return swift_willThrow();
  }
}

uint64_t sub_2304855BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    v2 = Strong;
    swift_beginAccess();
    sub_230474F80(v2 + v1, v6);
    __swift_project_boxed_opaque_existential_5Tm(v6, v6[3]);
    sub_2304A4934();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    v4 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D462E0], v4);
    return swift_willThrow();
  }
}

uint64_t sub_230485784()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    v2 = Strong;
    swift_beginAccess();
    sub_230474F80(v2 + v1, v6);
    __swift_project_boxed_opaque_existential_5Tm(v6, v6[3]);
    sub_2304A42C4();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    sub_2304A4C44();
    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D462E0], v4);
    return swift_willThrow();
  }
}

uint64_t sub_230485F54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_2304A4E04();
    sub_230473EA4(v2);

    v3 = v1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    sub_2304A4584();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D462E0], v5);
    return swift_willThrow();
  }
}

uint64_t sub_230486244()
{
  v1 = sub_2304A4084();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x231918290]();
    v7 = v6 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    sub_230474F80(v7, v16);
    __swift_project_boxed_opaque_existential_5Tm(v16, v16[3]);
    v8 = sub_2304A4574();
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F78, &qword_2304A73D8);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2304A7270;
    (*(v2 + 16))(v10 + v9, v4, v1);
    sub_230489E58(v10, v8);
    swift_setDeallocating();
    v16[10] = v0;
    v11 = *(v2 + 8);
    v11(v10 + v9, v1);
    swift_deallocClassInstance();
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
    sub_2304A4584();
    swift_endAccess();
    swift_unknownObjectRelease();
    return (v11)(v4, v1);
  }

  else
  {
    v13 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D462E0], v13);
    return swift_willThrow();
  }
}

uint64_t sub_2304866B8()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    MEMORY[0x231918290]();
    v6 = v5 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    sub_230474F80(v6, v13);
    __swift_project_boxed_opaque_existential_5Tm(v13, v13[3]);
    v7 = sub_2304A4574();
    v8 = __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x28223BE20](v8);
    v12[-2] = v3;
    sub_23048748C(sub_23048902C, &v12[-4], v7, MEMORY[0x277CC95F0], sub_2304882EC, MEMORY[0x277CC95F0], sub_2304882EC);
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_1(v6, *(v6 + 24));
    sub_2304A4584();
    swift_endAccess();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v10 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D462E0], v10);
    return swift_willThrow();
  }
}

uint64_t sub_230486B0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    v2 = Strong;
    swift_beginAccess();
    sub_230474F80(v2 + v1, v6);
    __swift_project_boxed_opaque_existential_5Tm(v6, v6[3]);
    sub_2304A4554();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    sub_2304A4C44();
    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D462E0], v4);
    return swift_willThrow();
  }
}

uint64_t sub_230486DE8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  sub_230474F80(v1 + v2, v11);
  __swift_project_boxed_opaque_existential_5Tm(v11, v11[3]);
  v3 = sub_2304A4574();
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_23045A31C(*(v3 + 16), 0);
    v6 = *(sub_2304A4084() - 8);
    v7 = sub_230488D88(v11, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
    sub_230433B3C(v11[0]);
    if (v7 != v4)
    {
      __break(1u);
LABEL_5:
      v8 = sub_2304A4104();
      sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
      swift_allocError();
      (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D462E0], v8);
      return swift_willThrow();
    }
  }

  else
  {
  }

  sub_2304A4C24();
  return swift_unknownObjectRelease();
}

unint64_t *sub_230487158(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v23 = v6;
    v28 = v3;
    v25 = &v23;
    MEMORY[0x28223BE20](a1);
    v24 = &v23 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v7);
    v26 = 0;
    v8 = 0;
    v6 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v29[0] = *(*(a3 + 48) + 8 * v16);

      v3 = v28;
      v17 = v27(v29);
      v28 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v18 = v17;

      if (v18)
      {
        *&v24[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_230487D48(v24, v23, v26, a3);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_230487D48(v24, v23, v26, a3);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v22 = sub_230487C10(v21, v6, a3, v27);

  result = MEMORY[0x23191A000](v21, -1, -1);
  if (!v3)
  {
    return v22;
  }

  return result;
}

void *sub_23048748C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), int64_t a6, unint64_t a7)
{
  v47 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v38 - v15);
  LOBYTE(v15) = *(a3 + 32);
  v39 = ((1 << v15) + 63) >> 6;
  v17 = 8 * v39;
  if ((v15 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v45 = v16;
    v46 = v14;
    v38 = a5;
    v41 = &v38;
    MEMORY[0x28223BE20](v14);
    v40 = &v38 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v17);
    a6 = 0;
    v48 = a3;
    v19 = *(a3 + 56);
    a3 += 56;
    v18 = v19;
    v20 = 1 << *(a3 - 24);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;
    v42 = 0;
    v43 = v13 + 16;
    v44 = (v13 + 8);
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
LABEL_12:
      a7 = v24 | (a6 << 6);
      v27 = *(v48 + 48) + *(v13 + 9) * a7;
      v16 = v13;
      v28 = *(v13 + 2);
      a5 = v45;
      v29 = v46;
      v28(v45, v27, v46);
      v30 = v50;
      v31 = v47(a5);
      v50 = v30;
      if (v30)
      {
        (*v44)(a5, v29);

        return swift_willThrow();
      }

      v17 = v31;
      v14 = (*v44)(a5, v29);
      v13 = v16;
      v22 = v49;
      if (v17)
      {
        *&v40[(a7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a7;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return v38(v40, v39, v42, v48);
        }
      }
    }

    v25 = a6;
    while (1)
    {
      a6 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (a6 >= v23)
      {
        return v38(v40, v39, v42, v48);
      }

      v26 = *(a3 + 8 * a6);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v49 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v14 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = v50;
  v37 = sub_230487CA0(v35, v39, a3, v47, a2, a6, a7);

  result = MEMORY[0x23191A000](v35, -1, -1);
  if (!v36)
  {
    return v37;
  }

  return result;
}

unint64_t *sub_230487838(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v19 = 0;
  v18 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);

    v15 = a4(&v22);

    if (v4)
    {
      return result;
    }

    if (v15)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_230487D48(v18, a2, v19, a3);
      }
    }
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
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2304879A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  result = MEMORY[0x28223BE20](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v10 + 16;
  v37 = v10;
  v34 = 0;
  v35 = (v10 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      return (*v35)(v23, v22);
    }

    v28 = v26;
    result = (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        return v32(v33, v31, v34, v30);
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_230487C10(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_230487838(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_230487CA0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

    v14 = sub_2304879A8(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_230487D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  v9 = sub_2304A60D4();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(*(result + 48) + 8 * (v14 | (v11 << 6)));
    sub_2304A4984();
    sub_2304332D4(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);

    result = sub_2304A5CF4();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v17;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = a4;
    v10 = v27;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v27 = (v16 - 1) & v16;
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

uint64_t sub_230487FC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2304A5294();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A8, &unk_2304A7BB0);
  result = sub_2304A60D4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_2304332D4(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
    result = sub_2304A5CF4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_2304882EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2304A4084();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB545E0, &unk_2304A7B60);
  result = sub_2304A60D4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_2304332D4(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_2304A5CF4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void *sub_230488614(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_2304A6004();
  sub_2304A4984();
  sub_2304332D4(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  result = sub_2304A5E24();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_2304A6074())
    {
      goto LABEL_29;
    }

    sub_2304A4984();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_230488840(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_2304A4FF4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230488AE4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_2304A4FF4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230488D88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_2304A4084();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_23048904C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_230489090(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v52 = a1;
  v5 = sub_2304A53C4();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A4084();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2304A44F4();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_2304A46C4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_23048A230;
  *(v17 + 24) = v16;
  v18 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  v44 = a2;
  sub_230474F80(a2 + v18, v53);
  __swift_project_boxed_opaque_existential_5Tm(v53, v54);
  v51 = a3;
  _Block_copy(a3);

  sub_2304A48C4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_230464970(v12, &unk_27DB53F00, &unk_2304A7B70);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v19 = sub_2304A5B74();
    __swift_project_value_buffer(v19, qword_28149B008);
    v20 = v45;
    v21 = v46;
    v22 = v47;
    (*(v46 + 16))(v45, v52, v47);
    v23 = sub_2304A5B54();
    v24 = sub_2304A5E74();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v53[0] = v26;
      *v25 = 136446210;
      sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_2304A62D4();
      v28 = v20;
      v30 = v29;
      (*(v21 + 8))(v28, v22);
      v31 = sub_23046A5C8(v27, v30, v53);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_230430000, v23, v24, "Cannot change pairing state for a relationship that does not exist: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x23191A000](v26, -1, -1);
      MEMORY[0x23191A000](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    (*(v48 + 104))(v50, *MEMORY[0x277D468D0], v49);
    sub_2304A53E4();
    sub_2304332D4(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    v35 = swift_allocError();
    sub_2304A53D4();
    v36 = v51;
    _Block_copy(v51);
    v37 = v35;
    v38 = sub_2304A3F14();
    v36[2](v36, v38);

    _Block_release(v36);
  }

  else
  {
    v32 = v41;
    (*(v14 + 32))(v41, v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    sub_230474F80(v44 + v18, v53);
    v52 = v55;
    __swift_project_boxed_opaque_existential_5Tm(v53, v54);
    v33 = v40;
    sub_2304A4674();
    sub_2304A44B4();
    (*(v42 + 8))(v33, v43);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_23048A244;
    *(v34 + 24) = v17;

    sub_2304A4864();

    (*(v14 + 8))(v32, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }
}

uint64_t sub_230489814(uint64_t a1)
{
  v41 = a1;
  v2 = sub_2304A53C4();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A4084();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2304A44F4();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_2304A46C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
  swift_beginAccess();
  v32 = v1;
  sub_230474F80(v1 + v15, v39);
  __swift_project_boxed_opaque_existential_5Tm(v39, v40);
  sub_2304A48C4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_230464970(v10, &unk_27DB53F00, &unk_2304A7B70);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v16 = sub_2304A5B74();
    __swift_project_value_buffer(v16, qword_28149B008);
    v18 = v33;
    v17 = v34;
    v19 = v35;
    (*(v34 + 16))(v33, v41, v35);
    v20 = sub_2304A5B54();
    v21 = sub_2304A5E74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = v23;
      *v22 = 136446210;
      sub_2304332D4(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_2304A62D4();
      v26 = v25;
      (*(v17 + 8))(v18, v19);
      v27 = sub_23046A5C8(v24, v26, v39);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_230430000, v20, v21, "Cannot change pairing state for a relationship that does not exist: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x23191A000](v23, -1, -1);
      MEMORY[0x23191A000](v22, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v18, v19);
    }

    (*(v36 + 104))(v38, *MEMORY[0x277D468D0], v37);
    sub_2304A53E4();
    sub_2304332D4(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    sub_230474F80(v32 + v15, v39);
    __swift_project_boxed_opaque_existential_5Tm(v39, v40);
    sub_2304A4674();
    sub_2304A44B4();
    (*(v30 + 8))(v7, v31);
    sub_2304A4874();
    (*(v12 + 8))(v14, v11);

    return __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }
}

uint64_t sub_230489E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A4084();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_23046B48C(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

void sub_230489FB8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_2304A4104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A4084();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = _Block_copy(a3);
    MEMORY[0x231918330](v14);
    _Block_copy(a3);
    sub_230489090(v11, v13, a3);
    _Block_release(a3);
    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D462E0], v4);
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    v15 = swift_allocError();
    (*(v5 + 32))(v16, v7, v4);
    _Block_copy(a3);
    v17 = sub_2304A3F14();
    (a3)[2](a3, v17);
  }

  _Block_release(a3);
}

uint64_t sub_23048A24C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return (*(v2 + 16))(a1);
}

uint64_t AllowedClientVerifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_23048A900();
  v2 = sub_230473E0C(v1);

  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_23048A3C8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546A8, &qword_2304A7CC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_5Tm(a1, a1[3]);
  sub_23048B404();
  sub_2304A63D4();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F40, &qword_2304A73A0);
  sub_23048B458(&qword_27DB546B0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2304A62C4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23048A550()
{
  sub_2304A6394();
  MEMORY[0x231919910](0);
  return sub_2304A63B4();
}

uint64_t sub_23048A5BC(uint64_t a1)
{
  sub_2304A6394();
  MEMORY[0x231919910](0);
  return sub_2304A63B4();
}

uint64_t sub_23048A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2304A62F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23048A6C0(uint64_t a1)
{
  v2 = sub_23048B404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23048A6FC(uint64_t a1)
{
  v2 = sub_23048B404();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23048A738@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23048B25C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AllowedClientVerifier.init()()
{
  v1 = sub_23048A900();
  v2 = sub_230473E0C(v1);

  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_23048A7C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54698, &qword_2304A7BC0);
  sub_23048B0A4();
  return sub_2304A5E34() & 1;
}

uint64_t AllowedClientVerifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23048A88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54698, &qword_2304A7BC0);
  sub_23048B0A4();
  return sub_2304A5E34() & 1;
}

uint64_t sub_23048A900()
{
  v64 = *MEMORY[0x277D85DE8];
  v0 = sub_2304A3F34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A3FC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v60 = objc_opt_self();
  v14 = [v60 defaultManager];
  v62 = 0;
  v15 = [v14 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:&v62];

  v16 = v62;
  if (!v15)
  {
    v30 = v62;
    v31 = sub_2304A3F24();

    swift_willThrow();
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v32 = sub_2304A5B74();
    __swift_project_value_buffer(v32, qword_28149B008);
    v33 = v31;
    v34 = sub_2304A5B54();
    v35 = sub_2304A5E94();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_230430000, v34, v35, "Failed to load allow list: %@", v36, 0xCu);
      sub_23048B190(v37);
      MEMORY[0x23191A000](v37, -1, -1);
      MEMORY[0x23191A000](v36, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  sub_2304A3F74();
  v17 = v16;

  v62 = 0x746163696C706572;
  v63 = 0xEB0000000064726FLL;
  v18 = *MEMORY[0x277CC91D8];
  v59 = v4;
  v61 = v11;
  v19 = *(v1 + 104);
  v19(v3, v18, v0);
  sub_2304645C4();
  v57 = v5;
  v58 = v13;
  sub_2304A3FB4();
  v20 = *(v1 + 8);
  v20(v3, v0);
  v62 = 0x73694C776F6C6C41;
  v63 = 0xEF7473696C702E74;
  v19(v3, v18, v0);
  v21 = v61;
  v22 = v59;
  sub_2304A3FB4();
  v20(v3, v0);
  v23 = v57[1];
  v23(v8, v22);
  v24 = [v60 defaultManager];
  sub_2304A3F94();
  v25 = sub_2304A5D14();

  v26 = [v24 contentsAtPath_];

  if (!v26)
  {
    v23(v21, v22);
    v23(v58, v22);
    return MEMORY[0x277D84F90];
  }

  v27 = sub_2304A3FD4();
  v29 = v28;

  sub_2304A3EF4();
  swift_allocObject();
  sub_2304A3EE4();
  sub_23048B1F8();
  sub_2304A3ED4();
  v41 = v62;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v42 = sub_2304A5B74();
  __swift_project_value_buffer(v42, qword_28149B008);

  v43 = sub_2304A5B54();
  v44 = sub_2304A5E94();

  v60 = v43;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v62 = v57;
    *v45 = 136315138;

    v47 = v41;
    v48 = MEMORY[0x231919340](v46, MEMORY[0x277D837D0]);
    v50 = v49;

    v51 = sub_23046A5C8(v48, v50, &v62);

    *(v45 + 4) = v51;
    v52 = v60;
    _os_log_impl(&dword_230430000, v60, v44, "Loaded allow list: %s", v45, 0xCu);
    v53 = v57;
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x23191A000](v53, -1, -1);
    MEMORY[0x23191A000](v45, -1, -1);

    sub_2304617C4(v27, v29);

    v54 = v59;
    v23(v61, v59);
    v23(v58, v54);
    return v47;
  }

  else
  {

    sub_2304617C4(v27, v29);

    v55 = v59;
    v23(v61, v59);
    v23(v58, v55);
    return v41;
  }
}

unint64_t sub_23048B0A4()
{
  result = qword_281499DB0;
  if (!qword_281499DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB54698, &qword_2304A7BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DB0);
  }

  return result;
}

uint64_t sub_23048B190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F30, &qword_2304A7390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23048B1F8()
{
  result = qword_28149A620;
  if (!qword_28149A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149A620);
  }

  return result;
}

void *sub_23048B25C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546A0, &unk_2304A7CB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_5Tm(a1, a1[3]);
  sub_23048B404();
  sub_2304A63C4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F40, &qword_2304A73A0);
    sub_23048B458(&qword_281499DC0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2304A62B4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_23048B404()
{
  result = qword_28149A638[0];
  if (!qword_28149A638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28149A638);
  }

  return result;
}

uint64_t sub_23048B458(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB53F40, &qword_2304A73A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AllowedClientVerifier.AllowList.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AllowedClientVerifier.AllowList.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_23048B5B0()
{
  result = qword_27DB546B8;
  if (!qword_27DB546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB546B8);
  }

  return result;
}

unint64_t sub_23048B608()
{
  result = qword_28149A628;
  if (!qword_28149A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149A628);
  }

  return result;
}

unint64_t sub_23048B660()
{
  result = qword_28149A630;
  if (!qword_28149A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28149A630);
  }

  return result;
}

void sub_23048B6B4(uint64_t a1, _BYTE *a2, void *a3)
{
  v21 = a3;
  v5 = sub_2304A49E4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2304A4084();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A5AF4();
  v10 = sub_2304A5AD4();

  if (v3)
  {
    *v21 = v3;
  }

  else if (v10)
  {
    v20[2] = sub_2304A49C4();
    v20[3] = v11;
    sub_2304A4344();

    sub_2304A4044();
    v20[1] = v16;
    (*(v7 + 8))(v9, v6);
    sub_2304A49D4();
    sub_2304A49F4();
    sub_2304A4A04();
    swift_allocObject();
    v17 = sub_2304A49B4();
    v18 = MEMORY[0x28223BE20](v17);
    v20[-2] = v10;
    v20[-1] = v18;
    v19 = sub_2304A5B34();
    MEMORY[0x28223BE20](v19);
    v20[-2] = v10;
    v20[-1] = v17;
    sub_2304A5B34();
  }

  else
  {
    if (qword_281499E28 != -1)
    {
      swift_once();
    }

    v12 = sub_2304A5B74();
    __swift_project_value_buffer(v12, qword_28149AFF0);
    v13 = sub_2304A5B54();
    v14 = sub_2304A5E94();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_230430000, v13, v14, "No more client defined IDs to migrate", v15, 2u);
      MEMORY[0x23191A000](v15, -1, -1);
    }

    *a2 = 0;
  }
}

void sub_23048BA74(uint64_t a1)
{
  v4 = 1;
  do
  {
    v2 = MEMORY[0x2319199F0]();
    sub_23048B6B4(a1, &v4, &v3);
    objc_autoreleasePoolPop(v2);
  }

  while ((v4 & 1) != 0);
}

uint64_t sub_23048BC98(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  a2();
  a3(v5, v6);
}

uint64_t sub_23048BD04@<X0>(uint64_t a1@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A3FC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = sub_2304A5D14();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier_];

  if (!v12)
  {
    __break(1u);
  }

  sub_2304A3F74();

  (*(v3 + 32))(v8, v6, v2);
  sub_2304A3F64();
  v13 = [v9 defaultManager];
  v14 = sub_2304A3F54();
  v22[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v22];

  if (v15)
  {
    v16 = *(v3 + 8);
    v17 = v22[0];
    return v16(v8, v2);
  }

  else
  {
    v19 = v22[0];
    sub_2304A3F24();

    swift_willThrow();
    v20 = *(v3 + 8);
    v20(a1, v2);
    return (v20)(v8, v2);
  }
}

uint64_t sub_23048BFBC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546C0, &qword_2304A7E58);
    sub_23048C0E8();
    v1 = sub_2304A5BC4();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_23048C054()
{

  return swift_deallocClassInstance();
}

unint64_t sub_23048C0E8()
{
  result = qword_27DB546C8;
  if (!qword_27DB546C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB546C0, &qword_2304A7E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB546C8);
  }

  return result;
}

void sub_23048C14C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

void sub_23048C234()
{
  v1 = sub_2304A5CA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2304A5CB4();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_2304919B4();
    v7 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection);
    if (v7)
    {
      v8 = v7;
      if ([v8 remoteTarget])
      {
        sub_2304A5F94();
        swift_unknownObjectRelease();

        sub_230464970(v9, &qword_27DB54148, &unk_2304A7500);
      }

      else
      {
        memset(v9, 0, sizeof(v9));
        sub_230464970(v9, &qword_27DB54148, &unk_2304A7500);
        [v8 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_23048C414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MigrationClient(uint64_t a1)
{
  result = qword_28149AAA8;
  if (!qword_28149AAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23048C55C(uint64_t a1)
{
  result = sub_2304A3FC4();
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

void sub_23048C614()
{
  if (qword_281499E50 != -1)
  {
    swift_once();
  }

  v0 = sub_2304A5B74();
  __swift_project_value_buffer(v0, qword_28149B038);
  v1 = sub_2304A5B54();
  v2 = sub_2304A5E94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230430000, v1, v2, "Begin migration", v3, 2u);
    MEMORY[0x23191A000](v3, -1, -1);
  }

  if (sub_23048C9E4())
  {
    sub_23048CE7C();
    v4 = sub_23048EBAC();
    v5 = MEMORY[0x2319199F0](v4);
    sub_23048F08C();
    objc_autoreleasePoolPop(v5);
  }

  sub_230491638();
  oslog = sub_2304A5B54();
  v6 = sub_2304A5E94();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_230430000, oslog, v6, "End migration", v7, 2u);
    MEMORY[0x23191A000](v7, -1, -1);
  }
}

uint64_t sub_23048C9E4()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_2304A4084();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A5CA4();
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v11 = v12;
  (*(v14 + 104))(v11, *MEMORY[0x277D85200], v9);
  v13 = v12;
  LOBYTE(v12) = sub_2304A5CB4();
  v15 = *(v14 + 8);
  LOBYTE(v14) = v14 + 8;
  v15(v11, v9);
  if (v12)
  {
    if (qword_281499E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_2304A5B74();
  __swift_project_value_buffer(v16, qword_28149B038);
  v17 = sub_2304A5B54();
  v18 = sub_2304A5E94();
  if (os_log_type_enabled(v17, v18))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_230430000, v17, v18, "Migrating local device ID", v14, 2u);
    MEMORY[0x23191A000](v14, -1, -1);
  }

  sub_230492400(v5);
  if (!v1)
  {
    v19 = v30;
    v20 = (*(v30 + 48))(v5, 1, v6);
    LOBYTE(v14) = v20 != 1;
    if (v20 == 1)
    {
      sub_230464970(v5, &qword_27DB53F20, &qword_2304A7388);
      v25 = sub_2304A5B54();
      v26 = sub_2304A5E94();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_230430000, v25, v26, "Failed to migrate local device ID", v27, 2u);
        MEMORY[0x23191A000](v27, -1, -1);
      }
    }

    else
    {
      (*(v19 + 32))(v8, v5, v6);
      v21 = sub_2304A5B54();
      v22 = sub_2304A5E94();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_230430000, v21, v22, "Migrated local device ID", v23, 2u);
        MEMORY[0x23191A000](v23, -1, -1);
      }

      sub_2304A4044();
      v24 = v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore;
      swift_beginAccess();
      __swift_mutable_project_boxed_opaque_existential_1(v24, *(v24 + 24));
      sub_2304A47F4();
      swift_endAccess();
      (*(v30 + 8))(v8, v6);
    }
  }

  return v14 & 1;
}

uint64_t sub_23048CE7C()
{
  v1 = sub_2304A4024();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v192 = &v128[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v2);
  v191 = &v128[-v5];
  MEMORY[0x28223BE20](v4);
  v190 = &v128[-v6];
  v206 = sub_2304A46C4();
  v226 = *(v206 - 8);
  v7 = MEMORY[0x28223BE20](v206);
  v189 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v205 = &v128[-v9];
  v10 = sub_2304A41D4();
  MEMORY[0x28223BE20](v10 - 8);
  v220 = &v128[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = sub_2304A4B64();
  v154 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v219 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = sub_2304A41F4();
  v221 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v152 = &v128[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = sub_2304A4EE4();
  v224 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v187 = &v128[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v198 = sub_2304A46A4();
  v225 = *(v198 - 8);
  v15 = MEMORY[0x28223BE20](v198);
  v186 = &v128[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v185 = &v128[-v18];
  MEMORY[0x28223BE20](v17);
  v204 = &v128[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  MEMORY[0x28223BE20](v20 - 8);
  v184 = &v128[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  MEMORY[0x28223BE20](v22 - 8);
  v183 = &v128[-v23];
  v208 = sub_2304A4084();
  v222 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v211 = &v128[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v203 = sub_2304A44F4();
  v223 = *(v203 - 8);
  v25 = MEMORY[0x28223BE20](v203);
  v182 = &v128[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v210 = &v128[-v27];
  v28 = sub_2304A4BE4();
  v228 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v128[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v232 = &v128[-v32];
  v33 = sub_2304A4434();
  MEMORY[0x28223BE20](v33 - 8);
  v231 = &v128[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_2304A4E64();
  v153 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v151 = &v128[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = sub_2304A4E94();
  v216 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v128[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v207 = sub_2304A4114();
  v217 = *(v207 - 8);
  v38 = MEMORY[0x28223BE20](v207);
  v181 = &v128[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v180 = &v128[-v41];
  MEMORY[0x28223BE20](v40);
  v209 = &v128[-v42];
  v202 = sub_2304A4F74();
  v195 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v212 = &v128[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_2304A5CA4();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v128[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v196 = v0;
  v48 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v47 = v48;
  (*(v45 + 104))(v47, *MEMORY[0x277D85200], v44);
  v49 = v48;
  v50 = sub_2304A5CB4();
  (*(v45 + 8))(v47, v44);
  if ((v50 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (qword_281499E50 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v51 = sub_2304A5B74();
    v179 = __swift_project_value_buffer(v51, qword_28149B038);
    v52 = sub_2304A5B54();
    v53 = sub_2304A5E94();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v211;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_230430000, v52, v53, "Migrating devices", v56, 2u);
      MEMORY[0x23191A000](v56, -1, -1);
    }

    v57 = v234;
    result = sub_2304929E0();
    if (v57)
    {
      break;
    }

    v178 = *(result + 16);
    if (!v178)
    {
    }

    v134 = 0;
    v59 = v195;
    v174 = result + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v60 = result;
    v175 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore;
    swift_beginAccess();
    v61 = v60;
    v62 = 0;
    v173 = (v216 + 11);
    v172 = *MEMORY[0x277D46730];
    v149 = *MEMORY[0x277D46710];
    v145 = *MEMORY[0x277D46720];
    v142 = *MEMORY[0x277D46718];
    v138 = *MEMORY[0x277D46728];
    v133 = *MEMORY[0x277D46708];
    v150 = *MEMORY[0x277D46330];
    v130 = v216 + 1;
    v129 = *MEMORY[0x277D46308];
    v132 = *MEMORY[0x277D46328];
    v137 = *MEMORY[0x277D46318];
    v141 = *MEMORY[0x277D46320];
    v144 = *MEMORY[0x277D46310];
    v171 = (v222 + 56);
    v170 = (v224 + 88);
    v177 = (v225 + 104);
    v131 = (v224 + 8);
    v169 = *MEMORY[0x277D46768];
    v148 = (v224 + 96);
    v168 = (v225 + 32);
    v147 = *MEMORY[0x277D46748];
    v167 = (v225 + 16);
    *&v63 = 136446210;
    v146 = v63;
    v166 = (v226 + 16);
    v165 = (v226 + 8);
    v164 = (v225 + 8);
    v143 = *MEMORY[0x277D46758];
    v163 = (v223 + 16);
    v162 = (v223 + 8);
    v140 = *MEMORY[0x277D46750];
    v161 = (v217 + 104);
    v160 = (v217 + 32);
    v159 = (v217 + 16);
    v158 = (v217 + 8);
    v136 = *MEMORY[0x277D46760];
    v155 = *MEMORY[0x277D46408];
    v135 = *MEMORY[0x277D46410];
    v139 = *MEMORY[0x277D46418];
    v157 = v59 + 16;
    v215 = v154 + 16;
    v214 = (v154 + 8);
    v213 = v221 + 32;
    v156 = (v59 + 8);
    v64 = v208;
    v224 = v35;
    v65 = v207;
    v229 = v31;
    v230 = v28;
    v176 = v60;
    ++v228;
    v197 = (v222 + 8);
    v217 = v153 + 16;
    v216 = (v153 + 8);
    while (v62 < *(v61 + 16))
    {
      v69 = v64;
      (*(v195 + 16))(v212, v174 + *(v195 + 72) * v62, v202);
      v70 = v193;
      sub_2304A4EA4();
      v71 = (*v173)(v70, v194);
      if (v71 == v172)
      {
        v72 = v180;
        (*v161)(v180, v150, v65);
      }

      else
      {
        v72 = v180;
        if (v71 == v149)
        {
          (*v161)(v180, v144, v65);
        }

        else if (v71 == v145)
        {
          (*v161)(v180, v141, v65);
        }

        else if (v71 == v142)
        {
          (*v161)(v180, v137, v65);
        }

        else if (v71 == v138)
        {
          (*v161)(v180, v132, v65);
        }

        else
        {
          v73 = *v161;
          if (v71 == v133)
          {
            v73(v180, v129, v65);
          }

          else
          {
            v73(v180, v150, v65);
            (*v130)(v193, v194);
          }
        }
      }

      v201 = v62;
      (*v160)(v209, v72, v65);
      v74 = sub_2304A4F44();
      v75 = *(v74 + 16);
      if (v75)
      {
        v233[0] = MEMORY[0x277D84F90];
        sub_2304A6154();
        v226 = sub_2304A4984();
        v76 = v74 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v225 = *(v153 + 72);
        v77 = *(v153 + 16);
        v222 = v74;
        v223 = v77;
        v78 = v151;
        do
        {
          (v223)(v78, v76, v35);
          sub_2304A4E34();
          sub_2304A4E54();
          v234 = sub_2304A4974();

          v79 = v232;
          sub_2304A4E44();
          sub_2304A4BC4();
          v80 = *v228;
          v81 = v230;
          (*v228)(v79, v230);
          v82 = v229;
          sub_2304A4E44();
          sub_2304A4BD4();
          v80(v82, v81);
          sub_2304A4404();
          sub_2304A49A4();
          swift_allocObject();
          v35 = v224;
          sub_2304A4994();
          (*v216)(v78, v35);
          sub_2304A6134();
          sub_2304A6164();
          sub_2304A6174();
          sub_2304A6144();
          v76 += v225;
          --v75;
        }

        while (v75);

        v200 = v233[0];
        v83 = v208;
        v55 = v211;
      }

      else
      {

        v200 = MEMORY[0x277D84F90];
        v83 = v69;
      }

      v84 = sub_2304A4EB4();
      v85 = *(v84 + 16);
      v86 = v232;
      if (v85)
      {
        v233[0] = MEMORY[0x277D84F90];
        sub_23045FAA0(0, v85, 0);
        v234 = v233[0];
        v87 = (*(v154 + 80) + 32) & ~*(v154 + 80);
        v199 = v84;
        v88 = v84 + v87;
        v89 = *(v154 + 72);
        v222 = *(v154 + 16);
        v223 = v89;
        v90 = v152;
        do
        {
          v226 = v85;
          v91 = v219;
          (v222)(v219, v88, v227);
          sub_2304A4B34();
          sub_2304A4B54();
          sub_2304A41B4();
          sub_2304A4B44();
          v225 = sub_2304A4BC4();
          v92 = *v228;
          v93 = v86;
          v94 = v230;
          (*v228)(v93, v230);
          v95 = v229;
          sub_2304A4B44();
          sub_2304A4BD4();
          v92(v95, v94);
          sub_2304A4404();
          sub_2304A41E4();
          (*v214)(v91, v227);
          v233[0] = v234;
          v97 = v234[2];
          v96 = v234[3];
          v98 = v234;
          if (v97 >= v96 >> 1)
          {
            sub_23045FAA0((v96 > 1), v97 + 1, 1);
            v90 = v152;
            v98 = v233[0];
          }

          v234 = v98;
          v98[2] = v97 + 1;
          (*(v221 + 32))(v98 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v97, v90, v218);
          v88 += v223;
          v85 = (v226 - 1);
          v86 = v232;
        }

        while (v226 != 1);

        v83 = v208;
        v55 = v211;
      }

      else
      {

        v234 = MEMORY[0x277D84F90];
      }

      sub_2304A4F04();
      v225 = sub_2304A4044();
      v223 = v99;
      v226 = *v197;
      (v226)(v55, v83);
      v222 = sub_2304A4F34();
      v199 = v100;
      sub_2304A4ED4();
      sub_2304A4BC4();
      v101 = *v228;
      v102 = v230;
      (*v228)(v86, v230);
      v103 = v229;
      sub_2304A4ED4();
      sub_2304A4BD4();
      v101(v103, v102);
      sub_2304A4404();
      (*v159)(v181, v209, v207);
      v104 = sub_2304A4544();
      (*(*(v104 - 8) + 56))(v183, 1, 1, v104);
      (*v171)(v184, 1, 1, v83);
      sub_2304A44A4();
      v105 = v187;
      sub_2304A4EF4();
      v106 = v188;
      v107 = (*v170)(v105, v188);
      if (v107 == v169)
      {
        (*v148)(v105, v106);
        v108 = v185;
        v109 = v198;
        (*v177)(v185, v155, v198);
        (v226)(v105, v83);
        v110 = v206;
      }

      else
      {
        v110 = v206;
        v109 = v198;
        v108 = v185;
        if (v107 == v147)
        {
          (*v177)(v185, v155, v198);
        }

        else if (v107 == v143)
        {
          (*v177)(v185, v139, v198);
        }

        else if (v107 == v140)
        {
          (*v177)(v185, v135, v198);
        }

        else
        {
          v127 = v107;
          (*v177)(v185, v155, v198);
          if (v127 != v136)
          {
            (*v131)(v105, v106);
          }
        }
      }

      v111 = v204;
      (*v168)(v204, v108, v109);
      v112 = v109;
      v113 = v211;
      sub_2304A4EC4();
      (*v163)(v182, v210, v203);
      sub_2304A4004();
      sub_2304A4004();
      v114 = v112;
      (*v167)(v186, v111, v112);
      sub_2304A4004();
      v115 = v205;
      sub_2304A4694();
      v116 = v189;
      (*v166)(v189, v115, v110);
      v117 = sub_2304A5B54();
      v118 = sub_2304A5E94();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v233[0] = v234;
        *v119 = v146;
        sub_2304A4684();
        sub_2304948A8(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v120 = v208;
        v121 = sub_2304A62D4();
        v123 = v122;
        (v226)(v113, v120);
        v66 = *v165;
        v31 = (v165 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v114 = v198;
        (*v165)(v116, v206);
        v124 = sub_23046A5C8(v121, v123, v233);

        *(v119 + 4) = v124;
        _os_log_impl(&dword_230430000, v117, v118, "Storing relationship: %{public}s)", v119, 0xCu);
        v125 = v234;
        __swift_destroy_boxed_opaque_existential_0Tm(v234);
        MEMORY[0x23191A000](v125, -1, -1);
        v126 = v119;
        v110 = v206;
        MEMORY[0x23191A000](v126, -1, -1);
      }

      else
      {

        v66 = *v165;
        v31 = (v165 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        (*v165)(v116, v110);
      }

      v35 = v224;
      v28 = v201 + 1;
      sub_230464834(v196 + v175, v233);
      __swift_project_boxed_opaque_existential_5Tm(v233, v233[3]);
      v67 = v205;
      sub_2304A4804();
      v68 = v110;
      v62 = v28;
      v66(v67, v68);
      (*v164)(v204, v114);
      (*v162)(v210, v203);
      v65 = v207;
      (*v158)(v209, v207);
      (*v156)(v212, v202);
      __swift_destroy_boxed_opaque_existential_0Tm(v233);
      v64 = v208;
      v55 = v211;
      v61 = v176;
      if (v28 == v178)
      {
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  return result;
}

uint64_t sub_23048EBAC()
{
  v2 = v0;
  v3 = sub_2304A5294();
  v43 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v35 - v6;
  v7 = sub_2304A5CA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  v13 = sub_2304A5CB4();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (qword_281499E50 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v14 = sub_2304A5B74();
    v42 = __swift_project_value_buffer(v14, qword_28149B038);
    v15 = sub_2304A5B54();
    v16 = sub_2304A5E94();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v45;
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_230430000, v15, v16, "Migrating client descriptors", v19, 2u);
      MEMORY[0x23191A000](v19, -1, -1);
    }

    result = sub_230492F08();
    v22 = v44;
    if (v1)
    {
      break;
    }

    v41 = *(result + 16);
    if (!v41)
    {
    }

    v23 = 0;
    v38 = v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_clientDescriptorStore;
    v37 = result + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v36 = v43 + 16;
    v46 = (v43 + 8);
    *&v21 = 136446210;
    v35 = v21;
    v39 = v3;
    v40 = result;
    while (v23 < *(result + 16))
    {
      v24 = *(v43 + 16);
      v24(v22, v37 + *(v43 + 72) * v23, v3);
      v24(v18, v22, v3);
      v25 = sub_2304A5B54();
      v26 = sub_2304A5E94();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v47 = v28;
        *v27 = v35;
        v29 = sub_2304A5284();
        v31 = v30;
        v2 = *v46;
        (*v46)(v45, v39);
        v32 = sub_23046A5C8(v29, v31, &v47);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_230430000, v25, v26, "Storing client descriptor: %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        v33 = v28;
        v18 = v45;
        MEMORY[0x23191A000](v33, -1, -1);
        v34 = v27;
        v3 = v39;
        MEMORY[0x23191A000](v34, -1, -1);
      }

      else
      {

        v2 = *v46;
        (*v46)(v18, v3);
      }

      __swift_project_boxed_opaque_existential_5Tm(v38, *(v38 + 3));
      v22 = v44;
      sub_2304A54A4();
      ++v23;
      v2(v22, v3);
      result = v40;
      if (v41 == v23)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  return result;
}

char *sub_23048F08C()
{
  v284 = sub_2304A4A64();
  v281 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v283 = &v198 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_2304A3FC4();
  v280 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v267 = &v198 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v282 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v266 = &v198 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v285 = &v198 - v9;
  MEMORY[0x28223BE20](v8);
  v292 = &v198 - v10;
  v293 = sub_2304A5054();
  v272 = *(v293 - 8);
  v11 = MEMORY[0x28223BE20](v293);
  v294 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v271 = &v198 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546E8, &qword_2304A7EC8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v291 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v287 = &v198 - v17;
  v224 = sub_2304A43B4();
  MEMORY[0x28223BE20](v224);
  v223 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  MEMORY[0x28223BE20](v19 - 8);
  v222 = &v198 - v20;
  v21 = sub_2304A4FD4();
  MEMORY[0x28223BE20](v21 - 8);
  v227 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2304A49E4();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v221 = &v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v226 = &v198 - v27;
  MEMORY[0x28223BE20](v26);
  v228 = &v198 - v28;
  v251 = sub_2304A4FF4();
  i = *(v251 - 8);
  v29 = MEMORY[0x28223BE20](v251);
  v220 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v249 = &v198 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v219 = &v198 - v34;
  MEMORY[0x28223BE20](v33);
  v234 = &v198 - v35;
  v218 = sub_2304A4084();
  v278 = *(v218 - 8);
  v36 = MEMORY[0x28223BE20](v218);
  v217 = &v198 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v233 = &v198 - v38;
  v252 = sub_2304A45F4();
  v39 = *(v252 - 8);
  v40 = MEMORY[0x28223BE20](v252);
  v216 = &v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v260 = &v198 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F8, &qword_2304A7ED0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v256 = &v198 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v255 = (&v198 - v47);
  MEMORY[0x28223BE20](v46);
  v261 = &v198 - v48;
  v265 = sub_2304A4BF4();
  v49 = *(v265 - 8);
  v50 = MEMORY[0x28223BE20](v265);
  v225 = &v198 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v248 = &v198 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v289 = &v198 - v55;
  MEMORY[0x28223BE20](v54);
  v250 = &v198 - v56;
  v268 = sub_2304A5084();
  v277 = *(v268 - 8);
  v57 = MEMORY[0x28223BE20](v268);
  v232 = &v198 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v230 = &v198 - v60;
  MEMORY[0x28223BE20](v59);
  v273 = &v198 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528);
  v257 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v254 = &v198 - v63;
  v64 = sub_2304A5CA4();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v67 = (&v198 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v235 = v0;
  v68 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v67 = v68;
  (*(v65 + 104))(v67, *MEMORY[0x277D85200], v64);
  v69 = v68;
  LOBYTE(v68) = sub_2304A5CB4();
  (*(v65 + 8))(v67, v64);
  if (v68)
  {
    if (qword_281499E50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_57:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v70 = sub_2304A5B74();
  v253 = __swift_project_value_buffer(v70, qword_28149B038);
  v71 = sub_2304A5B54();
  v72 = sub_2304A5E94();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_230430000, v71, v72, "Migrating records", v73, 2u);
    MEMORY[0x23191A000](v73, -1, -1);
  }

  v74 = v235;
  v75 = v290;
  result = sub_230493430();
  v77 = v261;
  if (!v75)
  {
    v78 = result;
    v238 = *(result + 2);
    if (v238)
    {
      v286 = 0;
      v246 = *(v62 + 48);
      v276 = (v74 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordStore);
      v245 = &result[(*(v257 + 80) + 32) & ~*(v257 + 80)];
      v205 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore;
      swift_beginAccess();
      v79 = 0;
      v244 = (v277 + 4);
      v243 = (v49 + 4);
      v80 = v49 + 2;
      v242 = (v49 + 11);
      v241 = *MEMORY[0x277D46558];
      v240 = (v39 + 56);
      v259 = (v49 + 1);
      v215 = *MEMORY[0x277D46560];
      v229 = (v39 + 104);
      v214 = (v49 + 12);
      v239 = (v39 + 48);
      v208 = *MEMORY[0x277D463E0];
      v213 = (v39 + 32);
      v247 = (i + 8);
      v212 = *MEMORY[0x277D463D8];
      v231 = (v277 + 2);
      v236 = v277 + 1;
      v211 = (v39 + 8);
      v204 = (v278 + 1);
      v203 = (v278 + 6);
      v199 = (v278 + 4);
      v202 = (v278 + 7);
      v201 = (v39 + 16);
      v269 = v272 + 16;
      v290 = (v272 + 32);
      v278 = v280 + 6;
      v264 = v280 + 4;
      *&v81 = 136446466;
      v207 = v81;
      *&v81 = 136446210;
      v206 = v81;
      v200 = xmmword_2304A7E70;
      v263 = v280 + 1;
      v275 = v280 + 7;
      v274 = (v281 + 8);
      v277 = (v272 + 8);
      v62 = v252;
      v39 = v265;
      v82 = v256;
      v83 = v250;
      v84 = v248;
      v49 = v289;
      v237 = v78;
      v258 = v80;
      do
      {
        if (v79 >= *(v78 + 2))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v88 = *(v257 + 72);
        v262 = v79;
        v89 = v254;
        v90 = v80;
        sub_230464B24(&v245[v88 * v79], v254, &qword_27DB54170, &qword_2304A7528);
        (*v244)(v273, v89, v268);
        (*v243)(v83, v89 + v246, v39);
        v91 = *v90;
        (*v90)(v49, v83, v39);
        v92 = (*v242)(v49, v39);
        if (v92 == v241)
        {
          (*v214)(v49, v39);
          v93 = *v49;
          v94 = v255;
          *v255 = v93;
          (*v229)(v94, v212, v62);
          (*v240)(v94, 0, 1, v62);
        }

        else
        {
          v94 = v255;
          if (v92 == v215)
          {
            (*v229)(v255, v208, v62);
            (*v240)(v94, 0, 1, v62);
          }

          else
          {
            (*v240)(v255, 1, 1, v62);
            (*v259)(v289, v39);
          }
        }

        sub_230464ABC(v94, v77, &qword_27DB546F8, &qword_2304A7ED0);
        sub_230464B24(v77, v82, &qword_27DB546F8, &qword_2304A7ED0);
        if ((*v239)(v82, 1, v62) == 1)
        {
          sub_230464970(v82, &qword_27DB546F8, &qword_2304A7ED0);
          v91(v84, v83, v39);
          v95 = v232;
          v96 = v268;
          (*v231)(v232, v273, v268);
          v97 = sub_2304A5B54();
          v98 = v96;
          v99 = v83;
          v100 = sub_2304A5E74();
          if (os_log_type_enabled(v97, v100))
          {
            v101 = swift_slowAlloc();
            v280 = swift_slowAlloc();
            v295[0] = v280;
            *v101 = v207;
            v91(v225, v84, v265);
            v102 = sub_2304A5D34();
            v104 = v103;
            v281 = *v259;
            (v281)(v84, v265);
            v105 = sub_23046A5C8(v102, v104, v295);

            *(v101 + 4) = v105;
            *(v101 + 12) = 2082;
            v106 = v249;
            sub_2304A5014();
            sub_2304948A8(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
            v107 = v251;
            v108 = sub_2304A62D4();
            v110 = v109;
            (*v247)(v106, v107);
            v111 = *v236;
            v112 = v268;
            (*v236)(v95, v268);
            v113 = sub_23046A5C8(v108, v110, v295);
            v62 = v252;

            *(v101 + 14) = v113;
            _os_log_impl(&dword_230430000, v97, v100, "Unknown destination %{public}s for record ID: %{public}s", v101, 0x16u);
            v114 = v280;
            swift_arrayDestroy();
            v77 = v261;
            MEMORY[0x23191A000](v114, -1, -1);
            v115 = v101;
            v39 = v265;
            MEMORY[0x23191A000](v115, -1, -1);

            sub_230464970(v77, &qword_27DB546F8, &qword_2304A7ED0);
            v83 = v250;
            (v281)(v250, v39);
            v111(v273, v112);
            goto LABEL_49;
          }

          v85 = *v236;
          (*v236)(v95, v98);
          v86 = v98;
          v87 = *v259;
          (*v259)(v84, v39);
          v77 = v261;
          sub_230464970(v261, &qword_27DB546F8, &qword_2304A7ED0);
          v87(v99, v39);
          v85(v273, v86);
          v83 = v99;
          v49 = v289;
          v78 = v237;
          v62 = v252;
        }

        else
        {
          (*v213)(v260, v82, v62);
          v116 = v234;
          v117 = v273;
          sub_2304A5014();
          v118 = sub_2304A4FA4();
          v120 = v119;
          v121 = *v247;
          v122 = v251;
          (*v247)(v116, v251);
          v295[0] = v118;
          v295[1] = v120;
          v123 = v233;
          v124 = v286;
          sub_2304A4344();
          if (!v124)
          {
            v286 = 0;

            v281 = sub_2304A4044();
            v280 = v139;
            v140 = v218;
            (*v204)(v123, v218);
            v141 = v219;
            sub_2304A5014();
            v142 = v227;
            sub_2304A4FE4();
            v121(v141, v122);
            v143 = 1;
            if ((*v203)(v142, 1, v140) != 1)
            {
              (*v199)(v226, v227, v140);
              v143 = 0;
            }

            v144 = v226;
            (*v202)(v226, v143, 1, v140);
            v145 = v144;
            v146 = v228;
            sub_230494704(v145, v228);
            i = sub_2304A4984();
            v147 = v249;
            sub_2304A5014();
            sub_2304A4FB4();
            v121(v147, v122);
            v148 = v122;
            v149 = v220;
            sub_2304A5014();
            sub_2304A4F84();
            v150 = v149;
            v151 = v249;
            v121(v150, v148);
            v152 = sub_2304A4974();
            i = v121;
            v153 = v152;

            sub_230494768(v146, v221);
            v270 = sub_2304A4A04();
            swift_allocObject();

            v210 = v153;
            v154 = sub_2304A49B4();

            sub_2304A5014();
            v280 = sub_2304A4FA4();
            (i)(v151, v148);
            sub_2304A5074();
            (*v201)(v216, v260, v252);
            v155 = sub_2304A4024();
            (*(*(v155 - 8) + 56))(v222, 1, 1, v155);
            v295[0] = MEMORY[0x277D84F90];
            sub_2304948A8(&qword_27DB54700, MEMORY[0x277D46388], MEMORY[0x277D46390]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54708, &qword_2304A7ED8);
            sub_2304947CC();
            sub_2304A5FA4();
            sub_2304A43E4();
            swift_allocObject();
            v156 = v154;
            v157 = sub_2304A4374();

            v158 = sub_2304A5B54();
            v159 = sub_2304A5E94();

            v160 = os_log_type_enabled(v158, v159);
            v281 = v156;
            if (v160)
            {
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              v295[0] = v162;
              *v161 = v206;
              v296 = v156;
              sub_2304948A8(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
              v163 = sub_2304A62D4();
              v165 = sub_23046A5C8(v163, v164, v295);

              *(v161 + 4) = v165;
              _os_log_impl(&dword_230430000, v158, v159, "Storing metadata: %{public}s", v161, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v162);
              MEMORY[0x23191A000](v162, -1, -1);
              MEMORY[0x23191A000](v161, -1, -1);
            }

            v39 = v293;
            sub_230464834(v235 + v205, v295);
            __swift_project_boxed_opaque_existential_5Tm(v295, v295[3]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB540A8, &qword_2304A7498);
            v166 = swift_allocObject();
            *(v166 + 16) = v200;
            *(v166 + 32) = v157;
            v209 = v157;

            sub_2304A4814();

            __swift_destroy_boxed_opaque_existential_0Tm(v295);
            v167 = sub_2304A5064();
            v168 = 0;
            v170 = (v167 + 64);
            v169 = *(v167 + 64);
            v270 = v167;
            v171 = 1 << *(v167 + 32);
            if (v171 < 64)
            {
              v172 = ~(-1 << v171);
            }

            else
            {
              v172 = -1;
            }

            v173 = v172 & v169;
            v174 = (v171 + 63) >> 6;
            v280 = (v167 + 64);
            for (i = v174; ; v174 = i)
            {
              v177 = v291;
              if (!v173)
              {
                break;
              }

              v178 = v168;
LABEL_42:
              v182 = __clz(__rbit64(v173));
              v173 &= v173 - 1;
              v183 = v182 | (v178 << 6);
              v184 = *(*(v270 + 48) + 8 * v183);
              v185 = v272;
              v186 = v271;
              (*(v272 + 16))(v271, *(v270 + 56) + *(v272 + 72) * v183, v39);
              v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54720, &qword_2304A7EE0);
              v188 = *(v187 + 48);
              v189 = v291;
              *v291 = v184;
              v177 = v189;
              (*(v185 + 32))(&v189[v188], v186, v39);
              (*(*(v187 - 8) + 56))(v177, 0, 1, v187);
              v181 = v287;
              v49 = v288;
              v62 = v289;
LABEL_43:
              sub_230464ABC(v177, v181, &qword_27DB546E8, &qword_2304A7EC8);
              v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54720, &qword_2304A7EE0);
              if ((*(*(v190 - 8) + 48))(v181, 1, v190) == 1)
              {
                v49 = v62;

                sub_230494830(v228);
                v62 = v252;
                (*v211)(v260, v252);
                v77 = v261;
                sub_230464970(v261, &qword_27DB546F8, &qword_2304A7ED0);
                v83 = v250;
                v39 = v265;
                (*v259)(v250, v265);
                (*v236)(v273, v268);
                v84 = v248;
                goto LABEL_51;
              }

              (*v290)(v294, v181 + *(v190 + 48), v293);
              v191 = v285;
              sub_2304A5024();
              if ((*v278)(v191, 1, v49) == 1)
              {
                sub_230464970(v191, &qword_27DB53FE0, &qword_2304A7430);
                v175 = v292;
                (*v275)(v292, 1, 1, v49);
              }

              else
              {
                v192 = v267;
                (*v264)(v267, v191, v49);
                type metadata accessor for ClientDataSource(0);
                v193 = v266;
                v194 = v286;
                sub_230496544(v192, v266);
                v286 = v194;
                if (v194)
                {

                  (*v263)(v192, v49);
                  (*v277)(v294, v293);
                  sub_230494830(v228);
                  (*v211)(v260, v252);
                  sub_230464970(v261, &qword_27DB546F8, &qword_2304A7ED0);
                  (*v259)(v250, v265);
                  return (*v236)(v273, v268);
                }

                (*v263)(v192, v49);
                (*v275)(v193, 0, 1, v49);
                v175 = v292;
                sub_230464ABC(v193, v292, &qword_27DB53FE0, &qword_2304A7430);
              }

              sub_2304A5034();
              sub_230464B24(v175, v282, &qword_27DB53FE0, &qword_2304A7430);
              v176 = v283;
              sub_2304A4A24();
              __swift_project_boxed_opaque_existential_5Tm(v276, v276[3]);
              sub_2304A5354();
              (*v274)(v176, v284);
              sub_230464970(v292, &qword_27DB53FE0, &qword_2304A7430);
              v39 = v293;
              (*v277)(v294, v293);
              v170 = v280;
            }

            if (v174 <= v168 + 1)
            {
              v179 = v168 + 1;
            }

            else
            {
              v179 = v174;
            }

            v180 = v179 - 1;
            v181 = v287;
            v49 = v288;
            v62 = v289;
            while (1)
            {
              v178 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                break;
              }

              if (v178 >= v174)
              {
                v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54720, &qword_2304A7EE0);
                (*(*(v195 - 8) + 56))(v177, 1, 1, v195);
                v173 = 0;
                v168 = v180;
                goto LABEL_43;
              }

              v173 = v170[v178];
              ++v168;
              if (v173)
              {
                v168 = v178;
                goto LABEL_42;
              }
            }

            __break(1u);
            goto LABEL_56;
          }

          v286 = 0;

          v125 = v230;
          (*v231)(v230, v117, v268);
          v126 = sub_2304A5B54();
          v127 = sub_2304A5E74();
          if (!os_log_type_enabled(v126, v127))
          {

            v196 = *v236;
            v197 = v268;
            (*v236)(v125, v268);
            (*v211)(v260, v62);
            v77 = v261;
            sub_230464970(v261, &qword_27DB546F8, &qword_2304A7ED0);
            v83 = v250;
            v39 = v265;
            (*v259)(v250, v265);
            v196(v117, v197);
LABEL_49:
            v84 = v248;
            v49 = v289;
LABEL_51:
            v78 = v237;
            goto LABEL_9;
          }

          v128 = swift_slowAlloc();
          v280 = swift_slowAlloc();
          v295[0] = v280;
          *v128 = v206;
          v129 = v249;
          sub_2304A5014();
          sub_2304948A8(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v130 = v121;
          v131 = v251;
          v132 = sub_2304A62D4();
          v134 = v133;
          v135 = v129;
          v136 = v268;
          v130(v135, v131);
          v281 = *v236;
          (v281)(v230, v136);
          v137 = sub_23046A5C8(v132, v134, v295);
          v78 = v237;
          v77 = v261;

          *(v128 + 4) = v137;
          _os_log_impl(&dword_230430000, v126, v127, "Could not create internal ID for record ID: %{public}s", v128, 0xCu);
          v138 = v280;
          __swift_destroy_boxed_opaque_existential_0Tm(v280);
          MEMORY[0x23191A000](v138, -1, -1);
          MEMORY[0x23191A000](v128, -1, -1);

          (*v211)(v260, v62);
          sub_230464970(v77, &qword_27DB546F8, &qword_2304A7ED0);
          v83 = v250;
          v39 = v265;
          (*v259)(v250, v265);
          (v281)(v273, v136);
          v84 = v248;
          v49 = v289;
        }

LABEL_9:
        v79 = v262 + 1;
        v82 = v256;
        v80 = v258;
      }

      while (v262 + 1 != v238);
    }
  }

  return result;
}

void sub_230491638()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2304A5364();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5CA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_2304A5CB4();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  v11 = sub_2304920BC();
  if (!v11)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D46880], v1);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888], MEMORY[0x277D46890]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    return;
  }

  v19[0] = 0;
  if (![v11 eraseAndReturnError_])
  {
    v18 = v19[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  v12 = qword_281499E50;
  v13 = v19[0];
  if (v12 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v14 = sub_2304A5B74();
  __swift_project_value_buffer(v14, qword_28149B038);
  v15 = sub_2304A5B54();
  v16 = sub_2304A5E94();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_230430000, v15, v16, "Erased old data", v17, 2u);
    MEMORY[0x23191A000](v17, -1, -1);
  }

  swift_unknownObjectRelease();
}

void sub_2304919B4()
{
  v1 = sub_2304A5CA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2304A5CB4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection;
  if (!*&v0[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection])
  {
    sub_230474F08(0, &qword_281499D68, 0x277CF3288);
    sub_2304A54C4();
    v8 = v0;
    v9 = sub_2304A5F54();
    if (v9)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277CF32B8]) initWithEndpoint_];

      if (v11)
      {
        v12 = *&v8[v7];
        *&v8[v7] = v11;
        v13 = v11;

        v14 = swift_allocObject();
        *(v14 + 16) = v8;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_2304948A0;
        *(v15 + 24) = v14;
        aBlock[4] = sub_2304324E8;
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23043248C;
        aBlock[3] = &block_descriptor_5;
        v16 = _Block_copy(aBlock);
        v17 = v8;

        [v13 configure_];

        _Block_release(v16);
        LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

        if (v13)
        {
          __break(1u);
LABEL_8:
          __break(1u);
        }
      }
    }
  }
}

void sub_230491C80(void *a1, uint64_t a2)
{
  sub_2304A54B4();
  v4 = sub_2304A5D14();

  v17 = sub_23048C14C;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2304328BC;
  v16 = &block_descriptor_14;
  v5 = _Block_copy(&v13);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
    v8 = sub_2304A5D14();
    v9 = [objc_opt_self() queueWithName:v8 targetQueue:v7];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v17 = sub_230491FA8;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2304318E8;
    v16 = &block_descriptor_17;
    v10 = _Block_copy(&v13);
    [a1 setActivationHandler_];
    _Block_release(v10);
    v17 = sub_230491FB4;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2304318E8;
    v16 = &block_descriptor_20_0;
    v11 = _Block_copy(&v13);
    [a1 setInterruptionHandler_];
    _Block_release(v11);
    v17 = sub_230491FC0;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2304318E8;
    v16 = &block_descriptor_23_0;
    v12 = _Block_copy(&v13);
    [a1 setInvalidationHandler_];
    _Block_release(v12);
  }
}

void sub_230491FCC(uint64_t a1, const char *a2)
{
  if (qword_281499E50 != -1)
  {
    swift_once();
  }

  v3 = sub_2304A5B74();
  __swift_project_value_buffer(v3, qword_28149B038);
  oslog = sub_2304A5B54();
  v4 = sub_2304A5E64();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_230430000, oslog, v4, a2, v5, 2u);
    MEMORY[0x23191A000](v5, -1, -1);
  }
}

uint64_t sub_2304920BC()
{
  v1 = sub_2304A5CA4();
  isa = v1[-1].isa;
  MEMORY[0x28223BE20](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2304A5CB4();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_23048C234();
  v7 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection);
  if (!v7)
  {
    if (qword_281499E50 != -1)
    {
      swift_once();
    }

    v8 = sub_2304A5B74();
    __swift_project_value_buffer(v8, qword_28149B038);
    v1 = sub_2304A5B54();
    v9 = sub_2304A5E84();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_230430000, v1, v9, "Failed to establish a connection", v10, 2u);
      MEMORY[0x23191A000](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_2304A5F94();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54760, qword_2304A7EF8);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_230464970(v19, &qword_27DB54148, &unk_2304A7500);
  }

  if (qword_281499E50 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_2304A5B74();
  __swift_project_value_buffer(v12, qword_28149B038);
  v13 = sub_2304A5B54();
  v14 = sub_2304A5E84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_230430000, v13, v14, "Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x23191A000](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_230492400@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A5364();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  MEMORY[0x28223BE20](v43);
  v42 = &v39[-v6];
  v7 = sub_2304A5504();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v47 = &v39[-v11];
  v12 = sub_2304A5CA4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_2304A5CB4();
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v19(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v20 = sub_2304920BC();
  if (!v20)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D46880], v2);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888], MEMORY[0x277D46890]);
    swift_allocError();
    sub_2304A5374();
    return swift_willThrow();
  }

  v48[0] = 0;
  v21 = [v20 localDeviceIDAndReturnError_];
  v22 = v48[0];
  if (!v21)
  {
    v38 = v48[0];
    sub_2304A3F24();

    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v23 = v21;
  sub_2304948A8(&qword_27DB547E8, MEMORY[0x277D46938], MEMORY[0x277D46930]);
  v15 = v47;
  v18 = v45;
  sub_2304A5444();
  v24 = v22;

  if (qword_281499E50 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v25 = sub_2304A5B74();
  __swift_project_value_buffer(v25, qword_28149B038);
  v26 = v44;
  (*(v44 + 16))(v10, v15, v18);
  v27 = sub_2304A5B54();
  v28 = sub_2304A5E94();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v29 = 136446210;
    v40 = v28;
    sub_2304A54F4();
    v30 = sub_2304A5D34();
    v32 = v31;
    v33 = *(v26 + 8);
    v33(v10, v18);
    v34 = sub_23046A5C8(v30, v32, v48);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_230430000, v27, v40, "Fetched local device ID %{public}s for migration", v29, 0xCu);
    v35 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x23191A000](v35, -1, -1);
    v36 = v29;
    v15 = v47;
    MEMORY[0x23191A000](v36, -1, -1);
  }

  else
  {

    v33 = *(v26 + 8);
    v33(v10, v18);
  }

  sub_2304A54F4();
  swift_unknownObjectRelease();
  return (v33)(v15, v18);
}

uint64_t sub_2304929E0()
{
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2304A5364();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A54E4();
  v35 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - v8;
  v9 = sub_2304A5CA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_2304A5CB4();
  v16 = *(v10 + 8);
  v15 = (v10 + 8);
  v16(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v17 = sub_2304920BC();
  if (!v17)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D46880], v1);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888], MEMORY[0x277D46890]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    return v0;
  }

  v37[0] = 0;
  v18 = [v17 devicesAndReturnError_];
  v19 = v37[0];
  if (!v18)
  {
    v30 = v37[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    return v0;
  }

  v20 = v18;
  sub_2304948A8(&qword_27DB547E0, MEMORY[0x277D46928], MEMORY[0x277D46920]);
  v15 = v36;
  sub_2304A5444();
  v21 = v19;

  if (qword_281499E50 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v22 = sub_2304A5B74();
  __swift_project_value_buffer(v22, qword_28149B038);
  v23 = v34;
  v24 = v35;
  (*(v35 + 16))(v34, v15, v5);
  v25 = sub_2304A5B54();
  v26 = sub_2304A5E94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v23;
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    v33 = *(sub_2304A54D4() + 16);

    v29 = *(v24 + 8);
    v29(v27, v5);
    *(v28 + 4) = v33;
    _os_log_impl(&dword_230430000, v25, v26, "Fetched %{public}ld devices for migration", v28, 0xCu);
    MEMORY[0x23191A000](v28, -1, -1);
  }

  else
  {
    v29 = *(v24 + 8);
    v29(v23, v5);
  }

  v0 = sub_2304A54D4();
  swift_unknownObjectRelease();
  v29(v15, v5);
  return v0;
}

uint64_t sub_230492F08()
{
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2304A5364();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5524();
  v35 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - v8;
  v9 = sub_2304A5CA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_2304A5CB4();
  v16 = *(v10 + 8);
  v15 = (v10 + 8);
  v16(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v17 = sub_2304920BC();
  if (!v17)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D46880], v1);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888], MEMORY[0x277D46890]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    return v0;
  }

  v37[0] = 0;
  v18 = [v17 clientDescriptorsAndReturnError_];
  v19 = v37[0];
  if (!v18)
  {
    v30 = v37[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    return v0;
  }

  v20 = v18;
  sub_2304948A8(&unk_27DB547D0, MEMORY[0x277D46948], MEMORY[0x277D46940]);
  v15 = v36;
  sub_2304A5444();
  v21 = v19;

  if (qword_281499E50 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v22 = sub_2304A5B74();
  __swift_project_value_buffer(v22, qword_28149B038);
  v23 = v34;
  v24 = v35;
  (*(v35 + 16))(v34, v15, v5);
  v25 = sub_2304A5B54();
  v26 = sub_2304A5E94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v23;
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    v33 = *(sub_2304A54D4() + 16);

    v29 = *(v24 + 8);
    v29(v27, v5);
    *(v28 + 4) = v33;
    _os_log_impl(&dword_230430000, v25, v26, "Fetched %{public}ld client descriptors for migration", v28, 0xCu);
    MEMORY[0x23191A000](v28, -1, -1);
  }

  else
  {
    v29 = *(v24 + 8);
    v29(v23, v5);
  }

  v0 = sub_2304A54D4();
  swift_unknownObjectRelease();
  v29(v15, v5);
  return v0;
}