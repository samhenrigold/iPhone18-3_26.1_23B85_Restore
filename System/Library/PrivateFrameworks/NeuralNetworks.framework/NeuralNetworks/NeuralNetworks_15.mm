uint64_t sub_25BBB1B68(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v5 = MEMORY[0x277D84F90];
      v16 = MEMORY[0x277D84F90];
      LOBYTE(v14) = v4;
      sub_25BAA51C8(&v18, v15);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v16, &unk_286D451C8, &v14, v15, &v17);
      sub_25BA9C2C8(&v18);
      v6 = v17;
      v7 = *(*(v3 + 16) + 160);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = v5;
      LOBYTE(v14) = v7;
      sub_25BAA51C8(&v18, v15);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v16, &unk_286D451F0, &v14, v15, &v17);
      sub_25BA9C2C8(&v18);
      v8 = v17;
      v9 = *(*(v3 + 16) + 160);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = v5;
      LOBYTE(v14) = v9;
      sub_25BAA51C8(&v18, v15);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v16, &unk_286D45218, &v14, v15, &v17);
      sub_25BA9C2C8(&v18);
      v10 = v17;
      *&v18 = v2;
      v15[0] = v6;
      static Tensor.* infix(_:_:)();
      *&v18 = v10;
      v15[0] = v3;
      v16 = v8;
      pow(_:_:)();
      static Tensor.* infix(_:_:)();

      static Tensor./ infix(_:_:)();

      v11 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_25BCBAE50;
      *(v12 + 32) = v11;

      *(v12 + 40) = sub_25BAC42B0();
      *(v12 + 48) = v13;

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB1DFC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v12[0] = *(a2 + 32);

      sqrt(_:)(&v16, v12);
      v3 = v16;
      v4 = *(*(v16 + 16) + 160);
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v5 = MEMORY[0x277D84F90];
      v14 = MEMORY[0x277D84F90];
      v13 = v4;
      sub_25BAA51C8(&v16, v12);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v14, &unk_286D45240, &v13, v12, &v15);
      sub_25BA9C2C8(&v16);
      v6 = v15;
      v7 = *(*(v3 + 16) + 160);
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v14 = v5;
      v13 = v7;
      sub_25BAA51C8(&v16, v12);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v14, &unk_286D45268, &v13, v12, &v15);
      sub_25BA9C2C8(&v16);
      v8 = v15;
      v12[0] = v6;
      v15 = v3;
      *&v16 = v8;
      static Tensor.* infix(_:_:)();
      static Tensor./ infix(_:_:)();

      v14 = v16;
      v15 = v2;

      static Tensor.* infix(_:_:)();

      v9 = v12[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_25BCBAE50;
      *(v10 + 32) = v9;

      *(v10 + 40) = sub_25BAC42B0();
      *(v10 + 48) = v11;

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB2358(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      OUTLINED_FUNCTION_29_13();
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = OUTLINED_FUNCTION_32_11(v5);
      *(v6 + 16) = xmmword_25BCBAE50;
      v8[1] = v4;
      v9 = v2;

      v3(v8, &v9);
      Tensor.squared()();

      static Tensor./ infix(_:_:)();

      *(v6 + 32) = v9;

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB276C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v4 = OUTLINED_FUNCTION_32_11(v3);
      *(v4 + 16) = xmmword_25BCBAE50;
      v6[0] = v2;
      swift_retain_n();

      Tensor.init(zerosLike:)(v6);
      *(v4 + 32) = v6[1];

      *(v4 + 40) = sub_25BAC42B0();
      *(v4 + 48) = v5;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB29BC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v10 = MEMORY[0x277D84F90];
      v9 = v4;
      sub_25BAA51C8(v12, v8);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v10, &unk_286D45290, &v9, v8, &v11);
      sub_25BA9C2C8(v12);
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      v8[0] = v2;
      v11 = v3;
      *&v12[0] = v5;
      static Tensor.* infix(_:_:)();
      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v12[0];

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.clamped(to:)@<X0>(void *a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *(v8 + 160);
  if (!sub_25BAA80BC(v9, &unk_286D42270))
  {
    LOBYTE(v60) = v9;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v74[0] = a1;
    v74[1] = &v60;
    v74[2] = 0;
    v74[3] = 0;
    v75 = 6;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v77 = 2;
    v78 = 3;
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28(v41, v42, v43, v44, v45, v46, 513);
  }

  v10 = *(v8 + 160);
  OUTLINED_FUNCTION_34_11();
  v11 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  HIBYTE(v66) = v10;
  v13 = sub_25BAA51C8(v74, &v60);
  v21 = OUTLINED_FUNCTION_33(v13, v14, v15, v16, v17, v18, v19, v20, 1, 2, v48, v50, v52, v54, v56, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v21, inited, v22, v23, v24);
  sub_25BA9C2C8(v74);
  v25 = v73;
  v26 = *(*(v7 + 16) + 160);
  OUTLINED_FUNCTION_34_11();
  v72 = v11;
  v27 = swift_initStackObject();
  *(v27 + 16) = v47;
  *(v27 + 32) = a3;
  HIBYTE(v66) = v26;
  v28 = sub_25BAA51C8(v74, &v60);
  v36 = OUTLINED_FUNCTION_33(v28, v29, v30, v31, v32, v33, v34, v35, v47, *(&v47 + 1), v49, v51, v53, v55, v57, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v36, v27, v37, v38, v39);
  sub_25BA9C2C8(v74);
  v74[0] = v7;
  v60 = v73;
  min(_:_:)();
  v74[0] = v25;
  max(_:_:)();
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, unsigned __int8 a20, uint64_t a21)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a21, a2, &a20, &a11, &a10);
}

unint64_t sub_25BBB2D20()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BBB2D6C(char a1)
{
  if (!a1)
  {
    return 6713957;
  }

  if (a1 == 1)
  {
    return 0x64696F6D676973;
  }

  return 0x4C6552796B61656CLL;
}

unint64_t sub_25BBB2DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BBB2D20();
  *a1 = result;
  return result;
}

uint64_t sub_25BBB2E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BBB2D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BBB2E50()
{
  v1 = 0x64696F6D676973;
  if (*(v0 + 128) != 1)
  {
    v1 = 0x4C6552796B61656CLL;
  }

  if (*(v0 + 128))
  {
    return v1;
  }

  else
  {
    return 6713957;
  }
}

uint64_t sub_25BBB2EA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 128) = a4;
  *(v10 + 132) = a6;
  *(v10 + 136) = BYTE4(a6) & 1;
  *(v10 + 140) = a7;
  *(v10 + 144) = BYTE4(a7) & 1;
  if (!a3)
  {
    a1 = sub_25BC7C6B4(a4);
  }

  v13 = a8[1];
  v15[0] = *a8;
  v15[1] = v13;
  *v16 = a8[2];
  *&v16[9] = *(a8 + 41);
  v17 = 0;
  *(v10 + 112) = a9;
  *(v10 + 120) = a10;
  return sub_25BAB9A8C(a1, a2, a3, a5, v15);
}

uint64_t sub_25BBB2F6C(uint64_t a1)
{
  sub_25BBB2E50();
  sub_25BCB625C();

  if (*(v1 + 136) == 1)
  {
    sub_25BCB79EC();
  }

  else
  {
    sub_25BCB79EC();
    sub_25BCB7A0C();
  }

  if (*(v1 + 144) == 1)
  {
    return sub_25BCB79EC();
  }

  sub_25BCB79EC();
  return sub_25BCB7A0C();
}

uint64_t sub_25BBB3050(uint64_t a1, uint64_t a2)
{
  if (!sub_25BB07E0C(a1, a2))
  {
    v4 = sub_25BAC4018();
    swift_beginAccess();
    if (v4 != sub_25BAC4018())
    {
      return 0;
    }

    *(v2 + 112) = a2;
  }

  return 1;
}

uint64_t sub_25BBB3104(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a5;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x78616D74666F73, 0xE700000000000000);
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  *v16 = a6[2];
  *&v16[9] = *(a6 + 41);
  v17 = 0;
  v8[14] = a7;
  v8[15] = a8;
  return sub_25BAB9A8C(a1, a2, a3, a4, v15);
}

_BYTE *storeEnumTagSinglePayload for ActivationOperation.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BBB32A4()
{
  result = qword_27FBB5DB0;
  if (!qword_27FBB5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB5DB8, qword_25BCC6E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5DB0);
  }

  return result;
}

unint64_t sub_25BBB330C()
{
  result = qword_27FBB5DC0;
  if (!qword_27FBB5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5DC0);
  }

  return result;
}

