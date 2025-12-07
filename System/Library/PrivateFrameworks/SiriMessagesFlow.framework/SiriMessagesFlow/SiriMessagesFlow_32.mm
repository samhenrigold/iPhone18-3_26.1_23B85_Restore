uint64_t sub_267E6DFFC()
{
  sub_267B9DCC8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(uint64_t a1)
{
  result = qword_28022CAF8;
  if (!qword_28022CAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267E6E10C()
{
  type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(0);

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267E6E188(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267C564C8;

  return sub_267E6C534();
}

uint64_t sub_267E6E224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267E6CAC0();
}

uint64_t sub_267E6E2D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267E6CE84();
}

uint64_t sub_267E6E37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_267E6E44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_267E6E51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_267E6E5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_267E6E6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy(0);

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

void sub_267E6E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_164_1();
  v31 = v30;
  if (*(v30 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050), v32 = OUTLINED_FUNCTION_73_9(), v33 = v32, (v34 = *(v31 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v31 + 16))
    {
      v37 = (v31 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_267EF9FC8();

      sub_267EF9128();
      sub_267EFA018();
      OUTLINED_FUNCTION_124_4();
      v42 = ~v41;
      while (1)
      {
        v43 = v40 & v42;
        v44 = (v40 & v42) >> 6;
        v45 = *(v36 + 8 * v44);
        v46 = 1 << (v40 & v42);
        if ((v46 & v45) == 0)
        {
          break;
        }

        v47 = (*(v33 + 48) + 16 * v43);
        v48 = *v47 == v39 && v47[1] == v38;
        if (v48 || (sub_267EF9EA8() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v43 + 1;
      }

      *(v36 + 8 * v44) = v46 | v45;
      v49 = (*(v33 + 48) + 16 * v43);
      *v49 = v39;
      v49[1] = v38;
      v50 = *(v33 + 16);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v52;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_163_2();
  }
}

void sub_267E6E8F0(uint64_t a1)
{
  v1 = a1;
  if (sub_267BAF0DC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B160, &qword_267F04E88);
    v2 = OUTLINED_FUNCTION_73_9();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v22 = sub_267BAF0DC(v1);
  if (v22)
  {
    v3 = 0;
    v4 = v2 + 56;
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v19 = v1 + 32;
    while (1)
    {
      sub_267BBD0EC(v3, v21 == 0, v1);
      v5 = v21 ? MEMORY[0x26D609870](v3, v1) : *(v19 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_267EF9808();
      OUTLINED_FUNCTION_124_4();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        v15 = *(*(v2 + 48) + 8 * v11);
        v16 = sub_267EF9818();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v6;
      v17 = *(v2 + 16);
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v18;
LABEL_17:
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_267E6EAA0()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  sub_267EF2E88();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_26(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB28, &qword_267F0D058), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v14))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v16)
      {
        break;
      }

      v17 = OUTLINED_FUNCTION_6_47(v15);
      v1(v17);
      v18 = *(v2 + 40);
      OUTLINED_FUNCTION_70_13();
      v20 = sub_267E71494(&qword_28022CB30, v19, MEMORY[0x277CC99D8]);
      OUTLINED_FUNCTION_76_14(v20);
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_20_30();
        v1(v23);
        OUTLINED_FUNCTION_70_13();
        v25 = sub_267E71494(&qword_28022CB38, v24, MEMORY[0x277CC99E0]);
        OUTLINED_FUNCTION_49_23(v25);
        v26 = OUTLINED_FUNCTION_43_23();
        (v2)(v26);
        if (v18)
        {
          v31 = OUTLINED_FUNCTION_146_3();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_159_3();
      }

      v27 = OUTLINED_FUNCTION_9_52(v21);
      v28(v27);
      OUTLINED_FUNCTION_148_3();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E6EC6C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB20, &qword_267F0D048);
  result = sub_267EF9B28();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    sub_267EF9FC8();
    MEMORY[0x26D609CA0](v7);
    result = sub_267EFA018();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + v9) = v7;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_267E6EDB8()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  sub_267EF6288();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_26(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB78, &qword_267F0D078), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v14))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v16)
      {
        break;
      }

      v17 = OUTLINED_FUNCTION_6_47(v15);
      v1(v17);
      v18 = *(v2 + 40);
      OUTLINED_FUNCTION_67_14();
      v20 = sub_267E71494(&qword_28022CB80, v19, MEMORY[0x277D5EF88]);
      OUTLINED_FUNCTION_76_14(v20);
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_20_30();
        v1(v23);
        OUTLINED_FUNCTION_67_14();
        v25 = sub_267E71494(&qword_28022C118, v24, MEMORY[0x277D5EF90]);
        OUTLINED_FUNCTION_49_23(v25);
        v26 = OUTLINED_FUNCTION_43_23();
        (v2)(v26);
        if (v18)
        {
          v31 = OUTLINED_FUNCTION_146_3();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_159_3();
      }

      v27 = OUTLINED_FUNCTION_9_52(v21);
      v28(v27);
      OUTLINED_FUNCTION_148_3();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

void sub_267E6EF84(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB40, &qword_267F0D060), v2 = OUTLINED_FUNCTION_73_9(), (v27 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v25 = v1;
    v26 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v26 + v3++);
      sub_267EF9FC8();
      sub_267EF9128();

      sub_267EFA018();
      OUTLINED_FUNCTION_124_4();
      v6 = ~v5;
      v8 = v7 & ~v5;
      OUTLINED_FUNCTION_140_2();
      if ((v11 & v10) != 0)
      {
        while (1)
        {
          v12 = 0xE500000000000000;
          v13 = 0x6D75626C61;
          switch(*(*(v2 + 48) + v8))
          {
            case 1:
              v12 = 0xE300000000000000;
              v13 = 7368801;
              break;
            case 2:
              v12 = 0xE700000000000000;
              v14 = 0x6C6369747261;
              goto LABEL_20;
            case 3:
              v12 = 0xE600000000000000;
              v13 = 0x747369747261;
              break;
            case 4:
              v12 = 0xE400000000000000;
              v13 = 1802465122;
              break;
            case 5:
              v12 = 0xE700000000000000;
              v14 = 0x646F73697065;
              goto LABEL_20;
            case 6:
              v13 = 0x6569766F6DLL;
              break;
            case 7:
              v12 = 0xE800000000000000;
              v13 = 0x6E6F697461636F6CLL;
              break;
            case 8:
              v13 = 0x697461636F4C796DLL;
              v12 = 0xEA00000000006E6FLL;
              break;
            case 9:
              v15 = 1953458288;
              goto LABEL_16;
            case 0xA:
              v12 = 0xE800000000000000;
              v13 = 0x7473696C79616C70;
              break;
            case 0xB:
              v12 = 0xE700000000000000;
              v13 = 0x74736163646F70;
              break;
            case 0xC:
              v12 = 0xEA0000000000746FLL;
              v13 = 0x68736E6565726373;
              break;
            case 0xD:
              v12 = 0xE400000000000000;
              v13 = 2003789939;
              break;
            case 0xE:
              v12 = 0xE400000000000000;
              v13 = 1735290739;
              break;
            case 0xF:
              v15 = 1701079414;
LABEL_16:
              v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 0x10:
              v12 = 0xE700000000000000;
              v14 = 0x676170626577;
LABEL_20:
              v13 = v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          v16 = 0xE500000000000000;
          v17 = 0x6D75626C61;
          switch(v4)
          {
            case 1:
              v16 = 0xE300000000000000;
              v17 = 7368801;
              break;
            case 2:
              v16 = 0xE700000000000000;
              v18 = 0x6C6369747261;
              goto LABEL_39;
            case 3:
              v16 = 0xE600000000000000;
              v17 = 0x747369747261;
              break;
            case 4:
              v16 = 0xE400000000000000;
              v17 = 1802465122;
              break;
            case 5:
              v16 = 0xE700000000000000;
              v18 = 0x646F73697065;
              goto LABEL_39;
            case 6:
              v17 = 0x6569766F6DLL;
              break;
            case 7:
              v16 = 0xE800000000000000;
              v17 = 0x6E6F697461636F6CLL;
              break;
            case 8:
              v17 = 0x697461636F4C796DLL;
              v16 = 0xEA00000000006E6FLL;
              break;
            case 9:
              v19 = 1953458288;
              goto LABEL_35;
            case 10:
              v16 = 0xE800000000000000;
              v17 = 0x7473696C79616C70;
              break;
            case 11:
              v16 = 0xE700000000000000;
              v17 = 0x74736163646F70;
              break;
            case 12:
              v16 = 0xEA0000000000746FLL;
              v17 = 0x68736E6565726373;
              break;
            case 13:
              v16 = 0xE400000000000000;
              v17 = 2003789939;
              break;
            case 14:
              v16 = 0xE400000000000000;
              v17 = 1735290739;
              break;
            case 15:
              v19 = 1701079414;
LABEL_35:
              v17 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 16:
              v16 = 0xE700000000000000;
              v18 = 0x676170626577;
LABEL_39:
              v17 = v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          if (v13 == v17 && v12 == v16)
          {
            break;
          }

          v21 = sub_267EF9EA8();

          if (v21)
          {
            goto LABEL_53;
          }

          v8 = (v8 + 1) & v6;
          OUTLINED_FUNCTION_140_2();
          if ((v10 & v11) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        *(v2 + 56 + 8 * v9) = v10 | v11;
        *(*(v2 + 48) + v8) = v4;
        v22 = *(v2 + 16);
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_56;
        }

        *(v2 + 16) = v24;
      }

LABEL_53:
      v1 = v25;
      if (v3 == v27)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
LABEL_54:
  }
}

void sub_267E6F564()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  sub_267EF88B8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_26(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB48, &qword_267F0D068), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v14))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v16)
      {
        break;
      }

      v17 = OUTLINED_FUNCTION_6_47(v15);
      v1(v17);
      v18 = *(v2 + 40);
      OUTLINED_FUNCTION_69_13();
      v20 = sub_267E71494(&qword_28022CB50, v19, MEMORY[0x277D1D448]);
      OUTLINED_FUNCTION_76_14(v20);
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_20_30();
        v1(v23);
        OUTLINED_FUNCTION_69_13();
        v25 = sub_267E71494(&qword_28022CB58, v24, MEMORY[0x277D1D450]);
        OUTLINED_FUNCTION_49_23(v25);
        v26 = OUTLINED_FUNCTION_43_23();
        (v2)(v26);
        if (v18)
        {
          v31 = OUTLINED_FUNCTION_146_3();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_159_3();
      }

      v27 = OUTLINED_FUNCTION_9_52(v21);
      v28(v27);
      OUTLINED_FUNCTION_148_3();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

void sub_267E6F730()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  sub_267EF8728();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_26(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB60, &qword_267F0D070), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v14))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v16)
      {
        break;
      }

      v17 = OUTLINED_FUNCTION_6_47(v15);
      v1(v17);
      v18 = *(v2 + 40);
      OUTLINED_FUNCTION_68_13();
      v20 = sub_267E71494(&qword_28022CB68, v19, MEMORY[0x277D74518]);
      OUTLINED_FUNCTION_76_14(v20);
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_20_30();
        v1(v23);
        OUTLINED_FUNCTION_68_13();
        v25 = sub_267E71494(&qword_28022CB70, v24, MEMORY[0x277D74528]);
        OUTLINED_FUNCTION_49_23(v25);
        v26 = OUTLINED_FUNCTION_43_23();
        (v2)(v26);
        if (v18)
        {
          v31 = OUTLINED_FUNCTION_146_3();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_159_3();
      }

      v27 = OUTLINED_FUNCTION_9_52(v21);
      v28(v27);
      OUTLINED_FUNCTION_148_3();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E6F8FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[4];
  v6 = OUTLINED_FUNCTION_131(a3);
  v7 = sub_267BCD18C(v6, v5);
  v8 = sub_267D32820(a1);
  if ((v8 & 1) == 0)
  {
    v33 = 0;
    v11 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
    v34 = 5;
    goto LABEL_13;
  }

  LOBYTE(v5) = sub_267D32DB4(a1);
  OUTLINED_FUNCTION_131(a3);
  v9 = sub_267DBF878();
  if (v5)
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  v34 = v10;
  v11 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  if ((v9 & 1) == 0)
  {
    v33 = 0;
    goto LABEL_13;
  }

  LOBYTE(v5) = v7 ^ 1;
  sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  for (i = *(a1 + 32); ; i = MEMORY[0x26D609870](0, a1))
  {
    v13 = i;
    sub_267CF0184(i, v5 & 1);

    MEMORY[0x26D608F90]();
    OUTLINED_FUNCTION_145_3();
    if (v15)
    {
      OUTLINED_FUNCTION_8_2(v14);
      sub_267EF9328();
    }

    sub_267EF9368();
    v33 = 5;
    v11 = v36;
LABEL_13:
    v16 = sub_267BAF0DC(a1);
    if (!v16)
    {
      break;
    }

    v17 = v16;
    if (v16 >= 1)
    {
      v18 = 0;
      v19 = a1;
      v32 = a1 & 0xC000000000000001;
      if (v8)
      {
        v20 = 2;
      }

      else
      {
        v20 = 5;
      }

      if (v7)
      {
        v21 = 5;
      }

      else
      {
        v21 = 3;
      }

      do
      {
        if (v32)
        {
          v22 = MEMORY[0x26D609870](v18, v19);
        }

        else
        {
          v22 = *(v19 + 8 * v18 + 32);
        }

        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB18, &qword_267F0D040);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267EFCDC0;
        *(inited + 32) = v33;
        *(inited + 33) = v34;
        *(inited + 34) = v20;
        *(inited + 35) = v21;
        OUTLINED_FUNCTION_131(a3);
        v26 = v25;
        if (sub_267DBF878())
        {
          v27 = 4;
        }

        else
        {
          v27 = 5;
        }

        *(inited + 36) = v27;
        sub_267E6EC6C(inited);
        v28 = OUTLINED_FUNCTION_61_2();
        sub_267E6FBC4(v28, v26, a2);

        MEMORY[0x26D608F90](v29);
        OUTLINED_FUNCTION_145_3();
        if (v15)
        {
          OUTLINED_FUNCTION_8_2(v30);
          sub_267EF9328();
        }

        ++v18;
        sub_267EF9368();
      }

      while (v17 != v18);
      return v36;
    }

    __break(1u);
LABEL_33:
    ;
  }

  return v11;
}

uint64_t sub_267E6FBC4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_267EF4B68();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_267CF0394(a1, a2, a3);
  v9 = sub_267BBDEAC();
  sub_267CEFFB0(v9, v10);

  if (sub_267EE9580(0, a2))
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267B93000, v12, v13, "Making person disambiguation item with image", v14, 2u);
      MEMORY[0x26D60A7B0](v14, -1, -1);
    }

    v15 = sub_267EE9580(3u, a2);
    INPerson.displayImage(isDeviceLocked:)(v15 & 1, v8);
    sub_267EF3928();
    swift_allocObject();
    return sub_267EF38A8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "Making person disambiguation item without image", v20, 2u);
      MEMORY[0x26D60A7B0](v20, -1, -1);
    }

    sub_267EF3928();
    swift_allocObject();
    return sub_267EF3898();
  }
}

