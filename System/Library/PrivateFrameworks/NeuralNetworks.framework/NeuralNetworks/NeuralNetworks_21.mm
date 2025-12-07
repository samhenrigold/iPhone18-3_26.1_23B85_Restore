uint64_t sub_25BC2B438()
{
  OUTLINED_FUNCTION_36_17();
  sub_25BC2B4B4();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_31_23();
  v1(v0);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC2B4B4()
{
  swift_beginAccess();

  v2 = sub_25BBFA86C(v1, v0);

  return v2;
}

void sub_25BC2B52C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (!(v9 >> 62))
  {
    v47 = v3;
    sub_25BC2BE34(v8, v7, v9);
    if ([swift_unknownObjectRetain() commandBuffer])
    {
      OUTLINED_FUNCTION_43_13();
      swift_unknownObjectRelease();
      swift_getObjectType();

      v12 = sub_25BBC99EC();

      [v4 encodeWaitForEvent:v12 value:v7];
      swift_unknownObjectRelease();
      if (![v8 storageMode])
      {
        sub_25BC671A0();
        swift_unknownObjectRelease();
        v21 = *(a2 + 24);
        v22 = *(a2 + 32);
        type metadata accessor for SharedMTLBufferTensorStorage();
        OUTLINED_FUNCTION_11_38();
        v23 = swift_allocObject();
        *(v23 + 24) = v8;
        *(v23 + 32) = v21;
        *(v23 + 40) = v22;
        *(v23 + 16) = v9;
        v24 = *a1;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        *a1 = v23;
        *(a1 + 8) = &off_286D50200;
        *(a1 + 16) = 0x4000000000000000;
        sub_25BCB617C();

        sub_25BBB9C64(v24, v25, v26);
        *a3 = v23;
        a3[1] = &off_286D50200;
        return;
      }

      v13 = *(a2 + 32);
      *&v51 = *(a2 + 24);
      BYTE8(v51) = v13;
      sub_25BCB1730();
      v5 = *(a2 + 24);
      v14 = *(a2 + 32);
      if (v15)
      {
        v16 = type metadata accessor for IOSurfaceTensorStorage();
        *&v51 = v5;
        LOBYTE(v49) = v14;
        OUTLINED_FUNCTION_12_28();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v17 = sub_25BB99A40(&v51, &v49, v16, v9, v5, v14, v8);

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_12_28();

        swift_unknownObjectRelease();
        v19 = *a1;
        v18 = *(a1 + 8);
        v20 = *(a1 + 16);
        *a1 = v17;
        *(a1 + 8) = &off_286D4C100;
        *(a1 + 16) = 0x4000000000000000;

        sub_25BBB9C64(v19, v18, v20);
        *a3 = v17;
        a3[1] = &off_286D4C100;
        return;
      }

      if (*(v5 + 16))
      {
        while (1)
        {
          OUTLINED_FUNCTION_92_0();
          if (!v27)
          {
            break;
          }

          OUTLINED_FUNCTION_14_32();
          if (v27)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

      v28 = 1;
LABEL_17:
      if ((v14 - 1) > 0xA)
      {
        v29 = 1;
      }

      else
      {
        v29 = qword_25BCCCC48[(v14 - 1)];
      }

      v30 = v28 * v29;
      v46 = v29;
      if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_25BCB617C();
      v31 = sub_25BBCA208(v30, 1);
      if (v31)
      {
        v14 = v31;
        if ([*(v9 + 24) commandBuffer])
        {
          OUTLINED_FUNCTION_45_14();

          swift_getObjectType();
          sub_25BC671E0(v8, 0, v14, 0, [v14 length]);
          sub_25BC671A0();
          if (qword_28154F2C8 == -1)
          {
LABEL_24:
            v33 = qword_281557400;
            v49 = *(a2 + 24);
            v60 = *(a2 + 32);
            LODWORD(v54) = 0;
            v52 = 0u;
            v53 = 0u;
            v51 = 0u;
            swift_unknownObjectRetain();
            sub_25BCB617C();
            sub_25BC73ED8(&v49, &v60, &v51, v33, v14);
            v35 = v34;
            v48 = v36;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_12_28();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_25BA9C2C8(&v51);

            v38 = *a1;
            v37 = *(a1 + 8);
            v39 = *(a1 + 16);
            *a1 = v35;
            *(a1 + 8) = v48;
            *(a1 + 16) = 0x4000000000000000;
            swift_unknownObjectRetain();
            sub_25BBB9C64(v38, v37, v39);
            *a3 = v35;
            a3[1] = v48;
            return;
          }

LABEL_26:
          swift_once();
          goto LABEL_24;
        }

        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_25BCB70FC();

    v49 = 0xD000000000000027;
    v50 = 0x800000025BCDDC80;
    v32 = *(v5 + 16);
    if (v32)
    {
      goto LABEL_33;
    }

    v40 = 1;
LABEL_30:
    v32 = v40 * v46;
    if ((v40 * v46) >> 64 == (v40 * v46) >> 63)
    {
LABEL_38:
      v44 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v44);

      MEMORY[0x25F876C90](24622, 0xE200000000000000);
      BYTE4(v58) = 9;
      sub_25BCB617C();
      sub_25BA97890("encodeAndCommitDataExport(from:on:)", 35, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", 121, 2, 219, v45, v46, v47, v49, v50, v49, v50, v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v41 = (v5 + 32);
    v42 = 1;
    while (1)
    {
      v43 = *v41++;
      v40 = v42 * v43;
      if ((v42 * v43) >> 64 != (v42 * v43) >> 63)
      {
        break;
      }

      v42 = v40;
      if (!--v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  *a3 = v8;
  if (v9 >> 62 == 1)
  {
    a3[1] = v7;
    swift_unknownObjectRetain();
  }

  else
  {
    a3[1] = &off_286D50200;
  }
}

uint64_t sub_25BC2BAC0()
{

  return v0;
}

uint64_t sub_25BC2BAE8()
{
  sub_25BC2BAC0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC2BB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  [swift_unknownObjectRetain() contents];
  [v3 length];
  sub_25BB5C3B0();
  return sub_25BCB582C();
}

uint64_t sub_25BC2BC0C()
{
  OUTLINED_FUNCTION_36_17();
  [swift_unknownObjectRetain() contents];
  v2 = [OUTLINED_FUNCTION_43_13() length];
  return v0(v1, &v2[v1]);
}

uint64_t sub_25BC2BC90()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_25BC2BCC0()
{
  sub_25BC2BC90();
  OUTLINED_FUNCTION_11_38();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC2BD20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25BC2BD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_25BC2BE34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:

      swift_unknownObjectRetain();
      break;
    case 2uLL:
      goto LABEL_3;
    case 3uLL:
      return;
    default:
      swift_unknownObjectRetain();
LABEL_3:

      break;
  }
}

uint64_t sub_25BC2BEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_48(a1, a2, a3);
  swift_weakAssign();
  OUTLINED_FUNCTION_0_69(v3 + 24);
  sub_25BAC4888();
  v4 = OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_1_58(v4, v5, v6, v7, v8, v9);
  *(v3 + 24) = v3 + 24;
  return swift_endAccess();
}

unint64_t sub_25BC2BF48()
{
  result = qword_27FBB6828;
  if (!qword_27FBB6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6828);
  }

  return result;
}

double sub_25BC2BF9C()
{
  swift_beginAccess();
  sub_25BCB617C();
  return result;
}

void sub_25BC2BFD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  if (v1 < v3)
  {
    v4 = v0;
    for (i = v2 + 8 * v1 + 32; ; i += 8)
    {
      if (v1 >= v3)
      {
        __break(1u);
        return;
      }

      sub_25BC2C250(i, v16);
      v4[1] = ++v1;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      sub_25BC2C2C0(v16);
LABEL_16:
      v3 = *(v2 + 16);
      if (v1 >= v3)
      {
        return;
      }
    }

    v7 = Strong;
    if (*(Strong + 32) > 0)
    {

      v8 = sub_25BA928B4();
      [v8 lock];

      swift_beginAccess();
      sub_25BA9323C(v7 + 40, v13);
      if (!v15)
      {
        sub_25BA9BE3C(v13, v12);
        v9 = v12[1];
        ObjectType = swift_getObjectType();
        v11 = (*(v9 + 56))(ObjectType, v9);
        sub_25BA977E0(v12);
        [*(v7 + 224) unlock];

        sub_25BC2C2C0(v16);
        if ((v11 & 1) == 0)
        {
          return;
        }

        goto LABEL_15;
      }

      if (v15 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v14);
      }

      else
      {
        sub_25BA9778C(v13);
      }

      [*(v7 + 224) unlock];
    }

    sub_25BC2C2C0(v16);
LABEL_15:

    goto LABEL_16;
  }
}

uint64_t sub_25BC2C1C8@<X0>(void *a1@<X8>)
{
  sub_25BC2BF9C();
  v3 = v2;

  *a1 = v3;
  a1[1] = 0;
  return result;
}

uint64_t sub_25BC2C250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BC2C2C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BC2C338(uint64_t a1)
{
  v2 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_25BB00694(0, v2, 0);
  v3 = sub_25BC4E1E4();
  sub_25BCB617C();
  sub_25BC2C54C(v3, a1);
  v5 = v4;

  v26 = v5;
  if (v2)
  {
    v6 = 0;
    v24 = v2;
    v25 = *(v5 + 16);
    v7 = (v5 + 56);
    v8 = v5;
    while (v25 != v6)
    {
      if (v6 >= *(v8 + 16))
      {
        __break(1u);
        break;
      }

      v10 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      sub_25BCB617C();
      sub_25BCB617C();
      if (!v9)
      {
        break;
      }

      v14 = *(v27 + 16);
      v13 = *(v27 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25BB00694(v13 > 1, v14 + 1, 1);
        v8 = v26;
      }

      ++v6;
      *(v27 + 16) = v14 + 1;
      v15 = v27 + 32 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v9;
      *(v15 + 48) = v11;
      *(v15 + 56) = v12;
      v7 += 32;
      v2 = v24;
      if (v24 == v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = v5;
LABEL_11:
    v16 = (v8 + 32 * v2 + 56);
    while (v2 < *(v8 + 16))
    {
      v17 = *(v16 - 3);
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      sub_25BCB617C();
      sub_25BCB617C();
      if (v22 >= v21 >> 1)
      {
        sub_25BB00694(v21 > 1, v22 + 1, 1);
      }

      *(v27 + 16) = v22 + 1;
      v23 = v27 + 32 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v18;
      *(v23 + 48) = v19;
      *(v23 + 56) = v20;
      v16 += 32;
      ++v2;
      v8 = v26;
    }
  }
}

void sub_25BC2C54C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v35 = MEMORY[0x277D84F90];
  sub_25BB00674(0, v6, 0);
  v27 = v5;
  v28 = v4;
  v25 = a2;
  v26 = a1;
  v29 = v6;
  if (v6)
  {
    sub_25BCB617C();
    sub_25BCB617C();
    v7 = (a2 + 40);
    v8 = (a1 + 40);
    v9 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_24;
      }

      v10 = *v8;
      v31 = *(v8 - 1);
      v11 = *(v7 - 1);
      v32 = *v7;
      v13 = *(v35 + 16);
      v12 = *(v35 + 24);
      v33 = v13 + 1;
      sub_25BCB617C();
      sub_25BCB617C();
      if (v13 >= v12 >> 1)
      {
        sub_25BB00674(v12 > 1, v33, 1);
      }

      *(v35 + 16) = v33;
      v14 = v35 + 32 * v13;
      *(v14 + 32) = v31;
      *(v14 + 40) = v10;
      --v5;
      *(v14 + 48) = v11;
      *(v14 + 56) = v32;
      --v4;
      v7 += 16;
      v8 += 2;
      if (!--v9)
      {
        goto LABEL_13;
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
    __break(1u);
  }

  else
  {
    sub_25BCB617C();
    sub_25BCB617C();
LABEL_13:
    v15 = v29;
    v34 = 16 * v29;
    v16 = v25;
    for (i = v26; v28 != v15; i += 16)
    {
      if (v15 >= v28)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (v27 == v15)
      {
        break;
      }

      if (v15 >= v27)
      {
        goto LABEL_27;
      }

      v30 = v15;
      v18 = *(i + v34 + 32);
      v19 = *(i + v34 + 40);
      v20 = *(v16 + v34 + 32);
      v21 = *(v16 + v34 + 40);
      v23 = *(v35 + 16);
      v22 = *(v35 + 24);
      sub_25BCB617C();
      sub_25BCB617C();
      if (v23 >= v22 >> 1)
      {
        sub_25BB00674(v22 > 1, v23 + 1, 1);
      }

      *(v35 + 16) = v23 + 1;
      v24 = v35 + 32 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v19;
      *(v24 + 48) = v20;
      *(v24 + 56) = v21;
      v16 += 16;
      v15 = v30 + 1;
    }
  }
}

uint64_t sub_25BC2C7BC()
{
  v1 = [objc_opt_self() defaultManager];
  sub_25BCB595C();
  v2 = sub_25BCB633C();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBDF80;
    *(inited + 32) = 7633012;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 7104877;
    *(inited + 56) = 0xE300000000000000;
    *(inited + 64) = 0x67616B6361706C6DLL;
    *(inited + 72) = 0xE900000000000065;
    *(inited + 80) = 0x636C65646F6D6C6DLL;
    *(inited + 88) = 0xE800000000000000;
    sub_25BCB590C();
    v5 = sub_25BCB63BC();
    v7 = v6;

    v0[43] = v5;
    v0[44] = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 43;
    v9 = sub_25BAD9FE0(sub_25BADA100, v8, inited);
    v0[47] = 0;
    swift_setDeallocating();
    sub_25BC0C514();

    if (v9)
    {
      v10 = v0[46];
      v11 = objc_opt_self();
      v12 = sub_25BCB592C();
      v0[48] = v12;
      v13 = *(v10 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_context);
      v0[2] = v0;
      v0[7] = v0 + 45;
      v0[3] = sub_25BC2CB34;
      v14 = swift_continuation_init();
      v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FBB6848, &unk_25BCCCE58);
      v0[22] = MEMORY[0x277D85DD0];
      v0[23] = 1107296256;
      v0[24] = sub_25BC2D0D8;
      v0[25] = &block_descriptor_2;
      v0[26] = v14;
      [v11 loadContentsOfURL:v12 withContext:v13 completion:v0 + 22];

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_25BC2E4E0();
    swift_allocError();
    *v15 = xmmword_25BCC06A0;
  }

  else
  {
    sub_25BC2E4E0();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
  }

  *(v15 + 16) = 4;
  swift_willThrow();
  OUTLINED_FUNCTION_0_70();

  return v16();
}

uint64_t sub_25BC2CB34()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_25BC2CF5C;
  }

  else
  {
    v2 = sub_25BC2CC44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25BC2CC44()
{
  v1 = v0[48];
  v2 = v0[46];
  v3 = OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program;
  v4 = *(v2 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program);
  *(v2 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program) = v0[45];

  v5 = *(v2 + v3);
  if (v5 && (v6 = v5, v7 = sub_25BCB633C(), v8 = [v6 functionWithName_], v7, v6, v8))
  {
    v9 = v0[47];
    type metadata accessor for MILFunctionParser();
    swift_initStackObject();
    v10 = v8;
    v11 = sub_25BC2D410(v10);
    sub_25BC2D498();
    if (!v9)
    {
      sub_25BC2DA64();
      v17 = v0[46];
      swift_beginAccess();
      v18 = v11[3];
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BC2C338(v18);
      v20 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      *(&v29 + 1) = sub_25BCB614C();
      v21 = sub_25BAF9B54(v20);

      *&v29 = v21;
      sub_25BAFC990();
      v22 = *(v17 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs);
      *(v17 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs) = v29;
      sub_25BC2E4A0(v22);
      swift_beginAccess();
      v23 = v11[5];
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BC2C338(v23);
      v25 = v24;

      *(&v29 + 1) = sub_25BCB614C();
      v26 = sub_25BAF9B54(v25);

      *&v29 = v26;
      sub_25BAFC990();

      v27 = *(v17 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs);
      *(v17 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs) = v29;
      sub_25BC2E4A0(v27);
      OUTLINED_FUNCTION_0_70();
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v0[46];
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    sub_25BC2E4E0();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 3;
    swift_willThrow();
    sub_25BCB617C();
  }

  OUTLINED_FUNCTION_0_70();
LABEL_8:

  return v28();
}

uint64_t sub_25BC2CF5C(uint64_t a1)
{
  v2 = *(v1 + 384);
  swift_willThrow();

  OUTLINED_FUNCTION_0_70();

  return v3();
}

uint64_t sub_25BC2CFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program) = 0;
  v7 = (v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_url;
  v10 = sub_25BCB598C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3 + v9, a1, v10);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v12 = [objc_allocWithZone(SNNMILContext) init];
  (*(v11 + 8))(a1, v10);
  *(v3 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_context) = v12;
  return v3;
}

uint64_t *sub_25BC2D0D8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_25BC2D168(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_25BC2D1D4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC2D168(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_25BC2D1F4()
{

  v1 = OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_url;
  v2 = sub_25BCB598C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_25BC2E4A0(*(v0 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs));
  sub_25BC2E4A0(*(v0 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs));
  return v0;
}

uint64_t sub_25BC2D2A4()
{
  sub_25BC2D1F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MILProgramParser(uint64_t a1)
{
  result = qword_27FBB6830;
  if (!qword_27FBB6830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BC2D350(uint64_t a1)
{
  result = sub_25BCB598C();
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

void *sub_25BC2D410(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25BCB614C();
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_25BCB614C();
  v1[5] = v3;
  v1[6] = v5;
  v1[2] = a1;
  return v1;
}

uint64_t sub_25BC2D498()
{
  v1 = v0;
  v56 = *(v0 + 16);
  v2 = [v56 inputNames];
  v3 = sub_25BCB673C();

  v4 = 0;
  v57 = *(v3 + 16);
  v54 = v1;
  v55 = v3 + 32;
  v53 = v3;
  while (1)
  {
    if (v4 == v57)
    {
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v5 = (v55 + 16 * v4);
    v6 = *v5;
    v7 = v5[1];
    sub_25BCB617C();
    v62 = v6;
    v8 = sub_25BCB633C();
    v9 = [v56 inputWithName_];

    if (!v9)
    {

LABEL_45:
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_25BCB70FC();

      v63 = 0xD00000000000002ELL;
      v64 = 0x800000025BCE3960;
      MEMORY[0x25F876C90](v6, v7);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v50 = v63;
      v51 = v64;
      sub_25BC2E4E0();
      swift_allocError();
      *v52 = v50;
      *(v52 + 8) = v51;
      *(v52 + 16) = 2;
      return swift_willThrow();
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      goto LABEL_45;
    }

    v60 = v10;
    v61 = v7;
    v11 = [v10 dimensions];
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v12 = sub_25BCB673C();

    if (v12 >> 62)
    {
      v13 = sub_25BCB749C();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v9;
    v59 = v4;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_25BAA21EC(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_48;
      }

      v14 = 0;
      v15 = v63;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x25F8779B0](v14, v12);
        }

        else
        {
          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 integerValue];

        v63 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_25BAA21EC(v19 > 1, v20 + 1, 1);
          v15 = v63;
        }

        ++v14;
        *(v15 + 16) = v20 + 1;
        *(v15 + 8 * v20 + 32) = v18;
      }

      while (v13 != v14);

      v3 = v53;
      v1 = v54;
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_25BC9B304([v60 dataType], &v63);
    v21 = v63;
    swift_beginAccess();
    v22 = *(v1 + 32);
    if (*(v22 + 16) && (v23 = sub_25BA9266C(v6, v61), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v26 = *(v1 + 24);
      if (v25 >= *(v26 + 16))
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BBF149C();
        v26 = v48;
        *(v1 + 24) = v48;
      }

      if (v25 >= *(v26 + 16))
      {
        goto LABEL_52;
      }

      v28 = v26 + 16 * v25;
      *(v28 + 32) = v15;
      *(v28 + 40) = v21;
      sub_25BCB617C();

      *(v1 + 24) = v26;
      v29 = v59;
    }

    else
    {
      v30 = *(v1 + 24);
      sub_25BCB617C();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v30;
      if ((v31 & 1) == 0)
      {
        sub_25BAC944C();
        v30 = v46;
        *(v1 + 24) = v46;
      }

      v32 = *(v30 + 16);
      if (v32 >= *(v30 + 24) >> 1)
      {
        sub_25BAC944C();
        v30 = v47;
      }

      *(v30 + 16) = v32 + 1;
      v33 = v30 + 16 * v32;
      *(v33 + 32) = v15;
      *(v33 + 40) = v21;
      *(v1 + 24) = v30;
      swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v1 + 32);
      v34 = v65;
      *(v1 + 32) = 0x8000000000000000;
      v35 = sub_25BA9266C(v6, v61);
      if (__OFADD__(v34[2], (v36 & 1) == 0))
      {
        goto LABEL_47;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v39 = sub_25BA9266C(v6, v61);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_53;
        }

        v37 = v39;
      }

      v29 = v59;
      v41 = v65;
      if (v38)
      {
        *(v65[7] + 8 * v37) = v32;
      }

      else
      {
        v65[(v37 >> 6) + 8] |= 1 << v37;
        v42 = (v41[6] + 16 * v37);
        *v42 = v62;
        v42[1] = v61;
        *(v41[7] + 8 * v37) = v32;
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_49;
        }

        v41[2] = v45;
        sub_25BCB617C();
      }

      *(v1 + 32) = v41;
    }

    v4 = v29 + 1;
    swift_endAccess();
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

void sub_25BC2DA64()
{
  v2 = v1;
  v3 = v0;
  v75 = *(v0 + 16);
  v4 = [v75 outputNames];
  v5 = sub_25BCB673C();

  if (!*(v5 + 16))
  {
LABEL_81:

    return;
  }

  v6 = 0;
  v7 = v5 + 32;
  v8 = &off_279972000;
  v76 = v3;
  v72 = v5;
  v67 = v5 + 32;
  v68 = *(v5 + 16);
  while (1)
  {
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_95;
    }

    v9 = (v7 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];
    v4 = v6;
    sub_25BCB617C();
    v12 = [v75 v8[489]];
    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      sub_25BCB795C();
      __break(1u);
LABEL_98:
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_25BCB70FC();
      v85 = v87;
      v86 = v88;
      MEMORY[0x25F876C90](0x7079742061746144, 0xEB00000000602065);
      v87 = v4;
      type metadata accessor for SNNDataType(0);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](0xD000000000000029, 0x800000025BCE3890);
      v87 = v85;
      v88 = v86;
      v89 = 9;
      sub_25BCB617C();
      sub_25BA97890("isTensorScalarKindConvertible", 29, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/SNNExtensions.swift", 113, 2, 86, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v2, v76, v77, v78, v79, v80);
    }

    v13 = 0;
    v69 = ++v4;
    v70 = v12;
    v81 = v11;
    v82 = v10;
LABEL_6:
    if (v13 != v12)
    {
      break;
    }

    v6 = v69;
    v5 = v72;
    v7 = v67;
    v8 = &off_279972000;
    if (v69 == v68)
    {
      goto LABEL_81;
    }
  }

  if (__OFADD__(v13, 1))
  {
    goto LABEL_94;
  }

  v71 = v13 + 1;
  v14 = [v75 operationAtIndex_];
  if (!v14)
  {

    sub_25BC2E4E0();
    swift_allocError();
    *v64 = xmmword_25BCBC6A0;
    *(v64 + 16) = 4;
    swift_willThrow();
    return;
  }

  v73 = v14;
  v4 = [v14 outputs];
  sub_25BB2BA50(0, &qword_28154BE08, off_279970C18);
  v15 = sub_25BCB673C();

  v16 = 0;
  v79 = v15 & 0xC000000000000001;
  v80 = sub_25BA9BEA0(v15);
  v74 = v15;
  v77 = v15 + 32;
  v78 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v16 == v80)
    {

      v12 = v70;
      v13 = v71;
      goto LABEL_6;
    }

    if (v79)
    {
      v17 = MEMORY[0x25F8779B0](v16, v74);
    }

    else
    {
      if (v16 >= *(v78 + 16))
      {
        goto LABEL_87;
      }

      v17 = *(v77 + 8 * v16);
    }

    v4 = v17;
    v18 = __OFADD__(v16++, 1);
    if (v18)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {

      goto LABEL_84;
    }

    v20 = v19;
    v21 = v4;
    v84 = v20;
    v22 = sub_25BC2E534(v20);
    if (!v23)
    {
      break;
    }

    v24 = v22;
    v25 = v23;
    v90 = v21;

    if (v24 == v11 && v25 == v10)
    {

      v27 = v90;
    }

    else
    {
      v4 = sub_25BCB789C();

      v27 = v90;
      if ((v4 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v28 = v84;
    v29 = [v84 dataType];
    if ((v29 - 2) >= 0xB && (v4 = v29) != 0)
    {
      if (v29 != 1)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v30 = [v84 dimensions];
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v31 = sub_25BCB673C();

      if (v31 >> 62)
      {
        v4 = sub_25BCB749C();
      }

      else
      {
        v4 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v16;
      if (v4)
      {
        v87 = MEMORY[0x277D84F90];
        sub_25BAA21EC(0, v4 & ~(v4 >> 63), 0);
        if (v4 < 0)
        {
          goto LABEL_89;
        }

        v32 = 0;
        v33 = v87;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x25F8779B0](v32, v31);
          }

          else
          {
            v34 = *(v31 + 8 * v32 + 32);
          }

          v35 = v34;
          v36 = [v34 integerValue];

          v87 = v33;
          v38 = *(v33 + 16);
          v37 = *(v33 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_25BAA21EC(v37 > 1, v38 + 1, 1);
            v33 = v87;
          }

          ++v32;
          *(v33 + 16) = v38 + 1;
          *(v33 + 8 * v38 + 32) = v36;
        }

        while (v4 != v32);

        v11 = v81;
        v10 = v82;
        v28 = v84;
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      sub_25BC9B304([v28 dataType], &v87);
      v39 = &protocol witness table for Int8;
      switch(v87)
      {
        case 1:
          v39 = &protocol witness table for Int16;
          break;
        case 2:
          v39 = &protocol witness table for Int32;
          break;
        case 3:
          v39 = &protocol witness table for Int;
          break;
        case 4:
          v39 = &protocol witness table for UInt8;
          break;
        case 5:
          v39 = &protocol witness table for UInt16;
          break;
        case 6:
          v39 = &protocol witness table for UInt32;
          break;
        case 7:
          v39 = &protocol witness table for UInt64;
          break;
        case 8:
          v39 = &protocol witness table for Float16;
          break;
        case 9:
          v39 = sub_25BB18AFC();
          break;
        case 10:
          v39 = &protocol witness table for Float;
          break;
        case 11:
          v39 = &protocol witness table for Double;
          break;
        case 12:
          v39 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      (v39[4])(&v85);
      v40 = v85;
      swift_beginAccess();
      v41 = *(v76 + 48);
      if (*(v41 + 16) && (v42 = sub_25BA9266C(v11, v10), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v4 = *(v76 + 40);
        if (v44 >= *(v4 + 16))
        {
          goto LABEL_92;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v76 + 40) = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF149C();
          v4 = v62;
          *(v76 + 40) = v62;
        }

        if (v44 >= *(v4 + 16))
        {
          goto LABEL_93;
        }

        v46 = v4 + 16 * v44;
        *(v46 + 32) = v33;
        *(v46 + 40) = v40;
        sub_25BCB617C();

        *(v76 + 40) = v4;
        v27 = v90;
      }

      else
      {
        v4 = *(v76 + 40);
        sub_25BCB617C();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(v76 + 40) = v4;
        if ((v47 & 1) == 0)
        {
          sub_25BAC944C();
          v4 = v60;
          *(v76 + 40) = v60;
        }

        v48 = *(v4 + 16);
        if (v48 >= *(v4 + 24) >> 1)
        {
          sub_25BAC944C();
          v4 = v61;
        }

        *(v4 + 16) = v48 + 1;
        v49 = v4 + 16 * v48;
        *(v49 + 32) = v33;
        *(v49 + 40) = v40;
        *(v76 + 40) = v4;
        swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v76 + 48);
        v50 = v85;
        *(v76 + 48) = 0x8000000000000000;
        v51 = sub_25BA9266C(v11, v10);
        if (__OFADD__(v50[2], (v52 & 1) == 0))
        {
          goto LABEL_88;
        }

        v4 = v51;
        v53 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
        if (sub_25BCB745C())
        {
          v54 = sub_25BA9266C(v81, v82);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_97;
          }

          v4 = v54;
        }

        v27 = v90;
        v56 = v85;
        if (v53)
        {
          *(v85[7] + 8 * v4) = v48;
          v11 = v81;
          v10 = v82;
        }

        else
        {
          v85[(v4 >> 6) + 8] |= 1 << v4;
          v57 = (v56[6] + 16 * v4);
          v11 = v81;
          v10 = v82;
          *v57 = v81;
          v57[1] = v82;
          *(v56[7] + 8 * v4) = v48;
          v58 = v56[2];
          v18 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v18)
          {
            goto LABEL_90;
          }

          v56[2] = v59;
          sub_25BCB617C();
        }

        *(v76 + 48) = v56;
      }

      swift_endAccess();

      v16 = v83;
    }

LABEL_76:
  }

LABEL_84:

  sub_25BC2E4E0();
  swift_allocError();
  *v63 = xmmword_25BCBCE30;
  *(v63 + 16) = 4;
  swift_willThrow();
}

uint64_t sub_25BC2E404()
{

  return v0;
}

uint64_t sub_25BC2E44C()
{
  sub_25BC2E404();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC2E4A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25BC2E4E0()
{
  result = qword_27FBB6840;
  if (!qword_27FBB6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6840);
  }

  return result;
}

uint64_t sub_25BC2E534(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25BCB636C();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks15MILParsingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_25BC2E5B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_25BC2E5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC2E638(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25BC2E660(char a1)
{
  switch(a1)
  {
    case 1:
      v3 = " for one or more parameters";
      v4 = 0xD000000000000027;
      v6 = 71;
      goto LABEL_9;
    case 2:
      v3 = "on-differentiable tensor";
      v7 = 73;
      v4 = 0xD00000000000002BLL;
      goto LABEL_10;
    case 3:
      v1 = "ts for the given variable";
      v2 = 75;
      goto LABEL_6;
    case 4:
      v3 = "Output gradients are read-only.";
      v7 = 77;
      v4 = 0xD000000000000029;
      goto LABEL_10;
    case 5:
      v3 = "ifferentiableLayer.swift";
      v4 = 0xD00000000000001FLL;
      v6 = 79;
LABEL_9:
      v7 = v6;
LABEL_10:
      result = sub_25BCB74CC("Fatal error", 11, 2, v4, v3 | 0x8000000000000000, "NeuralNetworks/DifferentiableLayer.swift", 40, 2, v7);
      break;
    default:
      v1 = " for one or more inputs";
      v2 = 69;
LABEL_6:
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000028, v1 | 0x8000000000000000, "NeuralNetworks/DifferentiableLayer.swift", 40, 2, v2);
      break;
  }

  __break(1u);
  return result;
}

uint64_t GradientContext.subscript.getter@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = v3 + a2[9];
  swift_retain_n();
  v45[0] = sub_25BAC42B0();
  v45[1] = v8;
  v9 = OUTLINED_FUNCTION_4_53();

  if (v9)
  {
    v10 = *(v7 + 8);
    OUTLINED_FUNCTION_3_49();
    v11 = sub_25BAC42B0();
    if (*(v10 + 16))
    {
      v13 = sub_25BA9266C(v11, v12);
      v15 = v14;

      if (v15)
      {
        v16 = *(*(v10 + 56) + 8 * v13);
LABEL_9:

        *a3 = v16;
        return result;
      }
    }

    else
    {
    }

    sub_25BC2E660(0);
    goto LABEL_19;
  }

  v17 = (v3 + a2[10]);
  v18 = *v17;
  swift_retain_n();
  v19 = sub_25BAC42B0();
  v21 = OUTLINED_FUNCTION_1_59(v19, v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_71();
  *(v22 - 16) = v45;
  LOBYTE(v18) = sub_25BAD9FE0(sub_25BC2F418, v23, v18);

  if (v18)
  {
    v24 = v17[1];
    OUTLINED_FUNCTION_3_49();
    v25 = sub_25BAC42B0();
    if (*(v24 + 16))
    {
      v27 = sub_25BA9266C(v25, v26);
      v29 = v28;

      if (v29)
      {
LABEL_8:
        v16 = *(*(v24 + 56) + 8 * v27);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v31 = (v3 + a2[11]);
  v32 = *v31;
  swift_retain_n();
  v33 = sub_25BAC42B0();
  v35 = OUTLINED_FUNCTION_1_59(v33, v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_71();
  *(v36 - 16) = v45;
  LOBYTE(v32) = sub_25BAD9FE0(sub_25BC2F418, v37, v32);

  if (v32)
  {
    v24 = v31[1];
    OUTLINED_FUNCTION_3_49();
    v38 = sub_25BAC42B0();
    if (*(v24 + 16))
    {
      v27 = sub_25BA9266C(v38, v39);
      v41 = v40;

      if (v41)
      {
        goto LABEL_8;
      }

LABEL_13:

LABEL_15:
      v45[0] = v6;

      return Tensor.init(zerosLike:)(v45);
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_19:
  sub_25BC2E660(4);
  return sub_25BC2EABC(v42, v43, v44);
}

uint64_t sub_25BC2EABC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  v9 = *a1;
  v7 = type metadata accessor for GradientContext(0, v6, v5, a4);

  GradientContext.subscript.getter(&v9, v7, &v10);

  *a3 = v10;
  return result;
}

uint64_t sub_25BC2EB38(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v9 = *a3;
  v10 = v6;
  v7 = type metadata accessor for GradientContext(0, v4, v5, a4);

  return GradientContext.subscript.setter(&v10, &v9, v7);
}

uint64_t GradientContext.subscript.setter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v5 = *a2;
  v6 = v3;
  GradientContext.updateGradient(_:for:)(&v6, &v5, a3);
}

uint64_t (*GradientContext.updateGradient(_:for:)(uint64_t a1, uint64_t *a2, uint64_t a3))()
{
  swift_retain_n();
  v37[0] = sub_25BAC42B0();
  v37[1] = v5;
  v6 = OUTLINED_FUNCTION_4_53();

  if (v6)
  {
    sub_25BC2E660(5);
  }

  else
  {
    v7 = (v3 + *(a3 + 40));
    v8 = *v7;
    swift_retain_n();
    v9 = sub_25BAC42B0();
    v11 = OUTLINED_FUNCTION_1_59(v9, v10);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_0_71();
    *(v12 - 16) = v37;
    v14 = sub_25BAD9FE0(sub_25BC2F418, v13, v8);

    if (v14)
    {
      OUTLINED_FUNCTION_2_61();

      v15 = sub_25BAC42B0();
      v17 = OUTLINED_FUNCTION_1_59(v15, v16);
      MEMORY[0x28223BE20](v17);
      OUTLINED_FUNCTION_0_71();
      *(v18 - 16) = v37;
      if (sub_25BAD9FE0(sub_25BC2F418, v19, v8))
      {
        swift_isUniquelyReferenced_nonNull_native();
        v37[0] = v7[1];
        sub_25BAC4594();

        v7[1] = v37[0];
        return result;
      }

LABEL_8:
    }

    v21 = (v3 + *(a3 + 44));
    v22 = *v21;
    OUTLINED_FUNCTION_2_61();
    v23 = sub_25BAC42B0();
    v25 = OUTLINED_FUNCTION_1_59(v23, v24);
    MEMORY[0x28223BE20](v25);
    OUTLINED_FUNCTION_0_71();
    *(v26 - 16) = v37;
    v28 = sub_25BAD9FE0(sub_25BC2F418, v27, v22);

    if (v28)
    {
      OUTLINED_FUNCTION_2_61();

      v29 = sub_25BAC42B0();
      v31 = OUTLINED_FUNCTION_1_59(v29, v30);
      MEMORY[0x28223BE20](v31);
      OUTLINED_FUNCTION_0_71();
      *(v32 - 16) = v37;
      if (sub_25BAD9FE0(sub_25BC2F418, v33, v22))
      {
        swift_isUniquelyReferenced_nonNull_native();
        v37[0] = v21[1];
        sub_25BAC4594();

        v21[1] = v37[0];
        return result;
      }

      goto LABEL_8;
    }
  }

  v34 = sub_25BC2E660(4);
  return GradientContext.subscript.modify(v34, v35, v36);
}

uint64_t (*GradientContext.subscript.modify(void *a1, uint64_t *a2, int *a3))(uint64_t *a1, char a2)
{
  a1[1] = a3;
  a1[2] = v3;
  v6 = *a2;
  a1[3] = *a2;
  v8 = v6;
  swift_retain_n();
  GradientContext.subscript.getter(&v8, a3, a1);

  return sub_25BC2EFB0;
}

uint64_t sub_25BC2EFB0(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;
    v6 = v2;

    GradientContext.subscript.setter(&v5, &v6, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v2;
    return GradientContext.subscript.setter(&v5, &v6, v3);
  }
}

uint64_t sub_25BC2F040(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BC2F0BC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BC2F208(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BC2F434()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_25BCB54EC();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 40);
  type metadata accessor for TensorHandle();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  swift_retain_n();
  sub_25BAA6EB0();

  v14 = sub_25BBCB800(v13);

  v16 = *(v14 + 16);
  if (v16 < 2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 == 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 < 4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16 == 4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v16 < 6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 != 6)
  {
    v50 = *(v14 + 36);
    v17 = *(v14 + 52);

    sub_25BB6B190(v50, v17);
    sub_25BB6B5B0(v18);
    v50.i64[0] = MEMORY[0x25F878460](0, v19, 0);
    type metadata accessor for NativeTensorStorage(0);
    sub_25BC31C8C(v53);
    v54[0] = *&v53[0];
    sub_25BC31C8C(v52);
    v20 = BYTE8(v52[0]);

    v51[0] = v20;
    sub_25BBC0130(v54, v51, 0, 0);
    v49 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v22 = swift_allocObject();
    v47 = xmmword_25BCBAE50;
    *(v22 + 16) = xmmword_25BCBAE50;
    sub_25BC31C8C(v53);
    result = *&v53[0];
    v23 = *(*&v53[0] + 16);
    if (v23)
    {
      v24 = (*&v53[0] + 32);
      v25 = 1;
      while (1)
      {
        v26 = *v24++;
        v27 = v25 * v26;
        if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
        {
          break;
        }

        v25 = v27;
        if (!--v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

    v27 = 1;
LABEL_13:
    *(v22 + 32) = v27;

    v28 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v28);
    sub_25BCB54FC();
    v29 = v48;
    (*(v48 + 16))(v5, v11, v9);
    v30 = __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    MEMORY[0x28223BE20](v30);
    v31 = v50.i64[0];
    *(&v47 - 2) = v2;
    *(&v47 - 1) = v31;
    sub_25BC2FD94(v5, sub_25BC30FF0, (&v47 - 2), &v47);
    v32 = v9;
    if (v1)
    {

      sub_25BAA6F5C(v5, &qword_27FBB4080, &qword_25BCBC638);
      v33 = *(v29 + 8);
      v34 = v11;
      v35 = v9;
    }

    else
    {
      sub_25BAA6F5C(v5, &qword_27FBB4080, &qword_25BCBC638);
      sub_25BB2C64C(v2 + 48, v53);
      memcpy(v52, v53, 0x79uLL);
      if (BYTE8(v52[7]) != 1)
      {
        sub_25BBE12D8(v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v32 = swift_allocObject();
        *(v32 + 16) = v47;
        *(v32 + 32) = v49;
        *(v32 + 40) = &off_286D4DBE0;
        v39 = OUTLINED_FUNCTION_0_72();
        v40(v39);
        goto LABEL_20;
      }

      sub_25BA97060(&v52[5], v54);
      __swift_destroy_boxed_opaque_existential_1(&v52[2] + 1);
      __swift_destroy_boxed_opaque_existential_1(v52);
      sub_25BAC27B0(v54, v51);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68D0, &qword_25BCCCFF0);
      if (swift_dynamicCast())
      {
        sub_25BADF778(v52, v53);
        v36 = *(&v53[1] + 1);
        v37 = v53[2];
        v38 = __swift_project_boxed_opaque_existential_1(v53, *(&v53[1] + 1));
        v42 = sub_25BC30160(v38, v2, v49, v36, v37, *(&v37 + 1));
        v44 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v32 = swift_allocObject();
        *(v32 + 16) = v47;
        *(v32 + 32) = v42;
        *(v32 + 40) = v44;

        __swift_destroy_boxed_opaque_existential_1(v54);
        v45 = OUTLINED_FUNCTION_0_72();
        v46(v45);
        __swift_destroy_boxed_opaque_existential_1(v53);
        goto LABEL_20;
      }

      memset(v52, 0, 48);
      sub_25BAA6F5C(v52, &qword_27FBB68D8, &qword_25BCCCFF8);
      sub_25BB0E2EC();
      swift_allocError();
      *v41 = xmmword_25BCCCFC0;
      *(v41 + 16) = 24576;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v54);
      v34 = OUTLINED_FUNCTION_0_72();
    }

    v33(v34, v35);
LABEL_20:
    MEMORY[0x25F878470](v50.i64[0]);
    return v32;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25BC2FAD4(BNNSNDArrayDescriptor *a1, uint64_t a2, void *a3)
{
  sub_25BB2C64C(a2 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (!BYTE8(__dst[7]))
  {
    sub_25BA97060(__dst, v23);
    sub_25BA97060((&__dst[2] + 8), v22);
    goto LABEL_5;
  }

  if (BYTE8(__dst[7]) != 1)
  {
    sub_25BA97060(__dst, v19);
    sub_25BA97060((&__dst[2] + 8), v17);
    v10 = sub_25BAA80BC(*(a2 + 169), &unk_286D427E8);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    if (v10)
    {
      v11 = sub_25BC31DE8();
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = sub_25BC31DE8();
      if (!BNNSRandomFillUniformInt(a3, a1, v11, v12))
      {
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(v17);
        v9 = v19;
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }

    else
    {
      v15 = sub_25BC31CA0();
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v16 = sub_25BC31CA0();
      if (!BNNSRandomFillUniformFloat(a3, a1, v15, v16))
      {
        goto LABEL_11;
      }
    }

    sub_25BB0E2EC();
    swift_allocError();
    *v13 = 0xD000000000000024;
    *(v13 + 8) = 0x800000025BCE3AF0;
    *(v13 + 16) = 0x2000;
    swift_willThrow();
    goto LABEL_11;
  }

  sub_25BA97060(__dst, v23);
  sub_25BA97060((&__dst[2] + 8), v22);
  __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
LABEL_5:
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v6 = sub_25BC31CA0();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v7 = sub_25BC31CA0();
  if (BNNSRandomFillNormalFloat(a3, a1, v6, v7))
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v8 = 0xD000000000000024;
    *(v8 + 8) = 0x800000025BCE3AF0;
    *(v8 + 16) = 0x2000;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  v9 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_25BC2FD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a3;
  v32 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_25BCB54EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v5 + 24);
  if (v18 > 0xC || ((1 << v18) & 0x1777) == 0)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(a1, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    if (*(*(v5 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v19 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
    sub_25BCB54FC();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_25BAA6F5C(v13, &qword_27FBB4080, &qword_25BCBC638);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  v20 = sub_25BCB54AC();
  if (v20 < 0)
  {
    __break(1u);
LABEL_13:
    LODWORD(v29) = 0;
    v28 = 34;
    v24 = "NeuralNetworks/TensorStorage+BNNS.swift";
    v25 = 0xD000000000000027;
    v26 = 0x800000025BCD9820;
    v27 = 39;
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v20);
  v28 = v17;
  v22 = sub_25BB0E6E4(sub_25BB0EC74, (&v30 - 4), 0, v21);
  if ((v22 & 1) == 0)
  {
    MEMORY[0x28223BE20](v22);
    *(&v30 - 4) = v5;
    *(&v30 - 3) = v17;
    v28 = a2;
    v29 = v31;
    sub_25BAABBA4(sub_25BC3106C);
    return (*(v15 + 8))(v17, v14);
  }

  LODWORD(v29) = 0;
  v28 = 37;
  v24 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/TensorStorage+BNNS.swift";
  v26 = 0x800000025BCD98D0;
  v25 = 0xD00000000000001DLL;
  v27 = 114;
LABEL_15:
  result = sub_25BCB74CC("Fatal error", 11, 2, v25, v26, v24, v27, 2, v28);
  __break(1u);
  return result;
}

uint64_t sub_25BC30160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_25BBF12DC(a4, a4);
  v10 = *(a4 - 8);
  swift_allocObject();
  v11 = sub_25BCB676C();
  (*(v10 + 16))(v12, a1, a4);
  sub_25BBE4B7C(v11, a4);
  v24 = v13;
  v14 = sub_25BCB68CC();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  LODWORD(v23) = 0;
  WitnessTable = swift_getWitnessTable();
  sub_25BBE86F4(v14, WitnessTable);
  Tensor.init<A>(_:scalarType:on:)();
  v16 = *(v25 + 16);

  v17 = sub_25BA928B4();
  [v17 lock];

  sub_25BA92920(v16, 0, 0, &v20);
  if (v6)
  {
    [*(v16 + 224) unlock];

    __break(1u);
  }

  else
  {
    [*(v16 + 224) unlock];

    v18 = sub_25BC303B8(a3, &off_286D4DBE0, v20, *(&v20 + 1));
    swift_unknownObjectRelease();
    return v18;
  }

  return result;
}

uint64_t sub_25BC303B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v30 - v10;
  v48 = sub_25BCB521C();
  v39 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_25BC31C8C(v47);
  v15 = v47[0];
  sub_25BC31C8C(&v45);
  v16 = v46;

  type metadata accessor for NativeTensorStorage(0);
  v47[0] = v15;
  LOBYTE(v45) = v16;
  sub_25BBC0130(v47, &v45, 0, 0);
  v33 = a1;
  v34 = v17;
  v36 = v4;
  ObjectType = swift_getObjectType();
  v32 = a2;
  v18 = *(a2 + 16);
  v18(v47, ObjectType, a2);
  v19 = swift_getObjectType();
  v20 = *(a4 + 16);
  v20(&v45, v19, a4);
  v38 = v14;
  sub_25BC30748(v47, &v45, v14);

  v21 = v19;
  v22 = v37;
  v20(v47, v21, a4);
  v23 = v35;
  v18(&v45, ObjectType, v32);
  v24 = v34;
  sub_25BC30748(v47, &v45, v23);

  v25 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v25);
  v41 = a3;
  v42 = a4;
  v43 = v24;
  v44 = v23;
  v26 = v36;
  sub_25BC675C0(sub_25BC3100C, v40, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v26)
  {
  }

  sub_25BAA6F5C(v22, &qword_27FBB4080, &qword_25BCBC638);
  v27 = *(v39 + 8);
  v28 = v48;
  v27(v38, v48);
  v27(v23, v28);
  return v24;
}

uint64_t sub_25BC30748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = *(*a2 + 16);
  if (v5)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (*(*a1 + 32) <= 1)
    {
      goto LABEL_6;
    }
  }

  else if (v6 >= v5)
  {
LABEL_6:
    v8 = MEMORY[0x277D82EA0];
    goto LABEL_9;
  }

  v8 = MEMORY[0x277D82E98];
LABEL_9:
  v9 = *v8;
  v10 = sub_25BCB521C();
  v11 = *(*(v10 - 8) + 104);

  return v11(a3, v9, v10);
}

uint64_t sub_25BC307F8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15[-v11];
  swift_getObjectType();
  v13 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v16 = a4;
  v17 = a1;
  v18 = a5;
  sub_25BC675C0(sub_25BC3102C, v15, MEMORY[0x277D84F78] + 8, x8_0);
  return sub_25BAA6F5C(v12, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC30930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12[-v8];
  v10 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v13 = a3;
  v14 = a1;
  v15 = a4;
  sub_25BBF3504(v9, sub_25BC3104C);
  return sub_25BAA6F5C(v9, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC30A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v4 = sub_25BCB530C();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25BCB541C();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BCB521C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  v22[2] = sub_25BCB53FC();
  v19 = *(v10 + 104);
  v19(v18, *MEMORY[0x277D82EA0], v9);
  (*(v10 + 16))(v15, v24, v9);
  v19(v12, *MEMORY[0x277D82E98], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D83078], v23);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  (*(v26 + 104))(v25, *MEMORY[0x277D82F78], v27);
  if (sub_25BCB53EC())
  {
    sub_25BCB53DC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v21 = 0xD000000000000013;
    *(v21 + 8) = 0x800000025BCE3AD0;
    *(v21 + 16) = 0x8000;
    return swift_willThrow();
  }
}

unint64_t sub_25BC30E04(uint64_t a1)
{
  result = sub_25BB18AA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC30E2C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(_DWORD *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[2] = a6;
  v17 = a5;
  v16[1] = a7;
  v9 = sub_25BCB54EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_25BCB6F2C();
  v13 = *(a3 + 24);
  (*(v10 + 16))(v12, a4, v9);
  LODWORD(a3) = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  LOBYTE(v19[0]) = v13;
  v14 = sub_25BBF4F40();
  v18 = v13;
  LODWORD(a4) = sub_25BBF4F40();
  (*(v10 + 8))(v12, v9);
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37[0];
  v25 = v37[1];
  v26 = v37[2];
  v27 = v37[3];
  v19[0] = 0;
  v19[1] = a3;
  v28 = v16[0];
  v29 = v14;
  v30 = 0;
  v31 = a4;
  v32 = 1065353216;
  return v17(v19);
}

void Tensor.sequenced<A, B>(through:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v13 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_13();
  v14 = *v0;
  Layer.callAsFunction(_:)(&v14, v8, v4);
  Layer.callAsFunction(_:)(v1, v6, v13);
  (*(v11 + 8))(v1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C>(through:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v41 = v21;
  v24 = v23;
  v26 = v25;
  v42 = v27;
  v29 = v28;
  v31 = v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v34 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36();
  v36 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v38 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_62();
  v40 = OUTLINED_FUNCTION_7_42(v41);
  Layer.callAsFunction(_:)(v40, v31, v26);
  Layer.callAsFunction(_:)(&associated type descriptor for Layer.Output, v29, v24);
  Layer.callAsFunction(_:)(v22, v42, a21);
  (*(v34 + 8))(v22, AssociatedTypeWitness);
  (*(v38 + 8))(&associated type descriptor for Layer.Output, v36);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C, D>(through:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_18();
  v45 = v24;
  v48 = v27;
  v29 = v28;
  v44 = v30;
  v46 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v33 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_31_13();
  v35 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v37 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_42();
  v39 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v41 = v40;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_62();
  v43 = OUTLINED_FUNCTION_7_42(v45);
  Layer.callAsFunction(_:)(v43, v29, a21);
  Layer.callAsFunction(_:)(&associated type descriptor for Layer.Output, v44, a22);
  Layer.callAsFunction(_:)(v25, v46, a23);
  Layer.callAsFunction(_:)(v26, v48, a24);
  (*(v33 + 8))(v26, AssociatedTypeWitness);
  (*(v37 + 8))(v25, v35);
  (*(v41 + 8))(&associated type descriptor for Layer.Output, v39);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C, D, E>(through:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_18();
  v64 = v27;
  v65 = v29;
  v31 = v30;
  v33 = v32;
  v58 = v32;
  v35 = v34;
  v73 = v36;
  v74 = v37;
  v69 = v38;
  v75 = a27;
  v76 = v39;
  v59 = a24;
  v60 = v30;
  v61 = a25;
  v71 = v40;
  v72 = a22;
  v67 = a21;
  v68 = a26;
  v70 = OUTLINED_FUNCTION_10_36(0, a26, a21);
  OUTLINED_FUNCTION_2();
  v66 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_62();
  v63 = OUTLINED_FUNCTION_10_36(0, a25, v31);
  OUTLINED_FUNCTION_2();
  v44 = v43;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  v47 = &v57 - v46;
  v62 = OUTLINED_FUNCTION_10_36(0, a24, v33);
  OUTLINED_FUNCTION_2();
  v49 = v48;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v50);
  v52 = &v57 - v51;
  v53 = OUTLINED_FUNCTION_10_36(0, a23, v35);
  OUTLINED_FUNCTION_2();
  v55 = v54;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_36();
  v77 = *v64;
  Layer.callAsFunction(_:)(&v77, v35, a23);
  Layer.callAsFunction(_:)(&associated type descriptor for Layer.Output, v58, v59);
  Layer.callAsFunction(_:)(v52, v60, v61);
  Layer.callAsFunction(_:)(v47, v67, v68);
  Layer.callAsFunction(_:)(v28, v72, v75);
  (*(v66 + 8))(v28, v70);
  (*(v44 + 8))(v47, v63);
  (*(v49 + 8))(v52, v62);
  (*(v55 + 8))(&associated type descriptor for Layer.Output, v53);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C, D, E, F>(through:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_9_18();
  v68 = v30;
  v57 = v32;
  v62 = v33;
  v81 = v34;
  v82 = v35;
  v78 = v36;
  v75 = v37;
  v72 = v38;
  v70 = v39;
  v80 = v40;
  v58 = a26;
  v61 = a27;
  v65 = a28;
  v59 = a21;
  v64 = a22;
  v79 = a30;
  v73 = a29;
  v77 = a24;
  v71 = a23;
  OUTLINED_FUNCTION_9_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v74 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_42();
  OUTLINED_FUNCTION_9_41();
  v69 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v67 = v43;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v44);
  v46 = &v57 - v45;
  OUTLINED_FUNCTION_9_41();
  v66 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v48 = v47;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_9_41();
  v63 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v51 = v50;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_62();
  v53 = v62;
  v60 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v55 = v54;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_31_13();
  v83 = *v68;
  Layer.callAsFunction(_:)(&v83, v53, a25);
  Layer.callAsFunction(_:)(&protocol requirements base descriptor for Layer, v57, v58);
  Layer.callAsFunction(_:)(a26, v59, v61);
  Layer.callAsFunction(_:)(a27, v64, v65);
  Layer.callAsFunction(_:)(v46, v71, v73);
  Layer.callAsFunction(_:)(v31, v77, v79);
  (*(v74 + 8))(v31, AssociatedTypeWitness);
  (*(v67 + 8))(v46, v69);
  (*(v48 + 8))(a27, v66);
  (*(v51 + 8))(a26, v63);
  (*(v55 + 8))(&protocol requirements base descriptor for Layer, v60);
  OUTLINED_FUNCTION_10_16();
}

double sub_25BC31C8C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 169);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  sub_25BCB617C();
  return result;
}

float sub_25BC31CA0()
{
  OUTLINED_FUNCTION_0_54();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v3 + 16))(v7, v1, v0, v5);
  v11 = OUTLINED_FUNCTION_5_49(v8, v9, v10, MEMORY[0x277D84DC8]);
  if (v11)
  {
    _H0 = LOWORD(v29);
    __asm { FCVT            S8, H0 }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_5_49(v11, v12, v13, &type metadata for BFloat16);
    if (v20)
    {
      LOWORD(v23) = LOWORD(v29);
      _S8 = v23;
    }

    else
    {
      v24 = OUTLINED_FUNCTION_5_49(v20, v21, v22, MEMORY[0x277D83A90]);
      if (v24)
      {
        _S8 = *&v29;
      }

      else if (OUTLINED_FUNCTION_5_49(v24, v25, v26, MEMORY[0x277D839F8]))
      {
        _S8 = v29;
      }

      else
      {
        _S8 = sub_25BC31DE8();
      }
    }
  }

  (*(v3 + 8))(v7, v0);
  return _S8;
}

uint64_t sub_25BC31DE8()
{
  v2 = v1;
  OUTLINED_FUNCTION_0_54();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v4 + 16))(v8, v2, v0, v6);
  v12 = OUTLINED_FUNCTION_2_63(v9, v10, v11, MEMORY[0x277D83B88]);
  if (v12)
  {
    v15 = v40;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_2_63(v12, v13, v14, MEMORY[0x277D849A8]);
    if (v16)
    {
      v15 = v40;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_2_63(v16, v17, v18, MEMORY[0x277D84958]);
      if (v19)
      {
        v15 = v40;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_2_63(v19, v20, v21, MEMORY[0x277D84900]);
        if (v22)
        {
          v15 = v40;
        }

        else
        {
          v25 = OUTLINED_FUNCTION_2_63(v22, v23, v24, MEMORY[0x277D84D38]);
          if (v25)
          {
            v15 = v40;
            if ((v40 & 0x8000000000000000) == 0)
            {
              goto LABEL_18;
            }

            __break(1u);
          }

          v28 = OUTLINED_FUNCTION_2_63(v25, v26, v27, MEMORY[0x277D84CC0]);
          if (v28)
          {
            v15 = v40;
          }

          else
          {
            v31 = OUTLINED_FUNCTION_2_63(v28, v29, v30, MEMORY[0x277D84C58]);
            if (v31)
            {
              v15 = v40;
            }

            else
            {
              if (!OUTLINED_FUNCTION_2_63(v31, v32, v33, MEMORY[0x277D84B78]))
              {
                v40 = 0;
                v41 = 0xE000000000000000;
                sub_25BCB70FC();
                v38 = v40;
                v39 = v41;
                MEMORY[0x25F876C90](0xD000000000000048, 0x800000025BCE3BA0);
                swift_getDynamicType();
                v35 = sub_25BCB7C1C();
                MEMORY[0x25F876C90](v35);

                MEMORY[0x25F876C90](11872, 0xE200000000000000);
                v40 = v38;
                v41 = v39;
                BYTE4(v50) = 9;
                sub_25BCB617C();
                sub_25BA97890("asInt()", 7, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift", 110, 2, 317, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
              }

              v15 = v40;
            }
          }
        }
      }
    }
  }

LABEL_18:
  (*(v4 + 8))(v8, v0);
  return v15;
}

__int16 sub_25BC32028@<H0>()
{
  _S0 = sub_25BC31CA0();
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t sub_25BC32044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25BCBAE50;
  sub_25BC31C8C(v0 + 32);
  return v0;
}

uint64_t sub_25BC3209C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *(a4 + 8);
  *(a6 + 24) = a3;
  *(a6 + 32) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
  v12 = *(*(a3 - 8) + 32);
  v12(boxed_opaque_existential_0, a1, a3);
  v13 = *(sub_25BCB62FC() + 36);
  *(a6 + 64) = a3;
  *(a6 + 72) = v10;
  v14 = __swift_allocate_boxed_opaque_existential_0((a6 + 40));
  result = (v12)(v14, a1 + v13, a3);
  *(a6 + 120) = 2;
  *(a6 + 121) = v9;
  return result;
}

uint64_t sub_25BC32164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a5 + 8);
  *(a6 + 24) = a4;
  *(a6 + 32) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
  v13 = *(a4 - 8);
  (*(v13 + 16))(boxed_opaque_existential_0, a1, a4);
  *(a6 + 64) = a4;
  *(a6 + 72) = v11;
  v14 = __swift_allocate_boxed_opaque_existential_0((a6 + 40));
  (*(v13 + 32))(v14, a2, a4);
  result = (*(v13 + 8))(a1, a4);
  *(a6 + 120) = 0;
  *(a6 + 121) = v10;
  return result;
}

uint64_t sub_25BC32248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  v13 = *(a6 + 8);
  *(a7 + 24) = a5;
  *(a7 + 32) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);
  v15 = *(a5 - 8);
  v16 = *(v15 + 16);
  v16(boxed_opaque_existential_0, a1, a5);
  *(a7 + 64) = a5;
  *(a7 + 72) = v13;
  v17 = __swift_allocate_boxed_opaque_existential_0((a7 + 40));
  v16(v17, a2, a5);
  *(a7 + 104) = a5;
  *(a7 + 112) = v13;
  v18 = __swift_allocate_boxed_opaque_existential_0((a7 + 80));
  (*(v15 + 32))(v18, a3, a5);
  v19 = *(v15 + 8);
  v19(a2, a5);
  result = (v19)(a1, a5);
  *(a7 + 120) = 1;
  *(a7 + 121) = v12;
  return result;
}

uint64_t sub_25BC32370()
{
  v0 = 1049600;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v2);

  if (v3)
  {
    if ((*(v3 + 24) & 2) != 0)
    {
      v0 = 1049607;
    }

    else
    {
      v0 = 1049600;
    }
  }

  sub_25BAA4AF4(v2);
  return v0;
}

uint64_t sub_25BC323E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *__src, _OWORD *a7)
{
  v11 = *a5;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x6D6F646E6172, 0xE600000000000000);
  }

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 176) = v11;
  memcpy((v7 + 48), __src, 0x7AuLL);
  v12 = a7[1];
  *(v7 + 184) = *a7;
  *(v7 + 200) = v12;
  *(v7 + 216) = a7[2];
  *(v7 + 226) = *(a7 + 42);
  return v7;
}

