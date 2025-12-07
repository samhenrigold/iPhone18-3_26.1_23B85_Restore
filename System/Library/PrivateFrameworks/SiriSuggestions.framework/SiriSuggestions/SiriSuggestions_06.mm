void sub_231252920()
{
  OUTLINED_FUNCTION_21_10();
  v2 = v1 + 64;
  OUTLINED_FUNCTION_0_16();
  v7 = v6 & v5;
  if (!v3)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_35_7(v10);
    return;
  }

  v8 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v3;
    OUTLINED_FUNCTION_3_16();
    v14 = (v12 - v13) >> 6;
    while (v11 < v8)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v16);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v10;
LABEL_12:
      v17 = __clz(__rbit64(v7)) | (v16 << 6);
      v18 = (*(v0 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v0 + 56) + 8 * v17);
      v7 &= v7 - 1;
      *v9 = *v18;
      v9[1] = v19;
      v9[2] = v20;
      if (v15 == v8)
      {
        sub_231369EE0();
        sub_231369EE0();
        v10 = v16;
        goto LABEL_17;
      }

      v9 += 3;
      sub_231369EE0();
      sub_231369EE0();
      v11 = v15;
      v10 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231252A6C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_21_10();
  v2 = v1 + 64;
  v3 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_1_18();
  v8 = v7 & v6;
  if (!v4)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_10_13(v11);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v9 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v4;
    OUTLINED_FUNCTION_3_16();
    v14 = (v13 - v3) >> 6;
    while (v12 < v9)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v8 = *(v2 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      v17 = (*(v0 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v8)))));
      v18 = v17[1];
      v8 &= v8 - 1;
      *v10 = *v17;
      v10[1] = v18;
      if (v15 == v9)
      {
        sub_231369EE0();
        v11 = v16;
        goto LABEL_17;
      }

      v10 += 2;
      sub_231369EE0();
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231252BA8()
{
  OUTLINED_FUNCTION_11_0();
  v7 = OUTLINED_FUNCTION_33_6();
  v8(v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_18();
  v14 = v13 & v12;
  if (!v3)
  {
    v17 = 0;
LABEL_18:
    OUTLINED_FUNCTION_24_11(v17);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v23 = v11;
    OUTLINED_FUNCTION_3_16();
    v16 = OUTLINED_FUNCTION_15_14(v15);
    while (v18 < v16)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

      if (!v14)
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v1)
          {
            goto LABEL_18;
          }

          v14 = *(v23 + 8 * v19);
          ++v17;
          if (v14)
          {
            v25 = v18 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v25 = v18 + 1;
      v19 = v17;
LABEL_13:
      v20 = OUTLINED_FUNCTION_9_13();
      v21(v20);
      v22 = OUTLINED_FUNCTION_26_10();
      v2(v22);
      (v2)(v3, v0, v5);
      v16 = v24;
      v18 = v25;
      if (v25 == v24)
      {
        v17 = v19;
        goto LABEL_18;
      }

      v3 += v6;
      v17 = v19;
      v2 = v4;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_231252D94()
{
  result = qword_280F7C828;
  if (!qword_280F7C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43D28, &unk_231370460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C828);
  }

  return result;
}

uint64_t sub_231252E14(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *(OUTLINED_FUNCTION_44_6(a1, a2) + 32);
  (**(v3 - 8))(v2);
  return v2;
}

uint64_t sub_231252E6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_231252F34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2313625AC(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_231252F98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44_6(a1, a2);
  (**(v3 - 8))(v2);
  return v2;
}

uint64_t sub_231252FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void OUTLINED_FUNCTION_24_11(uint64_t a1@<X8>)
{
  v6 = ~*(v5 - 128);
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v6;
  v2[3] = a1;
  v2[4] = v4;
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return sub_231369EE0();
}

uint64_t sub_2312530E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_0_17();
  *(v0 + 64) = sub_231253AB0(v2, 255, v3, MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  return v0;
}

uint64_t sub_2312531B0(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0);
  v2[17] = swift_task_alloc();
  v3 = sub_2313698C0();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312532B4, 0, 0);
}

uint64_t sub_2312532B4()
{
  v25 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = sub_231367820();
  if (v1[2])
  {
    v2 = v1[4];
    *(v0 + 176) = v2;
    v3 = v1[5];
    *(v0 + 184) = v3;
    sub_231369EE0();

    sub_231369150();
    sub_231369EE0();
    v4 = sub_2313698A0();
    v5 = sub_23136A3A0();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2311CFD58(v2, v3, &v24);
      _os_log_impl(&dword_2311CB000, v4, v5, "Apps mentioned: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x23192B930](v11, -1, -1);
      MEMORY[0x23192B930](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    sub_2311CF324(*(v0 + 128) + 16, v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_23136B670;
    *(v12 + 32) = v2;
    *(v12 + 40) = v3;
    type metadata accessor for FallbackSignalHelper();
    *(v0 + 192) = swift_initStackObject();
    sub_231369EE0();
    v13 = swift_task_alloc();
    *(v0 + 200) = v13;
    *v13 = v0;
    v13[1] = sub_231253624;

    return sub_2312C4274(v0 + 16, v12);
  }

  else
  {

    sub_231369150();
    v15 = sub_2313698A0();
    v16 = sub_23136A3A0();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 144);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2311CB000, v15, v16, "No apps mentioned", v21, 2u);
      MEMORY[0x23192B930](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);

    v22 = *(v0 + 8);
    v23 = MEMORY[0x277D84F90];

    return v22(v23);
  }
}

uint64_t sub_231253624(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_231253724, 0, 0);
}

uint64_t sub_231253724()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2313707C0;
  sub_2313692F0();
  v5 = sub_231367D20();
  v0[10] = v5;
  OUTLINED_FUNCTION_0_17();
  v0[11] = sub_231253AB0(v6, 255, v7, MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v5);
  sub_2312C3FA0(v2, v1);
  sub_231367B70();
  v9 = sub_231367B80();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  *(v4 + 32) = sub_231369220();

  v10 = v0[1];

  return v10(v4);
}

uint64_t sub_23125391C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2312531B0(a1);
}

void sub_2312539B4(uint64_t a1, uint64_t a2)
{
  sub_231253AB0(qword_280F7F4C8, a2, type metadata accessor for MentionedAppSignalExtractor, &unk_231370840);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_231253AB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231253AF8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_231369EE0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2311D1D6C(*(a1 + 56) + 32 * v12, v46);
    *&v45 = v15;
    *(&v45 + 1) = v14;
    v41 = v45;
    v42 = v46[0];
    v43 = v46[1];
    sub_2311D1D6C(&v42, v37);
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
    if (swift_dynamicCast())
    {
      v22 = v38;
      if (!v38)
      {
        goto LABEL_17;
      }

      v39 = v42;
      v40 = v43;
      v38 = v41;
      v23 = *(v2 + 16);
      if (*(v2 + 24) <= v23)
      {
        sub_2312B5354(v23 + 1, 1, v16, v17, v18, v19, v20, v21, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45);
        v2 = v47;
      }

      v24 = v38;
      sub_23136A9D0();
      v48 = *(&v24 + 1);
      sub_23136A060();
      result = sub_23136AA00();
      v25 = v2 + 64;
      v26 = -1 << *(v2 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = *(v25 + 8 * v28);
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = (*(v2 + 48) + 16 * v29);
      v35 = v48;
      *v34 = v24;
      v34[1] = v35;
      *(*(v2 + 56) + 8 * v29) = v22;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    }

    else
    {
      *&v38 = 0;
LABEL_17:
      result = sub_231228E9C(&v41, &qword_27DD43558, &qword_231374890);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_231253DBC()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  MEMORY[0x23192A730](95, 0xE100000000000000);
  sub_2313692D0();
  OUTLINED_FUNCTION_5_11();

  return 0x6E496B6E61725F5FLL;
}

uint64_t sub_231253E64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  MEMORY[0x23192A730](a1, a2);
  return 0x70417473616C5F5FLL;
}

uint64_t sub_231253EE4()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231253F48()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231253FAC()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231369040();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231254010()
{
  OUTLINED_FUNCTION_1_19();
  sub_23136A650();

  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_3_17();
  sub_231367D40();
  OUTLINED_FUNCTION_5_11();

  return v1;
}

uint64_t sub_231254074(uint64_t a1, uint64_t a2)
{
  sub_231253E64(a1, a2);
  OUTLINED_FUNCTION_0_18();
  v2();

  if (v7)
  {
    v4 = OUTLINED_FUNCTION_2_9(v3);
    return OUTLINED_FUNCTION_4_11(v4);
  }

  else
  {
    sub_231228E9C(v6, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_231254110()
{
  sub_231253F48();
  OUTLINED_FUNCTION_0_18();
  v0();

  if (v5)
  {
    v1 = sub_2313692F0();
    if (OUTLINED_FUNCTION_2_9(v1))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_231228E9C(v4, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_2312541AC()
{
  sub_231253FAC();
  OUTLINED_FUNCTION_0_18();
  v0();

  if (v5)
  {
    v2 = OUTLINED_FUNCTION_2_9(v1);
    return OUTLINED_FUNCTION_4_11(v2);
  }

  else
  {
    sub_231228E9C(v4, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_231254248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231369050();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_231254110())
  {
    v9 = sub_231253DBC();
    (*(a3 + 8))(v27, v9);

    if (v27[3])
    {
      v10 = swift_dynamicCast();
      return OUTLINED_FUNCTION_4_11(v10);
    }

    sub_231228E9C(v27, &qword_27DD443C0, &unk_23136E000);
  }

  else
  {
    v12 = sub_231253F48();
    v14 = v13;
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v15 = sub_2313698C0();
    __swift_project_value_buffer(v15, qword_280F8E510);
    (*(v6 + 16))(v8, a1, v5);
    sub_231369EE0();
    v16 = sub_2313698A0();
    v17 = sub_23136A3A0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v12;
      v20 = v19;
      v27[0] = v19;
      *v18 = 136315394;
      v21 = sub_231369040();
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      v24 = sub_2311CFD58(v21, v23, v27);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v25 = sub_2311CFD58(v26, v14, v27);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_2311CB000, v16, v17, "unable to determine signal for %s. DataProvider does not have this available for key %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v20, -1, -1);
      MEMORY[0x23192B930](v18, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

uint64_t sub_231254598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231369040();
  MEMORY[0x23192A730](v5);

  (*(a3 + 8))(v7, 0x6E6F697463615F5FLL, 0xEA00000000005F73, a2, a3);

  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
    if (swift_dynamicCast())
    {
      return 0x6E6F697463615F5FLL;
    }
  }

  else
  {
    sub_231228E9C(v7, &qword_27DD443C0, &unk_23136E000);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2312546AC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = sub_231253AF8(v2);

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v3;
  result = sub_231369EE0();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= v8)
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v13);
          ++v11;
          if (v7)
          {
            v11 = v13;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_9:
      v14 = *(*(v9 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
      v15 = *(v14 + 16);
      v16 = *(v12 + 16);
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_25;
      }

      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v17 > *(v12 + 24) >> 1)
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        sub_23126E388(isUniquelyReferenced_nonNull_native, v19, 1, v12);
        v12 = v20;
      }

      v7 &= v7 - 1;
      if (!*(v14 + 16))
      {
        break;
      }

      v21 = (*(v12 + 24) >> 1) - *(v12 + 16);
      result = sub_231368090();
      if (v21 < v15)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v22 = *(v12 + 16);
        v23 = __OFADD__(v22, v15);
        v24 = v22 + v15;
        if (v23)
        {
          goto LABEL_27;
        }

        *(v12 + 16) = v24;
      }
    }
  }

  while (!v15);
  __break(1u);
LABEL_23:

  return v12;
}

uint64_t sub_2312548B8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(v5, 0xD000000000000012, 0x800000023137DF30, a1, a2);
  if (v5[3])
  {
    if (OUTLINED_FUNCTION_2_9(v2))
    {
      return v4;
    }
  }

  else
  {
    sub_231228E9C(v5, &qword_27DD443C0, &unk_23136E000);
  }

  return 0;
}

uint64_t sub_231254950()
{
  sub_231253EE4();
  OUTLINED_FUNCTION_0_18();
  v0();

  if (v5)
  {
    if (OUTLINED_FUNCTION_2_9(v1))
    {
      return v3;
    }
  }

  else
  {
    sub_231228E9C(v4, &qword_27DD443C0, &unk_23136E000);
  }

  return -2;
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x23192A730);
}

void sub_231254A3C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, __n128 a4)
{
  v31 = a1;
  v32 = a2;
  v6 = type metadata accessor for IntentDetails(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_1();
  v29 = v8;
  OUTLINED_FUNCTION_36();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {

      return;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    sub_23125D69C(a3 + v15 + v16 * v13, v12, v10);
    v17 = v31(v12);
    if (v4)
    {
      sub_23120542C(v12, v18);

      return;
    }

    if (v17)
    {
      sub_23125D700(v12, v29);
      v19 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_28_9();
        sub_2311F5A40(v21, v22, v23);
        v19 = v33;
      }

      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v30 = v25 + 1;
        v28 = v25;
        sub_2311F5A40(v24 > 1, v25 + 1, 1);
        v26 = v30;
        v25 = v28;
        v19 = v33;
      }

      ++v13;
      *(v19 + 16) = v26;
      v30 = v19;
      sub_23125D700(v29, v19 + v15 + v25 * v16);
    }

    else
    {
      sub_23120542C(v12, v18);
      ++v13;
    }
  }

  __break(1u);
}

void sub_231254CB8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v32 = a4(0);
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v27 = v11;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_14();
  v13 = 0;
  v31 = *(a3 + 16);
  v14 = (v9 + 8);
  v26 = (v9 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v31 == v13)
    {

      return;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = *(v9 + 72);
    (*(v9 + 16))(v6, a3 + v15 + v16 * v13, v32);
    v17 = a1(v6);
    if (v5)
    {
      (*v14)(v6, v32);

      return;
    }

    if (v17)
    {
      v24 = *v26;
      (*v26)(v27, v6, v32);
      v33 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_28_9();
        (a5)(v19);
      }

      v18 = v28;
      v21 = *(v28 + 16);
      v20 = *(v28 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v29 = v21 + 1;
        v23 = v21;
        a5(v20 > 1, v21 + 1, 1);
        v22 = v29;
        v21 = v23;
        v18 = v33;
      }

      ++v13;
      *(v18 + 16) = v22;
      v28 = v18;
      v24(v18 + v15 + v21 * v16, v27, v32);
    }

    else
    {
      (*v14)(v6, v32);
      ++v13;
    }
  }

  __break(1u);
}

