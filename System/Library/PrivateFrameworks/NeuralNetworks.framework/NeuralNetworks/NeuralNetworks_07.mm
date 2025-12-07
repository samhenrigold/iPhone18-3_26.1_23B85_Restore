uint64_t sub_25BB1A7E0(uint64_t a1)
{
  result = sub_25BB1A980(&qword_27FBB3820, type metadata accessor for SelectOperation, &unk_25BCBE6F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB1A838()
{
  memcpy(__dst, (v0 + 16), 0xB8uLL);
  v1 = __dst[22];
  sub_25BB1A8C4(__dst, v3);
  return v1;
}

uint64_t sub_25BB1A8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40C0, &qword_25BCBCAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB1A980(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BB1AAB0()
{
  *(v0 + 24) = xmmword_25BCBCAC0;
  type metadata accessor for VariableIdentityGenerator();
  *(v0 + 16) = sub_25BC9B024();
  v1 = *(v0 + 32);
  *(v0 + 32) = 0xF000000000000007;
  sub_25BAB310C(v1);
  return v0;
}

uint64_t sub_25BB1AB04(uint64_t a1)
{
  *(v1 + 24) = xmmword_25BCBCAC0;
  type metadata accessor for VariableIdentityGenerator();
  *(v1 + 16) = sub_25BC9B024();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_25BAB310C(v3);
  return v1;
}

uint64_t sub_25BB1AB60(unint64_t a1)
{
  *(v1 + 24) = xmmword_25BCBCAC0;
  type metadata accessor for VariableIdentityGenerator();
  *(v1 + 16) = sub_25BC9B024();
  v3 = *(v1 + 32);
  v4 = 0xF000000000000007;
  if (a1)
  {
    v4 = a1;
  }

  *(v1 + 32) = v4;
  sub_25BAB310C(v3);
  return v1;
}

uint64_t sub_25BB1ABC8()
{
  v1 = *(v0 + 32);
  if ((v1 & 0x8000000000000000) == 0)
  {
    sub_25BAB69FC(v1);
    ParameterInitializer.callAsFunction(shape:)();
    v3[0] = v3[1] | 0x8000000000000000;
    sub_25BACED40(v3);
    return sub_25BAB310C(v1);
  }

  return result;
}

uint64_t sub_25BB1AC40()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB1AC94(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_25BB1ACE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1AC40();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1AD10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BB1AC94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BB1AD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1AC40();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1AD78(uint64_t a1)
{
  v2 = sub_25BB1B908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1ADB4(uint64_t a1)
{
  v2 = sub_25BB1B908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB1ADF0(void *a1)
{
  OUTLINED_FUNCTION_1_2();
  v2 = swift_allocObject();
  sub_25BB1AE3C(a1);
  return v2;
}

uint64_t *sub_25BB1AE3C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E8, &unk_25BCBCC60);
  OUTLINED_FUNCTION_2();
  v13 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  *(v1 + 24) = xmmword_25BCBCAC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB1B908();
  sub_25BCB7B2C();
  if (v2)
  {
    sub_25BAB310C(*(v1 + 32));
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v13;
    v16 = 0;
    *(v1 + 16) = sub_25BCB76DC();
    v15 = 1;
    sub_25BB1B9B0();
    sub_25BCB765C();
    (*(v9 + 8))(v8, v4);
    v11 = 0xF000000000000007;
    if (v14)
    {
      v11 = v14 | 0x8000000000000000;
    }

    v12 = *(v1 + 32);
    *(v1 + 32) = v11;
    sub_25BAB310C(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_25BB1B068(void *a1)
{
  v3 = v1;
  v24[0] = *v3;
  v5 = sub_25BCB71DC();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40D8, &qword_25BCBCC50);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  if ((v3[4] & 0x8000000000000000) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25BCB7B3C();
    sub_25BCB71AC();
    v17 = sub_25BCB71EC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
    *(v19 + 3) = v24[0];
    *v19 = v3;
    (*(v7 + 16))(&v19[v20], v10, v5);
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D841A8], v17);
    swift_willThrow();
    v21 = *(v7 + 8);

    return v21(v10, v5);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB1B908();
  sub_25BCB7B6C();
  v26 = 0;
  sub_25BCB77BC();
  if (v2)
  {
    return (*(v13 + 8))(v16, v11);
  }

  v23 = v3[4];
  if ((~v23 & 0xF000000000000007) != 0)
  {
    if (v23 < 0)
    {
      v24[1] = v23 & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 1;
      sub_25BAB69FC(v23);
      sub_25BB1B95C();
      sub_25BCB773C();

      return (*(v13 + 8))(v16, v11);
    }

    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
  }

  else
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ELL, 0x800000025BCDA100, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 329);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB1B46C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_25BB1B4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BB1B554@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB1ADF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_25BB1B5A4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 168;

      sub_25BAA51C8(v4, a1);
    }

    else
    {
      sub_25BAB69FC(v3);
      ParameterInitializer.computeDevice.getter(a1);

      sub_25BAB310C(v3);
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

uint64_t sub_25BB1B644(uint64_t result)
{
  v2 = *(v1 + 32);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v3 = result;
    if (v2 < 0)
    {
      v15 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      v5 = Tensor.scalarType.getter(result);
      v7 = v6;

      v8 = sub_25BBABD24(v5, v7);
      if (v8 != 2)
      {
        OUTLINED_FUNCTION_2_9(v8, v9, "placed(on:)", v10, v11, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v12, v13, 94);
      }

      v15 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v2);
      Tensor.place(on:)(v3);
      v14 = v2 & 0x7FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v4 = &v14;
    }

    else
    {
      sub_25BAB69FC(*(v1 + 32));
      v15 = ParameterInitializer.placed(on:)(v3);
      v4 = &v15;
    }

    sub_25BACED40(v4);
    return sub_25BAB310C(v2);
  }

  return result;
}

uint64_t sub_25BB1B740(uint64_t a1)
{
  v2 = *(v1 + 32);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (v2 < 0)
    {
      v6 = v1;
      v7 = Tensor.scalarType.getter(a1);
      v9 = v8;

      v10 = sub_25BBABD24(v7, v9);
      if (v10 != 2)
      {
        OUTLINED_FUNCTION_2_9(v10, v11, "placed(on:)", v12, v13, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v14, v15, 94);
      }

      v18 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v2);
      Tensor.place(on:)(a1);
      v16 = *(v6 + 16);
      OUTLINED_FUNCTION_1_2();
      v3 = swift_allocObject();
      sub_25BAB6D38(&v18, v16);
    }

    else
    {
      sub_25BAB69FC(*(v1 + 32));
      v5 = ParameterInitializer.placed(on:)(a1);
      OUTLINED_FUNCTION_1_2();
      v3 = swift_allocObject();
      sub_25BB1AB04(v5);
    }

    sub_25BAB310C(v2);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v3 = swift_allocObject();
    sub_25BB1AAB0();
  }

  return v3;
}

uint64_t sub_25BB1B8D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB1B740(a1);
  *a2 = result;
  return result;
}

unint64_t sub_25BB1B908()
{
  result = qword_28154DA20;
  if (!qword_28154DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154DA20);
  }

  return result;
}

unint64_t sub_25BB1B95C()
{
  result = qword_28154C1C0;
  if (!qword_28154C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1C0);
  }

  return result;
}

unint64_t sub_25BB1B9B0()
{
  result = qword_28154C1B8;
  if (!qword_28154C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1B8);
  }

  return result;
}

uint64_t sub_25BB1BA04(char *a1)
{
  v2 = v1;
  v4 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(v2 + 32);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v13 = *a1;
    if (v11 < 0)
    {
      __src[0] = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v22[0] = v13;
      (*(v6 + 104))(v10, *MEMORY[0x277D84660], v4, v8);
      sub_25BAB69FC(v11);
      Tensor.cast(to:roundingRule:)();
      (*(v6 + 8))(v10, v4);
      v19 = *(v2 + 16);
      OUTLINED_FUNCTION_1_2();
      v12 = swift_allocObject();
      LOBYTE(__src[0]) = 0;
      sub_25BAB6D38(&v21, v19);
    }

    else
    {
      v24 = *a1;
      v14 = sub_25BC8FACC();
      v15 = dynamic_cast_existential_1_unconditional(v14, v14, &protocol descriptor for TensorFloatingPointScalar);
      v17 = v16;
      swift_beginAccess();
      sub_25BB14570(v11 + 16, v22);
      sub_25BAB69FC(v11);
      sub_25BB184D8(v15, v17, __src);
      sub_25BB1879C(v22);
      type metadata accessor for ParameterInitializer();
      v18 = swift_allocObject();
      memcpy((v18 + 16), __src, 0x55uLL);
      OUTLINED_FUNCTION_1_2();
      v12 = swift_allocObject();
      sub_25BB1AB04(v18);
    }

    sub_25BAB310C(v11);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v12 = swift_allocObject();
    sub_25BB1AAB0();
  }

  return v12;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for LayerVariableReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB1BD80()
{
  result = qword_27FBB40F0;
  if (!qword_27FBB40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40F0);
  }

  return result;
}

unint64_t sub_25BB1BDD8()
{
  result = qword_28154DA10;
  if (!qword_28154DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154DA10);
  }

  return result;
}

unint64_t sub_25BB1BE30()
{
  result = qword_28154DA18;
  if (!qword_28154DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154DA18);
  }

  return result;
}

void Tensor.description.getter(uint64_t a1)
{
  v2 = *v1;
  if (*(*(*(*v1 + 16) + 152) + 16))
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v5)
      {
        __break(1u);
        return;
      }
    }

    while (v3 != 1);
    v6 = v4 > 1000;
  }

  else
  {
    v6 = 0;
  }

  v7 = Tensor.scalarType.getter(a1);

  sub_25BB1BF28(v7, v2, 80, 3, v6, v7, v8);
}

void sub_25BB1BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v11 + 16);
  v18 = *(v17 + 152);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_6:
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    *&v35 = v11;
    Tensor.scalar<A>(as:)(v10, a6, a7);
    sub_25BCB784C();
    (*(v9 + 8))(v16, a6);
    return;
  }

  v20 = (v18 + 32);
  v21 = 1;
  do
  {
    v22 = *v20++;
    v23 = v21 * v22;
    if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v21 = v23;
    --v19;
  }

  while (v19);
  if (v23 == 1)
  {
    goto LABEL_6;
  }

  v32 = v13;
  v33 = v12;
  v31 = v14;
  *&v38 = v11;
  v30 = Tensor.scalars<A>(as:)(v10, a6, a7);
  *&v35 = v30;
  v24 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F876E40](&v40, v24, WitnessTable);
  v37 = v40;
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a7;
  sub_25BCB711C();
  swift_getWitnessTable();
  sub_25BCB75FC();

  v34 = v38;
  v35 = v38;
  v36 = v39;
  sub_25BCB735C();
  swift_getWitnessTable();
  sub_25BCB669C();

  if (v41)
  {
    v27 = 3;
  }

  else
  {
    v27 = v40;
  }

  if (!v27)
  {
    goto LABEL_20;
  }

  if (v33 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_21;
  }

  if (v33 / v27 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v33 / v27;
  }

  *&v38 = *(v17 + 152);
  sub_25BCB617C();
  sub_25BB1C368(0, v32, v27, v29, v31 & 1, &v38, v30, a6, a7);
}

uint64_t sub_25BB1C28C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_25BCB63AC();
  v7 = sub_25BCB641C();

  *a3 = v7;
  return result;
}

void sub_25BB1C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x28223BE20](a1);
  v16 = *v15;
  sub_25BCB68CC();
  swift_getWitnessTable();
  if (sub_25BCB6B6C())
  {
    return;
  }

  if (sub_25BCB681C() == 1)
  {
    sub_25BCB690C();
    sub_25BCB63AC();
    return;
  }

  v17 = *(v16 + 16);
  if (v17 == 1)
  {
    sub_25BB1C824(a1, a2, a3, a4, a5 & 1, a7, a8, a9);
    return;
  }

  v32 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_18:
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  v18 = *(v16 + 32);
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_25BB1D14C(0, v18, &v32, v16, a7, a5 & 1, a2, a1, a3, a4, a8, a9);
  v19 = sub_25BCB651C();
  MEMORY[0x25F876C90](v19);

  if (__OFADD__(a1, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = sub_25BCB651C();
  v22 = v21;
  sub_25BCB617C();
  MEMORY[0x25F876C90](v20, v22);

  v23 = v32;
  v24 = *(v32 + 16);
  sub_25BCB617C();
  sub_25BCB617C();
  v25 = 0;
  v26 = (v23 + 40);
  while (v24 != v25)
  {
    v28 = *(v26 - 1);
    v27 = *v26;
    sub_25BCB617C();
    MEMORY[0x25F876C90](v28, v27);
    if (v25 == *(v23 + 16) - 1)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    else
    {
      sub_25BCB617C();
      v29 = 44;
      v30 = 0xE100000000000000;
    }

    MEMORY[0x25F876C90](v29, v30);

    v26 += 2;
    ++v25;
  }

  swift_bridgeObjectRelease_n();
  sub_25BCB617C();
  MEMORY[0x25F876C90](93, 0xE100000000000000);
}

void Tensor.playgroundDescription.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!*(*(*(*v2 + 16) + 152) + 16))
  {
    goto LABEL_6;
  }

  do
  {
    OUTLINED_FUNCTION_0();
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  while (v5 != 1);
  if (v6 != 1)
  {
    v15[0] = v4;
    Tensor.description.getter(a1);
    a2[3] = MEMORY[0x277D837D0];
    *a2 = v11;
    a2[1] = v12;
  }

  else
  {
LABEL_6:
    v17 = v4;
    v8 = Tensor.scalarType.getter(a1);
    v10 = sub_25BB1C7C4(v8, v9, v15);
    if (v16)
    {
      sub_25BB1D62C(v15, a2);
    }

    else
    {
      Tensor.description.getter(v10);
      a2[3] = MEMORY[0x277D837D0];
      *a2 = v13;
      a2[1] = v14;
      if (v16)
      {
        sub_25BB1D5C4(v15);
      }
    }
  }
}

uint64_t sub_25BB1C7C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  __swift_allocate_boxed_opaque_existential_0(a3);
  return Tensor.scalar<A>(as:)(a1, a1, a2);
}