uint64_t sub_25BBB33C8(uint64_t a1)
{
  result = sub_25BBB3450(qword_28154F128, type metadata accessor for SoftmaxOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBB340C(uint64_t a1)
{
  result = sub_25BBB3450(&qword_27FBB3FB8, type metadata accessor for ActivationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBB3450(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_25BBB34A0()
{
  v1 = v0;
  if (qword_28154E1F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28154E1F8;
  type metadata accessor for LazyTensorFunctionExecutorCache();
  swift_allocObject();
  *(v1 + 16) = sub_25BBC8CAC(v2);
  return v1;
}

uint64_t sub_25BBB3568(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_25BCB654C();
    OUTLINED_FUNCTION_1_41();
    sub_25BAFE070();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_25BAFE070();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_53();
      v17 = sub_25BCB652C();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_0_53();
      v16 = sub_25BCB642C();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_25BCB654C();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFE070();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_25BAFE070();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_0_53();
    v16 = sub_25BCB642C();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_25BCB654C();
        OUTLINED_FUNCTION_1_41();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_25BAFE070();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB38C4(uint64_t a1, char a2, uint64_t (*a3)(void *, __n128), unint64_t a4, uint64_t a5)
{
  v43 = a3;
  if (a1 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = a5;
  v13 = *(a5 + 16);
  if (!a1 || !v13)
  {
    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v5 = sub_25BABAF60(0, v13, a5);
    v9 = v24;
    v10 = v25;
    v11 = v26;

    sub_25BAFE4A8();
    v15 = v27;
    v7 = *(v27 + 16);
    v28 = *(v27 + 24);
LABEL_35:
    v8 = v7 + 1;
    if (v7 < v28 >> 1)
    {
LABEL_36:
      *(v15 + 16) = v8;
      v32 = (v15 + 32 * v7);
      v32[4] = v5;
      v32[5] = v9;
      v32[6] = v10;
      v32[7] = v11;
      return v15;
    }

LABEL_40:
    sub_25BAFE4A8();
    v15 = v33;
    goto LABEL_36;
  }

  v5 = a4;
  v39 = a2;
  v11 = 0;
  v35 = a5 + 32;
  v14 = -v13;
  v15 = MEMORY[0x277D84F90];
  v37 = -v13;
  v38 = *(a5 + 16);
  while (1)
  {
    v41 = v15;
    v9 = 2 * v11;
    while (2)
    {
      v16 = 0;
      v15 = v14 + v11;
      v40 = v9;
      while (1)
      {
        if (!(v15 + v16))
        {
          v15 = v41;
          v21 = v38;
          goto LABEL_28;
        }

        if ((v11 + v16) >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v17 = v8 + 8 * v9;
        v10 = *(v17 + 40);
        v42[0] = *(v17 + 32);
        v42[1] = v10;
        sub_25BCB617C();
        v18 = v43(v42);
        if (v6)
        {

          return v15;
        }

        v7 = v18;

        if (v7)
        {
          break;
        }

        ++v16;
        v9 += 2;
      }

      if (!v16 && (v39 & 1) != 0)
      {
        ++v11;
        v9 = v40 + 2;
        v14 = v37;
        continue;
      }

      break;
    }

    if (v11 < 0)
    {
      break;
    }

    v15 = v41;
    if (*(v8 + 16) < (v11 + v16))
    {
      goto LABEL_44;
    }

    sub_25BCB617C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFE4A8();
      v15 = v22;
    }

    v7 = *(v15 + 16);
    v10 = v7 + 1;
    if (v7 >= *(v15 + 24) >> 1)
    {
      sub_25BAFE4A8();
      v15 = v23;
    }

    *(v15 + 16) = v10;
    v20 = (v15 + 32 * v7);
    v20[4] = v8;
    v20[5] = v35;
    v20[6] = v11;
    v20[7] = v9 + 1;
    v11 += v16 + 1;
    v14 = v37;
    v21 = v38;
    if (v10 == a1)
    {
LABEL_28:
      if (v11 == v21 && (v39 & 1) != 0)
      {

        return v15;
      }

      if (v21 < v11)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_25BABAF60(v11, v21, v8);
        v9 = v29;
        v10 = v30;
        v11 = v31;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          v7 = *(v15 + 16);
          v28 = *(v15 + 24);
          goto LABEL_35;
        }
      }

      sub_25BAFE4A8();
      v15 = v34;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_25BBB3BEC()
{
  result = qword_27FBB5DC8;
  if (!qword_27FBB5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5DC8);
  }

  return result;
}

uint64_t sub_25BBB3C40@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25BC458D0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

_BYTE *sub_25BBB3C9C(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  v11 = sub_25BAA07E0();
  sub_25BAB4D78(0, (v11 & 0xC000000000000001) == 0, v11);
  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](0, v11);
  }

  else
  {
  }

  v12 = sub_25BAC4018();

  if (!sub_25BB3EE04(v12, a1))
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v19 = xmmword_25BCBCE20;
    *(v19 + 16) = 0x4000;
    swift_willThrow();
    return v7;
  }

  type metadata accessor for NativeTensorStorage(0);
  result = sub_25BABCFCC();
  if (*(result + 2))
  {
    v14 = *(result + 4);
    sub_25BCB617C();

    v25 = v14;
    result = sub_25BABCFCC();
    if (*(result + 2))
    {
      v15 = result[40];

      v24 = v15;
      sub_25BBC0130(&v25, &v24, 0, 0);
      v17 = v16;
      v18 = *(*(v3 + 40) + 152);
      if (v18[2])
      {
        sub_25BCB617C();
      }

      else
      {
        v18 = &unk_286D431F8;
      }

      sub_25BBF5A38(v18, 0);

      v20 = sub_25BCB54EC();
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
      v21 = *(v17 + 16);
      if (v21[2])
      {
        sub_25BCB617C();
      }

      else
      {
        v21 = &unk_286D43220;
      }

      sub_25BBF5A38(v21, 0);

      __swift_storeEnumTagSinglePayload(v7, 0, 1, v20);
      ObjectType = swift_getObjectType();
      MEMORY[0x28223BE20](ObjectType);
      *&v23[-48] = v17;
      *&v23[-40] = &off_286D4DBE0;
      *&v23[-32] = v7;
      *&v23[-24] = sub_25BBB4048;
      *&v23[-16] = 0;
      sub_25BC675C0(sub_25BB0E9FC, &v23[-64], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
      if (v2)
      {
        swift_unknownObjectRelease();

        sub_25BB0EA20(v10);
        sub_25BB0EA20(v7);
      }

      else
      {
        sub_25BB0EA20(v10);
        sub_25BB0EA20(v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_25BCBAE50;
        *(v7 + 4) = v17;
        *(v7 + 5) = &off_286D4DBE0;
        swift_unknownObjectRelease();
      }

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

unint64_t sub_25BBB4088(uint64_t a1)
{
  result = sub_25BBB40B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BBB40B0()
{
  result = qword_27FBB3FC8;
  if (!qword_27FBB3FC8)
  {
    type metadata accessor for TileOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FC8);
  }

  return result;
}

uint64_t sub_25BBB410C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = result;
  v7 = *(a2 + 16);
  v8 = (a2 + 56);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *(v8 - 3);
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v15 = v9;
      sub_25BCB617C();
      sub_25BCB617C();
      result = v5(&v13);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 32;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v12 = v15;
    *a3 = v13;
    *(a3 + 8) = v14;
    *(a3 + 24) = v12;
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_25BBB4200(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 48;
  v18 = MEMORY[0x277D84F90];
  v16 = result + 48;
LABEL_2:
  v4 = (v3 + 24 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v4 - 2);
    swift_bridgeObjectRetain_n();
    v9 = v7;
    v10 = sub_25BADBE78(v17, v8, v6);

    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB1E30();
        v18 = v14;
      }

      v3 = v16;
      v11 = *(v18 + 16);
      if (v11 >= *(v18 + 24) >> 1)
      {
        sub_25BAB1E30();
        v18 = v15;
      }

      v12 = v18;
      *(v18 + 16) = v11 + 1;
      v13 = v12 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v6;
      v1 = v5;
      goto LABEL_2;
    }

    ++v1;
    v4 += 3;
  }
}

id sub_25BBB4368()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    v3 = sub_25BCB749C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  sub_25BAB4D78(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x25F8779B0](v4, v2);
  }

  else
  {
    v1 = *(v2 + 8 * v4 + 32);
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v6 = sub_25BA9BEA0(v5);
    v4 = *(v0 + 24);
    if (v4 == v6)
    {

      goto LABEL_11;
    }

    sub_25BAB4D78(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      result = *(v5 + 8 * v4 + 32);
      goto LABEL_14;
    }
  }

  result = MEMORY[0x25F8779B0](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

void *sub_25BBB44A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BCB738C();
  v4 = sub_25BAAF54C(a2);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v29 = MEMORY[0x277D84F90];
  sub_25BB00694(0, v5 & ~(v5 >> 63), 0);
  sub_25BCB737C();
  if (v5 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
  }

  else
  {
    v26 = a2 >> 62;
    v24 = a2;
    if (!v5)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
      v25 = a2 & 0xC000000000000001;
      goto LABEL_21;
    }

    v6 = 0;
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    v25 = a2 & 0xC000000000000001;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      result = sub_25BCB75DC();
      if (!v28)
      {
        break;
      }

      if (v26)
      {
        v9 = sub_25BCB749C();
      }

      else
      {
        v9 = *(v7 + 16);
      }

      if (v6 == v9)
      {
        goto LABEL_41;
      }

      if (v25)
      {
        v10 = MEMORY[0x25F8779B0](v6, a2);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v10 = *(a2 + 8 * v6 + 32);
      }

      v11 = *(v10 + 152);
      v12 = *(v10 + 160);
      sub_25BCB617C();

      v14 = *(v29 + 16);
      v13 = *(v29 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25BB00694(v13 > 1, v14 + 1, 1);
      }

      ++v6;
      *(v29 + 16) = v14 + 1;
      v15 = v29 + 32 * v14;
      *(v15 + 32) = v27;
      *(v15 + 40) = v28;
      *(v15 + 48) = v11;
      *(v15 + 56) = v12;
      v7 = v23;
      a2 = v24;
      if (v5 == v6)
      {
        while (1)
        {
LABEL_21:
          sub_25BCB75DC();
          if (!v28)
          {

            return v29;
          }

          v16 = v26 ? sub_25BCB749C() : *(v7 + 16);
          if (v5 == v16)
          {
            break;
          }

          if (v25)
          {
            v17 = MEMORY[0x25F8779B0](v5, a2);
          }

          else
          {
            if (v5 >= *(v7 + 16))
            {
              goto LABEL_39;
            }

            v17 = *(a2 + 8 * v5 + 32);
          }

          if (__OFADD__(v5, 1))
          {
            goto LABEL_38;
          }

          v18 = *(v17 + 152);
          v19 = *(v17 + 160);
          sub_25BCB617C();

          v21 = *(v29 + 16);
          v20 = *(v29 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_25BB00694(v20 > 1, v21 + 1, 1);
          }

          *(v29 + 16) = v21 + 1;
          v22 = v29 + 32 * v21;
          *(v22 + 32) = v27;
          *(v22 + 40) = v28;
          *(v22 + 48) = v18;
          *(v22 + 56) = v19;
          ++v5;
          a2 = v24;
        }

        return v29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB47B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v12 = a2;
  sub_25BBB410C(sub_25BBB9C20, a3, &v7);
  if (v8)
  {
    v5 = v10;
    *a4 = v9;
    *(a4 + 8) = v5;
  }

  else
  {
    sub_25BB3D6B4(v7, 0);
    v7 = 0;
    v8 = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000012, 0x800000025BCDF9D0);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0xD000000000000015, 0x800000025BCDF9F0);
    result = sub_25BCB74CC("Fatal error", 11, 2, v7, v8, "NeuralNetworks/KeyValuePairsCollection.swift", 44, 2, 70);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBB4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C() & 1;
  }
}

unint64_t sub_25BBB4954(char a1)
{
  result = 0x696D207475706E49;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6D2074757074754FLL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_25BBB4A0C(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_25BCB6CDC();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v5 = sub_25BCB6CFC();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_25BCB603C();
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_1();
  sub_25BB2BA50(0, &qword_28154BDB0, 0x277D85C78);
  sub_25BCB601C();
  (*(v7 + 104))(v11, *MEMORY[0x277D85268], v5);
  *&v30 = MEMORY[0x277D84F90];
  sub_25BB72FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BBB8DF0();
  sub_25BCB702C();
  *(v2 + 96) = sub_25BCB6D2C();
  *(v2 + 16) = a2;
  swift_unownedRetain();
  sub_25BBB4E90(a1, a2, &v32);
  if (v29)
  {
    sub_25BA9AC78(a1);
    swift_unownedRelease();

    OUTLINED_FUNCTION_10_24();
  }

  else
  {
    v13 = v32;
    v14 = v33;
    v43 = v33;
    v15 = v34;
    v16 = v35;
    *(v3 + 24) = v32;
    *(v3 + 32) = v14;
    v17 = v36;
    v41 = v36;
    v42 = v15;
    *(v3 + 40) = v15;
    *(v3 + 48) = v16;
    *(v3 + 56) = v17;
    *&v30 = MEMORY[0x277D84FA0];
    v18 = v13;
    sub_25BAA486C(&v43, v31, &qword_27FBB5DD8, &qword_25BCC7138);
    sub_25BAA486C(&v42, v31, &unk_27FBB5DE0, &qword_25BCC7140);
    sub_25BCB617C();
    sub_25BAA486C(&v41, v31, &unk_27FBB5DE0, &qword_25BCC7140);
    sub_25BBB4200(v16);
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;

    v22 = a1[19];
    sub_25BCB617C();
    v23 = sub_25BBB44A8(v21, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v30 + 1) = sub_25BCB614C();
    v24 = sub_25BAF9B54(v23);

    *&v30 = v24;
    sub_25BAFC990();
    sub_25BA9AC78(a1);
    *(v3 + 64) = v30;
    v25 = v38;
    v39 = v38;
    v40 = v37;
    *(v3 + 80) = v37;
    *(v3 + 88) = v25;
    sub_25BAA486C(&v40, &v30, &qword_27FBB5DD8, &qword_25BCC7138);
    sub_25BAA486C(&v39, &v30, &unk_27FBB5DE0, &qword_25BCC7140);
    sub_25BBB8E54(&v32);
  }

  return v3;
}

double sub_25BBB4E90@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[2] = a2;
  v31 = a1;
  v5 = sub_25BCB5EBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v12 = sub_25BCB5EEC();
  __swift_project_value_buffer(v12, qword_28154BEB8);
  sub_25BCB5EAC();
  v13 = sub_25BCB5EDC();
  v14 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v15 = swift_slowAlloc();
    v27[1] = v3;
    v16 = a3;
    v17 = v15;
    *v15 = 0;
    v18 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v13, v14, v18, "Build MPSGraph", "", v17, 2u);
    v19 = v17;
    a3 = v16;
    MEMORY[0x25F8797F0](v19, -1, -1);
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_25BCB5F2C();
  swift_allocObject();
  v20 = sub_25BCB5F1C();
  (*(v6 + 8))(v11, v5);
  type metadata accessor for MPSGraphExecutor.MPSGraphExecutorComponentsBuilder();
  swift_initStackObject();

  v22 = sub_25BBB8CB0(v21);
  v23 = v31;
  sub_25BBB71D0(v31, v22);
  v24 = v27[3];
  sub_25BBB7694(v23, v22);
  if (v24)
  {

    sub_25BBB6F68(v20, "Build MPSGraph");
  }

  else
  {
    sub_25BBB7DF4(v23, v22);
    sub_25BBB8304(v28);

    sub_25BBB6F68(v20, "Build MPSGraph");

    v25 = v28[1];
    *a3 = v28[0];
    *(a3 + 16) = v25;
    result = *&v29;
    *(a3 + 32) = v29;
    *(a3 + 48) = v30;
  }

  return result;
}

void *sub_25BBB51A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5050, &unk_25BCC7160);
  result = sub_25BCB6D0C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_25BBB522C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v147 = a2;
  v127 = a4;
  i = sub_25BCB5EEC();
  v136 = *(i - 8);
  MEMORY[0x28223BE20](i);
  v135 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_25BCB5EBC();
  v10 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v131 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v119 - v13;
  MEMORY[0x28223BE20](v14);
  v141 = &v119 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v119 - v17;
  v148 = a1;
  v19 = a1[2];
  swift_unownedRetainStrong();
  sub_25BBC9934();
  v142 = v20;
  v143 = v19;

  if (qword_28154BEB0 != -1)
  {
    goto LABEL_107;
  }

LABEL_2:
  v137 = i;
  v21 = __swift_project_value_buffer(i, qword_28154BEB8);
  sub_25BCB5EAC();
  v139 = v21;
  v22 = sub_25BCB5EDC();
  v23 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v24 = a3;
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v22, v23, v26, "Prepare MPSGraph Inputs", "", v25, 2u);
    v27 = v25;
    a3 = v24;
    MEMORY[0x25F8797F0](v27, -1, -1);
  }

  v28 = *(v10 + 16);
  i = v138;
  v130 = v10 + 16;
  v129 = v28;
  v28(v141, v18, v138);
  v128 = sub_25BCB5F2C();
  swift_allocObject();
  v140 = sub_25BCB5F1C();
  v29 = *(v10 + 8);
  v10 += 8;
  v133 = v10;
  v132 = v29;
  v29(v18, i);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E40, &unk_25BCC7170);
  v30 = MEMORY[0x277D84F90];
  v31 = sub_25BCB614C();
  v32 = 0;
  v158 = v31;
  v156 = v30;
  v157 = v30;
  v33 = v148[4];
  v144 = v147 + 32;
  v34 = (v33 + 48);
  v35 = *(v33 + 16);
  v145 = v33;
  v146 = v35;
  while (v146 != v32)
  {
    if (v32 >= *(v145 + 16))
    {
      goto LABEL_100;
    }

    v18 = *(v34 - 1);
    v36 = *v34;
    if (!a3[2])
    {
      v59 = v36;
      sub_25BCB617C();
LABEL_22:
      v60 = v140;

      sub_25BBB9B78();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();

      sub_25BBB6F68(v60, "Prepare MPSGraph Inputs");
    }

    v149 = v34;
    v150 = v32;
    v37 = v5;
    v10 = v30;
    v38 = *(v34 - 2);
    swift_bridgeObjectRetain_n();
    v39 = a3;
    a3 = v36;
    v5 = sub_25BA9266C(v38, v18);
    LOBYTE(v38) = v40;

    if ((v38 & 1) == 0)
    {
      goto LABEL_22;
    }

    v41 = *(v39[7] + 8 * v5);
    if (!*(v41 + 16))
    {
      goto LABEL_22;
    }

    v42 = *(v41 + 32);
    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    if (v42 >= *(v147 + 16))
    {
      goto LABEL_102;
    }

    i = v39;
    v43 = *(v144 + 24 * v42 + 16);
    swift_retain_n();
    v44 = sub_25BA928B4();
    [v44 lock];

    sub_25BA92920(v43, 0, 0, &aBlock);
    if (v37)
    {
      [*(v43 + 224) unlock];

      __break(1u);
LABEL_110:
      sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001ELL, 0x800000025BCDF900, "NeuralNetworks/MPSExtensions.swift", 34, 2, 60);
      while (1)
      {
        __break(1u);
LABEL_112:
        sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000027, 0x800000025BCDF8B0, "NeuralNetworks/MPSExtensions.swift", 34, 2, 35);
      }
    }

    v10 = 0;
    [*(v43 + 224) unlock];

    v45 = sub_25BBB6800(aBlock, *(&aBlock + 1), a3, v148, &v158, &v157);
    swift_unknownObjectRelease();
    v46 = v45;
    MEMORY[0x25F876F40]();
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25BCB67AC();
    }

    sub_25BCB680C();

    v30 = v156;
    v34 = v149 + 3;
    v32 = v150 + 1;
    v5 = 0;
    a3 = i;
  }

  swift_beginAccess();
  v47 = sub_25BCB617C();
  v48 = sub_25BC54C2C(v47);
  swift_beginAccess();
  v124 = v157;

  sub_25BBB6F68(v140, "Prepare MPSGraph Inputs");

  (*(v136 + 16))(v135, v139, v137);
  sub_25BCB5EAC();
  v49 = swift_slowAlloc();
  *v49 = 0;
  v50 = sub_25BCB5EDC();
  v51 = sub_25BCB6D5C();
  v52 = sub_25BCB5E9C();
  v122 = v50;
  v120 = v49;
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v50, v51, v52, "Run MPSGraph", "", v49, 2u);
  v53 = v143;
  swift_unownedRetainStrong();
  v54 = *(v53 + 24);
  swift_unknownObjectRetain();

  v126 = [objc_opt_self() commandBufferFromCommandQueue_];
  swift_unknownObjectRelease();
  v55 = *(v48 + 16);
  v121 = v5;
  v125 = v30;
  v123 = v48;
  if (v55)
  {
    v56 = (v48 + 40);
    v57 = v126;
    v58 = MEMORY[0x277D84F90];
    do
    {
      [v57 encodeWaitForEvent:*(v56 - 1) value:*v56];
      v56 += 2;
      --v55;
    }

    while (v55);
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v158 = v58;
  v63 = v148;
  v64 = v148[6];
  sub_25BAC1E24(*(v64 + 16), 0);
  v10 = v158;
  v157 = v58;
  v149 = v64;
  sub_25BAC1E24(*(v64 + 16), 0);
  v65 = v157;
  sub_25BAFA7F0(v63[8]);
  sub_25BCB737C();

  i = qword_25BCC7310;
  v5 = 0x277CD7000uLL;
  while (1)
  {
    sub_25BCB75DC();
    v18 = aBlock;
    if (!aBlock)
    {
      break;
    }

    a3 = BYTE8(aBlock);
    v66 = *(aBlock + 16);
    if (v66)
    {
      v67 = (aBlock + 32);
      v68 = 1;
      while (1)
      {
        v69 = *v67++;
        v70 = v68 * v69;
        if ((v68 * v69) >> 64 != (v68 * v69) >> 63)
        {
          break;
        }

        v68 = v70;
        if (!--v66)
        {
          goto LABEL_32;
        }
      }

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
      swift_once();
      goto LABEL_2;
    }

    v70 = 1;
LABEL_32:
    if (BYTE8(aBlock) - 1 > 0xA)
    {
      v71 = 1;
    }

    else
    {
      v71 = qword_25BCC7310[(BYTE8(aBlock) - 1)];
    }

    v72 = v70 * v71;
    if ((v70 * v71) >> 64 != (v70 * v71) >> 63)
    {
      goto LABEL_103;
    }

    swift_unownedRetainStrong();
    v73 = sub_25BBC9A4C(v72, 0);

    if (!v73)
    {

      sub_25BBB9B78();
      swift_allocError();
      *v111 = 2;
      swift_willThrow();

      v132(v134, v138);
      return (*(v136 + 8))(v135, v137);
    }

    v74 = sub_25BCB617C();
    v75 = sub_25BAF99E8(v74);

    v76 = 268435472;
    switch(a3)
    {
      case 1uLL:
        v76 = 536870928;
        goto LABEL_49;
      case 2uLL:
        v76 = 536870944;
        goto LABEL_49;
      case 3uLL:
        v76 = 536870976;
        goto LABEL_49;
      case 4uLL:
        v76 = 8;
        goto LABEL_49;
      case 5uLL:
        v76 = 16;
        goto LABEL_49;
      case 6uLL:
        v76 = 32;
        goto LABEL_49;
      case 7uLL:
        v76 = 64;
        goto LABEL_49;
      case 8uLL:
        goto LABEL_49;
      case 9uLL:
        v76 = 2415919120;
        goto LABEL_49;
      case 0xAuLL:
        v76 = 268435488;
        goto LABEL_49;
      case 0xBuLL:
        goto LABEL_110;
      case 0xCuLL:
        v76 = 2147483656;
        goto LABEL_49;
      default:
        v76 = 536870920;
LABEL_49:
        objc_allocWithZone(MEMORY[0x277CD7890]);
        v77 = swift_unknownObjectRetain();
        v78 = sub_25BBB8E84(v77, v75, v76);

        v79 = swift_unknownObjectRetain();
        MEMORY[0x25F876F40](v79);
        if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v10 = v158;
        v80 = v78;
        MEMORY[0x25F876F40]();
        if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();

        swift_unknownObjectRelease();
        v65 = v157;
        break;
    }
  }

  sub_25BCB617C();
  if (v10 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E48, &unk_25BCC7180);
    v147 = sub_25BCB74EC();
  }

  else
  {
    sub_25BCB78CC();
    v147 = v10;
  }

  v81 = v131;

  v82 = v148[3];
  sub_25BB2BA50(0, &unk_27FBB5E50, 0x277CD7890);
  v83 = sub_25BCB672C();
  v145 = v65;
  v84 = sub_25BCB672C();
  v85 = v126;

  swift_unownedRetainStrong();
  v86 = sub_25BBC998C();

  v87 = v142;
  [v85 encodeSignalEvent:v86 value:v142];
  swift_unknownObjectRelease();
  swift_unownedRetainStrong();
  v88 = sub_25BBC99EC();

  [v85 encodeSignalEvent:v88 value:v87];
  swift_unknownObjectRelease();
  v89 = swift_allocObject();
  *(v89 + 16) = v124;
  v154 = nullsub_1;
  v155 = v89;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v152 = sub_25BBB66B8;
  v153 = &block_descriptor_0;
  v90 = _Block_copy(&aBlock);
  sub_25BCB617C();

  [v85 addCompletedHandler_];
  _Block_release(v90);
  [v85 commit];
  sub_25BCB5EAC();
  v91 = sub_25BCB5EDC();
  v18 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    v93 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v91, v18, v93, "Prepare MPSGraph Outputs", "", v92, 2u);
    MEMORY[0x25F8797F0](v92, -1, -1);
  }

  v94 = v138;
  v129(v141, v81, v138);
  swift_allocObject();
  v131 = sub_25BCB5F1C();
  v132(v81, v94);
  v95 = v149[2];
  v144 = v147 & 0xC000000000000001;
  v140 = v147 & 0xFFFFFFFFFFFFFF8;
  v10 = v145;
  v141 = (v145 & 0xC000000000000001);
  v139 = v145 & 0xFFFFFFFFFFFFFF8;
  v96 = (v149 + 5);
  v146 = -v95;
  v150 = MEMORY[0x277D84F90];
  for (i = 4; v146 + i != 4; ++i)
  {
    v97 = i - 4;
    if (i - 4 >= v149[2])
    {
      goto LABEL_104;
    }

    v98 = *(v96 - 1);
    v99 = *v96;
    if (v144)
    {
      sub_25BCB617C();
      v18 = MEMORY[0x25F8779B0](i - 4, v147);
    }

    else
    {
      if (v97 >= *(v140 + 16))
      {
        goto LABEL_105;
      }

      v18 = *(v147 + 8 * i);
      sub_25BCB617C();
      swift_unknownObjectRetain();
    }

    if (v141)
    {
      v100 = MEMORY[0x25F8779B0](i - 4, v10);
    }

    else
    {
      if (v97 >= *(v139 + 16))
      {
        goto LABEL_106;
      }

      v100 = *(v10 + 8 * i);
    }

    a3 = v100;
    v101 = sub_25BBB6E1C(v98, v99, v100, v148);
    TensorShape.init(_:)(v101);
    v102 = [a3 dataType];
    switch(v102)
    {
      case 0x80000008:
        v103 = 12;
        break;
      case 0x20000040u:
        goto LABEL_79;
      case 8u:
        v103 = 4;
        break;
      case 0x10u:
        v103 = 5;
        break;
      case 0x20u:
        v103 = 6;
        break;
      case 0x40u:
LABEL_79:
        v103 = 3;
        break;
      case 0x10000010u:
        v103 = 8;
        break;
      case 0x10000020u:
        v103 = 10;
        break;
      case 0x20000008u:
        v103 = 0;
        break;
      case 0x20000010u:
        v103 = 1;
        break;
      case 0x20000020u:
        v103 = 2;
        break;
      case 0x90000010:
        v103 = 9;
        break;
      default:
        goto LABEL_112;
    }

    LOBYTE(v158) = v103;
    v104 = v143;
    swift_unownedRetainStrong();
    type metadata accessor for MPSGraphTensorStorage();
    swift_allocObject();
    swift_unknownObjectRetain();
    v105 = sub_25BC297AC(&aBlock, &v158, v18, v142, v104);
    v5 = v98;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFE55C();
      v150 = v109;
    }

    v106 = *(v150 + 16);
    if (v106 >= *(v150 + 24) >> 1)
    {
      sub_25BAFE55C();
      v150 = v110;
    }

    swift_unknownObjectRelease();
    v107 = v150;
    *(v150 + 16) = v106 + 1;
    v108 = (v107 + 32 * v106);
    v108[4] = v98;
    v108[5] = v99;
    v108[6] = v105;
    v108[7] = &off_286D50248;
    v96 += 3;
    v10 = v145;
  }

  sub_25BBB6F68(v131, "Prepare MPSGraph Outputs");

  v112 = sub_25BCB6D4C();
  v113 = v134;
  v114 = sub_25BCB5E9C();
  v115 = v112;
  v116 = v122;
  v117 = v120;
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v122, v115, v114, "Run MPSGraph", "", v120, 2u);

  MEMORY[0x25F8797F0](v117, -1, -1);

  v132(v113, v138);
  (*(v136 + 8))(v135, v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&aBlock + 1) = sub_25BCB614C();
  v118 = sub_25BA93BF8(v150);

  *&aBlock = v118;
  result = sub_25BA957C4();
  *v127 = aBlock;
  return result;
}