void sub_267E6FE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v173 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v173 - v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_0();
  v187 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF40, &unk_267F0CF80);
  v38 = OUTLINED_FUNCTION_18(v37);
  MEMORY[0x28223BE20](v38);
  v40 = &v173 - v39;
  sub_267EF3D18();
  OUTLINED_FUNCTION_58();
  v195 = v41;
  v196 = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_45_0();
  v191 = v48;
  OUTLINED_FUNCTION_26_2();
  v49 = sub_267EF3E38();
  OUTLINED_FUNCTION_58();
  v188 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_60();
  v194 = v52 - v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_77_0();
  v198 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_45_0();
  v202 = v57;
  OUTLINED_FUNCTION_26_2();
  v58 = sub_267EF4968();
  OUTLINED_FUNCTION_58();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_0();
  v173 = v62;
  v63 = MEMORY[0x277D84F90];
  v203 = MEMORY[0x277D84F90];
  v189 = v23;
  v64 = sub_267BAF0DC(v23);
  v175 = v58;
  v174 = v60;
  if (v64)
  {
    if (v64 >= 1)
    {
      v193 = v40;
      v185 = v35;
      v65 = 0;
      v183 = v189 & 0xC000000000000001;
      v201 = (v188 + 16);
      v182 = v188 + 32;
      v192 = v196 + 32;
      v181 = v188 + 8;
      v66 = MEMORY[0x277D84F90];
      v186 = v28;
      v67 = &selRef_personTypes;
      v199 = MEMORY[0x277D84F90];
      v180 = v49;
      v190 = v32;
      v184 = v64;
      while (1)
      {
        v197 = v65;
        if (v183)
        {
          v68 = MEMORY[0x26D609870](v65, v189);
        }

        else
        {
          v68 = *(v189 + 8 * v65 + 32);
        }

        v69 = v68;
        sub_267BBDEAC();
        if (qword_280228868 != -1)
        {
          OUTLINED_FUNCTION_71_10();
          swift_once();
        }

        sub_267EF5648();
        sub_267BCEF48();
        OUTLINED_FUNCTION_143_3();
        v70 = v202;
        sub_267EF3E18();
        v200 = *v201;
        v200(v198, v70, v49);
        v71 = v199;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C71114();
          v71 = v157;
        }

        v73 = *(v71 + 16);
        v72 = *(v71 + 24);
        if (v73 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_5_6(v72);
          sub_267C71114();
          v71 = v158;
        }

        *(v71 + 16) = v73 + 1;
        v74 = (*(v188 + 80) + 32) & ~*(v188 + 80);
        v199 = v71;
        (*(v188 + 32))(v71 + v74 + *(v188 + 72) * v73, v198, v49);
        v75 = [v69 v67[9]];
        v76 = sub_267EF9028();
        v78 = v77;

        v79 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v79 = v76 & 0xFFFFFFFFFFFFLL;
        }

        if (v79)
        {
          v80 = OUTLINED_FUNCTION_26_34();
          v81(v80);
          OUTLINED_FUNCTION_79_13();
          v82 = [v69 v67 + 1912];
          sub_267EF9028();

          sub_267EF5628();
          sub_267EF55A8();
          sub_267EF5648();

          sub_267EF55A8();
          sub_267BCEF48();

          v83 = v194;
          sub_267EF3E18();
          sub_267EF3D08();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_25_37();
            v66 = v159;
          }

          OUTLINED_FUNCTION_39_24();
          v85 = v190;
          v49 = v180;
          v67 = &selRef_personTypes;
          if (v86)
          {
            OUTLINED_FUNCTION_5_6(v84);
            sub_267C7103C();
            v66 = v160;
          }

          *(v66 + 16) = v83;
          v87 = OUTLINED_FUNCTION_4_62();
          v88(v87, v191);
          v203 = v66;
        }

        else
        {
          v85 = v190;
        }

        v89 = [v69 nameComponents];
        if (v89)
        {
          v90 = v89;
          v91 = v185;
          sub_267EF2A18();

          v92 = 0;
        }

        else
        {
          v92 = 1;
          v91 = v185;
        }

        v93 = sub_267EF2A58();
        __swift_storeEnumTagSinglePayload(v91, v92, 1, v93);
        v94 = v187;
        sub_267D2E49C(v91, v187);
        if (__swift_getEnumTagSinglePayload(v94, 1, v93))
        {
          sub_267B9F98C(v94, &unk_28022BCA0, &unk_267EFD990);
        }

        else
        {
          v99 = sub_267EF2988();
          v101 = v100;
          sub_267B9F98C(v94, &unk_28022BCA0, &unk_267EFD990);
          if (v101)
          {
            v102 = HIBYTE(v101) & 0xF;
            if ((v101 & 0x2000000000000000) == 0)
            {
              v102 = v99 & 0xFFFFFFFFFFFFLL;
            }

            if (v102)
            {
              v200(v193, v202, v49);
              OUTLINED_FUNCTION_9();
              __swift_storeEnumTagSinglePayload(v103, v104, v105, v49);
              sub_267EF5628();
              OUTLINED_FUNCTION_142_2();
              sub_267EF55C8();
              v176 = sub_267EF5648();

              v106 = sub_267EF55C8();
              sub_267BCEF48();

              OUTLINED_FUNCTION_81_10();
              sub_267EF3E18();
              sub_267EF3D08();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_25_37();
                v66 = v163;
              }

              OUTLINED_FUNCTION_39_24();
              v85 = v190;
              v49 = v180;
              v67 = &selRef_personTypes;
              if (v86)
              {
                OUTLINED_FUNCTION_5_6(v107);
                sub_267C7103C();
                v66 = v164;
              }

              *(v66 + 16) = v106;
              v108 = OUTLINED_FUNCTION_4_62();
              v109(v108, v177);
              v203 = v66;
            }

            else
            {
            }
          }
        }

        v95 = [v69 nameComponents];
        if (v95)
        {
          v96 = v95;
          v97 = v186;
          sub_267EF2A18();

          v98 = 0;
        }

        else
        {
          v98 = 1;
          v97 = v186;
        }

        __swift_storeEnumTagSinglePayload(v97, v98, 1, v93);
        v110 = OUTLINED_FUNCTION_26_0();
        sub_267D2E49C(v110, v111);
        if (__swift_getEnumTagSinglePayload(v85, 1, v93))
        {
          sub_267B9F98C(v85, &unk_28022BCA0, &unk_267EFD990);
        }

        else
        {
          v134 = sub_267EF29A8();
          v136 = v135;
          sub_267B9F98C(v85, &unk_28022BCA0, &unk_267EFD990);
          if (v136)
          {
            v137 = HIBYTE(v136) & 0xF;
            if ((v136 & 0x2000000000000000) == 0)
            {
              v137 = v134 & 0xFFFFFFFFFFFFLL;
            }

            if (v137)
            {
              v200(v193, v202, v49);
              OUTLINED_FUNCTION_9();
              __swift_storeEnumTagSinglePayload(v138, v139, v140, v49);
              sub_267EF5628();
              OUTLINED_FUNCTION_142_2();
              sub_267EF55B8();
              sub_267EF5648();

              sub_267EF55B8();
              sub_267BCEF48();

              v141 = v194;
              OUTLINED_FUNCTION_161_2();
              sub_267EF3E18();
              sub_267EF3D08();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_25_37();
                v66 = v165;
              }

              OUTLINED_FUNCTION_39_24();
              v49 = v180;
              v67 = &selRef_personTypes;
              if (v86)
              {
                OUTLINED_FUNCTION_5_6(v142);
                sub_267C7103C();
                v66 = v166;
              }

              *(v66 + 16) = v141;
              v143 = OUTLINED_FUNCTION_4_62();
              v144(v143, v178);
              v203 = v66;
            }

            else
            {
            }
          }
        }

        v112 = [v69 personHandle];
        if (v112)
        {
          v113 = v112;
          sub_267C85790();
          if (v114)
          {
            v115 = OUTLINED_FUNCTION_26_34();
            v116(v115);
            OUTLINED_FUNCTION_79_13();
            if (qword_280228888 != -1)
            {
              OUTLINED_FUNCTION_17_29();
              swift_once();
            }

            sub_267EF5648();
            sub_267BCEF48();
            OUTLINED_FUNCTION_143_3();
            v117 = v194;
            sub_267EF3E18();
            OUTLINED_FUNCTION_135_1();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_25_37();
              v66 = v161;
            }

            v67 = &selRef_personTypes;
            OUTLINED_FUNCTION_39_24();
            if (v86)
            {
              OUTLINED_FUNCTION_5_6(v118);
              sub_267C7103C();
              v66 = v162;
            }

            *(v66 + 16) = v117;
            v119 = OUTLINED_FUNCTION_4_62();
            v120(v119, v179);
            v203 = v66;
          }

          v121 = sub_267BC2AF0(v113);
          if (v122)
          {
            v123 = HIBYTE(v122) & 0xF;
            if ((v122 & 0x2000000000000000) == 0)
            {
              v123 = v121 & 0xFFFFFFFFFFFFLL;
            }

            if (v123)
            {
              v124 = [v113 type];
              if (v124 == 1)
              {
                v151 = OUTLINED_FUNCTION_26_34();
                v152(v151);
                OUTLINED_FUNCTION_79_13();
                if (qword_280228880 != -1)
                {
                  swift_once();
                }

                v153 = qword_280241038;
                sub_267EF5648();
                sub_267BCEF48();
                OUTLINED_FUNCTION_143_3();
                OUTLINED_FUNCTION_81_10();
                sub_267EF3E18();
                OUTLINED_FUNCTION_135_1();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_25_37();
                  v66 = v169;
                }

                v67 = &selRef_personTypes;
                OUTLINED_FUNCTION_39_24();
                if (v86)
                {
                  OUTLINED_FUNCTION_5_6(v154);
                  sub_267C7103C();
                  v66 = v170;
                }

                v155 = OUTLINED_FUNCTION_14_42();
                v156(v155);
                *(v66 + 16) = v153;
                v131 = OUTLINED_FUNCTION_4_62();
                v133 = &a10;
                goto LABEL_85;
              }

              if (v124 == 2)
              {
                v125 = OUTLINED_FUNCTION_26_34();
                v126(v125);
                OUTLINED_FUNCTION_79_13();
                if (qword_280228878 != -1)
                {
                  swift_once();
                }

                v127 = qword_280241030;
                sub_267EF5648();
                sub_267BCEF48();
                OUTLINED_FUNCTION_143_3();
                OUTLINED_FUNCTION_81_10();
                sub_267EF3E18();
                OUTLINED_FUNCTION_135_1();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_25_37();
                  v66 = v167;
                }

                v67 = &selRef_personTypes;
                OUTLINED_FUNCTION_39_24();
                if (v86)
                {
                  OUTLINED_FUNCTION_5_6(v128);
                  sub_267C7103C();
                  v66 = v168;
                }

                v129 = OUTLINED_FUNCTION_14_42();
                v130(v129);
                *(v66 + 16) = v127;
                v131 = OUTLINED_FUNCTION_4_62();
                v133 = &a11;
LABEL_85:
                v132(v131, *(v133 - 32), v195);
                v203 = v66;
                goto LABEL_86;
              }
            }

            v149 = OUTLINED_FUNCTION_14_42();
            v150(v149);
          }

          else
          {
            v147 = OUTLINED_FUNCTION_14_42();
            v148(v147);
          }
        }

        else
        {
          v145 = OUTLINED_FUNCTION_14_42();
          v146(v145);
        }