uint64_t sub_25BC32478()
{

  sub_25BC32D54(v0 + 48);

  return v0;
}

uint64_t sub_25BC324B0()
{
  sub_25BC32478();

  return swift_deallocClassInstance();
}

__n128 sub_25BC32520@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 216);
  result = *(v1 + 226);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BC32558(uint64_t a1)
{
  sub_25BCB625C();
  sub_25BB2C64C(v1 + 48, __src);
  memcpy(v26, __src, 0x79uLL);
  if (BYTE8(v26[7]) && BYTE8(v26[7]) == 1)
  {
    sub_25BA97060(v26, v24);
    sub_25BA97060((&v26[2] + 8), v22);
    sub_25BCB625C();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_1_60();
    MEMORY[0x28223BE20](v2);
    v4 = OUTLINED_FUNCTION_0_73(v3, *&v20[0]);
    v5(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA0, &unk_25BCCD2A0);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v20, v21);
      OUTLINED_FUNCTION_7_43();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_1_60();
    MEMORY[0x28223BE20](v15);
    v17 = OUTLINED_FUNCTION_0_73(v16, *&v20[0]);
    v18(v17);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v20, v21);
      OUTLINED_FUNCTION_8_43();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v14 = &v26[5];
  }

  else
  {
    sub_25BA97060(v26, v24);
    sub_25BA97060((&v26[2] + 8), v22);
    sub_25BCB625C();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_1_60();
    MEMORY[0x28223BE20](v6);
    v8 = OUTLINED_FUNCTION_0_73(v7, *&v20[0]);
    v9(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA0, &unk_25BCCD2A0);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v20, v21);
      OUTLINED_FUNCTION_7_43();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_1_60();
    MEMORY[0x28223BE20](v10);
    v12 = OUTLINED_FUNCTION_0_73(v11, *&v20[0]);
    v13(v12);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v20, v21);
      OUTLINED_FUNCTION_8_43();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
    v14 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_25BC32964()
{

  return v0;
}