void sub_25BB1C824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v60 = MEMORY[0x277D84F90];
  if ((a5 & 1) == 0)
  {
    goto LABEL_5;
  }

  a1 = sub_25BCB681C();
  if (a2 + 0x4000000000000000 >= 0)
  {
    if (a1 > 2 * a2)
    {
      sub_25BCB68CC();
      v55 = v13;
      sub_25BCB617C();
      swift_getWitnessTable();
      v15 = sub_25BCB6B5C();
      *&v52 = &v51;
      v51 = v58;
      v56 = v58;
      v57 = v59;
      MEMORY[0x28223BE20](v15);
      v48 = a7;
      v49 = a8;
      v50 = a3;
      MEMORY[0x28223BE20](v16);
      v44 = a7;
      v45 = a8;
      v46 = sub_25BB1D784;
      v47 = v17;
      v18 = sub_25BCB700C();
      v53 = v18;
      WitnessTable = swift_getWitnessTable();
      v20 = sub_25BAB2B20(sub_25BB1D76C, v43, v18, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);
      swift_unknownObjectRelease();
      sub_25BAB1D84(v20);
      sub_25BAB1D84(&unk_286D42160);
      *&v56 = a6;
      sub_25BCB617C();
      swift_getWitnessTable();
      v13 = v55;
      v21 = sub_25BCB626C();
      v52 = v58;
      v56 = v58;
      v57 = v59;
      MEMORY[0x28223BE20](v21);
      v48 = a7;
      v49 = a8;
      v50 = a3;
      MEMORY[0x28223BE20](v22);
      v44 = a7;
      v45 = a8;
      v46 = sub_25BB1D784;
      v47 = v23;
      v25 = sub_25BAB2B20(sub_25BB1D76C, v43, v53, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

LABEL_5:
    *&v58 = a6;
    MEMORY[0x28223BE20](a1);
    v48 = a7;
    v49 = a8;
    v50 = a3;
    MEMORY[0x28223BE20](v26);
    v44 = a7;
    v45 = a8;
    v46 = sub_25BB1D6A4;
    v47 = v27;
    v28 = sub_25BCB68CC();
    v29 = swift_getWitnessTable();
    v25 = sub_25BAB2B20(sub_25BB1D6B0, v43, v28, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
LABEL_6:
    sub_25BAB1D84(v25);
    if (a4)
    {
      v31 = v60;
      v32 = sub_25BB1CEBC(0, *(v60 + 16), a4, a4, &v60);
      if (__OFADD__(v13, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v33 = v32;
      WitnessTable = v31;
      v34 = sub_25BCB651C();
      *&v58 = 2604;
      *(&v58 + 1) = 0xE200000000000000;
      MEMORY[0x25F876C90](v34);

      v35 = *(&v58 + 1);
      v55 = v58;
      *&v56 = 91;
      *(&v56 + 1) = 0xE100000000000000;
      v36 = *(v33 + 16);
      sub_25BCB617C();
      v37 = 0;
      for (i = (v33 + 48); ; i += 2)
      {
        if (v36 == v37)
        {

          swift_bridgeObjectRelease_n();
          v58 = v56;
          sub_25BCB617C();
          MEMORY[0x25F876C90](93, 0xE100000000000000);

          return;
        }

        if (v37 >= *(v33 + 16))
        {
          break;
        }

        v39 = *i;
        v58 = *(i - 1);
        v59 = v39;
        swift_unknownObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
        sub_25BB1D6C8();
        v40 = sub_25BCB627C();
        MEMORY[0x25F876C90](v40);

        if (v37 == *(v33 + 16) - 1)
        {
          v41 = 0;
          v42 = 0xE000000000000000;
        }

        else
        {
          sub_25BCB617C();
          v41 = v55;
          v42 = v35;
        }

        MEMORY[0x25F876C90](v41, v42);
        swift_unknownObjectRelease_n();

        ++v37;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_25BB1CDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_25BCB63AC();
  v9 = v8;
  result = sub_25BCB641C();
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v11 = sub_25BBA49FC((a2 - result) & ~((a2 - result) >> 63), 32, 0xE100000000000000, v7, v9);

    return v11;
  }

  return result;
}

uint64_t sub_25BB1CEBC(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1;
  v7 = sub_25BC08CA4(a1, a2, a3);
  v26 = MEMORY[0x277D84F90];
  result = sub_25BB005B0(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!v7)
    {
      v10 = v6;
      goto LABEL_20;
    }

    while (1)
    {
      v9 = v6 <= a2;
      if (a3 > 0)
      {
        v9 = v6 >= a2;
      }

      if (v9)
      {
        break;
      }

      if (__OFADD__(v6, a3))
      {
        v10 = ((v6 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v10 = v6 + a3;
      }

      if (__OFADD__(v6, a4))
      {
        goto LABEL_40;
      }

      v11 = *a5;
      if (*(*a5 + 16) >= v6 + a4)
      {
        v12 = v6 + a4;
      }

      else
      {
        v12 = *(*a5 + 16);
      }

      if (v12 < v6)
      {
        goto LABEL_41;
      }

      if (v6 < 0)
      {
        goto LABEL_42;
      }

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      result = sub_25BCB617C();
      if (v14 >= v13 >> 1)
      {
        result = sub_25BB005B0(v13 > 1, v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = (v26 + 32 * v14);
      v15[4] = v11;
      v15[5] = v11 + 32;
      v15[6] = v6;
      v15[7] = (2 * v12) | 1;
      v6 = v10;
      if (!--v7)
      {
        while (1)
        {
LABEL_20:
          v16 = v10 <= a2;
          if (a3 > 0)
          {
            v16 = v10 >= a2;
          }

          if (v16)
          {
            return v26;
          }

          v17 = __OFADD__(v10, a3) ? ((v10 + a3) >> 63) ^ 0x8000000000000000 : v10 + a3;
          if (__OFADD__(v10, a4))
          {
            break;
          }

          v18 = *a5;
          if (*(*a5 + 16) >= v10 + a4)
          {
            v19 = v10 + a4;
          }

          else
          {
            v19 = *(*a5 + 16);
          }

          if (v19 < v10)
          {
            goto LABEL_37;
          }

          if (v10 < 0)
          {
            goto LABEL_38;
          }

          v21 = *(v26 + 16);
          v20 = *(v26 + 24);
          result = sub_25BCB617C();
          if (v21 >= v20 >> 1)
          {
            result = sub_25BB005B0(v20 > 1, v21 + 1, 1);
          }

          *(v26 + 16) = v21 + 1;
          v22 = (v26 + 32 * v21);
          v22[4] = v18;
          v22[5] = v18 + 32;
          v22[6] = v10;
          v22[7] = (2 * v19) | 1;
          v10 = v17;
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB1D0F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  result = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v13[1] = v9;
    v13[2] = v10;
    v13[0] = *a2;
    return sub_25BB1C368(result, a4, a5, a6, a7 & 1, v13, a1, a8, a9);
  }

  return result;
}

uint64_t sub_25BB1D14C(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *(a4 + 16);
  if (!v19)
  {
    goto LABEL_64;
  }

  v15 = isUniquelyReferenced_nonNull_native;
  v59 = a12;
  v16 = a11;
  v58 = a10;
  v57 = a9;
  v17 = sub_25BABAF60(1uLL, v19, a4);
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v62 = a7;
  v61 = a6;
  if ((v24 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v14 >> 1, v13))
  {
    goto LABEL_65;
  }

  if (v26 != (v14 >> 1) - v13)
  {
    goto LABEL_67;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  a7 = v62;
  v63 = v12;
  if (!v12)
  {
    v63 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  if (v15 != a2)
  {
    if (a2 < v15)
    {
      goto LABEL_66;
    }

    v12 = v63;
    v28 = *(v63 + 16);

    v17 = sub_25BCB681C();
    v29 = (v63 + 32);
    v55 = a2 - a7;
    v30 = __OFSUB__(a2, a7);
    v56 = v30;
    while (1)
    {
      if (v15 >= a2)
      {
LABEL_59:
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
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        swift_unknownObjectRelease();
        a7 = v62;
        a6 = v61;
LABEL_3:
        v63 = sub_25BABA62C(v17, v12, v13, v14);
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      if (v28)
      {
        v31 = v29;
        v32 = v28;
        v33 = 1;
        while (1)
        {
          v34 = *v31++;
          v35 = v33 * v34;
          if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
          {
            break;
          }

          v33 = v35;
          if (!--v32)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_58;
      }

      v35 = 1;
LABEL_27:
      v36 = v15 * v35;
      if ((v15 * v35) >> 64 != (v15 * v35) >> 63)
      {
        goto LABEL_60;
      }

      if (v36 < v17)
      {
        if (v28)
        {
          v37 = v29;
          v38 = v28;
          v39 = 1;
          while (1)
          {
            v40 = *v37++;
            v41 = v39 * v40;
            if ((v39 * v40) >> 64 != (v39 * v40) >> 63)
            {
              break;
            }

            v39 = v41;
            if (!--v38)
            {
              goto LABEL_35;
            }
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v41 = 1;
LABEL_35:
        if (__OFADD__(v36, v41))
        {
          goto LABEL_61;
        }

        if (v17 >= v36 + v41)
        {
          v42 = v36 + v41;
        }

        else
        {
          v42 = v17;
        }

        if ((a6 & 1) == 0 || v15 < a7)
        {
          goto LABEL_49;
        }

        if (v56)
        {
          goto LABEL_63;
        }

        if (v15 >= v55)
        {
LABEL_49:
          if (v42 < v36)
          {
            goto LABEL_62;
          }

          v65[0] = sub_25BCB68EC();
          v65[1] = v45;
          v65[2] = v46;
          v65[3] = v47;
          sub_25BCB700C();
          swift_getWitnessTable();
          v48 = sub_25BCB68DC();
          v65[0] = v63;
          v12 = sub_25BB1D0F0(v48, v65, a8, a7, v57, v58, a6 & 1, v16, v59);
          v14 = v49;

          v43 = *a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAB1E30();
            v43 = v51;
          }

          v44 = *(v43 + 16);
          v13 = v44 + 1;
          if (v44 >= *(v43 + 24) >> 1)
          {
            sub_25BAB1E30();
            v43 = v52;
          }

          goto LABEL_54;
        }

        if (v15 == a7)
        {
          v43 = *a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAB1E30();
            v43 = v53;
          }

          v44 = *(v43 + 16);
          v13 = v44 + 1;
          if (v44 >= *(v43 + 24) >> 1)
          {
            sub_25BAB1E30();
            v43 = v54;
          }

          v14 = 0xE300000000000000;
          v12 = 3026478;
LABEL_54:
          *(v43 + 16) = v13;
          v50 = v43 + 16 * v44;
          *(v50 + 32) = v12;
          *(v50 + 40) = v14;
          *a3 = v43;
          a7 = v62;
          a6 = v61;
          v29 = (v63 + 32);
        }
      }

      if (++v15 == a2)
      {
      }
    }
  }
}

uint64_t sub_25BB1D5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40F8, &qword_25BCBF760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_25BB1D62C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_25BB1D6C8()
{
  result = qword_27FBB4100;
  if (!qword_27FBB4100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3960, &qword_25BCBB900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4100);
  }

  return result;
}

uint64_t sub_25BB1D72C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Upsample1D.Size.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void Upsample1D.size.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Upsample1D.init(size:mode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = v4;
  return result;
}

uint64_t Upsample1D.forward(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(*(*(*a1 + 16) + 152) + 16);
  if (!sub_25BAB74D0(v6, 3, 0, 0))
  {
    goto LABEL_21;
  }

  v9 = OUTLINED_FUNCTION_14_8(*(v2 + 16));
  if (v4)
  {
    if (!(!v8 & v7))
    {
LABEL_22:
      v36 = 0uLL;
      v35 = 2;
      v37 = -1;
      v39 = 0;
      v38 = v10;
      v40 = -1;
      v41 = 4;
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
LABEL_23:
      sub_25BADDD28(v15, v16, v17, v18, v19, v20, v21);
    }

    v11 = *&v3 * *(v9 + 48);
    if (COERCE_INT(fabs(v11)) > 2139095039)
    {
      __break(1u);
    }

    else if (v11 > -9.2234e18)
    {
      if (v11 < 9.2234e18)
      {
        v3 = v11;
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v35 = v6;
    v36 = xmmword_25BCBCE20;
    v37 = 0;
    v38 = xmmword_25BCBCE30;
    LOBYTE(v39) = 0;
    v41 = 7;
    OUTLINED_FUNCTION_5_12();
    v21 = 45;
    goto LABEL_23;
  }

  if (!(!v8 & v7))
  {
    goto LABEL_22;
  }

  v12 = *(v9 + 48);
  if (v12 != -1)
  {
    v13 = v3;
    if (v12)
    {
      v13 = v3 % v12;
    }

    if (v13)
    {
      sub_25BCB70FC();
      v22 = OUTLINED_FUNCTION_12_4();
      MEMORY[0x25F876C90](v22);
      v23 = sub_25BCB617C();
      v24 = MEMORY[0x25F876F80](v23, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v24);

      MEMORY[0x25F876C90](0xD00000000000007CLL, 0x800000025BCDA290);
      OUTLINED_FUNCTION_10_5();
      result = OUTLINED_FUNCTION_29_5(v25, v26, v27, v28, v29, v30, v31, v32, 49);
      __break(1u);
      return result;
    }
  }

LABEL_15:
  v35 = v2;
  Tensor.expandingShape(at:)();
  v33 = v5;
  resize(images:size:mode:)(&v34, v3, 1, &v33, &v35);

  v34 = v35;
  Tensor.squeezingShape(at:)();
}

uint64_t sub_25BB1DA94(uint64_t a1)
{
  v2 = sub_25BB1F710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1DAD0(uint64_t a1)
{
  v2 = sub_25BB1F710();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample1D.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4108, &qword_25BCBCE58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_25BB1F710();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  sub_25BB1F764();
  sub_25BCB779C();
  if (!v23)
  {
    sub_25BB1F7B8();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
  }

  v27 = OUTLINED_FUNCTION_26_0();
  v28(v27);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Upsample1D.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4128, &qword_25BCBCE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1F710();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v25)
  {
    a14 = 0;
    v30 = sub_25BB1F80C();
    OUTLINED_FUNCTION_3_11(&type metadata for Upsample1D.Size, &a14, v31, v32, v30);
    a12 = 1;
    v33 = sub_25BB1F860();
    OUTLINED_FUNCTION_3_11(&type metadata for InterpolationMode, &a12, v34, v35, v33);
    v36 = OUTLINED_FUNCTION_7_1();
    v37(v36);
    v38 = a13;
    *v26 = v39;
    *(v26 + 8) = v40;
    *(v26 + 9) = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_16();
}

uint64_t Upsample2D.Size.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t Upsample2D.Size.init(arrayLiteral:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[2] == 2)
  {
    v3 = a1[4];
    v4 = a1[5];

    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    result = OUTLINED_FUNCTION_29_5(v6, v7, v8, 0xD00000000000003ALL, v9, v10, v11, v12, 82);
    __break(1u);
  }

  return result;
}

__n128 Upsample2D.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t Upsample2D.init(size:mode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *a2;
  if (v5 != 1)
  {
    if (v3 < 1)
    {
      OUTLINED_FUNCTION_8_9();
      v15 = 105;
      goto LABEL_10;
    }

    if (v4 <= 0)
    {
      v15 = 106;
      OUTLINED_FUNCTION_10_5();
      v10 = 0xD000000000000027;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (*&v3 <= 0.0)
  {
    OUTLINED_FUNCTION_8_9();
    v15 = 108;
    goto LABEL_10;
  }

  if (*(&v3 + 1) > 0.0)
  {
LABEL_7:
    *a3 = v3;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    *(a3 + 17) = v6;
    return result;
  }

  OUTLINED_FUNCTION_8_9();
  v15 = 109;
LABEL_10:
  OUTLINED_FUNCTION_10_5();
LABEL_12:
  result = OUTLINED_FUNCTION_29_5(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  __break(1u);
  return result;
}

void *Upsample2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 17);
  v9 = *(*a1 + 16);
  LOBYTE(v10) = *(v9 + 160);
  if (!sub_25BAA80BC(v10, &unk_286D42270))
  {
    goto LABEL_32;
  }

  v10 = *(*(v9 + 152) + 16);
  if (!sub_25BAB74D0(v10, 4, 0, 0))
  {
    v43 = v10;
    *v44 = xmmword_25BCBCE20;
    v44[16] = 0;
    v45 = xmmword_25BCBCE40;
    LOBYTE(v46) = 0;
    v48 = 7;
    OUTLINED_FUNCTION_5_12();
    v30 = 121;
    goto LABEL_37;
  }

  if (v7)
  {
    v11 = OUTLINED_FUNCTION_14_8(*(v4 + 16));
    if (!(!v14 & v13))
    {
LABEL_34:
      *&v44[8] = 0;
      v43 = 2;
LABEL_36:
      *v44 = 0;
      v44[16] = -1;
      v46 = 0;
      v45 = v12;
      v47 = -1;
      v48 = 4;
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
LABEL_37:
      sub_25BADDD28(v24, v25, v26, v27, v28, v29, v30);
    }

    v15 = *&v6 * *(v11 + 48);
    if (COERCE_INT(fabs(v15)) > 2139095039)
    {
      __break(1u);
    }

    else if (v15 > -9.2234e18)
    {
      if (v15 < 9.2234e18)
      {
        if (v12 != 3)
        {
          v16 = *(&v6 + 1) * *(v11 + 56);
          if (COERCE_INT(fabs(v16)) <= 2139095039)
          {
            if (v16 > -9.2234e18)
            {
              if (v16 < 9.2234e18)
              {
                v6 = v15;
                v5 = v16;
LABEL_25:
                v43 = v4;
                v42 = v8;
                return resize(images:size:mode:)(&v43, v6, v5, &v42, a2);
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            v42 = v10;
            v43 = sub_25BC8FACC();
            *v44 = v23;
            *&v44[8] = xmmword_25BCBCE20;
            LOBYTE(v45) = 0;
            *(&v45 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
            LOBYTE(v46) = 2;
            v48 = 3;
            OUTLINED_FUNCTION_5_12();
            v30 = 120;
            goto LABEL_37;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_35:
        *&v44[8] = 0;
        v43 = v12;
        goto LABEL_36;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v17 = OUTLINED_FUNCTION_14_8(*(v4 + 16));
  if (!(!v14 & v13))
  {
    goto LABEL_34;
  }

  v18 = *(v17 + 48);
  if (v18 == -1)
  {
    goto LABEL_20;
  }

  v19 = v6;
  if (v18)
  {
    v19 = v6 % v18;
  }

  if (!v19)
  {
LABEL_20:
    if (v12 == 3)
    {
      goto LABEL_35;
    }

    v20 = *(v17 + 56);
    if (v20 == -1)
    {
      goto LABEL_25;
    }

    v21 = v5;
    if (v20)
    {
      v21 = v5 % v20;
    }

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  sub_25BCB70FC();
  v31 = OUTLINED_FUNCTION_12_4();
  MEMORY[0x25F876C90](v31);
  v32 = sub_25BCB617C();
  v33 = MEMORY[0x25F876F80](v32, MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v33);

  MEMORY[0x25F876C90](0xD00000000000007ELL, 0x800000025BCDA430);
  OUTLINED_FUNCTION_10_5();
  result = OUTLINED_FUNCTION_29_5(v34, v35, v36, v37, v38, v39, v40, v41, 125);
  __break(1u);
  return result;
}

uint64_t sub_25BB1E394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_28_4(1702521203) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_4(1701080941);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BB1E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB1E490(uint64_t a1)
{
  v2 = sub_25BB1F8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1E4CC(uint64_t a1)
{
  v2 = sub_25BB1F8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample2D.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4148, &qword_25BCBCE68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_25BB1F8B4();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  sub_25BB1F908();
  sub_25BCB779C();
  if (!v24)
  {
    OUTLINED_FUNCTION_21_3();
    sub_25BB1F7B8();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
  }

  v28 = OUTLINED_FUNCTION_26_0();
  v29(v28);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Upsample2D.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  a22 = v26;
  a23 = v27;
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4160, &qword_25BCBCE70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1F8B4();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v24)
  {
    a13 = 0;
    v29 = sub_25BB1F95C();
    OUTLINED_FUNCTION_3_11(&type metadata for Upsample2D.Size, &a13, v30, v31, v29);
    OUTLINED_FUNCTION_21_3();
    v32 = sub_25BB1F860();
    OUTLINED_FUNCTION_3_11(&type metadata for InterpolationMode, &a13, v33, v34, v32);
    v35 = OUTLINED_FUNCTION_7_1();
    v36(v35);
    *v25 = v37;
    *(v25 + 8) = v38;
    *(v25 + 16) = v39;
    *(v25 + 17) = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB1E7EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6176247463617865 && a2 == 0xEB0000000065756CLL;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x794264656C616373 && a2 == 0xEE00656C61637324)
    {

      return 2;
    }

    else
    {
      v8 = sub_25BCB789C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_25BB1E918(char a1)
{
  if (!a1)
  {
    return 0x696D697263736964;
  }

  if (a1 == 1)
  {
    return 0x6176247463617865;
  }

  return 0x794264656C616373;
}

uint64_t sub_25BB1EA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB1E7EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB1EABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1E910();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1EAE4(uint64_t a1)
{
  v2 = sub_25BB1F9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1EB20(uint64_t a1)
{
  v2 = sub_25BB1F9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample1D.Size.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4170, &qword_25BCBCE78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_5();
  v5 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BB1F9B0();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_21_3();
    sub_25BB1FA04();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v1)
    {
      OUTLINED_FUNCTION_20_1(2);
    }
  }

  else
  {
    sub_25BB1FA04();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v1)
    {
      OUTLINED_FUNCTION_1_12();
      sub_25BCB778C();
    }
  }

  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Upsample1D.Size.init(from:)()
{
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4188, &qword_25BCBCE80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1F9B0();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v1)
  {
    v15 = 0;
    v4 = sub_25BB1FA58();
    OUTLINED_FUNCTION_27_2(&type metadata for Upsample1D.Size.Discriminator, &v15, v5, v6, v4);
    v7 = v16;
    if (v16)
    {
      OUTLINED_FUNCTION_2_10();
      sub_25BCB768C();
      v9 = v8;
      v10 = OUTLINED_FUNCTION_22_3();
      v11(v10);
      v12 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_2_10();
      v12 = sub_25BCB769C();
      v13 = OUTLINED_FUNCTION_22_3();
      v14(v13);
    }

    *v2 = v12;
    *(v2 + 8) = v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_25BB1EE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6568247463617865 && a2 == 0xEC00000074686769;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6977247463617865 && a2 == 0xEB00000000687464;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x794264656C616373 && a2 == 0xEF74686769656824;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x794264656C616373 && a2 == 0xEE00687464697724)
        {

          return 4;
        }

        else
        {
          v10 = sub_25BCB789C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_25BB1F054(char a1)
{
  result = 0x696D697263736964;
  switch(a1)
  {
    case 1:
      result = 0x6568247463617865;
      break;
    case 2:
      result = 0x6977247463617865;
      break;
    case 3:
    case 4:
      result = 0x794264656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB1F1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB1F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB1EE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB1F270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1F04C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1F298(uint64_t a1)
{
  v2 = sub_25BB1FAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1F2D4(uint64_t a1)
{
  v2 = sub_25BB1FAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample2D.Size.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4198, &qword_25BCBCE88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_5();
  v28 = *(v23 + 16);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_25BB1FAAC();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  if (v28 == 1)
  {
    OUTLINED_FUNCTION_21_3();
    sub_25BB1FB00();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v24)
    {
      OUTLINED_FUNCTION_20_1(3);
      sub_25BCB777C();
    }
  }

  else
  {
    sub_25BB1FB00();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v24)
    {
      OUTLINED_FUNCTION_1_12();
      sub_25BCB778C();
      OUTLINED_FUNCTION_1_12();
      sub_25BCB778C();
    }
  }

  v29 = OUTLINED_FUNCTION_26_0();
  v30(v29);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

uint64_t Upsample2D.Size.init(from:)()
{
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB41B0, &qword_25BCBCE90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1FAAC();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v1)
  {
    v19 = 0;
    v4 = sub_25BB1FB54();
    OUTLINED_FUNCTION_27_2(&type metadata for Upsample2D.Size.Discriminator, &v19, v5, v6, v4);
    v8 = v20;
    if (v20)
    {
      OUTLINED_FUNCTION_2_10();
      sub_25BCB768C();
      v10 = v9;
      OUTLINED_FUNCTION_2_10();
      sub_25BCB768C();
      v12 = v11;
      v13 = OUTLINED_FUNCTION_6_3();
      v14(v13);
      v15 = 0;
      v16 = v10 | (v12 << 32);
    }

    else
    {
      OUTLINED_FUNCTION_2_10();
      v16 = sub_25BCB769C();
      OUTLINED_FUNCTION_2_10();
      v15 = sub_25BCB769C();
      v17 = OUTLINED_FUNCTION_6_3();
      v18(v17);
    }

    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

unint64_t sub_25BB1F710()
{
  result = qword_27FBB4110;
  if (!qword_27FBB4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4110);
  }

  return result;
}

unint64_t sub_25BB1F764()
{
  result = qword_27FBB4118;
  if (!qword_27FBB4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4118);
  }

  return result;
}

unint64_t sub_25BB1F7B8()
{
  result = qword_27FBB4120;
  if (!qword_27FBB4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4120);
  }

  return result;
}

unint64_t sub_25BB1F80C()
{
  result = qword_27FBB4130;
  if (!qword_27FBB4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4130);
  }

  return result;
}

unint64_t sub_25BB1F860()
{
  result = qword_27FBB4138;
  if (!qword_27FBB4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4138);
  }

  return result;
}

unint64_t sub_25BB1F8B4()
{
  result = qword_27FBB4150;
  if (!qword_27FBB4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4150);
  }

  return result;
}

unint64_t sub_25BB1F908()
{
  result = qword_27FBB4158;
  if (!qword_27FBB4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4158);
  }

  return result;
}

unint64_t sub_25BB1F95C()
{
  result = qword_27FBB4168;
  if (!qword_27FBB4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4168);
  }

  return result;
}

unint64_t sub_25BB1F9B0()
{
  result = qword_27FBB4178;
  if (!qword_27FBB4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4178);
  }

  return result;
}

unint64_t sub_25BB1FA04()
{
  result = qword_27FBB4180;
  if (!qword_27FBB4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4180);
  }

  return result;
}

unint64_t sub_25BB1FA58()
{
  result = qword_27FBB4190;
  if (!qword_27FBB4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4190);
  }

  return result;
}

unint64_t sub_25BB1FAAC()
{
  result = qword_27FBB41A0;
  if (!qword_27FBB41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41A0);
  }

  return result;
}

unint64_t sub_25BB1FB00()
{
  result = qword_27FBB41A8;
  if (!qword_27FBB41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41A8);
  }

  return result;
}

unint64_t sub_25BB1FB54()
{
  result = qword_27FBB41B8;
  if (!qword_27FBB41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41B8);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Upsample1D(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for Upsample1D(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Upsample1D.Size(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for Upsample1D.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Upsample2D(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for Upsample2D(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Upsample2D.Size(uint64_t a1, unsigned int a2)
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
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for Upsample2D.Size(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Upsample2D.Size.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Upsample2D.Size.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Upsample1D.Size.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BB200C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB201A8()
{
  result = qword_27FBB41C0;
  if (!qword_27FBB41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41C0);
  }

  return result;
}

unint64_t sub_25BB20200()
{
  result = qword_27FBB41C8;
  if (!qword_27FBB41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41C8);
  }

  return result;
}

unint64_t sub_25BB20258()
{
  result = qword_27FBB41D0;
  if (!qword_27FBB41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41D0);
  }

  return result;
}

unint64_t sub_25BB202B0()
{
  result = qword_27FBB41D8;
  if (!qword_27FBB41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41D8);
  }

  return result;
}

unint64_t sub_25BB20308()
{
  result = qword_27FBB41E0;
  if (!qword_27FBB41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41E0);
  }

  return result;
}

unint64_t sub_25BB20360()
{
  result = qword_27FBB41E8;
  if (!qword_27FBB41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41E8);
  }

  return result;
}

unint64_t sub_25BB203B8()
{
  result = qword_27FBB41F0;
  if (!qword_27FBB41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41F0);
  }

  return result;
}

unint64_t sub_25BB20410()
{
  result = qword_27FBB41F8;
  if (!qword_27FBB41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41F8);
  }

  return result;
}

unint64_t sub_25BB20468()
{
  result = qword_27FBB4200;
  if (!qword_27FBB4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4200);
  }

  return result;
}

unint64_t sub_25BB204C0()
{
  result = qword_27FBB4208;
  if (!qword_27FBB4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4208);
  }

  return result;
}

unint64_t sub_25BB20518()
{
  result = qword_27FBB4210;
  if (!qword_27FBB4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4210);
  }

  return result;
}

unint64_t sub_25BB20570()
{
  result = qword_27FBB4218;
  if (!qword_27FBB4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4218);
  }

  return result;
}

unint64_t sub_25BB205C8()
{
  result = qword_27FBB4220;
  if (!qword_27FBB4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4220);
  }

  return result;
}

unint64_t sub_25BB20620()
{
  result = qword_27FBB4228;
  if (!qword_27FBB4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4228);
  }

  return result;
}

unint64_t sub_25BB20674()
{
  result = qword_27FBB4230;
  if (!qword_27FBB4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4230);
  }

  return result;
}

unint64_t sub_25BB206C8()
{
  result = qword_27FBB4238;
  if (!qword_27FBB4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4238);
  }

  return result;
}

uint64_t RMSProp.step.getter()
{
  v1 = *(v0 + 40);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB207AC@<X0>(uint64_t *a1@<X8>)
{
  result = RMSProp.step.getter();
  *a1 = result;
  return result;
}

void RMSProp.step.setter(uint64_t a1)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_81_0(a1 - 1);
  }
}

uint64_t (*RMSProp.step.modify(uint64_t (*result)()))()
{
  *(result + 1) = v1;
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *result = v4;
    return sub_25BB2828C;
  }

  return result;
}

uint64_t RMSProp.alpha.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

void *RMSProp.init(for:learningRate:rho:epsilon:gradientClippingMode:regularizationKind:gradientScale:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  if (v22 < 0.0)
  {
    OUTLINED_FUNCTION_28_1();
    v34 = 51;
LABEL_9:
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  if (a5 >= 0.0)
  {
    v23 = *v15;
    v24 = *v16 | (*(v16 + 4) << 32);
    if (BYTE4(v24) == 255 || *v16 > 0.0)
    {
      v25 = *(v15 + 2) | (*(v15 + 12) << 32);
      (*(v18 + 16))(v21, v17, a1);
      result = OptimizerStateDictionary.init(_:)(v21, a1, a2, &v35);
      v27 = v35;
      *a3 = a4;
      *(a3 + 4) = a5;
      *(a3 + 8) = a6;
      *(a3 + 12) = v23;
      *(a3 + 24) = BYTE4(v25);
      *(a3 + 20) = v25;
      *(a3 + 32) = BYTE4(v24);
      *(a3 + 28) = v24;
      *(a3 + 36) = a7;
      *(a3 + 40) = 0;
      *(a3 + 48) = v27;
      return result;
    }

    OUTLINED_FUNCTION_28_1();
    v34 = 54;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_21();
  v34 = 52;
  OUTLINED_FUNCTION_7_0();
  v33 = 0xD000000000000018;
LABEL_10:
  result = sub_25BCB74CC(v28, v29, v30, v33, v31, v32, 106, 2, v34);
  __break(1u);
  return result;
}

uint64_t (*RMSProp.update(_:with:)(uint64_t a1, void *a2, uint64_t a3))(_BYTE *, void)
{
  v5 = v3;
  v266 = a1;
  v245 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  v244 = v11;
  OUTLINED_FUNCTION_7();
  sub_25BCB5EFC();
  OUTLINED_FUNCTION_2();
  v242 = v13;
  v243 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_4();
  v241 = v14;
  OUTLINED_FUNCTION_7();
  v251 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v248 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v237 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_72_0();
  WitnessTable = swift_getWitnessTable();
  nullsub_1();
  v271 = a3;
  v265 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v252 = a2;
  v268 = TupleTypeMetadata2;
  sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BACC03C();
  v270 = v24;
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  v25 = sub_25BCB5EEC();
  v26 = __swift_project_value_buffer(v25, qword_28154BE90);
  sub_25BCB5EAC();
  v247 = v26;
  v27 = sub_25BCB5EDC();
  v28 = sub_25BCB6D5C();
  v29 = sub_25BCB6E1C();
  v262 = v5;
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_90();
    v31 = OUTLINED_FUNCTION_88_1(v30);
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v27, v28, v31, "Optimizing", "", v5, 2u);
    v5 = v262;
    OUTLINED_FUNCTION_89();
  }

  (*(v16 + 16))(v21, v4, v251);
  sub_25BCB5F2C();
  swift_allocObject();
  v250 = sub_25BCB5F1C();
  v33 = v16 + 8;
  v32 = *(v16 + 8);
  v34 = OUTLINED_FUNCTION_102_0();
  v249 = v33;
  v32(v34);
  OUTLINED_FUNCTION_0_14();
  v35 = OUTLINED_FUNCTION_29_1();
  sub_25BAA51C8(v35, v36);
  v37 = MEMORY[0x277D84F90];
  sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D42A40, v281, v276);
  sub_25BA9C2C8(v275);
  v282 = v276[0];
  OUTLINED_FUNCTION_67_1();
  if (!v41 & v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39 == 0x200000000;
  }

  if (v41)
  {
    v43 = *(v5 + 12);
    v42 = v252;
    if ((v43 & 0x100000000) != 0)
    {
      v275[0] = v252;
      MEMORY[0x28223BE20](v38);
      OUTLINED_FUNCTION_71_0();
      v49 = WitnessTable;
      *(v50 - 16) = v271;
      *(v50 - 8) = v49;
      v51 = sub_25BCB68CC();
      OUTLINED_FUNCTION_1_1();
      v52 = swift_getWitnessTable();
      v54 = sub_25BAB2B20(sub_25BB27830, v43, v51, &type metadata for Tensor, MEMORY[0x277D84A98], v52, MEMORY[0x277D84AC0], v53);
      v264 = 0;
      OUTLINED_FUNCTION_75_0(v54);
      v275[0] = v281[0];
      v279[0] = &unk_286D42A68;
      Tensor.reshaped(to:)(v279, v276);

      v279[0] = v276[0];
      Tensor.sum(squeezingAxes:)(v275, &unk_286D42A90);

      v42 = v252;

      v55 = v275[0];
      OUTLINED_FUNCTION_0_14();
      v56 = *(v55[2] + 160);
      v57 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v57, v58);
      v280 = v37;
      LOBYTE(v278) = v56;
      v59 = OUTLINED_FUNCTION_41_2();
      sub_25BAA51C8(v59, v60);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v280, &unk_286D42AB8, &v278, v276, v279);
      sub_25BA9C2C8(v281);
      sub_25BA9C2C8(v275);
      v275[0] = v55;
      v281[0] = v279[0];
      OUTLINED_FUNCTION_29_1();
      static Tensor.* infix(_:_:)();
      sqrt(_:)(v275, v276);

      v48 = v275[0];
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v45 = OUTLINED_FUNCTION_56(v44);
      *(v45 + 16) = xmmword_25BCBAE50;
      *(v45 + 32) = v43;
      v46 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v46, v47);
      sub_25BACC1B0(MEMORY[0x277D84F90], v45, v281, v276);
      sub_25BA9C2C8(v275);
      v48 = v276[0];

      v264 = 0;
    }

    v282 = v48;
  }

  else
  {
    v264 = 0;
    v42 = v252;
  }

  v61 = sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BAA1B64();
  v280 = v62;
  if (v61 < 0)
  {
    __break(1u);
LABEL_60:

    __break(1u);
LABEL_61:
    OUTLINED_FUNCTION_21();
    v237 = 329;
    OUTLINED_FUNCTION_7_0();
    v230 = 0xD00000000000002ELL;
LABEL_63:
    sub_25BCB74CC(v225, v226, v227, v230, v228, v229, 102, 2, v237);
    __break(1u);
LABEL_64:
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_52_1();
    sub_25BADDD28(v231, v232, v233, v234, v235, v236, 80);
  }

  v246 = v32;
  if (v61)
  {
    v63 = 0;
    v239 = (v9 + 8);
    v240 = (v9 + 104);
    v238 = *MEMORY[0x277D84660];
    v269 = xmmword_25BCBAE50;
    v64 = v262;
    v263 = v61;
    while (1)
    {
      v65 = v42;
      sub_25BCB690C();
      v67 = v275[0];
      v66 = v275[1];

      MEMORY[0x28223BE20](v68);
      v69 = &v237 - 10;
      v70 = WitnessTable;
      *(&v237 - 8) = v271;
      *(&v237 - 7) = v70;
      v272 = v66;
      *(&v237 - 6) = v66;
      *(&v237 - 5) = v64;
      *(&v237 - 4) = &v282;
      *(&v237 - 3) = v67;
      *(&v237 - 2) = &v280;

      v71 = sub_25BCB6FCC();
      if (v72)
      {
        v73 = swift_modifyAtWritableKeyPath();
        v75 = v73;
        if ((*(v74 + 8) & 1) == 0)
        {
          v76 = v74;
          v258 = v73;
          v77 = *(v64 + 36);
          v260 = v74;
          if (v77 == 1.0)
          {
            v78 = v272;
          }

          else
          {
            OUTLINED_FUNCTION_0_14();
            v82 = v272;
            v83 = *(v272[2] + 160);
            v84 = OUTLINED_FUNCTION_29_1();
            sub_25BAA51C8(v84, v85);
            v277 = MEMORY[0x277D84F90];
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
            v87 = OUTLINED_FUNCTION_56(v86);
            OUTLINED_FUNCTION_38_3(v87);
            v273[0] = v83;
            v88 = OUTLINED_FUNCTION_41_2();
            sub_25BAA51C8(v88, v89);
            v90 = OUTLINED_FUNCTION_19_4();
            Tensor.init(shape:coercingScalars:scalarType:on:)(v90, v87, v91, v92, v93);
            sub_25BA9C2C8(v281);
            sub_25BA9C2C8(v275);
            v281[0] = v82;
            v276[0] = v278;
            v76 = v260;

            OUTLINED_FUNCTION_41_2();
            static Tensor.* infix(_:_:)();

            v78 = v275[0];
          }

          OUTLINED_FUNCTION_64_1();
          if (!v41 & v40)
          {
            v275[0] = v78;
          }

          else
          {
            v95 = *(v64 + 12);
            v96 = *(v64 + 20) | (v94 << 32);
            if (HIDWORD(v96))
            {
              v97 = v282;
              OUTLINED_FUNCTION_0_14();
              if (HIDWORD(v96) == 1)
              {
                v98 = *(v78[2] + 160);
                v99 = OUTLINED_FUNCTION_29_1();
                sub_25BAA51C8(v99, v100);
                v277 = MEMORY[0x277D84F90];
                v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v102 = OUTLINED_FUNCTION_56(v101);
                *(v102 + 16) = v269;
                *(v102 + 32) = v95;
                v273[0] = v98;
                v103 = OUTLINED_FUNCTION_41_2();
                sub_25BAA51C8(v103, v104);

                v105 = OUTLINED_FUNCTION_19_4();
                Tensor.init(shape:coercingScalars:scalarType:on:)(v105, v102, v106, v107, v108);
                sub_25BA9C2C8(v281);
                sub_25BA9C2C8(v275);
                v109 = v278;
                v281[0] = v78;
                OUTLINED_FUNCTION_96_0();
                Tensor.squared()();
                v276[0] = v275[0];
                v278 = &unk_286D42B08;
                v110 = OUTLINED_FUNCTION_98_1();
                Tensor.reshaped(to:)(v110, v111);

                v276[0] = v281[0];
                Tensor.sum(squeezingAxes:)(&v278, &unk_286D42B30);

                v112 = OUTLINED_FUNCTION_97_0();
                sqrt(_:)(v113, v112);

                v114 = v275[0];
                v281[0] = v78;
                v275[0] = v109;
                v276[0] = v114;
                v278 = v109;
                max(_:_:)();
                static Tensor./ infix(_:_:)();

                OUTLINED_FUNCTION_41_2();
                static Tensor.* infix(_:_:)();
              }

              else
              {
                v118 = *(v78[2] + 160);
                v119 = OUTLINED_FUNCTION_29_1();
                sub_25BAA51C8(v119, v120);
                v277 = MEMORY[0x277D84F90];
                v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v122 = OUTLINED_FUNCTION_56(v121);
                *(v122 + 16) = v269;
                *(v122 + 32) = v96;
                v273[0] = v118;
                v123 = OUTLINED_FUNCTION_41_2();
                sub_25BAA51C8(v123, v124);

                v125 = OUTLINED_FUNCTION_19_4();
                Tensor.init(shape:coercingScalars:scalarType:on:)(v125, v122, v126, v127, v128);
                sub_25BA9C2C8(v281);
                sub_25BA9C2C8(v275);
                v275[0] = v78;
                v281[0] = v278;
                OUTLINED_FUNCTION_29_1();
                static Tensor.* infix(_:_:)();
                v275[0] = v97;
                LOBYTE(v278) = *(v78[2] + 160);
                v130 = v244;
                v129 = v245;
                (*v240)(v244, v238, v245);
                OUTLINED_FUNCTION_98_1();
                Tensor.cast(to:roundingRule:)();
                (*v239)(v130, v129);
                v278 = v281[0];
                static Tensor./ infix(_:_:)();
              }

              v64 = v262;
            }

            else
            {
              v281[0] = v78;
              OUTLINED_FUNCTION_96_0();
              Tensor.clamped(to:)(v115, v116, v117);

              v64 = v262;
            }

            v76 = v260;
          }

          v131 = *(*v76 + 32);
          if ((~v131 & 0xF000000000000007) == 0)
          {
            goto LABEL_61;
          }

          if ((v131 & 0x8000000000000000) == 0)
          {
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_7_0();
            goto LABEL_63;
          }

          v132 = v275[0];
          OUTLINED_FUNCTION_64_1();
          if (!v41 & v40)
          {

            sub_25BAB3020(v131);

            v136 = v132;
          }

          else
          {
            OUTLINED_FUNCTION_47_3(v133);
            v281[0] = v132;
            v276[0] = v131 & 0x7FFFFFFFFFFFFFFFLL;
            sub_25BAB3020(v131);

            v134 = OUTLINED_FUNCTION_41_2();
            sub_25BB08FF0(v134, v135);
            v136 = v275[0];
          }

          v137 = *(v64 + 40);
          v259 = &v237;
          v256 = v131 & 0x7FFFFFFFFFFFFFFFLL;
          v257 = v131;
          v261 = v132;
          if (v137)
          {
            v138 = OUTLINED_FUNCTION_68_1();
            v142 = type metadata accessor for OptimizerStateDictionary(v138, v139, v140, v141);
            OptimizerStateDictionary.subscript.getter(v67, v142);
            if (!v275[0])
            {
              goto LABEL_64;
            }

            v143 = v275[0];
          }

          else
          {
            v275[0] = *(v64 + 48);
            v144 = OUTLINED_FUNCTION_68_1();
            v148 = type metadata accessor for OptimizerStateDictionary(v144, v145, v146, v147);
            OptimizerStateDictionary.subscript.getter(sub_25BB28290, v148, v281);
            v143 = v281[0];
          }

          v254 = v143;
          OUTLINED_FUNCTION_0_14();
          v149 = *(v136[2] + 160);
          v150 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v150, v151);
          v152 = MEMORY[0x277D84F90];
          v277 = MEMORY[0x277D84F90];
          v273[0] = v149;
          v153 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v153, v154);
          v155 = OUTLINED_FUNCTION_19_4();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v155, &unk_286D42AE0, v156, v157, v158);
          sub_25BA9C2C8(v281);
          sub_25BA9C2C8(v275);
          v159 = v278;
          v255 = v278;
          OUTLINED_FUNCTION_0_14();
          v160 = *(v136[2] + 160);
          v161 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v161, v162);
          v278 = v152;
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v164 = OUTLINED_FUNCTION_56(v163);
          OUTLINED_FUNCTION_38_3(v164);
          v273[0] = v160;
          v165 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v165, v166);
          Tensor.init(shape:coercingScalars:scalarType:on:)(&v278, v164, v273, v276, &v277);
          sub_25BA9C2C8(v281);
          sub_25BA9C2C8(v275);
          v275[0] = v143;
          static Tensor.* infix(_:_:)();

          OUTLINED_FUNCTION_0_14();
          v167 = *(v136[2] + 160);
          v168 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v168, v169);
          v277 = v152;
          v170 = OUTLINED_FUNCTION_56(v163);
          OUTLINED_FUNCTION_38_3(v170);
          v274 = v167;
          v171 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v171, v172);
          v173 = OUTLINED_FUNCTION_100_0();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v173, v170, v174, v175, v176);
          sub_25BA9C2C8(v281);
          sub_25BA9C2C8(v275);
          v275[0] = v136;
          v281[0] = v159;
          OUTLINED_FUNCTION_29_1();
          pow(_:_:)();
          static Tensor.* infix(_:_:)();

          OUTLINED_FUNCTION_97_0();
          static Tensor.+ infix(_:_:)();

          v69 = v275[0];
          sqrt(_:)(&v278, v275);
          OUTLINED_FUNCTION_0_14();
          LOBYTE(v152) = *(v136[2] + 160);
          v177 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v177, v178);
          v179 = MEMORY[0x277D84F90];
          v277 = MEMORY[0x277D84F90];
          v180 = OUTLINED_FUNCTION_56(v163);
          OUTLINED_FUNCTION_38_3(v180);
          v274 = v152;
          v181 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v181, v182);
          v183 = OUTLINED_FUNCTION_100_0();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v183, v180, v184, v185, v186);
          sub_25BA9C2C8(v281);
          sub_25BA9C2C8(v275);
          OUTLINED_FUNCTION_97_0();
          static Tensor.+ infix(_:_:)();

          v187 = v275[0];
          v253 = v275[0];
          OUTLINED_FUNCTION_0_14();
          LOBYTE(v180) = *(v136[2] + 160);
          v188 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v188, v189);
          v277 = v179;
          v190 = OUTLINED_FUNCTION_56(v163);
          OUTLINED_FUNCTION_38_3(v190);
          v273[0] = v180;
          v191 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v191, v192);
          v193 = OUTLINED_FUNCTION_19_4();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v193, v190, v194, v195, v196);
          sub_25BA9C2C8(v281);
          sub_25BA9C2C8(v275);
          v281[0] = v256;
          v275[0] = v278;
          v276[0] = v136;
          static Tensor.* infix(_:_:)();
          v275[0] = v187;
          static Tensor./ infix(_:_:)();

          OUTLINED_FUNCTION_41_2();
          static Tensor.- infix(_:_:)();

          v197 = v275[0];
          v275[0] = v69;
          v198 = OUTLINED_FUNCTION_68_1();
          v201 = type metadata accessor for OptimizerStateDictionary(v198, v265, v199, v200);

          OptimizerStateDictionary.subscript.setter(v275, v67, v201);

          v202 = v280;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45_3();
            v202 = v210;
          }

          v64 = v262;
          v61 = v263;
          v203 = *(v202 + 16);
          OUTLINED_FUNCTION_95_0();
          if (v40)
          {
            OUTLINED_FUNCTION_13_5(v204);
            sub_25BAA1B64();
            v202 = v211;
          }

          *(v202 + 16) = v69;
          *(v202 + 8 * v203 + 32) = v197;
          v280 = v202;
          v275[0] = v197;

          Parameter.wrappedValue.setter(v275);

          sub_25BAB310C(v257);

          v65 = v252;
          v75 = v258;
        }

        v75(v279, 0);
      }

      else
      {
        MEMORY[0x28223BE20](v71);
        OUTLINED_FUNCTION_70_1();
        v79 = *(v271 + 24);
        *(v80 - 48) = v265;
        *(v80 - 40) = v79;
        *(v80 - 32) = v81;
        *(v80 - 24) = sub_25BACC630;
        *(v80 - 16) = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v69 = v264;
        sub_25BAB2F30();
        if (v69)
        {
          goto LABEL_60;
        }

        v264 = 0;

        v61 = v263;
      }

      v205 = sub_25BAC4018();
      v206 = *(v270 + 16);
      OUTLINED_FUNCTION_95_0();
      if (v40)
      {
        OUTLINED_FUNCTION_13_5(v207);
        sub_25BACC03C();
        v270 = v209;
      }

      v42 = v65;
      ++v63;

      v208 = v270;
      *(v270 + 16) = v69;
      *(v208 + 8 * v206 + 32) = v205;
      if (v61 == v63)
      {
        goto LABEL_54;
      }
    }
  }

  v64 = v262;