LABEL_86:
        v65 = v197 + 1;
        if (v184 == v197 + 1)
        {
          goto LABEL_89;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v199 = v63;
LABEL_89:
    if (qword_280228870 != -1)
    {
      OUTLINED_FUNCTION_32_22(&qword_280228870);
    }

    sub_267EF5648();
    v171 = v173;
    sub_267EF4948();
    v172 = sub_267EF4958();

    (*(v174 + 8))(v171, v175);
    sub_267C9B4C4(v172);
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E70CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B6B0(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E70DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E70E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B5A0(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E70F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E70FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B490(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E7107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E7110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B2A0(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E711DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E7126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B190(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E7133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E713CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_267E66A24(a1, *a2, a3, sub_267E71538);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_267E71410@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_267E66A24(a1, *a2, a3, sub_267E71470);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_267E71494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_135_1()
{

  return sub_267EF3D08();
}

uint64_t OUTLINED_FUNCTION_137_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_267EF7E88();
}

uint64_t OUTLINED_FUNCTION_165_2()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_168_3()
{

  return sub_267EF3CA8();
}

uint64_t OUTLINED_FUNCTION_170_3(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_171_3()
{

  return sub_267EF7868();
}

void *OUTLINED_FUNCTION_172_3()
{

  return __swift_project_boxed_opaque_existential_0((v1 + 16), v0);
}

void sub_267E716C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CBA0, &unk_267F0D0D0);
    v2 = sub_267EF9CF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
    swift_dynamicCast();
    v26 = v24;
    v27 = v25;
    v23 = v24;
    v24 = v25;
    v13 = sub_267BA9948();
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      sub_267E76214(&v23, v2[7] + 32 * v14);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v17 = (v2[6] + 16 * v13);
      *v17 = v12;
      v17[1] = v11;
      v18 = (v2[7] + 32 * v13);
      v19 = v24;
      *v18 = v23;
      v18[1] = v19;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_267E71910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB90, &qword_267F0D0A8);
    v2 = sub_267EF9CF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v11 = v10[1];
    *&v30[0] = *v10;
    *(&v30[0] + 1) = v11;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_267BA7F4C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_267BA7F4C(v29, v30);
    v12 = sub_267EF9AC8();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_267BA7F4C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_267E71BD8@<X0>(uint64_t a1@<X8>)
{
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v3 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  sub_267EF4B88();
  v10 = OUTLINED_FUNCTION_1_10();
  if (v11(v10) == *MEMORY[0x277D5C150])
  {
    v12 = OUTLINED_FUNCTION_1_10();
    v13(v12);
    v14 = OUTLINED_FUNCTION_91_1();
    v15(v14);
    sub_267B9CC04(v9, a1);
    return (*(v5 + 8))(v9, v3);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_1_10();
    v18(v17);
    type metadata accessor for DirectInvocationUseCases(0);
    v19 = OUTLINED_FUNCTION_55();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

uint64_t sub_267E71D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v37 = 0u;
    v38 = 0u;
    goto LABEL_8;
  }

  sub_267BB40A0();
  if (!*(&v38 + 1))
  {
LABEL_8:
    sub_267B9FF34(&v37, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_267BB40A0();
    if (swift_dynamicCast())
    {
      sub_267BB40A0();
      sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v34 = [v35 integerValue];
      }

      else
      {
        v34 = 0;
      }

      sub_267BB40A0();
      if (*(&v38 + 1))
      {
        if (swift_dynamicCast())
        {
          v15 = v35;
          goto LABEL_24;
        }
      }

      else
      {
        sub_267B9FF34(&v37, &qword_28022AEF0, &qword_267EFCDE0);
      }

      v15 = 0;
LABEL_24:
      v16 = objc_opt_self();
      sub_267BB52B4(a1);
      v17 = sub_267EF8EE8();

      v18 = [v16 announcePayloadFromUserData_];

      v19 = MEMORY[0x277D84F90];
      if (v18)
      {
        v20 = sub_267E760C8(v18);
        if (v20)
        {
          v19 = v20;
        }
      }

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v21 = sub_267EF8A08();
      __swift_project_value_buffer(v21, qword_280240FB0);

      v22 = sub_267EF89F8();
      v23 = sub_267EF95D8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v33 = v15;
        v25 = swift_slowAlloc();
        *&v37 = v25;
        *v24 = 134218242;
        *(v24 + 4) = sub_267BAF0DC(v19);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_267BA33E8(v35, v36, &v37);
        _os_log_impl(&dword_267B93000, v22, v23, "#DirectInvocationUseCases %ld summaries available for notification %s", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v26 = v25;
        v15 = v33;
        MEMORY[0x26D60A7B0](v26, -1, -1);
        MEMORY[0x26D60A7B0](v24, -1, -1);
      }

      if (sub_267BAF0DC(v19))
      {
        sub_267BBD0EC(0, (v19 & 0xC000000000000001) == 0, v19);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v27 = MEMORY[0x26D609870](0, v19);
        }

        else
        {
          v27 = *(v19 + 32);
        }

        v28 = [v27 summary];

        v29 = sub_267EF9028();
        v31 = v30;

        *a2 = v35;
        a2[1] = v36;
        a2[2] = v35;
        a2[3] = v36;
        a2[4] = v15;
        a2[5] = v34;
        a2[6] = v29;
        a2[7] = v31;
        v32 = type metadata accessor for DirectInvocationUseCases(0);
      }

      else
      {

        *a2 = v35;
        a2[1] = v36;
        a2[2] = v35;
        a2[3] = v36;
        a2[4] = v15;
        a2[5] = v34;
        v32 = type metadata accessor for DirectInvocationUseCases(0);
        a2[6] = 0;
        a2[7] = 0;
      }

      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v32);
    }
  }

LABEL_9:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);

  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v37 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = sub_267EF8F08();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_267BA33E8(v9, v11, &v37);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_267B93000, v5, v6, "#DirectInvocationUseCases invalid user data for announceMessage: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  v13 = type metadata accessor for DirectInvocationUseCases(0);
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
}

uint64_t sub_267E723F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_267EF8228();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_10;
  }

  sub_267BB40A0();
  if (!*(&v36 + 1))
  {
LABEL_10:
    sub_267B9FF34(&v35, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);

    v14 = sub_267EF89F8();
    v21 = sub_267EF95E8();

    if (!os_log_type_enabled(v14, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v35 = v23;
    *v22 = 136315138;
    if (a1)
    {
      v24 = sub_267EF8F08();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = sub_267BA33E8(v24, v26, &v35);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_267B93000, v14, v21, "#DirectInvocationUseCases invalid user data for buttonPress: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D60A7B0](v23, -1, -1);
    v19 = v22;
    goto LABEL_18;
  }

  v12 = v34[0];
  v11 = v34[1];

  sub_267EF8208();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {

    v32 = *(v8 + 32);
    v32(v10, v6, v7);
    v32(a2, v10, v7);
    v33 = type metadata accessor for DirectInvocationUseCases(0);
    swift_storeEnumTagMultiPayload();
    v29 = a2;
    v30 = 0;
    v28 = v33;
    return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  }

  sub_267B9FF34(v6, &qword_28022BFD0, &qword_267F0D0B0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);

  v14 = sub_267EF89F8();
  v15 = sub_267EF95E8();

  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_19;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *&v35 = v17;
  *v16 = 136315138;
  v18 = sub_267BA33E8(v12, v11, &v35);

  *(v16 + 4) = v18;
  _os_log_impl(&dword_267B93000, v14, v15, "#DirectInvocationUseCases Unrecognized buttonPressed value: %s", v16, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v17);
  MEMORY[0x26D60A7B0](v17, -1, -1);
  v19 = v16;
LABEL_18:
  MEMORY[0x26D60A7B0](v19, -1, -1);
LABEL_19:

  v28 = type metadata accessor for DirectInvocationUseCases(0);
  v29 = a2;
  v30 = 1;
  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
}

uint64_t sub_267E728AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0();
  if (!*(&v21 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v20, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_267BB40A0();
    if (swift_dynamicCast())
    {
      *a2 = v18;
      a2[1] = v19;
      a2[2] = v18;
      a2[3] = v19;
      v4 = type metadata accessor for DirectInvocationUseCases(0);
      swift_storeEnumTagMultiPayload();
      v5 = a2;
      v6 = 0;
      v7 = v4;
      return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
    }
  }

LABEL_8:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v20 = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = sub_267EF8F08();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_267BA33E8(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_267B93000, v9, v10, "#DirectInvocationUseCases invalid user data for readMessagesFromNotification: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  v7 = type metadata accessor for DirectInvocationUseCases(0);
  v5 = a2;
  v6 = 1;
  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
}

uint64_t sub_267E72B74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v34 = 0u;
    v35 = 0u;
    goto LABEL_11;
  }

  sub_267BB40A0();
  if (!*(&v35 + 1))
  {
LABEL_11:
    sub_267B9FF34(&v34, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);

    v8 = sub_267EF89F8();
    v9 = sub_267EF95E8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_20;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v34 = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = sub_267EF8F08();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_267BA33E8(v12, v14, &v34);

    *(v10 + 4) = v15;
    v16 = "#DirectInvocationUseCases invalid user data for newMessageToContact: %s";
    goto LABEL_19;
  }

  sub_267BB40A0();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v32;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v33;
  }

  else
  {
    v6 = 0;
  }

  sub_267BB40A0();
  if (*(&v35 + 1))
  {
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v32;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v33;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_267B9FF34(&v34, &qword_28022AEF0, &qword_267EFCDE0);
    v22 = 0;
    v23 = 0;
  }

  sub_267BB40A0();
  if (*(&v35 + 1))
  {
    v24 = swift_dynamicCast();
    v25 = v32;
    v26 = v33;
    if (!v24)
    {
      v25 = 0;
      v26 = 0;
    }

    if (v6)
    {
      goto LABEL_42;
    }
  }

  else
  {
    sub_267B9FF34(&v34, &qword_28022AEF0, &qword_267EFCDE0);
    v25 = 0;
    v26 = 0;
    if (v6)
    {
LABEL_42:
      *a2 = v32;
      a2[1] = v33;
      a2[2] = v5;
      a2[3] = v6;
      a2[4] = v22;
      a2[5] = v23;
      a2[6] = v25;
      a2[7] = v26;
      v31 = type metadata accessor for DirectInvocationUseCases(0);
      swift_storeEnumTagMultiPayload();
      v18 = a2;
      v19 = 0;
      v17 = v31;
      return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
    }
  }

  if (v23 || v26)
  {
    goto LABEL_42;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v27 = sub_267EF8A08();
  __swift_project_value_buffer(v27, qword_280240FB0);

  v8 = sub_267EF89F8();
  v9 = sub_267EF95E8();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  *&v34 = v11;
  *v10 = 136315138;
  v28 = sub_267EF8F08();
  v30 = sub_267BA33E8(v28, v29, &v34);

  *(v10 + 4) = v30;
  v16 = "#DirectInvocationUseCases No contact info provided for newMessageToContact: %s";
LABEL_19:
  _os_log_impl(&dword_267B93000, v8, v9, v16, v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v11);
  MEMORY[0x26D60A7B0](v11, -1, -1);
  MEMORY[0x26D60A7B0](v10, -1, -1);
LABEL_20:

  v17 = type metadata accessor for DirectInvocationUseCases(0);
  v18 = a2;
  v19 = 1;
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
}

uint64_t sub_267E7306C@<X0>(int64_t a1@<X0>, unint64_t a2@<X8>)
{
  i = a1;
  if (!a1)
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0();
  if (!*(&v39 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v38, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_8:
    if (qword_280228818 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_267BB40A0();
  v4 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB98, &qword_267F0D0B8);
  if (swift_dynamicCast())
  {
    v5 = v36;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *&v38 = v4;
  v35 = *(v5 + 16);
  if (!v35)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_35:
    *a2 = v36;
    *(a2 + 8) = v37;
    *(a2 + 16) = v19;
    v31 = type metadata accessor for DirectInvocationUseCases(0);
    swift_storeEnumTagMultiPayload();
    v16 = a2;
    v17 = 0;
    v15 = v31;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  }

  v32 = a2;
  a2 = 0;
  v34 = v5 + 32;
  v19 = MEMORY[0x277D84F90];
  v33 = v5;
LABEL_19:
  if (a2 >= *(v5 + 16))
  {
    goto LABEL_37;
  }

  v20 = *(v34 + 8 * a2++);
  v21 = 1 << *(v20 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v20 + 64);
  v24 = (v21 + 63) >> 6;

  for (i = 0; v23; v19 = v38)
  {
LABEL_28:
    v26 = __clz(__rbit64(v23)) | (i << 6);
    v27 = (*(v20 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(*(v20 + 56) + 8 * v26);
    objc_allocWithZone(MEMORY[0x277CD3E98]);

    sub_267E7605C(v28, v29, v30);
    MEMORY[0x26D608F90]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    v23 &= v23 - 1;
    sub_267EF9368();
  }

  while (1)
  {
    v25 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      v5 = v33;
      if (a2 == v35)
      {

        a2 = v32;
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    v23 = *(v20 + 64 + 8 * v25);
    ++i;
    if (v23)
    {
      i = v25;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  swift_once();
LABEL_9:
  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);

  v7 = sub_267EF89F8();
  v8 = sub_267EF95E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v38 = v10;
    *v9 = 136315138;
    if (i)
    {
      v11 = sub_267EF8F08();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_267BA33E8(v11, v13, &v38);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_267B93000, v7, v8, "#DirectInvocationUseCases invalid user data for newMessageToContact: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  v15 = type metadata accessor for DirectInvocationUseCases(0);
  v16 = a2;
  v17 = 1;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t sub_267E734E8(unint64_t a1, void *a2)
{
  v4 = a1;
  if (!a1)
  {
    v45 = 0u;
    v46 = 0u;
    goto LABEL_7;
  }

  sub_267EF9028();
  v2 = v5;
  sub_267BB40A0();

  if (!*(&v46 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v45, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_13_46(v6, v7, v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v39, v42, v45))
  {
    v3 = v40;
    v2 = v43;
    sub_267BB40A0();
    v20 = OUTLINED_FUNCTION_13_46(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v40, v43, v45);
    if (v20)
    {
      v28 = OUTLINED_FUNCTION_37_23(v20, v21, v22, v23, v24, v25, v26, v27, v41, v44);
      OUTLINED_FUNCTION_23_28(v28);
      v29 = OUTLINED_FUNCTION_19_41();
      return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    }
  }

LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v33 = sub_267EF8A08();
  __swift_project_value_buffer(v33, qword_280240FB0);

  v34 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_40_23();
  if (os_log_type_enabled(v34, v2))
  {
    OUTLINED_FUNCTION_48();
    *&v45 = OUTLINED_FUNCTION_5_4();
    *v3 = 136315138;
    if (v4)
    {
      v35 = sub_267EF8F08();
      v4 = v36;
    }

    else
    {
      v35 = OUTLINED_FUNCTION_25_38();
    }

    v37 = sub_267BA33E8(v35, v4, &v45);

    *(v3 + 4) = v37;
    OUTLINED_FUNCTION_18_36(&dword_267B93000);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_32_0();
  }

  type metadata accessor for DirectInvocationUseCases(0);
  v29 = OUTLINED_FUNCTION_55();
  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

uint64_t sub_267E736F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E18, &unk_267F0D0C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  v7 = sub_267EF8818();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  if (!a1)
  {
    v68 = 0u;
    v69 = 0u;
    goto LABEL_18;
  }

  sub_267BB40A0();
  if (!*(&v69 + 1))
  {
LABEL_18:
    sub_267B9FF34(&v68, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);

    v25 = sub_267EF89F8();
    v26 = sub_267EF95E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v68 = v28;
      *v27 = 136315138;
      if (a1)
      {
        v29 = sub_267EF8F08();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_267BA33E8(v29, v31, &v68);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_267B93000, v25, v26, "#DirectInvocationUseCases invalid user data for newMessageWithIntent: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v27, -1, -1);
    }

    goto LABEL_27;
  }

  v14 = v67;
  v65 = v66;
  v15 = sub_267E74CF0(a1);
  if (!v15)
  {

    goto LABEL_19;
  }

  v16 = v15;
  v17 = sub_267E76140(v15);
  if (!v17)
  {
LABEL_32:
    *a2 = v65;
    a2[1] = v14;
    a2[2] = v16;
    v37 = type metadata accessor for DirectInvocationUseCases(0);
    swift_storeEnumTagMultiPayload();
    v34 = a2;
    v35 = 0;
    v33 = v37;
    return __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
  }

  v18 = v17;
  v64 = v14;
  v19 = sub_267BAF0DC(v17);
  if (!v19)
  {

LABEL_31:
    v14 = v64;
    goto LABEL_32;
  }

  v20 = v19;
  if (sub_267BAF0DC(v18) != 1)
  {

    if (qword_280228818 != -1)
    {
LABEL_61:
      swift_once();
    }

    v38 = sub_267EF8A08();
    __swift_project_value_buffer(v38, qword_280240FB0);
    v39 = sub_267EF89F8();
    v40 = sub_267EF95E8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "#DirectInvocationUseCases rejecting intent with externally provided attachments";
LABEL_45:
      _os_log_impl(&dword_267B93000, v39, v40, v42, v41, 2u);
      MEMORY[0x26D60A7B0](v41, -1, -1);
    }

LABEL_46:

    goto LABEL_27;
  }

  v60 = v7;
  v61 = v8;
  v62 = v16;
  v63 = a2;
  v16 = 0;
  a2 = (v18 & 0xC000000000000001);
  while (1)
  {
    if (v20 == v16)
    {

LABEL_40:

      v16 = v62;
      a2 = v63;
LABEL_41:
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v47 = sub_267EF8A08();
      __swift_project_value_buffer(v47, qword_280240FB0);
      v39 = sub_267EF89F8();
      v40 = sub_267EF95E8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "#DirectInvocationUseCases rejecting intent with externally provided attachment that is not file";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v21 = MEMORY[0x26D609870](v16, v18);
    }

    else
    {
      if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v21 = *(v18 + 8 * v16 + 32);
    }

    v22 = v21;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v23 = [v21 file];
    if (v23)
    {
      break;
    }

    ++v16;
  }

  v43 = v23;

  v44 = [v22 file];
  if (!v44)
  {
    goto LABEL_40;
  }

  sub_267E761B0(v44);
  sub_267EF8828();
  v45 = v60;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v60);
  v16 = v62;
  a2 = v63;
  if (EnumTagSinglePayload == 1)
  {

    sub_267B9FF34(v6, &qword_280229E18, &unk_267F0D0C0);
    goto LABEL_41;
  }

  v48 = v61;
  (*(v61 + 32))(v13, v6, v45);
  sub_267EF87D8();
  v49 = sub_267EF8808();
  v50 = *(v48 + 8);
  v61 = v48 + 8;
  v50(v11, v45);
  if (v49 & 1) != 0 || (sub_267EF87E8(), v51 = sub_267EF8808(), v50(v11, v45), (v51))
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v52 = sub_267EF8A08();
    __swift_project_value_buffer(v52, qword_280240FB0);
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_267B93000, v53, v54, "#DirectInvocationUseCases allowing single photo/video file as externally provided attachment", v55, 2u);
      MEMORY[0x26D60A7B0](v55, -1, -1);
    }

    v50(v13, v45);
    goto LABEL_31;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v56 = sub_267EF8A08();
  __swift_project_value_buffer(v56, qword_280240FB0);
  v57 = sub_267EF89F8();
  v58 = sub_267EF95E8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_267B93000, v57, v58, "#DirectInvocationUseCases rejecting intent with externally file attachment that is not a photo/video", v59, 2u);
    MEMORY[0x26D60A7B0](v59, -1, -1);
  }

  v50(v13, v45);
LABEL_27:
  v33 = type metadata accessor for DirectInvocationUseCases(0);
  v34 = a2;
  v35 = 1;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
}

uint64_t sub_267E73F70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = sub_267EF2BA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v39 = 0u;
    v40 = 0u;
    goto LABEL_10;
  }

  sub_267BB40A0();
  if (!*(&v40 + 1))
  {
LABEL_10:
    sub_267B9FF34(&v39, &qword_28022AEF0, &qword_267EFCDE0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    goto LABEL_11;
  }

  v11 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v6, v11 ^ 1u, 1, v7);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
LABEL_11:
    v25 = &qword_280229E20;
    v26 = &unk_267EFDCC0;
    v27 = v6;
LABEL_12:
    sub_267B9FF34(v27, v25, v26);
    goto LABEL_13;
  }

  v12 = *(v8 + 32);
  v12(v10, v6, v7);
  v13 = sub_267BB40A0();
  if (!*(&v40 + 1))
  {
    (*(v8 + 8))(v10, v7, v13);
LABEL_25:
    v25 = &qword_28022AEF0;
    v26 = &qword_267EFCDE0;
    v27 = &v39;
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_13;
  }

  v15 = v38[0];
  v14 = v38[1];
  v16 = sub_267BB40A0();
  if (!*(&v40 + 1))
  {
    (*(v8 + 8))(v10, v7, v16);

    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
  if (swift_dynamicCast())
  {
    v17 = v38[0];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229498, &qword_267EFD2F8);
    v19 = &a2[*(v18 + 48)];
    v20 = *(v18 + 64);
    v12(a2, v10, v7);
    *v19 = v15;
    *(v19 + 1) = v14;
    *&a2[v20] = v17;
    v21 = type metadata accessor for DirectInvocationUseCases(0);
    swift_storeEnumTagMultiPayload();
    v22 = a2;
    v23 = 0;
    v24 = v21;
    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  }

  (*(v8 + 8))(v10, v7);

LABEL_13:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v28 = sub_267EF8A08();
  __swift_project_value_buffer(v28, qword_280240FB0);

  v29 = sub_267EF89F8();
  v30 = sub_267EF95E8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v39 = v32;
    *v31 = 136315138;
    if (a1)
    {
      v33 = sub_267EF8F08();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_267BA33E8(v33, v35, &v39);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_267B93000, v29, v30, "#DirectInvocationUseCases invalid user data for sendFaceTimeInvite: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D60A7B0](v32, -1, -1);
    MEMORY[0x26D60A7B0](v31, -1, -1);
  }

  v24 = type metadata accessor for DirectInvocationUseCases(0);
  v22 = a2;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
}

uint64_t sub_267E7447C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_267EF7DB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_267EF7DE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_267EF7DD8();
  sub_267EF7DC8();
  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == *MEMORY[0x277D56510])
  {
    (*(v5 + 8))(v7, v4);
    v13 = MEMORY[0x277D5D4F8];
LABEL_5:
    v14 = *v13;
    v15 = sub_267EF8228();
    (*(*(v15 - 8) + 104))(a2, v14, v15);
    v16 = type metadata accessor for DirectInvocationUseCases(0);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v16);
  }

  if (v12 == *MEMORY[0x277D56518])
  {
    (*(v5 + 8))(v7, v4);
    v13 = MEMORY[0x277D5D510];
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x277D56520])
  {
    (*(v5 + 96))(v7, v4);
    v18 = *v7;

    *a2 = v18;
    v16 = type metadata accessor for DirectInvocationUseCases(0);
    goto LABEL_6;
  }

  if (v12 == *MEMORY[0x277D56528])
  {
    (*(v5 + 96))(v7, v4);
    v19 = *v7;
    v20 = v7[1];

    *a2 = v19;
    a2[1] = v20;
    v16 = type metadata accessor for DirectInvocationUseCases(0);
    goto LABEL_6;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);

  v22 = sub_267EF89F8();
  v23 = sub_267EF95E8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    if (a1)
    {
      v26 = sub_267EF8F08();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_267BA33E8(v26, v28, &v32);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_267B93000, v22, v23, "#DirectInvocationUseCases invalid user data for contactButton: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D60A7B0](v25, -1, -1);
    MEMORY[0x26D60A7B0](v24, -1, -1);
  }

  v30 = type metadata accessor for DirectInvocationUseCases(0);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v30);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_267E74914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0();
  if (!*(&v25 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v24, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);

    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v24 = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = sub_267EF8F08();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_267BA33E8(v13, v15, &v24);

    *(v11 + 4) = v16;
    v17 = "#DirectInvocationUseCases attachments in user data for updateAttachments: %s";
    goto LABEL_15;
  }

  sub_267BB40A0();
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);

    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v24 = v12;
    *v11 = 136315138;
    v20 = sub_267EF8F08();
    v22 = sub_267BA33E8(v20, v21, &v24);

    *(v11 + 4) = v22;
    v17 = "#DirectInvocationUseCases identifiers in user data for updateAttachments: %s";
LABEL_15:
    _os_log_impl(&dword_267B93000, v9, v10, v17, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
LABEL_16:

    v7 = type metadata accessor for DirectInvocationUseCases(0);
    v5 = a2;
    v6 = 1;
    return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  }

  *a2 = v23;
  a2[1] = v23;
  v4 = type metadata accessor for DirectInvocationUseCases(0);
  swift_storeEnumTagMultiPayload();
  v5 = a2;
  v6 = 0;
  v7 = v4;
  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
}