uint64_t sub_25BC32994()
{
  sub_25BC32964();

  return swift_deallocClassInstance();
}

_BYTE *sub_25BC329EC(_BYTE *result, int a2, int a3)
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

uint64_t sub_25BC32AA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 122))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 120);
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

uint64_t sub_25BC32AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

unint64_t sub_25BC32B5C()
{
  result = qword_27FBB68E0;
  if (!qword_27FBB68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB68E0);
  }

  return result;
}

uint64_t sub_25BC32BB0(uint64_t a1)
{
  result = sub_25BC32D10(&qword_27FBB4550, type metadata accessor for RandomStateOperation, &unk_25BCCD214);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32C08(uint64_t a1)
{
  result = sub_25BC32D10(&qword_27FBB68E8, type metadata accessor for RandomStateOperation, &unk_25BCCD1D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32C60(uint64_t a1)
{
  result = sub_25BC32D10(&qword_28154F3A0, type metadata accessor for RandomOperation, byte_25BCCD284);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32CB8(uint64_t a1)
{
  result = sub_25BC32D10(qword_28154F3A8, type metadata accessor for RandomOperation, &unk_25BCCD240);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32D10(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC32D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 120);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC32DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 105) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC32E20(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t sub_25BC32E60(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ContextManager();
  v5 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v5, v6, v7, v8, v9, v10, v11, v12, v15[0]);

  if (v16)
  {
    v13 = *(v16 + 24);
    if ((v13 & 2) != 0 && ((v13 & 1) != 0 || (a2 & 1) == 0))
    {

      OUTLINED_FUNCTION_0_74();
      sub_25BAB35A8();
      if (v2)
      {
        goto LABEL_6;
      }

      v4 = v16;
LABEL_9:
      sub_25BAA4AF4(v15);
      return v4;
    }
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v4 = sub_25BAB6EC8(a2 & 1 | 2, MEMORY[0x277D84F90]);

  v16 = v4;
  OUTLINED_FUNCTION_0_74();
  sub_25BAB35A8();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:

  sub_25BAA4AF4(v15);
  return v4;
}

uint64_t sub_25BC32FA0()
{
  if (v0[7].i8[8] == 1)
  {
    v0[7].i8[8] = 0;
    return v0[8].i64[0];
  }

  else
  {
    v3 = v0[6];
    i64 = v0[6].i64;
    sub_25BB6B190(v3, *(i64 + 16));
    sub_25BB6B5B0(v4);
    *(i64 + 24) = 1;
    *(i64 + 32) = v5;
    v1 = v6;
    sub_25BB6B5AC(i64);
  }

  return v1;
}

uint64_t sub_25BC3305C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for ContextManager();

  sub_25BCB617C();
  v7 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v7, v8, v9, v10, v11, v12, v13, v14, v17[0]);

  v17[10] = 0;
  v15 = objc_autoreleasePoolPush();
  sub_25BC335E4(v17, a1, a2, a3);
  objc_autoreleasePoolPop(v15);
  sub_25BAA4AF4(v17);
  if (v3)
  {
  }

  else
  {
  }
}

uint64_t sub_25BC331AC()
{
  type metadata accessor for ContextManager();
  v0 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v0, v1, v2, v3, v4, v5, v6, v7, v9[0]);

  v9[10] = 0;
  OUTLINED_FUNCTION_0_74();
  sub_25BAB35A8();
  return sub_25BAA4AF4(v9);
}

time_t sub_25BC33240@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  result = time(0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = UInt64.vector2.getter(result);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = v3;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  return result;
}

void sub_25BC3329C(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for ContextManager();
  v5 = sub_25BAA49B8();
  swift_beginAccess();
  v6 = v5[2];
  v7 = *(v6 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[2] = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_25BBF1454();
  v6 = v14;
  v5[2] = v14;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v7 <= *(v6 + 16))
  {
    a1 = sub_25BC32FA0();
    v5[2] = v6;
    swift_endAccess();

LABEL_6:
    a3[3] = &type metadata for PhiloxRandomNumberGenerator;
    a3[4] = sub_25BB189FC();
    v9 = swift_allocObject();
    *a3 = v9;
    v10 = sub_25BBE5CAC(a1);
    *(v9 + 16) = v11;
    *(v9 + 32) = v12;
    *(v9 + 40) = v10 & 1;
    *(v9 + 48) = v13;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25BC333C8()
{
  v1[1] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  result = pthread_key_create(v1, j_j__swift_release);
  qword_28154F8B0 = v1[0];
  return result;
}

uint64_t sub_25BC33440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  sub_25BC33240(v1 + 32);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_25BC3349C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(a1);

  v5 = a2;
  basicReLU(_:)(&v5);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t sub_25BC3353C()
{
  OUTLINED_FUNCTION_1_61();
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(v2);

  v4 = v0;
  v1(&v4);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t sub_25BC335E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(a1);

  a4(a2, a3);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t withComputeDevice<A>(_:_:)()
{
  OUTLINED_FUNCTION_1_61();
  type metadata accessor for ContextManager();
  v1 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0]);

  sub_25BACF778(v0, v10);
  OUTLINED_FUNCTION_0_74();
  sub_25BAB35A8();
  return sub_25BAA4AF4(v10);
}

uint64_t sub_25BC33738(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC3378C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void (*sub_25BC33810(uint64_t a1))(uint64_t, uint64_t)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v105 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v105 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v105 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v105 - v18);
  sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v121 = v21;
  v122 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v124 = v22 - v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  v123 = &v105 - v25;
  v26 = sub_25BAC4018();
  v27 = sub_25BB3EE04(v26, a1);
  if (v27)
  {
    v29 = v27;
    if (v1[6])
    {
      v119 = v28;
      v30 = sub_25BAC4018();
      v31 = sub_25BB3EE04(v30, a1);
      if (v31)
      {
        if (v1[7])
        {
          v116 = v32;
          v118 = v31;
          v33 = sub_25BAC4018();
          v34 = sub_25BB3EE04(v33, a1);
          if (v34)
          {
            v117 = v34;
            if (v1[19] && (v114 = v35, v36 = sub_25BAC4018(), (v37 = sub_25BB3EE04(v36, a1)) != 0))
            {
              v111 = v38;
              v115 = v37;
              if (v1[20])
              {
                v39 = sub_25BAC4018();
                v40 = sub_25BB3EE04(v39, a1);
                if (v40)
                {
                  v110 = v40;
                  v108 = v41;
                  ObjectType = swift_getObjectType();
                  v43 = sub_25BC5D23C();
                  v113 = ObjectType;
                  if (v43 <= 1)
                  {
                    v47 = v119;
                    v48 = *(v119 + 16);
                    v46 = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xA7C3000000000000;
                    v107 = 1;
                  }

                  else
                  {
                    v44 = ObjectType;
                    v45 = v119 + 16;
                    v112 = *(v119 + 16);
                    (v112)(&v128, v44);
                    if (!v128[2])
                    {
                      OUTLINED_FUNCTION_4_55();
                      OUTLINED_FUNCTION_9_42("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v103, v104, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
                    }

                    v46 = v45 & 0xFFFFFFFFFFFFLL | 0xA7C3000000000000;
                    v107 = v128[4];

                    v47 = v119;
                    v48 = v112;
                  }

                  v109 = v46;
                  v112 = v48;
                  (v48)(v125, v113, v47);
                  v52 = v125[0];
                  v53 = *(v125[0] + 16);
                  if (v53 < 4)
                  {
                    v54 = 4 - v53;
                    sub_25BCB617C();
                    v55 = sub_25BAC0E14(1, v54);
                    v128 = v52;
                    sub_25BAC0EB8(v55);

                    v52 = v128;
                    if (!v128[2])
                    {

                      v52 = &unk_286D43608;
                    }
                  }

                  sub_25BBF5F44(v52, 0);

                  v56 = swift_getObjectType();
                  (*(v116 + 16))(v125, v56);
                  v57 = v125[0];
                  if (!*(v125[0] + 16))
                  {

                    v57 = &unk_286D43630;
                  }

                  sub_25BBF5F44(v57, 0);

                  v106 = type metadata accessor for NativeTensorStorage(0);
                  v58 = v119;
                  OUTLINED_FUNCTION_8_44();
                  v59();
                  (*(v58 + 8))(&v128, v113, v58);
                  v60 = OUTLINED_FUNCTION_0_75();
                  v61 = v120;
                  sub_25BBC0130(v60, v62, v63, v64);
                  v109 = v65;
                  v106 = v61;
                  v112 = *(v121 + 16);
                  v120 = (v121 + 16);
                  v66 = v122;
                  (v112)(v19, v123, v122);
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
                  OUTLINED_FUNCTION_6_48();
                  (v112)();
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v70, v71, v72, v66);
                  OUTLINED_FUNCTION_6_48();
                  (v112)();
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v73, v74, v75, v66);
                  v76 = v112;
                  OUTLINED_FUNCTION_6_48();
                  v76();
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v77, v78, v79, v66);
                  OUTLINED_FUNCTION_6_48();
                  v76();
                  OUTLINED_FUNCTION_5_1();
                  v83 = __swift_storeEnumTagSinglePayload(v80, v81, v82, v66);
                  v120 = &v105;
                  MEMORY[0x28223BE20](v83);
                  v112 = &v105;
                  v84 = v123;
                  *(&v105 - 4) = v109;
                  *(&v105 - 3) = v84;
                  v85 = v107;
                  *(&v105 - 2) = v2;
                  *(&v105 - 1) = v85;
                  MEMORY[0x28223BE20](v86);
                  v87 = v116;
                  *(&v105 - 14) = v118;
                  *(&v105 - 13) = v87;
                  v88 = v117;
                  *(&v105 - 12) = v16;
                  *(&v105 - 11) = v88;
                  *(&v105 - 10) = v114;
                  *(&v105 - 9) = v13;
                  v89 = v111;
                  *(&v105 - 8) = v115;
                  *(&v105 - 7) = v89;
                  v90 = v110;
                  *(&v105 - 6) = v10;
                  *(&v105 - 5) = v90;
                  *(&v105 - 4) = v108;
                  *(&v105 - 3) = v7;
                  *(&v105 - 2) = sub_25BC35E70;
                  *(&v105 - 1) = v91;
                  v92 = v106;
                  sub_25BC675C0(sub_25BC35E9C, (&v105 - 16), MEMORY[0x277D84F78] + 8, v127);
                  if (v92)
                  {
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_10_37();
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_7_44();
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_6_48();
                    sub_25BB0EA20(v19);
                    v93 = v122;
                    v19 = *(v121 + 8);
                    v19(v124, v122);
                    sub_25BB0EA20(v7);
                    sub_25BB0EA20(v10);
                    sub_25BB0EA20(v13);
                    sub_25BB0EA20(v16);
                    v19(v123, v93);
                    return v19;
                  }

                  OUTLINED_FUNCTION_6_48();
                  sub_25BB0EA20(v19);
                  sub_25BB0EA20(v7);
                  sub_25BB0EA20(v10);
                  sub_25BB0EA20(v13);
                  sub_25BB0EA20(v16);
                  v94 = *(v2 + 168);
                  if (*(v2 + 168))
                  {
                    v96 = v121;
                    v95 = v122;
                    v97 = v124;
                    v98 = v109;
                    if (v94 != 1)
                    {
                      goto LABEL_38;
                    }

LABEL_36:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
                    v19 = swift_allocObject();
                    *(v19 + 1) = xmmword_25BCBAE90;
                    *(v19 + 4) = v98;
                    *(v19 + 5) = &off_286D4DBE0;
                    v100 = v111;
                    *(v19 + 6) = v115;
                    *(v19 + 7) = v100;
                    v101 = v108;
                    *(v19 + 8) = v110;
                    *(v19 + 9) = v101;
LABEL_39:
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_10_37();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v102 = *(v96 + 8);
                    v102(v97, v95);
                    v102(v123, v95);
                    return v19;
                  }

                  type metadata accessor for ContextManager();
                  sub_25BAA49B8();
                  sub_25BAA4A5C(v125);

                  v96 = v121;
                  v95 = v122;
                  v97 = v124;
                  v98 = v109;
                  if (v126)
                  {
                    v99 = *(v126 + 24);
                    sub_25BAA4AF4(v125);
                    if (v99)
                    {
                      goto LABEL_36;
                    }
                  }

                  else
                  {
                    sub_25BAA4AF4(v125);
                  }

LABEL_38:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
                  v19 = swift_allocObject();
                  *(v19 + 1) = xmmword_25BCBAE50;
                  *(v19 + 4) = v98;
                  *(v19 + 5) = &off_286D4DBE0;
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_39;
                }
              }

              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_10_37();
              v19 = v117;
            }

            else
            {
              v19 = v118;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            v19 = v29;
          }
        }

        else
        {
          v19 = v29;
        }

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  sub_25BB0E2EC();
  v49 = swift_allocError();
  OUTLINED_FUNCTION_11_2(xmmword_25BCCD410, v49, v50);
  return v19;
}

uint64_t sub_25BC34200(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *__src, int a6, char *a7, uint64_t a8, size_t a9)
{
  v34 = a7;
  v38 = a3;
  v48 = a2;
  v37 = a1;
  memcpy(v43, __src, sizeof(v43));
  memcpy(v44, a4, sizeof(v44));
  v36 = sub_25BCB530C();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25BCB52CC();
  v14 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - v18;
  v20 = sub_25BCB54EC();
  (*(*(v20 - 8) + 16))(v19, v34, v20);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  v21 = a8;

  v34 = v19;
  sub_25BC6728C(v19);
  sub_25BB1A740(&v41);
  memcpy(v45, v44, 0xB0uLL);
  sub_25BB45694(v45);
  memcpy(v46, v43, 0xB0uLL);
  sub_25BB45694(v46);
  sub_25BCB533C();
  memcpy(v47, v45, 0xB1uLL);
  memcpy(&v47[184], v46, 0xB1uLL);
  memcpy(v16, v47, 0x169uLL);
  v22 = v37;
  (*(v14 + 104))(v16, *MEMORY[0x277D82EB8], v35);
  (*(v11 + 104))(v13, *MEMORY[0x277D82F78], v36);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (!sub_25BCB532C())
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v24 = xmmword_25BCCD410;
    *(v24 + 16) = 0x8000;
    swift_willThrow();
LABEL_16:
    sub_25BB1A750();

    return sub_25BB0EA20(v34);
  }

  if (*(v21 + 168))
  {
    v23 = *(v21 + 168) == 1;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v39);

    if (v40)
    {
      v23 = *(v40 + 24) & 1;
    }

    else
    {
      v23 = 0;
    }

    sub_25BAA4AF4(v39);
  }

  v25 = *(v22 + 136);
  if (!v25 || (v26 = v42) == 0)
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v32 = 0xD000000000000028;
    *(v32 + 8) = 0x800000025BCE3C80;
    *(v32 + 16) = 0x2000;
    swift_willThrow();

    goto LABEL_16;
  }

  v48 = sub_25BCB548C();
  v39[0] = *(*(v21 + 40) + 152);
  result = sub_25BC6FC68();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = *(result + 32);

  v29 = *(*(v21 + 40) + 152);
  v38 = v21;
  v39[0] = v29;
  result = sub_25BC6FC68();
  if (!*(result + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v30 = *(result + 32);

  if (BNNSNormalizationFilterApplyBatch(v48, a9, v25, v28, v26, v30, v23))
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v31 = 0xD000000000000029;
    *(v31 + 8) = 0x800000025BCE3CB0;
    *(v31 + 16) = 0x2000;
    swift_willThrow();

    goto LABEL_16;
  }

  sub_25BB1A750();

  return sub_25BB0EA20(v34);
}

uint64_t sub_25BC347CC(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_0();
  v143 = (v7 - v8);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v9);
  v144 = &v120 - v10;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v11);
  v146 = &v120 - v12;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v13);
  v147 = &v120 - v14;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v15);
  v142 = &v120 - v16;
  v17 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v145 = v21 - v22;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  v141 = &v120 - v24;
  swift_beginAccess();
  v25 = sub_25BAC4018();
  v26 = sub_25BB3EE04(v25, a1);
  if (!v26)
  {
    goto LABEL_15;
  }

  v3 = v26;
  v139 = v27;
  v140 = v19;
  v28 = sub_25BAC4018();
  v29 = sub_25BB3EE04(v28, a1);
  if (!v29)
  {
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    sub_25BB0E2EC();
    v73 = swift_allocError();
    OUTLINED_FUNCTION_11_2(xmmword_25BCCD420, v73, v74);
    return v3;
  }

  v31 = v29;
  if (!*(v1 + 48) || (v138 = v30, v32 = sub_25BAC4018(), v33 = sub_25BB3EE04(v32, a1), v136 = v34, !v33))
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v137 = v33;
  if (!*(v1 + 56) || (v35 = sub_25BAC4018(), (v36 = sub_25BB3EE04(v35, a1)) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v120 = v3;
  v128 = v17;
  v134 = v36;
  v131 = v37;
  v130 = type metadata accessor for NativeTensorStorage(0);
  ObjectType = swift_getObjectType();
  v39 = v138;
  v40 = v138 + 16;
  v135 = *(v138 + 16);
  v41 = ObjectType;
  (v135)(v148, ObjectType, v138);
  v42 = *(v39 + 8);
  v129 = v41;
  v42(&v150, v41, v39);
  v43 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v43, v44, v45, v46);
  v126 = v47;
  v127 = v40;
  (v135)(v148, v41, v39);
  v42(&v150, v41, v39);
  v48 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v48, v49, v50, v51);
  v133 = v52;
  v53 = swift_getObjectType();
  v54 = v136;
  v55 = *(v136 + 16);
  v123 = v136 + 16;
  v121 = v55;
  v55(v148, v53, v136);
  v56 = *(v54 + 8);
  v122 = v53;
  v56(&v150, v53, v54);
  v57 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v57, v58, v59, v60);
  v132 = v61;
  v62 = swift_getObjectType();
  v63 = v131;
  (*(v131 + 16))(v148, v62, v131);
  (*(v63 + 8))(&v150, v62, v63);
  v64 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v64, v65, v66, v67);
  v69 = v68;
  v125 = v2;
  v70 = sub_25BC5D23C();
  v130 = v69;
  if (v70 < 2)
  {
    v124 = 1;
    v72 = v141;
  }

  else
  {
    OUTLINED_FUNCTION_8_44();
    v71();
    v72 = v141;
    if (!v150[2])
    {
      OUTLINED_FUNCTION_4_55();
      OUTLINED_FUNCTION_9_42("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v118, v119, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
    }

    v124 = v150[4];
  }

  OUTLINED_FUNCTION_8_44();
  v76();
  v77 = v148[0];
  v78 = *(v148[0] + 16);
  if (v78 < 4)
  {
    v79 = 4 - v78;
    sub_25BCB617C();
    v80 = sub_25BAC0E14(1, v79);
    v150 = v77;
    sub_25BAC0EB8(v80);

    v77 = v150;
    if (!v150[2])
    {

      v77 = &unk_286D43AE0;
    }
  }

  sub_25BBF5F44(v77, 0);

  v121(v148, v122, v136);
  v81 = v148[0];
  if (!*(v148[0] + 16))
  {

    v81 = &unk_286D43B08;
  }

  sub_25BBF5F44(v81, 0);

  v82 = *(v140 + 16);
  v83 = v128;
  v82(v142, v72, v128);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v82(v147, v72, v83);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
  v90 = v145;
  v82(v146, v145, v83);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v83);
  v82(v144, v90, v83);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v83);
  v97 = v143;
  v82(v143, v72, v83);
  OUTLINED_FUNCTION_5_1();
  v101 = __swift_storeEnumTagSinglePayload(v98, v99, v100, v83);
  v135 = &v120;
  MEMORY[0x28223BE20](v101);
  *(&v120 - 8) = v133;
  *(&v120 - 7) = v72;
  *(&v120 - 6) = v132;
  *(&v120 - 5) = v90;
  *(&v120 - 4) = v130;
  *(&v120 - 3) = v4;
  *(&v120 - 2) = v124;
  v102 = swift_getObjectType();
  MEMORY[0x28223BE20](v102);
  v103 = v138;
  *(&v120 - 14) = v31;
  *(&v120 - 13) = v103;
  v104 = v137;
  *(&v120 - 12) = v147;
  *(&v120 - 11) = v104;
  v105 = v146;
  *(&v120 - 10) = v136;
  *(&v120 - 9) = v105;
  v106 = v144;
  v107 = v131;
  *(&v120 - 8) = v134;
  *(&v120 - 7) = v107;
  v108 = v126;
  *(&v120 - 6) = v106;
  *(&v120 - 5) = v108;
  *(&v120 - 4) = &off_286D4DBE0;
  *(&v120 - 3) = v97;
  *(&v120 - 2) = sub_25BC35F54;
  *(&v120 - 1) = (&v120 - 10);
  v109 = v142;

  v110 = v125;
  sub_25BC675C0(sub_25BC36030, (&v120 - 16), MEMORY[0x277D84F78] + 8, v149);
  if (v110)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_7_44();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v109);
    sub_25BB0EA20(v143);
    sub_25BB0EA20(v106);
    sub_25BB0EA20(v146);
    sub_25BB0EA20(v147);
    v3 = *(v140 + 8);
    v111 = OUTLINED_FUNCTION_11_39();
    (v3)(v111);
    v112 = OUTLINED_FUNCTION_10_37();
    (v3)(v112, v104);
  }

  else
  {

    OUTLINED_FUNCTION_7_44();
    sub_25BB0EA20(v109);
    sub_25BB0EA20(v143);
    sub_25BB0EA20(v106);
    sub_25BB0EA20(v146);
    sub_25BB0EA20(v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE90;
    *(v3 + 32) = v133;
    v113 = v132;
    *(v3 + 40) = &off_286D4DBE0;
    *(v3 + 48) = v113;
    v114 = v130;
    *(v3 + 56) = &off_286D4DBE0;
    *(v3 + 64) = v114;
    *(v3 + 72) = &off_286D4DBE0;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v115 = *(v140 + 8);
    v116 = OUTLINED_FUNCTION_11_39();
    v115(v116);
    v117 = OUTLINED_FUNCTION_10_37();
    (v115)(v117, v104);
  }

  return v3;
}