LABEL_54:
  v212 = sub_25BCB5EDC();
  v213 = v248;
  sub_25BCB5F0C();
  v214 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    v215 = OUTLINED_FUNCTION_48_2();
    if (v216(v215) != *MEMORY[0x277D85B00])
    {
      v217 = OUTLINED_FUNCTION_74_0();
      v218(v217);
    }

    *OUTLINED_FUNCTION_90() = 0;
    v219 = sub_25BCB5E9C();
    OUTLINED_FUNCTION_61_0(&dword_25BA90000, v220, v214, v219, "Optimizing");
    OUTLINED_FUNCTION_89();
  }

  v246(v213, v251);

  v221 = sub_25BACED8C();
  OUTLINED_FUNCTION_114_0(v221);

  v222 = v271;
  v223 = WitnessTable;
  nullsub_1();
  return sub_25BA9B48C(v64, v222, v223);
}

void sub_25BB21DE0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 12);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_25BB21E04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  if (*(v5 + 32) == 255)
  {
  }

  else
  {
    v12 = v5[7] | (*(v5 + 32) << 32);
    LODWORD(v58) = v5[7];
    BYTE4(v58) = BYTE4(v12) & 1;
    v59[0] = v10;
    v56[0] = v9;
    sub_25BB08FF0(v59, v56);
    v10 = v60;
  }

  v52 = a1;
  v53 = a5;
  if (*(v5 + 5))
  {
    v13 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v11);
    OptimizerStateDictionary.subscript.getter(a1, v13);
    v14 = v60;
    if (!v60)
    {
      v64 = 0u;
      memset(v65, 0, 28);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v65[28] = 22;
      sub_25BADDD28("update(_:parameter:gradient:)", 29, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Optimizers/MomentumBased.swift", 106, 2, 80);
    }
  }

  else
  {
    *&v60 = *(v5 + 6);
    v15 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v11);
    OptimizerStateDictionary.subscript.getter(sub_25BB28290, v15, v59);
    v14 = v59[0];
  }

  v16 = v9;
  LODWORD(v63) = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v17 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v60, v59);
  v57 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v18 = swift_allocObject();
  sub_25BACD7C4(v18, 1);
  *v19 = 0x40000000;
  nullsub_1();
  v21 = v20;
  LOBYTE(v54) = v17;
  sub_25BAA51C8(v59, v56);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v57, v21, &v54, v56, &v58);
  sub_25BA9C2C8(v59);
  sub_25BA9C2C8(&v60);
  v22 = v58;
  v23 = *(v5 + 1);
  LODWORD(v63) = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v24 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v60, v59);
  v58 = sub_25BACD7D8(0);
  v25 = swift_allocObject();
  sub_25BACD7C4(v25, 1);
  *v26 = v23;
  nullsub_1();
  v28 = v27;
  LOBYTE(v54) = v24;
  sub_25BAA51C8(v59, v56);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v58, v28, &v54, v56, &v57);
  sub_25BA9C2C8(v59);
  sub_25BA9C2C8(&v60);
  *&v60 = v14;
  static Tensor.* infix(_:_:)();

  LODWORD(v63) = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v29 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v60, v59);
  v57 = sub_25BACD7D8(0);
  v30 = swift_allocObject();
  sub_25BACD7C4(v30, 1);
  *v31 = 1.0 - v23;
  nullsub_1();
  v33 = v32;
  v55 = v29;
  sub_25BAA51C8(v59, v56);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v57, v33, &v55, v56, &v54);
  sub_25BA9C2C8(v59);
  sub_25BA9C2C8(&v60);
  *&v60 = v10;
  v59[0] = v22;
  pow(_:_:)();
  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  v34 = v60;
  sqrt(_:)(&v58, &v60);
  v35 = v5[2];
  LODWORD(v63) = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v36 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v60, v59);
  v57 = sub_25BACD7D8(0);
  v37 = swift_allocObject();
  sub_25BACD7C4(v37, 1);
  *v38 = v35;
  nullsub_1();
  v40 = v39;
  v55 = v36;
  sub_25BAA51C8(v59, v56);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v57, v40, &v55, v56, &v54);
  sub_25BA9C2C8(v59);
  sub_25BA9C2C8(&v60);
  static Tensor.+ infix(_:_:)();

  v41 = v60;
  v42 = *v5;
  LODWORD(v63) = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v43 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v60, v59);
  v57 = sub_25BACD7D8(0);
  v44 = swift_allocObject();
  sub_25BACD7C4(v44, 1);
  *v45 = v42;
  nullsub_1();
  v47 = v46;
  LOBYTE(v54) = v43;
  sub_25BAA51C8(v59, v56);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v57, v47, &v54, v56, &v58);
  sub_25BA9C2C8(v59);
  sub_25BA9C2C8(&v60);
  v59[0] = v16;
  *&v60 = v58;
  v56[0] = v10;
  static Tensor.* infix(_:_:)();
  *&v60 = v41;
  static Tensor./ infix(_:_:)();

  static Tensor.- infix(_:_:)();

  v48 = v60;
  *&v60 = v34;
  v50 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v49);

  OptimizerStateDictionary.subscript.setter(&v60, v52, v50);

  *v53 = v48;
  return result;
}