uint64_t (*sub_231254F64(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v9 = a3 + 32;
  v17 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_23123EA8C(v9, __src, &qword_27DD43630, &qword_23136CB70);
    v10 = v5(__src);
    if (v3)
    {
      sub_2311D1F18(__src, &qword_27DD43630, &qword_23136CB70);

LABEL_14:

      return v8;
    }

    if (v10)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_28_9();
        sub_2311F5D38(v12, v13, v14);
        v8 = v20;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2311F5D38((v15 > 1), v16 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v16 + 1;
      result = memcpy((v8 + 72 * v16 + 32), __dst, 0x48uLL);
      v5 = v17;
    }

    else
    {
      result = sub_2311D1F18(__src, &qword_27DD43630, &qword_23136CB70);
    }

    v9 += 72;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_231255100(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v15 = MEMORY[0x277D84F90];
  result = sub_231255288(a3);
  v7 = result;
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return v15;
    }

    if (v9)
    {
      result = MEMORY[0x23192AD10](v8, v4);
      v10 = result;
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v14 = v10;
    v11 = a1(&v14);
    if (v3)
    {
    }

    if (v11)
    {
      sub_23136A6A0();
      sub_23136A6D0();
      v4 = v12;
      sub_23136A6E0();
      result = sub_23136A6B0();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_231255288(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23136A5A0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2312552AC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C88, &qword_231370B00);
    v5 = sub_23136A790();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  a2(a1, 1, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_231255414()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  sub_231369A00();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B18, MEMORY[0x277D723F8], MEMORY[0x277D72400]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v5 = OUTLINED_FUNCTION_14_13();
      v1(v5);
      OUTLINED_FUNCTION_13_13();
      sub_23122E348();
      v6 = OUTLINED_FUNCTION_12_10();
      v7(v6);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v8);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_231255540()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  sub_231367490();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B30, MEMORY[0x277D608B8], MEMORY[0x277D608C0]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v5 = OUTLINED_FUNCTION_14_13();
      v1(v5);
      OUTLINED_FUNCTION_13_13();
      sub_23122E4BC();
      v6 = OUTLINED_FUNCTION_12_10();
      v7(v6);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v8);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23125566C(unint64_t a1)
{
  sub_231255288(a1);
  OUTLINED_FUNCTION_24_0();
  sub_2313692F0();
  sub_23125D758(&unk_280F7C910, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
  OUTLINED_FUNCTION_24_12();
  v8 = v2;
  result = sub_231255288(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23192AD10](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_23122E630(&v7, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_231255788()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  sub_231369D90();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B00, MEMORY[0x277D73110], MEMORY[0x277D73118]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v5 = OUTLINED_FUNCTION_14_13();
      v1(v5);
      OUTLINED_FUNCTION_13_13();
      sub_23122EE54();
      v6 = OUTLINED_FUNCTION_12_10();
      v7(v6);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v8);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_2312558B4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  sub_231369900();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43B48, MEMORY[0x277D72108], MEMORY[0x277D72110]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v5 = OUTLINED_FUNCTION_14_13();
      v1(v5);
      OUTLINED_FUNCTION_13_13();
      sub_23122F13C();
      v6 = OUTLINED_FUNCTION_12_10();
      v7(v6);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v8);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_2312559E0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  sub_231369D50();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_280F7C888, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v5 = OUTLINED_FUNCTION_14_13();
      v1(v5);
      OUTLINED_FUNCTION_13_13();
      sub_23122F2B0();
      v6 = OUTLINED_FUNCTION_12_10();
      v7(v6);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v8);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

void sub_231255B0C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  sub_231369990();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_18();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_11();
  sub_23125D758(&qword_27DD43AE8, MEMORY[0x277D72238], MEMORY[0x277D72248]);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_34_6(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_2_10();
    do
    {
      v5 = OUTLINED_FUNCTION_14_13();
      v1(v5);
      OUTLINED_FUNCTION_13_13();
      sub_23122EFC8();
      v6 = OUTLINED_FUNCTION_12_10();
      v7(v6);
      OUTLINED_FUNCTION_39_4();
    }

    while (!v8);
  }

  else
  {
    OUTLINED_FUNCTION_53_4();
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_231255C38(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6574(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_23125B03C(v9);
  *a1 = v2;
  return result;
}

void sub_231255CA4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65D4(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_23125B130(v9);
  *a1 = v3;
}

uint64_t sub_231255D58()
{
  sub_231367710();
  v1 = MEMORY[0x277D84F90];
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  sub_2313673A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
  OUTLINED_FUNCTION_0_19();
  sub_23125D758(v2, v3, MEMORY[0x277D60898]);
  v4 = sub_231369EC0();
  type metadata accessor for SuggestionPool();
  v5 = swift_allocObject();
  result = SuggestionPool.init(pool:resolvers:intentOwners:)(v0, v1, v4);
  qword_280F84A00 = v5;
  return result;
}

uint64_t SuggestionPool.__allocating_init(pool:resolvers:intentOwners:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_41_6();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_21_11();
  SuggestionPool.init(pool:resolvers:intentOwners:)(v6, a2, a3);
  return v3;
}

uint64_t static SuggestionPool.emptyPool.getter()
{
  if (qword_280F849F8 != -1)
  {
    swift_once();
  }
}

uint64_t SuggestionPool.__allocating_init(pool:resolvers:)(uint64_t a1, uint64_t a2)
{
  sub_2313673A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
  OUTLINED_FUNCTION_0_19();
  sub_23125D758(v4, v5, MEMORY[0x277D60898]);
  v6 = sub_231369EC0();
  OUTLINED_FUNCTION_41_6();
  v7 = swift_allocObject();
  SuggestionPool.init(pool:resolvers:intentOwners:)(a1, a2, v6);
  return v7;
}

uint64_t SuggestionPool.init(pool:resolvers:intentOwners:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0;
  *(v3 + 16) = a1;
  *(v3 + 48) = a2;
  sub_231369EE0();
  static SuggestionPool.buildIntentKeyedPool(pool:)();
  *(v3 + 24) = v5;
  static SuggestionPool.buildBridgePool(pool:)();
  v7 = v6;

  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

void static SuggestionPool.buildIntentKeyedPool(pool:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v147 = v6;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v136 = v8;
  OUTLINED_FUNCTION_18();
  v155 = sub_231368180();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v146 = v12;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_0();
  v152 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E40, &qword_231370F50);
  v16 = OUTLINED_FUNCTION_40_0(v15);
  MEMORY[0x28223BE20](v16);
  v151 = &v123 - v17;
  OUTLINED_FUNCTION_18();
  v18 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v144 = v22;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  v148 = &v123 - v24;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v25);
  v137 = &v123 - v26;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  v145 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E48, &qword_2313708D0);
  OUTLINED_FUNCTION_0_19();
  sub_23125D758(v29, v30, MEMORY[0x277D60898]);
  v153 = v18;
  v150 = sub_231369EC0();
  v31 = (v1 + 64);
  OUTLINED_FUNCTION_37_6();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;
  v154 = (v10 + 8);
  v141 = v20 + 32;
  v143 = (v20 + 16);
  v138 = v20;
  v142 = (v20 + 8);
  v139 = v4 + 8;
  sub_231369EE0();
  v37 = 0;
  *(&v38 + 1) = 3;
  v140 = xmmword_2313707C0;
  *&v38 = 136315394;
  v135 = v38;
  while (v34)
  {
LABEL_7:
    v40 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v41 = *(*(v1 + 56) + ((v37 << 9) | (8 * v40)));

    sub_2313676D0();
    __swift_project_boxed_opaque_existential_1(v158, v159);
    OUTLINED_FUNCTION_17_8();
    v42 = sub_231368F80();
    __swift_destroy_boxed_opaque_existential_1Tm(v158);
    if (v42)
    {
    }

    else
    {
      v43 = v152;
      sub_2313676F0();
      sub_231368110();
      v44 = *v154;
      (*v154)(v43, v155);
      if (v159)
      {
        v149 = v44;
        __swift_project_boxed_opaque_existential_1(v158, v159);
        OUTLINED_FUNCTION_17_8();
        v46 = v45;
        sub_2313674A0();
        v47 = v153;
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v153);
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
        if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
        {

          goto LABEL_13;
        }

        v48 = v145;
        v49 = OUTLINED_FUNCTION_19();
        v50 = v153;
        v51(v49);
        v52 = v150;
        v53 = v150[2];
        v129 = v1;
        v130 = v2;
        if (v53 && (v54 = sub_23121652C(), v52 = v150, (v55 & 1) != 0))
        {
          v157 = *(v150[7] + 8 * v54);
          swift_beginAccess();

          v56 = sub_231369EE0();
          MEMORY[0x23192A830](v56);
          sub_2312592C8(*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_23136A240();
          v57 = v157;
          swift_endAccess();
          v58 = sub_231255288(v57);
          v133 = v57;
          if (v58)
          {
            v156 = MEMORY[0x277D84F90];
            sub_231369EE0();
            OUTLINED_FUNCTION_43_6();
            if ((v132 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            v59 = 0;
            v1 = v156;
            v131 = (v57 & 0xC000000000000001);
            do
            {
              if (v131)
              {
                MEMORY[0x23192AD10](v59, v133);
              }

              else
              {
              }

              sub_2313676D0();
              __swift_project_boxed_opaque_existential_1(v158, v159);
              OUTLINED_FUNCTION_21_11();
              sub_23136A8B0();
              v134 = v60;
              __swift_destroy_boxed_opaque_existential_1Tm(v158);

              v156 = v1;
              v62 = *(v1 + 16);
              v61 = *(v1 + 24);
              if (v62 >= v61 >> 1)
              {
                v66 = OUTLINED_FUNCTION_37(v61);
                sub_2311F4E34(v66);
                v1 = v156;
              }

              ++v59;
              *(v1 + 16) = v62 + 1;
              OUTLINED_FUNCTION_49_4(v1 + 16 * v62);
              v64 = v147;
              v63 = v148;
            }

            while (v65 != v59);
          }

          else
          {
            v1 = MEMORY[0x277D84F90];
            v64 = v147;
            v63 = v148;
          }

          if (*(sub_231255354(v1) + 16) <= 1uLL)
          {

            OUTLINED_FUNCTION_65_2();
            v2 = v130;
          }

          else
          {
            v80 = v136;
            sub_231369130();
            (*v143)(v137, v145, v153);
            sub_231369EE0();
            v1 = sub_2313698A0();
            v81 = sub_23136A390();

            LODWORD(v134) = v81;
            if (os_log_type_enabled(v1, v81))
            {
              v82 = swift_slowAlloc();
              v128 = v82;
              v83 = swift_slowAlloc();
              *v82 = OUTLINED_FUNCTION_57_5(v83, &v159).n128_u32[0];
              OUTLINED_FUNCTION_0_19();
              sub_23125D758(&qword_280F7CAE0, v84, MEMORY[0x277D608A8]);
              v85 = v137;
              v131 = v1;
              v1 = v153;
              v86 = sub_23136A8B0();
              (*v142)(v85, v1);
              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_21_11();

              v87 = v128;
              *(v128 + 4) = v86;
              *(v87 + 12) = 2080;
              v88 = sub_23136A320();

              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_21_11();
              v64 = v147;

              *(v87 + 14) = v88;
              v89 = v131;
              _os_log_impl(&dword_2311CB000, v131, v134, "[warning] multiple owners attributed to %s. This is highly unusual and should be corrected. Owners: %s", v87, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_29();

              OUTLINED_FUNCTION_29_7();
              v91 = v136;
            }

            else
            {

              (*v142)(v137, v153);
              OUTLINED_FUNCTION_29_7();
              v91 = v80;
            }

            v2 = v130;
            v90(v91, v130);
            OUTLINED_FUNCTION_65_2();
            v63 = v148;
          }

          sub_231369130();
          (*v143)(v63, v145, v153);
          v92 = sub_2313698A0();
          v125 = sub_23136A390();
          v93 = os_log_type_enabled(v92, v125);
          v94 = v142;
          v128 = v142 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          if (v93)
          {
            v124 = v92;
            v95 = swift_slowAlloc();
            v126 = v95;
            v96 = swift_slowAlloc();
            *v95 = OUTLINED_FUNCTION_57_5(v96, &v152).n128_u32[0];
            OUTLINED_FUNCTION_0_19();
            sub_23125D758(&qword_280F7CAE0, v97, MEMORY[0x277D608A8]);
            v98 = v94;
            v99 = v148;
            v100 = v153;
            v134 = sub_23136A8B0();
            v132 = v101;
            v127 = *v98;
            v127(v99, v100);
            v102 = sub_2311CFD58(v134, v132, v158);

            v103 = v126;
            *(v126 + 1) = v102;
            *(v103 + 6) = 2080;
            v104 = v133;
            if (sub_231255288(v133))
            {
              v156 = MEMORY[0x277D84F90];
              sub_231369EE0();
              OUTLINED_FUNCTION_43_6();
              if ((v132 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v1 = 0;
              v105 = v156;
              v131 = (v104 & 0xC000000000000001);
              do
              {
                if (v131)
                {
                  MEMORY[0x23192AD10](v1, v104);
                }

                else
                {
                }

                v106 = v146;
                sub_2313676F0();
                sub_231368130();
                v134 = v107;

                v149(v106, v155);
                v156 = v105;
                isa = v105[2].isa;
                v108 = v105[3].isa;
                if (isa >= v108 >> 1)
                {
                  v111 = OUTLINED_FUNCTION_37(v108);
                  sub_2311F4E34(v111);
                  v105 = v156;
                }

                ++v1;
                v105[2].isa = (isa + 1);
                OUTLINED_FUNCTION_49_4(&v105[2 * isa]);
                v104 = v133;
              }

              while (v110 != v1);

              OUTLINED_FUNCTION_65_2();
            }

            else
            {
              v105 = MEMORY[0x277D84F90];
            }

            v156 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
            OUTLINED_FUNCTION_22_9();
            sub_23121C788(&qword_280F7C820, &unk_27DD42F68, &qword_23136B890, v114);
            v115 = sub_231369F50();

            OUTLINED_FUNCTION_54_4();
            OUTLINED_FUNCTION_21_11();

            v116 = v126;
            *(v126 + 14) = v115;
            v117 = v124;
            _os_log_impl(&dword_2311CB000, v124, v125, "[warning] Detected duplicate suggestions registered to intent: %s. Whilst this is supported, we need to be careful about what it \nmeans to have multiple suggestions registered to a single intent. Suggestions registered: %s", v116, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_29();
            OUTLINED_FUNCTION_29();

            OUTLINED_FUNCTION_29_7();
            v113 = v147;
            v2 = v130;
          }

          else
          {

            v127 = *v94;
            v127(v148, v153);
            OUTLINED_FUNCTION_29_7();
            v113 = v64;
          }

          v112(v113, v2);
          v118 = v145;
          sub_231369EE0();
          v119 = v150;
          swift_isUniquelyReferenced_nonNull_native();
          v158[0] = v119;
          v120 = OUTLINED_FUNCTION_19();
          sub_23125A17C(v120, v121, v122);

          v127(v118, v153);

          v150 = v158[0];
        }

        else
        {
          v134 = *v143;
          v134(v144, v48, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
          v67 = swift_allocObject();
          *(v67 + 16) = v140;
          v149 = v67;
          *(v67 + 32) = v41;

          swift_isUniquelyReferenced_nonNull_native();
          v158[0] = v52;
          v68 = sub_23121652C();
          if (__OFADD__(*(v52 + 16), (v69 & 1) == 0))
          {
            goto LABEL_60;
          }

          v1 = v68;
          v70 = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E58, &unk_2313708E8);
          if (sub_23136A700())
          {
            v71 = sub_23121652C();
            v73 = v153;
            if ((v70 & 1) != (v72 & 1))
            {
              goto LABEL_64;
            }

            v1 = v71;
          }

          else
          {
            v73 = v153;
          }

          v150 = v158[0];
          if (v70)
          {
            *(*(v158[0] + 56) + 8 * v1) = v149;
          }

          else
          {
            *(v158[0] + 8 * (v1 >> 6) + 64) |= 1 << v1;
            v134(v150[6] + *(v138 + 72) * v1, v144, v73);
            v74 = v150;
            *(v150[7] + 8 * v1) = v149;
            v75 = v74[2];
            v76 = __OFADD__(v75, 1);
            v77 = v75 + 1;
            if (v76)
            {
              goto LABEL_61;
            }

            v74[2] = v77;
          }

          OUTLINED_FUNCTION_65_2();
          v2 = v130;
          v78 = *v142;
          (*v142)(v144, v73);
          v79 = OUTLINED_FUNCTION_19();
          v78(v79);
        }
      }

      else
      {

        sub_2311D1F18(v158, &qword_27DD43E50, &unk_2313708D8);
        v46 = v151;
        __swift_storeEnumTagSinglePayload(v151, 1, 1, v153);
LABEL_13:
        sub_2311D1F18(v46, &qword_27DD43E40, &qword_231370F50);
      }
    }
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v34 = v31[v39].isa;
    ++v37;
    if (v34)
    {
      v37 = v39;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_23136A970();
  __break(1u);
}

void static SuggestionPool.buildBridgePool(pool:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18();
  v37 = sub_231368180();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v5 = OUTLINED_FUNCTION_74_3();
  v6 = OUTLINED_FUNCTION_40_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v38 = v7;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v40 = v9;
  v10 = sub_23125AC50(v1) + 8;
  OUTLINED_FUNCTION_37_6();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v39 = v16;

  v17 = 0;
  v36 = MEMORY[0x277D84F90];
LABEL_2:
  v18 = v17;
  v19 = v40;
  if (!v13)
  {
    goto LABEL_4;
  }

  do
  {
    v17 = v18;
LABEL_7:
    v20 = *(*(v39 + 56) + 8 * (__clz(__rbit64(v13)) | (v17 << 6)));
    sub_231369EE0();

    v41 = v20;
    sub_2313676F0();
    sub_231368110();
    v21 = OUTLINED_FUNCTION_47_5();
    v22(v21, v37);
    if (v43)
    {
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v19 = v40;
      sub_2313674A0();
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      sub_2311D1F18(v42, &qword_27DD43E50, &unk_2313708D8);
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v2);
    }

    v13 &= v13 - 1;
    sub_23123EA8C(v19, v38, &qword_27DD43E40, &qword_231370F50);
    if (__swift_getEnumTagSinglePayload(v38, 1, v2) != 1)
    {
      v23 = OUTLINED_FUNCTION_47_5();
      v24(v23, v38, v2);
      v25 = sub_231367380();
      v35 = v26;
      v27 = OUTLINED_FUNCTION_47_5();
      v28(v27, v2);
      sub_2311D1F18(v19, &qword_27DD43E40, &qword_231370F50);

      v29 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126EB10();
        v36 = v33;
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_37(v30);
        sub_23126EB10();
        v36 = v34;
      }

      *(v36 + 16) = v31 + 1;
      v32 = (v36 + 24 * v31);
      v32[4] = v25;
      v32[5] = v35;
      v32[6] = v41;
      v2 = v29;
      goto LABEL_2;
    }

    sub_2311D1F18(v19, &qword_27DD43E40, &qword_231370F50);
    v18 = v17;
  }

  while (v13);
LABEL_4:
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      sub_2312552AC(v36, sub_231259744);
      OUTLINED_FUNCTION_9_0();
      return;
    }

    v13 = v10[v17];
    ++v18;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void SuggestionPool.description.getter()
{
  OUTLINED_FUNCTION_11_0();
  v74 = sub_231368180();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v72 = v5 - v4;
  OUTLINED_FUNCTION_18();
  v6 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E60, &unk_2313708F8);
  v14 = OUTLINED_FUNCTION_40_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v65 = v15;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v80 = 0xD000000000000013;
  v81 = 0x800000023137DFB0;
  v62 = v0;
  v78 = sub_2312595A0(*(v0 + 24), sub_2312501BC, &qword_27DD43620, &qword_23136CB60, sub_231251638);
  v19 = 0;
  sub_231255CA4(&v78);
  v61 = 0;
  v69 = v18;
  v70 = v8 + 32;
  v20 = v78;
  v73 = (v2 + 8);
  v21 = *(v78 + 16);
  v22 = v8 + 8;
  v66 = v8 + 8;
  v67 = v21;
  v23 = v65;
  v63 = v12;
  v64 = v6;
  v68 = v78;
  while (1)
  {
    if (v19 == v21)
    {
      v24 = OUTLINED_FUNCTION_74_3();
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
      v25 = v21;
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v22 = *(v20 + 16);
      if (v19 >= v22)
      {
        goto LABEL_26;
      }

      v26 = OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_46_1();
      sub_23123EA8C(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v28 + 72) * v19, v23, &qword_27DD43620, &qword_23136CB60);
      v25 = v19 + 1;
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v26);
    }

    sub_23123E9F8(v23, v18, &qword_27DD43E60, &unk_2313708F8);
    v29 = OUTLINED_FUNCTION_74_3();
    if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
    {
      break;
    }

    v71 = v25;
    v30 = *&v18[*(v29 + 48)];
    v31 = OUTLINED_FUNCTION_47_5();
    v32(v31, v18, v6);
    v78 = 8224;
    v79 = 0xE200000000000000;
    OUTLINED_FUNCTION_0_19();
    sub_23125D758(&qword_280F7CAE0, v33, MEMORY[0x277D608A8]);
    v34 = sub_23136A8B0();
    MEMORY[0x23192A730](v34);

    MEMORY[0x23192A730](10, 0xE100000000000000);
    MEMORY[0x23192A730](v78, v79);

    v78 = 0;
    v79 = 0xE000000000000000;
    if (v30 >> 62)
    {
      v35 = sub_23136A5A0();
      if (!v35)
      {
LABEL_20:

        v37 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_20;
      }
    }

    v77 = MEMORY[0x277D84F90];
    sub_2311F4E34(0);
    if (v35 < 0)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      v59 = *(v22 - 256);
      goto LABEL_28;
    }

    v36 = 0;
    v37 = v77;
    v38 = v30 & 0xC000000000000001;
    v39 = v30;
    do
    {
      if (v38)
      {
        MEMORY[0x23192AD10](v36, v30);
      }

      else
      {
      }

      v75 = 0x2020202020;
      v76 = 0xE500000000000000;
      v40 = v72;
      sub_2313676F0();
      v41 = sub_231368130();
      v43 = v42;
      (*v73)(v40, v74);
      MEMORY[0x23192A730](v41, v43);

      v44 = v75;
      v45 = v76;
      v77 = v37;
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        v49 = OUTLINED_FUNCTION_37(v46);
        sub_2311F4E34(v49);
        v37 = v77;
      }

      ++v36;
      *(v37 + 16) = v47 + 1;
      v48 = v37 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v30 = v39;
    }

    while (v35 != v36);

    v6 = v64;
    v23 = v65;
LABEL_21:
    v75 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    OUTLINED_FUNCTION_22_9();
    sub_23121C788(&qword_280F7C820, &unk_27DD42F68, &qword_23136B890, v50);
    v51 = sub_231369F50();
    v53 = v52;

    MEMORY[0x23192A730](v51, v53);

    MEMORY[0x23192A730](10, 0xE100000000000000);
    MEMORY[0x23192A730](v78, v79);

    v54 = OUTLINED_FUNCTION_47_5();
    v55(v54, v6);
    v20 = v68;
    v18 = v69;
    v19 = v71;
    v21 = v67;
  }

  MEMORY[0x23192A730](0x7020657269746E45, 0xED00000A3A6C6F6FLL);
  v56 = sub_231369EE0();
  v78 = sub_23122AB50(v56);
  sub_231369EE0();
  v57 = v61;
  sub_231255C38(&v78);
  if (!v57)
  {

    sub_231367BB0();

    v58 = OUTLINED_FUNCTION_62_3();
    MEMORY[0x23192A730](v58);

    OUTLINED_FUNCTION_9_0();
    return;
  }

  v59 = v57;
LABEL_28:

  __break(1u);
}

uint64_t sub_231257A58(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  sub_23123EA8C(a1, &v20 - v7, &qword_27DD43620, &qword_23136CB60);

  v9 = sub_231367370();
  v11 = v10;
  v12 = sub_2313673A0();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  sub_23123EA8C(v21, v5, &qword_27DD43620, &qword_23136CB60);

  v14 = sub_231367370();
  v16 = v15;
  v13(v5, v12);
  if (v9 == v14 && v11 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_23136A900();
  }

  return v18 & 1;
}

void static SuggestionPool.keySuggestions(suggestions:)()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32_6();
  v23 = sub_231368180();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  v24 = v0;
  v7 = sub_231255288(v0);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_10:
    sub_2312552AC(v8, sub_2312598F4);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v9 = v7;
  v25 = MEMORY[0x277D84F90];
  v10 = OUTLINED_FUNCTION_64_3();
  sub_2311F5D58(v10, v11, v12);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v25;
    v14 = (v2 + 8);
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23192AD10](v13, v24);
      }

      else
      {
        v15 = *(v24 + 8 * v13 + 32);
      }

      sub_2313676F0();
      v16 = sub_231368130();
      v18 = v17;
      (*v14)(v6, v23);
      v20 = *(v25 + 16);
      v19 = *(v25 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = OUTLINED_FUNCTION_37(v19);
        sub_2311F5D58(v22, v20 + 1, 1);
      }

      ++v13;
      *(v25 + 16) = v20 + 1;
      v21 = (v25 + 24 * v20);
      v21[4] = v16;
      v21[5] = v18;
      v21[6] = v15;
    }

    while (v9 != v13);
    goto LABEL_10;
  }

  __break(1u);
}

