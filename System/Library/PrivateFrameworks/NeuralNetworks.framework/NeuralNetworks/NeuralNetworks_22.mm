void sub_25BC40864(uint64_t a1)
{
  sub_25BB14688(&unk_286D42798);
  v3 = v2;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a1 + 40;
  v23 = a1 + 40;
  v24 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v6 + 16 * v4); ; i += 2)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= v5)
    {
      break;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_21;
    }

    v9 = *(i - 1);
    v10 = *i;
    sub_25BCB617C();
    sub_25BCB643C();
    sub_25BCB654C();
    v11 = sub_25BCB6EBC();
    v13 = v12;

    sub_25BCB617C();
    v25 = sub_25BBFCCE0(1uLL, v9, v10);
    v26 = v14;
    sub_25BC43580();
    sub_25BCB644C();

    v15 = v11;
    v16 = v13;
    v17 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v17 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v17 && !sub_25BB9FED4(v11, v13, v3))
    {
      if (sub_25BCB64EC())
      {
        sub_25BC435D4();
        sub_25BC43628();
        sub_25BCB6B9C();

        v15 = v25;
        v16 = v26;
      }

      else
      {
      }

      v18 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB1E30();
        v18 = v21;
      }

      v19 = *(v18 + 16);
      if (v19 >= *(v18 + 24) >> 1)
      {
        sub_25BAB1E30();
        v18 = v22;
      }

      *(v18 + 16) = v19 + 1;
      v24 = v18;
      v20 = v18 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v16;
      v4 = v8;
      v6 = v23;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void Layer.parameterKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v42 = v8;
  v9 = &type metadata for Parameter;
  v10 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_59_10();
  v14 = type metadata accessor for RecursiveStoredPropertiesIterator(v11, v10, v12, v13);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v17);
  v18 = type metadata accessor for AnyLayerVariablePathCache();
  v24 = OUTLINED_FUNCTION_36_18(v18, v19, v20, v21, v22, v23, &protocol witness table for Parameter);
  if (v24)
  {
    p_Description = v24;
  }

  else
  {
    v47 = sub_25BCB604C();
    v26 = OUTLINED_FUNCTION_31_24(MEMORY[0x277D84FA0]);
    v27(v26);
    v28 = OUTLINED_FUNCTION_5(&unk_286D515E0);
    *(v28 + 16) = v3;
    *(v28 + 24) = v1;
    v29 = OUTLINED_FUNCTION_9_46(v28, v5 & 1);
    OUTLINED_FUNCTION_47_17(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_22_30();
    v33(v32);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_15();
    v34 = &type metadata for Parameter;
    while (1)
    {
      sub_25BAB173C(v14, &v43);
      v35 = v43;
      if (!v43)
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_30_24();
      v43 = v35;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
      }

      OUTLINED_FUNCTION_14_35();
      if (v36)
      {
        OUTLINED_FUNCTION_4_59();
      }

      OUTLINED_FUNCTION_12_39();
      if ((v3 & 0x400000000) != 0)
      {
        OUTLINED_FUNCTION_68_9(&v43);
      }

      v34 = v14;
      if (v3)
      {
        sub_25BAA2CDC(&v43, v9);
      }

      OUTLINED_FUNCTION_58_10();
    }

    Description = v9->Description;
    p_Description = &v9->Description;
    Description(v42, v14);
    v43 = v3;
    v44 = v34;
    v45 = v1;
    v46 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths(0, &v43);
    OUTLINED_FUNCTION_24_22();
    OUTLINED_FUNCTION_39_21(v38);
    Description(v41, v14);
  }

  OUTLINED_FUNCTION_56_11();
  if (!v39)
  {
    sub_25BAB9528();
    OUTLINED_FUNCTION_40_20();

    goto LABEL_19;
  }

  v40 = sub_25BA9AC54(*(p_Description + 16));
  if ((v40 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = v40;
    MEMORY[0x28223BE20](v40);
    OUTLINED_FUNCTION_54_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB6A94C();
    OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_40_20();

LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

uint64_t (*sub_25BC40F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(char *, uint64_t)))(char *, uint64_t)
{
  v16 = a4(a1);
  v14[2] = a2;
  v14[3] = a3;
  v15 = v6;
  sub_25BCB736C();
  v10 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  sub_25BAB2B20(a6, v14, v10, &type metadata for Tensor, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  OUTLINED_FUNCTION_40_20();

  return a6;
}

void Layer.layerStateKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v42 = v8;
  v9 = &type metadata for LayerState;
  v10 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_59_10();
  v14 = type metadata accessor for RecursiveStoredPropertiesIterator(v11, v10, v12, v13);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v17);
  v18 = type metadata accessor for AnyLayerVariablePathCache();
  v24 = OUTLINED_FUNCTION_36_18(v18, v19, v20, v21, v22, v23, &protocol witness table for LayerState);
  if (v24)
  {
    p_Description = v24;
  }

  else
  {
    v47 = sub_25BCB604C();
    v26 = OUTLINED_FUNCTION_31_24(MEMORY[0x277D84FA0]);
    v27(v26);
    v28 = OUTLINED_FUNCTION_5(&unk_286D51608);
    *(v28 + 16) = v3;
    *(v28 + 24) = v1;
    v29 = OUTLINED_FUNCTION_9_46(v28, v5 & 1);
    OUTLINED_FUNCTION_47_17(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_22_30();
    v33(v32);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_15();
    v34 = &type metadata for LayerState;
    while (1)
    {
      sub_25BAB173C(v14, &v43);
      v35 = v43;
      if (!v43)
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_30_24();
      v43 = v35;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
      }

      OUTLINED_FUNCTION_14_35();
      if (v36)
      {
        OUTLINED_FUNCTION_4_59();
      }

      OUTLINED_FUNCTION_12_39();
      if ((v3 & 0x400000000) != 0)
      {
        OUTLINED_FUNCTION_68_9(&v43);
      }

      v34 = v14;
      if (v3)
      {
        sub_25BAA2CDC(&v43, v9);
      }

      OUTLINED_FUNCTION_58_10();
    }

    Description = v9->Description;
    p_Description = &v9->Description;
    Description(v42, v14);
    v43 = v3;
    v44 = v34;
    v45 = v1;
    v46 = &protocol witness table for LayerState;
    type metadata accessor for LayerVariablePaths(0, &v43);
    OUTLINED_FUNCTION_24_22();
    OUTLINED_FUNCTION_39_21(v38);
    Description(v41, v14);
  }

  OUTLINED_FUNCTION_56_11();
  if (!v39)
  {
    sub_25BAB9528();
    OUTLINED_FUNCTION_40_20();

    goto LABEL_19;
  }

  v40 = sub_25BA9AC54(*(p_Description + 16));
  if ((v40 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = v40;
    MEMORY[0x28223BE20](v40);
    OUTLINED_FUNCTION_54_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB6A94C();
    OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_40_20();

LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

void sub_25BC41398(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = sub_25BC41DA0();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= *(v9 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9 + 16 * v8;
  v11 = *(v10 + 40);
  v15 = *(v10 + 32);
  sub_25BCB617C();

  sub_25BAB9528();
  sub_25BCB736C();
  sub_25BCB690C();

  if ((sub_25BB9FFB0(v8, *(a2 + 56)) & 1) == 0)
  {
LABEL_9:
    *a4 = v15;
    a4[1] = v11;
    a4[2] = v16;
    return;
  }

  v12 = sub_25BCB6FCC();
  if (v13)
  {
    swift_getAtKeyPath();
    v14 = v16[4];

    if ((~v14 & 0xF000000000000007) == 0)
    {
LABEL_6:

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8();
  if (!v5)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_12:

  __break(1u);
}

void sub_25BC415C4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = *a1;
  sub_25BAB9528();
  sub_25BCB736C();
  sub_25BCB690C();

  v8 = v12;
  if ((sub_25BB9FFB0(v7, *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_25BCB6FCC();
  if (v10)
  {
    swift_getAtKeyPath();
    v11 = v12[4];

    if ((~v11 & 0xF000000000000007) != 0)
    {
LABEL_5:
      *a4 = v8;
      return;
    }

LABEL_4:

    v8 = 0;
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8();
  if (!v4)
  {
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
}

void sub_25BC417A8(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = sub_25BC41DA0();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= *(v9 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9 + 16 * v8;
  v11 = *(v10 + 40);
  v15 = *(v10 + 32);
  sub_25BCB617C();

  sub_25BAB9528();
  sub_25BCB736C();
  sub_25BCB690C();

  if ((sub_25BB9FFB0(v8, *(a2 + 56)) & 1) == 0)
  {
LABEL_9:
    *a4 = v15;
    a4[1] = v11;
    a4[2] = v17;
    return;
  }

  v12 = sub_25BCB6FCC();
  if (v13)
  {
    swift_getAtKeyPath();
    v14 = v17[4];

    if ((~v14 & 0xF000000000000007) == 0)
    {
LABEL_6:

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8();
  if (!v5)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_12:

  __break(1u);
}

void sub_25BC419D4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = *a1;
  sub_25BAB9528();
  sub_25BCB736C();
  sub_25BCB690C();

  v8 = v13;
  if ((sub_25BB9FFB0(v7, *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_25BCB6FCC();
  if (v10)
  {
    swift_getAtKeyPath();
    v11 = v13[4];

    if ((~v11 & 0xF000000000000007) != 0)
    {
LABEL_5:
      *a4 = v8;
      return;
    }

LABEL_4:

    v8 = 0;
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8();
  if (!v4)
  {
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
}

uint64_t sub_25BC41BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  if ((*(a3 + 32))(a2, a3))
  {
    (*(a3 + 8))(&v11, a2, a3);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v11 = a1;
  v9 = *(a3 + 16);

  result = v9(&v11, a2, a3);
  *a4 = v8;
  return result;
}

uint64_t sub_25BC41C8C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v19 + v20, v21, v16);
  a3(v18);
  result = (*(v14 + 8))(v18, a6);
  if (v10)
  {
    *a10 = v10;
  }

  return result;
}

uint64_t sub_25BC41DA0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_25BC41E00(v0);
    *(v0 + 32) = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BC41E00(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    type metadata accessor for AnyLayerVariablePathCache();
    v3 = v12;
    v4 = v1 + 32;
    do
    {
      v5 = sub_25BCB617C();
      sub_25BC40864(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
      sub_25BC436C0(&qword_27FBB51D0, MEMORY[0x277D83958]);
      v6 = sub_25BCB627C();
      v8 = v7;

      v9 = *(v12 + 16);
      if (v9 >= *(v12 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25BC41FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x25F878200](a2);
  MEMORY[0x25F878200](a3);
  return sub_25BCB79EC();
}

uint64_t sub_25BC42000(uint64_t a1, uint64_t a2, char a3)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  MEMORY[0x25F878200](a2);
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC42088(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BCB79CC();
  MEMORY[0x25F878200](v2);
  MEMORY[0x25F878200](v3);
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC4210C()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = sub_25BAA6F2C();
  qword_28154D3C8 = result;
  return result;
}

void *sub_25BC4214C()
{
  type metadata accessor for AnyLayerVariablePathCache();
  sub_25BC43488();
  result = sub_25BCB614C();
  off_28154D3B0 = result;
  return result;
}

uint64_t sub_25BC42198@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  if (qword_28154D3A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = off_28154D3B0;
  sub_25BC19DC4(a4, a1, a2, a3 & 1, isUniquelyReferenced_nonNull_native, v11, v12, v13, v15, v16, v17, v18);
  off_28154D3B0 = v19;
  result = swift_endAccess();
  *a5 = 1;
  return result;
}

uint64_t sub_25BC42288(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_25BCCB570;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25BC42564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  result = sub_25BCB70CC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_25BC42288(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25BC427BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6980, &qword_25BCCE4B0);
  result = sub_25BCB70CC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_36:

    *v2 = v5;
    return result;
  }

  v40 = v2;
  v6 = 0;
  v41 = (v3 + 56);
  v42 = result;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  v43 = v3;
  if (!v9)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = v41[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v46 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v39 = 1 << *(v3 + 32);
    if (v39 >= 64)
    {
      sub_25BC42288(0, (v39 + 63) >> 6, v41);
    }

    else
    {
      *v41 = -1 << v39;
    }

    v2 = v40;
    *(v3 + 16) = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v46 = (v9 - 1) & v9;
LABEL_12:
    v15 = *(v3 + 48) + 56 * (v12 | (v6 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v44 = *(v15 + 16);
    v47 = *(v15 + 32);
    v48 = *(v15 + 24);
    v49 = *(v15 + 48);
    v50 = *(v15 + 40);
    sub_25BCB79CC();
    v45 = v16;
    MEMORY[0x25F878200](v16);
    v51 = v17;
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v17 + 32;
      do
      {
        v21 = (v20 + 16 * v19);
        v22 = *v21;
        v23 = v21[8];
        MEMORY[0x25F878200](*(*v21 + 16));
        v24 = *(v22 + 16);
        if (v24)
        {
          v25 = (v22 + 32);
          do
          {
            v26 = *v25++;
            MEMORY[0x25F878200](v26);
            --v24;
          }

          while (v24);
        }

        ++v19;
        MEMORY[0x25F878200](v23);
      }

      while (v19 != v18);
    }

    MEMORY[0x25F878200](v48);
    MEMORY[0x25F878200](v47);
    MEMORY[0x25F878200](*(v50 + 16));
    v27 = *(v50 + 16);
    if (v27)
    {
      v28 = (v50 + 32);
      do
      {
        v29 = *v28++;
        MEMORY[0x25F878200](v29);
        --v27;
      }

      while (v27);
    }

    MEMORY[0x25F878200](v49);
    result = sub_25BCB7A3C();
    v5 = v42;
    v30 = -1 << *(v42 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v3 = v43;
LABEL_30:
    *(v11 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = *(v42 + 48) + 56 * v33;
    v9 = v46;
    *v38 = v45;
    *(v38 + 8) = v51;
    *(v38 + 16) = v44;
    *(v38 + 24) = v48;
    *(v38 + 32) = v47;
    *(v38 + 40) = v50;
    *(v38 + 48) = v49;
    ++*(v42 + 16);
    if (!v46)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  v3 = v43;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v11 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_30;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25BC42B38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6968, &unk_25BCCEBF0);
  result = sub_25BCB70CC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_25BC42288(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_25BCB79CC();
    sub_25BCB625C();
    result = sub_25BCB7A3C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_25BC42D94(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25BC42B38(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25BC43254(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_25BCB79CC();
      sub_25BCB625C();
      v16 = sub_25BCB7A3C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_25BCB789C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_25BC4AEC0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_25BC42EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6980, &qword_25BCCE4B0);
  v4 = sub_25BCB70CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v40 = v11;
    v41 = v4;
    v42 = v3;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v44 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 56 * (v13 | (v6 << 6));
        v18 = *v16;
        v17 = *(v16 + 8);
        v43 = *(v16 + 16);
        v45 = *(v16 + 32);
        v46 = *(v16 + 24);
        v47 = *(v16 + 48);
        v48 = *(v16 + 40);
        sub_25BCB79CC();
        MEMORY[0x25F878200](v18);
        v49 = v17;
        v19 = *(v17 + 16);
        if (v19)
        {
          for (i = 0; i != v19; ++i)
          {
            v21 = (v49 + 32 + 16 * i);
            v22 = *v21;
            v23 = v21[8];
            MEMORY[0x25F878200](*(*v21 + 16));
            v24 = *(v22 + 16);
            if (v24)
            {
              v25 = (v22 + 32);
              do
              {
                v26 = *v25++;
                MEMORY[0x25F878200](v26);
                --v24;
              }

              while (v24);
            }

            MEMORY[0x25F878200](v23);
          }
        }

        MEMORY[0x25F878200](v46);
        MEMORY[0x25F878200](v45);
        MEMORY[0x25F878200](*(v48 + 16));
        v27 = *(v48 + 16);
        if (v27)
        {
          v28 = (v48 + 32);
          do
          {
            v29 = *v28++;
            MEMORY[0x25F878200](v29);
            --v27;
          }

          while (v27);
        }

        MEMORY[0x25F878200](v47);
        v30 = sub_25BCB7A3C();
        v5 = v41;
        v31 = -1 << *(v41 + 32);
        v32 = v30 & ~v31;
        v33 = v32 >> 6;
        if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
        {
          break;
        }

        v34 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
        v3 = v42;
LABEL_30:
        *(v12 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v39 = *(v41 + 48) + 56 * v34;
        *v39 = v18;
        *(v39 + 8) = v49;
        *(v39 + 16) = v43;
        *(v39 + 24) = v46;
        *(v39 + 32) = v45;
        *(v39 + 40) = v48;
        *(v39 + 48) = v47;
        ++*(v41 + 16);

        sub_25BCB617C();
        v11 = v40;
        v10 = v44;
        if (!v44)
        {
          goto LABEL_7;
        }
      }

      v35 = 0;
      v36 = (63 - v31) >> 6;
      v3 = v42;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_34;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v44 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }
}

void sub_25BC43254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6968, &unk_25BCCEBF0);
  v4 = sub_25BCB70CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_25BCB79CC();
        sub_25BCB625C();
        v18 = sub_25BCB7A3C();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v16;
        ++*(v5 + 16);
        sub_25BCB617C();
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

unint64_t sub_25BC43488()
{
  result = qword_28154D3D8[0];
  if (!qword_28154D3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154D3D8);
  }

  return result;
}

unint64_t sub_25BC43580()
{
  result = qword_27FBB6990;
  if (!qword_27FBB6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6990);
  }

  return result;
}

unint64_t sub_25BC435D4()
{
  result = qword_27FBB6998;
  if (!qword_27FBB6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6998);
  }

  return result;
}

unint64_t sub_25BC43628()
{
  result = qword_27FBB69A0;
  if (!qword_27FBB69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69A0);
  }

  return result;
}

uint64_t sub_25BC436C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyLayerVariablePathCache.Key(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for AnyLayerVariablePathCache.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25BC437B4()
{
  result = qword_28154D3D0;
  if (!qword_28154D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154D3D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_25BAB5DD8(v10, v8, v9, v10, v8, v7, a7);
}

uint64_t sub_25BC4388C(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC438D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC4393C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  MEMORY[0x25F878200](v2 + 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC439DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x676E696E7261656CLL;
    }

    else
    {
      v4 = 0x6574617473;
    }
  }

  else
  {
    v4 = 0x6C696261626F7270;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43AAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    v4 = 1935763810;
  }

  else
  {
    v4 = 0x746867696577;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43B10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  MEMORY[0x25F878200](v2 + 4);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43B50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  MEMORY[0x25F878200](v2 + 8);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43B90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43BF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    v4 = 29295;
  }

  else
  {
    v4 = 6581857;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43C50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43CD4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 25705;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43D34(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 29295;
    }

    else
    {
      v4 = 7499640;
    }
  }

  else
  {
    v4 = 6581857;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43DC4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x64696F6D676973;
    }

    else
    {
      v4 = 0x4C6552796B61656CLL;
    }
  }

  else
  {
    v4 = 6713957;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43E68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  v3 = 12;
  switch(v2 >> 6)
  {
    case 1:
      v3 = (v2 & 0x3F) + 4;
      break;
    case 2:
      v3 = (v2 & 0x3F) + 8;
      break;
    case 3:
      break;
    default:
      v3 = v2;
      break;
  }

  MEMORY[0x25F878200](v3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43EE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_25BCB79CC();
  a3(v6, a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43F8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  MEMORY[0x25F878200](v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43FC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 1702521203;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC4402C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x656469727473;
    }

    else
    {
      v4 = 0x676E6964646170;
    }
  }

  else
  {
    v4 = 0x69536C656E72656BLL;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC440D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (v2)
  {
    v4 = 0x64656C6C6966;
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_24_23(v3, v4);

  return sub_25BCB7A3C();
}

uint64_t sub_25BC44148(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_25BCB79CC();
  a3(a2);
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC441B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1(a1, a2);
  MEMORY[0x25F878200](v2 & 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC44204(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC44250(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9)
{
  v10 = *(a3 + 16);
  v11 = v10[2] + 1;
  while (--v11)
  {
    v12 = v10 + 6;
    v13 = v10[9];
    v10 += 6;
    if (v13 == result)
    {
      v14 = *(v12 - 16);
      v15 = *(v12 - 1);
      v16 = *v12;
      if (v14 == 2)
      {
        v17 = *a9;
      }

      else
      {
        if (v14 != 1)
        {
          return result;
        }

        v17 = *a7;
      }

      if (*(v17 + 16))
      {
        sub_25BCB617C();
        sub_25BCB617C();
        v18 = sub_25BA9266C(v15, v16);
        if (v19)
        {
          v20 = *(*(*(v17 + 56) + 8 * v18) + 16);
          swift_retain_n();

          v21 = sub_25BA928B4();
          [v21 lock];

          sub_25BA92920(v20, 0, 0, v27);
          [*(v20 + 224) unlock];

          v22 = v27[0];

          v23 = sub_25BAC44E4();
          v25 = v24;

          type metadata accessor for TensorRepresentation();
          memset(v27, 0, sizeof(v27));
          v28 = 0;
          swift_allocObject();
          v26 = sub_25BC5F404(v22, *(&v22 + 1), v23, v25, v27, 0x100000000);
          sub_25BC4445C(a2, v26);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_25BC4445C(uint64_t a1, uint64_t a2)
{
  v142 = *(a2 + 152);
  if (sub_25BAB5C48(*(a1 + 152), v142))
  {
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v4 = v2[5];
    v3 = v2[6];
    sub_25BCB617C();
    sub_25BCB617C();
    v5 = sub_25BC471F4(v4, v3);
    sub_25BCB617C();
    sub_25BC45D94(v5, v4);
    v7 = v6;

    v8 = 0;
    v9 = *(v7 + 16);
    v10 = v7 + 48;
    v141 = MEMORY[0x277D84F90];
    v149 = v2;
    v145 = v7 + 48;
LABEL_3:
    v11 = (v10 + 24 * v8);
    while (v8 < v9)
    {
      if (v8 >= *(v7 + 16))
      {
        goto LABEL_71;
      }

      ++v8;
      v12 = v11 + 3;
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = sub_25BAC4018();
      v17 = sub_25BAC4018();
      v11 = v12;
      if (v16 == v17)
      {
        sub_25BCB617C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_45();
          sub_25BAFD648();
          v141 = v21;
        }

        v19 = *(v141 + 16);
        v18 = *(v141 + 24);
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_81(v18);
          OUTLINED_FUNCTION_45_0();
          sub_25BAFD648();
          v141 = v22;
        }

        *(v141 + 16) = v19 + 1;
        v20 = (v141 + 24 * v19);
        v20[4] = v13;
        v20[5] = v14;
        v20[6] = v15;
        v10 = v7 + 48;
        goto LABEL_3;
      }
    }

    v140 = *(v141 + 16);
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v23 = 0;
    v139 = v141 + 32;
    while (v23 != v140)
    {
      if (v23 >= *(v141 + 16))
      {
        goto LABEL_72;
      }

      v24 = (v139 + 24 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v149[6];
      v29 = *(v28 + 16);
      OUTLINED_FUNCTION_51_0();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      if (!v29)
      {
        goto LABEL_77;
      }

      sub_25BCB617C();
      sub_25BCB617C();
      v30 = OUTLINED_FUNCTION_7_49();
      v32 = sub_25BA9266C(v30, v31);
      if ((v33 & 1) == 0)
      {
        goto LABEL_76;
      }

      v143 = v23;
      v145 = *(*(v28 + 56) + 8 * v32);

      sub_25BC48950();
      v35 = v34;

      v144 = v27;
      v146 = v35;
      if ((sub_25BC5F138(v36, a2) & 1) != 0 || (v37 = sub_25BAB3058()) == 0)
      {
        sub_25BCB617C();

        sub_25BCB617C();
        sub_25BCB617C();
        v60 = OUTLINED_FUNCTION_28_25();
        sub_25BC4666C(v60, v61, v62, v63, v64);
        v66 = v65;

        v149[5] = sub_25BC475A4(v66);
        v149[6] = v67;

        v68 = *(a2 + 160);
        OUTLINED_FUNCTION_20_30((v149 + 7));
        v69 = v149[7];
        sub_25BCB617C();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149[7] = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF1424();
          v69 = v114;
          v149[7] = v114;
        }

        if ((v145 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }

        if (v145 >= *(v69 + 16))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:

LABEL_77:
          sub_25BCB70FC();

          v122 = OUTLINED_FUNCTION_7_49();
          MEMORY[0x25F876C90](v122);
          OUTLINED_FUNCTION_50_15();
          sub_25BCB617C();
          OUTLINED_FUNCTION_3_53();
          sub_25BA97890(v123, v124, v125, v126, v127, v128, 483, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
        }

        v71 = v69 + 16 * v145;
        *(v71 + 32) = v142;
        *(v71 + 40) = v68;
        v149[7] = v69;
        swift_endAccess();

        sub_25BCB617C();

        sub_25BCB617C();
        sub_25BCB617C();
        v72 = OUTLINED_FUNCTION_28_25();
        sub_25BC46974(v72, v73, v74, v75, v76);
        v78 = v77;

        v149[8] = sub_25BC47804(v78);
        v149[9] = v79;
      }

      else
      {
        v134 = v38;
        v136 = v37;
        v39 = v149[5];
        v40 = v149[6];
        sub_25BCB617C();
        sub_25BCB617C();
        v41 = sub_25BC471F4(v39, v40);
        sub_25BCB617C();
        sub_25BC45D94(v41, v39);
        v43 = v42;
        v137 = 0;
        v138 = v39;

        v44 = 0;
        v45 = *(v43 + 16);
        v46 = v43 + 48;
        v47 = MEMORY[0x277D84F90];
        v135 = v43 + 48;
LABEL_20:
        v48 = (v46 + 24 * v44);
        while (v44 < v45)
        {
          if (v44 >= *(v43 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v49 = *(v48 - 2);
          v50 = *(v48 - 1);
          if (v49 != v25 || v50 != v26)
          {
            v52 = *v48;
            if ((OUTLINED_FUNCTION_31_25() & 1) == 0)
            {
              sub_25BCB617C();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_45();
                sub_25BAD80BC();
                v47 = v57;
              }

              v54 = *(v47 + 16);
              v53 = *(v47 + 24);
              v55 = v54 + 1;
              if (v54 >= v53 >> 1)
              {
                OUTLINED_FUNCTION_81(v53);
                v133 = v58;
                sub_25BAD80BC();
                v55 = v133;
                v47 = v59;
              }

              ++v44;
              *(v47 + 16) = v55;
              v56 = (v47 + 24 * v54);
              v56[4] = v49;
              v56[5] = v50;
              v56[6] = v52;
              v46 = v43 + 48;
              goto LABEL_20;
            }
          }

          v48 += 3;
          ++v44;
        }

        v149[5] = sub_25BC475A4(v47);
        v149[6] = v80;

        OUTLINED_FUNCTION_20_30((v149 + 7));
        v81 = v149[7];
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v149[7] = v81;
        if ((v82 & 1) == 0)
        {
          sub_25BBF1424();
          v81 = v115;
          v149[7] = v115;
        }

        v83 = *(v81 + 16);
        if (v145 >= v83)
        {
          goto LABEL_75;
        }

        v84 = v83 - 1;
        sub_25BAC947C();
        *(v81 + 16) = v84;
        v149[7] = v81;
        swift_endAccess();

        v85 = v149[8];
        v86 = v149[9];
        sub_25BCB617C();
        sub_25BCB617C();
        v135 = v86;
        v87 = sub_25BC471F4(v85, v86);
        sub_25BCB617C();
        sub_25BC46C10(v87, v85);
        v89 = v88;
        v138 = v85;

        v90 = 0;
        v91 = *(v89 + 16);
        v92 = v89 + 56;
        v145 = MEMORY[0x277D84F90];
        v137 = v89 + 56;
LABEL_43:
        v93 = (v92 + 32 * v90);
        while (v90 < v91)
        {
          if (v90 >= *(v89 + 16))
          {
            goto LABEL_70;
          }

          v94 = *(v93 - 3);
          v95 = *(v93 - 2);
          if (v94 != v25 || v95 != v26)
          {
            v98 = *(v93 - 1);
            v97 = *v93;
            if ((OUTLINED_FUNCTION_31_25() & 1) == 0)
            {
              sub_25BCB617C();
              sub_25BCB617C();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_45();
                sub_25BAFDB78();
                v145 = v103;
              }

              v100 = *(v145 + 16);
              v99 = *(v145 + 24);
              v101 = v100 + 1;
              if (v100 >= v99 >> 1)
              {
                OUTLINED_FUNCTION_81(v99);
                v133 = v104;
                sub_25BAFDB78();
                v101 = v133;
                v145 = v105;
              }

              ++v90;
              *(v145 + 16) = v101;
              v102 = (v145 + 32 * v100);
              v102[4] = v94;
              v102[5] = v95;
              v102[6] = v98;
              v102[7] = v97;
              v92 = v89 + 56;
              goto LABEL_43;
            }
          }

          v93 += 4;
          ++v90;
        }

        v149[8] = sub_25BC47804(v145);
        v149[9] = v106;

        v35 = v146;
        if (!v146[2])
        {

          return swift_unknownObjectRelease();
        }

        v108 = v146[4];
        v107 = v146[5];
        swift_unknownObjectRetain();
        sub_25BC48260(v136, v134, v108, v107);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v145 = v26;
      v109 = v35[2];
      if (v109)
      {
        v110 = v35 + 8;
        do
        {
          v111 = *(v110 - 3);
          v110 += 5;
          ObjectType = swift_getObjectType();
          v113 = *(v111 + 80);
          swift_unknownObjectRetain();
          sub_25BCB617C();
          v113(a1, a2, ObjectType, v111);

          swift_unknownObjectRelease();
          --v109;
        }

        while (v109);
      }

      v23 = v143 + 1;
    }

    result = sub_25BAB3058();
    if (!result)
    {
      return result;
    }

    v118 = v117;
    v119 = result;
    v120 = sub_25BAB3058();
    if (v120)
    {
      sub_25BC48D78(v119, v118, v120, v121);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000098, 0x800000025BCE46B0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/TensorFunction.swift", 105, 2, 473);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC44E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_25BCB617C();
  sub_25BCB617C();
  v14 = sub_25BC471F4(v12, v13);
  sub_25BCB617C();
  sub_25BC45D94(v14, v12);
  v16 = v15;

  v18 = 0;
  v19 = *(v16 + 16);
  for (i = (v16 + 48); ; i += 3)
  {
    if (v19 == v18)
    {
    }

    if (v18 >= *(v16 + 16))
    {
      break;
    }

    v21 = *i;
    sub_25BCB617C();

    sub_25BC44250(v18, v21, a2, a3, a4, a5, a6, a7, a8);

    ++v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC44FE0(void (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_25BCB617C();
  sub_25BCB617C();
  v5 = sub_25BC471F4(v4, v3);
  sub_25BCB617C();
  sub_25BC45D94(v5, v4);
  v7 = v6;

  v9 = 0;
  v10 = *(v7 + 16);
  for (i = v7 + 48; ; i += 24)
  {
    if (v10 == v9)
    {
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    sub_25BCB617C();

    v12 = OUTLINED_FUNCTION_7_49();
    a1(v12);

    ++v9;
  }

  __break(1u);
  return result;
}

void sub_25BC45110(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v5 = a1[5];
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC083D4(v5);
  v7 = v6;

  v49[0] = v7;
  sub_25BC4B074(v49, a2, sub_25BB13CB4);
  v8 = v49[0];
  if (v2)
  {
  }

  else
  {
    v9 = sub_25BAF9E60(v49[0]);
    a1[5] = sub_25BC475A4(v9);
    a1[6] = v10;

    v11 = *(v8 + 16);
    v12 = MEMORY[0x277D84F90];
    v47 = v8;
    if (v11)
    {
      v49[0] = MEMORY[0x277D84F90];
      sub_25BAD4D9C();
      v12 = v49[0];
      v13 = v8 + 48;
      do
      {
        v14 = *(*v13 + 152);
        v15 = *(*v13 + 160);
        v49[0] = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        sub_25BCB617C();
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_13_39();
          sub_25BAD4D9C();
          v12 = v49[0];
        }

        *(v12 + 16) = v17 + 1;
        v18 = v12 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v13 += 24;
        --v11;
      }

      while (v11);
      v8 = v47;
    }

    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    a1[7] = v12;

    v48 = *(v8 + 16);
    OUTLINED_FUNCTION_17_10();
    swift_beginAccess();
    v19 = 0;
    v20 = v8 + 48;
    v46 = MEMORY[0x277D84F90];
    v45 = v8 + 48;
LABEL_10:
    for (i = v20 + 24 * v19; ; i += 24)
    {
      if (v48 == v19)
      {

        v41 = sub_25BC47804(v46);
        v43 = v42;
        OUTLINED_FUNCTION_5_53();
        swift_beginAccess();
        a1[8] = v41;
        a1[9] = v43;

        return;
      }

      if (v19 >= *(v8 + 16))
      {
        break;
      }

      v22 = a1[9];
      if (*(v22 + 16))
      {
        v50 = v19;
        v23 = *(i - 8);
        v24 = a1;
        v25 = a1[8];
        v26 = *(i - 16);
        OUTLINED_FUNCTION_51_0();
        swift_bridgeObjectRetain_n();

        sub_25BCB617C();
        sub_25BCB617C();
        v27 = OUTLINED_FUNCTION_7_49();
        v29 = sub_25BA9266C(v27, v28);
        v31 = v30;

        if (v31)
        {
          v32 = *(*(v22 + 56) + 8 * v29);
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v32 >= *(v25 + 16))
          {
            goto LABEL_27;
          }

          v33 = v25 + 16 * v32;
          v44 = *(v33 + 32);
          v34 = *(v33 + 40);
          sub_25BCB617C();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45();
            sub_25BAFDB78();
            v46 = v39;
          }

          a1 = v24;
          v8 = v47;
          v36 = *(v46 + 16);
          v35 = *(v46 + 24);
          v37 = v50;
          if (v36 >= v35 >> 1)
          {
            OUTLINED_FUNCTION_81(v35);
            sub_25BAFDB78();
            v46 = v40;
          }

          v19 = v37 + 1;
          *(v46 + 16) = v36 + 1;
          v38 = (v46 + 32 * v36);
          v38[4] = v26;
          v38[5] = v23;
          v38[6] = v44;
          v38[7] = v34;
          v20 = v45;
          goto LABEL_10;
        }

        a1 = v24;
        v8 = v47;
        v19 = v50;
      }

      ++v19;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_25BC454D8(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v5 = a1[13];
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC083D4(v5);
  v7 = v6;

  v64[0] = v7;
  sub_25BC4B074(v64, a2, sub_25BB13CB4);
  v8 = v64[0];
  if (v2)
  {
  }

  else
  {
    v9 = sub_25BAF9E60(v64[0]);
    a1[13] = sub_25BC475A4(v9);
    a1[14] = v10;

    v11 = *(v8 + 16);
    v12 = MEMORY[0x277D84F90];
    v69 = v8;
    v60 = a1;
    if (v11)
    {
      sub_25BB00718(0, v11, 0);
      v13 = v8 + 48;
      do
      {

        OUTLINED_FUNCTION_17_10();
        sub_25BAD5184(v14, v15, v16, v17, v18);
        v19 = v64[0];
        v20 = v64[1];
        v21 = v65;
        v23 = v66;
        v22 = v67;
        v24 = v68;
        v63 = v12;
        v26 = *(v12 + 16);
        v25 = *(v12 + 24);
        if (v26 >= v25 >> 1)
        {
          OUTLINED_FUNCTION_81(v25);
          OUTLINED_FUNCTION_45_0();
          v61 = v28;
          v30 = v29;
          v58 = v31;
          sub_25BB00718(v32, v33, v34);
          v24 = v58;
          v22 = v30;
          v21 = v61;
          v12 = v63;
        }

        *(v12 + 16) = v26 + 1;
        v27 = v12 + 56 * v26;
        *(v27 + 32) = v19;
        *(v27 + 40) = v20;
        *(v27 + 48) = v21;
        *(v27 + 64) = v23;
        *(v27 + 72) = v22;
        *(v27 + 80) = v24;
        v13 += 24;
        --v11;
      }

      while (v11);
      a1 = v60;
      v8 = v69;
    }

    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    a1[15] = v12;

    v62 = *(v8 + 16);
    OUTLINED_FUNCTION_17_10();
    swift_beginAccess();
    v35 = 0;
    v36 = v8 + 48;
    v59 = MEMORY[0x277D84F90];
    v57 = v8 + 48;
LABEL_10:
    for (i = v36 + 24 * v35; ; i += 24)
    {
      if (v62 == v35)
      {

        v54 = sub_25BC47804(v59);
        v56 = v55;
        OUTLINED_FUNCTION_5_53();
        swift_beginAccess();
        a1[16] = v54;
        a1[17] = v56;

        return;
      }

      if (v35 >= *(v8 + 16))
      {
        break;
      }

      v38 = a1[17];
      if (*(v38 + 16))
      {
        v39 = a1[16];
        v40 = *(i - 8);
        v41 = *(i - 16);
        OUTLINED_FUNCTION_51_0();
        swift_bridgeObjectRetain_n();

        sub_25BCB617C();
        sub_25BCB617C();
        v42 = sub_25BA9266C(v41, v40);
        v44 = v43;

        if (v44)
        {
          v45 = *(*(v38 + 56) + 8 * v42);
          if ((v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v45 >= *(v39 + 16))
          {
            goto LABEL_27;
          }

          v46 = v39 + 16 * v45;
          v47 = *(v46 + 32);
          v48 = *(v46 + 40);
          sub_25BCB617C();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45();
            sub_25BAFDB78();
            v59 = v52;
          }

          v8 = v69;
          v50 = *(v59 + 16);
          v49 = *(v59 + 24);
          if (v50 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_81(v49);
            sub_25BAFDB78();
            v59 = v53;
          }

          ++v35;
          *(v59 + 16) = v50 + 1;
          v51 = (v59 + 32 * v50);
          v51[4] = v41;
          v51[5] = v40;
          v51[6] = v47;
          v51[7] = v48;
          a1 = v60;
          v36 = v57;
          goto LABEL_10;
        }

        a1 = v60;
        v8 = v69;
      }

      ++v35;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_25BC458D0()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_25BAC44E4();
  OUTLINED_FUNCTION_14_36();
  sub_25BB2E238(v3, v4, v5, v6);
  OUTLINED_FUNCTION_22_29();

  if (!v2)
  {
    v1 = v0[17];
    v7 = v0[18];
    sub_25BAC44E4();
    OUTLINED_FUNCTION_14_36();
    sub_25BB2E238(v8, v9, v10, v11);
    OUTLINED_FUNCTION_22_29();

    if (!v7)
    {
      sub_25BAC44E4();
      OUTLINED_FUNCTION_22_29();
    }
  }

  return v1;
}

void sub_25BC4595C()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC471F4(v3, v2);
  OUTLINED_FUNCTION_37_21();
  sub_25BCB617C();
  v4 = OUTLINED_FUNCTION_26_29();
  sub_25BC45D94(v4, v5);
  v7 = v6;

  OUTLINED_FUNCTION_36_19();
  while (1)
  {
    if (v14 == v1)
    {

      goto LABEL_7;
    }

    if (v1 >= *(v7 + 16))
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_48_17(v8);
    v8 = sub_25BAC4018();
    if (v9 == v8)
    {
      sub_25BCB617C();

      OUTLINED_FUNCTION_20_30(v0 + 128);
      OUTLINED_FUNCTION_14_36();
      sub_25BAD3BF4(v10, v11, v12, v13, 1);
      swift_endAccess();

LABEL_7:

      return;
    }
  }

  __break(1u);
}

uint64_t sub_25BC45AE0(void (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  sub_25BCB617C();
  sub_25BCB617C();
  v5 = sub_25BC471F4(v4, v3);
  sub_25BCB617C();
  sub_25BC45D94(v5, v4);
  v7 = v6;

  v9 = 0;
  v10 = *(v7 + 16);
  for (i = v7 + 48; ; i += 24)
  {
    if (v10 == v9)
    {
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    sub_25BCB617C();

    v12 = OUTLINED_FUNCTION_7_49();
    a1(v12);

    ++v9;
  }

  __break(1u);
  return result;
}

void sub_25BC45C10()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC471F4(v3, v2);
  OUTLINED_FUNCTION_37_21();
  sub_25BCB617C();
  v4 = OUTLINED_FUNCTION_26_29();
  sub_25BC45D94(v4, v5);
  v7 = v6;

  OUTLINED_FUNCTION_36_19();
  while (1)
  {
    if (v14 == v1)
    {

      goto LABEL_7;
    }

    if (v1 >= *(v7 + 16))
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_48_17(v8);
    v8 = sub_25BAC4018();
    if (v9 == v8)
    {
      sub_25BCB617C();

      OUTLINED_FUNCTION_20_30(v0 + 64);
      OUTLINED_FUNCTION_14_36();
      sub_25BAD3BF4(v10, v11, v12, v13, 1);
      swift_endAccess();

LABEL_7:

      return;
    }
  }

  __break(1u);
}

void sub_25BC45D94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_25BAAF54C(a2);
  v8 = v7;
  v34 = v6;
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v37 = MEMORY[0x277D84F90];
  sub_25BAD8238(0, v9 & ~(v9 >> 63), 0);
  if (v8 < 0)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v10 = v37;
  v36 = v4 >> 62;
  v33 = v4;
  if (v9)
  {
    v11 = 0;
    v35 = v4 & 0xC000000000000001;
    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    v31 = v4 & 0xFFFFFFFFFFFFFF8;
    v30 = v5;
    v13 = (v5 + 40);
    v14 = v34;
    while (v14 != v11)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      if (v36)
      {
        v17 = sub_25BCB749C();
      }

      else
      {
        v17 = *(v12 + 16);
      }

      if (v11 == v17)
      {
        goto LABEL_38;
      }

      if (v35)
      {
        sub_25BCB617C();
        v18 = MEMORY[0x25F8779B0](v11, v4);
      }

      else
      {
        if (v11 >= *(v12 + 16))
        {
          goto LABEL_42;
        }

        v18 = *(v4 + 8 * v11 + 32);
        sub_25BCB617C();
      }

      OUTLINED_FUNCTION_41_21();
      v14 = v34;
      if (v20)
      {
        sub_25BAD8238(v19 > 1, v12, 1);
        v14 = v34;
        v10 = v37;
      }

      ++v11;
      *(v10 + 16) = v12;
      v21 = (v10 + 24 * v3);
      v21[4] = v15;
      v21[5] = v16;
      v21[6] = v18;
      v13 += 2;
      v12 = v31;
      v4 = v33;
      if (v9 == v11)
      {
        v5 = v30;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v12 = v4 & 0xFFFFFFFFFFFFFF8;
  v35 = v4 & 0xC000000000000001;
  v14 = v34;
LABEL_21:
  v32 = v4 + 32;
  v22 = (v5 + 16 * v9 + 40);
  for (i = v12; v14 != v9; v12 = i)
  {
    if (v9 >= v14)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_40;
    }

    v25 = *(v22 - 1);
    v24 = *v22;
    if (v36)
    {
      v26 = sub_25BCB749C();
      v14 = v34;
    }

    else
    {
      v26 = *(v12 + 16);
    }

    if (v9 == v26)
    {
      break;
    }

    if (v35)
    {
      sub_25BCB617C();
      v14 = v34;
      v27 = MEMORY[0x25F8779B0](v9, v33);
    }

    else
    {
      if (v9 >= *(v12 + 16))
      {
        goto LABEL_41;
      }

      v27 = *(v32 + 8 * v9);
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_41_21();
    if (v20)
    {
      sub_25BAD8238(v28 > 1, v12, 1);
      v14 = v34;
      v10 = v37;
    }

    *(v10 + 16) = v12;
    v29 = (v10 + 24 * v3);
    v29[4] = v25;
    v29[5] = v24;
    v29[6] = v27;
    ++v9;
    v22 += 2;
  }

  OUTLINED_FUNCTION_46_19();
}

uint64_t sub_25BC4605C(uint64_t a1, uint64_t a2)
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

  v31 = MEMORY[0x277D84F90];
  result = sub_25BB00784(0, v6, 0);
  v25 = v5;
  v26 = v4;
  v23 = a1;
  v24 = v6;
  v22 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 48);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v27 = *(v9 - 4);
      v10 = *v9;
      v28 = *(v9 - 1);
      v29 = *v8;
      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      sub_25BCB617C();
      result = swift_unknownObjectRetain();
      if (v12 >= v11 >> 1)
      {
        result = sub_25BB00784(v11 > 1, v12 + 1, 1);
      }

      *(v31 + 16) = v12 + 1;
      v13 = v31 + 40 * v12;
      *(v13 + 32) = v27;
      --v5;
      *(v13 + 40) = v28;
      *(v13 + 48) = v10;
      *(v13 + 56) = v29;
      --v4;
      ++v8;
      v9 += 3;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = v24;
    for (i = (v23 + 24 * v24 + 48); v26 != v14; i += 3)
    {
      if (v14 >= v26)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v25 == v14)
      {
        break;
      }

      if (v14 >= v25)
      {
        goto LABEL_25;
      }

      v16 = *(i - 4);
      v18 = *(i - 1);
      v17 = *i;
      v30 = *(v22 + 32 + 16 * v14);
      v20 = *(v31 + 16);
      v19 = *(v31 + 24);
      sub_25BCB617C();
      result = swift_unknownObjectRetain();
      if (v20 >= v19 >> 1)
      {
        result = sub_25BB00784(v19 > 1, v20 + 1, 1);
      }

      *(v31 + 16) = v20 + 1;
      v21 = v31 + 40 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      *(v21 + 48) = v17;
      *(v21 + 56) = v30;
      ++v14;
    }

    return v31;
  }

  return result;
}

uint64_t sub_25BC46280(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  v58 = MEMORY[0x277D84F90];
  sub_25BB007F0(0, v10, 0);
  v11 = sub_25BC4707C(a1, a2);
  sub_25BCB617C();
  v12 = sub_25BC4605C(v11, a1);

  v55 = a7;
  v52 = v10;
  v53 = v12;
  if (v10)
  {
    v14 = 0;
    v47 = *(v12 + 16);
    v15 = (v12 + 64);
    while (v47 != v14)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_31;
      }

      v16 = *(v15 - 8);
      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      v20 = *(v15 - 1);
      v19 = *v15;
      if (v16 == a3 && (v17 == a4 ? (v21 = v18 == a5) : (v21 = 0), v21 || (sub_25BCB789C() & 1) != 0))
      {
        ObjectType = swift_getObjectType();
        v23 = *(v55 + 16);
        sub_25BCB617C();
        swift_unknownObjectRetain();
        v16 = v23(ObjectType, v55);
        v17 = v24;
        v50 = v25;
        v26 = a6;
        v56 = v55;
      }

      else
      {
        v56 = v19;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v50 = v18;
        v26 = v20;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();

      v28 = *(v58 + 16);
      v27 = *(v58 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_25BB007F0(v27 > 1, v28 + 1, 1);
      }

      *(v58 + 16) = v28 + 1;
      v29 = v58 + 40 * v28;
      *(v29 + 32) = v16;
      ++v14;
      *(v29 + 40) = v17;
      *(v29 + 48) = v50;
      *(v29 + 56) = v26;
      *(v29 + 64) = v56;
      v15 += 5;
      v12 = v53;
      if (v52 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_16:
    v30 = v52;
    v31 = (v12 + 40 * v52 + 64);
    while (v30 < *(v12 + 16))
    {
      v32 = *(v31 - 8);
      v33 = *(v31 - 3);
      v34 = *(v31 - 2);
      v35 = *(v31 - 1);
      v36 = *v31;
      if (v32 == a3 && (v33 == a4 ? (v37 = v34 == a5) : (v37 = 0), v37 || (sub_25BCB789C() & 1) != 0))
      {
        v38 = a6;
        v39 = swift_getObjectType();
        v40 = *(v55 + 16);
        sub_25BCB617C();
        swift_unknownObjectRetain();
        v32 = v40(v39, v55);
        v33 = v41;
        v43 = v42;
        v57 = v55;
      }

      else
      {
        v57 = v36;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v43 = v34;
        v38 = v35;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();

      v45 = *(v58 + 16);
      v44 = *(v58 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_25BB007F0(v44 > 1, v45 + 1, 1);
      }

      *(v58 + 16) = v45 + 1;
      v46 = v58 + 40 * v45;
      *(v46 + 32) = v32;
      *(v46 + 40) = v33;
      *(v46 + 48) = v43;
      *(v46 + 56) = v38;
      *(v46 + 64) = v57;
      v31 += 5;
      ++v30;
      v12 = v53;
    }

    swift_unknownObjectRelease();
    return v58;
  }

  return result;
}

void sub_25BC4666C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v48 = a5;
  v50 = a3;
  v8 = sub_25BAAF54C(a1);
  v52 = MEMORY[0x277D84F90];
  sub_25BB00850(0, v8 & ~(v8 >> 63), 0);
  v9 = sub_25BC471F4(a1, a2);
  sub_25BCB617C();
  sub_25BC45D94(v9, a1);
  v49 = v10;

  v11 = v8;

  if (v8 < 0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v45 = v5;
  if (v8)
  {
    v19 = 0;
    v46 = v11;
    v47 = *(v49 + 16);
    v20 = (v49 + 48);
    while (v47 != v19)
    {
      if (v19 >= *(v49 + 16))
      {
        goto LABEL_30;
      }

      v22 = *(v20 - 2);
      v21 = *(v20 - 1);
      v23 = *v20;
      v24 = v22 == v50 && v21 == v51;
      if (v24 || (OUTLINED_FUNCTION_18_36(*(v20 - 2), v12, v13, v14, v15, v16, v17, v18, v44, v45, v46, v47, v48, v49, v50, v51) & 1) != 0)
      {
        sub_25BCB617C();

        v25 = v48;
        v22 = sub_25BAC44E4();
        v27 = v26;
        v11 = v46;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v27 = v21;
        v25 = v23;
      }

      v28 = *(v52 + 16);
      if (v28 >= *(v52 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_0();
        sub_25BB00850(v30, v31, v32);
        v11 = v46;
      }

      ++v19;
      *(v52 + 16) = v28 + 1;
      v29 = (v52 + 24 * v28);
      v29[4] = v22;
      v29[5] = v27;
      v29[6] = v25;
      v20 += 3;
      if (v11 == v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_16:
  v33 = (v49 + 24 * v11 + 48);
  while (v11 < *(v49 + 16))
  {
    v35 = *(v33 - 2);
    v34 = *(v33 - 1);
    v36 = *v33;
    v37 = v35 == v50 && v34 == v51;
    if (v37 || (OUTLINED_FUNCTION_18_36(*(v33 - 2), v12, v13, v14, v15, v16, v17, v18, v44, v45, v46, v47, v48, v49, v50, v51) & 1) != 0)
    {
      sub_25BCB617C();

      v38 = v48;
      v35 = sub_25BAC44E4();
      v40 = v39;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v40 = v34;
      v38 = v36;
    }

    v42 = *(v52 + 16);
    v41 = *(v52 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_25BB00850((v41 > 1), v42 + 1, 1);
    }

    *(v52 + 16) = v42 + 1;
    v43 = (v52 + 24 * v42);
    v43[4] = v35;
    v43[5] = v40;
    v43[6] = v38;
    v33 += 3;
    ++v11;
  }

  OUTLINED_FUNCTION_46_19();
}

void sub_25BC46974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v51 = a5;
  v53 = a3;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_25BB00810(0, v9, 0);
  v10 = v55;
  v11 = sub_25BC471F4(a1, a2);
  sub_25BCB617C();
  sub_25BC46C10(v11, a1);
  v13 = v12;
  v47 = v5;

  v14 = v9;

  v52 = v13;
  if (v9)
  {
    v22 = 0;
    v48 = v9;
    v49 = *(v13 + 16);
    v23 = (v13 + 56);
    while (v49 != v22)
    {
      if (v22 >= *(v13 + 16))
      {
        goto LABEL_29;
      }

      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v6 = *(v23 - 1);
      v26 = *v23;
      v27 = v24 == v53 && v25 == v54;
      v50 = *(v23 - 1);
      if (v27 || (OUTLINED_FUNCTION_18_36(v24, v15, v16, v17, v18, v19, v20, v21, v47, v48, v49, v50, v51, v52, v53, v54) & 1) != 0)
      {
        sub_25BCB617C();
        sub_25BCB617C();
        v24 = sub_25BAC44E4();
        v29 = v28;

        v25 = v29;
        v14 = v48;
      }

      else
      {
        sub_25BCB617C();
        sub_25BCB617C();
      }

      OUTLINED_FUNCTION_39_22();
      if (v30)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BB00810(v32, v33, v34);
        v14 = v48;
        v10 = v55;
      }

      ++v22;
      *(v10 + 16) = a1;
      v31 = (v10 + 32 * v6);
      v31[4] = v24;
      v31[5] = v25;
      v31[6] = v50;
      v31[7] = v26;
      v23 += 4;
      v13 = v52;
      if (v14 == v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_15:
    v35 = (v13 + 32 * v14 + 56);
    while (v14 < *(v13 + 16))
    {
      v36 = *(v35 - 3);
      v37 = *(v35 - 2);
      v38 = *(v35 - 1);
      v39 = *v35;
      v40 = v36 == v53 && v37 == v54;
      if (v40 || (OUTLINED_FUNCTION_18_36(*(v35 - 3), v15, v16, v17, v18, v19, v20, v21, v47, v48, v49, v50, v51, v52, v53, v54) & 1) != 0)
      {
        sub_25BCB617C();
        sub_25BCB617C();
        v6 = v14;
        v36 = sub_25BAC44E4();
        v42 = v41;

        v37 = v42;
        v14 = v6;
      }

      else
      {
        sub_25BCB617C();
        sub_25BCB617C();
      }

      OUTLINED_FUNCTION_39_22();
      if (v30)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BB00810(v44, v45, v46);
        v10 = v55;
      }

      *(v10 + 16) = a1;
      v43 = (v10 + 32 * v6);
      v43[4] = v36;
      v43[5] = v37;
      v43[6] = v38;
      v43[7] = v39;
      v35 += 4;
      ++v14;
      v13 = v52;
    }

    OUTLINED_FUNCTION_46_19();
  }
}

void sub_25BC46C10(uint64_t a1, uint64_t a2)
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
  sub_25BB00830(0, v6, 0);
  v27 = v5;
  v28 = v4;
  v25 = a1;
  v26 = a2;
  v29 = v6;
  if (v6)
  {
    v7 = (a2 + 40);
    v8 = (a1 + 40);
    v9 = v5;
    while (v4)
    {
      if (!v9)
      {
        goto LABEL_22;
      }

      v10 = *v8;
      v11 = *v7;
      v31 = *(v8 - 1);
      v32 = *(v7 - 1);
      v13 = *(v35 + 16);
      v12 = *(v35 + 24);
      v33 = v13 + 1;
      sub_25BCB617C();
      sub_25BCB617C();
      if (v13 >= v12 >> 1)
      {
        sub_25BB00830(v12 > 1, v33, 1);
      }

      *(v35 + 16) = v33;
      v14 = (v35 + 32 * v13);
      v14[4] = v31;
      v14[5] = v10;
      --v9;
      v14[6] = v32;
      v14[7] = v11;
      --v4;
      v7 += 2;
      v8 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v15 = v29;
    v34 = 16 * v29;
    v16 = v25;
    v17 = v26;
    while (v28 != v15)
    {
      if (v15 >= v28)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_24;
      }

      if (v27 == v15)
      {
        return;
      }

      if (v15 >= v27)
      {
        goto LABEL_25;
      }

      v30 = v15;
      v18 = *(v16 + v34 + 32);
      v19 = *(v16 + v34 + 40);
      v20 = *(v17 + v34 + 32);
      v21 = *(v17 + v34 + 40);
      v23 = *(v35 + 16);
      v22 = *(v35 + 24);
      sub_25BCB617C();
      sub_25BCB617C();
      if (v23 >= v22 >> 1)
      {
        sub_25BB00830(v22 > 1, v23 + 1, 1);
      }

      *(v35 + 16) = v23 + 1;
      v24 = (v35 + 32 * v23);
      v24[4] = v18;
      v24[5] = v19;
      v24[6] = v20;
      v24[7] = v21;
      v15 = v30 + 1;
      v17 += 16;
      v16 += 16;
    }
  }
}

void sub_25BC46E18(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25BCB749C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (sub_25BAB3058())
      {
        v7 = v6;
        ObjectType = swift_getObjectType();
        (*(v7 + 48))(v19, ObjectType, v7);
        v17 = v19[1];
        v18 = v19[0];
        v16 = v19[2];
        v9 = v20;
        v10 = v21;
        v11 = v22;
        swift_unknownObjectRelease();

        if ((v11 & 1) == 0)
        {
          v13 = v17;
          v12 = v18;
          v14 = v16;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v4;
      if (v5 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_14:
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
LABEL_15:
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 57) = v11;
}

uint64_t sub_25BC4732C(uint64_t a1)
{
  sub_25BACF724();
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25BCB614C();
  v24 = *(a1 + 16);
  if (v24)
  {
    v4 = 0;
    v5 = (a1 + 56);
    v23 = a1;
    while (v4 < *(a1 + 16))
    {
      v6 = *(v5 - 6);
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v27 = *v5;
      v25 = v2;
      v26 = *(v2 + 16);
      sub_25BCB617C();
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_25BAD23EC();
      if (__OFADD__(v3[2], (v10 & 1) == 0))
      {
        goto LABEL_19;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F8, &unk_25BCCEC10);
      if (sub_25BCB745C())
      {
        v13 = sub_25BAD23EC();
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_21;
        }

        v11 = v13;
      }

      if (v12)
      {

        *(v3[7] + 8 * v11) = v26;
      }

      else
      {
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v15 = v3[6] + 24 * v11;
        *v15 = v6;
        *(v15 + 8) = v8;
        *(v15 + 16) = v7;
        *(v3[7] + 8 * v11) = v26;
        v16 = v3[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_20;
        }

        v3[2] = v18;
      }

      v2 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD89C();
        v2 = v20;
      }

      v19 = *(v2 + 16);
      if (v19 >= *(v2 + 24) >> 1)
      {
        sub_25BAFD89C();
        v2 = v21;
      }

      ++v4;
      *(v2 + 16) = v19 + 1;
      *(v2 + 16 * v19 + 32) = v27;
      v5 = (v5 + 40);
      a1 = v23;
      if (v24 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_25BCB795C();
    __break(1u);
  }

  else
  {
LABEL_17:

    return v2;
  }

  return result;
}

unint64_t sub_25BC475A4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v3 = sub_25BCB614C();
  v22 = *(a1 + 16);
  if (v22)
  {
    v4 = 0;
    v5 = a1 + 48;
    v21 = a1;
    while (v4 < *(a1 + 16))
    {
      v7 = *(v5 - 16);
      v6 = *(v5 - 8);
      if (v2 >> 62)
      {
        v8 = sub_25BCB749C();
      }

      else
      {
        v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_25BCB617C();

      swift_isUniquelyReferenced_nonNull_native();
      v9 = v7;
      v10 = sub_25BA9266C(v7, v6);
      if (__OFADD__(v3[2], (v11 & 1) == 0))
      {
        goto LABEL_21;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      v14 = sub_25BCB745C();
      if (v14)
      {
        v14 = sub_25BA9266C(v9, v6);
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_23;
        }

        v12 = v14;
      }

      if (v13)
      {

        *(v3[7] + 8 * v12) = v8;
      }

      else
      {
        v3[(v12 >> 6) + 8] |= 1 << v12;
        v16 = (v3[6] + 16 * v12);
        *v16 = v9;
        v16[1] = v6;
        *(v3[7] + 8 * v12) = v8;
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_22;
        }

        v3[2] = v19;
      }

      MEMORY[0x25F876F40](v14);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      ++v4;
      sub_25BCB680C();
      v2 = v23;
      v5 += 24;
      a1 = v21;
      if (v22 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_25BCB795C();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v2;
  }

  return result;
}

uint64_t sub_25BC47804(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25BCB614C();
  v26 = *(a1 + 16);
  if (v26)
  {
    v4 = 0;
    v5 = (a1 + 56);
    v25 = a1;
    while (v4 < *(a1 + 16))
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *v5;
      v27 = *(v5 - 1);
      v28 = v2;
      v9 = *(v2 + 16);
      sub_25BCB617C();
      sub_25BCB617C();
      swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_25BA9266C(v7, v6);
      if (__OFADD__(v3[2], (v11 & 1) == 0))
      {
        goto LABEL_19;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v14 = sub_25BA9266C(v7, v6);
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_21;
        }

        v12 = v14;
      }

      if (v13)
      {

        *(v3[7] + 8 * v12) = v9;
      }

      else
      {
        v3[(v12 >> 6) + 8] |= 1 << v12;
        v16 = (v3[6] + 16 * v12);
        *v16 = v7;
        v16[1] = v6;
        *(v3[7] + 8 * v12) = v9;
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_20;
        }

        v3[2] = v19;
      }

      v2 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB1E30();
        v2 = v22;
      }

      v20 = *(v2 + 16);
      if (v20 >= *(v2 + 24) >> 1)
      {
        sub_25BAB1E30();
        v2 = v23;
      }

      ++v4;
      *(v2 + 16) = v20 + 1;
      v21 = v2 + 16 * v20;
      *(v21 + 32) = v27;
      *(v21 + 40) = v8;
      v5 += 4;
      a1 = v25;
      if (v26 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_25BCB795C();
    __break(1u);
  }

  else
  {
LABEL_17:

    return v2;
  }

  return result;
}

uint64_t sub_25BC47A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = v6[1];
  if (*(v11 + 16))
  {
    v12 = sub_25BAD23EC();
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v15 = *v7;
        if (v14 < *(*v7 + 16))
        {
          v11 = *(v15 + 16 * v14 + 32);
          swift_unknownObjectRetain();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_6:
            v16 = v15 + 16 * v14;
            *(v16 + 32) = a1;
            *(v16 + 40) = a2;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v7 = v15;
            return v11;
          }

LABEL_13:
          sub_25BBF1378();
          v15 = v21;
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  sub_25BAD46FC();
  v17 = *(*v7 + 16);
  sub_25BAD4820(v17);
  v18 = *v7;
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *v7 = v18;
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v7[1];
  sub_25BAD4714();
  v11 = 0;
  v7[1] = v22;
  return v11;
}

uint64_t sub_25BC47BDC()
{
  sub_25BCB79CC();
  sub_25BAD88C8(v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC47C24(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BAD88C8(v2);
  return sub_25BCB7A3C();
}

void sub_25BC47C64(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = OUTLINED_FUNCTION_9_47();
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;
  v5 = OUTLINED_FUNCTION_9_47();
  *(v1 + 64) = v3;
  *(v1 + 72) = v5;
  sub_25BACF724();
  v6 = sub_25BCB614C();
  *(v1 + 80) = v3;
  *(v1 + 88) = v6;
  *(v1 + 96) = v3;
  v7 = OUTLINED_FUNCTION_9_47();
  *(v1 + 104) = v3;
  *(v1 + 112) = v7;
  *(v1 + 120) = v3;
  v8 = OUTLINED_FUNCTION_9_47();
  v9 = MEMORY[0x277D84FA0];
  *(v1 + 200) = MEMORY[0x277D84FA0];
  *(v1 + 128) = v3;
  *(v1 + 136) = v8;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0;
  if (qword_28154F9D0 != -1)
  {
    swift_once();
  }

  *(v1 + 208) = dword_281557408;
  *(v1 + 216) = v3;
  *(v1 + 24) = 1;
  *(v1 + 32) = v9;
  OUTLINED_FUNCTION_20_30(v1 + 144);
  sub_25BACF778(a1 + 168, v1 + 144);
  swift_endAccess();
  v10 = *(a1 + 224);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 200) = v10;
  sub_25BCB617C();

  *(v1 + 208) = *(a1 + 232);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 40) = v11;
  *(v1 + 48) = v12;
  sub_25BCB617C();
  sub_25BCB617C();

  v13 = sub_25BAAF54C(v11);
  v60 = v1;
  v61 = a1;
  if (v13)
  {
    v14 = v13;
    sub_25BAD4D9C();
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v15 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x25F8779B0](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = *(v16 + 152);
      v18 = *(v16 + 160);
      sub_25BCB617C();

      v63 = v3;
      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_81(v19);
        OUTLINED_FUNCTION_13_39();
        sub_25BAD4D9C();
      }

      ++v15;
      *(v3 + 16) = v20 + 1;
      v21 = v3 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
    }

    while (v14 != v15);
    a1 = v61;
  }

  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 56) = v3;

  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 64) = v22;
  *(v1 + 72) = v23;
  sub_25BCB617C();
  sub_25BCB617C();

  v25 = *(a1 + 120);
  v24 = *(a1 + 128);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 80) = v25;
  *(v1 + 88) = v24;
  sub_25BCB617C();
  sub_25BCB617C();

  v26 = *(v25 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v64 = MEMORY[0x277D84F90];
    sub_25BB00738(0, v26, 0);
    v27 = v64;
    v28 = (v25 + 40);
    do
    {
      v29 = *v28;
      v30 = swift_unknownObjectRetain();
      v31 = sub_25BAD4888(v30, v29);
      v33 = v32;
      v35 = v34;
      v63 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_81(v36);
        OUTLINED_FUNCTION_13_39();
        sub_25BB00738(v39, v40, v41);
      }

      *(v27 + 16) = v37 + 1;
      v38 = (v27 + 24 * v37);
      v38[4] = v31;
      v38[5] = v33;
      v38[6] = v35;
      v28 += 2;
      --v26;
    }

    while (v26);
    v1 = v60;
    a1 = v61;
  }

  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 96) = v27;

  v43 = *(a1 + 152);
  v42 = *(a1 + 160);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  *(v1 + 104) = v43;
  *(v1 + 112) = v42;
  sub_25BCB617C();
  sub_25BCB617C();

  v44 = sub_25BAAF54C(v43);
  v45 = MEMORY[0x277D84F90];
  if (!v44)
  {
    goto LABEL_29;
  }

  v46 = v44;
  v62 = MEMORY[0x277D84F90];
  sub_25BB00718(0, v44 & ~(v44 >> 63), 0);
  if ((v46 & 0x8000000000000000) == 0)
  {
    v47 = 0;
    v45 = v62;
    v48 = v43;
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v47, v48);
      }

      else
      {
      }

      OUTLINED_FUNCTION_17_10();
      sub_25BAD5184(v49, v50, v51, v52, v53);
      v54 = v66;
      v56 = *(v62 + 16);
      v55 = *(v62 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_25BB00718(v55 > 1, v56 + 1, 1);
        v54 = v66;
        v48 = v43;
      }

      ++v47;
      *(v62 + 16) = v56 + 1;
      v57 = v62 + 56 * v56;
      *(v57 + 32) = v63;
      *(v57 + 40) = v65;
      *(v57 + 48) = v54;
      *(v57 + 64) = v67;
      *(v57 + 72) = v68;
      *(v57 + 80) = v69;
    }

    while (v46 != v47);
    v1 = v60;
LABEL_29:
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    *(v1 + 120) = v45;

    v58 = *(v61 + 136);
    v59 = *(v61 + 144);
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BA9AC78(v61);
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    *(v1 + 128) = v58;
    *(v1 + 136) = v59;

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_25BC48234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAC4018();
  *a1 = result;
  return result;
}

void sub_25BC48260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v7 = v4[10];
  v6 = v4[11];
  v95 = v4;
  sub_25BCB617C();
  sub_25BCB617C();
  v102 = v6;
  sub_25BC4707C(v7, v6);
  OUTLINED_FUNCTION_37_21();
  sub_25BCB617C();
  v8 = OUTLINED_FUNCTION_26_29();
  v10 = sub_25BC4605C(v8, v9);
  v103 = v7;

  v11 = 0;
  v12 = *(v10 + 16);
  v110 = a4;
  v108 = a4 + 16;
  v106 = v10;
  for (i = (v10 + 64); ; i += 5)
  {
    if (v12 == v11)
    {

LABEL_42:

      ObjectType = swift_getObjectType();
      v68 = (*(a2 + 16))(ObjectType, a2);
      v70 = v69;
      v72 = v71;
      OUTLINED_FUNCTION_20_30((v95 + 10));
      v73 = sub_25BC47A5C(a1, a2, v68, v70, v72, 1);
      swift_endAccess();

      swift_unknownObjectRelease();
      v74 = swift_unknownObjectRetain();
      sub_25BAD4888(v74, a2);
      OUTLINED_FUNCTION_22_29();
      v76 = v75;
      OUTLINED_FUNCTION_20_30((v95 + 12));
      sub_25BAD4DE8();
      v77 = *(v95[12] + 16);
      sub_25BAD4E40();
      v78 = v95[12];
      *(v78 + 16) = v77 + 1;
      v79 = (v78 + 24 * v77);
      v79[4] = v73;
      v79[5] = v70;
      v79[6] = v76;
      v95[12] = v78;
      swift_endAccess();
      return;
    }

    if (v11 >= *(v106 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 = *(i - 2);
    v105 = *(i - 3);
    v15 = *i;
    v16 = swift_getObjectType();
    v17 = *(v15 + 16);
    v111 = v14;
    sub_25BCB617C();
    swift_unknownObjectRetain();
    v18 = v17(v16, v15);
    v20 = v19;
    v22 = v21;
    v23 = swift_getObjectType();
    v107 = *(a4 + 16);
    if (v18 != v107())
    {

      goto LABEL_12;
    }

    v104 = v23;
    if (v20 == v24 && v22 == v25)
    {
      break;
    }

    v27 = OUTLINED_FUNCTION_32_23();

    if (v27)
    {
      goto LABEL_15;
    }

LABEL_12:
    swift_unknownObjectRelease();

    ++v11;
  }

LABEL_15:

  v28 = v95[11];
  v29 = *(v28 + 16);
  sub_25BCB617C();
  if (!v29)
  {
LABEL_41:

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  sub_25BCB617C();
  v30 = sub_25BAD23EC();
  if ((v31 & 1) == 0)
  {

    goto LABEL_41;
  }

  v91 = *(*(v28 + 56) + 8 * v30);

  v32 = v95[10];
  sub_25BCB617C();
  sub_25BCB617C();
  v33 = OUTLINED_FUNCTION_24_1();
  v35 = sub_25BC4707C(v33, v34);
  sub_25BCB617C();
  v36 = sub_25BC4605C(v35, v32);

  swift_bridgeObjectRelease_n();
  v98 = *(v36 + 16);
  if (v98)
  {
    v37 = 0;
    v93 = a2 + 16;
    v32 = (v36 + 64);
    v38 = MEMORY[0x277D84F90];
    v97 = v36;
    while (1)
    {
      if (v37 >= *(v36 + 16))
      {
        goto LABEL_48;
      }

      v102 = *(v32 - 8);
      v39 = *(v32 - 2);
      v103 = *(v32 - 3);
      v40 = *(v32 - 1);
      v41 = *v32;
      v42 = swift_getObjectType();
      v43 = *(v41 + 16);
      v106 = v39;
      sub_25BCB617C();
      swift_unknownObjectRetain();
      v105 = v41;
      LODWORD(v41) = v43(v42, v41);
      v45 = v44;
      v47 = v46;
      if (v41 == (v107)(v104, v110))
      {
        if (v45 == v48 && v47 == v49)
        {

LABEL_29:
          v52 = swift_getObjectType();
          v53 = (*(a2 + 16))(v52);
          v55 = v54;
          v94 = v56;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45();
            sub_25BAFD950();
            v38 = v65;
          }

          v58 = *(v38 + 16);
          v57 = *(v38 + 24);
          if (v58 >= v57 >> 1)
          {
            OUTLINED_FUNCTION_81(v57);
            OUTLINED_FUNCTION_13_39();
            sub_25BAFD950();
            v38 = v66;
          }

          *(v38 + 16) = v58 + 1;
          v59 = v38 + 40 * v58;
          *(v59 + 32) = v53;
          *(v59 + 40) = v55;
          *(v59 + 48) = v94;
          *(v59 + 56) = a1;
          *(v59 + 64) = a2;
          goto LABEL_34;
        }

        v51 = OUTLINED_FUNCTION_32_23();

        if (v51)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

LABEL_34:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_45();
        sub_25BAFD950();
        v38 = v63;
      }

      v61 = *(v38 + 16);
      v60 = *(v38 + 24);
      if (v61 >= v60 >> 1)
      {
        OUTLINED_FUNCTION_81(v60);
        sub_25BAFD950();
        v38 = v64;
      }

      *(v38 + 16) = v61 + 1;
      v62 = v38 + 40 * v61;
      *(v62 + 32) = v102;
      ++v37;
      *(v62 + 40) = v103;
      *(v62 + 48) = v106;
      *(v62 + 56) = v40;
      *(v62 + 64) = v105;
      v32 += 5;
      v36 = v97;
      if (v98 == v37)
      {
        goto LABEL_44;
      }
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_44:

  sub_25BAF9D40(v38, v80, v81, v82, v83, v84, v85, v86, v91, v93, v94, v95, v97, v98, a1, a2, v102, v103, v104, v105, v106, v107, v108, a3, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  OUTLINED_FUNCTION_37_21();

  v96[10] = sub_25BC4732C(v32);
  v96[11] = v87;

  v88 = swift_unknownObjectRetain();
  sub_25BAD4888(v88, v101);
  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_20_30((v96 + 12));
  if (*(v96[12] + 16) < v92)
  {
    goto LABEL_49;
  }

  if ((v92 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_14_36();
    sub_25BC02968(v89, v90);
    swift_endAccess();
    swift_unknownObjectRelease();

    return;
  }

LABEL_50:
  __break(1u);
}

void sub_25BC48950()
{
  v1 = sub_25BAB3058();
  v3 = v2;
  swift_beginAccess();
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  sub_25BCB617C();
  sub_25BCB617C();
  v6 = sub_25BC4707C(v5, v4);
  sub_25BCB617C();
  v7 = sub_25BC4605C(v6, v5);

  v8 = 0;
  v38 = *(v7 + 16);
  v39 = v7;
  v37 = v7 + 32;
  v46 = v3;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_2:
    if (v8 >= v38)
    {

      swift_unknownObjectRelease();
      return;
    }

    if (v8 >= *(v39 + 16))
    {
      break;
    }

    v9 = v37 + 40 * v8;
    v42 = *v9;
    v10 = *(v9 + 16);
    v41 = *(v9 + 8);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v45 = v8 + 1;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 32);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    v44 = v11;
    v40 = v12;
    v15 = v14(ObjectType, v12);
    v16 = sub_25BA9BEA0(v15);
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {
        swift_unknownObjectRelease();

        v8 = v45;
        goto LABEL_2;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v18 = sub_25BAC4018();
      if (v18 == sub_25BAC4018())
      {
        break;
      }

      if (!v1)
      {
        goto LABEL_25;
      }

      swift_unknownObjectRetain();
      if (sub_25BAB3058())
      {
        v20 = v19;
        v21 = swift_getObjectType();
        v22 = (*(v20 + 16))(v21, v20);
        v24 = v23;
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
        v26 = 0;
      }

      v27 = swift_getObjectType();
      v28 = (*(v46 + 16))(v27);
      if (!v26)
      {

        swift_unknownObjectRelease();
LABEL_25:

        continue;
      }

      if (v22 != v28)
      {
        swift_unknownObjectRelease();

        goto LABEL_25;
      }

      if (v24 == v29 && v26 == v30)
      {
        swift_unknownObjectRelease();

        break;
      }

      v32 = sub_25BCB789C();
      swift_unknownObjectRelease();

      if (v32)
      {
        goto LABEL_31;
      }
    }

LABEL_31:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFD7B8();
      v43 = v35;
    }

    v33 = *(v43 + 16);
    if (v33 >= *(v43 + 24) >> 1)
    {
      sub_25BAFD7B8();
      v43 = v36;
    }

    *(v43 + 16) = v33 + 1;
    v34 = v43 + 40 * v33;
    *(v34 + 32) = v44;
    *(v34 + 40) = v40;
    *(v34 + 48) = v42;
    v8 = v45;
    *(v34 + 56) = v41;
    *(v34 + 64) = v10;
  }

LABEL_39:
  __break(1u);
}

void sub_25BC48D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  sub_25BC495B8(a1, a2);
  v9 = v8;
  v111 = *(v8 + 16);
  if (!v111)
  {
    OUTLINED_FUNCTION_10_16();

    return;
  }

  v110 = v8 + 32;
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v10 = 0;
  v107 = v9;
  v108 = a3;
  v103 = v6;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:

      v13 = v115;
LABEL_39:
      OUTLINED_FUNCTION_21_31();
      sub_25BCB70FC();

      *&v125[0] = 0xD00000000000002ELL;
      *(&v125[0] + 1) = 0x800000025BCE47A0;
      MEMORY[0x25F876C90](v5, v13);
      OUTLINED_FUNCTION_50_15();
      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_3_53();
      v100 = 586;
      goto LABEL_44;
    }

    v11 = v110 + 48 * v10;
    if (*(v11 + 40))
    {
      break;
    }

LABEL_26:
    if (++v10 == v111)
    {
      goto LABEL_30;
    }
  }

  v5 = *(v11 + 8);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = *(v11 + 32);
  v113 = v14;
  v114 = v10;
  v115 = v13;
  v112 = v12;
  if (*(v11 + 40) == 1)
  {
    v15 = v6[11];
    if (*(v15 + 16))
    {
      v16 = OUTLINED_FUNCTION_7_49();
      sub_25BC4E03C(v16, v17, v13, v12, v14, 1);
      sub_25BCB617C();
      sub_25BCB617C();
      v18 = sub_25BAD23EC();
      v19 = v12;
      if (v20)
      {
        v106 = *(*(v15 + 56) + 8 * v18);

        v21 = v6[10];
        v22 = v6[11];
        sub_25BCB617C();
        swift_unknownObjectRetain();
        sub_25BCB617C();
        sub_25BCB617C();
        v23 = sub_25BC46280(v21, v22, v13, v19, v14, a3, a4);

        v6[10] = sub_25BC4732C(v23);
        v6[11] = v24;

        v25 = swift_unknownObjectRetain();
        v26 = sub_25BAD4888(v25, a4);
        v28 = v27;
        v30 = v29;
        OUTLINED_FUNCTION_20_30((v6 + 12));
        v31 = v6[12];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[12] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF140C();
          v31 = v90;
          v6[12] = v90;
        }

        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v106 >= *(v31 + 16))
        {
          goto LABEL_36;
        }

        v33 = (v31 + 24 * v106);
        v33[4] = v26;
        v33[5] = v28;
        v33[6] = v30;
        v6[12] = v31;
        swift_endAccess();

        v34 = OUTLINED_FUNCTION_7_49();
        sub_25BC49B1C(v34, v35);
        v37 = *(v36 + 16);
        if (v37)
        {
          v106 = v36;
          v38 = v36 + 64;
          do
          {
            v39 = *(v38 - 24);
            v38 += 40;
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            sub_25BCB617C();
            v41 = OUTLINED_FUNCTION_7_49();
            sub_25BC607AC(v41, v42, v108, a4, ObjectType, v39);

            swift_unknownObjectRelease();
            --v37;
          }

          while (v37);

          v43 = OUTLINED_FUNCTION_7_49();
          sub_25BC4E0A8(v43, v44, v115, v112, v113, 1);
          v6 = v103;
          a3 = v108;
          goto LABEL_25;
        }

        v88 = OUTLINED_FUNCTION_7_49();
        sub_25BC4E0A8(v88, v89, v115, v112, v113, 1);
LABEL_24:
        a3 = v108;
LABEL_25:
        v9 = v107;
        v10 = v114;
        goto LABEL_26;
      }

      v101 = v14;
    }

    else
    {
      v19 = *(v11 + 24);
      swift_unknownObjectRetain();
      v101 = v14;
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_21_31();
    sub_25BCB70FC();
    v125[0] = v117;
    MEMORY[0x25F876C90](0xD000000000000031, 0x800000025BCE4810);
    MEMORY[0x25F876C90](v19, v101);
    OUTLINED_FUNCTION_50_15();
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_3_53();
    v100 = 569;
LABEL_44:
    sub_25BA97890(v93, v94, v95, v96, v97, v98, v100, v99, v102, v103, v104, v105, v106, v107, v108, a4, v110, v111, v112, v113, v114, 0, v115, v116);
  }

  v45 = v6[14];
  v46 = *(v45 + 16);
  v47 = OUTLINED_FUNCTION_7_49();
  sub_25BC4E03C(v47, v48, v13, v12, v49, 2);

  if (!v46)
  {
    goto LABEL_39;
  }

  sub_25BCB617C();
  sub_25BCB617C();
  v50 = sub_25BA9266C(v5, v13);
  if ((v51 & 1) == 0)
  {
    goto LABEL_38;
  }

  v52 = *(*(v45 + 56) + 8 * v50);

  v53 = sub_25BAD5384();
  if (v54)
  {
    OUTLINED_FUNCTION_21_31();
    sub_25BCB70FC();
    v125[0] = v117;
    MEMORY[0x25F876C90](0xD000000000000035, 0x800000025BCE47D0);
    MEMORY[0x25F876C90](v5, v13);
    OUTLINED_FUNCTION_50_15();
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_3_53();
    v100 = 591;
    goto LABEL_44;
  }

  v55 = v53;
  type metadata accessor for ContextManager();
  memset(v125, 0, sizeof(v125));
  v126 = 0;
  sub_25BAA49B8();
  sub_25BAA4A5C(&v117);

  v56 = v124;

  sub_25BAA4AF4(&v117);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v117);

  v57 = v123;

  sub_25BAA4AF4(&v117);
  type metadata accessor for TensorRepresentation();
  v58 = swift_allocObject();
  v59 = swift_getObjectType();
  v60 = swift_unknownObjectRetain();
  LOBYTE(v117) = 1;
  sub_25BC5FB58(v60, v55, v125, 0x100000000, v56, v57, v58, v59, a4);
  v62 = v61;
  v63 = v6[13];
  v64 = v6[14];
  sub_25BCB617C();

  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC4666C(v63, v64, v5, v115, v62);
  v66 = v65;

  v6[13] = sub_25BC475A4(v66);
  v6[14] = v67;

  OUTLINED_FUNCTION_17_10();
  sub_25BAD5184(v68, v69, v70, v71, v72);
  v73 = v117;
  v74 = v118;
  v75 = v119;
  v105 = v121;
  v106 = v120;
  HIDWORD(v104) = v122;
  OUTLINED_FUNCTION_20_30((v6 + 15));
  v76 = v6[15];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v6[15] = v76;
  if (v77)
  {
    if ((v52 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  sub_25BBF13F4();
  v76 = v91;
  v6[15] = v91;
  if ((v52 & 0x8000000000000000) == 0)
  {
LABEL_21:
    if (v52 >= *(v76 + 16))
    {
      goto LABEL_37;
    }

    v78 = v76 + 56 * v52;
    *(v78 + 32) = v73;
    *(v78 + 48) = v74;
    *(v78 + 56) = v75;
    *(v78 + 64) = v106;
    *(v78 + 72) = v105;
    *(v78 + 80) = BYTE4(v104);
    v6[15] = v76;
    swift_endAccess();

    v79 = v6[16];
    v80 = v6[17];
    sub_25BCB617C();

    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BC46974(v79, v80, v5, v115, v62);
    v82 = v81;

    v83 = sub_25BC47804(v82);
    v85 = v84;

    v86 = OUTLINED_FUNCTION_7_49();
    sub_25BC4E0A8(v86, v87, v115, v112, v113, 2);
    v6[16] = v83;
    v6[17] = v85;

    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC495B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v61 = v2;
  v5 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_25BCB617C();
  sub_25BCB617C();
  v6 = sub_25BC4707C(v5, v4);
  sub_25BCB617C();
  v7 = sub_25BC4605C(v6, v5);

  v8 = 0;
  v66 = *(v7 + 16);
  v68 = v7;
  v9 = v7 + 64;
  v62 = MEMORY[0x277D84F90];
  v59 = v7 + 64;
LABEL_2:
  for (i = (v9 + 40 * v8); ; i += 5)
  {
    if (v8 >= v66)
    {

      swift_beginAccess();
      v31 = *(v61 + 104);
      v30 = *(v61 + 112);
      sub_25BCB617C();
      sub_25BCB617C();
      v32 = sub_25BC471F4(v31, v30);
      sub_25BCB617C();
      sub_25BC45D94(v32, v31);
      v34 = v33;

      v35 = 0;
      v67 = *(v34 + 16);
      v69 = v34;
      v36 = v34 + 48;
      v65 = MEMORY[0x277D84F90];
      v60 = v34 + 48;
LABEL_21:
      for (j = (v36 + 24 * v35); ; j += 3)
      {
        if (v35 >= v67)
        {

          sub_25BC033C0(v65);
          return;
        }

        if (v35 >= *(v69 + 16))
        {
          goto LABEL_46;
        }

        v38 = *(j - 2);
        v39 = *(j - 1);
        v40 = *j;
        sub_25BCB617C();

        if (sub_25BAB3058())
        {
          v42 = v41;
          ObjectType = swift_getObjectType();
          v44 = (*(v42 + 16))(ObjectType, v42);
          v46 = v45;
          v48 = v47;
          swift_unknownObjectRelease();
        }

        else
        {
          v44 = 0;
          v46 = 0;
          v48 = 0;
        }

        v49 = swift_getObjectType();
        v50 = (*(a2 + 16))(v49, a2);
        if (!v48)
        {
          goto LABEL_36;
        }

        if (v44 != v50)
        {
          break;
        }

        if (v46 == v51 && v48 == v52)
        {

LABEL_39:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAFDA10();
            v65 = v57;
          }

          v55 = *(v65 + 16);
          if (v55 >= *(v65 + 24) >> 1)
          {
            sub_25BAFDA10();
            v65 = v58;
          }

          ++v35;
          *(v65 + 16) = v55 + 1;
          v56 = v65 + 48 * v55;
          *(v56 + 32) = v40;
          *(v56 + 40) = v38;
          *(v56 + 56) = 0;
          *(v56 + 64) = 0;
          *(v56 + 48) = v39;
          *(v56 + 72) = 2;
          v36 = v60;
          goto LABEL_21;
        }

        v54 = sub_25BCB789C();

        if (v54)
        {
          goto LABEL_39;
        }

LABEL_37:

        ++v35;
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v8 >= *(v68 + 16))
    {
      break;
    }

    v64 = *(i - 8);
    v11 = *(i - 2);
    v63 = *(i - 3);
    v12 = *(i - 1);
    v13 = *i;
    v14 = swift_getObjectType();
    v15 = *(v13 + 16);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    LODWORD(v15) = v15(v14, v13);
    v17 = v16;
    v19 = v18;
    v20 = swift_getObjectType();
    if (v15 != (*(a2 + 16))(v20, a2))
    {

      goto LABEL_13;
    }

    if (v17 == v21 && v19 == v22)
    {

LABEL_15:
      v25 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFDA10();
        v25 = v28;
      }

      v26 = *(v25 + 16);
      if (v26 >= *(v25 + 24) >> 1)
      {
        sub_25BAFDA10();
        v25 = v29;
      }

      ++v8;
      *(v25 + 16) = v26 + 1;
      v62 = v25;
      v27 = v25 + 48 * v26;
      *(v27 + 32) = v12;
      *(v27 + 40) = v13;
      *(v27 + 48) = v64;
      *(v27 + 56) = v63;
      *(v27 + 64) = v11;
      *(v27 + 72) = 1;
      v9 = v59;
      goto LABEL_2;
    }

    v24 = sub_25BCB789C();

    if (v24)
    {
      goto LABEL_15;
    }

LABEL_13:
    swift_unknownObjectRelease();

    ++v8;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_25BC49B1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_25BCB617C();
  sub_25BCB617C();
  v6 = sub_25BC4707C(v5, v4);
  sub_25BCB617C();
  v7 = sub_25BC4605C(v6, v5);

  v8 = 0;
  v37 = *(v7 + 16);
  v38 = v7;
  v36 = v7 + 32;
  v45 = a2;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_2:
    if (v8 >= v37)
    {

      return;
    }

    if (v8 >= *(v38 + 16))
    {
      break;
    }

    v9 = v36 + 40 * v8;
    v42 = *v9;
    v10 = *(v9 + 16);
    v41 = *(v9 + 8);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v44 = v8 + 1;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 32);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    v43 = v11;
    v40 = v12;
    v15 = v14(ObjectType, v12);
    v16 = sub_25BA9BEA0(v15);
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {
        swift_unknownObjectRelease();

        v8 = v44;
        goto LABEL_2;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (sub_25BAB3058())
      {
        v19 = v18;
        v20 = swift_getObjectType();
        v21 = (*(v19 + 16))(v20, v19);
        v23 = v22;
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
        v25 = 0;
      }

      v26 = swift_getObjectType();
      v27 = (*(v45 + 16))(v26);
      if (!v25)
      {
        goto LABEL_22;
      }

      if (v21 != v27)
      {

LABEL_22:

        continue;
      }

      if (v23 == v28 && v25 == v29)
      {
        break;
      }

      v31 = sub_25BCB789C();

      if (v31)
      {

        goto LABEL_27;
      }
    }

LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFD7B8();
      v39 = v34;
    }

    v32 = *(v39 + 16);
    if (v32 >= *(v39 + 24) >> 1)
    {
      sub_25BAFD7B8();
      v39 = v35;
    }

    *(v39 + 16) = v32 + 1;
    v33 = v39 + 40 * v32;
    *(v33 + 32) = v43;
    *(v33 + 40) = v40;
    *(v33 + 48) = v42;
    v8 = v44;
    *(v33 + 56) = v41;
    *(v33 + 64) = v10;
  }

LABEL_35:
  __break(1u);
}

void sub_25BC49EE4(uint64_t a1)
{
  if (sub_25BAC4018() == a1)
  {
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 216);
    v4 = sub_25BA9BEA0(v3);
    sub_25BCB617C();
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {
LABEL_9:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }
      }

      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_25BC49EE4(a1);
      v7 = v6;

      ++v5;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_25BC4A000(char a1)
{
  if (a1)
  {
    return 0x646563617274;
  }

  else
  {
    return 0x676E6963617274;
  }
}

uint64_t sub_25BC4A034(char a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC4A070@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BC4A034(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC4A09C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC4A050(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LazyTensorFunctionBuilder.TraceContext.TracingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC4A1AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25BC4A1EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC4A25C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BC4A29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC4A304(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 236))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BC4A344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 236) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 236) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25BC4A3D4()
{
  result = qword_27FBB69B0;
  if (!qword_27FBB69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69B0);
  }

  return result;
}

uint64_t sub_25BC4A428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_25BAB5C48(*a1, *a2) & (v2 == v3);
}

uint64_t sub_25BC4A470()
{
  v1 = *(v0 + 8);
  sub_25BAD4C78();
  return MEMORY[0x25F878200](v1);
}

uint64_t sub_25BC4A4A8()
{
  v1 = *(v0 + 8);
  sub_25BCB79CC();
  sub_25BAD4C78();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A50C()
{
  result = qword_28154EB18;
  if (!qword_28154EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154EB18);
  }

  return result;
}

uint64_t sub_25BC4A568(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BC4A470();
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A5C0()
{
  result = qword_27FBB69B8;
  if (!qword_27FBB69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69B8);
  }

  return result;
}

uint64_t sub_25BC4A614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && (*(a2 + 16) == *(a5 + 16) ? (v6 = a3 == a6) : (v6 = 0), v6))
  {
    return sub_25BAD916C(a2, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC4A644(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  sub_25BAD6C2C(v5, a1, a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC4A6BC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BCB79CC();
  sub_25BAD6C2C(v5, v2, v3);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A734()
{
  result = qword_27FBB69C0;
  if (!qword_27FBB69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69C0);
  }

  return result;
}

uint64_t sub_25BC4A788(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  sub_25BAD6C2C(a1, *v1, *(v1 + 8));
  MEMORY[0x25F878200](v2);
  MEMORY[0x25F878200](v3);
  sub_25BAD4C78();
  return MEMORY[0x25F878200](v4);
}

void sub_25BC4A7F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && (v2 = *(a2 + 32), v3 = *(a2 + 24), v4 = *(a1 + 32), v5 = *(a1 + 24), (sub_25BAB5C48(*(a1 + 40), *(a2 + 40)) & 1) != 0) && (v4 == v2 ? (v6 = v5 == v3) : (v6 = 0), v6))
  {
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_10_16();

    sub_25BC4A614(v7, v8, v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BC4A8A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  sub_25BCB79CC();
  sub_25BAD6C2C(v7, v1, v2);
  MEMORY[0x25F878200](v3);
  MEMORY[0x25F878200](v4);
  sub_25BAD4C78();
  MEMORY[0x25F878200](v5);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC4A954(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7[9] = *v1;
  v7[10] = v2;
  v8 = *(v1 + 16);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_25BCB79CC();
  sub_25BC4A788(v7);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A9BC()
{
  result = qword_28154EB20;
  if (!qword_28154EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154EB20);
  }

  return result;
}

unint64_t sub_25BC4AA14()
{
  result = qword_27FBB69C8;
  if (!qword_27FBB69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69C8);
  }

  return result;
}

void sub_25BC4AA74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_80();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_33_25(v4, v5);
    }

    OUTLINED_FUNCTION_6_51();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_30_25();
LABEL_15:
        *(v0[6] + v13) = *(*(v1 + 48) + v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_29_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4AB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6960, &unk_25BCCE490);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_33_25(v5, v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_23_30();
    while (v3)
    {
      OUTLINED_FUNCTION_12_40();
LABEL_15:
      OUTLINED_FUNCTION_19_28(v11);
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v1 + 8 * v10))
      {
        OUTLINED_FUNCTION_11_43();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4ABEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6980, &qword_25BCCE4B0);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_80();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_33_25(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_1_65();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v19 = 56 * (v15 | (v9 << 6));
        v20 = *(v1 + 48) + v19;
        v21 = *(v20 + 8);
        v22 = *(v20 + 32);
        v23 = *(v20 + 40);
        v24 = *(v20 + 48);
        v25 = v0[6] + v19;
        v26 = *(v20 + 16);
        *v25 = *v20;
        *(v25 + 8) = v21;
        *(v25 + 16) = v26;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v24;

        sub_25BCB617C();
      }

      while (v12);
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
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_11_43();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4AD30(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_80();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_33_25(v6, v7);
    }

    OUTLINED_FUNCTION_6_51();
    if (v13)
    {
      do
      {
        OUTLINED_FUNCTION_30_25();
LABEL_15:
        *(v2[6] + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + 8 * v17))
      {
        OUTLINED_FUNCTION_29_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_25BC4ADD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6978, &qword_25BCCE4A8);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_80();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_33_25(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_23_30();
    while (v4)
    {
      OUTLINED_FUNCTION_12_40();
LABEL_15:
      v16 = 3 * (v12 | (v11 << 6));
      v17 = *(v1 + 48) + 8 * v16;
      v19 = *(v17 + 8);
      v18 = *(v17 + 16);
      v20 = v0[6] + 8 * v16;
      *v20 = *v17;
      *(v20 + 8) = v19;
      *(v20 + 16) = v18;
      sub_25BCB617C();
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + 8 * v11))
      {
        OUTLINED_FUNCTION_11_43();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4AEC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6968, &unk_25BCCEBF0);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_33_25(v5, v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_23_30();
    while (v3)
    {
      OUTLINED_FUNCTION_12_40();
LABEL_15:
      OUTLINED_FUNCTION_19_28(v11);
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v1 + 8 * v10))
      {
        OUTLINED_FUNCTION_11_43();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

uint64_t sub_25BC4AF84(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BC19514();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25BC4B214(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25BC4AFF0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_25BC4B074(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void, void, void, uint64_t, __n128))
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BC19544();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_25BCB617C();
  sub_25BC4B41C(v10, a2, a3);
  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25BC4B120(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
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
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BC4B7DC(v7, v8, a1, v4);
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
    return sub_25BC4B56C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BC4B214(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE8, &qword_25BCBBD50);
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BC4BC88(v7, v8, a1, v4);
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
    return sub_25BC4B5D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BC4B318(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E20, &unk_25BCCEC00);
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BC4C174(v7, v8, a1, v4);
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
    return sub_25BC4B650(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BC4B41C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void, void, void, uint64_t, __n128))
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_25BCB77EC();
  if (result >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        sub_25BCB617C();
        sub_25BC4B6C8(0, v6, 1, a1, a2, a3);
      }

      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
        v10 = sub_25BCB67DC();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      sub_25BCB617C();
      sub_25BC4C674(v11, v12, a1, v8, a2, a3, a3);
      *(v10 + 16) = 0;

      return swift_bridgeObjectRelease_n();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC4B56C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = a3 + *a4 - 1;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if ((*v9 & 1) != 0 || (v7 & 1) == 0)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v9[1] = *v9;
        v7 = 1;
        *v9-- = 1;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25BC4B5D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) < v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25BC4B650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 8) < v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *(v9 - 16);
        *v9 = *(v9 - 32);
        *(v9 + 16) = v13;
        *(v9 - 24) = v11;
        *(v9 - 16) = v12;
        *(v9 - 8) = v7;
        *(v9 - 32) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25BC4B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, void, void, uint64_t, __n128))
{
  v7 = v6;
  if (a3 == a2)
  {
  }

  v10 = a3;
  v12 = *a4;
  sub_25BCB617C();
  v13 = (v12 + 24 * v10);
  v14 = a1 - v10;
LABEL_3:
  v15 = (v12 + 24 * v10);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  while (1)
  {
    v19 = (a6)(v16, v17, v18, *(v13 - 3), *(v13 - 2), *(v13 - 1), a5);
    if (v7)
    {
      goto LABEL_10;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      break;
    }

    v20 = *v13;
    v21 = v13[1];
    v22 = v13[2];
    *v13 = *(v13 - 3);
    v16 = OUTLINED_FUNCTION_38_21(v20, v21, v22, *(v13 - 1));
    if (v23)
    {
LABEL_9:
      ++v10;
      v13 += 3;
      --v14;
      if (v10 != a2)
      {
        goto LABEL_3;
      }

LABEL_10:
    }
  }

  __break(1u);
  return result;
}

void sub_25BC4B7DC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *a3;
        v10 = *(*a3 + v8);
        v11 = (*(*a3 + v6) ^ 1) & v10;
        v12 = v6 + 2;
        while (1)
        {
          v13 = v12;
          if (v12 >= v5)
          {
            break;
          }

          v14 = *(v9 + v12++) & ~v10 & 1;
          v10 = *(v9 + v13);
          if ((v11 & 1) != v14)
          {
            v8 = v13;
            if ((v11 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_10;
          }
        }

        v8 = v5;
        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_10:
        if (v8 < v6)
        {
          goto LABEL_109;
        }

        if (v6 < v8)
        {
          if (v5 >= v13)
          {
            v5 = v13;
          }

          v15 = v5 - 1;
          v16 = v6;
          do
          {
            if (v16 != v15)
            {
              v17 = *a3;
              if (!*a3)
              {
                goto LABEL_114;
              }

              v18 = *(v17 + v16);
              *(v17 + v16) = *(v17 + v15);
              *(v17 + v15) = v18;
            }

            v19 = ++v16 < v15--;
          }

          while (v19);
          v5 = a3[1];
        }
      }

LABEL_20:
      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_108;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_110;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + v8 - 1;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                if ((*v25 & 1) != 0 || (v23 & 1) == 0)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_112;
                }

                v25[1] = *v25;
                v23 = 1;
                *v25-- = 1;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_107;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD620(0, v7[2] + 1, 1, v7);
        v7 = v70;
      }

      v28 = v7[2];
      v27 = v7[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_25BAFD620(v27 > 1, v28 + 1, 1, v7);
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *result;
      if (!*result)
      {
        goto LABEL_115;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_57:
            if (v38)
            {
              goto LABEL_97;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_100;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_103;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_105;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v29 < 2)
          {
            goto LABEL_99;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_72:
          if (v53)
          {
            goto LABEL_102;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_104;
          }

          if (v60 < v52)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_25BC4D1B4((*a3 + *v64), (*a3 + *v66), (*a3 + v67), v75);
          if (v4)
          {
            goto LABEL_90;
          }

          if (v67 < v65)
          {
            goto LABEL_92;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_93;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_94;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_86;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_95;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_96;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_98;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_101;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_106;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_116;
  }

  sub_25BC4CCB4(&v77, *result, a3);
LABEL_90:
}

void sub_25BC4BC88(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v92 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        OUTLINED_FUNCTION_42_19();
        v11 = *(v10 + 16);
        v13 = v12 + 24 * v7;
        v14 = 24 * v7;
        v15 = *(v13 + 16);
        v16 = (v13 + 64);
        v17 = v7 + 2;
        v18 = v11;
        while (1)
        {
          v19 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v20 = *v16;
          v16 += 3;
          v21 = (v15 >= v11) ^ (v18 < v20);
          ++v17;
          v18 = v20;
          if ((v21 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 >= v11)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v19)
            {
              v6 = v19;
            }

            v22 = 24 * v6 - 8;
            v23 = v9;
            v24 = v7;
            do
            {
              if (v24 != --v23)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v26 = (v25 + v14);
                v27 = (v25 + v22);
                v28 = *v26;
                v29 = *(v26 + 2);
                v30 = *v27;
                *v26 = *(v27 - 1);
                *(v26 + 2) = v30;
                *(v27 - 1) = v28;
                *v27 = v29;
              }

              ++v24;
              v22 -= 24;
              v14 += 24;
            }

            while (v24 < v23);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            OUTLINED_FUNCTION_42_19();
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 24 * v9 + 16);
              v36 = v34;
              v37 = v33;
              do
              {
                if (*(v37 - 1) < v35)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *v37;
                v39 = v37[1];
                *v37 = *(v37 - 3);
                v37[2] = *(v37 - 1);
                *(v37 - 2) = v39;
                *(v37 - 1) = v35;
                *(v37 - 3) = v38;
                v37 -= 3;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 3;
              --v34;
            }

            while (v9 != v31);
            v9 = v31;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v94 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = OUTLINED_FUNCTION_45();
        sub_25BAFD620(v84, v85, v86, v8);
        v8 = v87;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BAFD620(v88, v89, v90, v8);
        v8 = v91;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v94;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
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
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_25BC4D324((*a3 + 24 * *v77), (*a3 + 24 * *v79), *a3 + 24 * v80, v95);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v94;
      a4 = v92;
      if (v94 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_25BC4CDE0(&v97, *a1, a3);
LABEL_89:
}

void sub_25BC4C174(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 24);
        v11 = *a3 + 32 * v7;
        v12 = *(v11 + 24);
        v13 = (v11 + 88);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 4;
          v18 = (v12 >= v10) ^ (v15 < v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 >= v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 32 * v6 - 16;
            v20 = 32 * v7 + 24;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = (v23 + v19);
                v26 = *(v24 - 6);
                v27 = *(v24 - 1);
                v28 = *v24;
                v29 = *v25;
                *(v24 - 3) = *(v25 - 1);
                *(v24 - 1) = v29;
                *(v25 - 4) = v26;
                *(v25 - 8) = v27;
                *(v25 + 1) = v28;
              }

              ++v22;
              v19 -= 32;
              v20 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 24);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 8) < v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 8);
                v38 = *(v35 + 16);
                v39 = *(v35 - 16);
                *v35 = *(v35 - 32);
                *(v35 + 16) = v39;
                *(v35 - 24) = v37;
                *(v35 - 16) = v38;
                *(v35 - 8) = v33;
                *(v35 - 32) = v36;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD620(0, v8[2] + 1, 1, v8);
        v8 = v85;
      }

      v42 = v8[2];
      v41 = v8[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_25BAFD620(v41 > 1, v42 + 1, 1, v8);
        v8 = v86;
      }

      v8[2] = v43;
      v44 = v8 + 4;
      v45 = &v8[2 * v42 + 4];
      *v45 = v7;
      v45[1] = v9;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = &v44[2 * v43 - 2];
          v48 = &v8[2 * v43];
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = v8[4];
            v50 = v8[5];
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_56:
            if (v52)
            {
              goto LABEL_96;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_99;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_104;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v43 < 2)
          {
            goto LABEL_98;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_71:
          if (v67)
          {
            goto LABEL_101;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_103;
          }

          if (v74 < v66)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v46 - 1 >= v43)
          {
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
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v78 = &v44[2 * v46 - 2];
          v79 = *v78;
          v80 = &v44[2 * v46];
          v81 = v80[1];
          sub_25BC4D4C8((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = v8[2];
          if (v46 > v83)
          {
            goto LABEL_92;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_93;
          }

          v43 = v83 - 1;
          memmove(&v44[2 * v46], v80 + 2, 16 * (v83 - 1 - v46));
          v82[2] = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = &v44[2 * v43];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_95;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_97;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_100;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_105;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_25BC4CF18(&v92, *result, a3);
LABEL_89:
}

uint64_t sub_25BC4C674(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void, void, uint64_t))
{
  v8 = v7;
  swift_bridgeObjectRetain_n();
  v117 = MEMORY[0x277D84F90];
  v113 = a3;
  v12 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v106 = a4;
    while (1)
    {
      v15 = v13++;
      if (v13 >= v12)
      {
        goto LABEL_23;
      }

      v16 = *v113;
      OUTLINED_FUNCTION_22_31();
      v18 = v17();
      v8 = v7;
      if (v7)
      {
        goto LABEL_95;
      }

      v19 = v18;
      v20 = v13;
      v21 = v16 + 24 * v15;
      v22 = 24 * v15;
      v23 = v15;
      v24 = v21 + 32;
      v108 = v23;
      v25 = v23 + 2;
      do
      {
        v26 = v25;
        if (v20 + 1 >= v12)
        {
          v20 = v12;
          if ((v19 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_9:
          v15 = v108;
          if (v20 >= v108)
          {
            v29 = v108 < v20;
            v30 = v20;
            a4 = v106;
            if (v29)
            {
              if (v12 >= v26)
              {
                v31 = v26;
              }

              else
              {
                v31 = v12;
              }

              v32 = 24 * v31;
              v13 = v30;
              v33 = v108;
              do
              {
                if (v33 != --v30)
                {
                  v34 = *v113;
                  if (!*v113)
                  {
                    goto LABEL_119;
                  }

                  v35 = v34 + v22;
                  v36 = v34 + v32;
                  v37 = *v35;
                  v38 = *(v35 + 8);
                  v39 = *(v36 - 24);
                  *(v35 + 16) = *(v36 - 8);
                  *v35 = v39;
                  *(v36 - 24) = v37;
                  *(v36 - 16) = v38;
                }

                ++v33;
                v32 -= 24;
                v22 += 24;
              }

              while (v33 < v30);
            }

            else
            {
              v13 = v30;
            }

            goto LABEL_23;
          }

          goto LABEL_116;
        }

        OUTLINED_FUNCTION_22_31();
        v28 = v27();
        v8 = 0;
        v24 += 24;
        ++v20;
        v25 = v26 + 1;
      }

      while (((v19 ^ v28) & 1) == 0);
      if (v19)
      {
        goto LABEL_9;
      }

LABEL_22:
      v13 = v20;
      a4 = v106;
      v15 = v108;
LABEL_23:
      v40 = v113[1];
      if (v13 < v40)
      {
        if (__OFSUB__(v13, v15))
        {
          goto LABEL_113;
        }

        if (v13 - v15 < a4)
        {
          if (__OFADD__(v15, a4))
          {
            goto LABEL_114;
          }

          if (v15 + a4 >= v40)
          {
            v41 = v113[1];
          }

          else
          {
            v41 = v15 + a4;
          }

          if (v41 >= v15)
          {
            if (v13 != v41)
            {
              v114 = v14;
              v42 = *v113;
              v43 = (*v113 + 24 * v13);
              v44 = v15 - v13;
              do
              {
                v110 = v13;
                do
                {
                  OUTLINED_FUNCTION_22_31();
                  v46 = v45();
                  v8 = v7;
                  if (v7)
                  {
                    goto LABEL_95;
                  }

                  if ((v46 & 1) == 0)
                  {
                    break;
                  }

                  if (!v42)
                  {
                    goto LABEL_118;
                  }

                  v47 = *v43;
                  v48 = v43[1];
                  v49 = v43[2];
                  *v43 = *(v43 - 3);
                  OUTLINED_FUNCTION_38_21(v47, v48, v49, *(v43 - 1));
                }

                while (!v50);
                ++v13;
                v43 += 3;
                --v44;
              }

              while (v110 + 1 != v41);
              v13 = v41;
              v14 = v114;
            }

            goto LABEL_41;
          }

LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_118:
          OUTLINED_FUNCTION_49_18();
          __break(1u);
LABEL_119:
          OUTLINED_FUNCTION_49_18();
          __break(1u);
LABEL_120:
          OUTLINED_FUNCTION_49_18();
          __break(1u);
          goto LABEL_121;
        }
      }

LABEL_41:
      if (v13 < v15)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = OUTLINED_FUNCTION_45();
        sub_25BAFD620(v96, v97, v98, v14);
        v14 = v99;
      }

      v51 = *(v14 + 16);
      v52 = v51 + 1;
      if (v51 >= *(v14 + 24) >> 1)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BAFD620(v100, v101, v102, v14);
        v14 = v103;
      }

      *(v14 + 16) = v52;
      v53 = v14 + 32;
      v54 = (v14 + 32 + 16 * v51);
      *v54 = v15;
      v54[1] = v13;
      v117 = v14;
      v109 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v51)
      {
        break;
      }

LABEL_92:
      v12 = v113[1];
      a4 = v106;
      if (v13 >= v12)
      {
        goto LABEL_93;
      }
    }

    v116 = a5;
    v111 = v13;
    while (1)
    {
      v55 = v52 - 1;
      v56 = (v53 + 16 * (v52 - 1));
      v57 = (v14 + 16 * v52);
      if (v52 >= 4)
      {
        break;
      }

      if (v52 == 3)
      {
        v58 = *(v14 + 32);
        v59 = *(v14 + 40);
        v68 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        v61 = v68;
LABEL_62:
        if (v61)
        {
          goto LABEL_102;
        }

        v73 = *v57;
        v72 = v57[1];
        v74 = __OFSUB__(v72, v73);
        v75 = v72 - v73;
        v76 = v74;
        if (v74)
        {
          goto LABEL_105;
        }

        v77 = v56[1];
        v78 = v77 - *v56;
        if (__OFSUB__(v77, *v56))
        {
          goto LABEL_108;
        }

        if (__OFADD__(v75, v78))
        {
          goto LABEL_110;
        }

        if (v75 + v78 >= v60)
        {
          if (v60 < v78)
          {
            v55 = v52 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_77;
      }

      if (v52 < 2)
      {
        goto LABEL_104;
      }

      v80 = *v57;
      v79 = v57[1];
      v68 = __OFSUB__(v79, v80);
      v75 = v79 - v80;
      v76 = v68;
LABEL_77:
      if (v76)
      {
        goto LABEL_107;
      }

      v82 = *v56;
      v81 = v56[1];
      v68 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v68)
      {
        goto LABEL_109;
      }

      if (v83 < v75)
      {
        goto LABEL_91;
      }

LABEL_84:
      if (v55 - 1 >= v52)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
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
        goto LABEL_115;
      }

      v87 = *v113;
      if (!*v113)
      {
        goto LABEL_117;
      }

      v7 = v8;
      v88 = (v53 + 16 * (v55 - 1));
      v89 = *v88;
      v90 = v55;
      v91 = (v53 + 16 * v55);
      v92 = v91[1];
      v115 = (v87 + 24 * *v88);
      v93 = (v87 + 24 * *v91);
      v94 = v87 + 24 * v92;
      sub_25BCB617C();
      sub_25BC4D64C(v115, v93, v94, v109, v116, a7);
      if (v7)
      {
        goto LABEL_95;
      }

      if (v92 < v89)
      {
        goto LABEL_97;
      }

      v95 = *(v14 + 16);
      if (v90 > v95)
      {
        goto LABEL_98;
      }

      *v88 = v89;
      v88[1] = v92;
      if (v90 >= v95)
      {
        goto LABEL_99;
      }

      v52 = v95 - 1;
      memmove(v91, v91 + 2, 16 * (v95 - 1 - v90));
      *(v14 + 16) = v95 - 1;
      a5 = v116;
      v8 = 0;
      v13 = v111;
      v53 = v14 + 32;
      if (v95 <= 2)
      {
LABEL_91:
        v117 = v14;
        goto LABEL_92;
      }
    }

    v62 = v53 + 16 * v52;
    v63 = *(v62 - 64);
    v64 = *(v62 - 56);
    v68 = __OFSUB__(v64, v63);
    v65 = v64 - v63;
    if (v68)
    {
      goto LABEL_100;
    }

    v67 = *(v62 - 48);
    v66 = *(v62 - 40);
    v68 = __OFSUB__(v66, v67);
    v60 = v66 - v67;
    v61 = v68;
    if (v68)
    {
      goto LABEL_101;
    }

    v69 = v57[1];
    v70 = v69 - *v57;
    if (__OFSUB__(v69, *v57))
    {
      goto LABEL_103;
    }

    v68 = __OFADD__(v60, v70);
    v71 = v60 + v70;
    if (v68)
    {
      goto LABEL_106;
    }

    if (v71 >= v65)
    {
      v85 = *v56;
      v84 = v56[1];
      v68 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v68)
      {
        goto LABEL_111;
      }

      if (v60 < v86)
      {
        v55 = v52 - 2;
      }

      goto LABEL_84;
    }

    goto LABEL_62;
  }

LABEL_93:
  v104 = *a1;
  if (!*a1)
  {
LABEL_121:
    result = OUTLINED_FUNCTION_49_18();
    __break(1u);
    return result;
  }

  sub_25BCB617C();
  sub_25BC4D044(&v117, v104, v113, a5, a7);
LABEL_95:

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25BC4CCB4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25BC4D1B4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25BC4CDE0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_25BC4D324((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_25BC4CF18(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25BC4D4C8((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25BC4D044(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, void, void, void, void, uint64_t))
{
  v6 = v5;
  v7 = *a1;
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v7 = sub_25BC4D96C(v7);
  }

  for (*a1 = v7; ; v7 = *a1)
  {
    v8 = *(v7 + 2);
    if (v8 < 2)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();
      return 1;
    }

    v9 = *a3;
    if (!*a3)
    {
      break;
    }

    v10 = v6;
    v11 = *&v7[16 * v8];
    v12 = *&v7[16 * v8 + 24];
    v13 = (v9 + 24 * v11);
    v14 = (v9 + 24 * *&v7[16 * v8 + 16]);
    v15 = v9 + 24 * v12;
    sub_25BCB617C();
    sub_25BC4D64C(v13, v14, v15, a2, a4, a5);
    v6 = v10;
    if (v10)
    {
      goto LABEL_11;
    }

    if (v12 < v11)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25BC4D96C(v7);
    }

    if (v8 - 2 >= *(v7 + 2))
    {
      goto LABEL_13;
    }

    v16 = &v7[16 * v8];
    *v16 = v11;
    *(v16 + 1) = v12;
    *a1 = v7;
    sub_25BC4D8E0(v8 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC4D1B4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_25BAE3AA0(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_44;
      }

      if ((*v4 & 1) != 0 || !*v6)
      {
        v11 = v7 >= v4;
        v12 = v4++;
        if (!v11 || v7 >= v4)
        {
LABEL_19:
          *v7 = *v12;
        }
      }

      else
      {
        v11 = v7 >= v6;
        v12 = v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_19;
        }
      }

      ++v7;
    }
  }

  sub_25BAE3AA0(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v15 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    if ((*v15 & 1) == 0 && *(v10 - 1))
    {
      v18 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v18)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
  }

LABEL_44:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_25BC4D324(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_25BAC9924();
    v10 = &a4[24 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(a4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = a4;
      v13 = v7 == a4;
      a4 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_25BAC9924();
  v10 = &a4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > a4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) >= *(v10 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  if (v6 != a4 || v6 >= &a4[24 * ((v10 - a4) / 24)])
  {
    OUTLINED_FUNCTION_43_15();
    memmove(v6, a4, v20);
  }

  return 1;
}

uint64_t sub_25BC4D4C8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_25BAE3A58(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 3) >= *(v6 + 3))
      {
        break;
      }

      v12 = v4;
      v13 = v7 == v4;
      v4 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_25BAE3A58(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v6 - 1) >= *(v10 - 1))
    {
      v17 = v6 - 32;
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}