unint64_t sub_25BB223EC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB22444(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 7301234;
      break;
    case 2:
      result = 0x6E6F6C69737065;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x746E656964617267;
      break;
    case 6:
      result = 0x6F69746172657469;
      break;
    case 7:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB22544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB225B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB22624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB22694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25BB22704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB223EC();
  *a1 = result;
  return result;
}

uint64_t sub_25BB22760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB22438();
  *a1 = result;
  return result;
}

uint64_t sub_25BB227A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB2243C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB227D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB2282C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RMSProp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v51 = a4;
  type metadata accessor for RMSProp.CodingKeys(255, a2, a3, a5);
  OUTLINED_FUNCTION_43_2();
  WitnessTable = swift_getWitnessTable();
  v53 = OUTLINED_FUNCTION_62_0(WitnessTable);
  OUTLINED_FUNCTION_2();
  v50 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v52 = v13;
  OUTLINED_FUNCTION_35_1();
  sub_25BCB7B2C();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v15 = v51;
  LOBYTE(v57) = 0;
  sub_25BCB768C();
  v17 = v16;
  OUTLINED_FUNCTION_30_4(6);
  v18 = sub_25BCB769C();
  OUTLINED_FUNCTION_30_4(1);
  sub_25BCB768C();
  v20 = v19;
  OUTLINED_FUNCTION_30_4(2);
  sub_25BCB768C();
  v22 = v21;
  OUTLINED_FUNCTION_30_4(5);
  sub_25BCB768C();
  v24 = v23;
  v54[0] = 4;
  sub_25BB27868();
  sub_25BCB765C();
  v49 = BYTE4(v57);
  v25 = v57;
  v54[0] = 3;
  sub_25BB278BC();
  sub_25BCB765C();
  v26 = v57;
  v47 = v59;
  v46 = v58;
  v48 = a2;
  v27 = a2;
  v28 = a3;
  type metadata accessor for OptimizerStateDictionary(0, v27, a3, v29);
  v71 = 7;
  OUTLINED_FUNCTION_10_6();
  swift_getWitnessTable();
  sub_25BCB76AC();
  v45 = v26;
  v30 = v25 | (v49 << 32);
  v31 = v46 | (v47 << 32);
  v32 = OUTLINED_FUNCTION_101();
  v33(v32);
  v34 = v72;
  *v54 = v17;
  *&v54[4] = v20;
  *&v54[8] = v22;
  *&v54[12] = v26;
  v53 = HIDWORD(v31);
  v54[24] = BYTE4(v31);
  *&v54[20] = v31;
  OUTLINED_FUNCTION_99_0();
  *&v54[25] = v35;
  v54[27] = v75;
  *&v54[28] = v30;
  LOBYTE(v55) = BYTE4(v30);
  *(&v55 + 1) = v73;
  BYTE3(v55) = v74;
  DWORD1(v55) = v24;
  *(&v55 + 1) = v18;
  v56 = v34;
  v36 = *v54;
  v37 = *&v54[16];
  v38 = v55;
  *(v15 + 48) = v34;
  *(v15 + 16) = v37;
  *(v15 + 32) = v38;
  *v15 = v36;
  type metadata accessor for RMSProp(0, v48, v28, v39);
  OUTLINED_FUNCTION_69_0();
  v41 = v40;
  (*(v40 + 16))(&v57, v54, v30);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v57 = __PAIR64__(v20, v17);
  v58 = v22;
  v59 = v45;
  v61 = v53;
  v60 = v31;
  OUTLINED_FUNCTION_99_0();
  v62 = v42;
  v63 = v75;
  v65 = BYTE4(v30);
  v64 = v30;
  v66 = v73;
  v67 = v74;
  v68 = v24;
  v69 = v18;
  v70 = v34;
  return (*(v41 + 8))(&v57, v30);
}

uint64_t RMSProp.encode(to:)(void *a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_93_1(a1, a2);
  type metadata accessor for RMSProp.CodingKeys(v4, v5, v6, v7);
  OUTLINED_FUNCTION_43_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_0();
  sub_25BCB77CC();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = *(v2 + 12);
  v26 = *(v2 + 24);
  v27 = v13;
  v30 = *(v2 + 20);
  v29 = *(v2 + 32);
  v28 = *(v2 + 28);
  v14 = *(v2 + 48);
  v31 = *(v2 + 40);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_25BCB7B6C();
  LOBYTE(v33) = 0;
  v19 = v32;
  sub_25BCB777C();
  if (!v19)
  {
    v21 = v28;
    v20 = v29;
    v22 = v30;
    LOBYTE(v33) = 6;
    OUTLINED_FUNCTION_57_0();
    sub_25BCB778C();
    OUTLINED_FUNCTION_59_0(1);
    OUTLINED_FUNCTION_57_0();
    sub_25BCB777C();
    OUTLINED_FUNCTION_59_0(2);
    OUTLINED_FUNCTION_57_0();
    sub_25BCB777C();
    OUTLINED_FUNCTION_59_0(5);
    OUTLINED_FUNCTION_57_0();
    sub_25BCB777C();
    LODWORD(v33) = v21;
    BYTE4(v33) = (v21 | (v20 << 32)) >> 32;
    v36 = 4;
    sub_25BB27928();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_57_0();
    sub_25BCB773C();
    v33 = v27;
    v35 = (v22 | (v26 << 32)) >> 32;
    v34 = v22;
    v36 = 3;
    sub_25BB2797C();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_57_0();
    sub_25BCB773C();
    v33 = v14;
    v36 = 7;
    type metadata accessor for OptimizerStateDictionary(0, v25[1], v25[2], v23);
    sub_25BCB617C();
    OUTLINED_FUNCTION_12_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_57_0();
    sub_25BCB779C();
  }

  return (*(v9 + 8))(v12, v18);
}

uint64_t sub_25BB23084@<X0>(uint64_t *a1@<X8>)
{
  result = Adam.step.getter();
  *a1 = result;
  return result;
}

uint64_t Adam.step.setter(uint64_t result)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = (result - 1) & ~((result - 1) >> 63);
  }

  return result;
}

uint64_t (*Adam.step.modify(uint64_t (*result)()))()
{
  *(result + 1) = v1;
  v2 = *(v1 + 48);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *result = v4;
    return sub_25BB23128;
  }

  return result;
}

void *sub_25BB23128(void *result, char a2)
{
  v2 = *result - 1;
  v3 = __OFSUB__(*result, 1);
  if (a2)
  {
    if (!v3)
    {
LABEL_8:
      *(result[1] + 48) = v2 & ~(v2 >> 63);
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t Adam.firstMoments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
  return result;
}

uint64_t Adam.secondMoments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
  return result;
}

uint64_t Adam.maximumSecondMoments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 72) = v2;
  return result;
}

void Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_120_0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  if (v26 < 0.0)
  {
    OUTLINED_FUNCTION_66_1();
    v59 = 190;
LABEL_21:
    OUTLINED_FUNCTION_7_0();
    goto LABEL_22;
  }

  if (v15 < 0.0 || v15 > 1.0)
  {
    OUTLINED_FUNCTION_21();
    v52 = 191;
LABEL_19:
    v59 = v52;
    OUTLINED_FUNCTION_7_0();
    v58 = 0xD000000000000026;
LABEL_22:
    sub_25BCB74CC(v53, v54, v55, v58, v56, v57, 106, 2, v59);
    __break(1u);
    return;
  }

  if (v13 < 0.0 || v13 > 1.0)
  {
    OUTLINED_FUNCTION_21();
    v52 = 192;
    goto LABEL_19;
  }

  v29 = v24;
  OUTLINED_FUNCTION_106_0(v23, v24, v25);
  v33 = *v30 | (*(v30 + 4) << 32);
  if (BYTE4(v33) != 255 && *v30 <= 0.0)
  {
    OUTLINED_FUNCTION_28_1();
    v59 = 194;
    goto LABEL_21;
  }

  v34 = v32 | (v31 << 32);
  v35 = *(v21 + 16);
  v36 = OUTLINED_FUNCTION_27_3();
  v35(v36);
  v37 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v37, v38, v7, v39);
  v40 = OUTLINED_FUNCTION_27_3();
  v35(v40);
  v41 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v41, v42, v7, v43);
  v44 = v61;
  if (v29)
  {
    v45 = OUTLINED_FUNCTION_27_3();
    v47 = v46;
    v35(v45);
    v48 = OUTLINED_FUNCTION_26_5();
    OptimizerStateDictionary.init(_:)(v48, v49, v7, v50);
    v51 = v61;

    v44 = v47;
  }

  else
  {
    v51 = 0;
  }

  *v19 = v17;
  *(v19 + 4) = v15;
  *(v19 + 8) = v13;
  *(v19 + 12) = v11;
  *(v19 + 16) = v60;
  *(v19 + 24) = v34;
  *(v19 + 28) = BYTE4(v34);
  *(v19 + 32) = v33;
  *(v19 + 36) = BYTE4(v33);
  *(v19 + 40) = v9;
  *(v19 + 48) = 0;
  *(v19 + 56) = v61;
  *(v19 + 64) = v44;
  *(v19 + 72) = v51;
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_25BB234E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v11 = *a10;
  v33 = a1;
  v31 = a3;
  v32 = a2;
  v29 = a5;
  v30 = a4;
  v27 = a7;
  v28 = a6;
  basicAdam(parameter:gradient:momentum:velocity:maximumVelocity:learningRate:step:beta1:beta2:epsilon:)(&v37, &v36, &v35, &v34, &v33, &v32, &v31, &v30, *(a9 + 4), *(a9 + 8), *(a9 + 12), &v29, &v28, &v27);
  v12 = v37;
  v14 = v35;
  v13 = v36;
  v15 = v34;
  v37 = v36;
  v17 = type metadata accessor for OptimizerStateDictionary(0, *(v11 + *MEMORY[0x277D84308]), a11, v16);

  OptimizerStateDictionary.subscript.setter(&v37, a10, v17);
  v37 = v14;

  OptimizerStateDictionary.subscript.setter(&v37, a10, v17);
  if (v15 && *(a9 + 72))
  {
    v37 = v15;

    OptimizerStateDictionary.subscript.setter(&v37, a10, v17);
  }

  v37 = v12;
  sub_25BAC481C(&v37, v18, v19);
  v37 = v15;
  sub_25BACE994(&v37, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = v14;
  *(inited + 40) = v13;

  sub_25BACEA3C(inited, v23, v24);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
  *a8 = v12;
  return result;
}

unint64_t sub_25BB236F0()
{
  v0 = sub_25BCB761C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB23748(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0x3161746562;
      break;
    case 2:
      result = 0x3261746562;
      break;
    case 3:
      result = 0x6E6F6C69737065;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x746E656964617267;
      break;
    case 7:
      result = 0x6D6F4D7473726966;
      break;
    case 8:
      result = 0x6F4D646E6F636573;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6F69746172657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB238A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB2391C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB23988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB239F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25BB23A68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB236F0();
  *a1 = result;
  return result;
}

uint64_t sub_25BB23AC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB2373C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB23AF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB23740();
  *a1 = result;
  return result;
}

uint64_t sub_25BB23B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB23B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Adam.init(from:)()
{
  OUTLINED_FUNCTION_115_0();
  v2 = v1;
  v61 = v3;
  type metadata accessor for Adam.CodingKeys(255, v4, v5, v6);
  OUTLINED_FUNCTION_42_1();
  WitnessTable = swift_getWitnessTable();
  v62 = OUTLINED_FUNCTION_62_0(WitnessTable);
  OUTLINED_FUNCTION_2();
  v60 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = v2[3];
  v64 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v12);
  v63 = v11;
  OUTLINED_FUNCTION_35_1();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    v13 = v61;
    LOBYTE(v66) = 0;
    OUTLINED_FUNCTION_76_0(&v66);
    v15 = v14;
    OUTLINED_FUNCTION_16_10(10);
    v16 = sub_25BCB769C();
    OUTLINED_FUNCTION_16_10(1);
    sub_25BCB768C();
    v18 = v17;
    OUTLINED_FUNCTION_16_10(2);
    sub_25BCB768C();
    v20 = v19;
    OUTLINED_FUNCTION_16_10(3);
    sub_25BCB768C();
    v22 = v21;
    OUTLINED_FUNCTION_16_10(6);
    sub_25BCB768C();
    v24 = v23;
    OUTLINED_FUNCTION_94_0(5);
    sub_25BB27868();
    OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_87_0(v25, v26);
    v59 = v16;
    v58 = BYTE4(v66);
    v27 = v66;
    OUTLINED_FUNCTION_94_0(4);
    sub_25BB278BC();
    OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_87_0(v28, v29);
    v53 = v27;
    v56 = v66;
    v55 = v68;
    v54 = v67;
    v30 = OUTLINED_FUNCTION_73_0();
    type metadata accessor for OptimizerStateDictionary(v30, v31, v32, v33);
    OUTLINED_FUNCTION_94_0(7);
    OUTLINED_FUNCTION_10_6();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_107_1();
    v57 = v34;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB76AC();
    v35 = v66;
    OUTLINED_FUNCTION_94_0(8);
    OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_37_1();
    sub_25BCB76AC();
    v52 = v66;
    v83 = 9;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB765C();
    v36 = v53 | (v58 << 32);
    v37 = v54 | (v55 << 32);
    v38 = OUTLINED_FUNCTION_14_9();
    v39(v38);
    v40 = v84;
    v60 = v84;

    v65[0] = __PAIR64__(v18, v15);
    v65[1] = __PAIR64__(v22, v20);
    v65[2] = v56;
    v63 = HIDWORD(v37);
    BYTE4(v65[3]) = BYTE4(v37);
    LODWORD(v65[3]) = v37;
    OUTLINED_FUNCTION_99_0();
    *(&v65[3] + 5) = v41;
    HIBYTE(v65[3]) = v87;
    v58 = v36;
    v62 = HIDWORD(v36);
    BYTE4(v65[4]) = BYTE4(v36);
    LODWORD(v65[4]) = v36;
    *(&v65[4] + 5) = v85;
    HIBYTE(v65[4]) = v86;
    LODWORD(v65[5]) = v24;
    v42 = v59;
    v65[6] = v59;
    v65[7] = v35;
    v43 = v52;
    v65[8] = v52;
    v65[9] = v40;
    memcpy(v13, v65, 0x50uLL);
    v44 = OUTLINED_FUNCTION_73_0();
    type metadata accessor for Adam(v44, v45, v46, v47);
    OUTLINED_FUNCTION_69_0();
    v49 = v48;
    (*(v48 + 16))(&v66, v65, v40);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v66 = __PAIR64__(v18, v15);
    v67 = v20;
    v68 = v22;
    v69 = v56;
    v71 = v63;
    v70 = v37;
    OUTLINED_FUNCTION_99_0();
    v72 = v50;
    v73 = v87;
    v75 = v62;
    v74 = v58;
    v76 = v85;
    v77 = v86;
    v78 = v24;
    v79 = v42;
    v80 = v35;
    v81 = v43;
    v82 = v60;
    (*(v49 + 8))(&v66, v40);
  }

  OUTLINED_FUNCTION_118_0();
}