uint64_t sub_25BBB66B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BBB6718()
{
  swift_unownedRelease();

  return v0;
}

uint64_t sub_25BBB6790()
{
  sub_25BBB6718();

  return swift_deallocClassInstance();
}

id sub_25BBB6800(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (object_getClass(a1) != _TtC14NeuralNetworks21MPSGraphTensorStorage || a1 == 0)
  {
    goto LABEL_11;
  }

  v13 = swift_unknownObjectRetain();
  v14 = sub_25BC29614(v13);
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_11:
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v45[2] = a4;
    v45[3] = a3;
    v45[4] = a1;
    v45[5] = a2;
    v45[6] = a6;
    v27 = *(a2 + 64);
    v28 = sub_25BB2BA50(0, &unk_27FBB5E50, 0x277CD7890);
    v27(v48, sub_25BBB9C40, v45, v28, ObjectType, a2);
    return v48[0];
  }

  v15 = v14;
  v16 = *(a4 + 16);
  swift_unownedRetainStrong();
  v17 = sub_25BC296A0();
  v20 = v17;
  v21 = v18;
  v22 = v19;
  if (v19 >> 62)
  {
    sub_25BBB9C64(v17, v18, v19);
  }

  else
  {
    v46 = v15;
    v23 = *(v16 + 16);

    v24 = [v23 registryID];
    if (v24 != [*(v22 + 16) registryID])
    {

      v25 = sub_25BBC998C();
      goto LABEL_14;
    }

    if (v16 != v22)
    {

      v25 = sub_25BBC99EC();
LABEL_14:
      v30 = v25;
      v15 = v46;

      sub_25BBB9C64(v20, v21, v22);

      swift_beginAccess();
      if (sub_25BB3EE04(v30, *a5))
      {
        v32 = v31;
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
        v32 = 0;
      }

      if (v32 > v21)
      {
        v21 = v32;
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_25BC1A63C(v30, v21, v30, isUniquelyReferenced_nonNull_native, v34, v35, v36, v37, v46, *a5);
      *a5 = v47;
      swift_endAccess();
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    sub_25BBB9C64(v20, v21, v22);

    v15 = v46;
  }

LABEL_20:
  v38 = sub_25BBB9A9C(a3, &selRef_shape, &qword_28154BD90, 0x277CCABB0);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v40 = swift_getObjectType();
    (*(a2 + 16))(v48, v40, a2);
    v39 = sub_25BAF99E8(v48[0]);
  }

  v41 = swift_getObjectType();
  (*(a2 + 8))(v48, v41, a2);
  v42 = sub_25BC6640C();
  v43 = objc_allocWithZone(MEMORY[0x277CD7890]);
  v29 = sub_25BBB8E84(v15, v39, v42);
  swift_unknownObjectRelease();
  return v29;
}

uint64_t sub_25BBB6BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v31 = a4;
  v33 = a8;
  v13 = sub_25BCB59BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v32 = sub_25BBC98B8();

  if (a1)
  {
    (*(v14 + 104))(v16, *MEMORY[0x277CC92A8], v13);
    v18 = MEMORY[0x25F876200](a1, a2 - a1, v16);
    v20 = v19;
    v21 = sub_25BBB9A9C(v31, &selRef_shape, &qword_28154BD90, 0x277CCABB0);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      ObjectType = swift_getObjectType();
      (*(a6 + 16))(v34, ObjectType, a6);
      v22 = sub_25BAF99E8(v34[0]);
    }

    v24 = swift_getObjectType();
    (*(a6 + 8))(v34, v24, a6);
    v25 = sub_25BC6640C();
    v26 = objc_allocWithZone(MEMORY[0x277CD7890]);
    v27 = sub_25BBB8F1C(v32, v18, v20, v22, v25);
    swift_beginAccess();
    sub_25BAFD0A0();
    v28 = *(*a7 + 16);
    sub_25BAFD1F8(v28);
    v29 = *a7;
    *(v29 + 16) = v28 + 1;
    v30 = v29 + 16 * v28;
    *(v30 + 32) = a5;
    *(v30 + 40) = a6;
    swift_endAccess();
    *v33 = v27;
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBB6E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BBB47B0(a1, a2, *(a4 + 64), &v17);
  v6 = v17;
  v7 = *(v17 + 16);
  if (v7)
  {
    v8 = (v17 + 32);
    v9 = 1;
    while (1)
    {
      v10 = *v8++;
      v11 = v9 * v10;
      if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
      {
        break;
      }

      v9 = v11;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v11 = 1;
LABEL_7:
  sub_25BB730A4();
  if (v11 != v12)
  {
LABEL_10:
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25BCB70FC();

    MEMORY[0x25F876C90](a1, a2);
    MEMORY[0x25F876C90](11815, 0xE200000000000000);
    v17 = 0xD00000000000002BLL;
    v18 = 0x800000025BCDF940;
    BYTE4(v27) = 4;
    sub_25BCB617C();
    sub_25BA97890("dimensionsForOutput(named:tensorData:)", 38, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphExecutor.swift", 116, 2, 281, v15, v16, 0xD00000000000002BLL, 0x800000025BCDF940, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v13 = sub_25BAF99E8(v6);

  return v13;
}

uint64_t sub_25BBB6F68(uint64_t a1, const char *a2)
{
  v2 = sub_25BCB5EFC();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v16 = sub_25BCB5EEC();
  __swift_project_value_buffer(v16, qword_28154BEB8);
  v17 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v18 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v4 + 88))(v8, v2) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v8, v2);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v17, v18, v21, a2, v19, v20, 2u);
    MEMORY[0x25F8797F0](v20, -1, -1);
  }

  return (*(v11 + 8))(v15, v9);
}