uint64_t sub_25BC35280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a8;
  v35 = a6;
  v32 = a5;
  v31 = a4;
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v34 = a9;
  v26 = a13;
  v30 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  v23 = sub_25BCB54EC();
  v24 = *(*(v23 - 8) + 16);
  v24(v22, a7, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  v24(v19, a10, v23);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v23);
  v24(v16, a10, v23);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v23);
  v46 = a12;
  v47 = v26;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  v51 = v31;
  v52 = v32;
  v37 = v33;
  v38 = &off_286D4DBE0;
  v39 = v19;
  v40 = v30;
  v41 = &off_286D4DBE0;
  v42 = v16;
  v43 = sub_25BC35FD0;
  v44 = &v45;
  sub_25BB0E340(v22, sub_25BC36004, v36, v34);
  sub_25BB0EA20(v22);
  sub_25BB0EA20(v16);
  return sub_25BB0EA20(v19);
}

uint64_t sub_25BC35520(const void *a1, const void *a2, const void *a3, uint64_t a4, size_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a1;
  v52 = a7;
  v53 = a8;
  v45 = a6;
  v46 = a2;
  v47 = a3;
  v48 = a5;
  v50 = a10;
  v51 = a9;
  v61 = *MEMORY[0x277D85DE8];
  v11 = sub_25BCB530C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BCB52CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BB45648(v59);
  v49 = sub_25BCB533C();
  memcpy(v60, v59, 0xB1uLL);
  memcpy(&v60[184], v59, 0xB1uLL);
  memcpy(v18, v60, 0x169uLL);
  (*(v16 + 104))(v18, *MEMORY[0x277D82EB8], v15);
  v19 = v11;
  v20 = v50;
  (*(v12 + 104))(v14, *MEMORY[0x277D82F78], v19);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  v21 = v52;
  if (!sub_25BCB532C())
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v42 = xmmword_25BCCD420;
    *(v42 + 16) = 0x8000;
    return swift_willThrow();
  }

  v22 = *(v21 + 136);
  if (!v22 || (v23 = *(v20 + 136)) == 0)
  {
    v38 = 0x800000025BCE3CE0;
    sub_25BB0E2EC();
    swift_allocError();
    v40 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v24 = sub_25BCB548C();
  v25 = a4;
  *&v58.flags = *(*(a4 + 40) + 152);
  v26 = sub_25BC6FC68();
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v27 = *(v26 + 32);

  *&v58.flags = *(*(a4 + 40) + 152);
  v28 = sub_25BC6FC68();
  v29 = v48;
  if (!*(v28 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = *(v28 + 32);

  if (BNNSNormalizationFilterApplyBatch(v24, v29, v22, v27, v23, v30, 1))
  {
LABEL_11:
    v38 = 0x800000025BCE3D10;
    sub_25BB0E2EC();
    swift_allocError();
    v40 = 0xD00000000000002ELL;
LABEL_13:
    *v39 = v40;
    *(v39 + 8) = v38;
    *(v39 + 16) = 0x2000;
    swift_willThrow();
  }

  memcpy(&v58, v44, sizeof(v58));
  memcpy(&v57, v45, sizeof(v57));
  memcpy(&v56, v46, sizeof(v56));
  memcpy(&v55, v47, sizeof(v55));
  v31 = sub_25BCB548C();
  v54 = *(*(v25 + 40) + 152);
  v32 = sub_25BC6FC68();
  if (!*(v32 + 16))
  {
    goto LABEL_18;
  }

  v33 = *(v32 + 32);

  v54 = *(*(v25 + 40) + 152);
  v34 = sub_25BC6FC68();
  if (!*(v34 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v35 = *(v34 + 32);

  v54 = *(*(v25 + 40) + 152);
  v36 = sub_25BC6FC68();
  if (!*(v36 + 16))
  {
    goto LABEL_20;
  }

  v37 = *(v36 + 32);

  if (BNNSNormalizationFilterApplyBackwardBatch(v31, v29, &v58, v33, v23, v35, &v57, v37, &v55, &v56))
  {
    goto LABEL_11;
  }
}

uint64_t sub_25BC35A34(uint64_t a1)
{
  result = sub_25BC35ABC(&qword_27FBB6140, type metadata accessor for BatchNormGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC35A78(uint64_t a1)
{
  result = sub_25BC35ABC(&qword_27FBB6148, type metadata accessor for BatchNormOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC35ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BC35B10@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  swift_getObjectType();
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a1;
  return sub_25BC675C0(sub_25BC35EB4, v20, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BC35BFC@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  swift_getObjectType();
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a1;
  return sub_25BC675C0(sub_25BC35EF0, v19, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BC35CD8@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, uint64_t a10)
{
  swift_getObjectType();
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a1;
  return sub_25BC675C0(sub_25BC35F28, v18, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BC35DAC@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9)
{
  swift_getObjectType();
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a1;
  return sub_25BC675C0(sub_25BB457F0, v17, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BC36048(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v6 = sub_25BB49D04();
  sub_25BAB4D78(a2, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](a2, v6);
  }

  else
  {
  }

  v7 = sub_25BAC4018();

  return sub_25BB3EE04(v7, a1);
}

void sub_25BC360F0(unint64_t a1)
{
  type metadata accessor for NativeTensorStorage(0);
  v3 = sub_25BB49E68();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v3 + 16 * a1 + 32);
  sub_25BCB617C();

  v7 = v4;
  v5 = *(v1 + 168);
  if (*(v5 + 16) > a1)
  {
    v6 = *(v5 + 16 * a1 + 40);
    sub_25BBC0130(&v7, &v6, 0, 0);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_25BC361B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (result)
  {
    ObjectType = swift_getObjectType();
    v6 = *(a2 + 16);
    swift_unknownObjectRetain();
    v17 = ObjectType;
    v6(__dst, ObjectType, a2);
    result = __dst[0];
    if (*(__dst[0] + 16))
    {
      v7 = *(__dst[0] + 32);

      if (!v3)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v7 == 0x8000000000000000 && v3 == -1)
      {
        goto LABEL_32;
      }

      if (v3 < 0)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277D84F90];
      v9 = v7 / v3;
      result = sub_25BB00AB4(0, v3, 0);
      v10 = 1;
      v11 = v20;
      while (1)
      {
        v12 = (v10 - 1) * v9;
        if (((v10 - 1) * v9) >> 64 != v12 >> 63)
        {
          break;
        }

        if ((v10 * v9) >> 64 != (v10 * v9) >> 63)
        {
          goto LABEL_26;
        }

        if (v10 * v9 < v12)
        {
          goto LABEL_27;
        }

        type metadata accessor for BNNSNDArrayDescriptor(0);
        sub_25BC36408((v10 - 1) * v9, v10 * v9, sub_25BC363F8, 0, v17, v13, a2, __src);
        memcpy(__dst, __src, sizeof(__dst));
        v20 = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_25BB00AB4((v14 > 1), v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 16) = v15 + 1;
        result = memcpy((v11 + 176 * v15 + 32), __dst, 0xB0uLL);
        if (v3 == v10)
        {
          swift_unknownObjectRelease();
          return v11;
        }

        ++v10;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (a3 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for BNNSNDArrayDescriptor(0);
  v11 = sub_25BCB67DC();
  *(v11 + 16) = v3;
  v16 = 32;
  do
  {
    bzero((v11 + v16), 0xB0uLL);
    v16 += 176;
    --v3;
  }

  while (v3);
  return v11;
}

uint64_t sub_25BC36408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a6;
  v10 = v8;
  v58 = a3;
  v59 = a4;
  v66 = a2;
  v67 = a1;
  v60 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v56 - v14;
  v15 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v64 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v63 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a7 + 8;
  v65 = *(a7 + 8);
  v65(&v68, a5, a7, v18);
  if (v68 > 0xCu || ((1 << v68) & 0x1777) == 0)
  {
    goto LABEL_39;
  }

  v21 = a7 + 16;
  v22 = *(a7 + 16);
  v23 = OUTLINED_FUNCTION_1_62();
  v22(v23);
  v24 = v68[1].i64[0];

  if (v24)
  {
    v25 = v67 == v66;
  }

  else
  {
    v25 = 1;
  }

  if (v25 || (v26 = OUTLINED_FUNCTION_1_62(), v22(v26), OUTLINED_FUNCTION_7_45(), v27 = sub_25BAC863C(0), , v27))
  {
    OUTLINED_FUNCTION_10_38();
    v56 = 175;
    v50 = v52 + 20;
LABEL_42:
    v49 = v51 | 0x8000000000000000;
    goto LABEL_43;
  }

  v28 = OUTLINED_FUNCTION_1_62();
  v22(v28);
  OUTLINED_FUNCTION_7_45();
  v29 = sub_25BC6FC68();

  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v62 = v15;
  v15 = *(v29 + 32);

  v9 = v15 * v67;
  if ((v15 * v67) >> 64 != (v15 * v67) >> 63)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = OUTLINED_FUNCTION_1_62();
  (v65)(v33);
  if (v68 - 1 > 0xA)
  {
    v34 = 1;
  }

  else
  {
    v34 = qword_25BCCD4A0[(v68 - 1)];
  }

  v15 = v9 * v34;
  if ((v9 * v34) >> 64 != (v9 * v34) >> 63)
  {
    goto LABEL_31;
  }

  v35 = OUTLINED_FUNCTION_1_62();
  v22(v35);
  OUTLINED_FUNCTION_7_45();
  v29 = sub_25BC6FC68();

  if (!*(v29 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v56 = v15;
  v15 = *(v29 + 32);

  v9 = v15 * v66;
  if ((v15 * v66) >> 64 != (v15 * v66) >> 63)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = OUTLINED_FUNCTION_1_62();
  (v65)(v36);
  if (v68 - 1 > 0xA)
  {
    v37 = 1;
  }

  else
  {
    v37 = qword_25BCCD4A0[(v68 - 1)];
  }

  v15 = v62;
  v20 = v9 * v37;
  if ((v9 * v37) >> 64 != (v9 * v37) >> 63)
  {
    goto LABEL_34;
  }

  v38 = OUTLINED_FUNCTION_1_62();
  v22(v38);
  v29 = v63;
  if (v67 < 0)
  {
LABEL_41:
    OUTLINED_FUNCTION_10_38();
    v56 = 182;
    v50 = v53 + 1;
    goto LABEL_42;
  }

  v9 = v68;
  if (!v68[1].i64[0])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v68[2].i64[0] < v66)
  {
    goto LABEL_41;
  }

  v21 = v66 - v67;
  if (!__OFSUB__(v66, v67))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_25BAA2110(v9, v30, v31, v32);
  v9 = v48;
LABEL_25:
  if (!*(v9 + 16))
  {
    __break(1u);
LABEL_39:
    v55 = 0;
    v54 = 170;
    v49 = 0x800000025BCD9820;
    v50 = 0xD000000000000027;
LABEL_43:
    result = sub_25BCB74CC("Fatal error", 11, 2, v50, v49, "NeuralNetworks/BNNSLSTMOps.swift", 32, 2, v56);
    __break(1u);
    return result;
  }

  *(v9 + 32) = v21;
  v39 = sub_25BCB50AC();
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v39);
  sub_25BCB617C();
  v40 = sub_25BCB54FC();
  if (*(v9 + 16) == 2)
  {
    v41 = v64;
    (*(v64 + 8))(v29, v15);
    *v29 = vextq_s8(*(v9 + 32), *(v9 + 32), 8uLL);
    *(v29 + 16) = vdupq_n_s64(1uLL);
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    v40 = (*(v41 + 104))(v29, *MEMORY[0x277D830B0], v15);
  }

  v42 = MEMORY[0x28223BE20](v40);
  v43 = v61;
  *(&v56 - 10) = a5;
  *(&v56 - 9) = v43;
  v44 = v56;
  *(&v56 - 8) = a7;
  *(&v56 - 7) = v44;
  *(&v56 - 6) = v20;
  *(&v56 - 5) = v10;
  v46 = v58;
  v45 = v59;
  *(&v56 - 4) = v29;
  *(&v56 - 3) = v46;
  v54 = v45;
  (*(a7 + 56))(sub_25BC39A0C, v42);
  (*(v64 + 8))(v29, v15);
}

void *sub_25BC369A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a5@<X4>, void *a6@<X8>)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result[2] <= a5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = memcpy(v10, &result[22 * a5 + 4], sizeof(v10));
  if (*(a2 + 16) <= a5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = memcpy(__dst, (a2 + 176 * a5 + 32), sizeof(__dst));
  if (*(a3 + 16) > a5)
  {
    memcpy(&v13[88], (a3 + 176 * a5 + 32), 0xB0uLL);
    sub_25BCB6CCC();
    memcpy(__src, v10, 0xB0uLL);
    bzero(&__src[176], 0xB0uLL);
    memcpy(v13, __src, 0x160uLL);
    memcpy(&v13[44], __dst, 0xB0uLL);
    bzero(&v13[66], 0xB0uLL);
    return memcpy(a6, v13, 0x3A0uLL);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25BC379A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x28223BE20](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  memcpy(v51, v25, 0xB1uLL);
  if (sub_25BB456E4(v51) == 1 || (memcpy(v45, v51, sizeof(v45)), memcpy(v50, v18, 0xB1uLL), sub_25BB456E4(v50) == 1) || (memcpy(v44, v50, sizeof(v44)), memcpy(v49, v16, 0xB1uLL), sub_25BB456E4(v49) == 1) || (memcpy(v43, v49, sizeof(v43)), memcpy(v48, v14, 0xB1uLL), sub_25BB456E4(v48) == 1))
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000021, 0x800000025BCE3DA0, "NeuralNetworks/BNNSLSTMOps.swift", 32, 2, 120);
    __break(1u);
  }

  else
  {
    memcpy(v42, v48, sizeof(v42));
    v32 = sub_25BB4AED4();
    v31 = sub_25BB4B058();
    v26 = sub_25BB4AF2C();
    v27 = sub_25BB4AE88();
    v28 = *(v12 + 96);
    memcpy(v47, v22, 0xB1uLL);
    if (sub_25BB456E4(v47) == 1)
    {
      bzero(v41, 0xB0uLL);
    }

    else
    {
      memcpy(v41, v22, sizeof(v41));
    }

    memcpy(v46, v20, 0xB1uLL);
    if (sub_25BB456E4(v46) == 1)
    {
      bzero(v40, 0xB0uLL);
    }

    else
    {
      memcpy(v40, v20, sizeof(v40));
    }

    memcpy(__dst, v45, 0xB0uLL);
    memcpy(&__dst[176], v41, 0xB0uLL);
    memcpy(&__dst[352], v40, 0xB0uLL);
    memcpy(__src, v44, 0xB0uLL);
    memcpy(&__src[176], v43, 0xB0uLL);
    memcpy(&__src[352], v42, 0xB0uLL);
    sub_25BCB6DCC();
    sub_25BC369A8(a9, a10, a11, 0, v39);
    sub_25BCB6DCC();
    sub_25BC369A8(a9, a10, a11, 1uLL, v38);
    sub_25BCB6DBC();
    sub_25BC369A8(a9, a10, a11, 2uLL, v37);
    sub_25BCB6DCC();
    sub_25BC369A8(a9, a10, a11, 3uLL, v36);
    sub_25BCB6DBC();
    sub_25BCB6CCC();
    *v24 = v32;
    *(v24 + 8) = v31;
    *(v24 + 16) = v26;
    *(v24 + 24) = 1;
    *(v24 + 32) = v27;
    *(v24 + 40) = 0;
    *(v24 + 44) = v28;
    bzero((v24 + 48), 0xB0uLL);
    memcpy((v24 + 224), __dst, 0x210uLL);
    memcpy((v24 + 752), __src, 0x210uLL);
    memcpy((v24 + 1280), v39, 0x3A0uLL);
    memcpy((v24 + 2208), v38, 0x3A0uLL);
    memcpy((v24 + 3136), v37, 0x3A0uLL);
    result = memcpy((v24 + 4064), v36, 0x3A0uLL);
    v30 = v35[1];
    *(v24 + 4992) = v35[0];
    *(v24 + 5008) = v30;
    *(v24 + 5024) = v35[2];
  }

  return result;
}

void sub_25BC37E88(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void (*a5)(_DWORD *)@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a6;
  v26 = a4;
  v27 = a7;
  v13 = sub_25BCB54EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    v25 = a5;
    v23 = a8;
    v18 = v15;
    v24 = sub_25BCB6F2C();
    (*(a10 + 8))(&v30, v23, a10);
    v19 = v30;
    (*(v14 + 16))(v17, v26, v18);
    v20 = sub_25BCB54CC();
    sub_25BCB54BC();
    sub_25BCB54DC();
    v29 = v19;
    v21 = sub_25BBF4F40();
    v28 = v19;
    v22 = sub_25BBF4F40();
    (*(v14 + 8))(v17, v18);
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v46 = v37;
    v39[0] = 0;
    v39[1] = v20;
    v47 = v38;
    v48 = v24;
    v49 = v21;
    v50 = 0;
    v51 = v22;
    v52 = 1065353216;
    v25(v39);
  }
}

uint64_t sub_25BC380B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v114[2] = a5;
  v114[3] = a6;
  v114[4] = a7;
  v114[5] = a8;
  v114[6] = a10;
  v114[7] = a11;
  v114[8] = a12;
  v114[9] = a13;
  v114[10] = a14;
  v114[11] = a15;
  v114[12] = a16;
  v114[13] = a17;
  v114[14] = a18;
  v114[15] = a19;
  v114[16] = a20;
  v114[17] = a21;
  v114[18] = a22;
  v114[19] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v103 = sub_25BC39C14;
    v104 = v114;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v26 = v25;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v102, v26, a9);
    return swift_unknownObjectRelease();
  }

  else
  {
    v105[1] = a7;
    v105[2] = a6;
    v110 = a18;
    v111 = a9;
    v112 = a15;
    v113 = v22;
    v108 = a1;
    v109 = a20;
    v106 = a5;
    v107 = a8;
    v105[3] = a10;
    v117 = a12;
    sub_25BB45648(v115);
    memcpy(v116, v115, 0xB1uLL);
    MEMORY[0x28223BE20](v108);
    v101[2] = v107;
    v101[3] = a10;
    v101[4] = a11;
    v101[5] = v29;
    v101[6] = v30;
    v101[7] = v31;
    v101[8] = v32;
    v101[9] = a16;
    v101[10] = v33;
    v101[11] = v34;
    v101[12] = v35;
    v101[13] = v36;
    v102[0] = v37;
    v102[1] = a22;
    v103 = v28;
    v104 = v116;
    if (v106)
    {
      v38 = swift_getObjectType();
      MEMORY[0x28223BE20](v38);
      v99 = sub_25BC39BFC;
      v100 = v101;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v40 = v39;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v98, v40, v111);
      return swift_unknownObjectRelease();
    }

    else
    {
      MEMORY[0x28223BE20](v28);
      v97[2] = v42;
      v97[3] = v43;
      v97[4] = v44;
      v97[5] = v45;
      v97[6] = a16;
      v97[7] = v46;
      v97[8] = v47;
      v97[9] = v48;
      v97[10] = v50;
      v97[11] = v49;
      v98[0] = a22;
      v98[1] = v41;
      v99 = v116;
      v100 = v116;
      if (v107)
      {
        v51 = swift_getObjectType();
        v117 = v97;
        MEMORY[0x28223BE20](v51);
        v95 = sub_25BC39BE4;
        v96 = v97;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v53 = v52;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v94, v53, v111);
        return swift_unknownObjectRelease();
      }

      else
      {
        MEMORY[0x28223BE20](v41);
        v93[2] = v55;
        v93[3] = a16;
        v93[4] = v56;
        v93[5] = v57;
        v93[6] = v58;
        v93[7] = v59;
        v93[8] = v60;
        v93[9] = a22;
        v94[0] = v54;
        v94[1] = v116;
        v95 = v116;
        v96 = v116;
        if (v61)
        {
          v112 = v97;
          v62 = swift_getObjectType();
          MEMORY[0x28223BE20](v62);
          v91 = sub_25BC39BB4;
          v92 = v93;
          type metadata accessor for BNNSLayerParametersLSTM(0);
          v64 = v63;
          swift_unknownObjectRetain();
          sub_25BC675C0(sub_25BB45828, v90, v64, v111);
          return swift_unknownObjectRelease();
        }

        else
        {
          v117 = v101;
          v107 = v105;
          MEMORY[0x28223BE20](v54);
          v89[2] = v66;
          v89[3] = v67;
          v89[4] = v69;
          v89[5] = v68;
          v89[6] = a22;
          v89[7] = v65;
          v90[0] = v70;
          v90[1] = v70;
          v91 = v70;
          v92 = v70;
          v71 = v111;
          if (v72)
          {
            v73 = swift_getObjectType();
            v110 = v89;
            MEMORY[0x28223BE20](v73);
            v87 = sub_25BC39BCC;
            v88 = v89;
            type metadata accessor for BNNSLayerParametersLSTM(0);
            v75 = v74;
            swift_unknownObjectRetain();
            sub_25BC675C0(sub_25BB45828, v86, v75, v71);
            return swift_unknownObjectRelease();
          }

          else
          {
            v78 = MEMORY[0x28223BE20](v65);
            v85[2] = v76;
            v85[3] = a22;
            v85[4] = v79;
            v85[5] = v116;
            v86[0] = v116;
            v86[1] = v116;
            v87 = v116;
            v88 = v116;
            if (v80)
            {
              v112 = v77;
              v81 = swift_getObjectType();
              MEMORY[0x28223BE20](v81);
              v84[2] = sub_25BC39B9C;
              v84[3] = v85;
              type metadata accessor for BNNSLayerParametersLSTM(0);
              v83 = v82;
              swift_unknownObjectRetain();
              sub_25BC675C0(sub_25BB45828, v84, v83, v111);
              return swift_unknownObjectRelease();
            }

            else
            {
              return v76(v78);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25BC38780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v97[2] = a5;
  v97[3] = a6;
  v97[4] = a7;
  v97[5] = a8;
  v97[6] = a10;
  v97[7] = a11;
  v97[8] = a12;
  v97[9] = a13;
  v97[10] = a14;
  v97[11] = a15;
  v97[12] = a16;
  v97[13] = a17;
  v97[14] = a18;
  v97[15] = a19;
  v97[16] = a20;
  v97[17] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v86 = sub_25BC39BFC;
    v87 = v97;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v24 = v23;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v85, v24, a9);
    return swift_unknownObjectRelease();
  }

  else
  {
    v88[1] = a7;
    v89 = a6;
    v92 = v20;
    v93 = a9;
    v95 = a17;
    v96 = a15;
    v100 = a12;
    v94 = a16;
    v90 = a10;
    v91 = a1;
    sub_25BB45648(v98);
    memcpy(v99, v98, 0xB1uLL);
    MEMORY[0x28223BE20](a8);
    v84[2] = v28;
    v84[3] = a10;
    v84[4] = v29;
    v84[5] = v30;
    v84[6] = a13;
    v84[7] = v31;
    v84[8] = a15;
    v84[9] = v32;
    v84[10] = v33;
    v84[11] = a18;
    v85[0] = v34;
    v85[1] = a20;
    v86 = v35;
    v87 = v36;
    if (a5)
    {
      v37 = swift_getObjectType();
      MEMORY[0x28223BE20](v37);
      v82 = sub_25BC39BE4;
      v83 = v84;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v39 = v38;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v81, v39, v93);
      return swift_unknownObjectRelease();
    }

    else
    {
      v89 = v88;
      MEMORY[0x28223BE20](v28);
      v80[2] = v40;
      v80[3] = a13;
      v80[4] = v41;
      v80[5] = a15;
      v80[6] = v42;
      v80[7] = v43;
      v80[8] = v45;
      v80[9] = v44;
      v81[0] = a20;
      v81[1] = v46;
      v82 = v47;
      v83 = v47;
      if (v48)
      {
        v49 = swift_getObjectType();
        MEMORY[0x28223BE20](v49);
        v78 = sub_25BC39BB4;
        v79 = v80;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v51 = v50;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v77, v51, v93);
        return swift_unknownObjectRelease();
      }

      else
      {
        MEMORY[0x28223BE20](0);
        v76[2] = a15;
        v76[3] = v53;
        v76[4] = v55;
        v76[5] = v54;
        v76[6] = v56;
        v76[7] = a20;
        v77[0] = v57;
        v77[1] = v99;
        v78 = v99;
        v79 = v99;
        if (v58)
        {
          v59 = swift_getObjectType();
          MEMORY[0x28223BE20](v59);
          v74 = sub_25BC39BCC;
          v75 = v76;
          type metadata accessor for BNNSLayerParametersLSTM(0);
          v61 = v60;
          swift_unknownObjectRetain();
          sub_25BC675C0(sub_25BB45828, v73, v61, v93);
          return swift_unknownObjectRelease();
        }

        else
        {
          v100 = v84;
          v63 = MEMORY[0x28223BE20](v52);
          v72[2] = v62;
          v72[3] = v64;
          v72[4] = a20;
          v72[5] = v65;
          v73[0] = v66;
          v73[1] = v66;
          v74 = v66;
          v75 = v66;
          v67 = v93;
          if (a15)
          {
            v68 = swift_getObjectType();
            MEMORY[0x28223BE20](v68);
            v71[2] = sub_25BC39B9C;
            v71[3] = v72;
            type metadata accessor for BNNSLayerParametersLSTM(0);
            v70 = v69;
            swift_unknownObjectRetain();
            sub_25BC675C0(sub_25BB45828, v71, v70, v67);
            return swift_unknownObjectRelease();
          }

          else
          {
            return v62(a20, v63);
          }
        }
      }
    }
  }
}

uint64_t sub_25BC38D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v75[2] = a5;
  v75[3] = a6;
  v75[4] = a7;
  v75[5] = a8;
  v75[6] = a10;
  v75[7] = a11;
  v75[8] = a12;
  v75[9] = a13;
  v75[10] = a14;
  v75[11] = a15;
  v75[12] = a16;
  v75[13] = a17;
  v75[14] = a18;
  v75[15] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v67 = sub_25BC39BE4;
    v68 = v75;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v22 = v21;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v66, v22, a9);
    return swift_unknownObjectRelease();
  }

  else
  {
    v69[1] = a7;
    v69[2] = a6;
    v72 = v18;
    v73 = a9;
    v78 = a12;
    v74 = a13;
    v70 = a5;
    v71 = a8;
    sub_25BB45648(v76);
    v24 = memcpy(v77, v76, 0xB1uLL);
    v25 = v71;
    v26 = v78;
    MEMORY[0x28223BE20](v24);
    v65[2] = v71;
    v65[3] = a10;
    v65[4] = v28;
    v65[5] = v26;
    v65[6] = v29;
    v65[7] = a14;
    v65[8] = v30;
    v65[9] = a16;
    v66[0] = v32;
    v66[1] = v31;
    v67 = v33;
    v68 = v34;
    if (v70)
    {
      v35 = swift_getObjectType();
      MEMORY[0x28223BE20](v35);
      v63 = sub_25BC39BB4;
      v64 = v65;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v37 = v36;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v62, v37, v73);
      return swift_unknownObjectRelease();
    }

    else
    {
      v70 = v69;
      MEMORY[0x28223BE20](v27);
      v61[2] = v26;
      v61[3] = v39;
      v61[4] = a14;
      v61[5] = v40;
      v61[6] = a16;
      v61[7] = v41;
      v62[0] = v42;
      v62[1] = v43;
      v63 = v44;
      v64 = v44;
      if (v25)
      {
        v45 = swift_getObjectType();
        MEMORY[0x28223BE20](v45);
        v59 = sub_25BC39BCC;
        v60 = v61;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v47 = v46;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v58, v47, v73);
        return swift_unknownObjectRelease();
      }

      else
      {
        v50 = MEMORY[0x28223BE20](v38);
        v57[2] = v49;
        v57[3] = a16;
        v57[4] = v48;
        v57[5] = v51;
        v58[0] = v52;
        v58[1] = v77;
        v59 = v77;
        v60 = v77;
        if (v26)
        {
          v53 = swift_getObjectType();
          MEMORY[0x28223BE20](v53);
          v56[2] = sub_25BC39B9C;
          v56[3] = v57;
          type metadata accessor for BNNSLayerParametersLSTM(0);
          v55 = v54;
          swift_unknownObjectRetain();
          sub_25BC675C0(sub_25BB45828, v56, v55, v73);
          return swift_unknownObjectRelease();
        }

        else
        {
          return v49(v48, v50);
        }
      }
    }
  }
}

uint64_t sub_25BC3918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, __n128), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v55[2] = a5;
  v55[3] = a6;
  v55[4] = a7;
  v55[5] = a8;
  v55[6] = a10;
  v55[7] = a11;
  v55[8] = a12;
  v55[9] = a13;
  v55[10] = a14;
  v55[11] = a15;
  v55[12] = a16;
  v55[13] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v48 = sub_25BC39BB4;
    v49 = v55;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v20 = v19;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v47, v20, a9);
    return swift_unknownObjectRelease();
  }

  else
  {
    v50 = a7;
    v51 = a6;
    v54 = a9;
    v58 = v16;
    v52 = a10;
    v53 = a8;
    sub_25BB45648(v56);
    v23 = memcpy(v57, v56, sizeof(v57));
    v24 = v53;
    MEMORY[0x28223BE20](v23);
    v46[2] = v53;
    v46[3] = a10;
    v46[4] = a11;
    v46[5] = a12;
    v46[6] = v26;
    v46[7] = a14;
    v47[0] = v27;
    v47[1] = a16;
    v48 = v28;
    v49 = v29;
    if (a5)
    {
      v30 = swift_getObjectType();
      MEMORY[0x28223BE20](v30);
      v44 = sub_25BC39BCC;
      v45 = v46;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v32 = v31;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v43, v32, v54);
      return swift_unknownObjectRelease();
    }

    else
    {
      v51 = v46;
      v33 = MEMORY[0x28223BE20](v25);
      v42[2] = a12;
      v42[3] = v34;
      v42[4] = a14;
      v42[5] = v35;
      v43[0] = a16;
      v43[1] = v36;
      v44 = v37;
      v45 = v37;
      if (v24)
      {
        v38 = swift_getObjectType();
        MEMORY[0x28223BE20](v38);
        v41[2] = sub_25BC39B9C;
        v41[3] = v42;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v40 = v39;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v41, v40, v54);
        return swift_unknownObjectRelease();
      }

      else
      {
        return a12(a14, v33);
      }
    }
  }
}