void Adam.encode(to:)()
{
  OUTLINED_FUNCTION_115_0();
  v38 = v1;
  v3 = v2;
  v5 = *(v4 + 24);
  v30 = *(v4 + 16);
  v31 = v5;
  v7 = type metadata accessor for Adam.CodingKeys(255, v30, v5, v6);
  OUTLINED_FUNCTION_42_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_110_0(WitnessTable);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *(v0 + 16);
  v35 = *(v0 + 28);
  v36 = v14;
  v34 = *(v0 + 24);
  v33 = *(v0 + 36);
  v32 = *(v0 + 32);
  v15 = *(v0 + 56);
  v37 = *(v0 + 48);
  v16 = *(v0 + 72);
  v28 = *(v0 + 64);
  v29 = v15;
  v27 = v16;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_60_0();
  LOBYTE(v40) = 0;
  v17 = v38;
  sub_25BCB777C();
  if (v17)
  {
    (*(v10 + 8))(v13, v7);
  }

  else
  {
    v19 = v34;
    v18 = v35;
    v20 = v36;
    v21 = v33;
    LOBYTE(v40) = 10;
    OUTLINED_FUNCTION_39_4();
    sub_25BCB778C();
    OUTLINED_FUNCTION_59_0(1);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v38 = v10;
    OUTLINED_FUNCTION_59_0(2);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_59_0(3);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v40 = v20;
    v41 = v19;
    v42 = (v19 | (v18 << 32)) >> 32;
    v39 = 4;
    sub_25BB2797C();
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_40_3();
    sub_25BCB773C();
    BYTE4(v40) = (v32 | (v21 << 32)) >> 32;
    LODWORD(v40) = v32;
    v39 = 5;
    sub_25BB27928();
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_40_3();
    sub_25BCB773C();
    OUTLINED_FUNCTION_59_0(6);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v40 = v29;
    v39 = 7;
    type metadata accessor for OptimizerStateDictionary(0, v30, v31, v22);
    sub_25BCB617C();
    OUTLINED_FUNCTION_12_5();
    swift_getWitnessTable();
    v23 = OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_112_0(v23, v24, v25);

    v40 = v28;
    v39 = 8;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB779C();

    v40 = v27;
    v39 = 9;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB773C();

    (*(v10 + 8))(v21, v7);
  }

  OUTLINED_FUNCTION_118_0();
}

uint64_t AdamW.step.getter()
{
  v1 = *(v0 + 40);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB245CC@<X0>(uint64_t *a1@<X8>)
{
  result = AdamW.step.getter();
  *a1 = result;
  return result;
}

void AdamW.step.setter(uint64_t a1)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_81_0(a1 - 1);
  }
}

uint64_t (*AdamW.step.modify(uint64_t (*result)()))()
{
  *(result + 1) = v1;
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *result = v4;
    return sub_25BB24668;
  }

  return result;
}

void *sub_25BB2466C(void *result, char a2)
{
  v2 = *result - 1;
  v3 = __OFSUB__(*result, 1);
  if (a2)
  {
    if (!v3)
    {
LABEL_8:
      *(result[1] + 40) = v2 & ~(v2 >> 63);
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t AdamW.firstMoments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

uint64_t AdamW.secondMoments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
  return result;
}

uint64_t AdamW.maximumSecondMoments.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
  return result;
}

void AdamW.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:weightDecay:gradientScale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_120_0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  OUTLINED_FUNCTION_9();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  if (v29 < 0.0)
  {
    OUTLINED_FUNCTION_66_1();
    v57 = 426;
    OUTLINED_FUNCTION_7_0();
LABEL_18:
    sub_25BCB74CC(v50, v51, v52, v53, v54, v55, 106, 2, v57);
    __break(1u);
    return;
  }

  if (v18 < 0.0 || v18 > 1.0)
  {
    OUTLINED_FUNCTION_21();
    v56 = 427;
LABEL_17:
    v57 = v56;
    OUTLINED_FUNCTION_7_0();
    v53 = 0xD000000000000026;
    goto LABEL_18;
  }

  if (v16 < 0.0 || v16 > 1.0)
  {
    OUTLINED_FUNCTION_21();
    v56 = 428;
    goto LABEL_17;
  }

  v32 = v27;
  OUTLINED_FUNCTION_106_0(v26, v27, v28);
  v35 = v34 | (v33 << 32);
  v36 = *(v24 + 16);
  v37 = OUTLINED_FUNCTION_27_3();
  v36(v37);
  v38 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v38, v39, v8, v40);
  v41 = OUTLINED_FUNCTION_27_3();
  v36(v41);
  v42 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v42, v43, v8, v44);
  if (v32)
  {
    v45 = OUTLINED_FUNCTION_27_3();
    v36(v45);
    v46 = OUTLINED_FUNCTION_26_5();
    OptimizerStateDictionary.init(_:)(v46, v47, v8, v48);
    v49 = v59;
  }

  else
  {
    v49 = 0;
  }

  *v22 = v20;
  *(v22 + 4) = v18;
  *(v22 + 8) = v16;
  *(v22 + 12) = v14;
  *(v22 + 16) = v58;
  *(v22 + 24) = v35;
  *(v22 + 28) = BYTE4(v35);
  *(v22 + 32) = v12;
  *(v22 + 36) = v10;
  *(v22 + 40) = 0;
  *(v22 + 48) = v59;
  *(v22 + 56) = v59;
  *(v22 + 64) = v49;
  *(v22 + 72) = 0;
  OUTLINED_FUNCTION_116_0();
}

void sub_25BB249C0()
{
  v1 = *(v0 + 40);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = *v0 * sqrtf(1.0 - powf(*(v0 + 8), v3));
    *(v0 + 72) = v5 / (1.0 - powf(*(v0 + 4), v4));
  }
}

uint64_t (*AdamW.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  v259 = a1;
  v233 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  v232 = v10;
  OUTLINED_FUNCTION_7();
  sub_25BCB5EFC();
  OUTLINED_FUNCTION_2();
  v230 = v12;
  v231 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_4();
  v229 = v13;
  OUTLINED_FUNCTION_7();
  v14 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v238 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_109_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_72_0();
  v254 = v3;
  sub_25BB249C0();
  v262 = a3;
  v256 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v261 = a2;
  sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BACC03C();
  v251 = v21;
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  v22 = sub_25BCB5EEC();
  v23 = __swift_project_value_buffer(v22, qword_28154BE90);
  sub_25BCB5EAC();
  v237 = v23;
  v24 = sub_25BCB5EDC();
  sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v25 = OUTLINED_FUNCTION_90();
    v26 = OUTLINED_FUNCTION_88_1(v25);
    OUTLINED_FUNCTION_111_0(&dword_25BA90000, v27, v28, v26, "Optimizing", "");
    OUTLINED_FUNCTION_89();
  }

  v29 = OUTLINED_FUNCTION_103_0();
  v30(v29);
  sub_25BCB5F2C();
  swift_allocObject();
  v239 = sub_25BCB5F1C();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v31 = v33;
  v33(v4, v14);
  OUTLINED_FUNCTION_3_12();
  v34 = OUTLINED_FUNCTION_33_3();
  sub_25BAA51C8(v34, v35);
  v36 = MEMORY[0x277D84F90];
  sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D42E78, v275, v270);
  sub_25BA9C2C8(v268);
  v276 = v270[0];
  OUTLINED_FUNCTION_67_1();
  if (!v41 & v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v38 == 0x200000000;
  }

  v264 = v8;
  if (v41)
  {
    v42 = *(v39 + 16);
    if ((v42 & 0x100000000) != 0)
    {
      *v268 = v261;
      MEMORY[0x28223BE20](v37);
      *(&v225 - 2) = v262;
      OUTLINED_FUNCTION_8_10();
      *(&v225 - 1) = swift_getWitnessTable();
      v48 = sub_25BCB68CC();
      OUTLINED_FUNCTION_1_1();
      WitnessTable = swift_getWitnessTable();
      sub_25BAB2B20(sub_25BB28258, (&v225 - 4), v48, &type metadata for Tensor, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v50);
      v258 = 0;
      v268[0] = 13;
      Tensor.init(stacking:alongAxis:scalarType:)();
      *v268 = v275[0];
      v273[0] = &unk_286D42EA0;
      Tensor.reshaped(to:)(v273, v270);

      v273[0] = v270[0];
      Tensor.sum(squeezingAxes:)(v268, &unk_286D42EC8);

      v51 = *v268;
      OUTLINED_FUNCTION_3_12();
      v52 = *(*(v51 + 16) + 160);
      v53 = OUTLINED_FUNCTION_33_3();
      sub_25BAA51C8(v53, v54);
      v274 = v36;
      LOBYTE(v272) = v52;
      v55 = OUTLINED_FUNCTION_36_2();
      sub_25BAA51C8(v55, v56);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v274, &unk_286D42EF0, &v272, v270, v273);
      sub_25BA9C2C8(v275);
      sub_25BA9C2C8(v268);
      *v268 = v51;
      v275[0] = v273[0];
      OUTLINED_FUNCTION_33_3();
      static Tensor.* infix(_:_:)();
      sqrt(_:)(v268, v270);

      v47 = *v268;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v44 = OUTLINED_FUNCTION_56(v43);
      *(v44 + 16) = xmmword_25BCBAE50;
      *(v44 + 32) = v42;
      v45 = OUTLINED_FUNCTION_33_3();
      sub_25BAA51C8(v45, v46);
      sub_25BACC1B0(MEMORY[0x277D84F90], v44, v275, v270);
      sub_25BA9C2C8(v268);
      v47 = v270[0];

      v258 = 0;
    }

    v276 = v47;
  }

  else
  {
    v258 = 0;
  }

  v57 = sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BAA1B64();
  v274 = v58;
  v59 = v251;
  if (v57 < 0)
  {
    __break(1u);
LABEL_64:

    __break(1u);
LABEL_65:
    OUTLINED_FUNCTION_21();
    v225 = 329;
    OUTLINED_FUNCTION_7_0();
    v218 = 0xD00000000000002ELL;
LABEL_67:
    sub_25BCB74CC(v213, v214, v215, v218, v216, v217, 102, 2, v225);
    __break(1u);
LABEL_68:
    memset(v268, 0, sizeof(v268));
    v269 = 22;
    OUTLINED_FUNCTION_52_1();
    sub_25BADDD28(v219, v220, v221, v222, v223, v224, 460);
  }

  v235 = v32;
  v236 = v14;
  v234 = v31;
  if (v57)
  {
    v60 = 0;
    v228 = *MEMORY[0x277D84660];
    v226 = (v264 + 1);
    v227 = (v264 + 13);
    v263 = xmmword_25BCBAE50;
    v61 = v254;
    v255 = v57;
    while (1)
    {
      sub_25BCB690C();
      v62 = *v268;

      v264 = &v225;
      MEMORY[0x28223BE20](v63);
      v64 = &v225 - 10;
      *(&v225 - 8) = v262;
      OUTLINED_FUNCTION_8_10();
      *(&v225 - 7) = swift_getWitnessTable();
      *(&v225 - 6) = *(&v62 + 1);
      *(&v225 - 5) = v61;
      *(&v225 - 4) = &v276;
      *(&v225 - 3) = v62;
      *(&v225 - 2) = &v274;

      v65 = sub_25BCB6FCC();
      if (v66)
      {
        v67 = swift_modifyAtWritableKeyPath();
        v69 = v67;
        if ((*(v68 + 8) & 1) == 0)
        {
          v70 = v68;
          v250 = v67;
          v71 = *(v61 + 36);
          v252 = v68;
          if (v71 == 1.0)
          {

            v72 = *(&v62 + 1);
          }

          else
          {
            OUTLINED_FUNCTION_3_12();
            v77 = *(*(*(&v62 + 1) + 16) + 160);
            v78 = OUTLINED_FUNCTION_33_3();
            sub_25BAA51C8(v78, v79);
            v271 = MEMORY[0x277D84F90];
            v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
            v81 = OUTLINED_FUNCTION_56(v80);
            OUTLINED_FUNCTION_18_6(v81);
            *(v82 + 32) = v71;
            LOBYTE(v267) = v77;
            v83 = OUTLINED_FUNCTION_36_2();
            sub_25BAA51C8(v83, v84);
            OUTLINED_FUNCTION_53_2();
            sub_25BA9C2C8(v275);
            sub_25BA9C2C8(v268);
            v275[0] = *(&v62 + 1);
            v270[0] = v272;

            OUTLINED_FUNCTION_36_2();
            static Tensor.* infix(_:_:)();
            v70 = v252;

            v72 = *v268;
          }

          OUTLINED_FUNCTION_64_1();
          v251 = v59;
          if (!v41 & v40)
          {
            *v268 = v72;
          }

          else
          {
            v86 = *(v61 + 16);
            v87 = *(v61 + 24) | (v85 << 32);
            if (HIDWORD(v87))
            {
              v88 = v276;
              OUTLINED_FUNCTION_3_12();
              if (HIDWORD(v87) == 1)
              {
                v89 = *(*(v72 + 16) + 160);
                v90 = OUTLINED_FUNCTION_33_3();
                sub_25BAA51C8(v90, v91);
                v271 = MEMORY[0x277D84F90];
                v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v93 = OUTLINED_FUNCTION_56(v92);
                OUTLINED_FUNCTION_18_6(v93);
                *(v94 + 32) = v86;
                LOBYTE(v267) = v89;
                v95 = OUTLINED_FUNCTION_36_2();
                sub_25BAA51C8(v95, v96);

                OUTLINED_FUNCTION_53_2();
                sub_25BA9C2C8(v275);
                sub_25BA9C2C8(v268);
                v97 = v272;
                v275[0] = v72;
                Tensor.squared()();
                v270[0] = *v268;
                v272 = &unk_286D42F18;
                Tensor.reshaped(to:)(&v272, v275);

                v257 = v88;
                v270[0] = v275[0];
                Tensor.sum(squeezingAxes:)(&v272, &unk_286D42F40);

                sqrt(_:)(v268, &v272);

                v98 = *v268;
                v275[0] = v72;
                *v268 = v97;
                v270[0] = v98;
                v272 = v97;
                max(_:_:)();
                static Tensor./ infix(_:_:)();

                OUTLINED_FUNCTION_36_2();
                static Tensor.* infix(_:_:)();
              }

              else
              {
                v99 = *(*(v72 + 16) + 160);
                v100 = OUTLINED_FUNCTION_33_3();
                sub_25BAA51C8(v100, v101);
                v271 = MEMORY[0x277D84F90];
                v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v103 = OUTLINED_FUNCTION_56(v102);
                OUTLINED_FUNCTION_18_6(v103);
                *(v104 + 32) = v87;
                LOBYTE(v267) = v99;
                v105 = OUTLINED_FUNCTION_36_2();
                sub_25BAA51C8(v105, v106);

                OUTLINED_FUNCTION_53_2();
                sub_25BA9C2C8(v275);
                sub_25BA9C2C8(v268);
                *v268 = v72;
                v275[0] = v272;
                OUTLINED_FUNCTION_33_3();
                static Tensor.* infix(_:_:)();
                *v268 = v88;
                LOBYTE(v272) = *(*(v72 + 16) + 160);
                v107 = v232;
                v108 = v233;
                (*v227)(v232, v228, v233);
                Tensor.cast(to:roundingRule:)();
                (*v226)(v107, v108);
                v272 = v275[0];
                static Tensor./ infix(_:_:)();
              }

              v61 = v254;
              v70 = v252;
            }

            else
            {
              v275[0] = v72;
              Tensor.clamped(to:)(v268, *&v86, *(&v86 + 1));
              v70 = v252;

              v61 = v254;
            }
          }

          v109 = *(*v70 + 32);
          if ((~v109 & 0xF000000000000007) == 0)
          {
            goto LABEL_65;
          }

          v248 = *(&v62 + 1);
          if ((v109 & 0x8000000000000000) == 0)
          {
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_7_0();
            goto LABEL_67;
          }

          v242 = v60;
          v110 = *v268;
          v111 = v109 & 0x7FFFFFFFFFFFFFFFLL;
          v112 = *(v61 + 40);
          v257 = *v268;
          v249 = v109;
          if (v112)
          {
            v113 = sub_25BAB3020(v109);
            v117 = OUTLINED_FUNCTION_91_0(v113, v114, v115, v116);

            v118 = v117;
            v119 = OptimizerStateDictionary.subscript.getter(v62, v117);
            v123 = *v268;
            if (!*v268)
            {
              goto LABEL_68;
            }

            v124 = v254;
            v110 = v257;
          }

          else
          {
            *v268 = *(v61 + 48);
            v125 = sub_25BAB3020(v109);
            v118 = OUTLINED_FUNCTION_91_0(v125, v126, v127, v128);

            v119 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v118, v275);
            v124 = v61;
            v123 = v275[0];
          }

          v241 = v118;
          *v268 = *(v124 + 56);
          OUTLINED_FUNCTION_91_0(v119, v120, v121, v122);
          v240 = v111;
          OptimizerStateDictionary.subscript.getter(sub_25BB28290, v118, &v272);
          v129 = *(v124 + 4);
          OUTLINED_FUNCTION_3_12();
          v130 = *(*(v110 + 16) + 160);
          v131 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v131, v132);
          v133 = MEMORY[0x277D84F90];
          v267 = MEMORY[0x277D84F90];
          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v135 = OUTLINED_FUNCTION_56(v134);
          OUTLINED_FUNCTION_18_6(v135);
          *(v136 + 32) = 1.0 - v129;
          LOBYTE(v266) = v130;
          v137 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v137, v138);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v275);
          sub_25BA9C2C8(v268);
          v139 = v271;
          OUTLINED_FUNCTION_3_12();
          v140 = *(*(v110 + 16) + 160);
          v141 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v141, v142);
          v267 = v133;
          v143 = OUTLINED_FUNCTION_56(v134);
          OUTLINED_FUNCTION_18_6(v143);
          *(v144 + 32) = v129;
          LOBYTE(v266) = v140;
          v145 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v145, v146);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v275);
          sub_25BA9C2C8(v268);
          v246 = v271;
          *v268 = v271;
          v275[0] = v123;

          OUTLINED_FUNCTION_33_3();
          static Tensor.* infix(_:_:)();

          v247 = v139;
          *v268 = v139;
          v275[0] = v110;
          OUTLINED_FUNCTION_33_3();
          static Tensor.* infix(_:_:)();
          static Tensor.+ infix(_:_:)();

          v253 = *v268;
          v147 = *(v124 + 8);
          OUTLINED_FUNCTION_3_12();
          v148 = *(*(v110 + 16) + 160);
          v149 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v149, v150);
          v267 = v133;
          v151 = OUTLINED_FUNCTION_56(v134);
          OUTLINED_FUNCTION_18_6(v151);
          *(v152 + 32) = 1.0 - v147;
          LOBYTE(v266) = v148;
          v153 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v153, v154);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v275);
          sub_25BA9C2C8(v268);
          v155 = v271;
          OUTLINED_FUNCTION_3_12();
          v156 = *(*(v110 + 16) + 160);
          v157 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v157, v158);
          v267 = v133;
          v245 = v134;
          v159 = OUTLINED_FUNCTION_56(v134);
          OUTLINED_FUNCTION_18_6(v159);
          *(v160 + 32) = v147;
          LOBYTE(v266) = v156;
          v161 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v161, v162);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v275);
          sub_25BA9C2C8(v268);
          v243 = v271;
          *v268 = v271;
          v275[0] = v272;

          OUTLINED_FUNCTION_33_3();
          static Tensor.* infix(_:_:)();

          v244 = v155;
          *v268 = v155;
          v275[0] = v110;
          Tensor.squared()();
          static Tensor.* infix(_:_:)();

          static Tensor.+ infix(_:_:)();

          v163 = v124;
          v164 = v110;
          v165 = v241;
          v60 = v242;
          if (*(v124 + 64))
          {
            v275[0] = *(v124 + 64);
            OptimizerStateDictionary.subscript.getter(v62, v241);
            if (*v268)
            {
              v275[0] = *v268;
              v270[0] = v272;

              OUTLINED_FUNCTION_36_2();
              max(_:_:)();

              v163 = v254;

              v272 = *v268;
              if (*(v163 + 64))
              {

                OptimizerStateDictionary.subscript.setter(v268, v62, v165);
              }

              v164 = v257;
            }
          }

          v166 = v253;
          *v268 = v253;

          OptimizerStateDictionary.subscript.setter(v268, v62, v165);
          *v268 = v272;

          OptimizerStateDictionary.subscript.setter(v268, v62, v165);
          v167 = *(v163 + 12);
          OUTLINED_FUNCTION_3_12();
          v168 = *(*(v164 + 16) + 160);
          v169 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v169, v170);
          v267 = MEMORY[0x277D84F90];
          v171 = v245;
          v172 = OUTLINED_FUNCTION_56(v245);
          OUTLINED_FUNCTION_18_6(v172);
          *(v173 + 32) = v167;
          LOBYTE(v266) = v168;
          v174 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v174, v175);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v275);
          sub_25BA9C2C8(v268);
          v176 = v271;
          sub_25BB25FB8(v166, *(v163 + 72));
          v275[0] = v272;

          sqrt(_:)(v270, v275);

          v275[0] = v176;
          static Tensor.+ infix(_:_:)();

          static Tensor./ infix(_:_:)();

          v177 = *(v163 + 32);
          if (v177 == 0.0)
          {
            v178 = v271;
            v179 = v240;
          }

          else
          {
            v180 = v177 * *v163;
            OUTLINED_FUNCTION_3_12();
            v181 = *(*(v164 + 16) + 160);
            v182 = OUTLINED_FUNCTION_33_3();
            sub_25BAA51C8(v182, v183);
            v266 = MEMORY[0x277D84F90];
            v184 = OUTLINED_FUNCTION_56(v171);
            *(v184 + 16) = v263;
            *(v184 + 32) = v180;
            v265 = v181;
            v185 = OUTLINED_FUNCTION_36_2();
            sub_25BAA51C8(v185, v186);
            Tensor.init(shape:coercingScalars:scalarType:on:)(&v266, v184, &v265, v270, &v267);
            sub_25BA9C2C8(v275);
            sub_25BA9C2C8(v268);
            v275[0] = v267;
            v179 = v240;
            v270[0] = v240;
            OUTLINED_FUNCTION_36_2();
            static Tensor.* infix(_:_:)();
            v270[0] = v271;
            v267 = *v268;
            static Tensor.+ infix(_:_:)();

            v178 = v275[0];
            v271 = v275[0];
          }

          v275[0] = v179;
          v270[0] = v178;

          OUTLINED_FUNCTION_36_2();
          static Tensor.- infix(_:_:)();

          v187 = *v268;
          v188 = v274;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45_3();
            v188 = v195;
          }

          v57 = v255;
          v190 = *(v188 + 16);
          v189 = *(v188 + 24);
          v64 = (v190 + 1);
          if (v190 >= v189 >> 1)
          {
            OUTLINED_FUNCTION_13_5(v189);
            sub_25BAA1B64();
            v188 = v196;
          }

          *(v188 + 16) = v64;
          *(v188 + 8 * v190 + 32) = v187;
          v274 = v188;
          *v268 = v187;

          Parameter.wrappedValue.setter(v268);

          sub_25BAB310C(v249);

          v61 = v254;
          v69 = v250;
          v59 = v251;
        }

        v69(v273, 0);
      }

      else
      {
        MEMORY[0x28223BE20](v65);
        OUTLINED_FUNCTION_70_1();
        v74 = *(v73 + 24);
        *(v75 - 48) = v256;
        *(v75 - 40) = v74;
        *(v75 - 32) = v76;
        *(v75 - 24) = sub_25BACC670;
        *(v75 - 16) = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v64 = v258;
        sub_25BAB2F30();
        if (v64)
        {
          goto LABEL_64;
        }

        v258 = 0;

        v57 = v255;
      }

      v191 = sub_25BAC4018();
      v192 = *(v59 + 16);
      OUTLINED_FUNCTION_95_0();
      if (v40)
      {
        OUTLINED_FUNCTION_13_5(v193);
        sub_25BACC03C();
        v59 = v194;
      }

      ++v60;

      *(v59 + 16) = v64;
      *(v59 + 8 * v192 + 32) = v191;
      if (v57 == v60)
      {
        goto LABEL_58;
      }
    }
  }

  v61 = v254;