uint64_t sub_267E74CF0(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_14:
    sub_267B9FF34(&v10, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  if (*(a1 + 16))
  {
    v2 = sub_267BA9948();
    if (v3)
    {
      sub_267BA2E04(*(a1 + 56) + 32 * v2, &v10);
      sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  sub_267BB40A0();
  if (!*(&v11 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_267BB40A0();
  if (!*(&v11 + 1))
  {

    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v5 = sub_267EF8FF8();

    v6 = sub_267EF2BB8();
    v7 = INIntentCreate();
    sub_267BBE0DC(v8, v9);

    if (v7)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_267E74F00(void *a1, uint64_t *a2)
{
  v240 = a1;
  v241 = a2;
  sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v238 = v5;
  v239 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v223 = v7 - v6;
  sub_267EF8228();
  OUTLINED_FUNCTION_58();
  v236 = v9;
  v237 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v222 = v11 - v10;
  v12 = type metadata accessor for DirectInvocationUseCases(0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v234 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v233 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v232 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v230 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v231 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v235 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v229 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v228 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v227 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  v226 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v225 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v224 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_194();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (&v221 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v221 - v42);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = (&v221 - v45);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_2();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v221 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = (&v221 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC38, &qword_267F0D138);
  v54 = MEMORY[0x28223BE20](v53 - 8);
  v56 = (&v221 - v55);
  v57 = &v221 + *(v54 + 56) - v55;
  sub_267CFB09C(v240, &v221 - v55);
  v240 = v57;
  sub_267CFB09C(v241, v57);
  v241 = v56;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v131 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v131, v50);
      v132 = v240;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v134 = v236;
        v133 = v237;
        v135 = v222;
        (*(v236 + 32))(v222, v132, v237);
        LOBYTE(v71) = sub_267C27BAC(v50, v135);
        v136 = *(v134 + 8);
        v136(v135, v133);
        v137 = OUTLINED_FUNCTION_1_10();
        (v136)(v137);
        goto LABEL_180;
      }

      (*(v236 + 8))(v50, v237);
      goto LABEL_113;
    case 2u:
      v100 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v100, v3);
      v69 = *v3;
      v68 = v3[1];
      if (OUTLINED_FUNCTION_15_43() == 2)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 3u:
      v103 = v241;
      sub_267CFB09C(v241, v46);
      v105 = *v46;
      v104 = v46[1];
      if (OUTLINED_FUNCTION_15_43() != 3)
      {

        v46 = v103;
        goto LABEL_113;
      }

      v106 = *v52;
      v107 = v52[1];
      if (v105 == v106 && v104 == v107)
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_66();
      sub_267EF9EA8();
      OUTLINED_FUNCTION_38_27();

      v109 = v103;
      if (v105)
      {
        goto LABEL_142;
      }

      goto LABEL_147;
    case 4u:
      v79 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v79, v43);
      v81 = *v43;
      v80 = v43[1];
      v83 = v43[2];
      v82 = v43[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_56;
      }

      goto LABEL_20;
    case 5u:
      v141 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v141, v40);
      v143 = *v40;
      v142 = v40[1];
      v83 = v40[2];
      v82 = v40[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_56;
      }

      v144 = *v56;
      v145 = v56[1];
      v97 = v56[2];
      v96 = v56[3];
      if (v143 == v144 && v142 == v145)
      {
        goto LABEL_133;
      }

      v147 = sub_267EF9EA8();

      if ((v147 & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_134;
    case 6u:
      v167 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v167, v2);
      v69 = *v2;
      v68 = v2[1];
      if (OUTLINED_FUNCTION_15_43() == 6)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 7u:
      v110 = v241;
      v111 = v224;
      sub_267CFB09C(v241, v224);
      v112 = *v111;
      v113 = v111[1];
      v114 = v111[2];
      v115 = v111[3];
      v116 = v111[4];
      v117 = v111[5];
      v118 = v111[6];
      v119 = v111[7];
      v239 = v118;
      v120 = v240;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        v46 = v110;
        goto LABEL_113;
      }

      v121 = *v120;
      v122 = v120[1];
      v123 = v120;
      v125 = v120[2];
      v124 = v120[3];
      v126 = v123[5];
      v237 = v123[4];
      v238 = v126;
      v128 = v123[6];
      v127 = v123[7];
      v236 = v128;
      v240 = v127;
      if (v112 == v121 && v113 == v122)
      {
      }

      else
      {
        v130 = sub_267EF9EA8();

        if ((v130 & 1) == 0)
        {

          goto LABEL_184;
        }
      }

      if (v115)
      {
        if (!v124)
        {

          goto LABEL_183;
        }

        if (v114 == v125 && v115 == v124)
        {
        }

        else
        {
          v206 = sub_267EF9EA8();

          if ((v206 & 1) == 0)
          {
            goto LABEL_183;
          }
        }
      }

      else if (v124)
      {

        goto LABEL_184;
      }

      if (!v117)
      {
        v216 = v241;
        if (v238)
        {

          goto LABEL_208;
        }

        goto LABEL_199;
      }

      v216 = v241;
      if (!v238)
      {

        goto LABEL_197;
      }

      if (v116 == v237 && v117 == v238)
      {

        goto LABEL_199;
      }

      v218 = sub_267EF9EA8();

      if ((v218 & 1) == 0)
      {
LABEL_197:

        goto LABEL_208;
      }

LABEL_199:
      if (!v119)
      {
        if (!v240)
        {
          goto LABEL_213;
        }

        goto LABEL_208;
      }

      if (!v240)
      {
LABEL_208:

        goto LABEL_209;
      }

      if (v239 == v236 && v119 == v240)
      {

        goto LABEL_213;
      }

      v220 = sub_267EF9EA8();

      if ((v220 & 1) == 0)
      {
LABEL_209:
        v109 = v216;
        goto LABEL_147;
      }

LABEL_213:
      v109 = v216;
LABEL_142:
      sub_267CCEDF4(v109);
      LOBYTE(v71) = 1;
      return v71 & 1;
    case 8u:
      v186 = v225;
      sub_267CFB09C(v241, v225);
      v187 = *v186;
      v71 = v186[1];
      v188 = v186[2];
      if (OUTLINED_FUNCTION_15_43() != 8)
      {

        goto LABEL_112;
      }

      v189 = *v52;
      v190 = v52[1];
      v191 = v52[2];
      if (v187 == v189 && v71 == v190)
      {

        v194 = v241;
      }

      else
      {
        v193 = OUTLINED_FUNCTION_36_25();

        v194 = v241;
        if ((v193 & 1) == 0)
        {

          v109 = v194;
          goto LABEL_147;
        }
      }

      sub_267DF0FDC(v188, v191);
      OUTLINED_FUNCTION_38_27();

      v210 = v194;
      goto LABEL_181;
    case 9u:
      v92 = OUTLINED_FUNCTION_14_43();
      v93 = v226;
      sub_267CFB09C(v92, v226);
      v81 = *v93;
      v80 = v93[1];
      v83 = v93[2];
      v82 = v93[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_56;
      }

LABEL_20:
      v94 = *v56;
      v95 = v56[1];
      v97 = v56[2];
      v96 = v56[3];
      if (v81 == v94 && v80 == v95)
      {
LABEL_133:
      }

      else
      {
        OUTLINED_FUNCTION_91_1();
        v99 = sub_267EF9EA8();

        if ((v99 & 1) == 0)
        {
          goto LABEL_144;
        }
      }

LABEL_134:
      if (v83 != v97 || v82 != v96)
      {
        goto LABEL_138;
      }

      goto LABEL_140;
    case 0xAu:
      v176 = OUTLINED_FUNCTION_14_43();
      v177 = v227;
      sub_267CFB09C(v176, v227);
      v179 = *v177;
      v178 = v177[1];
      v180 = v177[2];
      if (OUTLINED_FUNCTION_15_43() != 10)
      {

        goto LABEL_113;
      }

      v181 = *v52;
      v182 = v52[1];
      v183 = v52[2];
      if (v179 == v181 && v178 == v182)
      {
      }

      else
      {
        v185 = OUTLINED_FUNCTION_36_25();

        if ((v185 & 1) == 0)
        {

          goto LABEL_146;
        }
      }

      sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
      LOBYTE(v71) = sub_267EF9818();

      goto LABEL_180;
    case 0xBu:
      v73 = OUTLINED_FUNCTION_14_43();
      v74 = v228;
      sub_267CFB09C(v73, v228);
      v76 = *v74;
      v75 = v74[1];
      v78 = v74[2];
      v77 = v74[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_56;
      }

      goto LABEL_13;
    case 0xCu:
      v84 = OUTLINED_FUNCTION_14_43();
      v85 = v229;
      sub_267CFB09C(v84, v229);
      v76 = *v85;
      v75 = v85[1];
      v78 = v85[2];
      v77 = v85[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_56;
      }

LABEL_13:
      v86 = *v56;
      v87 = v56[1];
      v89 = v56[2];
      v88 = v56[3];
      if (v76 == v86 && v75 == v87)
      {
      }

      else
      {
        OUTLINED_FUNCTION_91_1();
        v91 = sub_267EF9EA8();

        if ((v91 & 1) == 0)
        {
          goto LABEL_144;
        }
      }

      if (v77)
      {
        if (!v88)
        {
          goto LABEL_145;
        }

        if (v78 == v89 && v77 == v88)
        {
LABEL_140:
        }

        else
        {
LABEL_138:
          v208 = OUTLINED_FUNCTION_29_31();

          if ((v208 & 1) == 0)
          {
            goto LABEL_146;
          }
        }
      }

      else if (v88)
      {
        goto LABEL_145;
      }

LABEL_141:
      v109 = v46;
      goto LABEL_142;
    case 0xDu:
      v148 = OUTLINED_FUNCTION_14_43();
      v149 = v235;
      sub_267CFB09C(v148, v235);
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229498, &qword_267EFD2F8);
      v151 = *(v150 + 48);
      v153 = *(v149 + v151);
      v152 = *(v149 + v151 + 8);
      v154 = *(v150 + 64);
      v155 = *(v149 + v154);
      v156 = v240;
      if (swift_getEnumCaseMultiPayload() != 13)
      {

        (*(v238 + 8))(v149, v239);
        goto LABEL_113;
      }

      v157 = *(v156 + v151 + 8);
      v234 = *(v156 + v151);
      v236 = v157;
      v237 = v155;
      v158 = *(v156 + v154);
      v159 = v238;
      v160 = v239;
      v161 = v223;
      (*(v238 + 32))(v223, v156, v239);
      OUTLINED_FUNCTION_73_0();
      v162 = sub_267EF2B28();
      v163 = *(v159 + 8);
      v163(v149, v160);
      if ((v162 & 1) == 0)
      {
        v163(v161, v160);

        goto LABEL_144;
      }

      if (v153 == v234 && v152 == v236)
      {

        v166 = v223;
      }

      else
      {
        OUTLINED_FUNCTION_33_22();
        v165 = sub_267EF9EA8();

        v166 = v223;
        if ((v165 & 1) == 0)
        {
          v163(v223, v160);
          goto LABEL_144;
        }
      }

      LOBYTE(v71) = sub_267DF0FF0(v237, v158);

      v163(v166, v160);
      goto LABEL_180;
    case 0xEu:
      v70 = OUTLINED_FUNCTION_14_43();
      v71 = v231;
      sub_267CFB09C(v70, v231);
      v72 = v240;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_113;
      }

      LOBYTE(v71) = *v71 == *v72;
      goto LABEL_180;
    case 0xFu:
      v101 = OUTLINED_FUNCTION_14_43();
      v102 = v230;
      sub_267CFB09C(v101, v230);
      v69 = *v102;
      v68 = v102[1];
      if (OUTLINED_FUNCTION_15_43() == 15)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 0x10u:
      v66 = OUTLINED_FUNCTION_14_43();
      v67 = v232;
      sub_267CFB09C(v66, v232);
      v69 = *v67;
      v68 = v67[1];
      if (OUTLINED_FUNCTION_15_43() == 16)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 0x11u:
      v138 = OUTLINED_FUNCTION_14_43();
      v139 = v233;
      sub_267CFB09C(v138, v233);
      v69 = *v139;
      v68 = v139[1];
      if (OUTLINED_FUNCTION_15_43() != 17)
      {
        goto LABEL_57;
      }

LABEL_68:
      v168 = *v52;
      v169 = v52[1];
      if (v69 == v168 && v68 == v169)
      {
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_66();
      sub_267EF9EA8();
      OUTLINED_FUNCTION_38_27();

      if ((v69 & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_141;
    case 0x12u:
      v171 = OUTLINED_FUNCTION_14_43();
      v172 = v234;
      sub_267CFB09C(v171, v234);
      v71 = *v172;
      v173 = v172[1];
      if (OUTLINED_FUNCTION_15_43() != 18)
      {
LABEL_56:

LABEL_57:

        goto LABEL_113;
      }

      v175 = *v52;
      v174 = v52[1];
      sub_267DF11D4(v71, v175);
      OUTLINED_FUNCTION_40_23();

      if ((v50 & 1) == 0)
      {
LABEL_144:

LABEL_145:

LABEL_146:
        v109 = v46;
        goto LABEL_147;
      }

      sub_267DF11D4(v173, v174);
      OUTLINED_FUNCTION_38_27();

LABEL_180:
      v210 = v46;
LABEL_181:
      sub_267CCEDF4(v210);
      return v71 & 1;
    case 0x13u:
      v140 = swift_getEnumCaseMultiPayload() == 19;
      goto LABEL_93;
    case 0x14u:
      v140 = swift_getEnumCaseMultiPayload() == 20;
      goto LABEL_93;
    case 0x15u:
      v140 = swift_getEnumCaseMultiPayload() == 21;
LABEL_93:
      v46 = v241;
      if (!v140)
      {
        goto LABEL_113;
      }

      goto LABEL_141;
    default:
      sub_267CFB09C(v241, v52);
      v58 = *v52;
      v59 = v52[1];
      v61 = v52[2];
      v60 = v52[3];
      v62 = v52[4];
      v63 = v52[5];
      v65 = v52[6];
      v64 = v52[7];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_112:

        v46 = v241;
LABEL_113:
        sub_267B9FF34(v46, &qword_28022CC38, &qword_267F0D138);
        goto LABEL_148;
      }

      v239 = v62;
      v237 = v63;
      v235 = v65;
      v196 = *v56;
      v197 = v56[1];
      v198 = v56[2];
      v199 = v56[3];
      v200 = v56[5];
      v238 = v56[4];
      v236 = v200;
      v201 = v56[6];
      v202 = v56[7];
      v234 = v201;
      if (v58 == v196 && v59 == v197)
      {
      }

      else
      {
        v204 = sub_267EF9EA8();

        if ((v204 & 1) == 0)
        {
LABEL_183:

LABEL_184:

          v109 = v241;
          goto LABEL_147;
        }
      }

      if (v61 == v198 && v60 == v199)
      {

        v103 = v241;
        v213 = v239;
      }

      else
      {
        OUTLINED_FUNCTION_91_1();
        v212 = sub_267EF9EA8();

        v103 = v241;
        v213 = v239;
        if ((v212 & 1) == 0)
        {
          goto LABEL_175;
        }
      }

      if (v213 == v238 && v237 == v236)
      {
        if (v64)
        {
          if (!v202)
          {
LABEL_176:

LABEL_177:
            v109 = v103;
LABEL_147:
            sub_267CCEDF4(v109);
LABEL_148:
            LOBYTE(v71) = 0;
            return v71 & 1;
          }

          if (v235 == v234 && v64 == v202)
          {
LABEL_122:
          }

          else
          {
            v215 = sub_267EF9EA8();

            if ((v215 & 1) == 0)
            {
              goto LABEL_177;
            }
          }
        }

        else if (v202)
        {
          goto LABEL_176;
        }

        v109 = v103;
        goto LABEL_142;
      }

LABEL_175:

      goto LABEL_176;
  }
}

id sub_267E7605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_267EF8FF8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

uint64_t sub_267E760C8(void *a1)
{
  v2 = [a1 summaries];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022CB88, 0x277CEF418);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E76140(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E761B0(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267E76214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E76284(uint64_t a1)
{
  sub_267E76498(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_267E765D0();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v2 = sub_267E76618();
      if (v6 <= 0x3F)
      {
        v2 = sub_267E76640();
        if (v7 <= 0x3F)
        {
          sub_267E76668(319, &qword_28022CBD8, "notificationIdentifier appBundleId ");
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_267E76668(319, &qword_28022CBE0, "conversationIdentifier appBundleId ");
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_267E766C4(319);
          if (v12 > 0x3F)
          {
            return v8;
          }

          sub_267E7685C(319, &qword_28022CBF0, &qword_28022CBF8, qword_267F0D108, "appBundleId handles ");
          if (v13 > 0x3F)
          {
            return v8;
          }

          sub_267E767E0(319);
          if (v14 > 0x3F)
          {
            return v8;
          }

          sub_267E7685C(319, &qword_28022CC08, &qword_28022A300, &qword_267EFEEE0, "content keyboardLanguage ");
          if (v15 > 0x3F)
          {
            return v8;
          }

          sub_267E768CC(319);
          if (v16 > 0x3F)
          {
            return v8;
          }

          v8 = sub_267E76954();
          if (v17 > 0x3F)
          {
            return v8;
          }

          v8 = sub_267E7697C();
          if (v18 > 0x3F)
          {
            return v8;
          }

          v8 = sub_267E769A4();
          if (v19 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_267E769CC(319);
            v2 = v20;
            if (v21 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_267E76498(uint64_t a1)
{
  if (!qword_28022CBB8)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for AFSiriAnnouncementPlatform(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A300, &qword_267EFEEE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28022CBB8);
    }
  }
}

void sub_267E765D0()
{
  if (!qword_28022CBC0)
  {
    v0 = sub_267EF8228();
    if (!v1)
    {
      atomic_store(v0, &qword_28022CBC0);
    }
  }
}

uint64_t sub_267E76618()
{
  result = qword_28022CBC8;
  if (!qword_28022CBC8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CBC8);
  }

  return result;
}

uint64_t sub_267E76640()
{
  result = qword_28022CBD0;
  if (!qword_28022CBD0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CBD0);
  }

  return result;
}

void sub_267E76668(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_267E766C4(uint64_t a1)
{
  if (!qword_28022CBE8)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A300, &qword_267EFEEE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28022CBE8);
    }
  }
}

void sub_267E767E0(uint64_t a1)
{
  if (!qword_28022CC00)
  {
    sub_267BA9F38(255, &qword_28022AE60, 0x277CD4078);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022CC00);
    }
  }
}

void sub_267E7685C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_267E768CC(uint64_t a1)
{
  if (!qword_28022CC10)
  {
    sub_267EF2BA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A340, &unk_267F00A50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28022CC10);
    }
  }
}

uint64_t sub_267E76954()
{
  result = qword_28022CC18;
  if (!qword_28022CC18)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28022CC18);
  }

  return result;
}

uint64_t sub_267E7697C()
{
  result = qword_28022CC20;
  if (!qword_28022CC20)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CC20);
  }

  return result;
}

uint64_t sub_267E769A4()
{
  result = qword_28022CC28;
  if (!qword_28022CC28)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CC28);
  }

  return result;
}

void sub_267E769CC(uint64_t a1)
{
  if (!qword_28022CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022BCB0, &unk_267EFCA30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022CC30);
    }
  }
}

uint64_t sub_267E76A44(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_267B9A5E8(a2, v2 + 24);
  return v2;
}

uint64_t sub_267E76A70()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  sub_267E77D14(v2);
  if (!v3)
  {

LABEL_6:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v2 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      *v9 = 0;
      _os_log_impl(&dword_267B93000, v2, v8, "#GoogleMapsLinkParser URL or metadata missing", v9, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_10;
  }

  v4 = sub_267EF9138();
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v6 = sub_267E77B6C(0xD00000000000005ALL, 0x8000000267F1C4A0, 0);
  v12 = v6;
  if (!v6)
  {

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v13 = sub_267EF8FF8();

  v10 = [v12 firstMatchInString:v13 options:0 range:{0, v4}];

  if (v10)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v17);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v18, v19, "#GoogleMapsLinkParser valid google maps link");
      OUTLINED_FUNCTION_32_0();
    }

    v10 = 1;
  }

  else
  {
  }