void sub_25BBB71D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  if (v3 >> 62)
  {
    goto LABEL_41;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v48 = a2[2];
      v50 = v3 & 0xC000000000000001;
      swift_beginAccess();
      v5 = 0;
      v45 = v3 + 32;
      v46 = v4;
      v47 = v3;
      v49 = a2;
LABEL_4:
      sub_25BAB4D78(v5, v50 == 0, v3);
      if (v50)
      {
        v6 = MEMORY[0x25F8779B0](v5, v3);
      }

      else
      {
        v6 = *(v45 + 8 * v5);
      }

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

      v8 = sub_25BC458D0();
      v10 = v9;
      sub_25BAF99E8(*(v6 + 152));
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v11 = sub_25BCB672C();

      v12 = sub_25BC6640C();
      v13 = sub_25BBB9A2C(v11, v12, v8, v10, v48);

      v14 = *(v6 + 152);
      HIDWORD(v52) = *(v6 + 160);
      v15 = a2[5];
      v16 = (v15 + 48);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = *v16;
        if (*(v16 - 2) != v8 || *(v16 - 1) != v10)
        {
          v16 += 3;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        sub_25BCB617C();
        sub_25BCB617C();
        v20 = v18;
        if (v18 != v13)
        {
          sub_25BCB70FC();

          MEMORY[0x25F876C90](v8, v10);
          MEMORY[0x25F876C90](11872, 0xE200000000000000);
          sub_25BCB617C();
          sub_25BA97890("addInput(key:value:sourceDescriptor:)", 37, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphExecutor.swift", 116, 2, 455, v43, v44, v45, v46, v47, v48, v49, v50, a1, v52, 0xD00000000000001BLL, 0x800000025BCDF800, 0xD00000000000001BLL, 0x800000025BCDF800, v54, v55, v56);
        }

        a2 = v49;
LABEL_32:
        sub_25BAC44E4();
        swift_beginAccess();
        v42 = v13;
        swift_isUniquelyReferenced_nonNull_native();
        v53 = a2[4];
        sub_25BC19B38();
        a2[4] = v53;

        swift_endAccess();

        v3 = v47;
        if (v5 != v46)
        {
          goto LABEL_4;
        }

        return;
      }

      v21 = v14;
      sub_25BCB617C();
      a2 = v49;
      swift_beginAccess();
      sub_25BCB617C();
      v22 = v13;
      sub_25BAFD018();
      v23 = *(v49[5] + 16);
      v3 = (v49 + 5);
      sub_25BAFD160(v23);
      v24 = v49[5];
      *(v24 + 16) = v23 + 1;
      v25 = (v24 + 24 * v23);
      v25[4] = v8;
      v25[5] = v10;
      v25[6] = v22;
      v49[5] = v24;
      swift_endAccess();

      v26 = *(v21 + 16);
      if (v26)
      {
        v27 = (v21 + 32);
        v28 = 1;
        while (1)
        {
          v29 = *v27++;
          v30 = v28 * v29;
          if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
          {
            break;
          }

          v28 = v30;
          if (!--v26)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

      v30 = 1;
LABEL_23:
      if ((HIDWORD(v52) - 1) > 0xA)
      {
        v31 = 1;
      }

      else
      {
        v31 = qword_25BCC7310[(BYTE4(v52) - 1)];
      }

      v3 = v30 * v31;
      if ((v30 * v31) >> 64 != (v30 * v31) >> 63)
      {
        goto LABEL_36;
      }

      v32 = v49[6];
      v7 = __OFADD__(v32, v3);
      v33 = v32 + v3;
      if (v7)
      {
        goto LABEL_37;
      }

      v49[6] = v33;
      v34 = v49[3];
      swift_unownedRetainStrong();
      v35 = *(v34 + 16);
      swift_unknownObjectRetain();

      v3 = [v35 heapBufferSizeAndAlignWithLength:v3 options:0];
      v37 = v36;
      swift_unknownObjectRelease();

      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        goto LABEL_38;
      }

      if (__OFADD__(v3, v38))
      {
        goto LABEL_39;
      }

      v39 = (v3 + v38) & ~v38;
      v40 = v49[7];
      v7 = __OFADD__(v40, v39);
      v41 = v40 + v39;
      if (!v7)
      {
        v49[7] = v41;
        goto LABEL_32;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      v4 = sub_25BCB749C();
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }
}

void *sub_25BBB7694(void *result, void *a2)
{
  v2 = a2;
  v3 = 0;
  v89 = result;
  v4 = result[15];
  v77 = v4;
  v78 = *(v4 + 16);
  v76 = v4 + 32;
LABEL_2:
  while (2)
  {
    if (v3 == v78)
    {
      return result;
    }

    if (v3 >= *(v77 + 16))
    {
      goto LABEL_70;
    }

    v5 = (v76 + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    if (!dynamic_cast_existential_1_conditional(v7, ObjectType, &protocol descriptor for MPSGraphOperationEncodable))
    {
      sub_25BBB9B78();
      swift_allocError();
      *v73 = 0;
      return swift_willThrow();
    }

    v10 = v9;
    v83 = v3;
    v11 = swift_unknownObjectRetain_n();
    sub_25BBB8AD0(v11, v6, v2);
    v13 = v12;
    v14 = sub_25BAAF54C(v12);
    v15 = swift_getObjectType();
    v79 = v6[4];
    v16 = v79(v15, v6);
    v17 = sub_25BAAF54C(v16);

    if (v14 != v17)
    {

      sub_25BBB9B78();
      swift_allocError();
      v75 = 1;
LABEL_61:
      *v74 = v75;
      swift_willThrow();
      return swift_unknownObjectRelease_n();
    }

    v18 = swift_getObjectType();
    v19 = (*(v10 + 24))(v2[2], v13, v18, v10);
    if (v82)
    {
      swift_unknownObjectRelease_n();
    }

    v81 = v18;
    v88 = v19;
    v20 = sub_25BAAF54C(v19);
    v21 = v6[5];
    v22 = *(v21(v15, v6) + 16);

    if (v20 != v22)
    {

      sub_25BBB9B78();
      swift_allocError();
      v75 = 3;
      goto LABEL_61;
    }

    v80 = v10;
    v23 = *(v21(v15, v6) + 16);

    v2 = a2;
    v87 = v23;
    if (!v23)
    {
LABEL_23:
      v3 = v83 + 1;

      if (((*(v80 + 16))(v81) & 1) == 0)
      {
        swift_unknownObjectRelease_n();

        continue;
      }

      v79(v15, v6);
      swift_beginAccess();
      swift_beginAccess();
      while (1)
      {
        if (!sub_25BBB4368())
        {

          swift_unknownObjectRelease_n();

          goto LABEL_2;
        }

        v44 = v43;
        v45 = v89[13];
        v46 = v89[14];
        v47 = sub_25BAC44E4();
        if (*(v46 + 16) && (v49 = sub_25BA9266C(v47, v48), (v50 & 1) != 0))
        {
          v51 = *(*(v46 + 56) + 8 * v49);
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          if (v51 >= *(v45 + 16))
          {
            goto LABEL_67;
          }
        }

        else
        {

          v45 = v89[17];
          v52 = v89[18];
          v53 = sub_25BAC44E4();
          if (!*(v52 + 16) || (v55 = sub_25BA9266C(v53, v54), (v56 & 1) == 0))
          {

            v59 = sub_25BAC44E4();
            v58 = v60;
            goto LABEL_37;
          }

          v51 = *(*(v52 + 56) + 8 * v55);
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v51 >= *(v45 + 16))
          {
            goto LABEL_69;
          }
        }

        v57 = v45 + 16 * v51;
        v59 = *(v57 + 32);
        v58 = *(v57 + 40);
        sub_25BCB617C();

LABEL_37:
        v2 = a2;
        v61 = a2[11];
        v62 = (v61 + 40);
        v63 = *(v61 + 16) + 1;
        while (--v63)
        {
          if (*(v62 - 1) != v59 || *v62 != v58)
          {
            v62 += 3;
            if ((sub_25BCB789C() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        v65 = a2[8];
        v66 = (v65 + 40);
        v67 = *(v65 + 16) + 1;
        while (--v67)
        {
          if (*(v66 - 1) != v59 || *v66 != v58)
          {
            v66 += 3;
            if ((sub_25BCB789C() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        swift_beginAccess();
        sub_25BCB617C();
        v69 = v44;
        sub_25BAFD018();
        v70 = *(a2[11] + 16);
        sub_25BAFD160(v70);
        v71 = a2[11];
        *(v71 + 16) = v70 + 1;
        v72 = (v71 + 24 * v70);
        v2 = a2;
        v72[4] = v59;
        v72[5] = v58;
        v72[6] = v69;
        a2[11] = v71;
        swift_endAccess();
LABEL_54:
      }
    }

    break;
  }

  v24 = 0;
  v86 = v6[9];
  v84 = v15;
  v85 = v6;
  while (1)
  {
    v25 = v86(v24, v15, v6);
    v27 = v26;
    if ((v88 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x25F8779B0](v24, v88);
    }

    else
    {
      if (v24 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v28 = *(v88 + 8 * v24 + 32);
    }

    v29 = v28;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v30 = v2[4];
    v2[4] = 0x8000000000000000;
    v31 = sub_25BA9266C(v25, v27);
    if (__OFADD__(v30[2], (v32 & 1) == 0))
    {
      break;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E30, &unk_25BCCBEA0);
    if (sub_25BCB745C())
    {
      v35 = sub_25BA9266C(v25, v27);
      v2 = a2;
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_71;
      }

      v33 = v35;
      if ((v34 & 1) == 0)
      {
LABEL_18:
        v30[(v33 >> 6) + 8] |= 1 << v33;
        v37 = (v30[6] + 16 * v33);
        *v37 = v25;
        v37[1] = v27;
        *(v30[7] + 8 * v33) = v29;
        v38 = v30[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_64;
        }

        v30[2] = v40;
        goto LABEL_22;
      }
    }

    else
    {
      v2 = a2;
      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v41 = v30[7];
    v42 = *(v41 + 8 * v33);
    *(v41 + 8 * v33) = v29;

LABEL_22:
    ++v24;
    v2[4] = v30;
    swift_endAccess();
    v15 = v84;
    v6 = v85;
    if (v87 == v24)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BBB7DF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 152);
  v56 = sub_25BA9BEA0(v4);
  swift_beginAccess();
  result = swift_beginAccess();
  v6 = 0;
  v54 = v4 & 0xC000000000000001;
  v55 = v4;
  v52 = v4 + 32;
LABEL_2:
  while (v6 != v56)
  {
    v7 = v54;
    sub_25BAB4D78(v6, v54 == 0, v55);
    if (v54)
    {
      v8 = MEMORY[0x25F8779B0](v6, v55);
    }

    else
    {
      v8 = *(v52 + 8 * v6);
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_44;
    }

    v2 = sub_25BC458D0();
    v7 = v10;
    v11 = sub_25BAC44E4();
    v13 = v12;
    swift_beginAccess();
    v14 = sub_25BB3EDBC(v11, v13, a2[4]);

    if (!v14)
    {
      swift_endAccess();

      sub_25BBB9B78();
      swift_allocError();
      *v49 = 3;
      swift_willThrow();
    }

    swift_endAccess();
    v63 = *(v8 + 152);
    v58 = v8;
    HIDWORD(v57) = *(v8 + 160);
    v15 = a2;
    v16 = a2[8];
    v17 = (v16 + 48);
    v18 = *(v16 + 16) + 1;
    while (--v18)
    {
      v19 = *v17;
      if (*(v17 - 2) != v2 || *(v17 - 1) != v7)
      {
        v17 += 3;
        if ((sub_25BCB789C() & 1) == 0)
        {
          continue;
        }
      }

      sub_25BCB617C();
      sub_25BCB617C();
      v21 = v19;
      if (v19 == v14)
      {

        a2 = v15;
        goto LABEL_2;
      }

LABEL_50:
      sub_25BCB70FC();

      MEMORY[0x25F876C90](v2, v7);
      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BCB617C();
      sub_25BA97890("addOutput(key:value:sourceDescriptor:)", 38, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphExecutor.swift", 116, 2, 481, v50, v51, v52, a1, v54, v55, v56, v57, v58, 0xD00000000000001CLL, 0x800000025BCDF730, 0xD00000000000001CLL, 0x800000025BCDF730, v59, v60, v61, v62);
    }

    a2 = v15;
    v22 = v15[11];
    v23 = *(v22 + 16);
    sub_25BCB617C();
    v24 = 0;
    v25 = (v22 + 40);
    while (v23 != v24)
    {
      v26 = *(v25 - 1) == v2 && *v25 == v7;
      if (v26 || (sub_25BCB789C() & 1) != 0)
      {
        swift_beginAccess();
        sub_25BB3080C(v24);
        v28 = v27;
        swift_endAccess();

        break;
      }

      ++v24;
      v25 += 3;
    }

    swift_beginAccess();
    sub_25BCB617C();
    v29 = v14;
    sub_25BAFD018();
    v30 = *(v15[8] + 16);
    sub_25BAFD160(v30);
    v31 = v15[8];
    *(v31 + 16) = v30 + 1;
    v32 = (v31 + 24 * v30);
    v32[4] = v2;
    v32[5] = v7;
    v32[6] = v29;
    v15[8] = v31;
    swift_endAccess();

    v2 = v63;
    v33 = *(v63 + 16);
    if (v33)
    {
      v34 = (v63 + 32);
      v35 = 1;
      while (1)
      {
        v36 = *v34++;
        v37 = v35 * v36;
        if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
        {
          break;
        }

        v35 = v37;
        if (!--v33)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v37 = 1;
LABEL_31:
    if ((HIDWORD(v57) - 1) > 0xA)
    {
      v38 = 1;
    }

    else
    {
      v38 = qword_25BCC7310[(BYTE4(v57) - 1)];
    }

    v7 = v37 * v38;
    if ((v37 * v38) >> 64 != (v37 * v38) >> 63)
    {
      goto LABEL_45;
    }

    v39 = v15[9];
    v9 = __OFADD__(v39, v7);
    v40 = (v39 + v7);
    if (v9)
    {
      goto LABEL_46;
    }

    v15[9] = v40;
    v41 = v15[3];
    swift_unownedRetainStrong();
    v42 = *(v41 + 16);
    swift_unknownObjectRetain();

    v7 = [v42 heapBufferSizeAndAlignWithLength:v7 options:0];
    v44 = v43;
    swift_unknownObjectRelease();

    v45 = v44 - 1;
    if (__OFSUB__(v44, 1))
    {
      goto LABEL_47;
    }

    if (__OFADD__(v7, v45))
    {
      goto LABEL_48;
    }

    v46 = (v7 + v45) & ~v45;
    v47 = v15[10];
    v9 = __OFADD__(v47, v46);
    v48 = v47 + v46;
    if (v9)
    {
      goto LABEL_49;
    }

    v15[10] = v48;
  }

  return result;
}

void sub_25BBB8304(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CD7810]) init];
  [v3 setCompilerOptions_];
  [v3 setOptimizationLevel_];
  v63 = v3;
  [v3 setWaitForCompilationCompletion_];
  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
  sub_25BBB9B10();
  v72 = sub_25BCB614C();
  swift_beginAccess();
  v4 = *(v1 + 40);
  v75 = v1;
  v68 = *(v4 + 16);
  if (v68)
  {
    sub_25BCB617C();
    v5 = 0;
    v6 = 48;
    v66 = v4;
    while (v5 < *(v4 + 16))
    {
      v7 = *(v4 + v6);
      v8 = sub_25BBB9A9C(v7, &selRef_shape, &qword_28154BD90, 0x277CCABB0);
      v9 = [v7 dataType];
      v10 = objc_allocWithZone(MEMORY[0x277CD7880]);
      v11 = sub_25BBB8FE4(v8, v9);
      if (v11)
      {
        v12 = v11;
        v13 = v72;
        if ((v72 & 0xC000000000000001) != 0)
        {
          if (v72 >= 0)
          {
            v13 = (v72 & 0xFFFFFFFFFFFFFF8);
          }

          v14 = sub_25BCB749C();
          if (__OFADD__(v14, 1))
          {
            goto LABEL_49;
          }

          v13 = sub_25BBB9804(v13, v14 + 1);
        }

        swift_isUniquelyReferenced_nonNull_native();
        v15 = sub_25BAFEE6C(v7);
        if (__OFADD__(v13[2], (v16 & 1) == 0))
        {
          goto LABEL_48;
        }

        v17 = v15;
        v18 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E18, &qword_25BCC7148);
        if (sub_25BCB745C())
        {
          v19 = sub_25BAFEE6C(v7);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_54;
          }

          v17 = v19;
        }

        if (v18)
        {
          v21 = v13[7];
          v22 = *(v21 + 8 * v17);
          *(v21 + 8 * v17) = v12;
        }

        else
        {
          v13[(v17 >> 6) + 8] |= 1 << v17;
          *(v13[6] + 8 * v17) = v7;
          *(v13[7] + 8 * v17) = v12;
          v24 = v13[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_50;
          }

          v13[2] = v26;
        }

        v72 = v13;
        v4 = v66;
      }

      else
      {
        v23 = sub_25BBC94A8(v7);
      }

      ++v5;
      v6 += 24;
      if (v68 == v5)
      {

        v2 = v75;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_22:
  v27 = *(v2 + 16);
  swift_unownedRetainStrong();
  v28 = sub_25BBC98B8();

  v29 = sub_25BCB60FC();
  swift_beginAccess();
  v30 = *(v2 + 64);
  v31 = *(v30 + 16);
  if (v31)
  {
    sub_25BCB617C();
    sub_25BCB727C();
    v32 = 48;
    do
    {
      v33 = *(v30 + v32);
      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v32 += 24;
      --v31;
    }

    while (v31);
  }

  else
  {
  }

  v34 = sub_25BCB672C();

  v35 = [v27 compileWithDevice:v28 feeds:v29 targetTensors:v34 targetOperations:0 compilationDescriptor:v63];

  v36 = sub_25BBB9A9C(v35, &selRef_feedTensors, &qword_27FBB3908, 0x277CD7888);
  v37 = v75;
  if (!v36)
  {
    v42 = *(v75 + 40);
    sub_25BCB617C();
LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v74[1] = sub_25BCB614C();
    v57 = sub_25BAF9A88(v42);

    v74[0] = v57;
    sub_25BAFC800();
    v70 = *v74;
    v58 = *(v37 + 64);
    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v74[1] = sub_25BCB614C();
    v59 = sub_25BAF9A88(v58);

    v74[0] = v59;
    sub_25BAFC800();
    swift_beginAccess();
    v60 = *(v37 + 88);
    sub_25BCB617C();
    *(&v71 + 1) = sub_25BCB614C();
    v61 = sub_25BAF9A88(v60);

    *&v71 = v61;
    sub_25BAFC800();
    *a1 = v35;
    *(a1 + 8) = v70;
    *(a1 + 24) = *v74;
    *(a1 + 40) = v71;
    return;
  }

  v38 = v36;
  v39 = sub_25BAAF54C(v36);
  if (!v39)
  {

    v42 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v40 = v39;
  v73 = MEMORY[0x277D84F90];
  sub_25BB00654(0, v39 & ~(v39 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v42 = v73;
    v43 = v38 & 0xC000000000000001;
    while (1)
    {
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43)
      {
        v45 = MEMORY[0x25F8779B0](v41, v38);
      }

      else
      {
        if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v45 = *(v38 + 32 + 8 * v41);
      }

      v46 = v45;
      ++v41;
      v47 = *(v75 + 40);
      v48 = (v47 + 48);
      v49 = *(v47 + 16) + 1;
      do
      {
        if (!--v49)
        {

          sub_25BBB9B78();
          swift_allocError();
          *v56 = 1;
          swift_willThrow();

          return;
        }

        v50 = v48 + 3;
        v51 = *v48;
        v48 += 3;
      }

      while (v51 != v45);
      v69 = v35;
      v65 = *(v50 - 5);
      v67 = v43;
      v52 = *(v50 - 4);
      sub_25BCB617C();
      v64 = v51;

      v54 = *(v73 + 16);
      v53 = *(v73 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_25BB00654((v53 > 1), v54 + 1, 1);
      }

      *(v73 + 16) = v54 + 1;
      v55 = (v73 + 24 * v54);
      v55[4] = v65;
      v55[5] = v52;
      v55[6] = v64;
      v35 = v69;
      v43 = v67;
      if (v44 == v40)
      {

        v37 = v75;
        goto LABEL_46;
      }
    }

LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  sub_25BCB795C();
  __break(1u);
}

void sub_25BBB8AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 32))(ObjectType, a2);
  v19 = MEMORY[0x277D84F90];
  v7 = sub_25BA9BEA0(v6);
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v9 = sub_25BAC44E4();
    v11 = v10;
    swift_beginAccess();
    v12 = *(a3 + 32);
    if (*(v12 + 16))
    {
      v13 = sub_25BA9266C(v9, v11);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      v16 = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();
      v17 = v16;

      MEMORY[0x25F876F40](v18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      sub_25BCB680C();
      ++v8;
    }

    else
    {

LABEL_13:
      swift_endAccess();

      ++v8;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void *sub_25BBB8CB0(uint64_t a1)
{
  v1[2] = [objc_allocWithZone(MEMORY[0x277CD7808]) init];
  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25BCB614C();
  v1[5] = v3;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = v3;
  v1[9] = 0;
  v1[10] = 0;
  v1[11] = v3;
  v1[3] = a1;
  v1[4] = v4;
  swift_unownedRetain();

  return v1;
}

uint64_t sub_25BBB8D54()
{
  swift_unownedRelease();

  return v0;
}

uint64_t sub_25BBB8D9C()
{
  sub_25BBB8D54();

  return swift_deallocClassInstance();
}

unint64_t sub_25BBB8DF0()
{
  result = qword_28154BE40;
  if (!qword_28154BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4E50, &qword_25BCC2AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE40);
  }

  return result;
}

id sub_25BBB8E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB672C();

  v7 = [v3 initWithMTLBuffer:a1 shape:v6 dataType:a3];
  swift_unknownObjectRelease();

  return v7;
}

id sub_25BBB8F1C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25BCB59FC();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v11 = sub_25BCB672C();

  v12 = [v5 initWithDevice:a1 data:v10 shape:v11 dataType:a5];

  sub_25BB0D160(a2, a3);
  return v12;
}

id sub_25BBB8FE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v4 = sub_25BCB672C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithShape:v4 dataType:a2];

  return v5;
}

uint64_t sub_25BBB9070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E20, &unk_25BCC7150);
  result = sub_25BCB759C();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v32 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_25BC42288(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = sub_25BCB6DEC();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_25BBB92D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E60, &qword_25BCC7190);
  v6 = sub_25BCB759C();
  if (v5[2])
  {
    v30 = v5;
    v7 = 0;
    v8 = v5 + 8;
    OUTLINED_FUNCTION_2_43();
    v10 = v9 >> 6;
    v11 = v6 + 8;
    if (a2)
    {
      while (1)
      {
        OUTLINED_FUNCTION_9_28();
LABEL_9:
        v14 = v12 | (v7 << 6);
        v15 = (v5[6] + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(v5[7] + 8 * v14);
        if ((a2 & 1) == 0)
        {
          sub_25BCB617C();
        }

        sub_25BCB79CC();
        sub_25BCB625C();
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_7_27();
        if (((v21 << v20) & ~v11[v19]) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_6_37();
LABEL_20:
        OUTLINED_FUNCTION_3_32();
        *(v11 + v26) |= v27;
        v29 = (v6[6] + 16 * v28);
        *v29 = v16;
        v29[1] = v17;
        *(v6[7] + 8 * v28) = v18;
        ++v6[2];
        v5 = v30;
        if (!a2)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_5_35();
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        if (v11[v22] != -1)
        {
          OUTLINED_FUNCTION_4_37();
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_4:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v10)
        {

          v3 = v2;
          goto LABEL_24;
        }

        ++v13;
        if (v8[v7])
        {
          OUTLINED_FUNCTION_8_29();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_24:
    *v3 = v6;
  }
}

void sub_25BBB9508(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v43 = sub_25BCB5CDC();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v42 = v8 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB0, &qword_25BCBBE00);
  v40 = v3;
  v10 = sub_25BCB759C();
  if (!*(v9 + 16))
  {
LABEL_29:

    *v2 = v10;
    return;
  }

  v11 = 0;
  v12 = (v9 + 64);
  OUTLINED_FUNCTION_2_43();
  v14 = v13 >> 6;
  v37 = (v5 + 16);
  v38 = v9;
  v39 = v5;
  v41 = (v5 + 32);
  v15 = v10 + 8;
  if (!v2)
  {
LABEL_4:
    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v14)
      {
        break;
      }

      ++v17;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_8_29();
        goto LABEL_9;
      }
    }

    if (v40)
    {
      v36 = 1 << *(v9 + 32);
      if (v36 >= 64)
      {
        sub_25BC42288(0, (v36 + 63) >> 6, v12);
      }

      else
      {
        *v12 = -1 << v36;
      }

      *(v9 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_9_28();
LABEL_9:
    v18 = v16 | (v11 << 6);
    v19 = *(v9 + 56);
    v20 = (*(v9 + 48) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v39 + 72);
    v24 = v19 + v23 * v18;
    if (v40)
    {
      (*v41)(v42, v24, v43);
    }

    else
    {
      (*v37)(v42, v24, v43);
      sub_25BCB617C();
    }

    sub_25BCB79CC();
    sub_25BCB625C();
    sub_25BCB7A3C();
    OUTLINED_FUNCTION_7_27();
    if (((v27 << v26) & ~v15[v25]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_37();
LABEL_21:
    OUTLINED_FUNCTION_3_32();
    *(v15 + v32) |= v33;
    v35 = (v10[6] + 16 * v34);
    *v35 = v22;
    v35[1] = v21;
    (*v41)(v10[7] + v23 * v34, v42, v43);
    ++v10[2];
    v9 = v38;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_35();
  while (++v28 != v30 || (v29 & 1) == 0)
  {
    v31 = v28 == v30;
    if (v28 == v30)
    {
      v28 = 0;
    }

    v29 |= v31;
    if (v15[v28] != -1)
    {
      OUTLINED_FUNCTION_4_37();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_25BBB9804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E20, &unk_25BCC7150);
    v2 = sub_25BCB75AC();
    v17 = v2;
    sub_25BCB748C();
    while (1)
    {
      v3 = sub_25BCB74BC();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
      swift_dynamicCast();
      sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_25BBB9070(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_25BCB6DEC();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_25BBB9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();
  v9 = [a5 placeholderWithShape:a1 dataType:a2 name:v8];

  return v9;
}

uint64_t sub_25BBB9A9C(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_25BB2BA50(0, a3, a4);
  v8 = sub_25BCB673C();

  return v8;
}

unint64_t sub_25BBB9B10()
{
  result = qword_27FBB5E08;
  if (!qword_27FBB5E08)
  {
    sub_25BB2BA50(255, &qword_27FBB3908, 0x277CD7888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E08);
  }

  return result;
}

unint64_t sub_25BBB9B78()
{
  result = qword_27FBB5E10;
  if (!qword_27FBB5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E10);
  }

  return result;
}

uint64_t sub_25BBB9C64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:

      result = swift_unknownObjectRelease();
      break;
    case 2uLL:
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
      swift_unknownObjectRelease();
LABEL_3:

      break;
  }

  return result;
}

uint64_t sub_25BBB9CD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MPSGraphExecutor.ExecutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BBB9DC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25BBB9E08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25BBB9E6C()
{
  result = qword_27FBB5E68;
  if (!qword_27FBB5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E68);
  }

  return result;
}

uint64_t Sequential.init(_:_:)()
{
  OUTLINED_FUNCTION_22_17();
  (*(*(v6 - 8) + 32))(v5);
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = v0;
  v7 = type metadata accessor for Sequential(0, &v9);
  return (*(*(v2 - 8) + 32))(v5 + *(v7 + 52), v4, v2);
}

void Sequential.initializeParameters(for:)()
{
  OUTLINED_FUNCTION_9_18();
  v15 = v1;
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_4();
  v9 = *(v3 + 40);
  v10 = *(v3 + 24);
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_35_11();
  Layer.callAsFunction(_:)(v15, v5, v4);
  Layer.callAsFunction(_:)(v0, v10, v9);
  (*(v7 + 8))(v0, AssociatedTypeWitness);
  (*(v13 + 8))(&associated type descriptor for Layer.Output, v11);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBBA148(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726579616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726579616CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BBBA210(char a1)
{
  if (a1)
  {
    return 0x32726579616CLL;
  }

  else
  {
    return 0x31726579616CLL;
  }
}

uint64_t sub_25BBBA278(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BABA604(v3, *v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BBBA2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBBA148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBBA338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB0716C();
  *a1 = result;
  return result;
}

uint64_t sub_25BBBA36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BBBA3C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_25BBBA64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = *(a3 + 24);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  if (a1 == a2)
  {
    v24 = *(a3 + 16);
    v25 = *(a3 + 32);
    a4[3] = v24;
    a4[4] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    v27 = *(*(v24 - 8) + 16);

    return v27(boxed_opaque_existential_0, v4, v24);
  }

  else
  {
    v29 = v20;
    v32 = v18;
    (*(v19 + 16))(v15, v4 + *(a3 + 52), v12, v21);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
      (*(v16 + 32))(v23, v11, a3);
      if (!__OFADD__(a2, 1))
      {
        sub_25BBBA64C(v33, a2 + 1, a3, a4);
        return (*(v16 + 8))(v23, a3);
      }

      __break(1u);
    }

    __swift_storeEnumTagSinglePayload(v11, 1, 1, a3);
    (*(v29 + 8))(v11, v32);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_25BCB70FC();

    v35 = 0x60207865646E49;
    v36 = 0xE700000000000000;
    v34 = v33;
    v30 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v30);

    MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDFAC0);
    result = sub_25BCB74CC("Fatal error", 11, 2, v35, v36, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/Sequential.swift", 99, 2, 79);
    __break(1u);
  }

  return result;
}

void Layer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_35_11();
  (*(v5 + 16))(v0, v6, v2);
  v7 = OUTLINED_FUNCTION_38_10();
  v8(v7);
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_10_16();
}

uint64_t Sequential<>.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = v4;
  type metadata accessor for Sequential.CodingKeys(255, &v11);
  OUTLINED_FUNCTION_14_24();
  swift_getWitnessTable();
  v5 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_13();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B6C();
  LOBYTE(v11) = 0;
  v9 = v14;
  sub_25BCB779C();
  if (!v9)
  {
    LOBYTE(v11) = 1;
    sub_25BCB779C();
  }

  return (*(v7 + 8))(v2, v5);
}

uint64_t Sequential<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_9();
  v33 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_4();
  v36 = v15;
  OUTLINED_FUNCTION_9();
  v35 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_4();
  v37 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  type metadata accessor for Sequential.CodingKeys(255, &v39);
  OUTLINED_FUNCTION_14_24();
  swift_getWitnessTable();
  sub_25BCB76FC();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_24();
  v38 = a2;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a6;
  v24 = type metadata accessor for Sequential(0, &v39);
  OUTLINED_FUNCTION_2();
  v32 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v43;
  sub_25BCB7B2C();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v24;
  LOBYTE(v39) = 0;
  sub_25BCB76AC();
  (*(v35 + 32))(a3, v37, v38);
  LOBYTE(v39) = 1;
  sub_25BCB76AC();
  v28 = OUTLINED_FUNCTION_29_14();
  v29(v28);
  v30 = v43;
  (*(v33 + 32))(a3 + *(v43 + 52), v36, a3);
  (*(v32 + 16))(a8, a3, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v32 + 8))(a3, v30);
}

void static SequentialBuilder.buildBlock<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_35_11();
  (*(v3 + 16))(v0);
  v4 = OUTLINED_FUNCTION_38_10();
  v5(v4);
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v54[1] = v22;
  v55 = v21;
  v59 = v23;
  v60 = v24;
  v26 = v25;
  v28 = v27;
  v56 = v29;
  v58 = v30;
  OUTLINED_FUNCTION_9();
  v32 = v31;
  v57 = a21;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_9();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v61[0] = v43;
  v61[1] = v44;
  v61[2] = v45;
  v61[3] = v46;
  v47 = type metadata accessor for Sequential(0, v61);
  OUTLINED_FUNCTION_2();
  v49 = v48;
  OUTLINED_FUNCTION_11();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = v54 - v52;
  (*(v38 + 16))(v42, v55, v28, v51);
  (*(v32 + 16))(v36, v56, v26);
  OUTLINED_FUNCTION_34_0();
  Sequential.init(_:_:)();
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  (*(v49 + 8))(v53, v47);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D>(_:_:_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v28 = v5;
  v23 = v6;
  OUTLINED_FUNCTION_9();
  v26 = v8;
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v25 = v9;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v24 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_23();
  swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_24();
  (*(v11 + 16))(v15, v27, v4);
  (*(v26 + 16))(v25, v28, v23);
  Sequential.init(_:_:)();
  Layer.appending<A>(_:)();
  (*(v24 + 8))(v0, v16);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  (*(v21 + 8))(v2, v19);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_18();
  v29 = v28;
  v67 = v28;
  v31 = v30;
  v79 = v32;
  v80 = v33;
  v77 = v34;
  v78 = v35;
  v82 = v36;
  v83 = a27;
  v84 = v37;
  v81 = a22;
  v62 = a21;
  v63 = a26;
  v66 = a25;
  v70 = v38;
  OUTLINED_FUNCTION_9();
  v76 = v39;
  v73 = a23;
  v74 = a24;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_4();
  v75 = v41;
  OUTLINED_FUNCTION_9();
  v71 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_4();
  v45 = v44;
  v46 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v72 = v47;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_23();
  v50 = v49;
  v68 = v49;
  WitnessTable = swift_getWitnessTable();
  v85 = v46;
  v86 = v29;
  v87 = WitnessTable;
  v88 = a25;
  v51 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v69 = v52;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v53);
  v55 = &v60 - v54;
  v61 = swift_getWitnessTable();
  v85 = v51;
  v86 = a21;
  v87 = v61;
  v88 = a26;
  v56 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v64 = v57;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_31_13();
  (*(v71 + 16))(v45, v77, v31);
  (*(v76 + 16))(v75, v78, v70);
  Sequential.init(_:_:)();
  Layer.appending<A>(_:)();
  (*(v72 + 8))(v27, v46);
  Layer.appending<A>(_:)();
  (*(v69 + 8))(v55, v51);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v59(v50, v56);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v30;
  a20 = v31;
  v92 = v32;
  v102 = v33;
  v103 = v34;
  v100 = v35;
  v101 = v36;
  v99 = v37;
  v105 = v38;
  v39 = a29;
  v106 = a30;
  v107 = v40;
  v80 = a29;
  v41 = a23;
  v104 = a24;
  v79 = a23;
  v42 = a28;
  v85 = a28;
  v43 = a27;
  v90 = a27;
  v44 = a22;
  v84 = a22;
  v89 = a21;
  v93 = v45;
  OUTLINED_FUNCTION_9();
  v98 = v46;
  v95 = a25;
  v96 = a26;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_4();
  v97 = v48;
  OUTLINED_FUNCTION_9();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1();
  v54 = v53 - v52;
  v55 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2_44(v55, &a15);
  v94 = v56;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v58);
  v60 = v59;
  WitnessTable = swift_getWitnessTable();
  v61 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v91 = v62;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v64);
  v86 = v60;
  v83 = swift_getWitnessTable();
  v108 = v61;
  v109 = v44;
  v110 = v83;
  v111 = v42;
  v65 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v87 = v66;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v67);
  v69 = &v77 - v68;
  v78 = swift_getWitnessTable();
  v108 = v65;
  v109 = v41;
  v110 = v78;
  v111 = v39;
  v70 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  v82 = v71;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_17_24();
  v73 = v92;
  (*(v50 + 16))(v54, v99, v92);
  (*(v98 + 16))(v97, v100, v93);
  OUTLINED_FUNCTION_37_9();
  Sequential.init(_:_:)();
  v74 = v81;
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  (*(v94 + 8))(v43, v73);
  Layer.appending<A>(_:)();
  (*(v91 + 8))(v74, v61);
  OUTLINED_FUNCTION_10_25();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v75(v69, v65);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v76(v39, v70);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v32;
  a20 = v33;
  v69 = v34;
  v75 = v35;
  v76 = v36;
  v37 = a25;
  v38 = a32;
  v39 = a31;
  v40 = a24;
  v41 = a30;
  v42 = a29;
  v70 = a21;
  OUTLINED_FUNCTION_9();
  v74 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_4();
  v73 = v45;
  OUTLINED_FUNCTION_9();
  v71 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v48);
  v49 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2_44(v49, &a12);
  v72 = v50;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v52);
  WitnessTable = swift_getWitnessTable();
  v78 = v42;
  v53 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v53, &WitnessTable);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v55);
  WitnessTable = swift_getWitnessTable();
  v78 = v41;
  v56 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v58);
  WitnessTable = swift_getWitnessTable();
  v78 = v39;
  v59 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_16_4();
  WitnessTable = swift_getWitnessTable();
  v78 = v38;
  v61 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_26_1();
  (*(v71 + 16))(v68, v75, v69);
  (*(v74 + 16))(v73, v76, v70);
  Sequential.init(_:_:)();
  Layer.appending<A>(_:)();
  (*(v72 + 8))();
  OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_25_15();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v63();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v64(v67, v56);
  OUTLINED_FUNCTION_24_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v65(v40, v59);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v66(v37, v61);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v37;
  a20 = v38;
  v93[0] = v39;
  v92 = v40;
  v91 = v41;
  v93[2] = v42;
  v93[3] = a36;
  v93[4] = v43;
  v93[1] = a28;
  v94 = a27;
  v95 = a35;
  v44 = a34;
  v45 = a33;
  v46 = a26;
  v47 = a25;
  v48 = a32;
  v49 = a31;
  v50 = a24;
  v51 = a23;
  v88 = a22;
  OUTLINED_FUNCTION_9();
  v90 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_4();
  v89 = v54;
  v87 = v55;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v57);
  v58 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v58, &a9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v60);
  v96 = v36;
  v97 = v51;
  WitnessTable = swift_getWitnessTable();
  v99 = v49;
  v61 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v61, &v95);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v63);
  v85 = swift_getWitnessTable();
  v96 = v36;
  v97 = v50;
  WitnessTable = v85;
  v99 = v48;
  v64 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v64, v93);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v66);
  v84 = swift_getWitnessTable();
  v96 = v48;
  v97 = v47;
  WitnessTable = v84;
  v99 = v45;
  v67 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v69);
  v83 = swift_getWitnessTable();
  v96 = v67;
  v97 = v46;
  WitnessTable = v83;
  v99 = v44;
  v70 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_26_1();
  v82 = swift_getWitnessTable();
  v96 = v70;
  v97 = v94;
  v72 = OUTLINED_FUNCTION_18_22(v82, v95);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_36_10();
  v74(v86, v91, v87);
  (*(v90 + 16))(v89, v92, v88);
  Sequential.init(_:_:)();
  OUTLINED_FUNCTION_33_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v75();
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_10_25();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v76(v87, v88);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_23_17();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v77 = OUTLINED_FUNCTION_34_0();
  v78(v77);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v79(v87, v67);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v80(v44, v70);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v81(v51, v72);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_9_18();
  v105[1] = v40;
  v105[2] = v41;
  v103 = v42;
  v104 = v43;
  v101 = v44;
  v102 = v45;
  v99 = v46;
  v100 = v47;
  v105[4] = v48;
  v105[3] = a30;
  v108 = a29;
  v109 = a38;
  v107 = a37;
  v105[5] = a39;
  v106 = a28;
  OUTLINED_FUNCTION_9();
  v98 = v49;
  v105[0] = a21;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v51);
  v96 = v52;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v54);
  WitnessTable = v56;
  v113 = v55;
  v57 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v57, &WitnessTable);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v59);
  v61 = v60;
  v110 = v39;
  v111 = a24;
  WitnessTable = swift_getWitnessTable();
  v113 = a33;
  v62 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v62, &v106);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v64);
  v93 = swift_getWitnessTable();
  v110 = v39;
  v111 = a25;
  WitnessTable = v93;
  v113 = a34;
  v65 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v65, v105);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v67);
  v91 = swift_getWitnessTable();
  v110 = a34;
  v111 = a26;
  WitnessTable = v91;
  v113 = a35;
  v68 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v68, &v99);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v70);
  v90 = swift_getWitnessTable();
  v110 = a34;
  v111 = a27;
  WitnessTable = v90;
  v113 = a36;
  v71 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v73);
  v88 = swift_getWitnessTable();
  v110 = v71;
  v111 = v106;
  v74 = OUTLINED_FUNCTION_18_22(v88, v107);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_31_13();
  v87 = swift_getWitnessTable();
  v110 = v74;
  v111 = v108;
  v76 = OUTLINED_FUNCTION_18_22(v87, v109);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_36_10();
  v78(v95, v99, v96);
  (*(v98 + 16))(v97, v100, a23);
  Sequential.init(_:_:)();
  OUTLINED_FUNCTION_25_15();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v79();
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_32_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v80(v92, v96);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_24_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v81 = OUTLINED_FUNCTION_34_0();
  v82(v81);
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_32_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v83(v89, v96);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v84(v94, v71);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v85(a24, v74);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v86(v61, v76);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_9_18();
  v152[0] = v42;
  v152[1] = v43;
  v150 = v44;
  v151 = v45;
  v148 = v46;
  v149 = v47;
  v147 = v48;
  v146 = v49;
  v153 = v50;
  v152[4] = a42;
  v152[5] = a22;
  v159 = a41;
  v152[2] = a21;
  v152[3] = a32;
  v157 = a40;
  v158 = a31;
  v155 = a39;
  v156 = a30;
  v154 = a29;
  v123 = a38;
  v128 = a37;
  v122 = a28;
  v127 = a27;
  v132 = a36;
  v138 = a35;
  v142 = a24;
  OUTLINED_FUNCTION_9();
  v145[3] = v51;
  v131 = a26;
  v137 = a25;
  v145[1] = a34;
  v145[0] = a33;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v53);
  v141 = v54;
  OUTLINED_FUNCTION_9();
  v143 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v57);
  v160 = v58;
  v161 = v59;
  v162 = v61;
  v163 = v60;
  v62 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2_44(v62, &v159);
  v144 = v63;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v65);
  v67 = v66;
  WitnessTable = swift_getWitnessTable();
  v160 = v62;
  v161 = a25;
  v162 = WitnessTable;
  v163 = a35;
  v68 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v68, &v153);
  v139 = v69;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v71);
  v130 = swift_getWitnessTable();
  v160 = a25;
  v161 = a26;
  v162 = v130;
  v163 = a36;
  v72 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v72, v152);
  v133 = v73;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v75);
  v126 = swift_getWitnessTable();
  v160 = a25;
  v161 = a27;
  v162 = v126;
  v163 = a37;
  v76 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v76, &v146);
  v129 = v77;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v79);
  v121 = swift_getWitnessTable();
  v160 = a25;
  v161 = a28;
  v162 = v121;
  v163 = a38;
  v80 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v80, v145);
  v125 = v81;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v83);
  v119 = swift_getWitnessTable();
  v160 = a28;
  v161 = v154;
  v84 = OUTLINED_FUNCTION_18_22(v119, v155);
  OUTLINED_FUNCTION_2();
  v120 = v85;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v87);
  v116 = v67;
  v115 = swift_getWitnessTable();
  v160 = v84;
  v161 = v156;
  v88 = OUTLINED_FUNCTION_18_22(v115, v157);
  OUTLINED_FUNCTION_2();
  v118 = v89;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v90);
  v92 = &v112 - v91;
  v113 = swift_getWitnessTable();
  v160 = v88;
  v161 = v158;
  v93 = OUTLINED_FUNCTION_18_22(v113, v159);
  OUTLINED_FUNCTION_2();
  v114 = v94;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_36_10();
  v96 = v140;
  v97 = v141;
  v98(v140, v146, v141);
  OUTLINED_FUNCTION_36_10();
  v99(v145[2], v147, v142);
  v100 = v134;
  Sequential.init(_:_:)();
  OUTLINED_FUNCTION_33_12();
  v101 = v135;
  OUTLINED_FUNCTION_10_25();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v102(v100, v101);
  v103 = v124;
  OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_23_17();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v104(v96, v97);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v105(v103, v97);
  v106 = v117;
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v107(v96, v97);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v108(v106, v97);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v109(v96, v84);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v110(v92, v88);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12();
  v111(a28, v93);
  OUTLINED_FUNCTION_10_16();
}