LABEL_58:
  v197 = sub_25BCB5EDC();
  v198 = v238;
  sub_25BCB5F0C();
  v199 = sub_25BCB6D4C();
  v200 = sub_25BCB6E1C();
  v201 = v236;
  if (v200)
  {
    v251 = v59;

    sub_25BCB5F3C();

    v202 = OUTLINED_FUNCTION_48_2();
    if (v203(v202) != *MEMORY[0x277D85B00])
    {
      v204 = OUTLINED_FUNCTION_74_0();
      v205(v204);
    }

    *OUTLINED_FUNCTION_90() = 0;
    v206 = sub_25BCB5E9C();
    OUTLINED_FUNCTION_61_0(&dword_25BA90000, v207, v199, v206, "Optimizing");
    OUTLINED_FUNCTION_89();
  }

  v234(v198, v201);
  v208 = v274;

  v209 = sub_25BACED8C();
  *v268 = 1;
  *&v268[8] = v209;
  Array<A>.resolve(descriptor:)(v268, v208);

  OUTLINED_FUNCTION_8_10();
  v210 = v262;
  v211 = swift_getWitnessTable();
  nullsub_1();
  return sub_25BA9B48C(v61, v210, v211);
}

uint64_t sub_25BB25F7C(uint64_t a1)
{
  v2 = a1;

  return Tensor.init(zerosLike:)(&v2);
}

uint64_t sub_25BB25FB8(uint64_t a1, float a2)
{
  v10[0] = a1;
  Tensor.scalarType.getter(a1);
  (*(v4 + 32))(v9);
  v5 = LOBYTE(v9[0]);
  v6 = sub_25BAA80BC(0xAu, &unk_286D42270);
  if (v6 && (v6 = sub_25BAA80BC(v5, &unk_286D427E8)) || v5 == 12)
  {
    OUTLINED_FUNCTION_92_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = a2;
    sub_25BAA51C8(v10, v9);
    sub_25BC78BA0(MEMORY[0x277D84F90], inited, v9, &v11);
    sub_25BA9C2C8(v10);
  }

  else
  {
    v9[3] = MEMORY[0x277D83A90];
    v9[4] = &protocol witness table for Float;
    *v9 = a2;
    v10[8] = a1;
    Tensor.scalarType.getter(v6);
    OUTLINED_FUNCTION_92_1();
    Tensor.init(coercing:scalarType:on:)();
  }

  v10[0] = v11;
  v9[0] = a1;
  static Tensor.* infix(_:_:)();
}

unint64_t sub_25BB26124()
{
  v0 = sub_25BCB761C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB26174(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0x3161746562;
      break;
    case 2:
      result = 0x3261746562;
      break;
    case 3:
      result = 0x6E6F6C69737065;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x6544746867696577;
      break;
    case 6:
      result = 0x746E656964617267;
      break;
    case 7:
      result = 0x6D6F4D7473726966;
      break;
    case 8:
      result = 0x6F4D646E6F636573;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6F69746172657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB262D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *a3;
  if (*(v4 + 40))
  {
    v9 = *a3;
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    v12 = type metadata accessor for OptimizerStateDictionary(0, v10, v11, a4);
    OptimizerStateDictionary.subscript.getter(a1, v12);
    v14 = v66;
    if (!v66)
    {
      memset(v71, 0, 28);
      v70 = 0u;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v71[28] = 22;
      sub_25BADDD28("update(_:parameter:gradient:)", 29, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Optimizers/MomentumBased.swift", 106, 2, 460);
    }

    v15 = v12;
    v8 = v9;
  }

  else
  {
    *&v66 = *(v4 + 48);
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    v15 = type metadata accessor for OptimizerStateDictionary(0, v10, v11, a4);
    OptimizerStateDictionary.subscript.getter(sub_25BB28290, v15, v64);
    v14 = v64[0];
  }

  *&v66 = *(v4 + 56);
  type metadata accessor for OptimizerStateDictionary(0, v10, v11, v13);
  OptimizerStateDictionary.subscript.getter(sub_25BB28290, v15, &v65);
  v16 = *(v4 + 4);
  LODWORD(v69) = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v17 = v15;
  v18 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v66, v64);
  v62 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v19 = swift_allocObject();
  sub_25BACD7C4(v19, 1);
  *v20 = 1.0 - v16;
  nullsub_1();
  v22 = v21;
  LOBYTE(v60) = v18;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v22, &v60, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v66);
  v23 = v63;
  LODWORD(v69) = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v24 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v66, v64);
  v62 = sub_25BACD7D8(0);
  v25 = swift_allocObject();
  sub_25BACD7C4(v25, 1);
  *v26 = v16;
  nullsub_1();
  v28 = v27;
  LOBYTE(v60) = v24;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v28, &v60, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v66);
  *&v66 = v63;
  v64[0] = v14;

  static Tensor.* infix(_:_:)();

  *&v66 = v23;
  v64[0] = v8;
  static Tensor.* infix(_:_:)();
  static Tensor.+ infix(_:_:)();

  v29 = v66;
  v30 = *(v5 + 8);
  LODWORD(v69) = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v31 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v66, v64);
  v62 = sub_25BACD7D8(0);
  v32 = swift_allocObject();
  sub_25BACD7C4(v32, 1);
  *v33 = 1.0 - v30;
  nullsub_1();
  v35 = v34;
  LOBYTE(v60) = v31;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v35, &v60, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v66);
  v36 = v63;
  LODWORD(v69) = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v37 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v66, v64);
  v62 = sub_25BACD7D8(0);
  v38 = swift_allocObject();
  sub_25BACD7C4(v38, 1);
  *v39 = v30;
  nullsub_1();
  v41 = v40;
  LOBYTE(v60) = v37;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v41, &v60, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v66);
  *&v66 = v63;
  v64[0] = v65;

  static Tensor.* infix(_:_:)();

  *&v66 = v36;
  v64[0] = v8;
  Tensor.squared()();
  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  if (*(v5 + 64))
  {
    v64[0] = *(v5 + 64);
    OptimizerStateDictionary.subscript.getter(a1, v17);
    if (v66)
    {
      v64[0] = v66;
      v61[0] = v65;

      max(_:_:)();

      v65 = v66;
      if (*(v5 + 64))
      {

        OptimizerStateDictionary.subscript.setter(&v66, a1, v17);
      }
    }
  }

  *&v66 = v29;

  OptimizerStateDictionary.subscript.setter(&v66, a1, v17);
  *&v66 = v65;

  OptimizerStateDictionary.subscript.setter(&v66, a1, v17);
  v42 = *(v5 + 12);
  LODWORD(v69) = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v43 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v66, v64);
  v62 = sub_25BACD7D8(0);
  v44 = swift_allocObject();
  sub_25BACD7C4(v44, 1);
  *v45 = v42;
  nullsub_1();
  v47 = v46;
  LOBYTE(v60) = v43;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v47, &v60, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v66);
  v48 = v63;
  sub_25BB25FB8(v29, *(v5 + 72));
  v64[0] = v65;

  sqrt(_:)(v61, v64);

  v64[0] = v48;
  static Tensor.+ infix(_:_:)();

  static Tensor./ infix(_:_:)();

  v49 = *(v5 + 32);
  if (v49 == 0.0)
  {
    v50 = v63;
    v51 = v7;
  }

  else
  {
    v52 = v49 * *v5;
    LODWORD(v69) = 0;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v53 = *(*(v8 + 16) + 160);
    sub_25BAA51C8(&v66, v64);
    v60 = sub_25BACD7D8(0);
    v54 = swift_allocObject();
    sub_25BACD7C4(v54, 1);
    *v55 = v52;
    nullsub_1();
    v57 = v56;
    v59 = v53;
    sub_25BAA51C8(v64, v61);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v60, v57, &v59, v61, &v62);
    sub_25BA9C2C8(v64);
    sub_25BA9C2C8(&v66);
    v64[0] = v62;
    v51 = v7;
    v61[0] = v7;
    static Tensor.* infix(_:_:)();
    v61[0] = v63;
    v62 = v66;
    static Tensor.+ infix(_:_:)();

    v50 = v64[0];
  }

  *&v66 = v51;
  v64[0] = v50;

  static Tensor.- infix(_:_:)();
}

uint64_t sub_25BB26BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB26C30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB26C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB26D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25BB26D7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB26124();
  *a1 = result;
  return result;
}

uint64_t sub_25BB26DCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25BB26E10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB26170();
  *a1 = result;
  return result;
}

uint64_t sub_25BB26E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB26EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void AdamW.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_119_0();
  v5 = v4;
  v7 = v6;
  v56 = v8;
  type metadata accessor for AdamW.CodingKeys(255, v4, v9, v10);
  OUTLINED_FUNCTION_44_1();
  WitnessTable = swift_getWitnessTable();
  v57 = OUTLINED_FUNCTION_62_0(WitnessTable);
  OUTLINED_FUNCTION_2();
  v55 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v79 = v7;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v58 = v15;
  OUTLINED_FUNCTION_35_1();
  sub_25BCB7B2C();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v16 = v56;
    v54 = v5;
    LOBYTE(v60) = 0;
    OUTLINED_FUNCTION_76_0(&v60);
    v18 = v17;
    OUTLINED_FUNCTION_15_6(10);
    v19 = sub_25BCB769C();
    OUTLINED_FUNCTION_15_6(1);
    sub_25BCB768C();
    v21 = v20;
    OUTLINED_FUNCTION_15_6(2);
    sub_25BCB768C();
    v23 = v22;
    OUTLINED_FUNCTION_15_6(3);
    sub_25BCB768C();
    v25 = v24;
    OUTLINED_FUNCTION_15_6(6);
    sub_25BCB768C();
    v27 = v26;
    OUTLINED_FUNCTION_15_6(5);
    sub_25BCB768C();
    v29 = v28;
    LOBYTE(v59[0]) = 4;
    sub_25BB278BC();
    OUTLINED_FUNCTION_87_0(&type metadata for GradientClippingMode, v59);
    v52 = v60;
    v51 = v62;
    v50 = v61;
    v30 = OUTLINED_FUNCTION_108_0();
    v34 = type metadata accessor for OptimizerStateDictionary(v30, v31, v32, v33);
    LOBYTE(v59[0]) = 7;
    OUTLINED_FUNCTION_10_6();
    swift_getWitnessTable();
    v53 = v34;
    sub_25BCB76AC();
    v35 = v60;
    LOBYTE(v59[0]) = 8;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB76AC();
    v49 = v60;
    v75 = 9;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB765C();
    v36 = v50 | (v51 << 32);
    v37 = OUTLINED_FUNCTION_14_9();
    v38(v37);
    v39 = v76;
    v57 = v76;

    v59[0] = __PAIR64__(v21, v18);
    v59[1] = __PAIR64__(v25, v23);
    v40 = v52;
    v59[2] = v52;
    v58 = HIDWORD(v36);
    BYTE4(v59[3]) = BYTE4(v36);
    LODWORD(v59[3]) = v36;
    *(&v59[3] + 5) = v77;
    HIBYTE(v59[3]) = v78;
    v59[4] = __PAIR64__(v27, v29);
    v59[5] = v19;
    v59[6] = v35;
    v41 = v49;
    v59[7] = v49;
    v59[8] = v39;
    LODWORD(v59[9]) = 0;
    memcpy(v16, v59, 0x4CuLL);
    v42 = OUTLINED_FUNCTION_108_0();
    type metadata accessor for AdamW(v42, v43, v44, v45);
    OUTLINED_FUNCTION_69_0();
    v47 = v46;
    (*(v46 + 16))(&v60, v59, v39);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v60 = __PAIR64__(v21, v18);
    v61 = v23;
    v62 = v25;
    v63 = v40;
    v65 = v58;
    v64 = v36;
    v66 = v77;
    v67 = v78;
    v68 = v29;
    v69 = v27;
    v70 = v19;
    v71 = v35;
    v72 = v41;
    v73 = v57;
    v74 = 0;
    (*(v47 + 8))(&v60, v39);
  }

  OUTLINED_FUNCTION_117_1();
}

void AdamW.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_119_0();
  v40 = v5;
  v7 = v6;
  v9 = OUTLINED_FUNCTION_93_1(v6, v8);
  v13 = type metadata accessor for AdamW.CodingKeys(v9, v10, v11, v12);
  OUTLINED_FUNCTION_44_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_110_0(WitnessTable);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = *(v4 + 16);
  v37 = *(v4 + 28);
  v38 = v20;
  v36 = *(v4 + 24);
  v21 = *(v4 + 48);
  v39 = *(v4 + 40);
  v22 = *(v4 + 64);
  v32 = *(v4 + 56);
  v33 = v21;
  v31 = v22;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  OUTLINED_FUNCTION_60_0();
  LOBYTE(v41) = 0;
  v23 = v40;
  sub_25BCB777C();
  if (v23)
  {
    (*(v16 + 8))(v19, v13);
  }

  else
  {
    v24 = v36;
    v25 = v37;
    v26 = v38;
    LOBYTE(v41) = 10;
    OUTLINED_FUNCTION_39_4();
    sub_25BCB778C();
    OUTLINED_FUNCTION_79_0(1);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(2);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(3);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(6);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(5);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v41 = v26;
    v42 = v24;
    v43 = (v24 | (v25 << 32)) >> 32;
    sub_25BB2797C();
    OUTLINED_FUNCTION_39_4();
    sub_25BCB773C();
    v41 = v33;
    type metadata accessor for OptimizerStateDictionary(0, v34, v35, v27);
    sub_25BCB617C();
    OUTLINED_FUNCTION_12_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_112_0(v28, v29, v30);

    v41 = v32;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB779C();

    v41 = v31;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB773C();

    (*(v16 + 8))(v26, v13);
  }

  OUTLINED_FUNCTION_117_1();
}

unint64_t sub_25BB27868()
{
  result = qword_27FBB4240;
  if (!qword_27FBB4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4240);
  }

  return result;
}

unint64_t sub_25BB278BC()
{
  result = qword_27FBB4248;
  if (!qword_27FBB4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4248);
  }

  return result;
}

unint64_t sub_25BB27928()
{
  result = qword_27FBB4250;
  if (!qword_27FBB4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4250);
  }

  return result;
}

unint64_t sub_25BB2797C()
{
  result = qword_27FBB4258[0];
  if (!qword_27FBB4258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB4258);
  }

  return result;
}