void SuggestionPool.getSuggestions(intentQuery:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  OUTLINED_FUNCTION_24_0();
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v40 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_14();
  sub_231367430();
  v16 = sub_2312177D4(v1, *(v0 + 24));
  if (v16)
  {
    MEMORY[0x28223BE20](v16);
    *(&v35 - 2) = v0;
    v18 = sub_231255100(sub_23125ADB4, (&v35 - 4), v17);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (sub_231255288(v18))
  {
    (*(v11 + 8))(v1, v9);
  }

  else
  {
    v39 = v3;

    sub_231369110();
    (*(v11 + 16))(v14, v1, v9);
    v19 = sub_2313698A0();
    v20 = sub_23136A390();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v21;
      v37 = swift_slowAlloc();
      v41 = v37;
      *v21 = 136315138;
      OUTLINED_FUNCTION_0_19();
      sub_23125D758(v22, v23, MEMORY[0x277D608A8]);
      v24 = sub_23136A8B0();
      v38 = v2;
      v26 = v25;
      v27 = OUTLINED_FUNCTION_63_3();
      v3(v27);
      v28 = sub_2311CFD58(v24, v26, &v41);
      v2 = v38;

      v29 = v36;
      *(v36 + 1) = v28;
      _os_log_impl(&dword_2311CB000, v19, v20, "No specific suggestion found for %s. Checking bridges", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v30 = OUTLINED_FUNCTION_63_3();
      v3(v30);
    }

    (*(v40 + 8))(v8, v39);
    v31 = *(v2 + 40);
    v32 = sub_231367380();
    sub_231210DDC(v32, v33, v31);
    OUTLINED_FUNCTION_59_3();

    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_2313707C0;
      *(v34 + 32) = v31;
    }

    (v3)(v1, v9);
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_231258170(uint64_t a1, uint64_t a2)
{
  v2 = sub_231368180();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313676D0();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  if (sub_231368F80())
  {
    goto LABEL_5;
  }

  sub_2313676F0();
  sub_231368110();
  (*(v3 + 8))(v5, v2);
  if (!v9)
  {
    sub_2311D1F18(v8, &qword_27DD43E50, &unk_2313708D8);
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = sub_2313674B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v6 & 1;
}

void SuggestionPool.getOwner(for:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  SuggestionPool.getSuggestions(intentQuery:)();
  if (!v10)
  {
    v26 = *(v0 + 32);
    sub_231367430();
    v27 = sub_2312177D4(v9, v26);
    (*(v5 + 8))(v9, v3);
    if (!v27)
    {
      *(v2 + 32) = 0;
      *v2 = 0u;
      *(v2 + 16) = 0u;
      goto LABEL_17;
    }

    v35[0] = v27;
    LOBYTE(v36) = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
    v28 = OUTLINED_FUNCTION_25_9(&qword_280F7C830);
    sub_23125ADD4(v28, v29, v30);
    v31 = v35;
    sub_23136A100();
    OUTLINED_FUNCTION_21_11();
LABEL_16:

    sub_23121CD80(v31, v2);

LABEL_17:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v11 = v10;
  v12 = sub_231255288(v10);
  if (!v12)
  {

    v18 = MEMORY[0x277D84F90];
LABEL_15:
    v35[0] = v18;
    LOBYTE(v36) = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E38, &unk_2313708C0);
    v32 = OUTLINED_FUNCTION_25_9(&qword_280F7C830);
    sub_23125ADD4(v32, v33, v34);
    v31 = sub_23136A100();
    goto LABEL_16;
  }

  v13 = v12;
  v36 = MEMORY[0x277D84F90];
  v14 = OUTLINED_FUNCTION_64_3();
  sub_2311F59B0(v14, v15, v16);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v36;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23192AD10](v17, v11);
      }

      else
      {
      }

      sub_2313676D0();

      v36 = v18;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        v25 = OUTLINED_FUNCTION_37(v19);
        sub_2311F59B0(v25, v20 + 1, 1);
      }

      ++v17;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
      MEMORY[0x28223BE20](v21);
      OUTLINED_FUNCTION_1_4();
      (*(v24 + 16))(v23 - v22);
      sub_23125D3D4();
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v18 = v36;
    }

    while (v13 != v17);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t SuggestionPool.getSuggestion(suggestionId:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 16) + 16) && (sub_231215F6C(a1, a2), (v3 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

void SuggestionPool.getAllSuggestions()()
{
  OUTLINED_FUNCTION_65_1();
  v0 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  sub_231369110();
  v7 = sub_2313698A0();
  v8 = sub_23136A3B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2311CB000, v7, v8, "getting all suggestions from the pool", v9, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v2 + 8))(v6, v0);
  v10 = sub_231369EE0();
  sub_23122AD20(v10);
  OUTLINED_FUNCTION_64_1();
}

void SuggestionPool.getSuggestions(identifier:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v48 = v4;
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v50 = v6 - v5;
  OUTLINED_FUNCTION_18();
  sub_231367670();
  OUTLINED_FUNCTION_0_0();
  v46 = v8;
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_231367490();
  OUTLINED_FUNCTION_0_0();
  v51 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = sub_231367E50();
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v45 = v22;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_14();
  v24 = *(v20 + 16);
  v24(v0, v2, v18);
  v25 = OUTLINED_FUNCTION_19();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x277D60CB0])
  {
    v28 = OUTLINED_FUNCTION_19();
    v29(v28);
    v30 = SuggestionPool.getSuggestion(suggestionId:)(*v0, v0[1]);

    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_2313707C0;
      *(v31 + 32) = v30;
    }
  }

  else if (v27 == *MEMORY[0x277D60CA8])
  {
    v32 = OUTLINED_FUNCTION_19();
    v33(v32);
    (*(v51 + 32))(v17, v0, v12);
    SuggestionPool.getSuggestions(intentQuery:)();
    (*(v51 + 8))(v17, v12);
  }

  else if (v27 == *MEMORY[0x277D60CB8])
  {
    v34 = OUTLINED_FUNCTION_19();
    v35(v34);
    (*(v46 + 32))(v11, v0, v47);
    sub_231367660();
    SuggestionPool.getSuggestions(intentQuery:)();
    (*(v51 + 8))(v17, v12);
    (*(v46 + 8))(v11, v47);
  }

  else
  {
    sub_231369110();
    v24(v45, v2, v18);
    v36 = sub_2313698A0();
    v37 = sub_23136A3B0();
    if (os_log_type_enabled(v36, v37))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v52 = 136315138;
      sub_23125D758(&qword_280F7CA08, MEMORY[0x277D60CC0], MEMORY[0x277D60CD8]);
      v38 = sub_23136A8B0();
      v40 = v39;
      v41 = OUTLINED_FUNCTION_46_8();
      v12(v41);
      v42 = sub_2311CFD58(v38, v40, &v54);

      *(v52 + 4) = v42;
      _os_log_impl(&dword_2311CB000, v36, v37, "identifier %s type is not supported by the pool", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v48 + 8))(v50, v49);
    }

    else
    {

      v43 = OUTLINED_FUNCTION_46_8();
      v12(v43);
      (*(v48 + 8))(v50, v49);
    }

    v44 = OUTLINED_FUNCTION_19();
    v12(v44);
  }

  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_231258D1C(void *a1, void *a2)
{
  v4 = a1[4];
  v147 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_8();
  v5 = sub_231368F70();
  v13 = OUTLINED_FUNCTION_38_6(v5, v6, v7, v8, v9, v10, v11, v12, v137, v147, v4, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3]);
  OUTLINED_FUNCTION_73_2(v13, v14, v15, v16, v17, v18, v19, v20, v138, v148, v157, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4], v169[0], v169[1], v169[2], v169[3]);
  OUTLINED_FUNCTION_26_0();
  (*(v21 + 16))();
  v22 = sub_2313685D0();
  v167 = v22;
  __swift_allocate_boxed_opaque_existential_1(v166);
  OUTLINED_FUNCTION_26_0();
  v24 = *(v23 + 104);
  OUTLINED_FUNCTION_67_2();
  v25 = v24();
  v28 = OUTLINED_FUNCTION_72_2(v25, v26, v27);
  v34 = OUTLINED_FUNCTION_50_5(v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_51_4(v34, v35, v36, v37, v38, v39, v40, v41, v139, v149, v158, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4]);
  __swift_destroy_boxed_opaque_existential_1Tm(v168);
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v42 = OUTLINED_FUNCTION_71_1();
    v50 = OUTLINED_FUNCTION_38_6(v42, v43, v44, v45, v46, v47, v48, v49, v140, v150, v159, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3]);
    OUTLINED_FUNCTION_73_2(v50, v51, v52, v53, v54, v55, v56, v57, v141, v151, v160, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4], v169[0], v169[1], v169[2], v169[3]);
    OUTLINED_FUNCTION_26_0();
    (*(v58 + 16))();
    v167 = v22;
    __swift_allocate_boxed_opaque_existential_1(v166);
    OUTLINED_FUNCTION_67_2();
    v59 = v24();
    v62 = OUTLINED_FUNCTION_72_2(v59, v60, v61);
    v68 = OUTLINED_FUNCTION_50_5(v62, v63, v64, v65, v66, v67);
    OUTLINED_FUNCTION_51_4(v68, v69, v70, v71, v72, v73, v74, v75, v142, v152, v161, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4]);
    __swift_destroy_boxed_opaque_existential_1Tm(v168);
    if ((v62 & 1) == 0)
    {
      return -1;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v76 = OUTLINED_FUNCTION_71_1();
  v84 = OUTLINED_FUNCTION_38_6(v76, v77, v78, v79, v80, v81, v82, v83, v140, v150, v159, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3]);
  OUTLINED_FUNCTION_73_2(v84, v85, v86, v87, v88, v89, v90, v91, v143, v153, v162, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4], v169[0], v169[1], v169[2], v169[3]);
  OUTLINED_FUNCTION_26_0();
  (*(v92 + 16))();
  v167 = v22;
  __swift_allocate_boxed_opaque_existential_1(v166);
  OUTLINED_FUNCTION_67_2();
  v93 = v24();
  v96 = OUTLINED_FUNCTION_72_2(v93, v94, v95);
  v97 = v96;
  v103 = OUTLINED_FUNCTION_50_5(v96, v98, v99, v100, v101, v102);
  OUTLINED_FUNCTION_51_4(v103, v104, v105, v106, v107, v108, v109, v110, v144, v154, v163, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4]);
  __swift_destroy_boxed_opaque_existential_1Tm(v168);
  if (v97)
  {
    v111 = sub_231368F70();
    v119 = OUTLINED_FUNCTION_38_6(v111, v112, v113, v114, v115, v116, v117, v118, v145, v155, v164, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3]);
    OUTLINED_FUNCTION_73_2(v119, v120, v121, v122, v123, v124, v125, v126, v146, v156, v165, v166[0], v166[1], v166[2], v167, v168[0], v168[1], v168[2], v168[3], v168[4], v169[0], v169[1], v169[2], v169[3]);
    OUTLINED_FUNCTION_26_0();
    (*(v127 + 16))();
    v167 = v22;
    __swift_allocate_boxed_opaque_existential_1(v166);
    OUTLINED_FUNCTION_67_2();
    v128 = v24();
    v131 = OUTLINED_FUNCTION_72_2(v128, v129, v130);
    sub_2311D1F18(v166, &qword_27DD443C0, &unk_23136E000);
    sub_2311D1F18(v169, &qword_27DD443C0, &unk_23136E000);
    __swift_destroy_boxed_opaque_existential_1Tm(v168);
    if ((v131 & 1) == 0)
    {
      return 1;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_8();
  if ((sub_231368F80() & 1) == 0)
  {
    v132 = OUTLINED_FUNCTION_62_3();
    __swift_project_boxed_opaque_existential_1(v132, v133);
    OUTLINED_FUNCTION_17_8();
    if (sub_231368F80())
    {
      return 1;
    }
  }

  v135 = OUTLINED_FUNCTION_62_3();
  __swift_project_boxed_opaque_existential_1(v135, v136);
  OUTLINED_FUNCTION_17_8();
  if (sub_231368F80())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_62_3();
  if ((sub_231368F80() & 1) == 0)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_231259098(char a1)
{
  sub_23136A9D0();
  sub_2313668C0();
  return sub_23136AA00();
}

uint64_t sub_231259128(uint64_t a1)
{
  sub_23136A9D0();
  sub_2313668C0();
  return sub_23136AA00();
}

uint64_t SuggestionPool.deinit()
{

  return v0;
}

uint64_t SuggestionPool.__deallocating_deinit()
{
  SuggestionPool.deinit();
  OUTLINED_FUNCTION_41_6();

  return swift_deallocClassInstance();
}

uint64_t sub_231259208()
{
  v1 = sub_231258D14();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2312592C8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_23136A1C0();
  }

  return result;
}

uint64_t sub_23125930C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_2312593D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), void (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      OUTLINED_FUNCTION_46_1();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_2312594B8(uint64_t *a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_23136A5A0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_23125303C();
    OUTLINED_FUNCTION_59_3();
    sub_231369EE0();
    v2 = sub_23125182C(&v5, (v1 + 32), v3, v2);
    sub_2311D3BBC(v5);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = v2[2];
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t sub_2312595A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(_BYTE *, unint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_59_3();
  v12 = v11(v10, 0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_40_0(v13);
  a5(v17, v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v6, v5);
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_75_1();
  if (!v15)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_2312596A8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = OUTLINED_FUNCTION_59_3();
  v8 = v7(v6, 0);
  a3(v11, v8 + 32, v4, v3);
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_75_1();
  if (!v9)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_231259B24()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2312160A8(v5);
  OUTLINED_FUNCTION_4_12();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  if (OUTLINED_FUNCTION_69_2(v14))
  {
    sub_2312160A8(v6);
    OUTLINED_FUNCTION_16_13();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v0;
  if (v13)
  {
    *(*(v17 + 56) + 8 * v12) = v8;
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    sub_23125A83C(v12, v6, v8, v17);
    OUTLINED_FUNCTION_9_0();
  }
}

void sub_231259C34()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_9_14(v3, v4, v5);
  OUTLINED_FUNCTION_4_12();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_23136A970();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_48_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EB8, &unk_231376F60);
  v8 = OUTLINED_FUNCTION_11_10(v7);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v12, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_42_7(v8, v9, v10, v11, *v1);
    OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_64_1();

    sub_231369EE0();
  }
}

_OWORD *sub_231259D04()
{
  OUTLINED_FUNCTION_65_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_23_7(v7, v5, v3);
  OUTLINED_FUNCTION_4_12();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_48_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
  if (OUTLINED_FUNCTION_11_10(v10))
  {
    v12 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v12, v4);
    OUTLINED_FUNCTION_16_13();
    if (!v14)
    {
      goto LABEL_14;
    }

    v2 = v13;
  }

  v15 = *v0;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v15 + 56) + 32 * v2));
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_64_1();

    return sub_2312250F8(v16, v17);
  }

  else
  {
    sub_23125A8BC(v2, v6, v4, v8, v15, v11);
    OUTLINED_FUNCTION_64_1();

    return sub_231369EE0();
  }
}

uint64_t sub_231259E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65_1();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_23_7(v15, v13, v11);
  OUTLINED_FUNCTION_4_12();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E70, &unk_231370AB0);
  if ((OUTLINED_FUNCTION_11_10(v22) & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = OUTLINED_FUNCTION_36_6();
  v24 = sub_231215F6C(v23, v12);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v20 = v24;
LABEL_5:
  if (v21)
  {
    v26 = type metadata accessor for SignalOverrides(0);
    OUTLINED_FUNCTION_40_0(v26);
    OUTLINED_FUNCTION_64_1();

    return sub_23125D638(v27, v28);
  }

  else
  {
    sub_23125A904(v20, v14, v12, v16, *v10);
    OUTLINED_FUNCTION_64_1();

    return sub_231369EE0();
  }
}

void sub_231259F20()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_9_14(v5, v6, v7);
  OUTLINED_FUNCTION_4_12();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_23136A970();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_48_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
  if (OUTLINED_FUNCTION_11_10(v9))
  {
    v10 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v10, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v12)
    {
      goto LABEL_12;
    }

    v4 = v11;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_64_1();

    sub_231369EE0();
  }
}

uint64_t sub_23125A010(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, void *), uint64_t a8)
{
  OUTLINED_FUNCTION_23_7(a1, a2, a3);
  OUTLINED_FUNCTION_4_12();
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_23136A700() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = OUTLINED_FUNCTION_19();
  v21 = sub_231215F6C(v19, v20);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v17 = v21;
LABEL_5:
  v23 = *v8;
  if (v18)
  {
    v24 = (*(v23 + 56) + 40 * v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    return a7(a1, v24);
  }

  else
  {
    sub_23125A9C8(v17, a2, a3, a1, v23, a8);

    return sub_231369EE0();
  }
}

uint64_t sub_23125A17C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_2313673A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_23121652C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E58, &unk_2313708E8);
  if ((sub_23136A700() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_23121652C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_23125AA14();
  }
}