uint64_t sub_25BC39540()
{
  OUTLINED_FUNCTION_0_76();
  OUTLINED_FUNCTION_8_45();
  return sub_25BC380B8(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
}

uint64_t sub_25BC395CC@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36[2] = a5;
  v36[3] = a6;
  v36[4] = a7;
  v36[5] = a8;
  v36[6] = a10;
  v36[7] = a11;
  v36[8] = a12;
  v36[9] = a13;
  v36[10] = a14;
  v36[11] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v31 = sub_25BC399DC;
    v32 = v36;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v18 = v17;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v30, v18, a9);
    return swift_unknownObjectRelease();
  }

  else
  {
    v33 = a7;
    v34 = a6;
    v35 = a9;
    v39 = v14;
    sub_25BB45648(v37);
    memcpy(v38, v37, 0xB1uLL);
    v23 = MEMORY[0x28223BE20](a5);
    v29[2] = v22;
    v29[3] = a10;
    v29[4] = a11;
    v29[5] = a12;
    v30[0] = a13;
    v30[1] = a14;
    v31 = a1;
    v32 = v38;
    if (v24)
    {
      v25 = swift_getObjectType();
      MEMORY[0x28223BE20](v25);
      v28[2] = sub_25BC399F4;
      v28[3] = v29;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v27 = v26;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v28, v27, v35);
      return swift_unknownObjectRelease();
    }

    else
    {
      return v22(a11, a12, a13, a14, a1, v38, v38, v23);
    }
  }
}