uint64_t Array<A>.callAsFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BCB68CC();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  return sub_25BCB663C();
}

uint64_t sub_25BBBDD18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_25BBBDD54(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BBBDDE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_25BBBDFA8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SequentialBuilder(_BYTE *result, int a2, int a3)
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

_BYTE *sub_25BBBE2E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ResolutionDescriptor.init(traverseCapturedDependencies:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = MEMORY[0x277D84FA0];
  return result;
}

uint64_t sub_25BBBE444@<X0>(float *a1@<X8>)
{
  v3 = *(v1 + 128);
  if (v3 == 1)
  {
    v4 = MEMORY[0x277D82F68];
  }

  else
  {
    if (v3 != 2)
    {
      v13 = sub_25BBB2E50();
      v14 = v10;
      LODWORD(v18) = sub_25BC177D8(1);
      BYTE4(v20) = 6;
      sub_25BA97890("bnnsOperator", 12, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSActivationOps.swift", 113, 2, 16, v11, v12, v13, v14, v15, v16, v17, &unk_286D4F6F8, &off_286D4F798, 1, v18, v19, v20, v21, v22, vars0, vars8);
    }

    v5 = *(v1 + 132);
    if (*(v1 + 136))
    {
      v5 = 0.0;
    }

    *a1 = v5;
    v4 = MEMORY[0x277D82F60];
  }

  v6 = *v4;
  v7 = sub_25BCB530C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

void sub_25BBBE560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v89 = v22;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v28 = OUTLINED_FUNCTION_6_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_1();
  v90 = v33;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_54();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_0();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v85 - v41;
  v43 = sub_25BAC4018();
  if (sub_25BB3EE04(v43, v26))
  {
    v45 = v44;
    v91 = v21;
    v92 = v39;
    v88 = v35;
    ObjectType = swift_getObjectType();
    v47 = *(v45 + 16);
    v47(&v94, ObjectType, v45);
    v48 = *(v94 + 16);

    v93 = v42;
    if (v48 < 2)
    {
      v86 = 1;
    }

    else
    {
      v47(&v96, ObjectType, v45);
      if (!*(v96 + 16))
      {
        OUTLINED_FUNCTION_4_38();
        OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v83, v84, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
      }

      v86 = *(v96 + 32);
    }

    type metadata accessor for NativeTensorStorage(0);
    sub_25BAB9E04(&v94);
    sub_25BAB9E04(&v96);
    v54 = v97;

    v95 = v54;
    OUTLINED_FUNCTION_17_10();
    v55 = v89;
    sub_25BBC0130(v56, v57, v58, v59);
    v61 = v60;
    v89 = v55;
    if (*(*(v60 + 16) + 16))
    {
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    v47(&v94, ObjectType, v45);
    v62 = *(v94 + 16);
    v87 = ObjectType;
    v85 = v45;
    if (!v62)
    {
    }

    v63 = v88;
    OUTLINED_FUNCTION_5_0();

    v64 = *(v63 + 16);
    v65 = v90;
    OUTLINED_FUNCTION_13_24();
    v64(v66);
    OUTLINED_FUNCTION_2_6(v65);
    v67 = v93;
    OUTLINED_FUNCTION_13_24();
    v64(v68);
    v69 = OUTLINED_FUNCTION_2_6(v31);
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_9_30();
    v70 = v86;
    *(v71 - 16) = v91;
    *(v71 - 8) = v70;
    MEMORY[0x28223BE20](v72);
    OUTLINED_FUNCTION_35_3();
    *(v73 - 48) = v61;
    *(v73 - 40) = &off_286D4DBE0;
    *(v73 - 32) = v31;
    *(v73 - 24) = sub_25BBC00B8;
    *(v73 - 16) = v74;

    OUTLINED_FUNCTION_39_0();
    v75 = v55;
    v76 = v89;
    sub_25BC675C0(v77, v75, v78, &a15);
    if (v76)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v65);
      v79 = *(v63 + 8);
      v79(v92, v20);
      v79(v67, v20);
      sub_25BB0EA20(v31);
    }

    else
    {

      sub_25BB0EA20(v65);
      sub_25BB0EA20(v31);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v81 = OUTLINED_FUNCTION_31(v80);
      *(v81 + 16) = xmmword_25BCBAE50;
      *(v81 + 32) = v61;
      *(v81 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v82 = *(v63 + 8);
      v82(v92, v20);
      v82(v67, v20);
    }
  }

  else
  {
    v49 = sub_25BBB2E50();
    v51 = v50;
    v52 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v52);
    *v53 = v49;
    *(v53 + 8) = v51;
    *(v53 + 16) = 0x4000;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBEA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_25BCB530C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BBBE444(v7);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  sub_25BCB528C();
  return (*(v5 + 8))(v7, v4);
}

void sub_25BBBEBA4()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v59 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v58 = v9;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_54();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BAC4018();
  if (sub_25BB3EE04(v15, v3))
  {
    v17 = v16;
    v54 = v1;
    v55 = v0;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 16);
    v19(v60, ObjectType, v17);
    v20 = *(v60[0] + 16);

    v56 = ObjectType;
    v57 = v17;
    if (v20 < 2)
    {
      v53 = 1;
    }

    else
    {
      v19(&v62, ObjectType, v17);
      if (!*(v62 + 16))
      {
        OUTLINED_FUNCTION_4_38();
        OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v51, v52, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
      }

      v53 = *(v62 + 32);
    }

    v24 = v11;
    v25 = v14;
    v26 = v55;
    type metadata accessor for NativeTensorStorage(0);
    sub_25BAB9E04(v60);
    sub_25BAB9E04(&v62);
    v27 = v63;

    v61 = v27;
    OUTLINED_FUNCTION_17_10();
    v28 = v54;
    sub_25BBC0130(v29, v30, v31, v32);
    v34 = v33;
    v55 = v28;
    v36 = v58;
    v35 = v59;
    if (*(*(v33 + 16) + 16))
    {
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    v37 = v24;
    v38 = *(v24 + 16);
    OUTLINED_FUNCTION_13_24();
    v38();
    OUTLINED_FUNCTION_2_6(v36);
    OUTLINED_FUNCTION_13_24();
    v38();
    v39 = OUTLINED_FUNCTION_2_6(v35);
    MEMORY[0x28223BE20](v39);
    OUTLINED_FUNCTION_9_30();
    *(v40 - 16) = v53;
    MEMORY[0x28223BE20](v41);
    OUTLINED_FUNCTION_35_3();
    *(v42 - 48) = v34;
    *(v42 - 40) = &off_286D4DBE0;
    *(v42 - 32) = v35;
    *(v42 - 24) = sub_25BBC00D4;
    *(v42 - 16) = v43;

    OUTLINED_FUNCTION_39_0();
    v44 = v28;
    v45 = v55;
    sub_25BC675C0(v46, v44, v47, v48);
    if (v45)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v36);
      (*(v37 + 8))(v25, v26);
      sub_25BB0EA20(v35);
    }

    else
    {

      sub_25BB0EA20(v36);
      sub_25BB0EA20(v35);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v50 = OUTLINED_FUNCTION_31(v49);
      *(v50 + 16) = xmmword_25BCBAE50;
      *(v50 + 32) = v34;
      *(v50 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      (*(v37 + 8))(v25, v26);
    }
  }

  else
  {
    v21 = sub_25BB0E2EC();
    v22 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v21);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC7640, v22, v23);
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25BCB530C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277D82F58], v3, v5);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  sub_25BCB528C();
  return (*(v4 + 8))(v7, v3);
}