uint64_t sub_23125A350()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_9_14(v3, v4, v5);
  OUTLINED_FUNCTION_4_12();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_48_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E98, &unk_231370AE8);
  v8 = OUTLINED_FUNCTION_11_10(v7);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v12, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_42_7(v8, v9, v10, v11, *v1);
    OUTLINED_FUNCTION_64_1();

    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_64_1();

    return sub_231369EE0();
  }
}

uint64_t sub_23125A420(uint64_t a1, double a2)
{
  v5 = sub_231367050();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  sub_231216730();
  OUTLINED_FUNCTION_4_12();
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v12;
  v16 = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EA0, &qword_231370AF8);
  result = OUTLINED_FUNCTION_69_2(v17);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_231216730();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_9:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  v15 = result;
LABEL_5:
  v20 = *v2;
  if (v16)
  {
    *(v20[7] + 8 * v15) = a2;
  }

  else
  {
    (*(v7 + 16))(v11, a1, v5);
    return sub_23125AAA4(v15, v11, v20, a2);
  }

  return result;
}

uint64_t sub_23125A59C()
{
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9_14(v7, v8, v9);
  OUTLINED_FUNCTION_4_12();
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_48_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  v12 = OUTLINED_FUNCTION_11_10(v11);
  if (v12)
  {
    v16 = OUTLINED_FUNCTION_36_6();
    sub_231215F6C(v16, v0);
    OUTLINED_FUNCTION_16_13();
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_42_7(v12, v13, v14, v15, *v1);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_18_10();
    sub_23125A878(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_9_0();

    return sub_231369EE0();
  }
}

void sub_23125A66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_0();
  v15 = v14;
  OUTLINED_FUNCTION_32_6();
  v16 = sub_231369DD0();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v22 = v21 - v20;
  sub_231216910();
  OUTLINED_FUNCTION_4_12();
  if (v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v26 = v23;
  v27 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E88, qword_231370AD0);
  if ((OUTLINED_FUNCTION_11_10(v28) & 1) == 0)
  {
    goto LABEL_5;
  }

  v29 = sub_231216910();
  if ((v27 & 1) != (v30 & 1))
  {
LABEL_11:
    sub_23136A970();
    __break(1u);
    return;
  }

  v26 = v29;
LABEL_5:
  v31 = *v13;
  if (v27)
  {
    sub_2313696B0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_9_0();

    v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  else
  {
    (*(v18 + 16))(v22, v15, v16);
    sub_23125AB5C(v26, v22, v12, v31);
    OUTLINED_FUNCTION_9_0();
  }
}

void sub_23125A810(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  *(v8 + 4 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33_7(v6, v11);
  }
}

unint64_t sub_23125A83C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_55_5(a1, a2, a3, a4);
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void sub_23125A878(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33_7(v6, v11);
  }
}

_OWORD *sub_23125A8BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  result = sub_2312250F8(v9, (v8 + 32 * v7));
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