uint64_t sub_25BC39858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = a9;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a10;
  v22[7] = a11;
  v22[8] = a12;
  v22[9] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v20[2] = sub_25BC39B9C;
    v20[3] = v22;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v14 = v13;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v20, v14, v21);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v23);
    memcpy(v24, v23, 0xB1uLL);
    return a5(a7, a8, a10, a11, a12, a1, v24);
  }
}

uint64_t sub_25BC39A48()
{
  OUTLINED_FUNCTION_0_76();
  OUTLINED_FUNCTION_8_45();
  return sub_25BC38780(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v0[17], v0[18], v0[19]);
}

uint64_t sub_25BC39A88()
{
  OUTLINED_FUNCTION_0_76();
  OUTLINED_FUNCTION_8_45();
  return sub_25BC38D10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, *(v0 + 136));
}

uint64_t sub_25BC39C2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  v5 = sub_25BAAF074(sub_25BBAF110, 0);
  v7 = v6;
  *&v36 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryArithmeticOps.swift";
  *(&v36 + 1) = 120;
  v37 = 2;
  v38 = xmmword_25BCC6DB0;
  v39 = "init(id:operator:operand:creationSite:backward:)";
  v40 = 48;
  v41 = 2;
  type metadata accessor for UnaryArithmeticOperation();
  swift_allocObject();
  v8 = sub_25BABE090(0, 0, 0, 13, v4, &v36, v5, v7);
  sub_25BAA51C8(*(v3 + 16) + 168, v35);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v33);

  v9 = v34;

  sub_25BAA4AF4(v33);
  sub_25BAA49B8();
  sub_25BAA4A5C(v33);

  v10 = v33[9];

  sub_25BAA4AF4(v33);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();
  OUTLINED_FUNCTION_0_77();
  v14 = sub_25BABE62C(v8, 0, v11, v12, v9, v10, v13);
  type metadata accessor for TensorHandle();
  inited = swift_initStackObject();
  *(inited + 16) = v14;

  sub_25BAA6EB0();

  v16 = sub_25BAB3058();
  v18 = v17;

  if (v16)
  {
    v32 = a1;
    type metadata accessor for TrackedOperation();
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    sub_25BAA51C8(*(inited + 16) + 168, v35);

    swift_unknownObjectRetain();
    v20 = sub_25BAD259C();

    sub_25BAA49B8();
    sub_25BAA4A5C(v33);

    v21 = v34;

    sub_25BAA4AF4(v33);
    swift_allocObject();
    OUTLINED_FUNCTION_0_77();
    v25 = sub_25BC102F4(v19, 0, v22, v23, v21, v20, v24);

    v26 = sub_25BA9BEA8();
    v28 = v27;

    if (v26)
    {

      swift_unknownObjectRetain();
      v29 = sub_25BA928B4();
      [v29 lock];

      sub_25BC5F7F0(v25, v26, v28);
      [*(v25 + 224) unlock];
      swift_unknownObjectRelease_n();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = v25;

    sub_25BAA6EB0();

    swift_setDeallocating();
    sub_25BA9B528();
    swift_deallocClassInstance();

    swift_unknownObjectRelease();

    a1 = v32;
  }

  else
  {
    v35[0] = inited;
    sub_25BC39C2C(v33);

    swift_setDeallocating();
    sub_25BA9B528();
    result = swift_deallocClassInstance();
    v30 = v33[0];
  }

  *a1 = v30;
  return result;
}

uint64_t sub_25BC3A020()
{
  OUTLINED_FUNCTION_4_57();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(OUTLINED_FUNCTION_5(v4) + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_0_78();
  if (v3)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v5 = *(v2 + 32);
  }

  v6 = v5;
  sub_25BAF99E8(v0[6]);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  v9 = v0[3];
  v8 = v0[4];
  sub_25BCB617C();
  sub_25BB2B6E0(v6, v7, v9, v8, v1);

  return OUTLINED_FUNCTION_2_66();
}

uint64_t sub_25BC3A124(void *a1, uint64_t a2, SEL *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v8 = OUTLINED_FUNCTION_5(v7);
  *(v8 + 16) = xmmword_25BCBB6D0;
  v9 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v9, v10, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v11 = *(a2 + 32);
  }

  v12 = v11;
  sub_25BAF99E8(v3[6]);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v13 = sub_25BCB672C();

  v15 = v3[3];
  v14 = v3[4];
  sub_25BCB617C();
  v16 = sub_25BB07CA4(v12, v13, v15, v14, a1, a3);

  *(v8 + 32) = v16;
  return v8;
}

uint64_t sub_25BC3A25C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = OUTLINED_FUNCTION_5(v6);
  *(v7 + 16) = xmmword_25BCBB6D0;
  v8 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v8, v9, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = v10;
  v12 = sub_25BC6640C();
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  sub_25BCB617C();
  v15 = sub_25BB9FAD0(v11, v12, v13, v14, a1);

  *(v7 + 32) = v15;
  return v7;
}

uint64_t sub_25BC3A35C(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  v6 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v6, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  sub_25BAB4D78(1uLL, v5 == 0, a2);
  if (v5)
  {
    v10 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v10 = *(a2 + 40);
  }

  v11 = v10;
  v12 = *(v2 + 40);
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      v13 = *(v2 + 48);
      v15 = *(v2 + 24);
      v14 = *(v2 + 32);
      sub_25BCB617C();
      v16 = sub_25BC3B1F4(v9, v11, v12, v13, v15, v14, a1);
      goto LABEL_12;
    }

    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    sub_25BCB617C();
    v19 = &selRef_gatherNDWithUpdatesTensor_indicesTensor_batchDimensions_name_;
    v20 = v9;
    v21 = v11;
    v22 = v12;
  }

  else
  {
    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    sub_25BCB617C();
    v19 = &selRef_gatherAlongAxis_withUpdatesTensor_indicesTensor_name_;
    v20 = v12;
    v21 = v9;
    v22 = v11;
  }

  v16 = sub_25BB2B84C(v20, v21, v22, v18, v17, a1, v19);
LABEL_12:
  v23 = v16;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  result = OUTLINED_FUNCTION_5(v24);
  *(result + 16) = xmmword_25BCBB6D0;
  if (v23)
  {
    v26 = result;
    *(result + 32) = v23;

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC3A510(void *a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, a2);
  if (v4)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v24 = v7;
  sub_25BAB4D78(1uLL, v4 == 0, a2);
  if (v4)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = v8;
  sub_25BAB4D78(2uLL, v4 == 0, a2);
  if (v4)
  {
    v10 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  v11 = v10;
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v15 = OUTLINED_FUNCTION_5(v14);
  *(v15 + 16) = xmmword_25BCBB6D0;
  v16 = sub_25BC3A4FC();
  v18 = *(v2 + 24);
  v17 = *(v2 + 32);
  sub_25BCB617C();
  if (v13)
  {
    if (v13 == 1)
    {
      v19 = &selRef_scatterWithDataTensor_updatesTensor_indicesTensor_axis_mode_name_;
    }

    else
    {
      v19 = &selRef_scatterNDWithDataTensor_updatesTensor_indicesTensor_batchDimensions_mode_name_;
    }

    v20 = v24;
    v21 = sub_25BC3B290(v24, v11, v9, v12, v16, v18, v17, a1, v19);
  }

  else
  {
    v20 = v24;
    v21 = sub_25BC3B290(v12, v24, v11, v9, v16, v18, v17, a1, &selRef_scatterAlongAxis_withDataTensor_updatesTensor_indicesTensor_mode_name_);
  }

  *(v15 + 32) = v21;

  return v15;
}

uint64_t sub_25BC3A6D8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = OUTLINED_FUNCTION_5(v4);
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v6 = sub_25BCB672C();
  v7 = v2[6];
  v9 = v2[3];
  v8 = v2[4];
  sub_25BCB617C();
  v10 = sub_25BB07CA4(v6, v7, v9, v8, a1, &selRef_concatTensors_dimension_name_);

  *(v5 + 32) = v10;
  return v5;
}

uint64_t sub_25BC3A7DC(void *a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  if (*(v2 + 56) == 1)
  {
    OUTLINED_FUNCTION_0_78();
    if (v3)
    {
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = v7;
    sub_25BAF99E8(v6);
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v9 = sub_25BCB672C();

    v10 = *(v2 + 64);
    v11 = sub_25BCB633C();
    v12 = [a1 splitTensor:v8 splitSizes:v9 axis:v10 name:v11];
  }

  else
  {
    OUTLINED_FUNCTION_0_78();
    if (v3)
    {
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v13 = *(a2 + 32);
    }

    v9 = v13;
    v14 = *(v2 + 64);
    v11 = sub_25BCB633C();
    v12 = [a1 splitTensor:v9 numSplits:v6 axis:v14 name:v11];
  }

  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v15 = sub_25BCB673C();

  return v15;
}

uint64_t sub_25BC3A96C(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  v6 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v6, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = *(v2 + 48);
  v11 = sub_25BCB633C();
  v12 = [a1 topKWithSourceTensor:v9 k:v10 name:v11];

  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v13 = sub_25BCB673C();

  return v13;
}

uint64_t sub_25BC3AA60()
{
  OUTLINED_FUNCTION_4_57();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(OUTLINED_FUNCTION_5(v3) + 16) = xmmword_25BCBB6D0;
  v4 = v2 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v7 = *(v2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1uLL, v4 == 0, v2);
  if (v4)
  {
    v9 = MEMORY[0x25F8779B0](1, v2);
  }

  else
  {
    v9 = *(v2 + 40);
  }

  v10 = v9;
  v11 = v0[7];
  v13 = v0[3];
  v12 = v0[4];
  sub_25BCB617C();
  sub_25BB2B84C(v8, v10, v11, v13, v12, v1, &selRef_topKWithGradientTensor_source_k_name_);

  return OUTLINED_FUNCTION_2_66();
}

uint64_t sub_25BC3AB98(void *a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = OUTLINED_FUNCTION_5(v6);
  *(v7 + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_0_78();
  if (v3)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v11 = *(v2 + 24);
  v10 = *(v2 + 32);
  sub_25BCB617C();
  v12 = sub_25BC3B33C(v9, v11, v10, a1);

  *(v7 + 32) = v12;
  return v7;
}

uint64_t sub_25BC3AC60()
{
  OUTLINED_FUNCTION_4_57();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(OUTLINED_FUNCTION_5(v4) + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_0_78();
  if (v3)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v5 = *(v2 + 32);
  }

  v6 = v5;
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[3];
  v9 = v0[4];
  sub_25BCB617C();
  sub_25BB2B84C(v6, v7, v8, v10, v9, v1, &selRef_bandPartWithTensor_numLower_numUpper_name_);

  return OUTLINED_FUNCTION_2_66();
}

uint64_t sub_25BC3AD34(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6158, type metadata accessor for BandPartOperation, byte_25BCCDD6C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AD8C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6160, type metadata accessor for NonZeroIndicesOperation, aU_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3ADE4(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6180, type metadata accessor for ReverseOperation, byte_25BCCDE68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AE3C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB68F0, type metadata accessor for TopKGradientOperation, aY_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AE94(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6150, type metadata accessor for TopKOperation, byte_25BCCDF64);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AEEC(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6178, type metadata accessor for SplitOperation, aAL);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AF44(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154E7E8, type metadata accessor for TransposeOperation, byte_25BCCE07C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AF9C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154F658, type metadata accessor for ConcatOperation, aI_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AFF4(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6188, type metadata accessor for ScatterOperation, byte_25BCCE194);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B04C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6190, type metadata accessor for GatherOperation, "1%\a+,");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B0A4(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154FAA0, type metadata accessor for CastOperation, byte_25BCCE2AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B0FC(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154ED78, type metadata accessor for BroadcastOperation, byte_25BCCE338);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B154(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154F1F8, type metadata accessor for ReshapeOperation, byte_25BCCE3C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B1AC(unint64_t *a1, void (*a2)(uint64_t), const char *a3, ...)
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

id sub_25BC3B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a7 gatherWithUpdatesTensor:a1 indicesTensor:a2 axis:a3 batchDimensions:a4 name:v12];

  return v13;
}

id sub_25BC3B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, SEL *a9)
{
  v15 = sub_25BCB633C();

  v16 = [a8 *a9];

  return v16;
}

id sub_25BC3B33C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BCB633C();

  v7 = [a4 nonZeroIndicesOfTensor:a1 name:v6];

  return v7;
}

NeuralNetworks::LossReduction_optional __swiftcall LossReduction.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25BC3B3DC@<X0>(uint64_t *a1@<X8>)
{
  result = LossReduction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t l1Loss(predicted:target:reduction:)()
{
  OUTLINED_FUNCTION_5_50();
  v2 = *v1;
  OUTLINED_FUNCTION_27_26(v3, v4, v1, v5, v6, v7, v8, v9, v14, v16, v17, v18);
  abs(_:)(&v18, &v16);

  if (v2 == 2)
  {
    *v0 = v18;
  }

  else
  {
    if (v2)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v15, v16);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v12, v11);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v15, v16, v17);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v13);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t l2Loss(predicted:target:reduction:)()
{
  OUTLINED_FUNCTION_5_50();
  v2 = *v1;
  OUTLINED_FUNCTION_27_26(v3, v4, v1, v5, v6, v7, v8, v9, v14, v16, v18, v20);
  Tensor.squared()();

  if (v2 == 2)
  {
    *v0 = v21;
  }

  else
  {
    if (v2)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v15, v17);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v12, v11);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v15, v17, v19);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v13);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t sub_25BC3B67C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t *, uint64_t *, char *))
{
  v3 = *a2;
  v7 = *a1;
  v6 = v3;
  v5 = 0;
  return a3(&v7, &v6, &v5);
}

uint64_t meanSquaredLogarithmicError(predicted:target:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_1_63();
  v4 = *(*(v2 + 16) + 160);
  v13 = OUTLINED_FUNCTION_6_49(v5, v6, v7, v8, v9, v10, v11, v12, v104, v115, v124, v133, v142, v151, v160, v175, v182, v191, v192, v193, v194, v195, v196, v197, v198[0]);
  v15 = sub_25BAA51C8(v13, v14);
  v16 = MEMORY[0x277D84F90];
  HIBYTE(v161) = v4;
  v24 = OUTLINED_FUNCTION_11_41(v15, v17, v18, v19, v20, v21, v22, v23, v105, v116, v125, v134, v143, v152, v161, MEMORY[0x277D84F90], v183, v191);
  v26 = sub_25BAA51C8(v24, v25);
  OUTLINED_FUNCTION_4_58(v26, &unk_286D45938, v27, v28, v29, v30, v31, v32, v106, v117, v126, v135, v144, v153, v162, v169, v171, v173, v176, v184);
  sub_25BA9C2C8(&v191);
  sub_25BA9C2C8(v198);
  v33 = v185;
  OUTLINED_FUNCTION_1_63();
  v34 = *(*(v2 + 16) + 160);
  v43 = OUTLINED_FUNCTION_6_49(v35, v36, v37, v38, v39, v40, v41, v42, v107, v118, v127, v136, v145, v154, v163, v177, v185, v191, v192, v193, v194, v195, v196, v197, v198[0]);
  v45 = sub_25BAA51C8(v43, v44);
  HIBYTE(v164) = v34;
  v53 = OUTLINED_FUNCTION_11_41(v45, v46, v47, v48, v49, v50, v51, v52, v108, v119, v128, v137, v146, v155, v164, v16, v186, v191);
  v55 = sub_25BAA51C8(v53, v54);
  OUTLINED_FUNCTION_4_58(v55, &unk_286D45960, v56, v57, v58, v59, v60, v61, v109, v120, v129, v138, v147, v156, v165, v170, v172, v174, v178, v187);
  sub_25BA9C2C8(&v191);
  v62 = sub_25BA9C2C8(v198);
  v63 = v188;
  OUTLINED_FUNCTION_6_49(v62, v64, v65, v66, v67, v68, v69, v70, v110, v121, v130, v139, v148, v157, v166, v179, v188, v33, v192, v193, v194, v195, v196, v197, v2);
  max(_:_:)();
  v198[0] = v63;
  OUTLINED_FUNCTION_14_33(v71, v72, v73, v74, v75, v76, v77, v78, v111);
  static Tensor.+ infix(_:_:)();

  log(_:)(v198, &v191);

  LOBYTE(v2) = v198[0];
  OUTLINED_FUNCTION_6_49(v79, v80, v81, v82, v83, v84, v85, v86, v112, v122, v131, v140, v149, v158, v167, v180, v189, v33, v192, v193, v194, v195, v196, v197, v3);
  max(_:_:)();
  v198[0] = v63;
  OUTLINED_FUNCTION_14_33(v87, v88, v89, v90, v91, v92, v93, v94, v113);
  static Tensor.+ infix(_:_:)();

  log(_:)(v198, &v191);

  LOBYTE(v114) = 0;
  OUTLINED_FUNCTION_6_49(v95, v96, v97, v98, v99, v100, v101, v102, v114, v123, v132, v141, v150, v159, v168, v181, v190, v198[0], v192, v193, v194, v195, v196, v197, v2);
  l2Loss(predicted:target:reduction:)();
}

uint64_t meanAbsolutePercentageError(predicted:target:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v4 = *(*(v2 + 16) + 160);
  sub_25BAA51C8(v11, v10);
  v9 = MEMORY[0x277D84F90];
  v8 = v4;
  sub_25BAA51C8(v10, v7);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v9, &unk_286D45988, &v8, v7, &v6);
  sub_25BA9C2C8(v10);
  sub_25BA9C2C8(v11);
  *&v11[0] = v3;
  v10[0] = v2;
  static Tensor.- infix(_:_:)();
  *&v11[0] = v3;
  abs(_:)(v10, v11);
  static Tensor./ infix(_:_:)();

  abs(_:)(v11, &v9);

  v10[0] = *&v11[0];
  v7[0] = &unk_286D42360;
  Tensor.reshaped(to:)(v7, &v9);

  Tensor.mean(squeezingAxes:)(&unk_286D42388);

  static Tensor.* infix(_:_:)();
}