uint64_t sub_25BB27A64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB27AA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB27ADC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB27B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25BB27B70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_25BB27BB0(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_25BB27BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB27C40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_25BB27C80(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_25BB27CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB27D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 76))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_25BB27D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB27DAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB27E34(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DotNodeShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB27F88(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB28374()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_20_3();
  v4 = v3 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, v0);
  if (v4)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v9, v10, v0);
  if (v4)
  {
    v11 = MEMORY[0x25F8779B0](1, v0);
  }

  else
  {
    v11 = *(v0 + 40);
  }

  v12 = v11;
  if (*(v2 + 56) == 1)
  {
    OUTLINED_FUNCTION_25_5();
    sub_25BCB617C();

    MEMORY[0x25F876C90](0x6172745F73686C5FLL, 0xEE0065736F70736ELL);
    OUTLINED_FUNCTION_21_4();
    v19 = sub_25BB2B84C(v13, v14, v15, v16, v17, v1, v18);

    v8 = v19;
  }

  if (*(v2 + 57) == 1)
  {
    OUTLINED_FUNCTION_25_5();
    sub_25BCB617C();

    MEMORY[0x25F876C90](0x6172745F7368725FLL, 0xEE0065736F70736ELL);
    OUTLINED_FUNCTION_21_4();
    v26 = sub_25BB2B84C(v20, v21, v22, v23, v24, v1, v25);

    v12 = v26;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v28 = OUTLINED_FUNCTION_5(v27);
  *(v28 + 16) = xmmword_25BCBB6D0;
  v29 = *(v2 + 24);
  v30 = *(v2 + 32);
  sub_25BCB617C();
  v31 = OUTLINED_FUNCTION_16_2();
  *(v28 + 32) = sub_25BB07CA4(v31, v32, v29, v30, v1, v33);

  return v28;
}

unint64_t sub_25BB2856C()
{
  sub_25BB2B624(v0, v2);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  sub_25BB2B680(v2);
  return 0;
}

double sub_25BB285B4()
{
  sub_25BB2B624(v0, &v16);
  if (v17 >= 3)
  {
    sub_25BA97060(&v16, v15);
    sub_25BAC27B0(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      v1 = *&v4;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD000000000000025, 0x800000025BCDA730);
        sub_25BCB73CC();
        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        BYTE4(v13) = 9;
        sub_25BCB617C();
        sub_25BA97890("mpsConstantOrDefault", 20, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift", 108, 2, 52, v3, 0, 0xE000000000000000, 0, 0xE000000000000000, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14[0], v14[1], v14[2]);
      }

      __swift_destroy_boxed_opaque_existential_1(v15);
      v1 = v4;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_25BB2B680(&v16);
    return 0.0;
  }

  return v1;
}

uint64_t sub_25BB28758()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = v1 + 32;
    do
    {
      v4 += 16;
      sub_25BCB6A6C();
      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_25BB28800()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = v1 + 40;
    do
    {
      v4 += 16;
      sub_25BCB6A6C();
      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

__n128 *sub_25BB288A8()
{
  OUTLINED_FUNCTION_20_3();
  v4 = v3 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, v0);
  if (v4)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = v7;
  sub_25BB2856C();
  sub_25BB28758();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v9 = sub_25BCB672C();

  sub_25BB28800();
  v10 = sub_25BCB672C();

  v11 = sub_25BB285B4();
  v13 = *(v2 + 24);
  v12 = *(v2 + 32);
  sub_25BCB617C();
  v14 = OUTLINED_FUNCTION_16_2();
  sub_25BB2B578(v14, v15, v9, v10, v13, v12, v1, v11);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v17 = OUTLINED_FUNCTION_5(v16);
  return OUTLINED_FUNCTION_12_6(v17, xmmword_25BCBB6D0);
}

uint64_t sub_25BB28A00(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a2 & 0xC000000000000001;
  v7 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v7, v8, a2);
  if (v6)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v11, v12, a2);
  if (v6)
  {
    v13 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v13 = *(a2 + 40);
  }

  v14 = v13;
  v15 = sub_25BB2856C();
  sub_25BB28758();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v16 = sub_25BCB672C();

  sub_25BB28800();
  v17 = sub_25BCB672C();

  v19 = *(v3 + 24);
  v18 = *(v3 + 32);
  sub_25BCB617C();
  v20 = sub_25BB2B7A8(v10, v14, v15, v16, v17, v19, v18, a1);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v22 = OUTLINED_FUNCTION_5(v21);
  *(v22 + 16) = xmmword_25BCBB6D0;
  *(v22 + 32) = v20;

  return v22;
}

void *sub_25BB28BA0()
{
  v1 = [objc_opt_self() descriptorWithKernelWidth:*(v0 + 56) kernelHeight:*(v0 + 48) strideInX:*(v0 + 72) strideInY:*(v0 + 64) dilationRateInX:1 dilationRateInY:1 paddingLeft:*(v0 + 88) paddingRight:*(v0 + 88) paddingTop:*(v0 + 80) paddingBottom:*(v0 + 80) paddingStyle:0 dataLayout:0];
  if (!v1)
  {
    if (*(v0 + 169))
    {
      v5 = xmmword_25BCBDF50;
      v6 = "mpsPooling2DOpDescriptor";
      v7 = 2;
      v8 = 24;
      v9 = 108;
      v10 = 2;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift";
    }

    else
    {
      v7 = *(v0 + 128);
      v11 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = *(v0 + 168);
      v6 = *(v0 + 152);
      v8 = *(v0 + 160);
      v5 = *(v0 + 136);
      *v12 = *(v0 + 129);
      *&v12[3] = *(v0 + 132);
    }

    v13[0] = v11;
    v13[1] = v9;
    v14 = v7;
    *v15 = *v12;
    *&v15[3] = *&v12[3];
    v16 = v5;
    v17 = v6;
    v18 = v8;
    v19 = v10;
    sub_25BB28D60(v13);
  }

  v2 = v1;
  if (*v0 == _TtC14NeuralNetworks22Average2DPoolOperation)
  {
    v3 = 192;
LABEL_6:
    [v1 setIncludeZeroPadToAverage_];
    goto LABEL_7;
  }

  if (*v0 == _TtC14NeuralNetworks30Average2DPoolGradientOperation)
  {
    v3 = 184;
    goto LABEL_6;
  }

LABEL_7:
  [v2 setReturnIndicesMode_];
  return v2;
}

void sub_25BB28D60(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x25F876C90](0x20646E656B636142, 0xED0000726F727265);
  OUTLINED_FUNCTION_122_1();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = sub_25BB2B338(v3, v4, v2);
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](2606, 0xE200000000000000);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](0xD00000000000006DLL, 0x800000025BCD9370);
  OUTLINED_FUNCTION_18_7("Fatal error", v6, v7, v11, v12, v8, v9, v10, v1, 0);
  __break(1u);
}

void sub_25BB28E60(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x25F876C90](0xD000000000000015, 0x800000025BCDA8E0);
  OUTLINED_FUNCTION_122_1();
  v5 = sub_25BB2B338(v1, v2, v4);
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](2606, 0xE200000000000000);
  MEMORY[0x25F876C90](0xD00000000000006DLL, 0x800000025BCD9370);
  OUTLINED_FUNCTION_18_7("Fatal error", v6, v7, v11, v12, v8, v9, v10, v3, 0);
  __break(1u);
}

__n128 *sub_25BB28F78(void *a1, uint64_t a2, SEL *a3)
{
  v7 = a2 & 0xC000000000000001;
  v8 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v8, v9, a2);
  if (v7)
  {
    v10 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = v10;
  v12 = sub_25BB28BA0();
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_25BCB617C();
  v15 = OUTLINED_FUNCTION_16_2();
  sub_25BB07CA4(v15, v16, v14, v13, a1, a3);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v18 = OUTLINED_FUNCTION_5(v17);
  return OUTLINED_FUNCTION_12_6(v18, xmmword_25BCBB6D0);
}

__n128 *sub_25BB29060(void *a1, uint64_t a2, SEL *a3)
{
  v7 = a2 & 0xC000000000000001;
  v8 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v8, v9, a2);
  if (v7)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = v10;
  v12 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v12, v13, a2);
  if (v7)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v14 = *(a2 + 40);
  }

  v15 = v14;
  v16 = sub_25BB28BA0();
  v18 = *(v3 + 24);
  v17 = *(v3 + 32);
  sub_25BCB617C();
  v19 = OUTLINED_FUNCTION_16_2();
  sub_25BB2B84C(v19, v20, v16, v18, v17, a1, a3);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v22 = OUTLINED_FUNCTION_5(v21);
  return OUTLINED_FUNCTION_12_6(v22, xmmword_25BCBB6D0);
}