void sub_25BBBF14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v103 = v22;
  v25 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v92 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_1();
  v104 = v37;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_54();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  v42 = v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v43 = sub_25BAC4018();
  v44 = sub_25BB3EE04(v43, v27);
  v105 = v45;
  if (!v44)
  {
    goto LABEL_9;
  }

  v46 = v44;
  v47 = sub_25BAC4018();
  v48 = sub_25BB3EE04(v47, v27);
  if (!v48)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v60 = sub_25BB0E2EC();
    v61 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v60);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC7650, v61, v62);
    goto LABEL_16;
  }

  v50 = v48;
  v102 = v49;
  ObjectType = swift_getObjectType();
  v52 = *(v105 + 8);
  v98 = ObjectType;
  v97 = (v105 + 8);
  v96 = v52;
  v52(v106);
  if (LOBYTE(v106[0]) <= 0xCu && ((1 << SLOBYTE(v106[0])) & 0x1777) != 0)
  {
    v99 = v42;
    v95 = v32;
    v101 = v35;
    v100 = v39;
    v53 = v50;
    v54 = swift_getObjectType();
    v55 = v102;
    v56 = *(v102 + 16);
    v56(v106, v54, v102);
    v57 = *(v106[0] + 16);

    v94 = v53;
    if (v57 < 2)
    {
      v93 = 1;
    }

    else
    {
      v56(&v114, v54, v55);
      if (!*(v114 + 16))
      {
        memset(v106, 0, sizeof(v106));
        v107 = -1;
        v109 = 0;
        v110 = 0;
        v108 = 0;
        v111 = -1;
        v112 = 4;
        OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v58, v59, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
      }

      v93 = *(v114 + 32);
    }

    v63 = v100;
    v64 = v104;
    v65 = v99;
    type metadata accessor for NativeTensorStorage(0);
    sub_25BAB9E04(v106);
    sub_25BAB9E04(&v114);
    v66 = v115;

    v113 = v66;
    OUTLINED_FUNCTION_17_10();
    v67 = v103;
    sub_25BBC0130(v68, v69, v70, v71);
    v73 = v72;
    v103 = v67;
    v74 = *(*(v72 + 16) + 16);
    v75 = v101;
    v92[1] = v46;
    if (v74)
    {
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    v76 = *(v63 + 16);
    v76(v64, v65, v20);
    OUTLINED_FUNCTION_2_6(v64);
    v76(v75, v65, v20);
    OUTLINED_FUNCTION_2_6(v75);
    v77 = v95;
    v76(v95, v65, v20);
    v92[2] = v20;
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v20);

    v96(v106, v98, v105);
    v78 = sub_25BBF4F40();
    v97 = v92;
    MEMORY[0x28223BE20](v78);
    LODWORD(v92[-4]) = v79;
    v92[-3] = v65;
    v92[-2] = v25;
    v92[-1] = v93;
    MEMORY[0x28223BE20](v79);
    v80 = v102;
    v92[-8] = v94;
    v92[-7] = v80;
    v92[-6] = v75;
    v92[-5] = v73;
    v92[-4] = &off_286D4DBE0;
    v92[-3] = v77;
    v92[-2] = sub_25BBC00F0;
    v92[-1] = v81;
    OUTLINED_FUNCTION_39_0();
    v82 = v103;
    sub_25BC675C0(v83, v84, v85, &a18);
    if (v82)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_16_27();
      sub_25BB0EA20(v77);
      sub_25BB0EA20(v101);
    }

    else
    {

      OUTLINED_FUNCTION_16_27();
      sub_25BB0EA20(v77);
      sub_25BB0EA20(v101);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v89 = OUTLINED_FUNCTION_31(v88);
      *(v89 + 16) = xmmword_25BCBAE50;
      *(v89 + 32) = v73;
      *(v89 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v86 = OUTLINED_FUNCTION_5_36();
    v87(v86);
  }

  else
  {
    v90 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v90);
    *v91 = xmmword_25BCC7650;
    *(v91 + 16) = 24576;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_16:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBF7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  v8 = sub_25BCB530C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BCB54EC();
  v13 = MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
  sub_25BCB6D8C();
  sub_25BCB526C();
  (*(v9 + 104))(v11, *MEMORY[0x277D82F58], v8);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB525C())
  {
    sub_25BCB50BC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v17 = xmmword_25BCC7650;
    *(v17 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BBBFA30()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v58 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v13 = OUTLINED_FUNCTION_6_0(v12);
  MEMORY[0x28223BE20](v13);
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_54();
  v59 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v57 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_1();
  v60 = v19;
  v20 = sub_25BAC4018();
  if (sub_25BB3EE04(v20, v4))
  {
    v22 = v21;
    type metadata accessor for NativeTensorStorage(0);
    sub_25BAB9E04(v64);
    v56 = v1;
    sub_25BAB9E04(&v62);
    v23 = v63;

    v61 = v23;
    OUTLINED_FUNCTION_17_10();
    sub_25BBC0130(v24, v25, v26, v27);
    v29 = v28;
    v54 = v2;
    ObjectType = swift_getObjectType();
    v31 = *(v22 + 16);
    v53[1] = ObjectType;
    v55 = v22;
    v31(v64, ObjectType, v22);
    if (!*(v64[0] + 16))
    {
    }

    sub_25BCB50AC();
    OUTLINED_FUNCTION_17_25();
    sub_25BCB54FC();
    if (*(*(v29 + 16) + 16))
    {
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_17_25();
    v35 = v57;
    sub_25BCB54FC();
    v36 = v59;
    v37 = *(v59 + 16);
    v37(v11, v60, v0);
    OUTLINED_FUNCTION_2_6(v11);
    v38 = v58;
    v37(v58, v35, v0);
    v39 = OUTLINED_FUNCTION_2_6(v38);
    MEMORY[0x28223BE20](v39);
    OUTLINED_FUNCTION_9_30();
    *(v40 - 16) = v56;
    *(v40 - 8) = 1;
    MEMORY[0x28223BE20](v41);
    OUTLINED_FUNCTION_35_3();
    *(v42 - 48) = v29;
    *(v42 - 40) = &off_286D4DBE0;
    *(v42 - 32) = v38;
    *(v42 - 24) = sub_25BBC0114;
    *(v42 - 16) = v43;

    OUTLINED_FUNCTION_39_0();
    v44 = v2;
    v45 = v54;
    sub_25BC675C0(v46, v44, v47, v48);
    if (v45)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v11);
      v49 = *(v36 + 8);
      v49(v35, v0);
      v49(v60, v0);
      sub_25BB0EA20(v38);
    }

    else
    {

      sub_25BB0EA20(v11);
      sub_25BB0EA20(v38);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v51 = OUTLINED_FUNCTION_31(v50);
      *(v51 + 16) = xmmword_25BCBAE50;
      *(v51 + 32) = v29;
      *(v51 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v52 = *(v36 + 8);
      v52(v35, v0);
      v52(v60, v0);
    }
  }

  else
  {
    v32 = sub_25BB0E2EC();
    v33 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v32);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC7660, v33, v34);
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBFEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25BCB530C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB526C();
  (*(v6 + 104))(v8, *MEMORY[0x277D82F70], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = *(a3 + 128);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB524C())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v11 = xmmword_25BCC7660;
    *(v11 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BBC0130(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v10 = *a1;
  OUTLINED_FUNCTION_7_29();
  if (!v13 & v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = qword_25BCC7770[v11];
  }

  if (*(v10 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v13)
      {
        break;
      }

      if (v15 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v16 = 1;
LABEL_10:
  if ((v16 * v14) >> 64 != (v16 * v14) >> 63)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  if (a3 && (, a3(v5, v6), sub_25BA9D148(a3, a4), sub_25BA9D148(a3, a4), v4))
  {
  }

  else
  {
    v18 = v10;
    v17 = v7;
    sub_25BA9FCEC(&v18, &v17, v5, v6, v14);
  }
}

uint64_t sub_25BBC026C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  result = sub_25BAF99E8(*(a2 + 16));
  if (v2)
  {
    v4 = result;
    v5 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC0304();
    sub_25BBC052C(v4, v2, v6);
    OUTLINED_FUNCTION_17_26();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBC0304()
{
  result = 2;
  switch(*(v0 + 24))
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      OUTLINED_FUNCTION_12_24();
      result = OUTLINED_FUNCTION_6_39("Fatal error", "NeuralNetworks/FrontendMILExtensions.swift", v2, v3, v4);
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

uint64_t sub_25BBC03B8()
{
  result = 2;
  switch(*(v0 + 32))
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      OUTLINED_FUNCTION_12_24();
      result = OUTLINED_FUNCTION_6_39("Fatal error", "NeuralNetworks/FrontendMILExtensions.swift", v2, v3, v4);
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

uint64_t sub_25BBC046C()
{
  result = 2;
  switch(*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType))
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      OUTLINED_FUNCTION_12_24();
      result = OUTLINED_FUNCTION_6_39("Fatal error", "NeuralNetworks/FrontendMILExtensions.swift", v2, v3, v4);
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

id sub_25BBC052C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB672C();

  v7 = [v5 initWithShape:v6 bytes:a2 dataType:a3];

  return v7;
}

uint64_t sub_25BBC05D4(uint64_t a1)
{
  result = sub_25BCB59BC();
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

void sub_25BBC0694(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *a2;
  if ((v7 - 1) > 0xA)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_25BCC7770[(v7 - 1)];
  }

  if (*(v6 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v9 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 1;
LABEL_10:
    if ((v10 * v8) >> 64 == (v10 * v8) >> 63)
    {
      v17 = v6;
      v18 = v7;
      v12 = sub_25BCB6F1C();
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = MEMORY[0x28223BE20](ObjectType);
      (*(a5 + 56))(sub_25BBC1530, v16);
      v20 = v17;
      v19 = v18;
      sub_25BA9FCEC(&v20, &v19, v12, v14, v8);
      OUTLINED_FUNCTION_17_26();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_20_18();
      return;
    }
  }

  __break(1u);
}

void sub_25BBC0838(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  if ((v8 - 1) > 0xA)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_25BCC7770[(v8 - 1)];
  }

  if (*(v7 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v12)
      {
        break;
      }

      if (v10 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v11 = 1;
LABEL_10:
  if ((v11 * v9) >> 64 != (v11 * v9) >> 63)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v19 = v7;
  v18 = v8;
  v13 = sub_25BCB6F1C();
  v15 = v14;
  ObjectType = swift_getObjectType();
  v17 = MEMORY[0x28223BE20](ObjectType);
  (*(a5 + 56))(sub_25BBC1578, v17);
  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v19;
    v20 = v18;
    sub_25BA9FCEC(&v21, &v20, v13, v15, v9);
    OUTLINED_FUNCTION_17_26();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25BBC09FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  if ((v5 - 1) > 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_25BCC7770[(v5 - 1)];
  }

  if (v6 > a3)
  {
LABEL_15:
    v15[1] = 0;
    v15[2] = 0;
    v15[0] = a3;
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v13, v14, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  OUTLINED_FUNCTION_22_18();
  if (v8)
  {
    OUTLINED_FUNCTION_21_20();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v7);
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = sub_25BCB6F1C();
  v15[0] = v3;
  v16 = v5;
  return sub_25BA9FCEC(v15, &v16, v10, v11, a3);
}

uint64_t sub_25BBC0BE0()
{
  OUTLINED_FUNCTION_8_30();
  if (!v4 & v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_25BCC7770[v2];
  }

  if (v5 > v0)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v19, v20, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  OUTLINED_FUNCTION_23_18();
  if (v7)
  {
    OUTLINED_FUNCTION_19_17();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v6);
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = sub_25BCB6F1C();
  sub_25BC0649C(v8, v9);
  if (v1)
  {
  }

  else
  {
    return OUTLINED_FUNCTION_13_25(v10, v11, v12, v13, v14, v15, v16, v17, v21);
  }
}

uint64_t sub_25BBC0CD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if ((v10 - 1) > 0xA)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCC7770[(v10 - 1)];
  }

  if (v11 > a3)
  {
LABEL_15:
    v19[1] = 0;
    v19[2] = 0;
    v19[0] = a3;
    v20 = -1;
    v22 = 0;
    v23 = 0;
    v21 = v11;
    v24 = -1;
    v25 = 13;
    swift_unknownObjectRelease();
    sub_25BADDD28("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", 69, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift", 108, 2, 91);
  }

  OUTLINED_FUNCTION_23_18();
  if (v13)
  {
    OUTLINED_FUNCTION_19_17();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v12);
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = a3;
  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  ObjectType = swift_getObjectType();
  v17 = MEMORY[0x28223BE20](ObjectType);
  (*(a6 + 56))(sub_25BBC155C, v17);
  v19[0] = v6;
  v26 = v10;
  sub_25BA9FCEC(v19, &v26, v7, v8, v15);
  OUTLINED_FUNCTION_17_26();
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_20_18();
}

void sub_25BBC0EA4()
{
  OUTLINED_FUNCTION_16_28();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_7_29();
  if (!v10 & v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCC7770[v8];
  }

  if (v11 > v6)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    sub_25BB0D160(v4, v2);
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v20, v21, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  if (*(*v7 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v11);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  sub_25BC05C00(v12, v13, v4, v2, v14);
  if (v0)
  {

    sub_25BB0D160(v4, v2);
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_25BA9FCEC(v15, v16, v17, v18, v6);
    v19 = OUTLINED_FUNCTION_17_26();
    sub_25BB0D160(v19, v2);
  }

  OUTLINED_FUNCTION_20_18();
  OUTLINED_FUNCTION_15_24();
}

void sub_25BBC0FD8()
{
  OUTLINED_FUNCTION_16_28();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_7_29();
  if (!v10 & v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCC7770[v8];
  }

  if (v11 > v6)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v18, v19, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  if (*(*v7 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v11);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  sub_25BB48C20(v12, v13, v4, v2);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_25BA9FCEC(v14, v15, v16, v17, v6);
  }

  OUTLINED_FUNCTION_15_24();
}

uint64_t sub_25BBC11D0(float a1)
{
  OUTLINED_FUNCTION_8_30();
  if (!v8 & v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_25BCC7770[v6];
  }

  if (v9 > v1)
  {
LABEL_17:
    v19[1] = 0;
    v19[2] = 0;
    v19[0] = v1;
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v17, v18, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  OUTLINED_FUNCTION_23_18();
  if (v11)
  {
    OUTLINED_FUNCTION_19_17();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v10);
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = sub_25BCB6F1C();
  v14 = v13;
  *v15.i32 = a1;
  sub_25BC0527C(v12, v13, v15);
  if (v2)
  {
  }

  v19[0] = v3;
  v20 = v4;
  return sub_25BA9FCEC(v19, &v20, v12, v14, v1);
}

void sub_25BBC13DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_25_16();
  a34 = v35;
  a35 = v38;
  v40 = v39;
  v41 = v37;
  v43 = *v42;
  if ((v43 - 1) > 0xA)
  {
    v44 = 1;
  }

  else
  {
    v44 = qword_25BCC7770[(v43 - 1)];
  }

  if (v44 > v37)
  {
LABEL_16:
    a10 = 0;
    a11 = 0;
    a9 = v41;
    OUTLINED_FUNCTION_0_55();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_45("init(unsafeUninitializedShape:scalarType:alignment:initializingWith:)", v53, v54, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/NativeTensorStorage.swift");
  }

  v45 = *v36;
  if (*(*v36 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v46)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v46)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v44);
  if (!v46)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = sub_25BCB6F1C();
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v49 = v47;
  v50 = v48;
  v51 = [swift_unknownObjectRetain() contents];
  v52 = v40;
  memmove(v49, v51, v50 - v49);
  a9 = v45;
  a25 = v43;
  sub_25BA9FCEC(&a9, &a25, v49, v50, v41);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_24_13();
}

uint64_t RecurrentLayerInput.input.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t RecurrentLayerInput.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_9_3();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t RecurrentLayerInput.state.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_9_3();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t RecurrentLayerInput.init(input:state:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *a1;
  v9 = *(type metadata accessor for RecurrentLayerInput(0, a3, a3, a5) + 28);
  __swift_storeEnumTagSinglePayload(&a4[v9], 1, 1, a3);
  *a4 = v8;
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_9_3();
  v11 = *(v10 + 40);

  return v11(&a4[v9], a2);
}

uint64_t sub_25BBC17FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BBC18C4(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_25BBC1914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBC17FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBC1958@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB0716C();
  *a1 = result;
  return result;
}

uint64_t sub_25BBC1984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BBC19D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RecurrentLayerOutput.init(output:state:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v8 = type metadata accessor for RecurrentLayerOutput(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t sub_25BBC1B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BBC1C3C(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_25BBC1C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void))
{
  sub_25BCB79CC();
  a4(v8, *v4, *(a2 + 16));
  return sub_25BCB7A3C();
}

uint64_t sub_25BBC1CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBC1B7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBC1D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BBC1D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void RecurrentLayerInput<A>.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v36 = v0;
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v39 = v8;
  v40 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - v10;
  type metadata accessor for RecurrentLayerInput.CodingKeys(255, v3, v11, v12);
  swift_getWitnessTable();
  v35 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2();
  v32 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_4();
  v17 = type metadata accessor for RecurrentLayerInput(0, v3, v15, v16);
  OUTLINED_FUNCTION_2();
  v30 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v38 = *(v22 + 28);
  __swift_storeEnumTagSinglePayload(&v30 + v38 - v20, 1, 1, v3);
  v23 = v5[3];
  v37 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v23);
  v24 = v36;
  sub_25BCB7B2C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v39 + 8))(&v21[v38], v40);
  }

  else
  {
    v36 = v17;
    v25 = v33;
    v41 = 0;
    sub_25BB1B9B0();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_26_17();
    sub_25BCB765C();
    v26 = OUTLINED_FUNCTION_22_19();
    v27(v26);
    (*(v39 + 40))(&v21[v38], v25, v40);
    v28 = v30;
    v29 = v36;
    (*(v30 + 16))(v31, v21, v36);
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v28 + 8))(v21, v29);
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BBC221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  v38 = v23;
  v24 = v20;
  v26 = v25;
  v35 = v27;
  v36 = *(v27 + 16);
  v37 = v28;
  v29(255);
  swift_getWitnessTable();
  v30 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2();
  v32 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_16_4();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_25BCB7B6C();
  v39[1] = 0;
  sub_25BB1B95C();

  sub_25BCB779C();

  if (!v21)
  {
    v34 = *(v35 + 28);
    v39[0] = 1;
    v38(v24 + v34, v39, v30, v36, v37);
  }

  (*(v32 + 8))(v22, v30);
  OUTLINED_FUNCTION_16();
}

void RecurrentLayerOutput<A>.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v35 = v0;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v29 = v7;
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecurrentLayerOutput.CodingKeys(255, v9, v10, v11);
  swift_getWitnessTable();
  v34 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2();
  v30 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_4();
  v16 = type metadata accessor for RecurrentLayerOutput(0, v4, v14, v15);
  OUTLINED_FUNCTION_2();
  v27 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v33 = v1;
  v21 = v35;
  sub_25BCB7B2C();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v35 = v16;
    v22 = v31;
    v36 = 0;
    sub_25BB1B9B0();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_26_17();
    sub_25BCB76AC();
    v23 = OUTLINED_FUNCTION_23_19();
    v24(v23);
    v25 = v35;
    (*(v28 + 32))(&v20[*(v35 + 28)], v22, v4);
    v26 = v27;
    (*(v27 + 16))(v29, v20, v25);
    __swift_destroy_boxed_opaque_existential_1(v6);
    (*(v26 + 8))(v20, v25);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t LSTM.recurrentWeight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *v1 = v0 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(v0);
}

uint64_t sub_25BBC281C@<X0>(void *a1@<X8>)
{
  result = LSTM.recurrentWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BBC2858(uint64_t *a1)
{
  v2 = *a1;

  return LSTM.recurrentWeight.setter(&v2);
}

uint64_t (*LSTM.recurrentWeight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_29(*(v1 + 24));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BBC2984;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  __break(1u);
  return result;
}

uint64_t sub_25BBC2984(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = *a1;

    Parameter.wrappedValue.setter(&v3);
  }

  else
  {
    v3 = *a1;
    return Parameter.wrappedValue.setter(&v3);
  }
}

double LSTM.$recurrentWeight.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;

  return result;
}

void LSTM.inputWeight.getter(void *a1@<X8>)
{
  if (*(v1 + 50) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_10:
    OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC(v2);
}

uint64_t *LSTM.inputWeight.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 50) == 1)
  {
    if (v2)
    {
      v10 = *result;
      return Parameter.wrappedValue.setter(&v10);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    v8 = 0xD000000000000034;
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    v9 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC(v3, v4, v5, v8, v6, v7, 103, 2, v9);
    __break(1u);
  }

  return result;
}

uint64_t (*LSTM.inputWeight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 50) != 1)
  {
    *a1 = 0;
    return sub_25BBC2D5C;
  }

  v3 = OUTLINED_FUNCTION_29(*(v1 + 40));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BBC2CA8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BBC2CA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v12 = *a1;
      return Parameter.wrappedValue.setter(&v12);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_29_15(v4, v5, v6, 52, v7, v8, v9, v10, v11);
    __break(1u);
    return result;
  }

  v12 = *a1;

  Parameter.wrappedValue.setter(&v12);
}