LABEL_11:

  return v10;
}

uint64_t sub_267E76C98(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_267E76CB8, 0, 0);
}

uint64_t sub_267E76CB8()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v2 = sub_267BD346C(16);
  v7 = v2;
  if (v2)
  {
    v8 = *(*(v0 + 152) + 16);
    if (v8 && (v9 = [v8 title]) != 0)
    {
      v10 = v9;
      v11 = sub_267EF9028();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_267E770B4(v11, v13, v7, (v0 + 80));

      if (*(v0 + 88) != 1)
      {
        v41 = *(v0 + 80);
        v40 = *(v0 + 96);
        v38 = *(v0 + 128);
        v39 = *(v0 + 112);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v15 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v15, qword_280240FB0);
        v4 = sub_267EF89F8();
        v16 = sub_267EF95D8();
        if (!OUTLINED_FUNCTION_27(v16))
        {
          goto LABEL_33;
        }

        v17 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v17);
        v20 = "#GoogleMapsLinkParser locationInfo from title";
LABEL_32:
        OUTLINED_FUNCTION_6_24(&dword_267B93000, v18, v19, v20);
        OUTLINED_FUNCTION_32_0();
LABEL_33:

        goto LABEL_41;
      }
    }

    else
    {
    }

    if (v8 && (v21 = [v8 summary]) != 0)
    {
      v22 = v21;
      v23 = sub_267EF9028();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      sub_267E770B4(v23, v25, v7, (v0 + 16));

      if (*(v0 + 24) != 1)
      {
        v41 = *(v0 + 16);
        v40 = *(v0 + 32);
        v38 = *(v0 + 64);
        v39 = *(v0 + 48);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v27 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
        v4 = sub_267EF89F8();
        v28 = sub_267EF95D8();
        if (!OUTLINED_FUNCTION_27(v28))
        {
          goto LABEL_33;
        }

        v29 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v29);
        v20 = "#GoogleMapsLinkParser locationInfo from summary";
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v30 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
    v4 = sub_267EF89F8();
    v31 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v32);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v33, v34, "#GoogleMapsLinkParser no address found in link title or summary");
      OUTLINED_FUNCTION_32_0();
    }

    v41 = xmmword_267EFC050;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    v41 = xmmword_267EFC050;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      *v6 = 0;
      _os_log_impl(&dword_267B93000, v4, v5, "#GoogleMapsLinkParser error getting data detector for address detection", v6, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
LABEL_41:
  v35 = *(v0 + 144);

  *v35 = v41;
  v35[1] = v40;
  v35[2] = v39;
  v35[3] = v38;
  v36 = *(v0 + 8);

  return v36();
}

void sub_267E770B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v48[0] = a1;
  v48[1] = a2;
  sub_267BB5034();
  v6 = sub_267EF98C8();
  v7 = v6[2];
  if (!v7)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v14))
    {
      goto LABEL_29;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v17 = "#GoogleMapsLinkParser address parsing error. This should not be empty";
    goto LABEL_28;
  }

  if (v7 == 1)
  {
    v8 = 0;
    v10 = v6[4];
    v9 = v6[5];
    v11 = 0xE000000000000000;
  }

  else
  {
    v8 = v6[4];
    v11 = v6[5];
    v10 = v6[6];
    v9 = v6[7];
  }

  swift_bridgeObjectRetain_n();

  v18 = sub_267EF8FF8();

  v19 = MEMORY[0x26D608EC0](v10, v9);

  v20 = [a3 matchesInString:v18 options:0 range:{0, v19}];

  sub_267BFCDCC();
  v21 = sub_267EF92F8();

  if (!sub_267BAF0DC(v21))
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v44 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
    v13 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_27(v45))
    {
      goto LABEL_29;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v17 = "#GoogleMapsLinkParser matches for addresses is empty";
LABEL_28:
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v15, v16, v17);
    OUTLINED_FUNCTION_32_0();
LABEL_29:

LABEL_30:
    v8 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v38 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 1;
    goto LABEL_31;
  }

  sub_267BBD0EC(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D609870](0, v21);
  }

  else
  {
    v22 = *(v21 + 32);
  }

  v23 = v22;

  if ([v23 resultType] != 16 || (v24 = sub_267E77C48(v23)) == 0)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v39 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v41))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v42, v43, "#GoogleMapsLinkParser cannot get address components");
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_30;
  }

  v25 = v24;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v47 = v23;
  v26 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);

  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v29 = 136315394;
    type metadata accessor for NSTextCheckingKey(0);
    sub_267E77CBC();
    v30 = sub_267EF8F08();
    v46 = v28;
    v32 = sub_267BA33E8(v30, v31, v48);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_267BA33E8(v8, v11, v48);
    _os_log_impl(&dword_267B93000, v27, v46, "#GoogleMapsLinkParser address is %s, name is %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v33 = sub_267BC2EE8(*MEMORY[0x277CCA6B0], v25);
  v35 = v34;
  v36 = sub_267BC2EE8(*MEMORY[0x277CCA6E0], v25);
  v38 = v37;

LABEL_31:
  *a4 = v8;
  a4[1] = v11;
  a4[2] = v33;
  a4[3] = v35;
  a4[4] = v36;
  a4[5] = v38;
  a4[6] = v10;
  a4[7] = v9;
}

uint64_t sub_267E775DC()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = sub_267EF43A8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_267EF43C8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E77700, 0, 0);
}

uint64_t sub_267E77700()
{
  v1 = v0[2];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 3, v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_267E777E0;
  v5 = v0[9];

  return MEMORY[0x2821BB7C0](v5, 0x676F6F672E6D6F63, 0xEF7370614D2E656CLL, v2, v3);
}

uint64_t sub_267E777E0()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_267C791E8, 0, 0);
}

uint64_t sub_267E778D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_267E77934(uint64_t a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_267E779D0;

  return sub_267E76C98(v1 + 16);
}

uint64_t sub_267E779D0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 80);
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v8;

  v3 = *(v8 + 16);
  v4 = *(v8 + 32);
  v5 = *(v8 + 64);
  v1[2] = *(v8 + 48);
  v1[3] = v5;
  *v1 = v3;
  v1[1] = v4;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_267E77ADC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267E42E6C;

  return sub_267E775DC();
}

id sub_267E77B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_267EF8FF8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_267E77C48(void *a1)
{
  v1 = [a1 addressComponents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_267E77CBC();
  v3 = sub_267EF8EF8();

  return v3;
}

unint64_t sub_267E77CBC()
{
  result = qword_280228BE8;
  if (!qword_280228BE8)
  {
    type metadata accessor for NSTextCheckingKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228BE8);
  }

  return result;
}

uint64_t sub_267E77D14(void *a1)
{
  v1 = [a1 originalURL];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow25MessageReadingSummaryTypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_267E77D94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267E77DD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_267E77E1C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_267E77E48()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 128) = v1;
  OUTLINED_FUNCTION_31_27(v2);
  v3 = sub_267EF4578();
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v0 + 32) = v4;
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v0 + 56) = v6;
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 88) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E77F7C()
{
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v1 = *(v0 + 128);
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v0 + 96) = OUTLINED_FUNCTION_56_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 104) = v3;
  *v3 = v4;
  if (v1)
  {
    *(v2 + 8) = sub_267E782A8;
    v5 = *(v0 + 64);
    v6 = 1;
  }

  else
  {
    *(v2 + 8) = sub_267E78088;
    OUTLINED_FUNCTION_26_35();
  }

  return sub_267CEAE1C(v5, v6);
}

uint64_t sub_267E78088()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E78180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[10];
  v16 = v14[7];
  v30 = v14[11];
  v31 = v14[8];
  v17 = v14[5];
  v18 = v14[6];
  v20 = v14[3];
  v19 = v14[4];
  (*(v16 + 32))(v15, v14[9], v18);
  (*(v19 + 104))(v17, *MEMORY[0x277D5BF68], v20);
  sub_267EF41C8();

  (*(v19 + 8))(v17, v20);
  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_267E782A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E783A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[10];
  v16 = v14[7];
  v30 = v14[11];
  v31 = v14[9];
  v17 = v14[5];
  v18 = v14[6];
  v20 = v14[3];
  v19 = v14[4];
  (*(v16 + 32))(v15, v14[8], v18);
  (*(v19 + 104))(v17, *MEMORY[0x277D5BF68], v20);
  sub_267EF41C8();

  (*(v19 + 8))(v17, v20);
  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_267E784C8()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 128) = v1;
  OUTLINED_FUNCTION_31_27(v2);
  v3 = sub_267EF4578();
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v0 + 32) = v4;
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v0 + 56) = v6;
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 88) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E785FC()
{
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v1 = *(v0 + 128);
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v0 + 96) = OUTLINED_FUNCTION_56_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 104) = v3;
  *v3 = v4;
  if (v1)
  {
    *(v2 + 8) = sub_267E78A04;
    OUTLINED_FUNCTION_26_35();
    v7 = 1;
  }

  else
  {
    *(v2 + 8) = sub_267E78714;
    OUTLINED_FUNCTION_26_35();
    v7 = 0;
  }

  return sub_267CEB050(v5, v6, 0, v7);
}

uint64_t sub_267E78714()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E7880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  (*(*(v22 + 56) + 32))(*(v22 + 80), *(v22 + 72), *(v22 + 48));
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v28 = sub_267EF8A08();
  __swift_project_value_buffer(v28, qword_280240FB0);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v22 + 128);
    v32 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    a11 = v23;
    *v32 = 136315138;
    if (v31)
    {
      v33 = 0x657369636E6F63;
    }

    else
    {
      v33 = 0x636972656E6567;
    }

    v34 = sub_267BA33E8(v33, 0xE700000000000000, &a11);

    *(v32 + 4) = v34;
    OUTLINED_FUNCTION_33_1(&dword_267B93000, v35, v36, "#MessageReadingDialogFactory returning %s multilingual hint dialog");
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_21_32();
  v37 = OUTLINED_FUNCTION_30_35();
  v38(v37);
  sub_267EF41C8();

  (*(v23 + 8))(v24, v25);
  v39 = OUTLINED_FUNCTION_73();
  v40(v39);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E78A04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E78AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  (*(*(v22 + 56) + 32))(*(v22 + 80), *(v22 + 64), *(v22 + 48));
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v28 = sub_267EF8A08();
  __swift_project_value_buffer(v28, qword_280240FB0);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v22 + 128);
    v32 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    a11 = v23;
    *v32 = 136315138;
    if (v31)
    {
      v33 = 0x657369636E6F63;
    }

    else
    {
      v33 = 0x636972656E6567;
    }

    v34 = sub_267BA33E8(v33, 0xE700000000000000, &a11);

    *(v32 + 4) = v34;
    OUTLINED_FUNCTION_33_1(&dword_267B93000, v35, v36, "#MessageReadingDialogFactory returning %s multilingual hint dialog");
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_21_32();
  v37 = OUTLINED_FUNCTION_30_35();
  v38(v37);
  sub_267EF41C8();

  (*(v23 + 8))(v24, v25);
  v39 = OUTLINED_FUNCTION_73();
  v40(v39);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E78CF8()
{
  OUTLINED_FUNCTION_32_23();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267E78D90()
{
  OUTLINED_FUNCTION_32_23();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267E78E28()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 256) = v1;
  OUTLINED_FUNCTION_31_27(v2);
  v3 = sub_267EF4578();
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v0 + 32) = v4;
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v0 + 56) = v6;
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 128) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E78F98()
{
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v1 = *(v0 + 256);
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v0 + 136) = sub_267EF78E8();
  switch(v1)
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 160) = v14;
      *v14 = v15;
      v14[1] = sub_267E7952C;
      OUTLINED_FUNCTION_26_35();
      goto LABEL_12;
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 192) = v9;
      *v9 = v10;
      v9[1] = sub_267E7996C;
      OUTLINED_FUNCTION_26_35();
      goto LABEL_10;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 176) = v11;
      *v11 = v12;
      v11[1] = sub_267E79750;
      v4 = *(v0 + 96);
      v5 = 1;
LABEL_10:
      v13 = 1;
      goto LABEL_13;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 208) = v6;
      *v6 = v7;
      v6[1] = sub_267E79B9C;

      return sub_267CEB2D4();
    case 5:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 224) = v16;
      *v16 = v17;
      v16[1] = sub_267E79DD0;

      return sub_267CEB384();
    case 6:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 240) = v18;
      *v18 = v19;
      v18[1] = sub_267E7A00C;

      return sub_267CEB434();
    default:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 144) = v2;
      *v2 = v3;
      v2[1] = sub_267E792E0;
      v4 = *(v0 + 112);
      v5 = 1;
LABEL_12:
      v13 = 0;
LABEL_13:

      return sub_267CEB4E4(v4, v5, v13);
  }
}

uint64_t sub_267E792E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E793D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[15];
  v35 = v18[16];
  v36 = v18[13];
  v37 = v18[12];
  v38 = v18[11];
  v39 = v18[10];
  v40 = v18[9];
  v41 = v18[8];
  v20 = v18[6];
  v21 = v18[7];
  (*(v21 + 32))(v19, v18[14], v20);
  v22 = OUTLINED_FUNCTION_11_47();
  v23(v22);
  sub_267EF41C8();

  v24 = OUTLINED_FUNCTION_24_37();
  v25(v24);
  (*(v21 + 8))(v19, v20);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_267E7952C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E79624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v38 = v18[16];
  v39 = v18[14];
  v20 = v18[13];
  OUTLINED_FUNCTION_22_31();
  v21 = OUTLINED_FUNCTION_6_48();
  v22(v21, v20, v19);
  v23 = OUTLINED_FUNCTION_11_47();
  v24(v23);
  sub_267EF41C8();

  v25 = OUTLINED_FUNCTION_24_37();
  v26(v25);
  v27 = OUTLINED_FUNCTION_25_39();
  v28(v27);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E79750()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E79848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v38 = v18[16];
  v39 = v18[14];
  v20 = v18[12];
  OUTLINED_FUNCTION_22_31();
  v21 = OUTLINED_FUNCTION_6_48();
  v22(v21, v20, v19);
  v23 = OUTLINED_FUNCTION_11_47();
  v24(v23);
  OUTLINED_FUNCTION_35_28();

  v25 = OUTLINED_FUNCTION_24_37();
  v26(v25);
  v27 = OUTLINED_FUNCTION_25_39();
  v28(v27);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E7996C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E79A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_8_52();
  v19 = v18[11];
  v39 = v18[10];
  v40 = v18[9];
  v41 = v18[8];
  v20 = v18[6];
  v22 = v18[4];
  v21 = v18[5];
  v23 = v18[3];
  v24 = OUTLINED_FUNCTION_6_48();
  v25(v24, v19, v20);
  v26 = OUTLINED_FUNCTION_11_47();
  v27(v26);
  OUTLINED_FUNCTION_35_28();

  (*(v22 + 8))(v21, v23);
  v28 = OUTLINED_FUNCTION_25_39();
  v29(v28);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_267E79B9C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E79C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_8_52();
  v19 = v18[10];
  v39 = v18[11];
  v40 = v18[9];
  v41 = v18[8];
  v20 = v18[6];
  v22 = v18[4];
  v21 = v18[5];
  v23 = v18[3];
  v24 = OUTLINED_FUNCTION_6_48();
  v25(v24, v19, v20);
  v26 = OUTLINED_FUNCTION_11_47();
  v27(v26);
  OUTLINED_FUNCTION_35_28();

  (*(v22 + 8))(v21, v23);
  v28 = OUTLINED_FUNCTION_73();
  v29(v28);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_267E79DD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E79EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_8_52();
  v37 = v18[11];
  v38 = v18[10];
  v19 = v18[9];
  v39 = v18[8];
  v20 = v18[6];
  v22 = v18[4];
  v21 = v18[5];
  v23 = v18[3];
  v24 = OUTLINED_FUNCTION_6_48();
  v25(v24, v19, v20);
  (*(v22 + 104))(v21, *MEMORY[0x277D5BF68], v23);
  OUTLINED_FUNCTION_35_28();

  (*(v22 + 8))(v21, v23);
  v26 = OUTLINED_FUNCTION_73();
  v27(v26);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, v37, v38, v39, a16, a17, a18);
}

uint64_t sub_267E7A00C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E7A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_8_52();
  v37 = v18[11];
  v38 = v18[10];
  v19 = v18[8];
  v39 = v18[9];
  v20 = v18[6];
  v22 = v18[4];
  v21 = v18[5];
  v23 = v18[3];
  v24 = OUTLINED_FUNCTION_6_48();
  v25(v24, v19, v20);
  (*(v22 + 104))(v21, *MEMORY[0x277D5BF68], v23);
  sub_267EF41C8();

  (*(v22 + 8))(v21, v23);
  v26 = OUTLINED_FUNCTION_73();
  v27(v26);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, v37, v38, v39, a16, a17, a18);
}

uint64_t sub_267E7A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A720()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_27(v1);
  v2 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v2);
  *(v0 + 24) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E7A798()
{
  OUTLINED_FUNCTION_12();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v0 + 32) = OUTLINED_FUNCTION_56_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_267E7A868;

  return sub_267CE9318();
}

uint64_t sub_267E7A868()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E7A960()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_267E7A9C0()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267E7AA30(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](sub_267E7AA50, 0, 0);
}

uint64_t sub_267E7AA50()
{
  __swift_project_boxed_opaque_existential_0((v0[17] + 64), *(v0[17] + 88));
  if (sub_267BCF4EC())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v1 = sub_267EF8A08();
    v0[18] = __swift_project_value_buffer(v1, qword_280240FB0);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95C8();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v4, v5, "#NetworkConnectivityCheckFlow device is offline");
      OUTLINED_FUNCTION_32_0();
    }

    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_267E7AC6C;

    return sub_267E7B26C();
  }

  else
  {
    *(v0[17] + 56) = 0;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95C8();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v11, v12, "#NetworkConnectivityCheckFlow device is online");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267E7AC6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_267E7AF68;
  }

  else
  {
    v5 = sub_267E7AD70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267E7AD70()
{
  v1 = v0[17];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  (*(v3 + 40))(v2, v3);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v4);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_267E7AE64;

  return MEMORY[0x2821BB5D0](v0 + 2, v4, v5);
}