uint64_t hingeLoss(predicted:target:reduction:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25BCB783C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a2;
  v14 = *(*a1 + 16);
  v15 = v13[2];
  v16 = *(v15 + 160);
  if (*(v14 + 160) != v16)
  {
    LOBYTE(v34) = *(v14 + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    LOBYTE(v33) = v16;
    v23 = sub_25BC8FACC();
    v35 = a4;
    *v36 = v8;
    *&v36[8] = xmmword_25BCCD6A0;
    LOBYTE(v37) = 0;
    *&v38 = v23;
    *(&v38 + 1) = v24;
    v39 = xmmword_25BCCD6B0;
    v40 = 0;
    v41 = 0;
    OUTLINED_FUNCTION_0_79();
    v31 = 139;
    goto LABEL_11;
  }

  v17 = *a3;
  v18 = *(v14 + 152);
  v19 = *(v15 + 152);
  if ((sub_25BAB5C48(v18, v19) & 1) == 0)
  {
    v35 = v18;
    *v36 = xmmword_25BCCD6A0;
    v36[16] = 0;
    v37 = v19;
    v38 = xmmword_25BCCD6B0;
    LOBYTE(v39) = 0;
    v41 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
    v31 = 142;
LABEL_11:
    sub_25BADDD28(v25, v26, v27, v28, v29, v30, v31);
  }

  v34 = v13;
  v35 = v13;
  v33 = v13;

  Tensor.init(zerosLike:)(&v35);
  static Tensor..== infix(_:_:)(&v35, &v33, &v32);

  v33 = v35;
  LOBYTE(v32) = *(v13[2] + 160);
  (*(v9 + 104))(v11, *MEMORY[0x277D84660], v8);
  Tensor.cast(to:roundingRule:)();
  (*(v9 + 8))(v11, v8);

  static Tensor.- infix(_:_:)();

  v20 = v35;
  v35 = v13;

  Tensor.init(onesLike:)(&v35);
  v35 = v20;
  v33 = v12;
  static Tensor.* infix(_:_:)();
  static Tensor.- infix(_:_:)();

  relu(_:)();

  v21 = v35;
  if (v17 == 2)
  {

    *a4 = v21;
  }

  else
  {
    if (v17)
    {
      v34 = v35;
      v33 = &unk_286D423B0;
      Tensor.reshaped(to:)(&v33, &v35);

      v34 = v35;
      Tensor.sum(squeezingAxes:)(a4, &unk_286D423D8);
    }

    else
    {
      v34 = &unk_286D42360;
      Tensor.reshaped(to:)(&v34, &v33);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t squaredHingeLoss(predicted:target:reduction:)()
{
  OUTLINED_FUNCTION_5_50();
  v5 = *(*(v4 + 16) + 160);
  if (*(*(v3 + 16) + 160) != v5)
  {
    LOBYTE(v18) = *(*(v3 + 16) + 160);
    v8 = v5;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    LOBYTE(v16) = v8;
    v19[0] = v0;
    v19[1] = v1;
    v20 = xmmword_25BCCD6A0;
    v21 = 0;
    v22 = sub_25BC8FACC();
    v23 = v9;
    v24 = xmmword_25BCCD6B0;
    v25 = 0;
    v26 = 0;
    OUTLINED_FUNCTION_0_79();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, 164);
  }

  v6 = *v2;
  v18 = v4;
  v19[0] = v3;
  v17 = v6;
  hingeLoss(predicted:target:reduction:)(v19, &v18, &v17, &v16);
  OUTLINED_FUNCTION_15_35();
  Tensor.squared()();
}

uint64_t categoricalHingeLoss(predicted:target:reduction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(*(*a1 + 16) + 160);
  if (v8 != *(*(*a2 + 16) + 160))
  {
    LOBYTE(v190) = *(*(*a1 + 16) + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    v197[0] = a4;
    v197[1] = v4;
    v198 = xmmword_25BCCD6A0;
    v199 = 0;
    v200 = sub_25BC8FACC();
    v201 = v98;
    v202 = xmmword_25BCCD6B0;
    v203 = 0;
    v204 = 0;
    OUTLINED_FUNCTION_0_79();
    sub_25BADDD28(v99, v100, v101, v102, v103, v104, 183);
  }

  v9 = *a3;
  OUTLINED_FUNCTION_1_63();
  v18 = OUTLINED_FUNCTION_6_49(v10, v11, v12, v13, v14, v15, v16, v17, v105, v114, v123, v132, v141, v150, v159, v174, v181, v190, v191, v192, v193, v194, v195, v196, v197[0]);
  v20 = sub_25BAA51C8(v18, v19);
  v21 = MEMORY[0x277D84F90];
  HIBYTE(v160) = v8;
  v29 = OUTLINED_FUNCTION_11_41(v20, v22, v23, v24, v25, v26, v27, v28, v106, v115, v124, v133, v142, v151, v160, MEMORY[0x277D84F90], v182, v190);
  v31 = sub_25BAA51C8(v29, v30);
  OUTLINED_FUNCTION_4_58(v31, &unk_286D459B0, v32, v33, v34, v35, v36, v37, v107, v116, v125, v134, v143, v152, v161, v168, v170, v172, v175, v183);
  sub_25BA9C2C8(&v190);
  sub_25BA9C2C8(v197);
  v38 = v184;
  OUTLINED_FUNCTION_1_63();
  v39 = *(*(v6 + 16) + 160);
  v48 = OUTLINED_FUNCTION_6_49(v40, v41, v42, v43, v44, v45, v46, v47, v108, v117, v126, v135, v144, v153, v162, v176, v184, v190, v191, v192, v193, v194, v195, v196, v197[0]);
  v50 = sub_25BAA51C8(v48, v49);
  HIBYTE(v163) = v39;
  v58 = OUTLINED_FUNCTION_11_41(v50, v51, v52, v53, v54, v55, v56, v57, v109, v118, v127, v136, v145, v154, v163, v21, v185, v190);
  v60 = sub_25BAA51C8(v58, v59);
  OUTLINED_FUNCTION_4_58(v60, &unk_286D459D8, v61, v62, v63, v64, v65, v66, v110, v119, v128, v137, v146, v155, v164, v169, v171, v173, v177, v186);
  sub_25BA9C2C8(&v190);
  sub_25BA9C2C8(v197);
  v67 = v187;
  v197[0] = v7;
  static Tensor.* infix(_:_:)();
  v111 = v190;
  Tensor.sum(alongAxes:)(v197, v68);

  v70 = v197[0];
  OUTLINED_FUNCTION_6_49(v69, v71, v72, v73, v74, v75, v76, v77, v111, v120, v129, v138, v147, v156, v165, v178, v187, v7, v191, v192, v193, v194, v195, v196, v187);
  static Tensor.- infix(_:_:)();
  v197[0] = v6;
  OUTLINED_FUNCTION_14_33(v78, v79, v80, v81, v82, v83, v84, v85, v112);
  static Tensor.* infix(_:_:)();

  Tensor.max(alongAxes:)(v197);

  v190 = v38;
  static Tensor.- infix(_:_:)();
  v197[0] = v67;
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_11_41(v86, v87, v88, v89, v90, v91, v92, v93, v70, v121, v130, v139, v148, v157, v166, v179, v188, v190);
  max(_:_:)();

  v94 = v197[0];
  if (v9 == 2)
  {

    *a4 = v94;
  }

  else
  {
    if (v9)
    {
      OUTLINED_FUNCTION_26_27(&unk_286D423B0, v197[0], v122, v131, v140, v149, v158, v167, v180);

      OUTLINED_FUNCTION_13_38();
      Tensor.sum(squeezingAxes:)(v97, v96);
    }

    else
    {
      v190 = v197[0];
      OUTLINED_FUNCTION_28_23(&unk_286D42360, v113, v122, v131, v140, v149, v158, v167, v180, v189);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t logCoshLoss(predicted:target:reduction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  OUTLINED_FUNCTION_1_63();
  v8 = *(*(v5 + 16) + 160);
  v17 = OUTLINED_FUNCTION_6_49(v9, v10, v11, v12, v13, v14, v15, v16, v94, v102, v112, v122, v132, v142, v152, v168, v176, v186, v187, v188, v189, v190, v191, v192, v193[0]);
  v19 = sub_25BAA51C8(v17, v18);
  v20 = MEMORY[0x277D84F90];
  HIBYTE(v153) = v8;
  v28 = OUTLINED_FUNCTION_11_41(v19, v21, v22, v23, v24, v25, v26, v27, v95, v103, v113, v123, v133, v143, v153, MEMORY[0x277D84F90], v177, v186);
  v30 = sub_25BAA51C8(v28, v29);
  OUTLINED_FUNCTION_4_58(v30, &unk_286D45A50, v31, v32, v33, v34, v35, v36, v96, v104, v114, v124, v134, v144, v154, v162, v164, v166, v169, v178);
  sub_25BA9C2C8(&v186);
  sub_25BA9C2C8(v193);
  v37 = v179;
  OUTLINED_FUNCTION_1_63();
  v38 = *(*(v5 + 16) + 160);
  v47 = OUTLINED_FUNCTION_6_49(v39, v40, v41, v42, v43, v44, v45, v46, v97, v105, v115, v125, v135, v145, v155, v170, v179, v186, v187, v188, v189, v190, v191, v192, v193[0]);
  v49 = sub_25BAA51C8(v47, v48);
  HIBYTE(v156) = v38;
  v57 = OUTLINED_FUNCTION_11_41(v49, v50, v51, v52, v53, v54, v55, v56, v98, v106, v116, v126, v136, v146, v156, v20, v180, v186);
  v59 = sub_25BAA51C8(v57, v58);
  OUTLINED_FUNCTION_4_58(v59, &unk_286D45A78, v60, v61, v62, v63, v64, v65, v99, v107, v117, v127, v137, v147, v157, v163, v165, v167, v171, v181);
  sub_25BA9C2C8(&v186);
  v66 = sub_25BA9C2C8(v193);
  LOBYTE(v20) = v182;
  OUTLINED_FUNCTION_11_41(v66, v67, v68, v69, v70, v71, v72, v73, v6, v108, v118, v128, v138, v148, v158, v172, v182, v5);
  static Tensor.- infix(_:_:)();
  OUTLINED_FUNCTION_11_41(v74, v75, v76, v77, v78, v79, v80, v81, v193[0], v109, v119, v129, v139, v149, v159, v173, v183, v20);
  static Tensor.* infix(_:_:)();
  softplus(_:alpha:beta:)();

  OUTLINED_FUNCTION_6_49(v82, v83, v84, v85, v86, v87, v88, v89, v100, v110, v120, v130, v140, v150, v160, v174, v184, v186, v187, v188, v189, v190, v191, v192, v193[0]);
  static Tensor.+ infix(_:_:)();

  v193[0] = v37;
  log(_:)(&v186, v193);
  static Tensor.- infix(_:_:)();

  v90 = v193[0];
  if (v7 == 2)
  {

    *a4 = v90;
  }

  else
  {
    if (v7)
    {
      OUTLINED_FUNCTION_26_27(&unk_286D423B0, v193[0], v111, v121, v131, v141, v151, v161, v175);

      OUTLINED_FUNCTION_13_38();
      Tensor.sum(squeezingAxes:)(v93, v92);
    }

    else
    {
      v186 = v193[0];
      OUTLINED_FUNCTION_28_23(&unk_286D42360, v101, v111, v121, v131, v141, v151, v161, v175, v185);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t poissonLoss(predicted:target:reduction:)()
{
  OUTLINED_FUNCTION_5_50();
  v2 = *v1;
  v11 = v3;
  v12 = v4;
  v10 = v3;
  log(_:)(&v9, &v10);
  static Tensor.* infix(_:_:)();

  static Tensor.- infix(_:_:)();

  if (v2 == 2)
  {
    *v0 = v12;
  }

  else
  {
    if (v2)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v9, v10);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v7, v6);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v9, v10, v11);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v8);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t kullbackLeiblerDivergence(predicted:target:reduction:)()
{
  OUTLINED_FUNCTION_5_50();
  v2 = *v1;
  v11 = v3;
  v12 = v3;
  v10 = v4;
  static Tensor./ infix(_:_:)();
  log(_:)(&v10, &v9);

  static Tensor.* infix(_:_:)();

  if (v2 == 2)
  {
    *v0 = v12;
  }

  else
  {
    if (v2)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v9, v10);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v7, v6);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v9, v10, v11);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v8);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t sigmoidCrossEntropy(logits:labels:labelSmoothing:reduction:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v7 = *a1;
  v8 = *(*(*a1 + 16) + 152);
  if (*(v8 + 16) < 2uLL)
  {
    sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000020, 0x800000025BCE4040, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/Loss.swift", 97, 2, 325);
    __break(1u);
    goto LABEL_17;
  }

  v10 = *a2;
  v11 = *a3;
  v5 = *(*(*a2 + 16) + 152);
  if ((sub_25BAB5C48(*(*(*a1 + 16) + 152), v5) & 1) == 0)
  {
LABEL_17:
    v248 = v8;
    v249 = xmmword_25BCCD6C0;
    LOBYTE(v250) = 0;
    *v251 = v5;
    *&v251[8] = xmmword_25BCCD6D0;
    LOBYTE(v252) = 0;
    v257 = 10;
    OUTLINED_FUNCTION_18_35();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_0_79();
    v199 = 326;
    goto LABEL_19;
  }

  if (a5 < 0.0 || a5 > 1.0)
  {
    v250 = MEMORY[0x277D83A90];
    *&v248 = a5;
    *v251 = xmmword_25BCCD6E0;
    v251[16] = 0;
    v252 = 0x3F80000000000000;
    v254 = 0;
    v255 = 0;
    v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    v256 = -1;
    v257 = 12;
    OUTLINED_FUNCTION_0_79();
    v199 = 329;
LABEL_19:
    sub_25BADDD28(v193, v194, v195, v196, v197, v198, v199);
  }

  v13 = MEMORY[0x277D84F90];
  if (a5 <= 0.0)
  {
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_67();
    v16 = *(v15 + 160);
    v25 = OUTLINED_FUNCTION_29_25(v17, v18, v19, v20, v21, v22, v23, v24, v200, v216, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v14);
    HIBYTE(v238) = v16;
    v33 = OUTLINED_FUNCTION_9_44(v25, v26, v27, v28, v29, v30, v31, v32, v201, v217, v232, v233, v234, v235, v236, v237, v238, v13, v240, v241);
    sub_25BAA51C8(v33, v34);

    v42 = OUTLINED_FUNCTION_3_52(v35, &unk_286D45AC8, v36, v37, v38, v39, v40, v41, v202, v218, v232, v233, v234, v235, v236, v237, v238, v239);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v42, v43, v44, v45, v46);
    sub_25BA9C2C8(&v241);
    sub_25BA9C2C8(&v248);
    v47 = v240;
    v48 = OUTLINED_FUNCTION_2_67();
    v50 = *(v49 + 160);
    v59 = OUTLINED_FUNCTION_29_25(v51, v52, v53, v54, v55, v56, v57, v58, v203, v219, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v48);
    HIBYTE(v238) = v50;
    v67 = OUTLINED_FUNCTION_9_44(v59, v60, v61, v62, v63, v64, v65, v66, v204, v220, v232, v233, v234, v235, v236, v237, v238, v13, v240, v241);
    v69 = sub_25BAA51C8(v67, v68);
    v76 = OUTLINED_FUNCTION_3_52(v69, &unk_286D45AF0, v70, v71, v72, v73, v74, v75, v205, v221, v232, v233, v234, v235, v236, v237, v238, v239);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v76, v77, v78, v79, v80);
    sub_25BA9C2C8(&v241);
    sub_25BA9C2C8(&v248);
    v81 = v240;
    v82 = OUTLINED_FUNCTION_2_67();
    v84 = *(v83 + 160);
    OUTLINED_FUNCTION_29_25(v85, v86, v87, v88, v89, v90, v91, v92, v206, v222, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v82);
    v239 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_25BCBAE50;
    *(v93 + 32) = a5;
    HIBYTE(v238) = v84;
    v101 = OUTLINED_FUNCTION_9_44(v93, v94, v95, v96, v97, v98, v99, v100, v207, v223, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
    v103 = sub_25BAA51C8(v101, v102);
    v111 = OUTLINED_FUNCTION_3_52(v103, v104, v105, v106, v107, v108, v109, v110, v208, v224, v232, v233, v234, v235, v236, v237, v238, v239);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v111, v93, v112, v113, v114);
    sub_25BA9C2C8(&v241);
    v115 = sub_25BA9C2C8(&v248);
    v116 = v240;
    v248 = v10;
    OUTLINED_FUNCTION_9_44(v115, v117, v118, v119, v120, v121, v122, v123, v209, v225, v240, v233, v234, v235, v236, v237, v238, v239, v240, v81);
    static Tensor.- infix(_:_:)();
    static Tensor.* infix(_:_:)();

    v248 = v47;
    v232 = v116;
    static Tensor.* infix(_:_:)();
    static Tensor.+ infix(_:_:)();

    v10 = v248;
  }

  v124 = OUTLINED_FUNCTION_2_67();
  v126 = *(v125 + 160);
  v135 = OUTLINED_FUNCTION_29_25(v127, v128, v129, v130, v131, v132, v133, v134, v200, v216, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v124);
  HIBYTE(v238) = v126;
  v143 = OUTLINED_FUNCTION_9_44(v135, v136, v137, v138, v139, v140, v141, v142, v210, v226, v232, v233, v234, v235, v236, v237, v238, v13, v240, v241);
  v145 = sub_25BAA51C8(v143, v144);
  v152 = OUTLINED_FUNCTION_3_52(v145, &unk_286D45B18, v146, v147, v148, v149, v150, v151, v211, v227, v232, v233, v234, v235, v236, v237, v238, v239);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v152, v153, v154, v155, v156);
  sub_25BA9C2C8(&v241);
  v157 = sub_25BA9C2C8(&v248);
  OUTLINED_FUNCTION_9_44(v157, v158, v159, v160, v161, v162, v163, v164, v212, v228, v240, v233, v234, v235, v236, v237, v238, v239, v240, v7);
  max(_:_:)();
  v165 = v248;
  v241 = v7;
  v248 = v7;
  v166 = static Tensor.- prefix(_:)(&v248);
  OUTLINED_FUNCTION_9_44(v166, v167, v168, v169, v170, v171, v172, v173, v213, v229, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
  max(_:_:)();

  v174 = v248;
  v248 = v165;
  v241 = v7;

  OUTLINED_FUNCTION_9_44(v175, v176, v177, v178, v179, v180, v181, v182, v214, v230, v10, v233, v234, v235, v236, v237, v238, v239, v240, v241);
  static Tensor.* infix(_:_:)();

  static Tensor.- infix(_:_:)();

  v248 = v174;
  static Tensor.- prefix(_:)(&v248);
  exp(_:)(&v232);

  log(onePlus:)();

  OUTLINED_FUNCTION_9_44(v183, v184, v185, v186, v187, v188, v189, v190, v215, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
  static Tensor.+ infix(_:_:)();

  v191 = v248;
  if (v11 == 2)
  {

    *a4 = v191;
  }

  else
  {
    if (v11)
    {
      v241 = v248;
      v232 = &unk_286D423B0;
      Tensor.reshaped(to:)(&v232, &v248);

      v241 = v248;
      Tensor.sum(squeezingAxes:)(a4, &unk_286D423D8);
    }

    else
    {
      v241 = &unk_286D42360;
      Tensor.reshaped(to:)(&v241, &v232);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t cosineSimilarity(predicted:target:reduction:)@<X0>(ValueMetadata **a1@<X0>, ValueMetadata **a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t **a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *(*((*a1)[1].Kind + 152) + 16);
  if (!sub_25BAB74D0(v9, 1, 2, 1))
  {
    v28 = v9;
    *v29 = xmmword_25BCCD6A0;
    v29[16] = 0;
    *v30 = xmmword_25BCBAE50;
    v30[16] = 1;
    v33 = 7;
    OUTLINED_FUNCTION_0_79();
    v24 = 392;
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_17_36(v6[1].Kind) & 1) == 0)
  {
    v28 = v4;
    *v29 = xmmword_25BCCD6A0;
    v29[16] = 0;
    *v30 = v9;
    *&v30[8] = xmmword_25BCCD6B0;
    LOBYTE(v31) = 0;
    v33 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
    v24 = 396;
    goto LABEL_23;
  }

  v10 = *(v7[1].Kind + 160);
  if (*(v6[1].Kind + 160) != v10)
  {
    LOBYTE(v27.Description) = *(v6[1].Kind + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    LOBYTE(v27.Kind) = v10;
    v28 = v6;
    *v29 = 1;
    *&v29[8] = xmmword_25BCCD6A0;
    v30[0] = 0;
    *&v30[8] = sub_25BC8FACC();
    *&v30[16] = v25;
    v31 = xmmword_25BCCD6B0;
    v32 = 0;
    v33 = 0;
    OUTLINED_FUNCTION_0_79();
    v24 = 399;
LABEL_23:
    sub_25BADDD28(v18, v19, v20, v21, v22, v23, v24);
  }

  if (v8 == 2 || (v8 & 1) != 0)
  {
    v27.Description = v6;
    OUTLINED_FUNCTION_23_28();
    Tensor.squared()();
    v26 = &unk_286D423B0;
    v27.Kind = v28;
    Tensor.reshaped(to:)(&v26, &v27.Description);

    v27.Kind = v27.Description;
    Tensor.sum(squeezingAxes:)(&v26, &unk_286D423D8);

    sqrt(_:)(&v28, &v26);

    v11 = v28;
    v27.Description = v7;
    OUTLINED_FUNCTION_23_28();
    Tensor.squared()();
    v26 = &unk_286D423B0;
    v27.Kind = v28;
    Tensor.reshaped(to:)(&v26, &v27.Description);

    v27.Kind = v27.Description;
    Tensor.sum(squeezingAxes:)(&v26, &unk_286D423D8);

    sqrt(_:)(&v28, &v26);

    v12 = v28;
    if (*(*(v6[1].Kind + 152) + 16) == 1)
    {
      v27.Description = v6;
      OUTLINED_FUNCTION_23_28();
      Tensor.reshaped(toRank:)(2, v13);
      v6 = v28;
    }

    else
    {
    }

    if (*(*(v7[1].Kind + 152) + 16) == 1)
    {
      v27.Description = v7;
      OUTLINED_FUNCTION_23_28();
      Tensor.reshaped(toRank:)(2, v14);
      v7 = v28;
    }

    else
    {
    }

    v28 = v6;
    v27.Kind = v7;
    matmul(_:transposed:_:transposed:)(&v28, 0, &v27, 1, &v27.Description);
    v26 = &unk_286D45B68;
    v27.Kind = v27.Description;
    Tensor.reshaped(to:)(&v26, &v28);

    v15 = v28;
    v27.Kind = v12;
    v27.Description = v11;
    static Tensor.* infix(_:_:)();
    v27.Kind = v28;
    v27.Description = v15;
    static Tensor./ infix(_:_:)();
    v16 = v28;
    if (v8 == 2)
    {

      *a4 = &v16->Kind;
    }

    else
    {
      if (v8)
      {
        v27.Kind = &unk_286D423B0;
        v27.Description = v28;
        Tensor.reshaped(to:)(&v27.Kind, &v28);

        v27.Description = v28;
        Tensor.sum(squeezingAxes:)(a4, &unk_286D423D8);
      }

      else
      {
        v27.Description = &unk_286D42360;
        Tensor.reshaped(to:)(&v27.Description, &v27);

        Tensor.mean(squeezingAxes:)(&unk_286D42388);
      }
    }
  }

  else
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000037, 0x800000025BCE40D0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/Loss.swift", 97, 2, 402);
    __break(1u);
  }

  return result;
}

unint64_t sub_25BC3D48C()
{
  result = qword_27FBB6900;
  if (!qword_27FBB6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6900);
  }

  return result;
}

unint64_t sub_25BC3D4F0()
{
  result = qword_27FBB6908;
  if (!qword_27FBB6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6908);
  }

  return result;
}

uint64_t sub_25BC3D544()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 88), *(v0 + 96));
  return v2;
}

uint64_t sub_25BC3D598()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31(v0);
  *(v1 + 16) = xmmword_25BCBAE50;

  sub_25BAC9400(v2, v1 + 32);
  return v1;
}

uint64_t sub_25BC3D5F0()
{
  v1 = *(v0 + 128);
  sub_25BA9D8C4(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_25BC3D624(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x6C41726568746167;
  }

  if (a3 == 1)
  {
    return 0x726568746167;
  }

  return 0x6E5F726568746167;
}

uint64_t sub_25BC3D690()
{
  v1 = 0x726568746167;
  if (*(v0 + 56) != 1)
  {
    v1 = 0x6E5F726568746167;
  }

  if (*(v0 + 56))
  {
    return v1;
  }

  else
  {
    return 0x6C41726568746167;
  }
}

uint64_t sub_25BC3D6F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE40;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;

  return v2;
}

uint64_t sub_25BC3D754()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 80), *(v0 + 88));
  return v2;
}