void LSTM.$inputWeight.getter(uint64_t a1@<X8>)
{
  if (v1[50] == 1)
  {
    if (v1[49])
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | v1[48];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
}

void LSTM.bias.getter(void *a1@<X8>)
{
  if (*(v1 + 66) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_10:
    OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC(v2);
}

uint64_t sub_25BBC2EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t *LSTM.bias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 66) == 1)
  {
    if (v2)
    {
      v10 = *result;
      return Parameter.wrappedValue.setter(&v10);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    v8 = 0xD000000000000034;
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    v9 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC(v3, v4, v5, v8, v6, v7, 103, 2, v9);
    __break(1u);
  }

  return result;
}

uint64_t (*LSTM.bias.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 66) != 1)
  {
    *a1 = 0;
    return sub_25BBC78EC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v1 + 56));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BBC3094;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BBC3094(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v12 = *a1;
      return Parameter.wrappedValue.setter(&v12);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_29_15(v4, v5, v6, 52, v7, v8, v9, v10, v11);
    __break(1u);
    return result;
  }

  v12 = *a1;

  Parameter.wrappedValue.setter(&v12);
}

void *sub_25BBC3148(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_29_15(v1, v2, v3, 55, v4, v5, v6, v7, 399);
    __break(1u);
  }

  return result;
}