uint64_t sub_267E7AE64()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = sub_267E7B0B4;
  }

  else
  {
    v5 = sub_267E0A804;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267E7AF68()
{
  v15 = v0;
  v1 = *(v0 + 160);
  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_11_40(4.8149e-34);
    v7 = sub_267EF9F68();
    v9 = sub_267BA33E8(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v10, v11, "#NetworkConnectivityCheckFlow Unable to make response %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267E7B0B4()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[22];
  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_11_40(4.8149e-34);
    v7 = sub_267EF9F68();
    v9 = sub_267BA33E8(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v10, v11, "#NetworkConnectivityCheckFlow Unable to make response %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267E7B26C()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[19] = swift_task_alloc();
  sub_267EF7B88();
  v1[20] = swift_task_alloc();
  v3 = sub_267EF4228();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E7B38C, 0, 0);
}

uint64_t sub_267E7B38C()
{
  OUTLINED_FUNCTION_12();
  type metadata accessor for MessagesCATs(0);
  sub_267EF7B68();
  v0[24] = sub_267EF78E8();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_267E7B44C;
  v2 = v0[23];

  return sub_267CB3274(v2);
}

uint64_t sub_267E7B44C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 208) = v0;

  if (v0)
  {
    v6 = sub_267E7B744;
  }

  else
  {

    v6 = sub_267E7B558;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267E7B558()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v7 = OUTLINED_FUNCTION_10_0();
  v8(v7);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v11 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  v12 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v13 = MEMORY[0x277D5C1D8];
  v6[3] = v12;
  v6[4] = v13;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F98();
  sub_267B9FF34(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267E7B744()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

void *sub_267E7B7EC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_267E7B81C()
{
  sub_267E7B7EC();

  return swift_deallocClassInstance();
}

uint64_t sub_267E7B884(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267E7AA30(a1);
}

uint64_t sub_267E7B928(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267E7B968(uint64_t result, int a2, int a3)
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

uint64_t sub_267E7B9CC(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);

    v9 = sub_267EF89F8();
    v10 = sub_267EF95D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136642819;
      *(v11 + 4) = sub_267BA33E8(a1, a2, &v15);
      _os_log_impl(&dword_267B93000, v9, v10, "#ContextConversationResolver found Messaages app conversation: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D60A7B0](v12, -1, -1);
      MEMORY[0x26D60A7B0](v11, -1, -1);
    }

    return a3(a1, a2);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    sub_267E7BDE0(sub_267E7D3F0, v14);
  }
}

uint64_t sub_267E7BBB0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136642819;
      *(v9 + 4) = sub_267BA33E8(a1, a2, &v18);
      _os_log_impl(&dword_267B93000, v7, v8, "#ContextConversationResolver conversation found in notification: %{sensitive}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D60A7B0](v10, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    v11 = a1;
    v12 = a2;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#ContextConversationResolver conversation not found in notification / application context", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    v11 = 0;
    v12 = 0;
  }

  return a3(v11, v12);
}

uint64_t sub_267E7BDE0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_267EF89E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v11 = sub_267EF8FF8();
  v22 = v10;
  [v10 setSourceAppId_];

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v12 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v13 = v2[8];
  v14 = v2[9];
  __swift_project_boxed_opaque_existential_0(v2 + 5, v13);
  (*(v14 + 16))(v25, v13, v14);
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  (*(v4 + 16))(v7, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v15, v7, v3);
  v18 = (v17 + v16);
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  sub_267BA9F38(0, &qword_28022C9F8, 0x277D47620);

  v20 = v22;
  sub_267EF4268();

  (*(v4 + 8))(v9, v3);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_267E7C0CC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_267EF89E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v10 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v11);
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  v17 = v20;
  *v16 = v19;
  v16[1] = v17;

  sub_267C0BC60(sub_267E7D2E8, v15, v11, v12);

  return (*(v4 + 8))(v9, v3);
}

void sub_267E7C2FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_267EF9688();
  if (qword_280228820 != -1)
  {
LABEL_60:
    swift_once();
  }

  sub_267EF89B8();
  if (!a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#ContextConversationResolver SharedContextService didn't fetch contexts", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    (a3)(0, 0);
    return;
  }

  v36 = a3;
  v35 = a1;
  v5 = sub_267D102E0(v35, &selRef_applicationContexts, &qword_28022AEE8, 0x277CEF170);
  if (!v5)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  a1 = v5;
  a3 = 0xD000000000000013;
  v6 = sub_267BAF0DC(v5);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v17 = sub_267EF8A08();
      __swift_project_value_buffer(v17, qword_280240FB0);
      v18 = sub_267EF89F8();
      v19 = sub_267EF95D8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_267B93000, v18, v19, "#ContextConversationResolver Messages app is not in the foreground", v20, 2u);
        MEMORY[0x26D60A7B0](v20, -1, -1);
      }

      (v36)(0, 0);
      v21 = v35;
      goto LABEL_53;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v37 = v8;
    v9 = sub_267D24554(v8);
    if (!v10)
    {
      goto LABEL_16;
    }

    if (v9 == 0xD000000000000013 && v10 == 0x8000000267F10280)
    {
      break;
    }

    v12 = sub_267EF9EA8();

    if (v12)
    {
      goto LABEL_29;
    }

LABEL_16:
  }

LABEL_29:

  v22 = sub_267D102E0(v37, &selRef_aceContexts, &qword_28022CC40, 0x277D470E0);
  if (!v22)
  {
    goto LABEL_63;
  }

  v23 = v22;
  a1 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v24 = sub_267BAF0DC(v22);
  v25 = 0;
  a3 = 0x277D47000;
  while (v24 != v25)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26D609870](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x26D608F90]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      a1 = v38;
      ++v25;
    }

    else
    {

      ++v25;
    }
  }

  if (sub_267BAF0DC(a1))
  {
    sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D609870](0, a1);
    }

    else
    {
      v28 = *(a1 + 32);
    }

    v29 = v28;

    v30 = sub_267E7D38C(v29);
    v36(v30);

    return;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v31 = sub_267EF8A08();
  __swift_project_value_buffer(v31, qword_280240FB0);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_267B93000, v32, v33, "#ContextConversationResolve Messages app does not display a conversation", v34, 2u);
    MEMORY[0x26D60A7B0](v34, -1, -1);
  }

  (v36)(0, 0);
  v21 = v37;
LABEL_53:
}

void sub_267E7C944(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v74 = a4;
  v75 = a3;
  v80 = a1;
  v4 = sub_267EF43D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v72 - v13;
  v14 = sub_267EF2CC8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v83 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v84 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC48, &qword_267F0D378);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  sub_267EF9688();
  if (qword_280228820 != -1)
  {
LABEL_58:
    swift_once();
  }

  sub_267EF89B8();
  sub_267E7D480(v80, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v24, v4);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v25 = sub_267EF8A08();
    __swift_project_value_buffer(v25, qword_280240FB0);
    v26 = *(v5 + 16);
    v27 = v79;
    v84 = v9;
    v26(v79, v9, v4);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v85 = v31;
      *v30 = 136315138;
      sub_267E7D4F0();
      v32 = sub_267EF9E58();
      v33 = v27;
      v35 = v34;
      v36 = *(v5 + 8);
      v36(v33, v4);
      v37 = sub_267BA33E8(v32, v35, &v85);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_267B93000, v28, v29, "#ContextConversationResolver notification search failed: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D60A7B0](v31, -1, -1);
      MEMORY[0x26D60A7B0](v30, -1, -1);
    }

    else
    {

      v36 = *(v5 + 8);
      v36(v27, v4);
    }

    (v75)(0, 0);
    v36(v84, v4);
  }

  else
  {
    v4 = v15;
    v78 = v18;
    v73 = *v24;
    v38 = sub_267D102E0(v73, &selRef_notifications, &qword_28022A398, 0x277D47608);
    if (v38)
    {
      v39 = v38;
      v85 = MEMORY[0x277D84F90];
      v24 = sub_267BAF0DC(v38);
      v5 = 0;
      v9 = (v39 & 0xC000000000000001);
      v15 = (v39 & 0xFFFFFFFFFFFFFF8);
      while (v24 != v5)
      {
        if (v9)
        {
          v40 = MEMORY[0x26D609870](v5, v39);
        }

        else
        {
          if (v5 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v40 = *(v39 + 8 * v5 + 32);
        }

        v41 = v40;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v42 = sub_267E51D50(v40);
        if (!v43)
        {
          goto LABEL_19;
        }

        v18 = v42;
        v44 = v43;

        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v45)
        {
          sub_267EF9BD8();
          v18 = v85[2];
          sub_267EF9C08();
          sub_267EF9C18();
          sub_267EF9BE8();
        }

        else
        {
LABEL_19:
        }

        ++v5;
      }

      v18 = v85;
      v79 = sub_267BAF0DC(v85);
      if (v79)
      {
        sub_267BBD0EC(0, (v18 & 0xC000000000000001) == 0, v18);
        v77 = v18 & 0xC000000000000001;
        if ((v18 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x26D609870](0, v18);
        }

        else
        {
          v46 = *(v18 + 32);
        }

        v80 = v46;
        v47 = (v4 + 32);
        v48 = (v4 + 8);
        v24 = 1;
        v76 = v18;
        while (v79 != v24)
        {
          if (v77)
          {
            v49 = MEMORY[0x26D609870](v24, v18);
          }

          else
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            if (v24 >= *(v18 + 16))
            {
              goto LABEL_57;
            }

            v49 = *(v18 + 8 * v24 + 32);
          }

          v5 = v49;
          v9 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            goto LABEL_55;
          }

          v50 = [v80 date];
          if (v50)
          {
            v51 = v50;
            v52 = v83;
            sub_267EF2C98();

            v53 = *v47;
            v54 = v81;
            (*v47)(v81, v52, v14);
            __swift_storeEnumTagSinglePayload(v54, 0, 1, v14);
            v53(v84, v54, v14);
          }

          else
          {
            v55 = v81;
            __swift_storeEnumTagSinglePayload(v81, 1, 1, v14);
            sub_267EF2C18();
            if (__swift_getEnumTagSinglePayload(v55, 1, v14) != 1)
            {
              sub_267C1D46C(v81);
            }
          }

          v56 = [v5 date];
          if (v56)
          {
            v57 = v56;
            v58 = v83;
            sub_267EF2C98();

            v59 = *v47;
            v60 = v82;
            (*v47)(v82, v58, v14);
            __swift_storeEnumTagSinglePayload(v60, 0, 1, v14);
            v61 = v78;
            v59(v78, v60, v14);
          }

          else
          {
            v62 = v82;
            __swift_storeEnumTagSinglePayload(v82, 1, 1, v14);
            v61 = v78;
            sub_267EF2C18();
            if (__swift_getEnumTagSinglePayload(v62, 1, v14) != 1)
            {
              sub_267C1D46C(v82);
            }
          }

          v4 = v84;
          v63 = sub_267EF2C68();
          v15 = *v48;
          (*v48)(v61, v14);
          v15(v4, v14);
          if (v63)
          {

            ++v24;
            v80 = v5;
          }

          else
          {

            ++v24;
          }

          v18 = v76;
        }

        v64 = v80;
        v65 = sub_267E51D50(v80);
        v75(v65);
      }

      else
      {

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v66 = sub_267EF8A08();
        __swift_project_value_buffer(v66, qword_280240FB0);
        v67 = sub_267EF89F8();
        v68 = sub_267EF95D8();
        v69 = os_log_type_enabled(v67, v68);
        v70 = v75;
        if (v69)
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_267B93000, v67, v68, "#ContextConversationResolver conversation not found in notifications", v71, 2u);
          MEMORY[0x26D60A7B0](v71, -1, -1);
        }

        v70(0, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_267E7D2E8()
{
  sub_267EF89E8();
  v0 = OUTLINED_FUNCTION_0_70();

  sub_267E7C2FC(v0, v1, v2);
}

uint64_t sub_267E7D38C(void *a1)
{
  v1 = [a1 chatIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267E7D3F8()
{
  sub_267EF89E8();
  v0 = OUTLINED_FUNCTION_0_70();

  sub_267E7C944(v0, v1, v2, v3);
}

uint64_t sub_267E7D480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC48, &qword_267F0D378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267E7D4F0()
{
  result = qword_28022B5B0;
  if (!qword_28022B5B0)
  {
    sub_267EF43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B5B0);
  }

  return result;
}

uint64_t sub_267E7D548()
{
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 1;
  return sub_267EF1B18();
}

uint64_t sub_267E7D55C()
{
  sub_267BFC094();

  return swift_deallocClassInstance();
}

void *sub_267E7D5B4(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 41) = *(a1 + 33);
  *(v1 + 42) = *(a1 + 34);
  *(v1 + 43) = *(a1 + 35);
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 40);
  *(v1 + 56) = v2;
  *(v1 + 57) = *(a1 + 49);
  return sub_267BF4998(a1);
}