uint64_t sub_23125A904(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SignalOverrides(0);
  result = sub_23125D700(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_23125A9C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OUTLINED_FUNCTION_5_12(a1, a2, a3, a4, a5);
  result = v10(v9, v8 + 40 * v7);
  v12 = *(a5 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }

  return result;
}

uint64_t sub_23125AA14()
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_55_5(v4, v5, v6, v7);
  v9 = *(v8 + 48);
  v10(0);
  OUTLINED_FUNCTION_11();
  result = (*(v11 + 32))(v9 + *(v11 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  v13 = *(v0 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v15;
  }

  return result;
}

uint64_t sub_23125AAA4(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_231367050();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_23125AB5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_231369DD0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2313696B0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t *sub_23125AC50(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_23125AFC4(v8, v4, v2);
      MEMORY[0x23192B930](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v4, v5);
  sub_23125AE28(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t sub_23125ADD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F849E8;
  if (!qword_280F849E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F849E8);
  }

  return result;
}

void sub_23125AE28(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v20 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    sub_231369EE0();

    sub_2313676D0();
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v13 = sub_231368F80();
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    v7 = v20;
    if (v13)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
LABEL_15:
        sub_2312418F0(result, a2, v17, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v20 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_23125AFC4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_23125AE28(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_23125B03C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23125B720(v7, v8, a1, v4);
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
    return sub_23125B278(0, v2, 1, a1);
  }

  return result;
}

void sub_23125B130(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_23125BC28(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23125B340(0, v2, 1, a1);
  }
}

uint64_t sub_23125B278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_23136A900();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23125B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  MEMORY[0x28223BE20](v61);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v43 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = &v43 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v45 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v50 = -v21;
    v51 = v20;
    v23 = a1 - a3;
    v44 = v21;
    v24 = v20 + v21 * a3;
    v53 = v15;
    v54 = &v43 - v18;
    while (2)
    {
      v48 = v22;
      v49 = a3;
      v46 = v24;
      v47 = v23;
      v25 = v23;
      while (1)
      {
        v58 = v25;
        v59 = v24;
        sub_23123EA8C(v24, v19, &qword_27DD43620, &qword_23136CB60);
        v57 = v22;
        sub_23123EA8C(v22, v15, &qword_27DD43620, &qword_23136CB60);
        v26 = v55;
        sub_23123EA8C(v19, v55, &qword_27DD43620, &qword_23136CB60);

        v27 = sub_231367370();
        v29 = v28;
        v30 = sub_2313673A0();
        v60 = *(*(v30 - 8) + 8);
        v60(v26, v30);
        v31 = v15;
        v32 = v56;
        sub_23123EA8C(v31, v56, &qword_27DD43620, &qword_23136CB60);

        v33 = sub_231367370();
        v35 = v34;
        v60(v32, v30);
        if (v27 == v33 && v29 == v35)
        {
          break;
        }

        v37 = sub_23136A900();

        v15 = v53;
        sub_2311D1F18(v53, &qword_27DD43620, &qword_23136CB60);
        v19 = v54;
        sub_2311D1F18(v54, &qword_27DD43620, &qword_23136CB60);
        v39 = v58;
        v38 = v59;
        v40 = v57;
        if (v37)
        {
          if (!v51)
          {
            __break(1u);
            return;
          }

          v41 = v52;
          sub_23123E9F8(v59, v52, &qword_27DD43620, &qword_23136CB60);
          swift_arrayInitWithTakeFrontToBack();
          sub_23123E9F8(v41, v40, &qword_27DD43620, &qword_23136CB60);
          v22 = v40 + v50;
          v24 = v38 + v50;
          v42 = __CFADD__(v39, 1);
          v25 = v39 + 1;
          if (!v42)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v15 = v53;
      sub_2311D1F18(v53, &qword_27DD43620, &qword_23136CB60);
      v19 = v54;
      sub_2311D1F18(v54, &qword_27DD43620, &qword_23136CB60);
LABEL_14:
      a3 = v49 + 1;
      v22 = v48 + v44;
      v23 = v47 - 1;
      v24 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23125B720(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_23136A900();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_23136A900()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_23136A900() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126DB78();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_23126DB78();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_23125CAD4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_23125C9A8(&v91, *result, a3);
LABEL_102:
}

void sub_23125BC28(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v160 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  v171 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v164 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v179 = &v157 - v9;
  MEMORY[0x28223BE20](v10);
  v181 = &v157 - v11;
  MEMORY[0x28223BE20](v12);
  v180 = &v157 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v157 - v15;
  MEMORY[0x28223BE20](v17);
  v182 = &v157 - v18;
  MEMORY[0x28223BE20](v19);
  v170 = &v157 - v20;
  MEMORY[0x28223BE20](v21);
  v169 = &v157 - v22;
  MEMORY[0x28223BE20](v23);
  v174 = &v157 - v24;
  MEMORY[0x28223BE20](v25);
  v173 = &v157 - v26;
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  v172 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  v157 = &v157 - v31;
  v158 = v32;
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  v36 = &qword_27DD43620;
  v37 = &qword_23136CB60;
  v159 = a4;
  v183 = v16;
  v184 = v6;
LABEL_3:
  v38 = (v34 + 1);
  v165 = v35;
  v161 = v34;
  if ((v34 + 1) >= v33)
  {
    v176 = (v34 + 1);
  }

  else
  {
    v39 = v34;
    v178 = v33;
    v40 = *v172;
    v41 = *(v171 + 72);
    v188 = (*v172 + v41 * v38);
    v42 = v157;
    sub_23123EA8C(v188, v157, &qword_27DD43620, v37);
    v187 = v40;
    v43 = v40 + v41 * v39;
    v44 = v37;
    v45 = v158;
    sub_23123EA8C(v43, v158, &qword_27DD43620, v44);
    v46 = v175;
    LODWORD(v177) = sub_231257A58(v42, v45);
    v175 = v46;
    if (v46)
    {
      sub_2311D1F18(v45, &qword_27DD43620, &qword_23136CB60);
      sub_2311D1F18(v42, &qword_27DD43620, &qword_23136CB60);
LABEL_125:

      return;
    }

    v47 = v38;
    sub_2311D1F18(v45, &qword_27DD43620, v44);
    sub_2311D1F18(v42, &qword_27DD43620, v44);
    v48 = v39 + 2;
    v49 = v187 + v41 * (v39 + 2);
    v37 = v44;
    v50 = v41;
    v51 = v178;
    v52 = v188;
    v168 = v41;
    while (1)
    {
      v53 = v48;
      if (v47 + 1 >= v51)
      {
        break;
      }

      v187 = v48;
      v176 = v47;
      v54 = v173;
      sub_23123EA8C(v49, v173, &qword_27DD43620, v37);
      v188 = v52;
      v55 = v174;
      sub_23123EA8C(v52, v174, &qword_27DD43620, v37);
      v56 = v169;
      sub_23123EA8C(v54, v169, &qword_27DD43620, v37);

      v57 = sub_231367370();
      v185 = v58;
      v186 = v57;
      v59 = sub_2313673A0();
      v60 = *(*(v59 - 8) + 8);
      v60(v56, v59);
      v61 = v170;
      sub_23123EA8C(v55, v170, &qword_27DD43620, v37);

      v62 = sub_231367370();
      v64 = v63;
      v60(v61, v59);
      v41 = v185;
      if (v186 == v62 && v185 == v64)
      {
        v66 = 0;
      }

      else
      {
        v66 = sub_23136A900();
      }

      v36 = &qword_27DD43620;
      v37 = &qword_23136CB60;
      sub_2311D1F18(v174, &qword_27DD43620, &qword_23136CB60);
      sub_2311D1F18(v173, &qword_27DD43620, &qword_23136CB60);
      v67 = v177 ^ v66;
      v50 = v168;
      v49 += v168;
      v52 = &v188[v168];
      v47 = v176 + 1;
      v53 = v187;
      v48 = (v187 + 1);
      v51 = v178;
      if (v67)
      {
        goto LABEL_17;
      }
    }

    v47 = v51;
LABEL_17:
    a4 = v159;
    v176 = v47;
    if (v177)
    {
      v68 = v47 < v161;
      v35 = v165;
      v69 = v47;
      v16 = v183;
      if (v68)
      {
        goto LABEL_150;
      }

      if (v161 < v69)
      {
        if (v51 >= v53)
        {
          v70 = v53;
        }

        else
        {
          v70 = v51;
        }

        v71 = v50 * (v70 - 1);
        v35 = v165;
        v72 = v50 * v70;
        v73 = v161 * v50;
        v74 = v69;
        v75 = v161;
        do
        {
          if (v75 != --v74)
          {
            v76 = *v172;
            if (!*v172)
            {
              goto LABEL_155;
            }

            sub_23123E9F8(v76 + v73, v164, &qword_27DD43620, &qword_23136CB60);
            v77 = v73 < v71 || v76 + v73 >= (v76 + v72);
            if (v77)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v73 != v71)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_23123E9F8(v164, v76 + v71, &qword_27DD43620, &qword_23136CB60);
            v35 = v165;
          }

          ++v75;
          v71 -= v50;
          v72 -= v50;
          v73 += v50;
        }

        while (v75 < v74);
        a4 = v159;
        v16 = v183;
        v37 = &qword_23136CB60;
      }
    }

    else
    {
      v35 = v165;
      v16 = v183;
    }
  }

  v78 = v172[1];
  v41 = v176;
  if (v176 >= v78)
  {
    goto LABEL_62;
  }

  if (__OFSUB__(v176, v161))
  {
    goto LABEL_147;
  }

  if (v176 - v161 >= a4)
  {
    v35 = v165;
    v41 = v176;
    goto LABEL_62;
  }

  v79 = &a4[v161];
  if (__OFADD__(v161, a4))
  {
    goto LABEL_148;
  }

  if (v79 >= v78)
  {
    v79 = v172[1];
  }

  a4 = v182;
  if (v79 < v161)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  v41 = v176;
  if (v176 == v79)
  {
    goto LABEL_60;
  }

  v80 = *v172;
  v81 = *(v171 + 72);
  v82 = *v172 + v81 * (v176 - 1);
  v177 = -v81;
  v83 = &v161[-v176];
  v178 = v80;
  v162 = v81;
  v84 = v80 + v176 * v81;
  v163 = v79;
LABEL_47:
  v166 = v84;
  v167 = v83;
  v168 = v82;
  v85 = v83;
  while (1)
  {
    v186 = v84;
    v187 = v85;
    sub_23123EA8C(v84, a4, v36, v37);
    v185 = v82;
    sub_23123EA8C(v82, v16, v36, v37);
    v86 = a4;
    v87 = v180;
    sub_23123EA8C(v86, v180, v36, v37);

    v88 = sub_231367370();
    v89 = v37;
    v91 = v90;
    v92 = v36;
    v93 = sub_2313673A0();
    v188 = *(*(v93 - 8) + 8);
    (v188)(v87, v93);
    v94 = v16;
    v95 = v181;
    sub_23123EA8C(v94, v181, v92, v89);

    v96 = sub_231367370();
    v98 = v97;
    (v188)(v95, v93);
    if (v88 == v96 && v91 == v98)
    {

      v16 = v183;
      sub_2311D1F18(v183, v92, v89);
      a4 = v182;
      sub_2311D1F18(v182, v92, v89);
      v36 = v92;
      v37 = v89;
LABEL_58:
      v82 = v168 + v162;
      v83 = v167 - 1;
      v84 = v166 + v162;
      if (++v176 != v163)
      {
        goto LABEL_47;
      }

      v41 = v163;
LABEL_60:
      v35 = v165;
LABEL_62:
      a4 = v161;
      if (v41 < v161)
      {
        goto LABEL_146;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v41;
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v165;
      }

      else
      {
        sub_23126DB78();
        v35 = v148;
      }

      v41 = *(v35 + 2);
      v106 = v41 + 1;
      if (v41 >= *(v35 + 3) >> 1)
      {
        sub_23126DB78();
        v35 = v149;
      }

      *(v35 + 2) = v106;
      v107 = v35 + 32;
      v108 = &v35[16 * v41 + 32];
      v109 = v176;
      *v108 = a4;
      v108[1] = v109;
      a4 = *v160;
      if (!*v160)
      {
        goto LABEL_156;
      }

      if (v41)
      {
        while (2)
        {
          v110 = v106 - 1;
          v111 = &v107[16 * v106 - 16];
          v112 = v35;
          v113 = &v35[16 * v106];
          if (v106 >= 4)
          {
            v118 = &v107[16 * v106];
            v119 = *(v118 - 8);
            v120 = *(v118 - 7);
            v124 = __OFSUB__(v120, v119);
            v121 = v120 - v119;
            if (v124)
            {
              goto LABEL_131;
            }

            v123 = *(v118 - 6);
            v122 = *(v118 - 5);
            v124 = __OFSUB__(v122, v123);
            v116 = v122 - v123;
            v117 = v124;
            if (v124)
            {
              goto LABEL_132;
            }

            v125 = *(v113 + 1);
            v126 = v125 - *v113;
            if (__OFSUB__(v125, *v113))
            {
              goto LABEL_134;
            }

            v124 = __OFADD__(v116, v126);
            v127 = v116 + v126;
            if (v124)
            {
              goto LABEL_137;
            }

            if (v127 >= v121)
            {
              v141 = *v111;
              v140 = *(v111 + 1);
              v124 = __OFSUB__(v140, v141);
              v142 = v140 - v141;
              if (v124)
              {
                goto LABEL_145;
              }

              if (v116 < v142)
              {
                v110 = v106 - 2;
              }
            }

            else
            {
LABEL_82:
              if (v117)
              {
                goto LABEL_133;
              }

              v129 = *v113;
              v128 = *(v113 + 1);
              v130 = __OFSUB__(v128, v129);
              v131 = v128 - v129;
              v132 = v130;
              if (v130)
              {
                goto LABEL_136;
              }

              v133 = *(v111 + 1);
              v134 = v133 - *v111;
              if (__OFSUB__(v133, *v111))
              {
                goto LABEL_139;
              }

              if (__OFADD__(v131, v134))
              {
                goto LABEL_141;
              }

              if (v131 + v134 < v116)
              {
                goto LABEL_97;
              }

              if (v116 < v134)
              {
                v110 = v106 - 2;
              }
            }
          }

          else
          {
            if (v106 == 3)
            {
              v114 = *(v35 + 4);
              v115 = *(v35 + 5);
              v124 = __OFSUB__(v115, v114);
              v116 = v115 - v114;
              v117 = v124;
              goto LABEL_82;
            }

            if (v106 < 2)
            {
              goto LABEL_135;
            }

            v136 = *v113;
            v135 = *(v113 + 1);
            v124 = __OFSUB__(v135, v136);
            v131 = v135 - v136;
            v132 = v124;
LABEL_97:
            if (v132)
            {
              goto LABEL_138;
            }

            v138 = *v111;
            v137 = *(v111 + 1);
            v124 = __OFSUB__(v137, v138);
            v139 = v137 - v138;
            if (v124)
            {
              goto LABEL_140;
            }

            if (v139 < v131)
            {
              break;
            }
          }

          if (v110 - 1 >= v106)
          {
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!*v172)
          {
            goto LABEL_153;
          }

          v41 = &v107[16 * v110 - 16];
          v143 = *v41;
          v144 = &v107[16 * v110];
          v145 = *(v144 + 1);
          v146 = v175;
          sub_23125CC78(*v172 + *(v171 + 72) * *v41, *v172 + *(v171 + 72) * *v144, *v172 + *(v171 + 72) * v145, a4);
          v175 = v146;
          if (v146)
          {
            goto LABEL_125;
          }

          if (v145 < v143)
          {
            goto LABEL_128;
          }

          v147 = *(v112 + 2);
          if (v110 > v147)
          {
            goto LABEL_129;
          }

          *v41 = v143;
          *(v41 + 8) = v145;
          if (v110 >= v147)
          {
            goto LABEL_130;
          }

          v106 = v147 - 1;
          sub_2311E6448(v144 + 16, v147 - 1 - v110, &v107[16 * v110]);
          v35 = v112;
          *(v112 + 2) = v147 - 1;
          v37 = &qword_23136CB60;
          if (v147 <= 2)
          {
            break;
          }

          continue;
        }
      }

      v33 = v172[1];
      v34 = v176;
      a4 = v159;
      v16 = v183;
      v36 = &qword_27DD43620;
      if (v176 >= v33)
      {
LABEL_115:
        v41 = *v160;
        if (!*v160)
        {
          goto LABEL_157;
        }

        a4 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_117:
          v150 = a4 + 16;
          v151 = *(a4 + 2);
          while (v151 >= 2)
          {
            if (!*v172)
            {
              goto LABEL_154;
            }

            v152 = a4;
            v153 = &a4[16 * v151];
            v154 = *v153;
            a4 = &v150[2 * v151];
            v155 = *(a4 + 1);
            v156 = v175;
            sub_23125CC78(*v172 + *(v171 + 72) * *v153, *v172 + *(v171 + 72) * *a4, *v172 + *(v171 + 72) * v155, v41);
            v175 = v156;
            if (v156)
            {
              break;
            }

            if (v155 < v154)
            {
              goto LABEL_142;
            }

            if (v151 - 2 >= *v150)
            {
              goto LABEL_143;
            }

            *v153 = v154;
            *(v153 + 1) = v155;
            v29 = *v150 - v151;
            if (*v150 < v151)
            {
              goto LABEL_144;
            }

            v151 = *v150 - 1;
            sub_2311E6448(a4 + 16, v29, a4);
            *v150 = v151;
            a4 = v152;
          }

          goto LABEL_125;
        }

LABEL_151:
        a4 = sub_2311E6430(a4, v29, v30, v35);
        goto LABEL_117;
      }

      goto LABEL_3;
    }

    v100 = sub_23136A900();

    v16 = v183;
    sub_2311D1F18(v183, v92, v89);
    a4 = v182;
    sub_2311D1F18(v182, v92, v89);
    v36 = v92;
    v37 = v89;
    if ((v100 & 1) == 0)
    {
      goto LABEL_58;
    }

    v101 = v187;
    if (!v178)
    {
      break;
    }

    v102 = v186;
    v103 = v179;
    sub_23123E9F8(v186, v179, v36, v37);
    v104 = v185;
    swift_arrayInitWithTakeFrontToBack();
    sub_23123E9F8(v103, v104, v36, v37);
    v82 = v104 + v177;
    v84 = v102 + v177;
    v77 = __CFADD__(v101, 1);
    v85 = (v101 + 1);
    if (v77)
    {
      goto LABEL_58;
    }
  }

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
}

uint64_t sub_23125C9A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2311E6430(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_23125CAD4((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_23125CAD4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_23126F678(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_23136A900() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_23126F678(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_23136A900() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_23125CC78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  MEMORY[0x28223BE20](v95);
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v79 - v10;
  MEMORY[0x28223BE20](v11);
  v91 = &v79 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = &v79 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v79 - v16;
  MEMORY[0x28223BE20](v17);
  v87 = &v79 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v27 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_73;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_74;
  }

  v89 = a3;
  v31 = v27 / v26;
  v98 = a1;
  v97 = a4;
  v32 = v29 / v26;
  if (v27 / v26 < v29 / v26)
  {
    sub_23126F6C4(a1, v27 / v26, a4);
    v85 = v26;
    v86 = a4 + v31 * v26;
    v96 = v86;
    v33 = &qword_23136CB60;
    v34 = v89;
    v83 = v24;
    v84 = v21;
    while (1)
    {
      if (a4 >= v86 || a2 >= v34)
      {
        goto LABEL_71;
      }

      v93 = a1;
      v94 = a2;
      sub_23123EA8C(a2, v24, &qword_27DD43620, v33);
      v92 = a4;
      sub_23123EA8C(a4, v21, &qword_27DD43620, v33);
      v36 = v87;
      sub_23123EA8C(v24, v87, &qword_27DD43620, v33);

      v37 = sub_231367370();
      v90 = v38;
      v91 = v37;
      v39 = sub_2313673A0();
      v40 = v33;
      v41 = *(*(v39 - 8) + 8);
      v41(v36, v39);
      v42 = v88;
      sub_23123EA8C(v21, v88, &qword_27DD43620, v40);

      v43 = sub_231367370();
      v45 = v44;
      v46 = v42;
      v47 = v90;
      v41(v46, v39);
      if (v91 == v43 && v47 == v45)
      {

        v21 = v84;
        sub_2311D1F18(v84, &qword_27DD43620, v40);
        v24 = v83;
        sub_2311D1F18(v83, &qword_27DD43620, v40);
        v33 = v40;
      }

      else
      {
        v49 = sub_23136A900();

        v21 = v84;
        sub_2311D1F18(v84, &qword_27DD43620, v40);
        v24 = v83;
        sub_2311D1F18(v83, &qword_27DD43620, v40);
        v33 = v40;
        if (v49)
        {
          v50 = v93;
          v51 = v85;
          a2 = v94 + v85;
          v52 = v93 < v94 || v93 >= a2;
          a4 = v92;
          if (v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v93 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v50 = v93;
      v51 = v85;
      a4 = v92 + v85;
      v53 = v93 < v92 || v93 >= a4;
      a2 = v94;
      if (v53)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v93 != v92)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v97 = a4;
LABEL_37:
      a1 = v50 + v51;
      v98 = a1;
      v34 = v89;
    }
  }

  sub_23126F6C4(a2, v29 / v26, a4);
  v54 = a4 + v32 * v26;
  v55 = -v26;
  v56 = v54;
  v57 = v89;
  v92 = a4;
  v93 = a1;
  v84 = -v26;
LABEL_41:
  v58 = a2 + v55;
  v59 = v57;
  v80 = v56;
  v94 = a2;
  v85 = a2 + v55;
  while (1)
  {
    if (v54 <= a4)
    {
      v98 = a2;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v88 = v59;
    v89 = v54;
    v83 = v56;
    v86 = v54 + v55;
    v60 = v90;
    sub_23123EA8C(v54 + v55, v90, &qword_27DD43620, &qword_23136CB60);
    v61 = v91;
    sub_23123EA8C(v58, v91, &qword_27DD43620, &qword_23136CB60);
    v62 = v81;
    sub_23123EA8C(v60, v81, &qword_27DD43620, &qword_23136CB60);

    v87 = sub_231367370();
    v64 = v63;
    v65 = sub_2313673A0();
    v66 = *(*(v65 - 8) + 8);
    v66(v62, v65);
    v67 = v82;
    sub_23123EA8C(v61, v82, &qword_27DD43620, &qword_23136CB60);

    v68 = sub_231367370();
    v70 = v69;
    v66(v67, v65);
    if (v87 == v68 && v64 == v70)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_23136A900();
    }

    v73 = v88;

    v55 = v84;
    v57 = v73 + v84;
    sub_2311D1F18(v91, &qword_27DD43620, &qword_23136CB60);
    sub_2311D1F18(v90, &qword_27DD43620, &qword_23136CB60);
    a4 = v92;
    a1 = v93;
    a2 = v94;
    v54 = v89;
    if (v72)
    {
      v76 = v73 < v94 || v57 >= v94;
      v77 = v85;
      if (v76)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v77;
        v56 = v83;
      }

      else
      {
        v56 = v83;
        a2 = v85;
        if (v73 != v94)
        {
          v78 = v83;
          swift_arrayInitWithTakeBackToFront();
          a2 = v77;
          v56 = v78;
        }
      }

      goto LABEL_41;
    }

    v74 = v73 < v89 || v57 >= v89;
    v58 = v85;
    if (v74)
    {
      v75 = v86;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v75 = v86;
    v56 = v86;
    v59 = v73 + v55;
    v54 = v86;
    if (v89 != v73)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      v59 = v73 + v55;
      v54 = v75;
      v56 = v75;
    }
  }

  v98 = a2;
  v56 = v80;
LABEL_70:
  v96 = v56;
LABEL_71:
  sub_23120C4B8(&v98, &v97, &v96);
}

uint64_t sub_23125D3D4()
{
  OUTLINED_FUNCTION_58_2();
  v8 = v2;
  v9 = v3;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  OUTLINED_FUNCTION_26_0();
  (*(v4 + 32))();
  v5 = *v0;
  *(v5 + 16) = v1 + 1;
  return sub_2311D38A8(&v7, v5 + 40 * v1 + 32);
}

_BYTE *storeEnumTagSinglePayload for SuggestionPool.OwnerPrescedence(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23125D58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F849D8;
  if (!qword_280F849D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F849D8);
  }

  return result;
}

unint64_t sub_23125D5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F849E0;
  if (!qword_280F849E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F849E0);
  }

  return result;
}

uint64_t sub_23125D638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalOverrides(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23125D69C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for IntentDetails(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23125D700(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_0();
  v4(v3);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_64();
  v6(v5);
  return a2;
}

uint64_t sub_23125D758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t OUTLINED_FUNCTION_5_12(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

unint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231215F6C(a2, a3);
}

void OUTLINED_FUNCTION_24_12()
{

  JUMPOUT(0x23192A9E0);
}

void *OUTLINED_FUNCTION_38_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19;

  return __swift_project_boxed_opaque_existential_1(&a16, v20);
}

void OUTLINED_FUNCTION_43_6()
{
  *(v1 - 360) = v0;

  sub_2311F4E34(0);
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_2311D1F18(va, v6, v7);
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_2311D1F18(va, v20, v21);
}

uint64_t OUTLINED_FUNCTION_53_4()
{
}

unint64_t OUTLINED_FUNCTION_54_4()
{

  return sub_2311CFD58(v0, v1, (v2 - 128));
}

__n128 OUTLINED_FUNCTION_57_5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 128) = a1;
  return *(v2 - 336);
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return sub_23136A700();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_231368F70();
}

uint64_t *OUTLINED_FUNCTION_73_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = v24;

  return __swift_allocate_boxed_opaque_existential_1(&a21);
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

void sub_23125DA44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  v4 = swift_allocObject();
  *a2 = v4;
  sub_23124C9A8(a1, v4 + 16);
}

uint64_t sub_23125DAA4()
{
  v0 = sub_2313685D0();
  v4[3] = v0;
  v4[4] = sub_231266C0C(&qword_280F7C978, MEMORY[0x277D60FE0], MEMORY[0x277D60FD8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60FD0], v0);
  v2 = sub_231367980();
  OUTLINED_FUNCTION_52_6(v2);
  result = sub_231367970();
  qword_280F8E720 = result;
  return result;
}

uint64_t sub_23125DB88(char a1)
{
  result = 0x704F5F736B6F6F42;
  switch(a1)
  {
    case 1:
      result = 0x6C505F736B6F6F42;
      break;
    case 2:
    case 29:
    case 40:
    case 48:
    case 50:
    case 57:
    case 69:
    case 73:
    case 76:
    case 97:
    case 118:
    case -99:
      OUTLINED_FUNCTION_68_2();
      result = v16 - 3;
      break;
    case 3:
    case 14:
    case 30:
    case 64:
    case 65:
    case 78:
    case 80:
    case 83:
    case 109:
      OUTLINED_FUNCTION_68_2();
      result = v15 + 2;
      break;
    case 4:
    case 20:
    case 45:
    case 54:
    case 62:
    case 88:
    case 101:
    case -123:
    case -118:
    case -115:
    case -109:
    case -101:
    case -98:
      OUTLINED_FUNCTION_68_2();
      result = v18 - 2;
      break;
    case 5:
    case 6:
    case 17:
    case 27:
    case 43:
    case 44:
    case 49:
    case 60:
    case 71:
    case 81:
    case 96:
    case 110:
    case -125:
    case -120:
    case -116:
    case -113:
    case -110:
    case -103:
      OUTLINED_FUNCTION_68_2();
      result = v8 + 1;
      break;
    case 7:
    case 23:
    case 42:
    case -105:
      OUTLINED_FUNCTION_68_2();
      result = v4 + 10;
      break;
    case 8:
    case 10:
    case 19:
    case 21:
    case 31:
    case 114:
    case 125:
    case -119:
      OUTLINED_FUNCTION_68_2();
      result = v13 + 3;
      break;
    case 9:
    case 11:
    case 13:
    case 16:
    case 61:
    case 108:
    case 115:
    case -127:
    case -126:
    case -124:
    case -122:
    case -112:
    case -108:
    case -102:
      OUTLINED_FUNCTION_68_2();
      result = v14 | 4;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 15:
    case 18:
    case 63:
    case 77:
    case 85:
    case 103:
    case 120:
    case -111:
    case -97:
      OUTLINED_FUNCTION_68_2();
      result = v17 + 6;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x72475F73656C6946;
      break;
    case 25:
    case 26:
      result = 0x65535F73656C6946;
      break;
    case 28:
      result = 0x69485F73656C6946;
      break;
    case 32:
    case 107:
    case 116:
    case 119:
    case -114:
      OUTLINED_FUNCTION_68_2();
      result = v9 + 5;
      break;
    case 33:
      result = 0xD000000000000013;
      break;
    case 34:
    case 35:
    case 37:
      result = 0x5F7373656E746946;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 38:
    case 51:
    case 94:
    case 100:
    case 126:
    case -128:
      OUTLINED_FUNCTION_68_2();
      result = v11 | 8;
      break;
    case 39:
      result = 0x4C5F68746C616548;
      break;
    case 41:
      result = 0x545F68746C616548;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000013;
      break;
    case 52:
      result = 0x6165525F6C69614DLL;
      break;
    case 53:
      result = 0x616C465F6C69614DLL;
      break;
    case 55:
      result = 0x7465475F6C69614DLL;
      break;
    case 56:
      result = 0xD000000000000013;
      break;
    case 58:
      result = 0x726E555F6C69614DLL;
      break;
    case 59:
      result = 0xD000000000000013;
      break;
    case 66:
      result = 0xD000000000000013;
      break;
    case 67:
      result = 0xD000000000000013;
      break;
    case 68:
    case 70:
    case 82:
    case 87:
    case 92:
    case 93:
    case 95:
    case 102:
    case 123:
    case 127:
      OUTLINED_FUNCTION_68_2();
      result = v7 - 1;
      break;
    case 72:
    case 112:
    case 117:
    case -117:
      OUTLINED_FUNCTION_68_2();
      result = v12 + 7;
      break;
    case 74:
      v3 = 0x545F7377654ELL;
      goto LABEL_24;
    case 75:
      result = 0x6565465F7377654ELL;
      break;
    case 79:
      result = 0x6165525F7377654ELL;
      break;
    case 84:
    case 104:
    case -104:
      OUTLINED_FUNCTION_68_2();
      result = v10 + 11;
      break;
    case 86:
      result = 0xD000000000000013;
      break;
    case 89:
    case 91:
      result = 0x435F736F746F6850;
      break;
    case 90:
      result = 0xD000000000000013;
      break;
    case 98:
      result = 0xD000000000000013;
      break;
    case 99:
    case -107:
      OUTLINED_FUNCTION_68_2();
      result = v6 + 9;
      break;
    case 105:
      result = 0xD000000000000013;
      break;
    case 106:
      result = 0x4E5F697261666153;
      break;
    case 111:
      result = 0xD000000000000013;
      break;
    case 113:
      result = 0xD000000000000013;
      break;
    case 121:
    case 124:
      result = 0x4D5F736B636F7453;
      break;
    case 122:
      result = 0x465F736B636F7453;
      break;
    case -121:
      result = 0xD000000000000013;
      break;
    case -106:
      OUTLINED_FUNCTION_68_2();
      result = v5 + 14;
      break;
    case -100:
      result = 0xD000000000000013;
      break;
    case -96:
      result = 0x74726F70535F5654;
      break;
    case -95:
      v3 = 0x6168535F5654;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case -94:
      result = 0x47776F68535F5654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23125E754(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
    case 17:
    case 25:
    case 30:
    case 46:
    case 57:
    case 124:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -114:
    case -113:
    case -112:
    case -111:
    case -108:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_23136C1C0;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v2 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v2);
      v3 = qword_280F843B0;

      if (v3 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      goto LABEL_193;
    case 2:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v66);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CB8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B7D8;
      goto LABEL_213;
    case 3:
    case 4:
    case 5:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v20);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CB0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B7C0;
      goto LABEL_213;
    case 6:
    case 7:
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v38);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CA8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B7B8;
      goto LABEL_192;
    case 9:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v68);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F84390 != -1)
      {
        OUTLINED_FUNCTION_10_15(&qword_280F84390);
      }

      goto LABEL_158;
    case 10:
    case 11:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v35);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84390 != -1)
      {
        OUTLINED_FUNCTION_10_15(&qword_280F84390);
      }

      v9 = qword_280F8E6F8;
      goto LABEL_192;
    case 12:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v75);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CC8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B7F0;
      goto LABEL_192;
    case 13:
    case 14:
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v42);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CD0 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B7F8;
      goto LABEL_192;
    case 15:
    case 16:
    case 19:
    case 20:
    case 21:
    case 23:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v11);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D08 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4B848;
      goto LABEL_213;
    case 18:
    case 22:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v46);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D10 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B860;
      goto LABEL_213;
    case 24:
    case 26:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v34);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CD8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B800;
      goto LABEL_192;
    case 27:
    case 29:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v33);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CE0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B808;
      goto LABEL_213;
    case 28:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v77);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CE8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B820;
      goto LABEL_213;
    case 31:
    case 33:
    case 35:
    case 36:
    case 37:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v13);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CF0 != -1)
      {
        OUTLINED_FUNCTION_45_3(&qword_27DD42CF0);
      }

      v9 = qword_27DD4B838;
      goto LABEL_192;
    case 32:
    case 34:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v36);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_27DD42CF0 != -1)
      {
        OUTLINED_FUNCTION_45_3(&qword_27DD42CF0);
      }

      goto LABEL_158;
    case 38:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v10);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84298 != -1)
      {
        OUTLINED_FUNCTION_46_9(&qword_280F84298);
      }

      v9 = qword_280F8E688;
      goto LABEL_192;
    case 39:
    case 41:
    case 48:
    case 49:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v14);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F84298 != -1)
      {
        OUTLINED_FUNCTION_46_9(&qword_280F84298);
      }

      goto LABEL_158;
    case 47:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v74);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D00 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B840;
      goto LABEL_192;
    case 50:
    case 51:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v44);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842B8 != -1)
      {
        OUTLINED_FUNCTION_41_7(&qword_280F842B8);
      }

      v9 = qword_280F8E698;
      goto LABEL_192;
    case 52:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v78);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v79 = qword_280F843B0;

      if (v79 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v80 = qword_280F842B8;

      if (v80 != -1)
      {
        OUTLINED_FUNCTION_41_7(&qword_280F842B8);
      }

      v25 = qword_280F8E698;
      goto LABEL_162;
    case 53:
    case 54:
    case 55:
    case 56:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v15);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D20 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B878;
      goto LABEL_213;
    case 59:
    case 61:
    case 63:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v26);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842E0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_280F8E6D8;
      goto LABEL_213;
    case 60:
    case 62:
    case 65:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v21);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v23 = qword_280F843B0;

      if (v23 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v24 = qword_280F842A8;

      if (v24 != -1)
      {
        OUTLINED_FUNCTION_44_7(&qword_280F842A8);
      }

      v25 = qword_280F8E690;
      goto LABEL_162;
    case 64:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v67);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842A8 != -1)
      {
        OUTLINED_FUNCTION_44_7(&qword_280F842A8);
      }

      v9 = qword_280F8E690;
      goto LABEL_192;
    case 66:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v76);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D28 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B890;
      goto LABEL_213;
    case 67:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v60);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_27DD42D30 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v62 = __swift_project_value_buffer(v61, qword_27DD4B8A8);
      *(v1 + 56) = v61;
      *(v1 + 64) = &off_2845F6270;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
      sub_231266A64(v62, boxed_opaque_existential_1);
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v64 = qword_280F8E710;
      v22 = sub_2313692F0();
      *(v1 + 96) = v22;
      *(v1 + 104) = &off_2845F6218;
      *(v1 + 72) = v64;
      v65 = qword_280F843B0;

      if (v65 != -1)
      {
        goto LABEL_149;
      }

      goto LABEL_161;
    case 68:
    case 71:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v48);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v49 = qword_280F843B0;

      if (v49 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v50 = qword_27DD42D38;

      if (v50 != -1)
      {
        OUTLINED_FUNCTION_42_8(&qword_27DD42D38);
      }

      v25 = qword_27DD4B8C0;
      goto LABEL_162;
    case 69:
    case 70:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v43);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D38 != -1)
      {
        OUTLINED_FUNCTION_42_8(&qword_27DD42D38);
      }

      v9 = qword_27DD4B8C0;
      goto LABEL_192;
    case 72:
    case 73:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v52);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D40 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4B8C8;
      goto LABEL_213;
    case 74:
    case 79:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v39);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v40 = qword_280F843B0;

      if (v40 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v41 = qword_27DD42D48;

      if (v41 != -1)
      {
        OUTLINED_FUNCTION_43_7(&qword_27DD42D48);
      }

      v25 = qword_27DD4B8E0;
      goto LABEL_162;
    case 75:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v56);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D48 != -1)
      {
        OUTLINED_FUNCTION_43_7(&qword_27DD42D48);
      }

      v9 = qword_27DD4B8E0;
      goto LABEL_192;
    case 76:
    case 77:
    case 78:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v19);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D50 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4B8E8;
      goto LABEL_213;
    case 80:
    case 82:
    case 85:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v18);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D60 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4B908;
      goto LABEL_213;
    case 81:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v55);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D68 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B920;
      goto LABEL_213;
    case 83:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v53);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D70 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B938;
      goto LABEL_213;
    case 84:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v81);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D58 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B900;
      goto LABEL_192;
    case 87:
    case 88:
    case 89:
    case 91:
    case 92:
    case 93:
    case 95:
    case 96:
    case 97:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v4);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D80 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = &unk_27DD4B958;
      goto LABEL_213;
    case 90:
    case 94:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v30);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v31 = qword_280F843B0;

      if (v31 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v32 = qword_27DD42D78;

      if (v32 != -1)
      {
        swift_once();
      }

      v25 = qword_27DD4B950;
      goto LABEL_162;
    case 98:
    case 101:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v45);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D88 != -1)
      {
        OUTLINED_FUNCTION_40_7(&qword_27DD42D88);
      }

      v9 = qword_27DD4B970;
      goto LABEL_192;
    case 99:
    case 100:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v51);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_27DD42D88 != -1)
      {
        OUTLINED_FUNCTION_40_7(&qword_27DD42D88);
      }