uint64_t sub_25BB29178(void *a1, id *a2)
{
  v6 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v6, v7, a2);
  if (v2)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = a2[4];
  }

  v9 = v8;
  v10 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v10, v11, a2);
  if (v2)
  {
    v12 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v12 = a2[5];
  }

  v13 = v12;
  if (v3[7])
  {
    v14 = OUTLINED_FUNCTION_0_15();
    sub_25BAB4D78(v14, v15, a2);
    if (v2)
    {
      v16 = MEMORY[0x25F8779B0](2, a2);
    }

    else
    {
      v16 = a2[6];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = OUTLINED_FUNCTION_11_11();
  sub_25BB29534(v18, v19);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_21_4();
  v26 = sub_25BB2B84C(v20, v21, v22, v23, v24, a1, v25);
  if (!v17)
  {
    sub_25BB29534(0x7261656E696CLL, 0xE600000000000000);
    OUTLINED_FUNCTION_4_13();
    v50 = sub_25BB07CA4(v9, v26, v48, v49, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v52 = OUTLINED_FUNCTION_5(v51);
    *(v52 + 16) = xmmword_25BCBB6D0;
    *(v52 + 32) = v50;
    v53 = v26;
    v37 = v9;
    v43 = v13;
    goto LABEL_31;
  }

  v27 = *(v3[5] + 152);
  v58 = v13;
  v59 = v9;
  if (v27[2] < 3uLL || v27[4] <= 1 || (v28 = v27[5], v28 < 1))
  {
    v29 = v9;
    goto LABEL_19;
  }

  v29 = v9;
  if (v28 > 0x20)
  {
LABEL_19:
    v34 = 0;
    goto LABEL_20;
  }

  sub_25BB29534(0x6C665F7475706E69, 0xEF64656E65747461);
  OUTLINED_FUNCTION_4_13();
  v32 = v26;
  v33 = sub_25BB07CA4(v29, -1, v30, v31, a1, &selRef_flatten2DTensor_axis_name_);

  v34 = 1;
  v29 = v33;
  v26 = v32;
LABEL_20:
  sub_25BB29534(0x6C756D74616DLL, 0xE600000000000000);
  OUTLINED_FUNCTION_4_13();
  v56 = v29;
  v57 = v26;
  v37 = sub_25BB07CA4(v29, v26, v35, v36, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
  if (v34)
  {
    v38 = 0x6D5F646573616962;
  }

  else
  {
    v38 = 0x7261656E696CLL;
  }

  if (v34)
  {
    v39 = 0xED00006C756D7461;
  }

  else
  {
    v39 = 0xE600000000000000;
  }

  v40 = sub_25BB29534(v38, v39);
  v42 = v41;

  v43 = sub_25BB07CA4(v37, v17, v40, v42, a1, &selRef_additionWithPrimaryTensor_secondaryTensor_name_);
  sub_25BAF99E8(v3[8]);
  if (v34)
  {
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v44 = sub_25BCB672C();

    sub_25BB29534(0x7261656E696CLL, 0xE600000000000000);
    OUTLINED_FUNCTION_4_13();
    v47 = sub_25BB07CA4(v43, v44, v45, v46, a1, &selRef_reshapeTensor_withShape_name_);
  }

  else
  {

    v47 = v43;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v52 = OUTLINED_FUNCTION_5(v54);
  *(v52 + 16) = xmmword_25BCBB6D0;
  *(v52 + 32) = v47;

  v53 = v59;
LABEL_31:

  return v52;
}

uint64_t sub_25BB29534(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  sub_25BCB617C();
  MEMORY[0x25F876C90](95, 0xE100000000000000);
  MEMORY[0x25F876C90](a1, a2);
  return v6;
}

uint64_t sub_25BB295B0(void *a1, uint64_t a2)
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
  v10 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v10, v11, a2);
  if (v5)
  {
    v12 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v12 = *(a2 + 40);
  }

  v48 = v12;
  sub_25BAB4D78(2uLL, v5 == 0, a2);
  if (v5)
  {
    v13 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v13 = *(a2 + 48);
  }

  v14 = v13;
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_4_13();
  v17 = sub_25BB07CA4(v9, v14, v15, v16, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
  v47 = v14;
  if (*(*(v2[5] + 152) + 16) == 2)
  {
    v18 = v9;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v20 = OUTLINED_FUNCTION_31(v19);
    *(v20 + 16) = xmmword_25BCBAE40;
    *(v20 + 32) = sub_25BCB6A6C();
    result = sub_25BB731F4(*(v2[5] + 152));
    if (v22)
    {
      __break(1u);
      goto LABEL_23;
    }

    *(v20 + 40) = sub_25BCB6A6C();
    v23 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v24 = OUTLINED_FUNCTION_26_6(v23);

    v18 = [a1 reshapeTensor:v9 withShape:v24 name:{0, v47}];
  }

  if (*(*(v2[6] + 152) + 16) != 2)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v27 = OUTLINED_FUNCTION_31(v26);
    *(v27 + 16) = xmmword_25BCBAE40;
    *(v27 + 32) = sub_25BCB6A6C();
    result = sub_25BB731F4(*(v2[6] + 152));
    if ((v28 & 1) == 0)
    {
      *(v27 + 40) = sub_25BCB6A6C();
      v29 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v30 = OUTLINED_FUNCTION_26_6(v29);

      v25 = [a1 reshapeTensor:v48 withShape:v30 name:0];

      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v25 = v48;
LABEL_17:
  sub_25BB29534(1415543140, 0xE400000000000000);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_21_4();
  v37 = sub_25BB2B84C(v31, v32, v33, v34, v35, a1, v36);
  sub_25BB29534(30564, 0xE200000000000000);
  OUTLINED_FUNCTION_4_13();
  v40 = sub_25BB07CA4(v37, v25, v38, v39, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
  if (v2[8])
  {
    sub_25BB29534(25188, 0xE200000000000000);
    OUTLINED_FUNCTION_4_13();
    v43 = sub_25BB07CA4(v18, 0, v41, v42, a1, &selRef_reductionSumWithTensor_axis_name_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_25BCBAE60;
    *(v44 + 32) = v17;
    *(v44 + 40) = v40;
    *(v44 + 48) = v43;
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v44 = OUTLINED_FUNCTION_31(v45);
    *(v44 + 16) = xmmword_25BCBAE40;
    *(v44 + 32) = v17;
    *(v44 + 40) = v40;
  }

  v46 = v17;

  return v44;
}

id sub_25BB29988()
{
  result = [objc_opt_self() descriptorWithStrideInX:*(v0 + 72) strideInY:*(v0 + 64) dilationRateInX:*(v0 + 104) dilationRateInY:*(v0 + 96) groups:*(v0 + 112) paddingLeft:*(v0 + 88) paddingRight:*(v0 + 88) paddingTop:*(v0 + 80) paddingBottom:*(v0 + 80) paddingStyle:0 dataLayout:0 weightsLayout:2];
  if (!result)
  {
    if (*(v0 + 185))
    {
      v2 = xmmword_25BCBDF60;
      v3 = "mpsConvolution2DOpDescriptor";
      v4 = 2;
      v5 = 28;
      v6 = 108;
      v7 = 2;
      v8 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift";
    }

    else
    {
      v4 = *(v0 + 144);
      v8 = *(v0 + 128);
      v6 = *(v0 + 136);
      v7 = *(v0 + 184);
      v3 = *(v0 + 168);
      v5 = *(v0 + 176);
      v2 = *(v0 + 152);
      *v9 = *(v0 + 145);
      *&v9[3] = *(v0 + 148);
    }

    v10[0] = v8;
    v10[1] = v6;
    v11 = v4;
    *v12 = *v9;
    *&v12[3] = *&v9[3];
    v13 = v2;
    v14 = v3;
    v15 = v5;
    v16 = v7;
    sub_25BB28D60(v10);
  }

  return result;
}

id sub_25BB29AD8()
{
  sub_25BB2BA50(0, &qword_27FBB4530, 0x277CD7830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  *(v1 + 32) = sub_25BCB6A6C();
  *(v1 + 40) = sub_25BCB6A6C();
  *(v1 + 48) = sub_25BCB6A6C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBAE60;
  *(v2 + 32) = sub_25BCB6A6C();
  *(v2 + 40) = sub_25BCB6A6C();
  *(v2 + 48) = sub_25BCB6A6C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE80;
  *(v3 + 32) = sub_25BCB6A6C();
  *(v3 + 40) = sub_25BCB6A6C();
  *(v3 + 48) = sub_25BCB6A6C();
  *(v3 + 56) = sub_25BCB6A6C();
  *(v3 + 64) = sub_25BCB6A6C();
  *(v3 + 72) = sub_25BCB6A6C();
  v4 = sub_25BB29D18(v1, v2, v3, 0);
  if (!v4)
  {
    if (*(v0 + 185))
    {
      v7 = xmmword_25BCBDF70;
      v8 = "mpsDepthwiseConvolution3DOpDescriptor";
      v9 = 2;
      v10 = 37;
      v11 = 108;
      v12 = 2;
      v13 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift";
    }

    else
    {
      v9 = *(v0 + 144);
      v13 = *(v0 + 128);
      v11 = *(v0 + 136);
      v12 = *(v0 + 184);
      v8 = *(v0 + 168);
      v10 = *(v0 + 176);
      v7 = *(v0 + 152);
      *v14 = *(v0 + 145);
      *&v14[3] = *(v0 + 148);
    }

    v15[0] = v13;
    v15[1] = v11;
    v16 = v9;
    *v17 = *v14;
    *&v17[3] = *&v14[3];
    v18 = v7;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    sub_25BB28D60(v15);
  }

  v5 = v4;
  [v4 setChannelDimensionIndex_];
  return v5;
}

id sub_25BB29D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v5 = sub_25BCB672C();

  v6 = sub_25BCB672C();

  v7 = sub_25BCB672C();

  v8 = [swift_getObjCClassFromMetadata() descriptorWithStrides:v5 dilationRates:v6 paddingValues:v7 paddingStyle:a4];

  return v8;
}

BOOL sub_25BB29E00()
{
  if (v0[14] < 2)
  {
    return 0;
  }

  v1 = *(v0[6] + 152);
  v2 = *(v1 + 16);
  if (v2 <= 1)
  {
    sub_25BCB617C();
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  if (*(v1 + 40) != 1)
  {
    return 0;
  }

  return v2 > 3 && *(*(v0[5] + 152) + 16) > 3uLL;
}

void sub_25BB29ECC()
{
  OUTLINED_FUNCTION_22_0();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v8, v9, v5);
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v10 = v5[4];
  }

  v11 = v10;
  v12 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v12, v13, v5);
  if (v0)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v14 = v5[5];
  }

  v15 = v14;
  if (*(v1 + 56))
  {
    v16 = OUTLINED_FUNCTION_0_15();
    sub_25BAB4D78(v16, v17, v5);
    if (v0)
    {
      v18 = MEMORY[0x25F8779B0](2, v5);
    }

    else
    {
      v18 = v5[6];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (sub_25BB29E00())
  {
    v20 = OUTLINED_FUNCTION_11_11();
    sub_25BB29534(v20, v21);
    OUTLINED_FUNCTION_9_6();
    v24 = sub_25BB2B84C(v15, -3, -4, v22, v23, v7, &selRef_transposeTensor_dimension_withDimension_name_);
    sub_25BB29AD8();
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_9_6();
    v27 = sub_25BB2B84C(v11, v24, v3, v25, v26, v7, &selRef_depthwiseConvolution3DWithSourceTensor_weightsTensor_descriptor_name_);
  }

  else
  {
    sub_25BB29988();
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_9_6();
    v27 = sub_25BB2B84C(v11, v15, v3, v28, v29, v7, &selRef_convolution2DWithSourceTensor_weightsTensor_descriptor_name_);
  }

  if (!v19)
  {
LABEL_21:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v43 = OUTLINED_FUNCTION_5(v42);
    *(v43 + 16) = xmmword_25BCBB6D0;
    if (v27)
    {
      *(v43 + 32) = v27;

      return;
    }

    goto LABEL_25;
  }

  v45 = v15;
  v30 = *(*(v1 + 192) + 16);
  v31 = v19;
  v32 = sub_25BAC0E14(1, v30);
  v33 = sub_25BBA5020();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v32, v34, v35, v36);
    v32 = v44;
  }

  if (*(v32 + 16) < 2uLL)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v32 + 40) = v33;
  sub_25BAF99E8(v32);
  v37 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  OUTLINED_FUNCTION_26_6(v37);
  OUTLINED_FUNCTION_19_5();

  v38 = [v7 reshapeTensor:v31 withShape:v2 name:0];

  if (v27)
  {

    sub_25BB29534(1935763810, 0xE400000000000000);
    OUTLINED_FUNCTION_4_13();
    v41 = sub_25BB07CA4(v27, v38, v39, v40, v7, &selRef_additionWithPrimaryTensor_secondaryTensor_name_);

    v27 = v41;
    v15 = v45;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void *sub_25BB2A1AC(void *a1, id *a2)
{
  v6 = v3;
  v9 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v9, v10, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v11 = a2[4];
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v13, v14, a2);
  if (v2)
  {
    v15 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v15 = a2[5];
  }

  v16 = v15;
  v17 = OUTLINED_FUNCTION_0_15();
  sub_25BAB4D78(v17, v18, a2);
  if (v2)
  {
    v19 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v19 = a2[6];
  }

  v20 = v19;
  v86 = MEMORY[0x277D84F90];
  sub_25BAC1E24(2, 0);
  v85 = v20;
  if (sub_25BB29E00())
  {
    v21 = OUTLINED_FUNCTION_11_11();
    sub_25BB29534(v21, v22);
    OUTLINED_FUNCTION_9_6();
    v5 = sub_25BB2B84C(v20, -3, -4, v23, v24, a1, &selRef_transposeTensor_dimension_withDimension_name_);
    v25 = sub_25BAB7EC0();
    v26 = *(v25 + 16);
    if (v26)
    {
      v84 = v16;
      v27 = *(v25 + 32);
      sub_25BCB617C();

      v28 = sub_25BAF99E8(v27);

      v29 = sub_25BB29AD8();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_7_9();
      v82 = v5;
      v32 = sub_25BB2B8E0(v12, v5, v28, v29, v30, v31, a1);

      v5 = v32;
      MEMORY[0x25F876F40]();
      OUTLINED_FUNCTION_14_10();
      v34 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v34 < v26 >> 1)
      {
LABEL_12:
        sub_25BCB680C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25BCBDF80;
        *(inited + 32) = 1;
        v36 = v6[6];
        v37 = *(v36 + 152);
        if (!*(v37 + 16) || (*(inited + 40) = *(v37 + 32), v38 = *(v36 + 152), *(v38 + 16) <= 2uLL) || (*(inited + 48) = *(v38 + 48), v39 = *(v36 + 152), *(v39 + 16) <= 3uLL))
        {
          sub_25BCB617C();
          sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
        }

        *(inited + 56) = *(v39 + 56);
        sub_25BAF99E8(inited);
        OUTLINED_FUNCTION_15();
        swift_setDeallocating();
        sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
        v40 = sub_25BCB672C();

        v41 = sub_25BB29AD8();
        sub_25BB29534(1415542628, 0xE400000000000000);
        OUTLINED_FUNCTION_7_9();
        v44 = sub_25BB2B9B4(v12, v84, v40, v41, v42, v43, a1, &selRef_depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor_sourceTensor_outputShape_descriptor_name_);

        sub_25BB2B84C(v44, -3, -4, 30564, 0xE200000000000000, a1, &selRef_transposeTensor_dimension_withDimension_name_);
        MEMORY[0x25F876F40]();
        OUTLINED_FUNCTION_14_10();
        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 < v46 >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_34;
      }

LABEL_32:
      OUTLINED_FUNCTION_81(v26);
      sub_25BCB67AC();
      goto LABEL_12;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = sub_25BAB7EC0();
  v26 = *(v50 + 16);
  if (!v26)
  {
    goto LABEL_31;
  }

  v84 = v4;
  v51 = v16;
  v52 = *(v50 + 32);
  sub_25BCB617C();

  sub_25BAF99E8(v52);
  OUTLINED_FUNCTION_15();

  v5 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v53 = sub_25BCB672C();

  v54 = sub_25BB29988();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_9();
  v57 = sub_25BB2B9B4(v12, v20, v53, v54, v55, v56, a1, &selRef_convolution2DDataGradientWithIncomingGradientTensor_weightsTensor_outputShape_forwardConvolutionDescriptor_name_);

  v58 = v57;
  MEMORY[0x25F876F40]();
  OUTLINED_FUNCTION_14_10();
  v44 = *(v59 + 16);
  v60 = *(v59 + 24);
  if (v44 >= v60 >> 1)
  {
    OUTLINED_FUNCTION_81(v60);
    sub_25BCB67AC();
  }

  sub_25BCB680C();
  v46 = v6[15];
  if (*(v46 + 16) < 2uLL)
  {
    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_81(v46);
    sub_25BCB67AC();
LABEL_16:
    sub_25BCB680C();
    v48 = v86;

    v49 = v84;
    goto LABEL_24;
  }

  v81 = v58;
  v61 = a1;
  v62 = v12;
  v63 = v51;
  v64 = sub_25BCB617C();
  sub_25BAF99E8(v64);
  OUTLINED_FUNCTION_15();

  v65 = sub_25BCB672C();

  v66 = sub_25BB29988();
  sub_25BB29534(30564, 0xE200000000000000);
  OUTLINED_FUNCTION_7_9();
  v83 = v62;
  v67 = v62;
  v49 = v63;
  a1 = v61;
  sub_25BB2B9B4(v67, v63, v65, v66, v68, v69, v61, &selRef_convolution2DWeightsGradientWithIncomingGradientTensor_sourceTensor_outputShape_forwardConvolutionDescriptor_name_);

  MEMORY[0x25F876F40]();
  OUTLINED_FUNCTION_14_10();
  v72 = *(v70 + 16);
  v71 = *(v70 + 24);
  if (v72 >= v71 >> 1)
  {
    OUTLINED_FUNCTION_81(v71);
    sub_25BCB67AC();
  }

  sub_25BCB680C();
  v48 = v86;

  v12 = v83;
  v20 = v85;
LABEL_24:
  if (v6[7])
  {
    sub_25BAF99E8(&unk_286D42440);
    v73 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    OUTLINED_FUNCTION_26_6(v73);
    OUTLINED_FUNCTION_15();

    v74 = [a1 reductionSumWithTensor:v12 axes:v48 name:0];

    v75 = v74;
    sub_25BB29534(25188, 0xE200000000000000);
    sub_25BCB633C();
    OUTLINED_FUNCTION_15();

    v76 = [a1 squeezeTensor:v75 name:v6];

    MEMORY[0x25F876F40]();
    OUTLINED_FUNCTION_14_10();
    v79 = *(v77 + 16);
    v78 = *(v77 + 24);
    if (v79 >= v78 >> 1)
    {
      OUTLINED_FUNCTION_81(v78);
      sub_25BCB67AC();
    }

    sub_25BCB680C();
  }

  return v48;
}

void sub_25BB2A8D4(void *a1, id *a2)
{
  v7 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v7, v8, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v9 = a2[4];
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v11, v12, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v13 = a2[5];
  }

  v38 = v13;
  if (*(v3 + 56))
  {
    v14 = OUTLINED_FUNCTION_0_15();
    sub_25BAB4D78(v14, v15, a2);
    if (v2)
    {
      v16 = MEMORY[0x25F8779B0](2, a2);
    }

    else
    {
      v16 = a2[6];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v3 + 192);
  sub_25BAF99E8(v18);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  sub_25BCB672C();
  OUTLINED_FUNCTION_19_5();

  v19 = sub_25BB29988();
  sub_25BB29534(0x65736F706E617274, 0xED0000766E6F635FLL);
  OUTLINED_FUNCTION_7_9();
  v20 = v10;
  v23 = sub_25BB2B9B4(v10, v38, v4, v19, v21, v22, a1, &selRef_convolutionTranspose2DWithSourceTensor_weightsTensor_outputShape_descriptor_name_);

  if (!v17)
  {
    goto LABEL_17;
  }

  v24 = *(v18 + 16);
  v25 = v17;
  v26 = sub_25BAC0E14(1, v24);
  sub_25BBA4AC8();
  OUTLINED_FUNCTION_19_5();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v26, v27, v28, v29);
    v26 = v37;
  }

  if (*(v26 + 16) >= 2uLL)
  {
    *(v26 + 40) = v4;
    sub_25BAF99E8(v26);
    OUTLINED_FUNCTION_19_5();

    v30 = sub_25BCB672C();

    v31 = [a1 reshapeTensor:v25 withShape:v30 name:0];

    sub_25BB29534(1935763810, 0xE400000000000000);
    OUTLINED_FUNCTION_4_13();
    v34 = sub_25BB07CA4(v23, v31, v32, v33, a1, &selRef_additionWithPrimaryTensor_secondaryTensor_name_);

    v23 = v34;
LABEL_17:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v36 = OUTLINED_FUNCTION_5(v35);
    *(v36 + 16) = xmmword_25BCBB6D0;
    *(v36 + 32) = v23;

    return;
  }

  __break(1u);
}

uint64_t sub_25BB2AB84()
{
  OUTLINED_FUNCTION_22_0();
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v9, v10, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v11 = v6[4];
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v13, v14, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v15 = v6[5];
  }

  v16 = v15;
  v17 = OUTLINED_FUNCTION_0_15();
  sub_25BAB4D78(v17, v18, v6);
  if (v0)
  {
    v19 = MEMORY[0x25F8779B0](2, v6);
  }

  else
  {
    v19 = v6[6];
  }

  v20 = v19;
  v21 = sub_25BAB7EC0();
  v22 = *(v21 + 16);
  if (!v22)
  {
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(v21 + 32);
  sub_25BCB617C();

  sub_25BAF99E8(v23);

  v3 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v24 = sub_25BCB672C();

  v25 = sub_25BB29988();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_9();
  v4 = sub_25BB2B9B4(v12, v20, v24, v25, v26, v27, v8, &selRef_convolutionTranspose2DDataGradientWithIncomingGradientTensor_weightsTensor_outputShape_forwardConvolutionDescriptor_name_);

  v22 = *(v1 + 120);
  if (*(v22 + 16) < 2uLL)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_81(v22);
    sub_25BCB67AC();
    goto LABEL_13;
  }

  v28 = sub_25BCB617C();
  sub_25BAF99E8(v28);

  v29 = sub_25BCB672C();

  v30 = sub_25BB29988();
  sub_25BB29534(30564, 0xE200000000000000);
  OUTLINED_FUNCTION_7_9();
  v33 = sub_25BB2B9B4(v12, v16, v29, v30, v31, v32, v8, &selRef_convolutionTranspose2DWeightsGradientWithIncomingGradientTensor_sourceTensor_outputShape_forwardConvolutionDescriptor_name_);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v35 = OUTLINED_FUNCTION_31(v34);
  *(v35 + 16) = xmmword_25BCBAE40;
  *(v35 + 32) = v4;
  *(v35 + 40) = v33;
  v41 = v35;
  if (!*(v1 + 56))
  {
    v39 = v35;
    goto LABEL_15;
  }

  v4 = v4;
  v3 = v33;
  v36 = sub_25BAF99E8(&unk_286D42478);
  sub_25BB29534(25188, 0xE200000000000000);
  OUTLINED_FUNCTION_4_13();
  sub_25BB2B6EC(v12, v36, v37, v38, v8);
  MEMORY[0x25F876F40]();
  v22 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
  {
    goto LABEL_19;
  }

LABEL_13:
  sub_25BCB680C();
  v39 = v41;

  v16 = v3;
  v20 = v4;
LABEL_15:

  return v39;
}

uint64_t sub_25BB2AE78(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44E0, type metadata accessor for ConvolutionTranspose2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AED0(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AF28(uint64_t a1)
{
  result = sub_25BB2B2F0(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AF80(uint64_t a1)
{
  result = sub_25BB2B2F0(qword_28154DC68, type metadata accessor for Convolution2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AFD8(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_28154D770, type metadata accessor for LinearGradientOperation, &unk_25BCC6048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B030(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_28154F570, type metadata accessor for LinearOperation, &unk_25BCC60D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B088(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44F0, type metadata accessor for Max2DPoolGradientOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B0E0(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B138(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B190(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B1E8(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4510, type metadata accessor for PadGradientOperation, &unk_25BCC1A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B240(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4518, type metadata accessor for PadOperation, &unk_25BCC1A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B298(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation, &unk_25BCC6160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B2F0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BB2B338(uint64_t a1, uint64_t a2, char a3)
{
  v3 = sub_25BCB63AC();
  MEMORY[0x25F876C90](v3);

  MEMORY[0x25F876C90](96, 0xE100000000000000);
  return 96;
}

uint64_t sub_25BB2B3A8()
{
  OUTLINED_FUNCTION_5_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4538, &qword_25BCBE100);
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B408()
{
  OUTLINED_FUNCTION_5_13();
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B458()
{
  OUTLINED_FUNCTION_5_13();
  sub_25BCB617C();
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B4B0()
{
  OUTLINED_FUNCTION_5_13();
  sub_25BCB617C();
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B504(uint64_t a1)
{
  v4 = 96;
  v5 = 0xE100000000000000;
  sub_25BB2BA90(a1, &v3);
  v1 = sub_25BCB63AC();
  MEMORY[0x25F876C90](v1);

  MEMORY[0x25F876C90](96, 0xE100000000000000);
  return v4;
}

id sub_25BB2B578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  v14 = sub_25BCB633C();

  v15 = [a7 padTensor:a1 withPaddingMode:a2 leftPadding:a3 rightPadding:a4 constantValue:v14 name:a8];

  return v15;
}

id sub_25BB2B6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  v8 = sub_25BCB633C();

  v9 = [a5 reductionSumWithTensor:a1 axes:v7 name:v8];

  return v9;
}

id sub_25BB2B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 padGradientWithIncomingGradientTensor:a1 sourceTensor:a2 paddingMode:a3 leftPadding:a4 rightPadding:a5 name:v14];

  return v15;
}

id sub_25BB2B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, SEL *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a6 *a7];

  return v13;
}

id sub_25BB2B8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v11 = sub_25BCB672C();

  v12 = sub_25BCB633C();

  v13 = [a7 depthwiseConvolution3DDataGradientWithIncomingGradientTensor:a1 weightsTensor:a2 outputShape:v11 descriptor:a4 name:v12];

  return v13;
}

id sub_25BB2B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, SEL *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a7 *a8];

  return v15;
}

uint64_t sub_25BB2BA50(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25BB2BA90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL LearningPhase.isTraining.getter()
{
  if (*v0)
  {
    return *v0 == 1;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v3);

  if (v4)
  {
    v1 = *(v4 + 24) & 1;
  }

  else
  {
    v1 = 0;
  }

  sub_25BAA4AF4(v3);
  return v1;
}

uint64_t LearningPhase.description.getter()
{
  v1 = 0x676E696E69617274;
  if (*v0 != 1)
  {
    v1 = 0x636E657265666E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

NeuralNetworks::LearningPhase_optional __swiftcall LearningPhase.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25BB2BC1C@<X0>(uint64_t *a1@<X8>)
{
  result = LearningPhase.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_25BB2BCFC()
{
  result = qword_27FBB4540;
  if (!qword_27FBB4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LearningPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB2BE2C()
{
  result = qword_27FBB4548;
  if (!qword_27FBB4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4548);
  }

  return result;
}

id sub_25BB2BE80()
{
  v1 = v0;
  sub_25BC31C8C(__src);

  v2 = sub_25BC6640C();
  sub_25BB2C64C(v1 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (BYTE8(__dst[7]))
  {
    if (BYTE8(__dst[7]) == 1)
    {
      sub_25BA97060(__dst, v17);
      sub_25BA97060((&__dst[2] + 8), v15);
      sub_25BA97060(&__dst[5], v13);
      v3 = [objc_opt_self() descriptorWithDistribution:2 dataType:v2];
      if (v3)
      {
        __swift_project_boxed_opaque_existential_1(v17, v18);
        *&v4 = sub_25BC31CA0();
        [v3 setMean_];
        __swift_project_boxed_opaque_existential_1(v15, v16);
        *&v5 = sub_25BC31CA0();
        [v3 setStandardDeviation_];
        __swift_project_boxed_opaque_existential_1(v13, v14);
        *&v6 = -sub_25BC31CA0();
        [v3 setMin_];
        __swift_project_boxed_opaque_existential_1(v13, v14);
        *&v7 = sub_25BC31CA0();
        [v3 setMax_];
      }

      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      sub_25BA97060(__dst, v17);
      sub_25BA97060((&__dst[2] + 8), v15);
      v3 = [objc_opt_self() descriptorWithDistribution:0 dataType:v2];
      if (v3)
      {
        __swift_project_boxed_opaque_existential_1(v17, v18);
        if (v2 == 536870944)
        {
          [v3 setMinInteger_];
          __swift_project_boxed_opaque_existential_1(v15, v16);
          [v3 setMaxInteger_];
        }

        else
        {
          *&v10 = sub_25BC31CA0();
          [v3 setMin_];
          __swift_project_boxed_opaque_existential_1(v15, v16);
          *&v11 = sub_25BC31CA0();
          [v3 setMax_];
        }
      }
    }
  }

  else
  {
    sub_25BA97060(__dst, v17);
    sub_25BA97060((&__dst[2] + 8), v15);
    v3 = [objc_opt_self() descriptorWithDistribution:1 dataType:v2];
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(v17, v18);
      *&v8 = sub_25BC31CA0();
      [v3 setMean_];
      __swift_project_boxed_opaque_existential_1(v15, v16);
      *&v9 = sub_25BC31CA0();
      [v3 setStandardDeviation_];
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v3;
}

uint64_t sub_25BB2C21C(void *a1, uint64_t a2)
{
  v5 = sub_25BB2BE80();
  if (!v5)
  {
    v24[0] = 0xD00000000000002ELL;
    v24[1] = 0x800000025BCDA900;
    v25 = 3;
    if (*(v2 + 241))
    {
      v17 = xmmword_25BCBE250;
      v18 = "encode(to:inputs:)";
      v19 = 2;
      v20 = 18;
      v21 = 111;
      v22 = 2;
      v23 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSRandomOp.swift";
    }

    else
    {
      v19 = *(v2 + 200);
      v23 = *(v2 + 184);
      v21 = *(v2 + 192);
      v22 = *(v2 + 240);
      v18 = *(v2 + 224);
      v20 = *(v2 + 232);
      v17 = *(v2 + 208);
      v33[0] = *(v2 + 201);
      *(v33 + 3) = *(v2 + 204);
    }

    v26[0] = v23;
    v26[1] = v21;
    v27 = v19;
    *v28 = v33[0];
    *&v28[3] = *(v33 + 3);
    v29 = v17;
    v30 = v18;
    v31 = v20;
    v32 = v22;
    sub_25BB28D60(v26);
  }

  v6 = v5;
  sub_25BC31C8C(v24);
  sub_25BAF99E8(v24[0]);

  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = sub_25BCB633C();
  v11 = [a1 randomTensorWithShape:v7 descriptor:v6 stateTensor:v9 name:v10];

  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v12 = sub_25BCB673C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x25F8779B0](0, v12);
  }

  else
  {
    v14 = *(v12 + 32);
  }

  v15 = v14;

  *(v13 + 32) = v15;

  return v13;
}

uint64_t sub_25BB2C4A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBB6D0;
  v4 = v1[7];
  v6 = v1[3];
  v5 = v1[4];
  sub_25BCB617C();
  *(v3 + 32) = sub_25BB2C6A8(v4, v6, v5, a1);
  return v3;
}

uint64_t sub_25BB2C554(uint64_t a1)
{
  result = sub_25BB2C604(&qword_27FBB4550, type metadata accessor for RandomStateOperation, &unk_25BCCD214);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2C5AC(uint64_t a1)
{
  result = sub_25BB2C604(&qword_28154F3A0, type metadata accessor for RandomOperation, &unk_25BCCD284);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2C604(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_25BB2C6A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BCB633C();

  v7 = [a4 randomPhiloxStateTensorWithSeed:a1 name:v6];

  return v7;
}

NeuralNetworks::ReductionKind_optional __swiftcall ReductionKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BCB761C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25BB2C7AC()
{
  result = qword_27FBB4558;
  if (!qword_27FBB4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4558);
  }

  return result;
}

uint64_t sub_25BB2C824@<X0>(uint64_t *a1@<X8>)
{
  result = ReductionKind.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_25BB2C854()
{
  result = qword_27FBB4560;
  if (!qword_27FBB4560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4568, &qword_25BCBE338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4560);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReductionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}