void sub_267E7D5F0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_4();
  v7 = v5 == 0xD000000000000014 && v6 == a1;
  if (v7 || (v8 = v5, (OUTLINED_FUNCTION_2_6(0xD000000000000014, v6) & 1) != 0))
  {
    v9 = *(v2 + 40);
LABEL_7:
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v9;
    return;
  }

  OUTLINED_FUNCTION_2_4();
  v11 = v8 == 0xD000000000000020 && v10 == a1;
  if (v11 || (OUTLINED_FUNCTION_2_6(0xD000000000000020, v10) & 1) != 0)
  {
    v9 = *(v2 + 41);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v13 = v8 == 0xD000000000000017 && v12 == a1;
  if (v13 || (OUTLINED_FUNCTION_2_6(0xD000000000000017, v12) & 1) != 0)
  {
    v9 = *(v2 + 42);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v15 = v8 == 0xD00000000000001CLL && v14 == a1;
  if (v15 || (OUTLINED_FUNCTION_2_6(0xD00000000000001CLL, v14) & 1) != 0)
  {
    v9 = *(v2 + 43);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v17 = v8 == 0xD000000000000021 && v16 == a1;
  if (v17 || (OUTLINED_FUNCTION_2_6(0xD000000000000021, v16) & 1) != 0)
  {
    if (*(v2 + 56))
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {
      v18 = *(v2 + 48);
      *(a2 + 24) = MEMORY[0x277D839F8];
      *a2 = v18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    v20 = v8 == 0xD00000000000001DLL && v19 == a1;
    if (v20 || (OUTLINED_FUNCTION_2_6(0xD00000000000001DLL, v19) & 1) != 0)
    {
      v9 = *(v2 + 57);
      goto LABEL_7;
    }

    sub_267EF1B24(v8, a1, a2);
  }
}

unint64_t sub_267E7D79C(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_267E7D7EC(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267E7D8B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267E7D79C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_267E7D8E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_267E7D7EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E7D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267E7D7E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267E7D94C(uint64_t a1)
{
  v2 = sub_267E7DEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267E7D988(uint64_t a1)
{
  v2 = sub_267E7DEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267E7DA10(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC60, &qword_267F0D410);
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E7DEEC();
  sub_267EFA078();
  if (v2)
  {
    v7 = 0;
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for MessagesSpokenDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v10[0]) = 0;
    *(v1 + 40) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(1);
    *(v1 + 41) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(2);
    *(v1 + 42) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(3);
    *(v1 + 43) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(4);
    *(v1 + 48) = sub_267EF9D68();
    *(v1 + 56) = v5 & 1;
    OUTLINED_FUNCTION_0_71(5);
    *(v1 + 57) = sub_267EF9DA8() & 1;
    sub_267B9AFEC(a1, v10);
    v7 = sub_267EF1C28(v10);
    v8 = OUTLINED_FUNCTION_8_32();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t sub_267E7DC6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC50, &qword_267F0D408);
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-v8 - 6];
  result = sub_267EF1E48(a1);
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_267E7DEEC();
    sub_267EFA088();
    v11 = v1[40];
    v21 = 0;
    OUTLINED_FUNCTION_0_25(v11, &v21);
    v12 = v1[41];
    v20 = 1;
    OUTLINED_FUNCTION_0_25(v12, &v20);
    v13 = v1[42];
    v19 = 2;
    OUTLINED_FUNCTION_0_25(v13, &v19);
    v14 = v1[43];
    v18 = 3;
    OUTLINED_FUNCTION_0_25(v14, &v18);
    v17[1] = 4;
    sub_267EF9DD8();
    v15 = v1[57];
    v17[0] = 5;
    OUTLINED_FUNCTION_0_25(v15, v17);
    return (*(v6 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_267E7DE74()
{
  sub_267BBC36C();

  return swift_deallocClassInstance();
}

unint64_t sub_267E7DEEC()
{
  result = qword_28022CC58;
  if (!qword_28022CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesSpokenDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267E7E020()
{
  result = qword_28022CC68;
  if (!qword_28022CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC68);
  }

  return result;
}

unint64_t sub_267E7E078()
{
  result = qword_28022CC70;
  if (!qword_28022CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC70);
  }

  return result;
}

unint64_t sub_267E7E0D0()
{
  result = qword_28022CC78;
  if (!qword_28022CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC78);
  }

  return result;
}

id sub_267E7E128(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v4);
  v81 = &v80 - v5;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v6);
  v83 = &v80 - v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  v80 = &v80 - v9;
  OUTLINED_FUNCTION_115();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v80 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v80 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v80 - v26;
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = [a1 nameComponents];
  if (v29)
  {
    v30 = v29;
    sub_267EF2A18();

    sub_267EF2A58();
    v31 = 0;
  }

  else
  {
    sub_267EF2A58();
    v31 = 1;
  }

  OUTLINED_FUNCTION_18_28(v25, v31);
  sub_267D2E49C(v25, v27);
  sub_267EF2A58();
  if (OUTLINED_FUNCTION_14_36(v27))
  {
    v32 = sub_267B9FF34(v27, &unk_28022BCA0, &unk_267EFD990);
LABEL_6:
    v33 = 0;
    goto LABEL_9;
  }

  sub_267EF2988();
  v35 = v34;
  v32 = sub_267B9FF34(v27, &unk_28022BCA0, &unk_267EFD990);
  if (!v35)
  {
    goto LABEL_6;
  }

  v33 = sub_267EF8FF8();

LABEL_9:
  OUTLINED_FUNCTION_92_1(v32, sel_setFirstName_);

  v36 = [a1 displayName];
  v37 = sub_267EF9028();
  v39 = v38;

  sub_267C47248(v37, v39, v28, &selRef_setFullName_);
  v40 = [a1 nameComponents];
  if (v40)
  {
    v41 = v40;
    sub_267EF2A18();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  OUTLINED_FUNCTION_18_28(v19, v42);
  sub_267D2E49C(v19, v22);
  if (OUTLINED_FUNCTION_14_36(v22))
  {
    v43 = sub_267B9FF34(v22, &unk_28022BCA0, &unk_267EFD990);
    v44 = 0;
    v45 = v82;
  }

  else
  {
    sub_267EF29A8();
    v47 = v46;
    v43 = sub_267B9FF34(v22, &unk_28022BCA0, &unk_267EFD990);
    v45 = v82;
    if (v47)
    {
      v44 = sub_267EF8FF8();
    }

    else
    {
      v44 = 0;
    }
  }

  OUTLINED_FUNCTION_92_1(v43, sel_setLastName_);

  v48 = [a1 nameComponents];
  if (v48)
  {
    v49 = v48;
    sub_267EF2A18();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  OUTLINED_FUNCTION_18_28(v13, v50);
  sub_267D2E49C(v13, v16);
  if (OUTLINED_FUNCTION_14_36(v16))
  {
    sub_267B9FF34(v16, &unk_28022BCA0, &unk_267EFD990);
    v51 = 0;
    v52 = v83;
    goto LABEL_28;
  }

  v53 = v80;
  sub_267EF29F8();
  if (OUTLINED_FUNCTION_14_36(v53))
  {
    OUTLINED_FUNCTION_99_0();
    sub_267B9FF34(v54, v55, v56);
    OUTLINED_FUNCTION_99_0();
    sub_267B9FF34(v57, v58, v59);
  }

  else
  {
    sub_267EF2988();
    v61 = v60;
    OUTLINED_FUNCTION_8_53(v53);
    OUTLINED_FUNCTION_8_53(v16);
    if (v61)
    {
      v51 = sub_267EF8FF8();

      goto LABEL_27;
    }
  }

  v51 = 0;
LABEL_27:
  v52 = v83;
LABEL_28:
  [v28 setFirstNamePhonetic_];

  v62 = [a1 nameComponents];
  if (v62)
  {
    v63 = v62;
    v64 = v81;
    sub_267EF2A18();

    v65 = 0;
  }

  else
  {
    v65 = 1;
    v64 = v81;
  }

  OUTLINED_FUNCTION_18_28(v64, v65);
  sub_267D2E49C(v64, v52);
  if (OUTLINED_FUNCTION_14_36(v52))
  {
    v66 = &unk_28022BCA0;
    v67 = &unk_267EFD990;
    v68 = v52;
LABEL_35:
    sub_267B9FF34(v68, v66, v67);
LABEL_36:
    v72 = 0;
    goto LABEL_37;
  }

  sub_267EF29F8();
  if (OUTLINED_FUNCTION_14_36(v45))
  {
    OUTLINED_FUNCTION_99_0();
    sub_267B9FF34(v69, v70, v71);
    OUTLINED_FUNCTION_99_0();
    goto LABEL_35;
  }

  sub_267EF29A8();
  v79 = v78;
  OUTLINED_FUNCTION_8_53(v45);
  OUTLINED_FUNCTION_8_53(v52);
  if (!v79)
  {
    goto LABEL_36;
  }

  v72 = sub_267EF8FF8();

LABEL_37:
  [v28 setLastNamePhonetic_];

  v73 = sub_267BBD380(a1);
  if (v74)
  {
    v75 = sub_267EF8FF8();
  }

  else
  {
    v75 = 0;
  }

  OUTLINED_FUNCTION_92_1(v73, sel_setInternalGUID_);

  [a1 isMe];
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v76 = sub_267EF97F8();
  OUTLINED_FUNCTION_92_1(v76, sel_setMe_);

  return v28;
}

id sub_267E7E7F0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    sub_267BA9F38(0, &qword_28022B3D0, 0x277D47178);
    v4 = sub_267EF9858();
    [v3 setAppInfo_];
  }

  return v3;
}

id sub_267E7E88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7)
{
  v26[3] = a6;
  OUTLINED_FUNCTION_4_63();
  v13 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267C47248(v8, v7, v19, &selRef_setMessage_);
  v20 = v19;
  [v20 setCanUseServerTTS_];
  sub_267EF2D18();
  v21 = sub_267EF2CE8();
  v23 = v22;
  (*(v15 + 8))(v18, v13);
  sub_267C47248(v21, v23, v20, &selRef_setAceId_);

  sub_267C47248(a3, a4, v20, &selRef_setDialogIdentifier_);
  v24 = sub_267EF9378();
  [v20 setListenAfterSpeaking_];

  [v20 setContext_];
  swift_unknownObjectRelease();

  return v20;
}

void sub_267E7EA58(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v15 = v2;

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A40, &qword_267EFEEA0);
    v16 = sub_267EF92D8();

    v17 = sub_267EF8FF8();
    [v3 setValue:v16 forKey:v17];

    return;
  }

  v23 = MEMORY[0x277D84F90];
  v18 = v2;
  v5 = v2;
  v20 = v4;
  sub_267C7231C();
  v6 = 0;
  v21 = a1 + 32;
  v19 = a1;
  while (v6 < *(a1 + 16))
  {
    v7 = *(v21 + 8 * v6);
    if (v7 >> 62)
    {
      v8 = sub_267EF9A68();
      if (!v8)
      {
LABEL_14:
        v13 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    v22 = MEMORY[0x277D84F90];

    sub_267EF9BF8();
    if (v8 < 0)
    {
      goto LABEL_22;
    }

    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D609870](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 dictionary];

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v8 != v9);

    v13 = v22;
    a1 = v19;
    v4 = v20;
LABEL_15:
    v14 = *(v23 + 16);
    if (v14 >= *(v23 + 24) >> 1)
    {
      sub_267C7231C();
      v4 = v20;
    }

    ++v6;
    *(v23 + 16) = v14 + 1;
    *(v23 + 8 * v14 + 32) = v13;
    if (v6 == v4)
    {

      v3 = v18;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_267E7ECFC(uint64_t a1)
{
  v2 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267E7F03C(a1, v8);
  sub_267EF2D18();
  v9 = sub_267EF2CE8();
  v11 = v10;
  (*(v4 + 8))(v7, v2);
  sub_267C47248(v9, v11, v8, &selRef_setAceId_);

  return v8;
}

uint64_t sub_267E7EE1C(uint64_t a1, uint64_t a2)
{
  sub_267BE4994(a2, v19);
  v2 = v20;
  if (!v20)
  {
    sub_267B9FF34(v19, &qword_280229910, &unk_267EFEB70);
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  v3 = v21;
  __swift_project_boxed_opaque_existential_0(v19, v20);
  v4 = (*(v3 + 16))(v2, v3);
  if (!sub_267BAF0DC(v4))
  {

    __swift_destroy_boxed_opaque_existential_0(v19);
    goto LABEL_16;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D609870](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  __swift_destroy_boxed_opaque_existential_0(v19);
  v7 = [v6 sender];
  if (!v7 || (v8 = v7, v9 = [v7 personHandle], v8, !v9) || ((v10 = objc_msgSend(v9, sel_type), v9, (v11 = objc_msgSend(v6, sel_sender)) == 0) ? (v14 = 1) : (v12 = v11, v13 = objc_msgSend(v11, sel_displayName), v12, sub_267EF9028(), v13, LOBYTE(v12) = sub_267EF9118(), , v14 = v12 ^ 1), (v15 = sub_267BE8214(), (v15 & 1) != 0) || v10 != 2))
  {

    goto LABEL_16;
  }

  v16 = sub_267BE84FC(v15);

  v17 = v16 & v14;
  return v17 & 1;
}

void sub_267E7F03C(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
  v3 = sub_267EF92D8();

  [a2 setViews_];
}

uint64_t sub_267E7F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v123 = a4;
  v124 = a3;
  v121 = a1;
  v119 = type metadata accessor for FollowupOfferFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v120 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v118 = v107 - v13;
  v14 = sub_267EF7B88();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = v107 - v22;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v117 = v21;
  v23 = sub_267EF8A08();
  v122 = __swift_project_value_buffer(v23, qword_280240FB0);
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v25))
  {
    v26 = v11;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_267B93000, v24, v5, "#MessageReadingFlowDelegate creating offer transition for barge in", v27, 2u);
    v28 = v27;
    v11 = v26;
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  v146[0] = v6;
  v30 = v124 + 8;
  v29 = *(v124 + 8);
  v31 = *(v29(a2) + 416);

  v125 = v31;
  if (!v31)
  {
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v42, v43, "#MessageReadingFlowDelegate no current conversation, skipping follow-up");
      MEMORY[0x26D60A7B0](v41, -1, -1);
    }

    goto LABEL_31;
  }

  v113 = v17;
  v146[0] = v6;
  v32 = OUTLINED_FUNCTION_6_49();
  v33 = *(v29(v32) + 88);

  v109 = v29;
  v114 = v12;
  v115 = v6;
  if (v33)
  {
    v140[0] = v6;

    v34 = OUTLINED_FUNCTION_6_49();
    v35 = v29(v34);
    sub_267B9AFEC(v35 + 16, v146);

    OUTLINED_FUNCTION_3_78();
    if (!v36)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
    v37 = sub_267BB4A3C();
    v38 = sub_267E7FF50(v125, v146, &v143, v37, 0);
  }

  else
  {
    v112 = v11;
    v149 = v6;

    v44 = OUTLINED_FUNCTION_6_49();
    v45 = v29(v44);
    sub_267B9AFEC(v45 + 16, v146);

    OUTLINED_FUNCTION_3_78();
    if (!v36)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
    v111 = sub_267BB4A3C();
    v141 = &type metadata for MessagesFeatureFlagsImpl;
    v142 = off_2878D1228;
    v138 = &type metadata for CATProvider;
    v139 = &off_2878CE7A0;
    type metadata accessor for ReplyOfferFlowStrategy(0);
    OUTLINED_FUNCTION_27_4();
    v46 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v140, &type metadata for MessagesFeatureFlagsImpl);
    __swift_mutable_project_boxed_opaque_existential_1(v137, &type metadata for CATProvider);
    v135 = &type metadata for MessagesFeatureFlagsImpl;
    v136 = off_2878D1228;
    v132 = &type metadata for CATProvider;
    v133 = &off_2878CE7A0;
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v38 = v46;
    __swift_storeEnumTagSinglePayload(v46 + v47, 6, 9, v48);
    v49 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager;
    *(v38 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager) = 0;
    *(v38 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) = v125;
    sub_267B9AFEC(&v131, v38 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider);
    sub_267C2FB6C(&v143, &v126, &qword_2802299B0, &unk_267F00D00);
    if (v127)
    {
      sub_267B9A5E8(&v126, &v128);
    }

    else
    {
      v50 = a2;
      v51 = v147;
      v52 = v148;
      __swift_project_boxed_opaque_existential_0(v146, v147);
      v53 = *(v52 + 1);
      v54 = v52;
      a2 = v50;
      v6 = v115;
      v53(&v128, v51, v54);
      v55 = sub_267BFA8F4(&v128);
      __swift_destroy_boxed_opaque_existential_0(&v128);
      v129 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
      v130 = &off_2878D3460;
      *&v128 = v55;
      if (v127)
      {
        sub_267B9F98C(&v126, &qword_2802299B0, &unk_267F00D00);
      }
    }

    sub_267B9A5E8(&v128, v38 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
    __swift_project_boxed_opaque_existential_0(&v131, v132);
    v56 = sub_267BB4A3C();

    sub_267B9F98C(&v143, &qword_2802299B0, &unk_267F00D00);
    *(v38 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs) = v56;
    sub_267B9A5E8(&v134, v38 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags);
    *(v38 + v49) = 0;

    sub_267B9AFEC(v146, v38 + 16);
    __swift_destroy_boxed_opaque_existential_0(&v131);
    __swift_destroy_boxed_opaque_existential_0(v146);
    __swift_destroy_boxed_opaque_existential_0(v137);
    __swift_destroy_boxed_opaque_existential_0(v140);
    v11 = v112;
    v29 = v109;
  }

  *&v126 = v6;

  v108 = a2;
  v57 = OUTLINED_FUNCTION_6_49();
  v112 = v30;
  v58 = v29(v57);
  v59 = v116;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v11);
  v60 = type metadata accessor for SiriKitFlowFactoryImpl();
  v61 = v11;
  v62 = swift_allocObject();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  v111 = sub_267EF78E8();
  v147 = v60;
  v148 = &off_2878CFE90;
  v146[0] = v62;
  type metadata accessor for FollowupOfferFlow(0);
  OUTLINED_FUNCTION_27_4();
  v107[1] = v63;
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v146, v60);
  v110 = v107;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_0_0();
  v68 = (v67 - v66);
  (*(v69 + 16))(v67 - v66);
  v70 = *v68;
  v144 = v60;
  v145 = &off_2878CFE90;
  *&v143 = v70;
  *(v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v71 = (v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v71 = 0;
  v71[1] = 0;
  v72 = (v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  v113 = v38;
  *v72 = v38;
  v72[1] = &off_2878D94A8;
  *(v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = v125;
  *(v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = v58;
  v73 = v117;
  sub_267C2FB6C(v59, v117, &qword_2802299A8, &unk_267F00CF0);
  if (__swift_getEnumTagSinglePayload(v73, 1, v61) == 1)
  {
    v74 = type metadata accessor for EmptyReferenceResolver();
    v75 = swift_allocObject();
    v141 = v74;
    v142 = sub_267E7FF08(&qword_2802299B8, type metadata accessor for EmptyReferenceResolver, &unk_267F04AA8);
    v140[0] = v75;
    v138 = sub_267EF68A8();
    v139 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v137);

    sub_267EF6898();
    sub_267B9AFEC(v58 + 16, &v134);
    sub_267B9AFEC(v137, &v131);
    sub_267B9AFEC(v140, &v128);
    v76 = swift_allocObject();
    sub_267B9A5E8(&v134, v76 + 16);
    sub_267B9A5E8(&v131, v76 + 56);
    sub_267B9A5E8(&v128, v76 + 96);
    sub_267EF4C08();
    sub_267BB7170();
    v77 = v118;
    sub_267EF7058();
    sub_267B9F98C(v59, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v137);
    __swift_destroy_boxed_opaque_existential_0(v140);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v61);
    v79 = v114;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v73, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {

    sub_267B9F98C(v59, &qword_2802299A8, &unk_267F00CF0);
    v79 = v114;
    v77 = v118;
    (*(v114 + 32))(v118, v73, v61);
  }

  (*(v79 + 32))(v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v77, v61);
  sub_267B9A5E8(&v143, v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  v80 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_storeEnumTagMultiPayload();
  v81 = v120;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_267BF8DEC(v81, v64 + v80);
  swift_endAccess();
  *(v64 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v111;
  sub_267B9AFEC(v58 + 16, v64 + 16);

  __swift_destroy_boxed_opaque_existential_0(v146);
  v82 = sub_267C5F164(v121);
  v83 = v115;
  if ((v82 & 1) == 0)
  {
    v101 = sub_267EF89F8();
    v102 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v104, v105, "#MessageReadingFlowDelegate Follow-up flow did not accept barge-in input");
      MEMORY[0x26D60A7B0](v103, -1, -1);
    }

LABEL_31:
    v100 = sub_267EF4548();
    v98 = v123;
    v99 = 1;
    return __swift_storeEnumTagSinglePayload(v98, v99, 1, v100);
  }

  v146[0] = v115;
  v85 = v108;
  v84 = v109;
  v86 = v124;
  (v109)(v108, v124);

  v87 = sub_267BFB860();

  *&v143 = v83;
  v88 = v84(v85, v86);
  v147 = &type metadata for MessagesFeatureFlagsImpl;
  v148 = off_2878D1228;
  type metadata accessor for OfferReplyReturnGroup();
  v89 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v146, &type metadata for MessagesFeatureFlagsImpl);
  v89[8] = &type metadata for MessagesFeatureFlagsImpl;
  v89[9] = off_2878D1228;
  v90 = v125;
  v89[2] = v88;
  v89[3] = v90;
  v89[4] = v87;

  __swift_destroy_boxed_opaque_existential_0(v146);
  v146[0] = v64;
  *&v143 = v89;
  sub_267EF33F8();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267E7FF08(&qword_2802299C0, type metadata accessor for FollowupOfferFlow, &unk_267EFEAE0);
  sub_267E7FF08(&qword_2802299C8, type metadata accessor for OfferReplyReturnGroup, &unk_267F0CDE8);

  v91 = sub_267EF33E8();

  v92 = v123;
  *v123 = v91;
  v93 = *MEMORY[0x277D5B898];
  sub_267EF3758();
  OUTLINED_FUNCTION_22();
  (*(v94 + 104))(v92, v93);
  v95 = *MEMORY[0x277D5BF50];
  v96 = sub_267EF4548();
  OUTLINED_FUNCTION_22();
  (*(v97 + 104))(v92, v95, v96);
  v98 = v92;
  v99 = 0;
  v100 = v96;
  return __swift_storeEnumTagSinglePayload(v98, v99, 1, v100);
}

uint64_t sub_267E7FF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E7FF50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[3] = &type metadata for MessagesFeatureFlagsImpl;
  v38[4] = off_2878D1228;
  v37[3] = &type metadata for CATProvider;
  v37[4] = &off_2878CE7A0;
  type metadata accessor for SpokenReplyOfferFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v38, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v37, &type metadata for CATProvider);
  v36[3] = &type metadata for MessagesFeatureFlagsImpl;
  v36[4] = off_2878D1228;
  v35[3] = &type metadata for CATProvider;
  v35[4] = &off_2878CE7A0;
  sub_267B9AFEC(a2, v32);
  sub_267B9AFEC(v36, v31);
  sub_267B9AFEC(v35, v30);
  sub_267C2FB6C(a3, v29, &qword_2802299B0, &unk_267F00D00);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
  v27 = &type metadata for MessagesFeatureFlagsImpl;
  v28 = off_2878D1228;
  v24 = &type metadata for CATProvider;
  v25 = &off_2878CE7A0;
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  __swift_storeEnumTagSinglePayload(v8 + v9, 6, 9, v10);
  v11 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager;
  *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager) = 0;
  *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) = a1;
  sub_267B9AFEC(v23, v8 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider);
  sub_267C2FB6C(v29, &v18, &qword_2802299B0, &unk_267F00D00);
  if (v19)
  {
    sub_267B9A5E8(&v18, &v20);
  }

  else
  {
    v12 = v33;
    v13 = v34;
    __swift_project_boxed_opaque_existential_0(v32, v33);
    (*(v13 + 8))(&v20, v12, v13);
    v14 = sub_267BFA8F4(&v20);
    __swift_destroy_boxed_opaque_existential_0(&v20);
    v21 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
    v22 = &off_2878D3460;
    *&v20 = v14;
    if (v19)
    {
      sub_267B9F98C(&v18, &qword_2802299B0, &unk_267F00D00);
    }
  }

  sub_267B9A5E8(&v20, v8 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
  __swift_project_boxed_opaque_existential_0(v23, v24);
  v15 = sub_267BB4A3C();

  sub_267B9F98C(a3, &qword_2802299B0, &unk_267F00D00);
  __swift_destroy_boxed_opaque_existential_0(a2);
  sub_267B9F98C(v29, &qword_2802299B0, &unk_267F00D00);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v36);
  *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs) = v15;
  sub_267B9A5E8(&v26, v8 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags);
  *(v8 + v11) = a5;
  sub_267B9AFEC(v32, v8 + 16);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v8;
}