LABEL_158:
      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v69 = qword_280F843B8;

      if (v69 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E710);
      v70 = qword_280F843B0;

      if (v70 != -1)
      {
LABEL_149:
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

LABEL_161:
      v25 = qword_280F8E708;
      goto LABEL_162;
    case 102:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_23136FAB0;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v82 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v82);
      v83 = qword_280F843B0;

      if (v83 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v84 = qword_280F84390;

      if (v84 != -1)
      {
        OUTLINED_FUNCTION_10_15(&qword_280F84390);
      }

      v85 = qword_280F8E6F8;
      *(v1 + 136) = v82;
      *(v1 + 144) = &off_2845F6218;
      *(v1 + 112) = v85;
      v86 = qword_280F842D8;

      if (v86 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v88 = __swift_project_value_buffer(v87, qword_280F8E6C0);
      *(v1 + 176) = v87;
      *(v1 + 184) = &off_2845F6270;
      v89 = __swift_allocate_boxed_opaque_existential_1((v1 + 152));
      sub_231266A64(v88, v89);
      if (qword_280F842D0 != -1)
      {
        swift_once();
      }

      v90 = __swift_project_value_buffer(v87, qword_280F8E6A8);
      *(v1 + 216) = v87;
      *(v1 + 224) = &off_2845F6270;
      v91 = (v1 + 192);
      goto LABEL_214;
    case 103:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v57);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v58 = qword_280F843B0;

      if (v58 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v59 = qword_280F84380;

      if (v59 != -1)
      {
        OUTLINED_FUNCTION_39_5(&qword_280F84380);
      }

      v25 = qword_280F8E6F0;
      goto LABEL_162;
    case 104:
    case 105:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v47);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84380 != -1)
      {
        OUTLINED_FUNCTION_39_5(&qword_280F84380);
      }

      v9 = qword_280F8E6F0;
      goto LABEL_192;
    case 106:
    case 108:
    case 110:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v16);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D98 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B978;
      goto LABEL_192;
    case 107:
    case 109:
    case 113:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v17);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DA0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B980;
      goto LABEL_213;
    case 111:
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v95);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DA8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B998;
      goto LABEL_213;
    case 112:
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v54);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DB0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B9B0;
      goto LABEL_213;
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v12);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DB8 != -1)
      {
        swift_once();
      }

      v9 = qword_27DD4B9C8;
      goto LABEL_192;
    case 121:
    case 123:
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v37);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84290 != -1)
      {
        swift_once();
      }

      v9 = qword_280F8E680;
      goto LABEL_192;
    case 122:
    case 125:
    case 126:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v28);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DD0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B9E8;
      goto LABEL_213;
    case 127:
    case -128:
    case -127:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v29);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DC8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v6 = v5;
      v7 = qword_27DD4B9D0;
LABEL_213:
      v90 = __swift_project_value_buffer(v5, v7);
      *(v1 + 56) = v6;
      *(v1 + 64) = &off_2845F6270;
      v91 = (v1 + 32);
      goto LABEL_214;
    case -107:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_23136C1C0;
      if (qword_280F843A0 != -1)
      {
        OUTLINED_FUNCTION_11_11(&qword_280F843A0);
      }

      v92 = qword_280F8E700;
      *(v1 + 56) = sub_2313692F0();
      *(v1 + 64) = &off_2845F6218;
      *(v1 + 32) = v92;
      v93 = qword_27DD42DD8;

      if (v93 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
      v90 = __swift_project_value_buffer(v94, qword_27DD4BA00);
      *(v1 + 96) = v94;
      *(v1 + 104) = &off_2845F6270;
      v91 = (v1 + 72);
LABEL_214:
      v96 = __swift_allocate_boxed_opaque_existential_1(v91);
      sub_231266A64(v90, v96);
      return v1;
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v8);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F843A0 != -1)
      {
        OUTLINED_FUNCTION_11_11(&qword_280F843A0);
      }

      v9 = qword_280F8E700;
      goto LABEL_192;
    case -99:
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4(v71);
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20(&qword_280F843B8);
      }

      v22 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v22);
      v72 = qword_280F843B0;

      if (v72 != -1)
      {
        OUTLINED_FUNCTION_2_11(&qword_280F843B0);
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v73 = qword_280F843A0;

      if (v73 != -1)
      {
        OUTLINED_FUNCTION_11_11(&qword_280F843A0);
      }

      v25 = qword_280F8E700;
LABEL_162:
      *(v1 + 136) = v22;
      *(v1 + 144) = &off_2845F6218;
      *(v1 + 112) = v25;
      goto LABEL_193;
    case -96:
    case -95:
    case -94:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1(v27);
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842C8 != -1)
      {
        swift_once();
      }

      v9 = qword_280F8E6A0;
LABEL_192:
      *(v1 + 56) = sub_2313692F0();
      *(v1 + 64) = &off_2845F6218;
      *(v1 + 32) = v9;
LABEL_193:

      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_23126036C(unsigned __int8 a1)
{
  v2 = sub_231368290();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, **(&unk_278907400 + (a1 ^ 0x80u)), v2);
  v9 = sub_231368280();
  (*(v4 + 8))(v8, v2);
  return v9;
}

void sub_231260464(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  switch(a1)
  {
    case 102:
    case 105:
    case -119:
      sub_231207BDC(0, &qword_280F7C7A0, 0x277CD4058);
      sub_231367350();
      v18 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v18, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 103:
    case 104:
LABEL_27:
      sub_231207BDC(0, &qword_280F7C7D8, 0x277CD3A18);
      sub_231367350();
      v17 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v17, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -124:
    case -123:
    case -122:
    case -118:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -100:
      goto LABEL_24;
    case 119:
    case 120:
    case -126:
    case -125:
    case -120:
    case -114:
    case -110:
    case -109:
    case -101:
    case -99:
    case -98:
      goto LABEL_18;
    case -121:
    case -105:
      sub_231369600();
      sub_231367350();
      v16 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v16, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -117:
      sub_231207BDC(0, &qword_280F7C7D0, 0x277CD3EC0);
      sub_231367350();
      v15 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v15, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -113:
      goto LABEL_11;
    case -106:
    case -104:
    case -103:
    case -102:
      v9 = MEMORY[0x277D60888];
      *(a2 + 24) = v4;
      *(a2 + 32) = v9;
      v28 = v8;
      goto LABEL_19;
    default:
      if (!(!v7 & v6))
      {
        switch(a1)
        {
          case '9':
          case ':':
          case 'A':
          case 'C':
            goto LABEL_18;
          case ';':
          case '<':
          case '=':
          case '>':
          case '?':
          case '@':
            goto LABEL_24;
          case 'B':
            goto LABEL_27;
          default:
            JUMPOUT(0);
        }
      }

      if (!a1)
      {
        goto LABEL_18;
      }

      v28 = v8;
      if (a1 == 8)
      {
        v19 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v19;
        __swift_allocate_boxed_opaque_existential_1(a2);
        OUTLINED_FUNCTION_6_12();
        v22 = 0xD000000000000028;
LABEL_29:
        *v20 = v22;
        v20[1] = v21;
        v13 = *MEMORY[0x277D60868];
        v14 = *(v28 + 104);
        goto LABEL_21;
      }

      if (a1 == 87)
      {
        v23 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v23;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        v29 = sub_23126036C(0x57u);
        v30 = v25;
        sub_231369EE0();
        MEMORY[0x23192A730](0xD000000000000012, 0x800000023137E250);

        *boxed_opaque_existential_1 = v29;
        boxed_opaque_existential_1[1] = v30;
        v26 = MEMORY[0x277D60878];
        goto LABEL_20;
      }

      if (a1 != 13)
      {
        if (a1 != 49 && a1 != 52 && a1 != 86)
        {
          if (a1 != 9)
          {
LABEL_24:
            *(a2 + 32) = 0;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            return;
          }

          v10 = MEMORY[0x277D60888];
          *(a2 + 24) = v4;
          *(a2 + 32) = v10;
          __swift_allocate_boxed_opaque_existential_1(a2);
          OUTLINED_FUNCTION_6_12();
          v22 = 0xD000000000000029;
          goto LABEL_29;
        }

LABEL_18:
        v28 = v8;
        v11 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v11;
LABEL_19:
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        *boxed_opaque_existential_1 = sub_23125DB88(a1);
        boxed_opaque_existential_1[1] = v12;
        v26 = MEMORY[0x277D60880];
LABEL_20:
        v13 = *v26;
        v14 = *(v28 + 104);
        v20 = boxed_opaque_existential_1;
LABEL_21:

        v14(v20, v13, v4);
        return;
      }

LABEL_11:
      sub_231207BDC(0, &unk_280F7C7B0, 0x277CD4078);
      sub_231367350();
      v27 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v27, MEMORY[0x277D608B0]);
LABEL_30:
      sub_2313673F0();
      return;
  }
}

BOOL sub_231260A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 dateSearchType];

        (*(v4 + 8))(v9, v3);
        return v12 == 1;
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v6, v3);
    }
  }

  return 0;
}

BOOL sub_231260CA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 itemType];

        (*(v4 + 8))(v9, v3);
        return v12 == 2;
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_231260F2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        if ([v11 itemType] == 3)
        {
          v13 = [v12 taskPriority];

          (*(v4 + 8))(v9, v3);
          if (v13 == 2)
          {
            return 1;
          }
        }

        else
        {
          (*(v4 + 8))(v9, v3);
        }
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      v15 = *(v4 + 8);
      v15(v9, v3);
      v15(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_2312611F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 attachments];
        if (!v12)
        {

          (*(v4 + 8))(v9, v3);
          return 1;
        }
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v13 = *(v4 + 8);
      v13(v9, v3);
      v13(v6, v3);
    }
  }

  return 0;
}

BOOL sub_231261484()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v15[1] = v11;
        sub_231207BDC(0, &qword_280F7C7D0, 0x277CD3EC0);
        v12 = sub_231366BA0();
        (*(v4 + 8))(v9, v3);

        return v12 == 5;
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_231261730()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 temporalEventTrigger];
        if (v13 || (v13 = [v12 spatialEventTrigger]) != 0)
        {
          v14 = v13;
        }

        else
        {
          v17 = [v12 targetTaskList];
          if (!v17)
          {
            (*(v4 + 8))(v9, v3);

            return 0;
          }

          v14 = v17;
          v18 = sub_231266AC8([v17 title]);
          if (v19)
          {
            if (v18 == 0xD000000000000012 && v19 == 0x800000023137E2D0)
            {

              (*(v4 + 8))(v9, v3);
            }

            else
            {
              v21 = sub_23136A900();

              (*(v4 + 8))(v9, v3);
              if ((v21 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v15 = *(v4 + 8);
      v15(v9, v3);
      v15(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_231261AC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 temporalEventTrigger];

        (*(v4 + 8))(v9, v3);
        if (v12)
        {

          return 1;
        }
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_231261D58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D60918])
    {
      v15 = *(v4 + 8);
      v15(v9, v3);
      v15(v6, v3);
      return 0;
    }

    (*(v4 + 96))(v6, v3);
    v10 = *v6;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    v13 = [v11 temporalEventTrigger];
    if (v13 || (v13 = [v12 spatialEventTrigger]) != 0)
    {
      v14 = v13;
LABEL_8:

LABEL_9:
      (*(v4 + 8))(v9, v3);
      return 0;
    }

    v17 = [v12 targetTaskList];
    if (!v17)
    {
      (*(v4 + 8))(v9, v3);

      return 0;
    }

    v14 = v17;
    v18 = sub_231266AC8([v17 title]);
    if (v19)
    {
      if (v18 == 0xD000000000000012 && v19 == 0x800000023137E2D0)
      {

        goto LABEL_8;
      }

      v21 = sub_23136A900();

      (*(v4 + 8))(v9, v3);
      if (v21)
      {
        return 0;
      }
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    return 1;
  }

  sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  return 0;
}

void sub_2312620F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v21 = v10;
        v12 = sub_231266B38(v11);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = MEMORY[0x277D84F90];
        }

        v14 = sub_23125D7A0();
        v15 = 0;
        while (1)
        {
          if (v14 == v15)
          {
LABEL_15:
            (*(v4 + 8))(v9, v3);

            return;
          }

          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x23192AD10](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v18 = [v16 currentLocation];

          ++v15;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      v19 = *(v4 + 8);
      v19(v9, v3);
      v19(v6, v3);
    }
  }
}

uint64_t sub_23126244C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D60918])
  {
    v16 = *(v4 + 8);
    v16(v9, v3);
    v16(v6, v3);
    goto LABEL_13;
  }

  (*(v4 + 96))(v6, v3);
  v10 = *v6;
  sub_231369600();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = sub_231266BA8(v11), !v13))
  {

    (*(v4 + 8))(v9, v3);
    goto LABEL_13;
  }

  if (v12 == 0xD000000000000011 && v13 == 0x800000023137E2F0)
  {

    (*(v4 + 8))(v9, v3);
    v15 = 1;
  }

  else
  {
    v15 = sub_23136A900();

    (*(v4 + 8))(v9, v3);
  }

  return v15 & 1;
}

uint64_t sub_231262738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2311D1F18(v2, &qword_27DD43808, &qword_231373E90);
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D60918])
  {
    v16 = *(v4 + 8);
    v16(v9, v3);
    v16(v6, v3);
    goto LABEL_13;
  }

  (*(v4 + 96))(v6, v3);
  v10 = *v6;
  sub_231369600();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = sub_231266BA8(v11), !v13))
  {

    (*(v4 + 8))(v9, v3);
    goto LABEL_13;
  }

  if (v12 == 0xD000000000000013 && v13 == 0x800000023137E310)
  {

    (*(v4 + 8))(v9, v3);
    v15 = 1;
  }

  else
  {
    v15 = sub_23136A900();

    (*(v4 + 8))(v9, v3);
  }

  return v15 & 1;
}