void sub_25BC3D7A8()
{
  v0 = sub_25BC3D6F8();
  v1 = sub_25BA9BEA0(v0);
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v3 = sub_25BAC44E4();
    v5 = v4;

    v6 = sub_25BAC44E4();
    v8 = v7;

    if (v3 == v6 && v5 == v8)
    {
    }

    else
    {
      v10 = sub_25BCB789C();

      if ((v10 & 1) == 0)
      {

        continue;
      }
    }

    sub_25BCB723C();
    sub_25BCB728C();
    sub_25BCB729C();
    sub_25BCB725C();
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_25BC3D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, _OWORD *a10, uint64_t a11, uint64_t a12)
{
  v13 = a6;
  v16 = *a9;
  v17 = *(a9 + 8);
  if (!a3)
  {
    a1 = sub_25BC3DB5C(a4, a5, a6);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = v13;
  *(v12 + 64) = v18;
  *(v12 + 72) = v19;
  *(v12 + 80) = v16;
  *(v12 + 88) = v17;
  *(v12 + 96) = a11;
  *(v12 + 104) = a12;
  v20 = a10[1];
  *(v12 + 112) = *a10;
  *(v12 + 128) = v20;
  *(v12 + 144) = a10[2];
  *(v12 + 154) = *(a10 + 42);
  return v12;
}

uint64_t sub_25BC3DA00(char a1)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v10);

  v3 = v12;
  v2 = v13;
  sub_25BCB617C();
  sub_25BAA4AF4(&v10);
  if (a1)
  {
    v4 = 0x646F72706D7563;
  }

  else
  {
    v4 = 0x6D75736D7563;
  }

  if (a1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v6 = sub_25BAA6090();
  if (v2)
  {
    v10 = v3;
    v11 = v2;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v4, v5);

    OUTLINED_FUNCTION_11_4();
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    OUTLINED_FUNCTION_11_4();
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  return v6;
}

uint64_t sub_25BC3DB5C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v12);

  v5 = v14;
  v4 = v15;
  sub_25BCB617C();
  sub_25BAA4AF4(&v12);
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = 0xE600000000000000;
      v7 = 0x726568746167;
    }

    else
    {
      v6 = 0xE900000000000064;
      v7 = 0x6E5F726568746167;
    }
  }

  else
  {
    v6 = 0xEF73697841676E6FLL;
    v7 = 0x6C41726568746167;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v8 = sub_25BAA6090();
  if (v4)
  {
    v12 = v5;
    v13 = v4;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v7, v6);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v9 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v9);
  }

  else
  {
    v12 = v7;
    v13 = v6;
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v10 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v10);
  }

  return v8;
}

uint64_t sub_25BC3DD0C(uint64_t a1, char a2)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v11);

  v4 = v13;
  v3 = v14;
  sub_25BCB617C();
  sub_25BAA4AF4(&v11);
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xE700000000000000;
      v6 = 0x72657474616373;
    }

    else
    {
      v5 = 0xEA0000000000646ELL;
      v6 = 0x5F72657474616373;
    }
  }

  else
  {
    v5 = 0x800000025BCE0870;
    v6 = 0xD000000000000012;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v7 = sub_25BAA6090();
  if (v3)
  {
    v11 = v4;
    v12 = v3;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v6, v5);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  else
  {
    v11 = v6;
    v12 = v5;
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v9 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v9);
  }

  return v7;
}

uint64_t sub_25BC3DEB8()
{
  v3 = OUTLINED_FUNCTION_14_34();
  v4 = (v1 + 64);
  if (v3 != sub_25BAC4018())
  {
    v5 = *(v2 + 16);
    v6 = (v1 + 72);
    if (sub_25BAC4018() != v5)
    {
      return 0;
    }

    v4 = v6;
  }

  *v4 = v0;

  return 1;
}

uint64_t sub_25BC3DF3C()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 96), *(v0 + 104));
}

uint64_t sub_25BC3DF78()
{
  sub_25BC3DF3C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3DFE0()
{
  v1 = *(v0 + 96);
  sub_25BA9D8C4(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_25BC3E018(uint64_t a1)
{
  sub_25BC3D690();
  sub_25BCB625C();

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if (v4 >= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 40);
  }

  MEMORY[0x25F878200](v5);
  if (v4 == 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x25F878200](v7);
}

uint64_t sub_25BC3E0BC(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 0xD000000000000012;
  }

  if (a2 == 1)
  {
    return 0x72657474616373;
  }

  return 0x5F72657474616373;
}

uint64_t sub_25BC3E124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  v2 = v0[8];
  *(v1 + 32) = v0[7];
  *(v1 + 40) = v2;
  *(v1 + 48) = v0[9];

  return v1;
}

uint64_t sub_25BC3E1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE40;
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;

  return v2;
}

uint64_t sub_25BC3E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t *a10, _OWORD *a11, uint64_t a12, uint64_t a13)
{
  v14 = *a9;
  v15 = *a10;
  v16 = *(a10 + 8);
  if (!a3)
  {
    a1 = sub_25BC3DD0C(a4, a5);
  }

  *(v13 + 120) = *a11;
  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v13 + 40) = v17;
  *(v13 + 48) = v18;
  *(v13 + 56) = v19;
  *(v13 + 64) = v20;
  *(v13 + 72) = v21;
  *(v13 + 80) = v14;
  *(v13 + 88) = v15;
  *(v13 + 96) = v16;
  *(v13 + 104) = v22;
  *(v13 + 112) = a13;
  *(v13 + 136) = v23;
  *(v13 + 152) = a11[2];
  *(v13 + 162) = *(a11 + 42);
  return v13;
}

uint64_t sub_25BC3E2D8()
{
  v3 = OUTLINED_FUNCTION_14_34();
  v4 = v1 + 7;
  if (v3 != sub_25BAC4018())
  {
    v5 = *(v2 + 16);
    v4 = v1 + 8;
    if (sub_25BAC4018() != v5)
    {
      v6 = *(v2 + 16);
      v7 = v1 + 9;
      if (sub_25BAC4018() != v6)
      {
        return 0;
      }

      v4 = v7;
    }
  }

  *v4 = v0;

  return 1;
}

uint64_t sub_25BC3E374()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 104), *(v0 + 112));
}

uint64_t sub_25BC3E3B8()
{
  sub_25BC3E374();

  return swift_deallocClassInstance();
}

__n128 sub_25BC3E41C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 152);
  result = *(v1 + 162);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BC3E440()
{
  v1 = *(v0 + 104);
  sub_25BA9D8C4(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_25BC3E478(uint64_t a1)
{
  sub_25BBD1FD0();
  sub_25BCB625C();

  v3 = *(v1 + 48);
  if (v3 >= 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 40);
  }

  if (v3 == 2)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x25F878200](v4);
  MEMORY[0x25F878200](v5);

  return sub_25BB4996C(a1);
}

uint64_t sub_25BC3E52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  if (v6)
  {
    v8 = 4;
    do
    {
      v9 = v8 - 4;
      swift_beginAccess();
      v10 = *(v3 + 40);
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v8 - 4);
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v15 = sub_25BCB749C();
          if (v15 < 0)
          {
            __break(1u);
          }

          v6 = v15;
          goto LABEL_3;
        }
      }

      swift_endAccess();
      v11 = sub_25BAC4018();

      if (v11 == sub_25BAC4018())
      {
        swift_beginAccess();
        v12 = *(v3 + 40);

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v3 + 40) = v12;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_25BBF1390(v12);
          *(v3 + 40) = v12;
        }

        if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v8) = a2;
        *(v3 + 40) = v12;
        swift_endAccess();

        v7 = 1;
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  return v7 & 1;
}

uint64_t sub_25BC3E6DC()
{
  v1 = *(v0 + 72);
  sub_25BA9D8C4(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_25BC3E710(uint64_t a1, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    return (a1 == a3) & ~a4;
  }

  if (a4)
  {
    return sub_25BAB5C48(a1, a3);
  }

  return 0;
}

void sub_25BC3E738(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x25F878200](1);

    sub_25BAD4C78();
  }

  else
  {
    MEMORY[0x25F878200](0);
    MEMORY[0x25F878200](a2);
  }
}

uint64_t sub_25BC3E79C(uint64_t a1, char a2)
{
  sub_25BCB79CC();
  if (a2)
  {
    MEMORY[0x25F878200](1);
    sub_25BAD4C78();
  }

  else
  {
    MEMORY[0x25F878200](0);
    MEMORY[0x25F878200](a1);
  }

  return sub_25BCB7A3C();
}

uint64_t sub_25BC3E82C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_25BCB79CC();
  sub_25BC3E738(v5, v2, v3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC3E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x74696C7073, 0xE500000000000000);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6 & 1;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = a10;
  *(v11 + 88) = a11;
  v17 = a9[1];
  *(v11 + 96) = *a9;
  *(v11 + 112) = v17;
  *(v11 + 128) = a9[2];
  *(v11 + 138) = *(a9 + 42);
  return v11;
}

uint64_t sub_25BC3E938()
{

  sub_25BC3FAFC(*(v0 + 48), *(v0 + 56));

  return OUTLINED_FUNCTION_8_47(*(v0 + 80), *(v0 + 88));
}

uint64_t sub_25BC3E978()
{
  sub_25BC3E938();
  OUTLINED_FUNCTION_7_47();

  return swift_deallocClassInstance();
}

void sub_25BC3E9DC(uint64_t a1)
{
  sub_25BCB625C();
  v2 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
    MEMORY[0x25F878200](1);

    sub_25BAD4C78();
  }

  else
  {
    MEMORY[0x25F878200](0);
    MEMORY[0x25F878200](v2);
  }
}

void sub_25BC3EA94()
{
  OUTLINED_FUNCTION_1_64();
  v8 = v7;
  v10 = v9;
  if (!v6)
  {
    v4 = sub_25BAA5EA0(1802530676, 0xE400000000000000);
  }

  OUTLINED_FUNCTION_8_2(v4, v5, v6);
  *(v1 + 40) = v10;
  *(v1 + 48) = v8;
  v11 = *(v10 + 152);
  v12 = *(v11 + 16);

  sub_25BCB617C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_25BAA2110(v11, v13, v14, v15);
  v11 = v19;
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v12 <= *(v11 + 16))
  {
    *(v11 + 8 * v12 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25BCBAE70;
    v17 = *(v10 + 160);
    *(v16 + 32) = v11;
    *(v16 + 40) = v17;
    *(v16 + 48) = v11;
    *(v16 + 56) = 2;
    sub_25BCB617C();

    *(v1 + 56) = v16;
    *(v1 + 64) = v3;
    *(v1 + 72) = v2;
    v18 = v0[1];
    *(v1 + 80) = *v0;
    *(v1 + 96) = v18;
    *(v1 + 112) = v0[2];
    *(v1 + 122) = *(v0 + 42);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25BC3EBBC()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 64), *(v0 + 72));
}

uint64_t sub_25BC3EBF0()
{
  sub_25BC3EBBC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3ECD4(uint64_t a1)
{
  v3 = sub_25BAC4018();
  if (v3 == sub_25BAC4018())
  {
    *(v1 + 40) = a1;
  }

  else
  {
    if (sub_25BAC4018() != *(a1 + 16))
    {
      return 0;
    }

    *(v1 + 48) = a1;
  }

  return 1;
}

uint64_t sub_25BC3ED60()
{

  return v0;
}

uint64_t sub_25BC3ED98()
{
  sub_25BC3ED60();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3EE84()
{
  OUTLINED_FUNCTION_1_64();
  v8 = v7;
  v10 = v9;
  if (!v6)
  {
    v4 = sub_25BAA5EA0(0x65737265766572, 0xE700000000000000);
  }

  *(v1 + 72) = *v0;
  OUTLINED_FUNCTION_8_2(v4, v5, v6);
  *(v1 + 40) = v10;
  *(v1 + 48) = v8;
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  *(v1 + 88) = v11;
  *(v1 + 104) = v0[2];
  *(v1 + 114) = *(v0 + 42);
  return v1;
}

uint64_t sub_25BC3EF04()
{

  return OUTLINED_FUNCTION_8_47(*(v0 + 56), *(v0 + 64));
}

uint64_t sub_25BC3EF38()
{
  sub_25BC3EF04();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3EFAC()
{
  v1 = *(v0 + 56);
  sub_25BA9D8C4(v1, *(v0 + 64));
  return v1;
}

void sub_25BC3EFE0(uint64_t a1)
{
  sub_25BCB625C();
  OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78();
}

uint64_t sub_25BC3F050()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 48), *(v0 + 56));
  return v2;
}

uint64_t sub_25BC3F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x6F72657A5F6E6F6ELL, 0xE800000000000000);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v6 + 40) = a4;
  *(v6 + 48) = v9;
  *(v6 + 56) = v10;
  v11 = a6[1];
  *(v6 + 64) = *a6;
  *(v6 + 80) = v11;
  *(v6 + 96) = a6[2];
  *(v6 + 106) = *(a6 + 42);
  return v6;
}

uint64_t sub_25BC3F124()
{

  return v0;
}

uint64_t sub_25BC3F154()
{
  sub_25BC3F124();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3F1C8(uint64_t a1)
{
  sub_25BCB625C();
  v2 = *(v1 + 56);
  sub_25BAD4C78();
  return MEMORY[0x25F878200](v2);
}

uint64_t sub_25BC3F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7261705F646E6162, 0xE900000000000074);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  v15 = *(a4 + 160);
  *(v9 + 64) = *(a4 + 152);
  *(v9 + 72) = v15;
  v16 = a7[1];
  *(v9 + 96) = *a7;
  *(v9 + 112) = v16;
  *(v9 + 128) = a7[2];
  *(v9 + 138) = *(a7 + 42);
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  sub_25BCB617C();
  return v9;
}

uint64_t sub_25BC3F2EC()
{
  sub_25BA9C420(MEMORY[0x277D85008]);
  OUTLINED_FUNCTION_7_47();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3F368(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_25BC3F3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC3F400(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_25BC3F440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_25BC3F494()
{
  result = qword_27FBB6910;
  if (!qword_27FBB6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6910);
  }

  return result;
}

uint64_t sub_25BC3F504(uint64_t a1)
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v1 + 48));
  MEMORY[0x25F878200](*(v1 + 56));
  v2 = *(v1 + 72);
  sub_25BAD4C78();
  return MEMORY[0x25F878200](v2);
}

uint64_t sub_25BC3F590(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6918, type metadata accessor for BandPartOperation, byte_25BCCDD0C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F5E8(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6160, type metadata accessor for NonZeroIndicesOperation, aU_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F640(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6920, type metadata accessor for NonZeroIndicesOperation, asc_25BCCDD98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F698(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6928, type metadata accessor for ReverseOperation, byte_25BCCDE08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F6F0(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB68F0, type metadata accessor for TopKGradientOperation, aY_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F748(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6930, type metadata accessor for TopKGradientOperation, asc_25BCCDE94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F7A0(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6938, type metadata accessor for TopKOperation, byte_25BCCDF04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F7F8(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6940, type metadata accessor for SplitOperation, byte_25BCCDF90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F850(uint64_t a1)
{
  result = sub_25BC3FAB8(qword_28154E7F0, type metadata accessor for TransposeOperation, byte_25BCCE01C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F8A8(uint64_t a1)
{
  result = sub_25BC3FAB8(qword_28154F660, type metadata accessor for ConcatOperation, byte_25BCCE0A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F900(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6948, type metadata accessor for ScatterOperation, aM);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F958(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6950, type metadata accessor for GatherOperation, byte_25BCCE1C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F9B0(uint64_t a1)
{
  result = sub_25BC3FAB8(qword_28154FAA8, type metadata accessor for CastOperation, aU_1);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3FA08(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154ED80, type metadata accessor for BroadcastOperation, byte_25BCCE2D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3FA60(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154F200, type metadata accessor for ReshapeOperation, asc_25BCCE364);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3FAB8(unint64_t *a1, void (*a2)(void), const char *a3, ...)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC3FAFC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void Layer.namedLayerStateKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v55 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v51[2] = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_4();
  v52 = v9;
  v10 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_59_10();
  v51[1] = v12;
  type metadata accessor for RecursiveStoredPropertiesIterator(v11, v10, v12, v13);
  OUTLINED_FUNCTION_9();
  v54 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  v20 = type metadata accessor for AnyLayerVariablePathCache();
  v26 = OUTLINED_FUNCTION_19_27(v20, v21, v22, v23, v24, v25, &protocol witness table for LayerState, v20);
  v58 = v10;
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    *&v60 = sub_25BCB604C();
    v28 = OUTLINED_FUNCTION_20_29(MEMORY[0x277D84FA0]);
    v29(v28);
    v30 = OUTLINED_FUNCTION_5(&unk_286D51590);
    v31 = v53;
    *(v30 + 16) = v4;
    *(v30 + 24) = v31;
    v32 = OUTLINED_FUNCTION_9_46(v30, v6 & 1);
    OUTLINED_FUNCTION_46_18(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_33_24();
    v36(v35);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_6();
    v27 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_32_22();
    while (1)
    {
      OUTLINED_FUNCTION_64_10();
      v37 = v61;
      if (!v61)
      {
        break;
      }

      v38 = OUTLINED_FUNCTION_43_14();
      v61 = v37;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      v2 = &v60;
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
        v27 = v40;
      }

      OUTLINED_FUNCTION_14_35();
      if (v39)
      {
        OUTLINED_FUNCTION_4_59();
        v27 = v41;
      }

      OUTLINED_FUNCTION_12_39();
      if ((v4 & 0x400000000) != 0)
      {
        v2 = &v59;
        sub_25BAA2CDC(&v61, v38);
      }

      if (v4)
      {
        OUTLINED_FUNCTION_68_9(&v61);
      }

      v4 = v56;
      v19 = v57;
    }

    v42 = OUTLINED_FUNCTION_55_8();
    (v2)(v42);
    v61 = v4;
    v62 = &type metadata for LayerState;
    v63 = v10;
    v64 = &protocol witness table for LayerState;
    type metadata accessor for LayerVariablePaths(0, &v61);
    OUTLINED_FUNCTION_17_37();
    sub_25BAB2794();
    OUTLINED_FUNCTION_42_18(v43);
    (v2)(v52, v19);
  }

  OUTLINED_FUNCTION_50_14();
  if (!v44)
  {

    v46 = sub_25BC41DA0();

    v61 = v46;
    *&v59 = sub_25BAB9528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_6_50();
    sub_25BC436C0(v47, v48);
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_26(WitnessTable);

    v59 = v60;
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_45_15();
    v50 = OUTLINED_FUNCTION_8_48();
    OUTLINED_FUNCTION_63_8(v50);
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    sub_25BCB73BC();
    OUTLINED_FUNCTION_67_7();

    goto LABEL_19;
  }

  v45 = sub_25BA9AC54(*(v27 + 16));
  if ((v45 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v62 = v45;
    MEMORY[0x28223BE20](v45);
    OUTLINED_FUNCTION_53_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    swift_getTupleTypeMetadata2();
    sub_25BB6A94C();
    OUTLINED_FUNCTION_37_20();
    OUTLINED_FUNCTION_67_7();
LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

void Layer.value<A>(for:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = *(*v4 + *MEMORY[0x277D84DE8] + 8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v12 = *v11;
  v18[2] = *v11;
  v18[3] = v5;
  v18[4] = v13;
  v18[5] = v14;
  v15 = sub_25BCB6FCC();
  if (v16)
  {
    swift_getAtKeyPath();
    (*(v1 + 8))(v5, v1);
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v18[-8] = v12;
    v18[-7] = v5;
    v18[-6] = v3;
    v18[-5] = v1;
    v18[-4] = v17;
    v18[-3] = sub_25BC422EC;
    v18[-2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    sub_25BAB1BE8();
  }

  OUTLINED_FUNCTION_10_16();
}

void Layer.updateValue<A>(_:for:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v6 = *v5;
  v7 = *(*v4 + *MEMORY[0x277D84308] + 8);
  v8 = sub_25BCB6FCC();
  if (v9)
  {
    v10 = swift_modifyAtWritableKeyPath();
    sub_25BC41BB8(v6, v7, v1, v3);
    v10(&v11, 0);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6958, &qword_25BCCE3E8);
    sub_25BAB2F30();
  }

  OUTLINED_FUNCTION_10_16();
}

void Layer.namedParameterKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v55 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v51[2] = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_4();
  v52 = v9;
  v10 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_59_10();
  v51[1] = v12;
  type metadata accessor for RecursiveStoredPropertiesIterator(v11, v10, v12, v13);
  OUTLINED_FUNCTION_9();
  v54 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  v20 = type metadata accessor for AnyLayerVariablePathCache();
  v26 = OUTLINED_FUNCTION_19_27(v20, v21, v22, v23, v24, v25, &protocol witness table for Parameter, v20);
  v58 = v10;
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    *&v60 = sub_25BCB604C();
    v28 = OUTLINED_FUNCTION_20_29(MEMORY[0x277D84FA0]);
    v29(v28);
    v30 = OUTLINED_FUNCTION_5(&unk_286D515B8);
    v31 = v53;
    *(v30 + 16) = v4;
    *(v30 + 24) = v31;
    v32 = OUTLINED_FUNCTION_9_46(v30, v6 & 1);
    OUTLINED_FUNCTION_46_18(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_33_24();
    v36(v35);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_6();
    v27 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_32_22();
    while (1)
    {
      OUTLINED_FUNCTION_64_10();
      v37 = v61;
      if (!v61)
      {
        break;
      }

      v38 = OUTLINED_FUNCTION_43_14();
      v61 = v37;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      v2 = &v60;
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
        v27 = v40;
      }

      OUTLINED_FUNCTION_14_35();
      if (v39)
      {
        OUTLINED_FUNCTION_4_59();
        v27 = v41;
      }

      OUTLINED_FUNCTION_12_39();
      if ((v4 & 0x400000000) != 0)
      {
        v2 = &v59;
        sub_25BAA2CDC(&v61, v38);
      }

      if (v4)
      {
        OUTLINED_FUNCTION_68_9(&v61);
      }

      v4 = v56;
      v19 = v57;
    }

    v42 = OUTLINED_FUNCTION_55_8();
    (v2)(v42);
    v61 = v4;
    v62 = &type metadata for Parameter;
    v63 = v10;
    v64 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths(0, &v61);
    OUTLINED_FUNCTION_17_37();
    sub_25BAB2794();
    OUTLINED_FUNCTION_42_18(v43);
    (v2)(v52, v19);
  }

  OUTLINED_FUNCTION_50_14();
  if (!v44)
  {

    v46 = sub_25BC41DA0();

    v61 = v46;
    *&v59 = sub_25BAB9528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_6_50();
    sub_25BC436C0(v47, v48);
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_26(WitnessTable);

    v59 = v60;
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_45_15();
    v50 = OUTLINED_FUNCTION_8_48();
    OUTLINED_FUNCTION_63_8(v50);
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    sub_25BCB73BC();
    OUTLINED_FUNCTION_67_7();

    goto LABEL_19;
  }

  v45 = sub_25BA9AC54(*(v27 + 16));
  if ((v45 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v62 = v45;
    MEMORY[0x28223BE20](v45);
    OUTLINED_FUNCTION_53_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    swift_getTupleTypeMetadata2();
    sub_25BB6A94C();
    OUTLINED_FUNCTION_37_20();
    OUTLINED_FUNCTION_67_7();
LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}