void LSTM.$bias.getter(uint64_t a1@<X8>)
{
  if (v1[66] == 1)
  {
    if (v1[65])
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | v1[64];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
}

uint64_t LSTM.init(unitCount:recurrentWeightInitializer:inputWeightInitializer:biasInitializer:isBidirectional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_9_19();
  *(a5 + 40) = sub_25BB1AB60(v9);
  *(a5 + 48) = 256;
  *(a5 + 50) = 0;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_9_19();
  *(a5 + 56) = sub_25BB1AB60(v10);
  *(a5 + 64) = 256;
  *(a5 + 66) = 0;
  *(a5 + 8) = a1;
  *(a5 + 16) = a4;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();

  *(a5 + 24) = sub_25BB1AB04(v11);
  *(a5 + 32) = 256;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  if (a2)
  {

    v13 = sub_25BB1AB04(v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_19();
    v13 = sub_25BB1AB60(v14);
  }

  v15 = v13;

  *(a5 + 40) = v15;
  *(a5 + 48) = 256;
  *(a5 + 50) = a2 != 0;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  if (a3)
  {
    v16 = sub_25BB1AB04(a3);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_9_19();
    v16 = sub_25BB1AB60(v17);
  }

  v18 = v16;

  *(a5 + 56) = v18;
  *(a5 + 64) = 256;
  *(a5 + 66) = a3 != 0;
  return result;
}

void *LSTM.init(recurrentWeight:inputWeight:bias:isBidirectional:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  LOBYTE(__src[0]) = 0;
  type metadata accessor for LayerVariableReference();
  LOBYTE(v9) = 7;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_9_19();
  __src[5] = sub_25BB1AB60(v10);
  LOWORD(__src[6]) = 256;
  BYTE2(__src[6]) = 0;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_9_19();
  __src[7] = sub_25BB1AB60(v11);
  LOWORD(__src[8]) = 256;
  BYTE2(__src[8]) = 0;
  if (a4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(*(*(v6 + 16) + 152) + 16);
  if (!sub_25BAB74D0(v13, v12, 0, 0))
  {
    goto LABEL_34;
  }

  v12 = *(*(v6 + 16) + 152);
  v14 = *(v12 + 16);
  if (a4)
  {
    if (v14 <= 2)
    {
LABEL_43:
      v42 = 2;
LABEL_45:
      v46 = 0uLL;
      v45 = v42;
      v47 = -1;
      v49 = 0;
      v50 = 0;
      v48 = v14;
      v51 = -1;
      v52 = 4;
      goto LABEL_46;
    }

    v9 = *(v12 + 48);
    __src[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25BCBAE90;
    *(v15 + 32) = 2;
    OUTLINED_FUNCTION_31_14();
    if (!v17)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v45 = v13;
      v46 = xmmword_25BCC77F0;
      v47 = 0;
      v48 = v12;
      v49 = 0;
      LOBYTE(v50) = 0;
      v52 = v9;
      OUTLINED_FUNCTION_7_30();
      v35 = 115;
      goto LABEL_47;
    }

    v18 = v16;
    *(v16 + 40) = 4 * v9;
    *(v16 + 48) = v9;
  }

  else
  {
    if (v14 <= 1)
    {
      v42 = 1;
      goto LABEL_45;
    }

    v9 = *(v12 + 40);
    __src[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    *(swift_allocObject() + 16) = xmmword_25BCBAE70;
    OUTLINED_FUNCTION_31_14();
    if (!v17)
    {
      goto LABEL_33;
    }

    v18 = v19;
    *(v19 + 32) = 4 * v9;
    *(v19 + 40) = v9;
  }

  v20 = sub_25BAB5C48(v12, v18);

  if ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_32();
    v43 = 126;
LABEL_40:
    OUTLINED_FUNCTION_7_0();
LABEL_42:
    sub_25BCB74CC(v36, v37, v38, v39, v40, v41, 104, 2, v43);
    __break(1u);
    goto LABEL_43;
  }

  LOWORD(__src[4]) = 256;
  v45 = v6;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  __src[3] = sub_25BAB6D38(&v45, 0x100000000);
  v21 = 8 * v9;
  if (!v7)
  {
    goto LABEL_24;
  }

  v22 = *(*(*(v7 + 16) + 152) + 16);

  if (!sub_25BAB74D0(v22, 2, 0, 0))
  {
    v45 = v22;
    v46 = xmmword_25BCC7800;
    v47 = 0;
    OUTLINED_FUNCTION_32_13();
    OUTLINED_FUNCTION_7_30();
    v35 = 137;
    goto LABEL_47;
  }

  if (a4)
  {
    v23 = 8 * v9;
    if ((v9 - 0x1000000000000000) >> 61 == 7)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v23 = 4 * v9;
LABEL_21:
  v24 = *(*(v7 + 16) + 152);
  if (!*(v24 + 16))
  {
    v45 = 0;
    v46 = 0uLL;
    v47 = -1;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v51 = -1;
    v52 = 4;
LABEL_46:
    sub_25BCB617C();
    v29 = "positiveAxis(fromAxis:from:rank:from:function:file:line:)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift";
    v30 = 57;
    v31 = 2;
    v33 = 102;
    v34 = 2;
    v35 = 133;
LABEL_47:
    sub_25BADDD28(v29, v30, v31, v32, v33, v34, v35);
  }

  if (*(v24 + 32) != v23)
  {
    OUTLINED_FUNCTION_32();
    v43 = 139;
    goto LABEL_40;
  }

LABEL_24:
  if (v8)
  {
    v25 = *(*(*(v8 + 16) + 152) + 16);

    if (!sub_25BAB74D0(v25, 1, 0, 0))
    {
      v45 = v25;
      v46 = xmmword_25BCC7810;
      v47 = 0;
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_7_30();
      v35 = 149;
      goto LABEL_47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    OUTLINED_FUNCTION_1_2();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_25BCBAE50;
    if (a4)
    {
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
LABEL_30:
        *(v26 + 32) = v21;
        v27 = sub_25BAB5C48(*(*(v8 + 16) + 152), v26);
        swift_setDeallocating();
        OUTLINED_FUNCTION_30_0();
        swift_deallocClassInstance();
        if (v27)
        {

          goto LABEL_32;
        }

        v43 = 151;
        OUTLINED_FUNCTION_7_0();
        v39 = 0xD00000000000005ELL;
        goto LABEL_42;
      }

      __break(1u);
    }

    v21 = 4 * v9;
    goto LABEL_30;
  }

LABEL_32:

  v45 = v7;
  OptionalParameter.init(wrappedValue:)(&v45);

  v45 = v8;
  OptionalParameter.init(wrappedValue:)(&v45);
  LOBYTE(__src[2]) = a4 & 1;
  return memcpy(a5, __src, 0x43uLL);
}

uint64_t sub_25BBC38F4(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 16) < 2uLL)
  {
LABEL_12:
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_25BCBAE90;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  if (!v4)
  {
    *(v7 + 48) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE90;
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    if ((v3 - 0x2000000000000000) >> 62 == 3)
    {
      v10 = v12;
      v11 = 2;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v7 + 48) = 2 * v3;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE90;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  if ((v3 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = 3;
LABEL_8:
  *(v10 + 48) = v3 << v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE90;
  *(v13 + 32) = v8;
  *(v13 + 40) = 10;
  *(v13 + 48) = v8;
  *(v13 + 56) = 10;
  *(v13 + 64) = v10;
  *(v13 + 72) = 10;
  sub_25BCB617C();
  return v13;
}

void sub_25BBC3AF4(uint64_t a1, void *a2, uint64_t a3, char a4, char a5, char a6)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v6 >= 3)
  {
    v84 = *(a1 + 32);
    v15 = a2 + 4;
    v16 = a2[4];
    v18 = a2[5];
    v17 = a2[6];
    if (a5)
    {
      if (v6 == 3)
      {
        __break(1u);
        goto LABEL_36;
      }

      v19 = a2[7];
      if ((a6 & 1) == 0)
      {
        v25 = *(v16 + 16);
        v26 = *(v18 + 16);
        v27 = *(v17 + 16);

        v82 = 0;
        v83 = 0;
        v81 = 0;
        goto LABEL_17;
      }

      v20 = 4;
    }

    else
    {
      if ((a6 & 1) == 0)
      {
        v79 = 0;
        v82 = 0;
        v83 = 0;
        v81 = 0;
        v19 = 0;
        v25 = *(v16 + 16);
        v26 = *(v18 + 16);
        v27 = *(v17 + 16);
        goto LABEL_19;
      }

      v19 = 0;
      v20 = 3;
    }

    if (v20 < v6)
    {
      if (v20 + 1 < v6)
      {
        v85 = a3;
        v21 = a4;
        v22 = v15[v20];
        v23 = *(v22 + 16);
        v24 = *(v15[v20 + 1] + 16);
        v25 = *(v16 + 16);
        v26 = *(v18 + 16);
        v27 = *(v17 + 16);
        v81 = v22;

        v83 = v23;

        v82 = v24;

        if (!v19)
        {
          v79 = 0;
          a4 = v21;
          a3 = v85;
LABEL_19:
          v28 = *(a3 + 16);
          if (v28)
          {
            v80 = v19;
            v29 = *(a3 + 24);
            if (v29)
            {
              v30 = *(v84 + 16);
              v31 = *(v28 + 16);
              v32 = *(v29 + 16);
              v91[55] = 0;
              v92[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LSTMLayerOps.swift";
              v92[1] = 114;
              v93 = 2;
              v94 = xmmword_25BCC7820;
              v95 = "init(id:input:recurrentWeight:inputWeight:bias:state:isBidirectional:gradient:zState:cellOutputForward:creationSite:)";
              v96 = 117;
              v97 = 2;
              type metadata accessor for LSTMLayerGradientOperation();
              swift_allocObject();

              sub_25BBC789C(v83);
              v12 = sub_25BB4A7D4(0, 0, 0, v25, v26, v27, v79, v83, v82, a4 & 1, v30, v31, v32, v92);
              sub_25BAA51C8(*(v84 + 16) + 168, v91);
              sub_25BAA51C8(v91, v90);
              sub_25BAA51C8(v90, v89);
              type metadata accessor for ContextManager();
              swift_retain_n();
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v33 = v88;

              sub_25BAA4AF4(v86);
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v34 = v87;

              sub_25BAA4AF4(v86);
              type metadata accessor for TensorRepresentation();
              v35 = swift_allocObject();
              v86[0] = 1;
              v36 = sub_25BC10058(v12, 0, v89, 0x100000000, v33, v34, v35);
              type metadata accessor for TensorHandle();
              v37 = swift_allocObject();
              *(v37 + 16) = v36;

              sub_25BAA6EB0();

              sub_25BA9C2C8(v90);
              sub_25BAA51C8(v91, v90);
              sub_25BAA51C8(v90, v89);
              swift_retain_n();
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v38 = v88;

              sub_25BAA4AF4(v86);
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v39 = v87;

              sub_25BAA4AF4(v86);
              v40 = swift_allocObject();
              v86[0] = 1;
              v41 = sub_25BC10058(v12, 1, v89, 0x100000000, v38, v39, v40);
              v42 = swift_allocObject();
              *(v42 + 16) = v41;

              sub_25BAA6EB0();

              sub_25BA9C2C8(v90);
              sub_25BAA51C8(v91, v90);
              sub_25BAA51C8(v90, v89);
              swift_retain_n();
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v43 = v88;

              sub_25BAA4AF4(v86);
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v44 = v87;

              sub_25BAA4AF4(v86);
              v45 = swift_allocObject();
              v86[0] = 1;
              v46 = sub_25BC10058(v12, 2, v89, 0x100000000, v43, v44, v45);
              v47 = swift_allocObject();
              *(v47 + 16) = v46;

              sub_25BAA6EB0();

              sub_25BA9C2C8(v90);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
              v48 = swift_allocObject();
              *(v48 + 16) = xmmword_25BCBAE90;
              *(v48 + 32) = v37;

              *(v48 + 40) = sub_25BAC42B0();
              *(v48 + 48) = v49;
              *(v48 + 56) = v42;

              *(v48 + 64) = sub_25BAC42B0();
              *(v48 + 72) = v50;
              *(v48 + 80) = v47;

              *(v48 + 88) = sub_25BAC42B0();
              *(v48 + 96) = v51;
              if (v80)
              {
                sub_25BAA51C8(v91, v90);
                sub_25BAA51C8(v90, v89);
                swift_retain_n();

                sub_25BAA49B8();
                sub_25BAA4A5C(v86);

                v52 = v88;

                sub_25BAA4AF4(v86);
                sub_25BAA49B8();
                sub_25BAA4A5C(v86);

                v53 = v87;

                sub_25BAA4AF4(v86);
                v54 = swift_allocObject();
                v86[0] = 1;
                v55 = sub_25BC10058(v12, 3, v89, 0x100000000, v52, v53, v54);
                v56 = swift_allocObject();
                *(v56 + 16) = v55;

                sub_25BAA6EB0();

                sub_25BA9C2C8(v90);

                v57 = sub_25BAC42B0();
                v59 = v58;
                v8 = 4;
                sub_25BAC98F4();
                v48 = v60;

                *(v48 + 16) = 4;
                *(v48 + 104) = v56;
                *(v48 + 112) = v57;
                *(v48 + 120) = v59;
              }

              else
              {
                v8 = 3;
              }

              if (!v81)
              {
                sub_25BA9C2C8(v91);

                sub_25BB4AE24(v83);

                return;
              }

              sub_25BAA51C8(v91, v90);
              sub_25BAA51C8(v90, v89);
              swift_retain_n();
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v61 = v88;

              sub_25BAA4AF4(v86);
              sub_25BAA49B8();
              sub_25BAA4A5C(v86);

              v62 = v87;

              sub_25BAA4AF4(v86);
              v63 = swift_allocObject();
              v86[0] = 1;
              v64 = sub_25BC10058(v12, v8, v89, 0x100000000, v61, v62, v63);
              v11 = swift_allocObject();
              *(v11 + 16) = v64;

              sub_25BAA6EB0();

              sub_25BA9C2C8(v90);

              v6 = sub_25BAC42B0();
              v7 = v65;
              v9 = *(v48 + 16);
              v10 = v9 + 1;
              if (v9 < *(v48 + 24) >> 1)
              {
                goto LABEL_26;
              }

              goto LABEL_34;
            }

LABEL_39:
            __break(1u);
            return;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        a4 = v21;
        a3 = v85;
LABEL_17:
        v79 = *(v19 + 16);

        goto LABEL_19;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  sub_25BAC98F4();
  v48 = v77;
LABEL_26:
  *(v48 + 16) = v10;
  v66 = (v48 + 24 * v9);
  v66[4] = v11;
  v66[5] = v6;
  v66[6] = v7;
  sub_25BAA51C8(v91, v90);
  sub_25BAA51C8(v90, v89);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v86);

  v67 = v88;

  sub_25BAA4AF4(v86);
  sub_25BAA49B8();
  sub_25BAA4A5C(v86);

  v68 = v87;

  sub_25BAA4AF4(v86);
  v69 = swift_allocObject();
  v86[0] = 1;
  v70 = sub_25BC10058(v12, v8 + 1, v89, 0x100000000, v67, v68, v69);
  v71 = swift_allocObject();
  *(v71 + 16) = v70;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v90);

  v72 = sub_25BAC42B0();
  v74 = v73;
  v75 = *(v48 + 16);
  if (v75 >= *(v48 + 24) >> 1)
  {
    sub_25BAC98F4();
    v48 = v78;
  }

  sub_25BB4AE24(v81);

  sub_25BB4AE24(v83);
  sub_25BA9C2C8(v91);
  *(v48 + 16) = v75 + 1;
  v76 = (v48 + 24 * v75);
  v76[4] = v71;
  v76[5] = v72;
  v76[6] = v74;
}

void *LSTM.State.init(hidden:cell:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

__n128 LSTM.forward(_:)@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  memcpy(__dst, v2, 0x43uLL);
  type metadata accessor for LSTMLayerOperationBackwardContext();
  OUTLINED_FUNCTION_30_0();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = v7 + 16;
  *(v7 + 24) = 0;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  type metadata accessor for ResolutionDependencies();
  OUTLINED_FUNCTION_30_0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  *(v9 + 16) = 0;
  *(v9 + 24) = v10;

  __src[9] = v9;
  sub_25BAA49B8();
  sub_25BAB7060(__src);

  sub_25BBC4968(v4, v5, v6, __dst, v7, v36);

  sub_25BAA49B8();
  sub_25BAB814C();

  sub_25BAA4AF4(__src);
  v35 = *v36;
  v11 = *&v36[16];
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  memcpy(v36, __src, sizeof(v36));
  if (*&v36[80])
  {
    v12 = *(*&v36[80] + 24);
    sub_25BAA4AF4(v36);
    if (v12)
    {
      v13 = *(v7 + 24);
      if (v13)
      {
        v14 = *(v13 + 16);
        swift_retain_n();

        v15 = sub_25BA928B4();
        [v15 lock];

        OUTLINED_FUNCTION_33_13(v16, v17, v18, v19, v20, v21, v22, v23, v35.n128_i64[0], v35.n128_i64[1], *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], *&v36[80], *&v36[88], *&v36[96], *&v36[104], *&v36[112], *&v36[120], *&v36[128], v37);
        [*(v14 + 224) unlock];

        swift_unknownObjectRelease();
      }

      if (*v8)
      {
        v24 = *(*v8 + 16);
        swift_retain_n();

        v25 = sub_25BA928B4();
        [v25 lock];

        OUTLINED_FUNCTION_33_13(v26, v27, v28, v29, v30, v31, v32, v33, v35.n128_i64[0], v35.n128_i64[1], *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], *&v36[80], *&v36[88], *&v36[96], *&v36[104], *&v36[112], *&v36[120], *&v36[128], v37);
        [*(v24 + 224) unlock];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_25BAA4AF4(v36);
  }

  result = v35;
  *a2 = v35;
  a2[1].n128_u64[0] = v11;
  return result;
}

uint64_t sub_25BBC4968@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  if (a2)
  {
    v10 = *(a2 + 16);
    v11 = *(a3 + 16);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  memcpy(__dst, a4, 0x43uLL);
  v12 = *(a1 + 16);
  v66[0] = *(v12 + 152);
  sub_25BCB617C();
  v13 = sub_25BBC38F4(v66);

  v14 = *(*(a4 + 24) + 32);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ELL, 0x800000025BCDA100, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 329);
LABEL_17:
    __break(1u);
    return result;
  }

  v52 = v13;
  if ((v14 & 0x8000000000000000) == 0)
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
    goto LABEL_17;
  }

  v56 = v11;
  v15 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  memcpy(__dst, a4, 0x43uLL);
  LSTM.inputWeight.getter(v66);
  if (v66[0])
  {
    v16 = *(v66[0] + 16);

    v50 = v16;
  }

  else
  {

    v50 = 0;
  }

  v51 = v15;
  memcpy(__dst, a4, 0x43uLL);
  LSTM.bias.getter(v66);
  if (v66[0])
  {
    v17 = *(v66[0] + 16);
  }

  else
  {
    v17 = 0;
  }

  v55 = a6;
  memcpy(v66, a4, 0x43uLL);
  LSTM.bias.getter(&v73);
  v18 = v73;
  if (v73)
  {
  }

  v19 = v18 != 0;
  v20 = *(a4 + 16);
  v21 = swift_allocObject();
  memcpy((v21 + 16), a4, 0x43uLL);
  *(v21 + 88) = a5;
  *(v21 + 96) = v20;
  *(v21 + 97) = v19;
  *(v21 + 98) = v10 != 0;
  sub_25BB924FC(a4, __dst);

  v22 = sub_25BAAF074(sub_25BBC7884, v21);
  v24 = v23;

  v65 = 0;
  v67[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LSTMLayerOps.swift";
  v67[1] = 114;
  v68 = 2;
  v69 = xmmword_25BCC7830;
  v70 = "init(id:input:recurrentWeight:inputWeight:bias:hiddenWeight:state:isBidirectional:resultDescriptors:creationSite:backward:)";
  v71 = 123;
  v72 = 2;
  type metadata accessor for LSTMLayerOperation();
  swift_allocObject();
  v54 = v10;
  sub_25BBC789C(v10);
  v25 = sub_25BB4A46C(0, 0, 0, v12, v51, v50, v17, 0, v10, v56, v20, v52, v67, v22, v24);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  sub_25BAA51C8(&v61, v60);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(__dst);

  v26 = v59;

  sub_25BAA4AF4(__dst);
  sub_25BAA49B8();
  sub_25BAA4A5C(__dst);

  v27 = v58;

  sub_25BAA4AF4(__dst);
  type metadata accessor for TensorRepresentation();
  v28 = swift_allocObject();
  LOBYTE(__dst[0]) = 1;
  v29 = sub_25BC0F31C(v25, 0, v60, 0x100000000, v26, v27, v28);
  type metadata accessor for TensorHandle();
  v53 = swift_allocObject();
  *(v53 + 16) = v29;

  sub_25BAA6EB0();

  sub_25BA9C2C8(&v61);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  sub_25BAA51C8(&v61, v60);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(__dst);

  v30 = v59;

  sub_25BAA4AF4(__dst);
  sub_25BAA49B8();
  sub_25BAA4A5C(__dst);

  v31 = v58;

  sub_25BAA4AF4(__dst);
  v32 = swift_allocObject();
  LOBYTE(__dst[0]) = 1;
  v33 = sub_25BC0F31C(v25, 1, v60, 0x100000000, v30, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;

  sub_25BAA6EB0();

  sub_25BA9C2C8(&v61);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  sub_25BAA51C8(&v61, v60);
  v35 = v25;
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(__dst);

  v36 = v59;

  sub_25BAA4AF4(__dst);
  sub_25BAA49B8();
  sub_25BAA4A5C(__dst);

  v37 = v58;

  sub_25BAA4AF4(__dst);
  v38 = swift_allocObject();
  LOBYTE(__dst[0]) = 1;
  v39 = sub_25BC0F31C(v35, 2, v60, 0x100000000, v36, v37, v38);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;

  sub_25BAA6EB0();

  sub_25BA9C2C8(&v61);
  *(a5 + 24) = v34;

  *(a5 + 16) = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB60F0, qword_25BCC7FF0);
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D83B88];
  *(v41 + 16) = xmmword_25BCBAE50;
  *(v41 + 56) = v42;
  *(v41 + 64) = &protocol witness table for Int;
  *(v41 + 32) = -1;
  __dst[0] = v53;
  Tensor.subscript.getter(v41, &v61);
  swift_setDeallocating();
  sub_25BC0C550();
  v43 = v61;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_25BCBAE50;
  *(v44 + 56) = v42;
  *(v44 + 64) = &protocol witness table for Int;
  *(v44 + 32) = -1;
  __dst[0] = v34;
  Tensor.subscript.getter(v44, &v61);
  swift_setDeallocating();
  sub_25BC0C550();
  v45 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25BCC4630;
  *(v46 + 32) = v45;
  *(v46 + 40) = v43;
  *(v46 + 48) = v53;
  *(v46 + 56) = v34;
  *(v46 + 64) = v40;

  sub_25BACEA3C(v46, v47, v48);

  sub_25BB4AE24(v54);
  swift_setDeallocating();
  result = sub_25BAB3FD0();
  v55[1] = v43;
  v55[2] = v45;
  *v55 = v53;
  return result;
}

uint64_t sub_25BBC5248(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 50);
  v6 = *(v1 + 66);
  if (!sub_25BAB74D0(*(*a1 + 16), 3, 0, 0))
  {
    goto LABEL_22;
  }

  if (*(v2 + 16) <= 2uLL)
  {
    v15 = "positiveAxis(fromAxis:from:rank:from:function:file:line:)";
    v16 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift";
    v17 = 57;
    v18 = 102;
    v19 = 133;
LABEL_24:
    sub_25BADDD28(v15, v17, 2, v16, v18, 2, v19);
  }

  v7 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBAE90;
    *(v8 + 32) = 2;
    if ((v3 - 0x2000000000000000) >> 62 == 3)
    {
      *(v8 + 40) = 4 * v3;
      *(v8 + 48) = v3;

      sub_25BB1ABC8();

      v10 = 8 * v3;
      if (!v5)
      {
        goto LABEL_8;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE70;
      if ((v3 - 0x1000000000000000) >> 61 == 7)
      {
        *(v11 + 32) = v10;
        *(v11 + 40) = v7;

        sub_25BB1ABC8();

LABEL_8:
        if (!v6)
        {
          return result;
        }

        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_25BCBAE50;
        if ((v3 - 0x1000000000000000) >> 61 == 7)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v15 = "initializeParameters(for:)";
      v16 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/RecurrentLayers.swift";
      v17 = 26;
      v18 = 104;
      v19 = 371;
      goto LABEL_24;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE70;
  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_19;
  }

  v10 = 4 * v3;
  *(v13 + 32) = 4 * v3;
  *(v13 + 40) = v3;

  sub_25BB1ABC8();

  if (v5)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25BCBAE70;
    *(v14 + 32) = v10;
    *(v14 + 40) = v7;

    sub_25BB1ABC8();
  }

  if (v6)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE50;
LABEL_16:
    *(v12 + 32) = v10;

    sub_25BB1ABC8();
  }

  return result;
}

uint64_t LSTM.initializeParameters(for:)(uint64_t *a1)
{
  v2 = *a1;
  memcpy(__dst, v1, sizeof(__dst));
  v4 = *(*(v2 + 16) + 152);
  sub_25BCB617C();
  sub_25BBC5248(&v4);
}

uint64_t sub_25BBC562C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E7261656CLL && a2 == 0xED00006573616850;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E756F4374696E75 && a2 == 0xE900000000000074;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6572696469427369 && a2 == 0xEF6C616E6F697463;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65727275636572 && a2 == 0xEF74686769655774;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6965577475706E69 && a2 == 0xEB00000000746867;
          if (v9 || (sub_25BCB789C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1935763810 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_25BCB789C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}