void sub_231262A24(uint64_t a1)
{
  v2 = a1;
  v3 = sub_231368290();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43820, &qword_23136E040);
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v372 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v372 - v17;
  switch(v2)
  {
    case 107:
    case 109:
    case 113:
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v100 = OUTLINED_FUNCTION_55_6(v99);
      OUTLINED_FUNCTION_15_15(v100, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v101 = OUTLINED_FUNCTION_3_19();
      v102(v101);
      OUTLINED_FUNCTION_54_5();
      v103 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v103);
      v104 = OUTLINED_FUNCTION_72_3();
      v108 = OUTLINED_FUNCTION_53_5(v104, 0xE800000000000000, v105, v106, v107);
      v109 = OUTLINED_FUNCTION_7_10();
      v110(v109);
      sub_231368280();
      v111 = OUTLINED_FUNCTION_47_6();
      (*(v5 + 8))(v111, v3);
      v112 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12(v112);
      OUTLINED_FUNCTION_78_1();
      v114 = v113;
      sub_23124946C(v115, v116, v117, v118, v119, v120);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v123 = sub_231266C0C(v121, v122, &unk_2313702A0);
      v100[2].n128_u64[0] = 0x656C746954626174;
      v100[2].n128_u64[1] = 0xE800000000000000;
      v100[3].n128_u64[0] = v114;
      v100[5].n128_u64[0] = v123;
      v100[5].n128_u64[1] = v108;
      OUTLINED_FUNCTION_23_8();
      v53 = v9;
      goto LABEL_39;
    case 108:
    case 110:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 123:
    case 124:
    case -126:
    case -121:
    case -119:
    case -118:
    case -117:
    case -114:
    case -113:
    case -111:
    case -110:
    case -109:
    case -108:
    case -107:
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
    case -97:
    case -96:
    case -95:
      goto LABEL_41;
    case 111:
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v57 = OUTLINED_FUNCTION_55_6(v212);
      OUTLINED_FUNCTION_15_15(v57, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v213 = OUTLINED_FUNCTION_3_19();
      v214(v213);
      OUTLINED_FUNCTION_54_5();
      v215 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v215);
      v216 = OUTLINED_FUNCTION_72_3();
      v63 = OUTLINED_FUNCTION_53_5(v216, v217, v218, v219, v220);
      v221 = OUTLINED_FUNCTION_7_10();
      v222(v221);
      sub_231368280();
      OUTLINED_FUNCTION_47_6();
      v66 = v10;
      OUTLINED_FUNCTION_62_4();
      v223();
      v224 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12(v224);
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_57_6(0x6B72616D6B6F6F62, 0xED0000656C746954, v225, v226, v227, v228);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v75 = sub_231266C0C(v229, v230, &unk_2313702A0);
      v57[2].n128_u16[7] = -4864;
      v57[3].n128_u64[0] = v9;
      strcpy(&v57[2], "bookmarkTitle");
LABEL_25:
      v57[5].n128_u64[0] = v75;
      v57[5].n128_u64[1] = v63;
      OUTLINED_FUNCTION_23_8();
      v53 = v9;
      v54 = v66;
      goto LABEL_40;
    case 112:
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v244 = OUTLINED_FUNCTION_55_6(v243);
      OUTLINED_FUNCTION_15_15(v244, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v245 = OUTLINED_FUNCTION_3_19();
      v246(v245);
      OUTLINED_FUNCTION_54_5();
      v247 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v247);
      OUTLINED_FUNCTION_19_11();
      v382 = v18;
      v249 = v248 + 3;
      v250 = OUTLINED_FUNCTION_80();
      v380 = OUTLINED_FUNCTION_53_5(v250, v251, v252, v253, v254);
      v255 = OUTLINED_FUNCTION_7_10();
      v256(v255);
      v257 = sub_231368280();
      v258 = OUTLINED_FUNCTION_48_5();
      v259(v258);
      v260 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12(v260);
      v261 = OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_57_6(v261, v262, v263, v264, v265, v266);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v269 = sub_231266C0C(v267, v268, &unk_2313702A0);
      v244[2].n128_u64[1] = 0x800000023137DD80;
      v244[3].n128_u64[0] = v257;
      v244[2].n128_u64[0] = v249;
      v270 = v380;
      v244[5].n128_u64[0] = v269;
      v244[5].n128_u64[1] = v270;
      OUTLINED_FUNCTION_23_8();
      v53 = v382;
      v54 = v10;
      goto LABEL_40;
    case 119:
    case 120:
      sub_231368870();
      OUTLINED_FUNCTION_36_2();
      v133 = swift_allocObject();
      *(v133 + 16) = 0x4E676E6974746573;
      *(v133 + 24) = 0xEB00000000656D61;
      v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43828, &qword_23136E058);
      v391 = v379;
      v378 = sub_23126690C();
      v392 = v378;
      __swift_allocate_boxed_opaque_existential_1(&v390);
      v376 = sub_231367550();
      v134 = sub_231367DC0();
      v381 = v10;
      v375 = v134;
      sub_2313674C0();
      v377 = *(v12 + 16);
      v377(v15, v18, v10);
      sub_2311CF324(&v390, v384);
      v135 = sub_231368540();
      v136 = OUTLINED_FUNCTION_52_6(v135);
      OUTLINED_FUNCTION_53_5(0x4E676E6974746573, 0xEB00000000656D61, v137, v138, v384);
      OUTLINED_FUNCTION_24_0();
      v139 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_36_2();
      v140 = swift_allocObject();
      *(v140 + 16) = 0x4E676E6974746573;
      *(v140 + 24) = 0xEB00000000656D61;
      v387 = v139;
      OUTLINED_FUNCTION_5_13();
      v380 = sub_231266C0C(v141, v142, &unk_23136FF40);
      v388 = v380;
      v384[2] = v140;
      v143 = *(v12 + 8);
      v144 = v381;
      v143(v18, v381);
      v384[0] = 0x4E676E6974746573;
      v384[1] = 0xEB00000000656D61;
      v389 = v136;
      __swift_destroy_boxed_opaque_existential_1Tm(&v390);
      OUTLINED_FUNCTION_36_2();
      v145 = swift_allocObject();
      strcpy((v145 + 16), "settingAction");
      *(v145 + 30) = -4864;
      v391 = v379;
      v392 = v378;
      __swift_allocate_boxed_opaque_existential_1(&v390);
      sub_2313674C0();
      sub_231368860();
      v377(v15, v18, v144);
      sub_2311CF324(&v390, v383);
      swift_allocObject();
      v148 = OUTLINED_FUNCTION_53_5(0x41676E6974746573, 0xED00006E6F697463, v146, v147, v383);
      OUTLINED_FUNCTION_36_2();
      v149 = swift_allocObject();
      strcpy((v149 + 16), "settingAction");
      *(v149 + 30) = -4864;
      v143(v18, v144);
      __swift_destroy_boxed_opaque_existential_1Tm(&v390);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_23136C1C0;
      sub_2312669FC(v384, v150 + 32);
      strcpy((v150 + 96), "settingAction");
      *(v150 + 110) = -4864;
      *(v150 + 112) = v149;
      *(v150 + 120) = v390;
      v151 = v380;
      *(v150 + 136) = v139;
      *(v150 + 144) = v151;
      *(v150 + 152) = v148;
      sub_231266A34(v384);
      goto LABEL_41;
    case 122:
    case 125:
    case 126:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v77 = OUTLINED_FUNCTION_55_6(v76);
      OUTLINED_FUNCTION_15_15(v77, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v78 = OUTLINED_FUNCTION_3_19();
      v79(v78);
      OUTLINED_FUNCTION_54_5();
      v80 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v80);
      v81 = OUTLINED_FUNCTION_76_2();
      v382 = v18;
      v84 = OUTLINED_FUNCTION_53_5(v81, 0xEB000000006C6F62, v82, v83, &v390);
      v85 = OUTLINED_FUNCTION_7_10();
      v86(v85);
      v87 = sub_231368280();
      v88 = OUTLINED_FUNCTION_48_5();
      v89(v88);
      v90 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12(v90);
      v91 = OUTLINED_FUNCTION_76_2();
      OUTLINED_FUNCTION_57_6(v91, 0xEB000000006C6F62, v92, v93, v94, v95);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v98 = sub_231266C0C(v96, v97, &unk_2313702A0);
      v77[2].n128_u64[0] = 0x69546C6F626D7973;
      v77[2].n128_u64[1] = 0xEB00000000656C74;
      v77[3].n128_u64[0] = v87;
      v77[5].n128_u64[0] = v98;
      v77[5].n128_u64[1] = v84;
      OUTLINED_FUNCTION_23_8();
      v53 = v382;
      v54 = v10;
      goto LABEL_40;
    case 127:
    case -127:
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v153 = OUTLINED_FUNCTION_55_6(v152);
      OUTLINED_FUNCTION_15_15(v153, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v382 = v18;
      v154 = OUTLINED_FUNCTION_8_12();
      v155(v154);
      OUTLINED_FUNCTION_54_5();
      v156 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v156);
      v381 = v10;
      v159 = OUTLINED_FUNCTION_53_5(0xD000000000000012, 0x800000023137DDA0, v157, v158, &v390);
      v160 = OUTLINED_FUNCTION_7_10();
      v161(v160);
      v162 = sub_231368280();
      v164 = v163;
      v165 = OUTLINED_FUNCTION_48_5();
      v166(v165);
      v167 = type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12(v167);
      OUTLINED_FUNCTION_18_11();
      v168 = v162;
      v170 = v169;
      sub_23124946C(0xD000000000000012, 0x800000023137DDA0, v168, v164, v171, v172);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v175 = sub_231266C0C(v173, v174, &unk_2313702A0);
      strcpy(&v153[2], "articleTitle");
      v153[2].n128_u8[13] = 0;
      v153[2].n128_u16[7] = -5120;
      v153[3].n128_u64[0] = v170;
      v153[5].n128_u64[0] = v175;
      v153[5].n128_u64[1] = v159;
      __swift_destroy_boxed_opaque_existential_1Tm(v384);
      (*(v12 + 8))(v382, v381);
      goto LABEL_41;
    case -128:
LABEL_5:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v37 = OUTLINED_FUNCTION_55_6(v36);
      OUTLINED_FUNCTION_15_15(v37, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v38 = OUTLINED_FUNCTION_3_19();
      v39(v38);
      OUTLINED_FUNCTION_54_5();
      v40 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v40);
      OUTLINED_FUNCTION_19_11();
      v382 = v18;
      v42 = v41 | 6;
      v43 = OUTLINED_FUNCTION_80();
      v48 = OUTLINED_FUNCTION_53_5(v43, v44, v45, v46, v47);
      v49 = OUTLINED_FUNCTION_7_10();
      v50(v49);
      sub_231368280();
      OUTLINED_FUNCTION_62_4();
      v51();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_80();
      sub_2313680A0();

      v37[2].n128_u64[0] = v42;
      v37[2].n128_u64[1] = 0x800000023137DE40;
      v37[5].n128_u64[1] = v48;
      OUTLINED_FUNCTION_23_8();
      v53 = v382;
      v54 = v10;
      goto LABEL_40;
    case -125:
    case -124:
    case -123:
    case -122:
    case -120:
    case -116:
    case -115:
    case -112:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v20 = OUTLINED_FUNCTION_55_6(v19);
      OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v21 = OUTLINED_FUNCTION_3_19();
      v22(v21);
      OUTLINED_FUNCTION_54_5();
      v23 = sub_231368540();
      v24 = OUTLINED_FUNCTION_52_6(v23);
      v25 = 0x6D614E6563616C70;
      v26 = OUTLINED_FUNCTION_31_11();
      OUTLINED_FUNCTION_53_5(v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_24_0();
      type metadata accessor for PlaceNameResolver();
      OUTLINED_FUNCTION_36_2();
      v31 = swift_allocObject();
      OUTLINED_FUNCTION_63_4(v31);
      v32 = &unk_280F83798;
      v33 = type metadata accessor for PlaceNameResolver;
      v34 = &unk_23136FFD0;
LABEL_3:
      v35 = sub_231266C0C(v32, v33, v34);
      v20[2].n128_u64[1] = 0xE900000000000065;
      v20[3].n128_u64[0] = v5;
LABEL_36:
      v20[2].n128_u64[0] = v25;
LABEL_37:
      v20[5].n128_u64[0] = v35;
      v20[5].n128_u64[1] = v24;
      goto LABEL_38;
    case -99:
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v203 = OUTLINED_FUNCTION_55_6(v202);
      OUTLINED_FUNCTION_15_15(v203, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v204 = OUTLINED_FUNCTION_3_19();
      v205(v204);
      OUTLINED_FUNCTION_54_5();
      v206 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v206);
      v207 = OUTLINED_FUNCTION_12_11();
      v208 = type metadata accessor for SunStageResolver();
      swift_allocObject();
      sub_23124B954();
      v210 = v209;
      v203[4].n128_u64[1] = v208;
      v211 = sub_231266C0C(&qword_280F83EC8, type metadata accessor for SunStageResolver, &unk_231370060);
      v203[2].n128_u64[1] = 0xEF65676174536E75;
      v203[3].n128_u64[0] = v210;
      v203[2].n128_u64[0] = 0x5372656874616577;
      v203[5].n128_u64[0] = v211;
      v203[5].n128_u64[1] = v207;
LABEL_38:
      OUTLINED_FUNCTION_23_8();
      v53 = v18;
LABEL_39:
      v54 = v10;
LABEL_40:
      v52(v53, v54);
      goto LABEL_41;
    case -98:
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v272 = OUTLINED_FUNCTION_55_6(v271);
      OUTLINED_FUNCTION_15_15(v272, xmmword_23136B670);
      sub_231368870();
      OUTLINED_FUNCTION_36_2();
      swift_allocObject();
      OUTLINED_FUNCTION_19_11();
      v274 = v273 - 1;
      *(v275 + 16) = v273 - 1;
      *(v275 + 24) = 0x800000023137DD40;
      v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43828, &qword_23136E058);
      v386 = sub_23126690C();
      __swift_allocate_boxed_opaque_existential_1(v384);
      sub_231367550();
      sub_231367DC0();
      sub_2313674C0();
      v276 = OUTLINED_FUNCTION_8_12();
      v277(v276, v18, v10);
      OUTLINED_FUNCTION_54_5();
      v278 = sub_231368540();
      v279 = OUTLINED_FUNCTION_52_6(v278);
      OUTLINED_FUNCTION_53_5(v274, 0x800000023137DD40, v280, v281, &v390);
      OUTLINED_FUNCTION_24_0();
      v282 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_36_2();
      v283 = swift_allocObject();
      *(v283 + 16) = v274;
      *(v283 + 24) = 0x800000023137DD40;
      v272[4].n128_u64[1] = v282;
      OUTLINED_FUNCTION_5_13();
      v286 = sub_231266C0C(v284, v285, &unk_23136FF40);
      v272[2].n128_u64[1] = 0x800000023137DD40;
      v272[3].n128_u64[0] = v283;
      v272[2].n128_u64[0] = v274;
      v272[5].n128_u64[0] = v286;
      v272[5].n128_u64[1] = v279;
      (*(v12 + 8))(v18, v10);
      goto LABEL_29;
    case -94:
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v232 = OUTLINED_FUNCTION_55_6(v231);
      OUTLINED_FUNCTION_15_15(v232, xmmword_23136B670);
      sub_231368860();
      OUTLINED_FUNCTION_36_2();
      v233 = swift_allocObject();
      *(v233 + 16) = 0x7079546569766F6DLL;
      *(v233 + 24) = 0xE900000000000065;
      v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43828, &qword_23136E058);
      v386 = sub_23126690C();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v384);
      sub_231367550();
      sub_231367DC0();
      sub_2313674C0();
      v235 = OUTLINED_FUNCTION_3_19();
      v236(v235);
      OUTLINED_FUNCTION_54_5();
      v237 = sub_231368540();
      v238 = OUTLINED_FUNCTION_52_6(v237);
      OUTLINED_FUNCTION_31_11();
      sub_231368500();
      OUTLINED_FUNCTION_24_0();
      type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_36_2();
      v239 = swift_allocObject();
      OUTLINED_FUNCTION_63_4(v239);
      OUTLINED_FUNCTION_5_13();
      v242 = sub_231266C0C(v240, v241, &unk_23136FF40);
      v232[2].n128_u64[1] = 0xE900000000000065;
      v232[3].n128_u64[0] = boxed_opaque_existential_1;
      v232[2].n128_u64[0] = 0x7079546569766F6DLL;
      v232[5].n128_u64[0] = v242;
      v232[5].n128_u64[1] = v238;
      (*(v12 + 8))(v18, v10);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1Tm(v384);
LABEL_41:
      OUTLINED_FUNCTION_9_0();
      return;
    default:
      switch(v2)
      {
        case '5':
        case '7':
        case '8':
          v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v20 = OUTLINED_FUNCTION_55_6(v124);
          OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v125 = OUTLINED_FUNCTION_3_19();
          v126(v125);
          OUTLINED_FUNCTION_54_5();
          v127 = sub_231368540();
          v24 = OUTLINED_FUNCTION_52_6(v127);
          v25 = 0x6E65536C69616D65;
          v128 = 0xEB00000000726564;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for DoNotResolveResolver();
          OUTLINED_FUNCTION_36_2();
          v129 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v129);
          OUTLINED_FUNCTION_5_13();
          v132 = &unk_23136FF40;
          goto LABEL_35;
        case '6':
          v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v298 = OUTLINED_FUNCTION_55_6(v297);
          OUTLINED_FUNCTION_15_15(v298, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v299 = OUTLINED_FUNCTION_3_19();
          v300(v299);
          OUTLINED_FUNCTION_54_5();
          v301 = sub_231368540();
          OUTLINED_FUNCTION_52_6(v301);
          v381 = v10;
          v302 = OUTLINED_FUNCTION_72_3();
          v306 = OUTLINED_FUNCTION_53_5(v302, 0xEA0000000000656CLL, v303, v304, v305);
          v307 = OUTLINED_FUNCTION_7_10();
          v308(v307);
          sub_231368280();
          v309 = OUTLINED_FUNCTION_48_5();
          v310(v309);
          v311 = type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_12(v311);
          OUTLINED_FUNCTION_78_1();
          v313 = v312;
          sub_23124946C(v314, v315, v316, v317, 0xD000000000000011, v318);
          OUTLINED_FUNCTION_49_5();
          OUTLINED_FUNCTION_0_20();
          v321 = sub_231266C0C(v319, v320, &unk_2313702A0);
          v298[2].n128_u64[0] = 0x7469546C69616D65;
          v298[2].n128_u64[1] = 0xEA0000000000656CLL;
          v298[3].n128_u64[0] = v313;
          v298[5].n128_u64[0] = v321;
          v298[5].n128_u64[1] = v306;
          OUTLINED_FUNCTION_23_8();
          v53 = v18;
          goto LABEL_33;
        case '9':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '@':
        case 'C':
        case 'D':
        case 'F':
        case 'G':
        case 'I':
        case 'J':
        case 'K':
        case 'O':
          goto LABEL_41;
        case '?':
        case 'H':
        case 'M':
        case 'P':
          goto LABEL_5;
        case 'A':
          v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v20 = OUTLINED_FUNCTION_55_6(v292);
          OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v293 = OUTLINED_FUNCTION_3_19();
          v294(v293);
          OUTLINED_FUNCTION_54_5();
          v295 = sub_231368540();
          v24 = OUTLINED_FUNCTION_52_6(v295);
          v25 = 0x74616E6974736564;
          v128 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for DestinationResolver();
          OUTLINED_FUNCTION_36_2();
          v296 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v296);
          v130 = &unk_280F82E58;
          v131 = type metadata accessor for DestinationResolver;
          v132 = &unk_2313700F0;
          goto LABEL_35;
        case 'B':
          v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v20 = OUTLINED_FUNCTION_55_6(v322);
          OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v323 = OUTLINED_FUNCTION_3_19();
          v324(v323);
          OUTLINED_FUNCTION_54_5();
          v325 = sub_231368540();
          v24 = OUTLINED_FUNCTION_52_6(v325);
          v25 = 0x61737265766E6F63;
          v128 = 0xEC0000006E6F6974;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for MessagesConversationEntityResolver();
          OUTLINED_FUNCTION_36_2();
          v326 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v326);
          v130 = &unk_280F7D5C0;
          v131 = type metadata accessor for MessagesConversationEntityResolver;
          v132 = &unk_231370330;
          goto LABEL_35;
        case 'E':
          v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v20 = OUTLINED_FUNCTION_55_6(v287);
          OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v288 = OUTLINED_FUNCTION_3_19();
          v289(v288);
          OUTLINED_FUNCTION_54_5();
          v290 = sub_231368540();
          v24 = OUTLINED_FUNCTION_52_6(v290);
          v25 = 0x73756F6976657270;
          v128 = 0xEC00000072616559;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for PreviousYearResolver();
          OUTLINED_FUNCTION_36_2();
          v291 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v291);
          v130 = &unk_280F82540;
          v131 = type metadata accessor for PreviousYearResolver;
          v132 = &unk_2313703C0;