uint64_t sub_267E802CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  return sub_267BB16A4(v1 + v3, a1, &qword_280229110, &unk_267F08700);
}

uint64_t sub_267E80334()
{
  sub_267BA0068();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessageReadingActionGroup(uint64_t a1)
{
  result = qword_28022CC80;
  if (!qword_28022CC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267E803E0(uint64_t a1)
{
  sub_267C4C258(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267E80518(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_267EF41B8();
  if (!v9)
  {
LABEL_15:

    return 0;
  }

  v10 = v9;
  v11 = sub_267E80914(v9);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_18:
    sub_267EF7938();
    swift_allocObject();
    sub_267EF7928();
    sub_267EF7C18();
    if (v22)
    {
      sub_267EF90F8();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v6, v23, 1, v24);
    sub_267EF7918();

    sub_267BBD6F0(v6);
    sub_267EF7908();

    v21 = sub_267EF7948();

    return v21;
  }

  result = sub_267E80914(v10);
  if (result)
  {
    v14 = result;
    v15 = *(result + 16);
    if (v15)
    {
      v26 = v6;
      v27 = v10;
      v28 = v1;
      v29 = a1;
      v34 = v12;
      sub_267EF9BF8();
      result = sub_267BA7F44();
      v17 = result;
      v18 = v14 + 64;
      v19 = v15 - 1;
      v30 = v14 + 64;
      if ((result & 0x8000000000000000) == 0)
      {
        while (v17 < 1 << *(v14 + 32))
        {
          if ((*(v18 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if (v16 != *(v14 + 36))
          {
            goto LABEL_24;
          }

          v32 = v16;
          v33 = v17 >> 6;
          v31 = v19;
          sub_267EF7B48();
          swift_allocObject();

          sub_267EF7B38();
          sub_267EF90F8();
          v20 = sub_267EF79B8();
          __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
          sub_267EF7B18();

          sub_267BBD6F0(v8);
          sub_267EF90F8();
          __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
          sub_267EF7B08();

          sub_267BBD6F0(v8);
          sub_267EF7B28();

          sub_267EF9BD8();
          sub_267EF9C08();
          sub_267EF9C18();
          result = sub_267EF9BE8();
          if (v17 >= -(-1 << *(v14 + 32)))
          {
            goto LABEL_25;
          }

          v18 = v30;
          if ((*(v30 + 8 * v33) & (1 << v17)) == 0)
          {
            goto LABEL_26;
          }

          if (v32 != *(v14 + 36))
          {
            goto LABEL_27;
          }

          result = sub_267EF99F8();
          if (!v31)
          {

            v6 = v26;
            v10 = v27;
            goto LABEL_18;
          }

          v17 = result;
          v16 = *(v14 + 36);
          v19 = v31 - 1;
          if (result < 0)
          {
            break;
          }
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_267E80914(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF8EF8();

  return v3;
}

id sub_267E80978(uint64_t a1)
{
  v2 = sub_267EF2AF8();
  v3 = [swift_getObjCClassFromMetadata() attachmentWithSharedLink_];

  sub_267EF2BA8();
  OUTLINED_FUNCTION_22();
  (*(v4 + 8))(a1);
  return v3;
}

uint64_t sub_267E80A08(void *a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = v6[2];
  *(v11 + 40) = 1;
  sub_267ED9A2C(a1);
  if (v12 || sub_267BCEA0C(a1))
  {

    goto LABEL_4;
  }

  v25 = [a1 speakableGroupName];
  if (v25)
  {

    goto LABEL_4;
  }

  v66 = [a1 outgoingMessageType];
  if (v66 == [a2 outgoingMessageType])
  {
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if ([a1 outgoingMessageType] || a4)
  {
    goto LABEL_4;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_58_13();
    if (!v56)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v67 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v67, qword_280240FB0);
    v68 = sub_267EF89F8();
    v69 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v69))
    {
      v70 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v70);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v71, v72, "#SendMessageChangeHandler modify request without recipient, content or app, clearing content and audio message attachment");
      OUTLINED_FUNCTION_32_0();
    }

    *(v11 + 48) = sub_267ED9A2C(a2);
    *(v11 + 56) = v73;

    OUTLINED_FUNCTION_4_64();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    if (sub_267E0CA8C(a2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
    }

    else
    {
      *(&v75 + 1) = 0;
      *&v76 = 0;
    }

    OUTLINED_FUNCTION_27_33();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
  }

LABEL_4:
  if (sub_267EF96E8() & 1) != 0 && (sub_267EF96C8())
  {
    OUTLINED_FUNCTION_58_13();
    if (!v56)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v16);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v17, v18, "#SendMessageChangeHandler modify request from audio message to text, clearing audio message attachment");
      OUTLINED_FUNCTION_32_0();
    }

    if (sub_267E0CA8C(a2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
    }

    else
    {
      *(&v75 + 1) = 0;
      *&v76 = 0;
    }

    OUTLINED_FUNCTION_27_33();
LABEL_23:
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_24;
  }

  if (sub_267EF96C8() & 1) != 0 && (sub_267EF96E8())
  {
    OUTLINED_FUNCTION_58_13();
    if (!v56)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v22);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v23, v24, "#SendMessageChangeHandler modify request from text message to audio, clearing message content");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_64();
    goto LABEL_23;
  }

LABEL_24:
  if (sub_267BCEA0C(a1))
  {

    OUTLINED_FUNCTION_58_13();
    if (!v56)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v29);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v30, v31, "#SendMessageChangeHandler modify recipient, clearing current recipients & group");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_64();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_4_64();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267D294C0(0, 0);
    sub_267D291CC(0);
    v32 = *(sub_267C7A4A0() + 16);

    if (v32)
    {
      v33 = sub_267C7A4A0();
      sub_267C7A414(v33);

      sub_267C3911C(a1, 0);
    }
  }

  else
  {
    v34 = [a1 speakableGroupName];
    if (v34)
    {
      v35 = v34;
      OUTLINED_FUNCTION_58_13();
      if (!v56)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v36 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
      v37 = sub_267EF89F8();
      v38 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v38))
      {
        v39 = OUTLINED_FUNCTION_32();
        *v39 = 0;
        _os_log_impl(&dword_267B93000, v37, v38, "#SendMessageChangeHandler modify group, clearing current recipients & group", v39, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_4_64();
      sub_267ECE290();
      sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
      *(&v76 + 1) = sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
      *&v75 = v35;
      v40 = v35;
      sub_267ECE290();
      v41 = sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
      v42 = sub_267D2904C(v41);
      sub_267D294C0(v42, v43);
      sub_267D291CC(0);
    }
  }

  if (a4)
  {
    OUTLINED_FUNCTION_58_13();
    if (!v56)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v44 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v46))
    {
      v47 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v47);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v48, v49, "#SendMessageChangeHandler modify app, updating intent for app change");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267E81CAC(a2, a3, a4);
  }

  sub_267ED9A2C(a1);
  if (!v50)
  {
    goto LABEL_54;
  }

  v51 = sub_267ED9A2C(a2);
  v53 = v52;
  v54 = sub_267ED9A2C(a1);
  if (!v53)
  {
    if (!v55)
    {
LABEL_54:
      v58 = 0;
      goto LABEL_55;
    }

LABEL_52:

    v58 = 1;
    goto LABEL_55;
  }

  if (!v55)
  {
    goto LABEL_52;
  }

  v56 = v51 == v54 && v53 == v55;
  if (v56)
  {

    goto LABEL_54;
  }

  v57 = sub_267EF9EA8();

  v58 = v57 ^ 1;
LABEL_55:
  *(v11 + 209) = v58 & 1;
  sub_267ECE5F0();
  v59 = *(v11 + 136);
  v77 = 0;
  v75 = 0u;
  v76 = 0u;

  sub_267C3A088();
  sub_267B9F98C(&v75, &qword_280229508, &unk_267EFD960);
  __swift_project_boxed_opaque_existential_0(v6 + 13, v6[16]);
  sub_267EF3B18();
  v60 = [a2 typeName];
  sub_267EF9028();

  v61 = swift_allocObject();
  *(v61 + 16) = a2;
  *(v61 + 24) = v59;

  v62 = a2;
  LOBYTE(v75) = 1;
  OUTLINED_FUNCTION_26_36(v62, v63, v64, 0x100000000);
  OUTLINED_FUNCTION_74();
  sub_267EF3848();
}

uint64_t sub_267E81224(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v81 - v7;
  v9 = v2[2];
  *(v9 + 42) = 0;
  v10 = sub_267ED9A2C(a1);
  v12 = &off_279C2E000;
  v82 = v2;
  if (v11)
  {
    v13 = v10;
    v14 = v11;
    v15 = sub_267ED9A2C(a2);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v81 = v9;
      __swift_project_boxed_opaque_existential_0(v2 + 8, v2[11]);
      sub_267EF3B68();
      v19 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
      v20 = sub_267D5E5A0(v13, v14, v8, v17, v18);
      v22 = v21;

      sub_267B9F98C(v8, &unk_28022AF10, &unk_267F001E0);
      OUTLINED_FUNCTION_44_1();
      if (!v23)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v24 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
      v25 = sub_267EF89F8();
      v26 = sub_267EF95D8();
      v27 = OUTLINED_FUNCTION_5_2(v26);
      v9 = v81;
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v28);
        OUTLINED_FUNCTION_81(&dword_267B93000, v29, v26, "#SendMessageChangeHandler append content request with new content");
        OUTLINED_FUNCTION_26();
      }

      v85 = MEMORY[0x277D837D0];
      v83 = v20;
      v84 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_44_1();
      if (!v23)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v31 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
      v32 = sub_267EF89F8();
      v33 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_9_53(v33))
      {
        v34 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v34);
        OUTLINED_FUNCTION_81(&dword_267B93000, v35, &off_279C2E000, "#SendMessageChangeHandler append content when previous content was nil, setting new content as the content");
        OUTLINED_FUNCTION_26();
      }

      v85 = MEMORY[0x277D837D0];
      v83 = v13;
      v84 = v14;
    }

    OUTLINED_FUNCTION_31_28();
    sub_267ECE290();
    sub_267B9F98C(&v83, &qword_28022AEF0, &qword_267EFCDE0);
    *(v9 + 209) = 1;
    v12 = &off_279C2E000;
  }

  else
  {
    sub_267ED9A2C(a1);
    if (v30 || sub_267BCEA0C(a1))
    {
    }

    else
    {
      v74 = [a1 speakableGroupName];
      if (v74)
      {
      }

      else
      {
        *(v9 + 48) = sub_267ED9A2C(a2);
        *(v9 + 56) = v75;

        OUTLINED_FUNCTION_44_1();
        if (!v23)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v76 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);
        v77 = sub_267EF89F8();
        v78 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v78))
        {
          v79 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v79);
          OUTLINED_FUNCTION_81(&dword_267B93000, v80, v78, "#SendMessageChangeHandler append content request without new content, saving current content and clearing content in the intent");
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_61_12();
        OUTLINED_FUNCTION_31_28();
        sub_267ECE290();
        sub_267B9F98C(&v83, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }
  }

  v36 = sub_267BCEA0C(a1);
  if (v36)
  {
    v37 = v36;
    OUTLINED_FUNCTION_44_1();
    if (!v23)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v40))
    {
      v41 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v41);
      OUTLINED_FUNCTION_81(&dword_267B93000, v42, v40, "#SendMessageChangeHandler append recipient request, adding recipient");
      OUTLINED_FUNCTION_26();
    }

    v43 = sub_267BCEA0C(a2);
    v44 = MEMORY[0x277D84F90];
    if (v43)
    {
      v44 = v43;
    }

    v83 = v44;
    sub_267C9B508(v37);
    v45 = sub_267ECEE14(v83);

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    v83 = v45;
    sub_267ECE290();
    sub_267B9F98C(&v83, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_61_12();
    sub_267ECE290();
    sub_267B9F98C(&v83, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267D294C0(0, 0);
    v46 = *(sub_267C7A4A0() + 16);

    if (v46)
    {
      v47 = sub_267C7A4A0();
      sub_267C7A414(v47);
    }
  }

  v48 = [a1 v12[431]];
  if (v48)
  {
    v49 = v48;
    OUTLINED_FUNCTION_44_1();
    if (!v23)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v50 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v50, qword_280240FB0);
    v51 = v49;
    v52 = sub_267EF89F8();
    v53 = sub_267EF95D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v49;
      v56 = v51;
      _os_log_impl(&dword_267B93000, v52, v53, "#SendMessageChangeHandler change group request, setting new group %@", v54, 0xCu);
      sub_267B9F98C(v55, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v85 = sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v83 = v51;
    v57 = v51;
    sub_267ECE290();
    OUTLINED_FUNCTION_74();
    v61 = sub_267B9F98C(v58, v59, v60);
    v62 = sub_267D2904C(v61);
    sub_267D294C0(v62, v63);
    OUTLINED_FUNCTION_61_12();
    sub_267ECE290();
    OUTLINED_FUNCTION_74();
    sub_267B9F98C(v64, v65, v66);
    sub_267D291CC(0);
  }

  v67 = *(v9 + 136);
  v86 = 0;
  OUTLINED_FUNCTION_61_12();

  sub_267C3911C(a2, 1);
  sub_267C3A088();
  sub_267B9F98C(&v83, &qword_280229508, &unk_267EFD960);
  __swift_project_boxed_opaque_existential_0(v82 + 13, v82[16]);
  sub_267EF3B18();
  v68 = [a2 typeName];
  sub_267EF9028();

  v69 = swift_allocObject();
  *(v69 + 16) = a2;
  *(v69 + 24) = v67;

  v70 = a2;
  LOBYTE(v83) = 1;
  OUTLINED_FUNCTION_26_36(v70, v71, v72, 0x100000000);
  OUTLINED_FUNCTION_74();
  sub_267EF3848();
}

uint64_t sub_267E819A0(uint64_t a1, void *a2)
{
  result = sub_267BCEA0C(a2);
  if (result)
  {
    v4 = result;
    v24[0] = MEMORY[0x277D84F90];
    v5 = 0;
    v22 = result & 0xC000000000000001;
    v23 = sub_267BAF0DC(result);
    v18 = a1 + 40;
    v19 = v4 + 32;
    v20 = v4;
    v21 = a1;
    while (1)
    {
      if (v5 == v23)
      {

        v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
        sub_267ECE290();
        return sub_267B9F98C(v24, &qword_28022AEF0, &qword_267EFCDE0);
      }

      sub_267BBD0EC(v5, v22 == 0, v4);
      result = v22 ? MEMORY[0x26D609870](v5, v4) : *(v19 + 8 * v5);
      v6 = result;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v8 = *(a1 + 16);
      v9 = v18;
      if (v8)
      {
        while (1)
        {

          sub_267DEB810();
          if (v10)
          {
            break;
          }

          --v8;
          v9 += 48;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v11 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
        v12 = v6;
        v13 = sub_267EF89F8();
        v14 = sub_267EF95D8();

        a1 = v21;
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          *(v15 + 4) = v12;
          *v16 = v12;
          v17 = v12;
          _os_log_impl(&dword_267B93000, v13, v14, "#SendMessageChangeHandler removing recipient: %@", v15, 0xCu);
          sub_267B9F98C(v16, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_26();
        }

        else
        {
        }

        v4 = v20;
      }

      else
      {
LABEL_10:
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v4 = v20;
        a1 = v21;
      }
    }

    __break(1u);
  }

  return result;
}