LABEL_35:
          v35 = sub_231266C0C(v130, v131, v132);
          v20[2].n128_u64[1] = v128;
          v20[3].n128_u64[0] = v1;
          goto LABEL_36;
        case 'L':
        case 'N':
          v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v177 = OUTLINED_FUNCTION_55_6(v176);
          OUTLINED_FUNCTION_15_15(v177, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v381 = v10;
          v178 = OUTLINED_FUNCTION_8_12();
          v179(v178, v18);
          OUTLINED_FUNCTION_54_5();
          v180 = sub_231368540();
          OUTLINED_FUNCTION_52_6(v180);
          OUTLINED_FUNCTION_19_11();
          v181 = OUTLINED_FUNCTION_72_3();
          v186 = OUTLINED_FUNCTION_53_5(v181, v182, v183, v184, v185);
          v187 = OUTLINED_FUNCTION_7_10();
          v188(v187);
          sub_231368280();
          v189 = OUTLINED_FUNCTION_47_6();
          (*(v5 + 8))(v189, v3);
          v190 = type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_12(v190);
          OUTLINED_FUNCTION_18_11();
          OUTLINED_FUNCTION_78_1();
          v192 = v191;
          sub_23124946C(v193, v194, v195, v196, v197, v198);
          OUTLINED_FUNCTION_49_5();
          OUTLINED_FUNCTION_0_20();
          v201 = sub_231266C0C(v199, v200, &unk_2313702A0);
          strcpy(&v177[2], "articleTitle");
          v177[2].n128_u8[13] = 0;
          v177[2].n128_u16[7] = -5120;
          v177[3].n128_u64[0] = v192;
          v177[5].n128_u64[0] = v201;
          v177[5].n128_u64[1] = v186;
          OUTLINED_FUNCTION_23_8();
          v53 = v9;
LABEL_33:
          v54 = v381;
          goto LABEL_40;
        case 'Q':
          v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v20 = OUTLINED_FUNCTION_55_6(v327);
          OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v328 = OUTLINED_FUNCTION_3_19();
          v329(v328);
          OUTLINED_FUNCTION_54_5();
          v330 = sub_231368540();
          v24 = OUTLINED_FUNCTION_52_6(v330);
          OUTLINED_FUNCTION_53_5(0xD000000000000011, 0x800000023137DDE0, v331, v332, &v390);
          OUTLINED_FUNCTION_24_0();
          v333 = type metadata accessor for NotesTagAndFolderResolver();
          OUTLINED_FUNCTION_36_2();
          v334 = swift_allocObject();
          *(v334 + 16) = 0xD000000000000011;
          *(v334 + 24) = 0x800000023137DDE0;
          v20[4].n128_u64[1] = v333;
          v35 = sub_231266C0C(&qword_280F80148, type metadata accessor for NotesTagAndFolderResolver, &unk_231370180);
          v20[2].n128_u64[1] = 0x800000023137DDE0;
          v20[3].n128_u64[0] = v334;
          v20[2].n128_u64[0] = 0xD000000000000011;
          goto LABEL_37;
        default:
          switch(v2)
          {
            case 10:
              goto LABEL_5;
            case 98:
              v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
              v20 = OUTLINED_FUNCTION_55_6(v335);
              OUTLINED_FUNCTION_15_15(v20, xmmword_23136B670);
              sub_231368860();
              sub_231368850();
              v336 = OUTLINED_FUNCTION_3_19();
              v337(v336);
              OUTLINED_FUNCTION_54_5();
              v338 = sub_231368540();
              v24 = OUTLINED_FUNCTION_52_6(v338);
              v25 = 0x6C746954776F6873;
              v339 = OUTLINED_FUNCTION_31_11();
              OUTLINED_FUNCTION_53_5(v339, v340, v341, v342, v343);
              OUTLINED_FUNCTION_24_0();
              type metadata accessor for PodcastsShowResolver();
              OUTLINED_FUNCTION_36_2();
              v344 = swift_allocObject();
              OUTLINED_FUNCTION_63_4(v344);
              v32 = &unk_27DD43EE0;
              v33 = type metadata accessor for PodcastsShowResolver;
              v34 = &unk_231370210;
              goto LABEL_3;
            case 23:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
              v345 = swift_allocObject();
              OUTLINED_FUNCTION_15_15(v345, xmmword_23136C1C0);
              sub_231368860();
              sub_231368850();
              OUTLINED_FUNCTION_6_12();
              v373 = v346;
              v347 = *(v12 + 16);
              v378 = v12 + 16;
              v379 = v347;
              v347(v15, v18, v10);
              OUTLINED_FUNCTION_54_5();
              v348 = sub_231368540();
              OUTLINED_FUNCTION_52_6(v348);
              OUTLINED_FUNCTION_19_11();
              v380 = v12;
              v381 = v10;
              v350 = v349 | 6;
              v351 = v373;
              v374 = OUTLINED_FUNCTION_53_5(v349 | 6, v373, v352, v353, &v390);
              v354 = *MEMORY[0x277D60F30];
              v355 = *(v5 + 104);
              v376 = v5 + 104;
              v377 = v355;
              v355(v9, v354, v3);
              sub_231368280();
              v382 = v18;
              v375 = *(v5 + 8);
              v375(v9, v3);
              OUTLINED_FUNCTION_14_14();
              OUTLINED_FUNCTION_78_1();
              sub_2313680A0();

              v345[2].n128_u64[0] = v350;
              v345[2].n128_u64[1] = v351;
              v345[5].n128_u64[1] = v374;
              __swift_destroy_boxed_opaque_existential_1Tm(v384);
              v356 = v381;
              v357 = *(v380 + 8);
              v380 += 8;
              v358 = v382;
              v357(v382, v381);
              sub_231368860();
              sub_231368850();
              v379(v15, v358, v356);
              OUTLINED_FUNCTION_54_5();
              swift_allocObject();
              v361 = OUTLINED_FUNCTION_53_5(0xD000000000000011, 0x800000023137DD60, v359, v360, &v390);
              v377(v9, *MEMORY[0x277D60F28], v3);
              v362 = sub_231368280();
              v364 = v363;
              v375(v9, v3);
              v365 = type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_12(v365);
              OUTLINED_FUNCTION_77_0();
              v368 = sub_23124946C(0xD000000000000011, 0x800000023137DD60, v362, v364, v366, v367);
              v345[8].n128_u64[1] = v3;
              OUTLINED_FUNCTION_0_20();
              v371 = sub_231266C0C(v369, v370, &unk_2313702A0);
              v345[6].n128_u64[1] = 0x800000023137DD60;
              v345[7].n128_u64[0] = v368;
              v345[6].n128_u64[0] = 0xD000000000000011;
              v345[9].n128_u64[0] = v371;
              v345[9].n128_u64[1] = v361;
              __swift_destroy_boxed_opaque_existential_1Tm(v384);
              v357(v358, v381);
              goto LABEL_41;
            case 27:
            case 29:
              v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
              v57 = OUTLINED_FUNCTION_55_6(v56);
              OUTLINED_FUNCTION_15_15(v57, xmmword_23136B670);
              sub_231368860();
              sub_231368850();
              v58 = OUTLINED_FUNCTION_3_19();
              v59(v58);
              OUTLINED_FUNCTION_54_5();
              v60 = sub_231368540();
              OUTLINED_FUNCTION_52_6(v60);
              v63 = OUTLINED_FUNCTION_53_5(0x614E7265646C6F66, 0xEA0000000000656DLL, v61, v62, &v390);
              v64 = OUTLINED_FUNCTION_7_10();
              v65(v64);
              sub_231368280();
              OUTLINED_FUNCTION_47_6();
              v66 = v10;
              OUTLINED_FUNCTION_62_4();
              v67();
              v68 = type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_12(v68);
              OUTLINED_FUNCTION_18_11();
              OUTLINED_FUNCTION_57_6(0x614E7265646C6F66, 0xEA0000000000656DLL, v69, v70, v71, v72);
              OUTLINED_FUNCTION_49_5();
              OUTLINED_FUNCTION_0_20();
              v75 = sub_231266C0C(v73, v74, &unk_2313702A0);
              v57[2].n128_u64[1] = 0xEA0000000000656DLL;
              v57[3].n128_u64[0] = v9;
              v57[2].n128_u64[0] = 0x614E7265646C6F66;
              goto LABEL_25;
          }

          if (v2 != 13)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
      }
  }
}

uint64_t sub_2312646B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case -125:
    case -119:
    case -116:
    case -112:
      v5 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v5);
      v6 = &unk_2845F24F8;
      goto LABEL_21;
    case -124:
    case -122:
    case -120:
    case -115:
      v11 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v11);
      v6 = &unk_2845F24D0;
      goto LABEL_21;
    case -123:
    case -114:
      v14 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v14);
      v6 = &unk_2845F2520;
      goto LABEL_21;
    case -121:
      v28 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v28);
      v6 = &unk_2845F2548;
      goto LABEL_21;
    case -118:
    case -113:
      v13 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v13);
      v6 = &unk_2845F25C0;
      goto LABEL_21;
    case -117:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EC8, &qword_231370B48);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23136C1C0;
      v17 = type metadata accessor for MusicSubscriptionFilter();
      v18 = OUTLINED_FUNCTION_51_5(v17);
      *(v16 + 56) = v2;
      OUTLINED_FUNCTION_25_10();
      *(v16 + 64) = sub_231266C0C(v19, v20, &unk_231373F90);
      *(v16 + 32) = v18;
      v21 = type metadata accessor for PointOfInterestFilter();
      swift_allocObject();
      v22 = sub_23129EF14(&unk_2845F2598);
      *(v16 + 96) = v21;
      OUTLINED_FUNCTION_24_13();
      *(v16 + 104) = sub_231266C0C(v23, v24, &unk_231373FC0);
      *(v16 + 72) = v22;
      v25 = sub_231368750();
      OUTLINED_FUNCTION_52_6(v25);
      result = sub_231368760();
      v26 = MEMORY[0x277D61008];
      *(a2 + 24) = v25;
      *(a2 + 32) = v26;
      *a2 = result;
      return result;
    case -111:
      v29 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v29);
      v6 = &unk_2845F2570;
      goto LABEL_21;
    case -110:
    case -109:
LABEL_13:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    case -108:
      v30 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12(v30);
      v6 = &unk_2845F25E8;
      goto LABEL_21;
    case -107:
      v27 = type metadata accessor for WeatherLocationEntityCurrentFilter();
      OUTLINED_FUNCTION_36_2();
      v3 = swift_allocObject();
      *(v3 + 16) = 0x746E6572727563;
      *(v3 + 24) = 0xE700000000000000;
      *(a2 + 24) = v27;
      v8 = &unk_280F7D510;
      v9 = type metadata accessor for WeatherLocationEntityCurrentFilter;
      v10 = &unk_231373FF0;
LABEL_8:
      result = sub_231266C0C(v8, v9, v10);
      *(a2 + 32) = result;
      *a2 = v3;
      return result;
    default:
      switch(result)
      {
        case '<':
          RoutePlanFilter = type metadata accessor for MapsCreateRoutePlanFilter();
          OUTLINED_FUNCTION_51_5(RoutePlanFilter);
          OUTLINED_FUNCTION_71_2();
          v8 = &unk_27DD43ED0;
          v9 = type metadata accessor for MapsCreateRoutePlanFilter;
          v10 = &unk_231374080;
          goto LABEL_8;
        case '=':
        case '?':
        case '@':
        case 'B':
          goto LABEL_13;
        case '>':
          v31 = type metadata accessor for MapsSearchNearbyFilter();
          OUTLINED_FUNCTION_51_5(v31);
          OUTLINED_FUNCTION_71_2();
          v8 = &unk_280F81690;
          v9 = type metadata accessor for MapsSearchNearbyFilter;
          v10 = &unk_231374020;
          goto LABEL_8;
        case 'A':
          v36 = type metadata accessor for MapsTrafficConditionFilter();
          OUTLINED_FUNCTION_51_5(v36);
          OUTLINED_FUNCTION_71_2();
          v8 = &unk_280F7FBA8;
          v9 = type metadata accessor for MapsTrafficConditionFilter;
          v10 = &unk_231374050;
          goto LABEL_8;
        case 'C':
          v32 = type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_12(v32);
          v6 = &unk_2845F2610;
          break;
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
          goto LABEL_7;
        default:
          if (result - 98 < 2)
          {
LABEL_7:
            v12 = type metadata accessor for MusicSubscriptionFilter();
            OUTLINED_FUNCTION_51_5(v12);
            OUTLINED_FUNCTION_71_2();
            OUTLINED_FUNCTION_25_10();
            v10 = &unk_231373F90;
            goto LABEL_8;
          }

          if (result != 41)
          {
            goto LABEL_13;
          }

          v15 = type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_12(v15);
          v6 = &unk_2845F2638;
          break;
      }

LABEL_21:
      v33 = sub_23129EF14(v6);
      *(a2 + 24) = v3;
      OUTLINED_FUNCTION_24_13();
      result = sub_231266C0C(v34, v35, &unk_231373FC0);
      *(a2 + 32) = result;
      *a2 = v33;
      return result;
  }
}

void sub_231264AEC(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = sub_231368290();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  if ((a1 - 119) <= 1u)
  {
    sub_231210C60();
    if (v56)
    {
      if (swift_dynamicCast())
      {
        v12 = v53;
        v11 = v54;
        v13 = v54 == 0xE800000000000000;
        if (v53 == 0x656E616C70726961 && v54 == 0xE800000000000000)
        {
          goto LABEL_16;
        }

LABEL_15:
        if (OUTLINED_FUNCTION_13_14(0x656E616C70726961, 0xE800000000000000))
        {
LABEL_16:

          OUTLINED_FUNCTION_6_12();
          v25 = 0xD000000000000024;
          goto LABEL_20;
        }

        if (v12 == 0x7265776F50776F6CLL && v13 || (OUTLINED_FUNCTION_13_14(0x7265776F50776F6CLL, 0xE800000000000000) & 1) != 0)
        {
          goto LABEL_19;
        }

        v34 = v12 == 0x746F6F7465756C62 && v11 == 0xE900000000000068;
        if (v34 || (OUTLINED_FUNCTION_13_14(0x746F6F7465756C62, 0xE900000000000068) & 1) != 0)
        {

          OUTLINED_FUNCTION_6_12();
          v25 = 0xD000000000000020;
          goto LABEL_20;
        }

        v35 = v12 == 0x72616C756C6C6563 && v11 == 0xEC00000061746144;
        if (v35 || (OUTLINED_FUNCTION_13_14(0x72616C756C6C6563, 0xEC00000061746144) & 1) != 0)
        {

          OUTLINED_FUNCTION_6_12();
          v25 = 0xD00000000000001FLL;
          goto LABEL_20;
        }

        v36 = v12 == 0x6E61726165707061 && v11 == 0xEA00000000006563;
        if (v36 || (OUTLINED_FUNCTION_13_14(0x6E61726165707061, 0xEA00000000006563) & 1) != 0 || (v12 == 0x696853746867696ELL ? (v37 = v11 == 0xEA00000000007466) : (v37 = 0), v37 || (OUTLINED_FUNCTION_13_14(0x696853746867696ELL, 0xEA00000000007466) & 1) != 0 || (v12 == 0x656E746867697262 ? (v38 = v11 == 0xEA00000000007373) : (v38 = 0), v38 || (OUTLINED_FUNCTION_13_14(0x656E746867697262, 0xEA00000000007373) & 1) != 0)))
        {
LABEL_19:

          OUTLINED_FUNCTION_6_12();
          v25 = 0xD00000000000001ELL;
          goto LABEL_20;
        }

        v39 = v12 == 6581860 && v11 == 0xE300000000000000;
        if (!v39 && (OUTLINED_FUNCTION_13_14(6581860, 0xE300000000000000) & 1) == 0)
        {
          v40 = v12 == 0xD000000000000014 && 0x800000023137E050 == v11;
          if (v40 || (OUTLINED_FUNCTION_13_14(0xD000000000000014, 0x800000023137E050) & 1) != 0)
          {
            goto LABEL_16;
          }

          v41 = v12 == 0x746F7073746F68 && v11 == 0xE700000000000000;
          if (v41 || (OUTLINED_FUNCTION_13_14(0x746F7073746F68, 0xE700000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_6_12();
            v25 = 0xD000000000000027;
            goto LABEL_20;
          }

          v42 = v12 == 0x656D756C6F76 && v11 == 0xE600000000000000;
          if (!v42 && (OUTLINED_FUNCTION_13_14(0x656D756C6F76, 0xE600000000000000) & 1) == 0)
          {
            v43 = v12 == 1768319351 && v11 == 0xE400000000000000;
            if (!v43 && (OUTLINED_FUNCTION_13_14(1768319351, 0xE400000000000000) & 1) == 0)
            {
              v44 = v12 == 0x67696C6873616C66 && v11 == 0xEA00000000007468;
              if (v44 || (OUTLINED_FUNCTION_13_14(0x67696C6873616C66, 0xEA00000000007468) & 1) != 0)
              {

                v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EC0, &qword_231370B40) + 48);
                OUTLINED_FUNCTION_6_12();
                *a2 = 0xD000000000000012;
                a2[1] = v46;
                v47 = sub_231368F30();
                __swift_storeEnumTagSinglePayload(a2 + v45, 1, 1, v47);
                v26 = MEMORY[0x277D61230];
              }

              else
              {
                if (v12 == 0x63696F5669726973 && v11 == 0xE900000000000065)
                {
                }

                else
                {
                  v49 = OUTLINED_FUNCTION_13_14(0x63696F5669726973, 0xE900000000000065);

                  if ((v49 & 1) == 0)
                  {
                    v33 = sub_231368F50();
                    v30 = a2;
                    v31 = 1;
                    v32 = 1;
                    goto LABEL_22;
                  }
                }

                (*(v6 + 104))(v10, *MEMORY[0x277D60E90], v4);
                v50 = sub_231368280();
                v52 = v51;
                (*(v6 + 8))(v10, v4);
                *a2 = v50;
                a2[1] = v52;
                v26 = MEMORY[0x277D61238];
              }

LABEL_21:
              v27 = *v26;
              v28 = sub_231368F50();
              OUTLINED_FUNCTION_11();
              (*(v29 + 104))(a2, v27, v28);
              v30 = OUTLINED_FUNCTION_79_1();
LABEL_22:
              __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
              OUTLINED_FUNCTION_9_0();
              return;
            }

            OUTLINED_FUNCTION_6_12();
            v25 = 0xD00000000000001BLL;
LABEL_20:
            *a2 = v25;
            a2[1] = v24;
            v26 = MEMORY[0x277D61220];
            goto LABEL_21;
          }
        }

        OUTLINED_FUNCTION_6_12();
        v25 = 0xD00000000000001CLL;
        goto LABEL_20;
      }
    }

    else
    {
      sub_2311D1F18(v55, &qword_27DD443C0, &unk_23136E000);
    }

    v13 = 0;
    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_15;
  }

  *a2 = sub_23126036C(a1);
  a2[1] = v15;
  v16 = *MEMORY[0x277D61238];
  v17 = sub_231368F50();
  OUTLINED_FUNCTION_11();
  (*(v18 + 104))(a2, v16, v17);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_9_0();

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}