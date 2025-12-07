uint64_t sub_26B14A940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t WeakArray.init(wrappedValue:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_26B212F50();
  v8 = type metadata accessor for _WeakValue(0, a2, v6, v7);
  OUTLINED_FUNCTION_1_40();
  v9 = OUTLINED_FUNCTION_3_32();
  v15 = sub_26B14B604(v9, v10, v5, v8, v11, v12, v13, v14);

  *a3 = v15;
  return result;
}

uint64_t sub_26B14AA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SetBloomFilter.init(wrappedValue:estimatedCapacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_26B14AC14(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B215910;
  *(a6 + 56) = v12;
  *a6 = a1;
  sub_26B2128F0();
  v13 = sub_26B14C354(0xFFFFFFFFFFFFFFFELL);
  BloomFilter.init(estimatedCapacity:falsePositiveTolerance:optimizationAttempts:hashSeed:)(a2, 10, v13 + 1, &v20, 0.001);
  v14 = v21;
  v15 = v22;
  *(a6 + 8) = v20;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  *(a6 + 40) = v23;
  v16 = sub_26B212EC0();
  if (sub_26B212EF0())
  {
    v17 = sub_26B1565C8(v16, a3, a5);
  }

  else
  {

    v17 = MEMORY[0x277D84FA0];
  }

  v18 = type metadata accessor for SetBloomFilter(0, a3, a4, a5);
  sub_26B14C63C(v17, a1, v18);
}

void sub_26B14AC14(uint64_t a1)
{
  if (!qword_280D2DC70[0])
  {
    sub_26B14AC6C();
    v5 = type metadata accessor for Box(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280D2DC70);
    }
  }
}

void sub_26B14AC6C()
{
  if (!qword_280D2DF98)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DF98);
    }
  }
}

uint64_t sub_26B14ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return sub_26B214130();
}

void OUTLINED_FUNCTION_1_20(uint64_t a1@<X8>)
{

  sub_26B15B0A0(v1 > 1, a1, 1);
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_26B2139E0();
}

void OUTLINED_FUNCTION_1_27()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = *v1;
  *(v0 + 128) = *(v1 + 8);
  *(v0 + 136) = *(v1 + 16);
  *(v0 + 144) = *(v1 + 24);
  *(v0 + 152) = *(v1 + 32);
  *(v0 + 97) = *(v1 + 40);
}

__n128 OUTLINED_FUNCTION_1_29@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __int128 a6, __int128 a7, uint64_t a8)
{
  result = a5;
  *(a1 + 96) = a8;
  *(a1 + 64) = a6;
  *(a1 + 80) = a7;
  *(a1 + 48) = a5;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_34(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_1_37(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = 0;
  v1[4] = 0;
  return v1 + 2;
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_26B14DB50(v0, type metadata accessor for Sonic_Foundation_BloomFilter);
}

uint64_t OUTLINED_FUNCTION_3_7()
{
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return sub_26B2139B0();
}

uint64_t OUTLINED_FUNCTION_3_12()
{
}

uint64_t OUTLINED_FUNCTION_3_13(unint64_t *a1)
{
  v4 = MEMORY[0x277D83958];

  return sub_26B18CAE0(a1, v1, v2, v4);
}

void OUTLINED_FUNCTION_3_16()
{
  v2 = *(v0 + 16) + 1;

  sub_26B15B0A0(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_3_21()
{
  v2 = v0 + 80 * v1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 320) = v2;
  *(v0 + 328) = v3;
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  *(v0 + 336) = v4;
  *(v0 + 344) = v5;
  v6 = *(v0 + 240);
  *(v0 + 352) = v6;
  v7 = *(v0 + 248);
  *(v0 + 249) = v7;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  *(v0 + 64) = sub_26B1BC924;
  *(v0 + 72) = 0;
}

uint64_t OUTLINED_FUNCTION_3_23@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = a2;
  *(v3 + 48) = 0;
  return a1 + 40;
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1)
{

  return sub_26B166358();
}

uint64_t OUTLINED_FUNCTION_3_30(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_26B211CE0();
}

uint64_t sub_26B14B604(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v47 = a1;
  v48 = a2;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v49 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v51 = v15;
  OUTLINED_FUNCTION_11_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v45 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v39 = v23;
  v40 = v22;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - v25;
  v27 = sub_26B213240();
  if (!v27)
  {
    return sub_26B212EC0();
  }

  v50 = v27;
  v54 = sub_26B213810();
  v41 = sub_26B213820();
  sub_26B2137B0();
  result = sub_26B213220();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v36 = v11;
    v37 = a5;
    v29 = 0;
    v42 = (v51 + 16);
    v43 = v51 + 8;
    v44 = v8;
    while (!__OFADD__(v29, 1))
    {
      v51 = v29 + 1;
      v30 = sub_26B2132E0();
      (*v42)(v19);
      v30(v53, 0);
      v31 = v52;
      v47(v19, v49);
      if (v31)
      {
        v34 = OUTLINED_FUNCTION_42();
        v35(v34);
        (*(v39 + 8))(v26, v40);

        return (*(v36 + 32))(v38, v49, v37);
      }

      v52 = 0;
      v32 = OUTLINED_FUNCTION_42();
      v33(v32);
      sub_26B213800();
      result = sub_26B213280();
      ++v29;
      if (v51 == v50)
      {
        (*(v39 + 8))(v26, v40);
        return v54;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_6_4@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[3].n128_u64[1] = a2;
  a1[2].n128_u64[0] = 0x4B325B1B0DLL;
  a1[2].n128_u64[1] = 0xE500000000000000;

  return sub_26B214020();
}

size_t OUTLINED_FUNCTION_6_6(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

double OUTLINED_FUNCTION_6_7()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26B212D30();
}

void OUTLINED_FUNCTION_6_17(uint64_t a1)
{

  sub_26B16AF14();
}

void OUTLINED_FUNCTION_6_20(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = a1;
  *(v2 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return sub_26B1A85A8(v4, v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_6_22@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_26B2128F0();
}

void OUTLINED_FUNCTION_6_25(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_26B207D54(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  if (v0)
  {
    return v0 + 32;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_2_11()
{
  *(v1 - 208) = v0;

  sub_26B166880();
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_26B2128F0();
}

void OUTLINED_FUNCTION_2_26(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[6].n128_u64[0] = v4;
  a1[4] = a3;
  a1[5] = a4;
  a1[3] = a2;
  a1[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15, char a16)
{
  a13 = v17;
  a14 = v16;
  a15 = 17;
  a16 = 14;

  return static SQLError.Code.== infix(_:_:)(&a13, &a15);
}

uint64_t OUTLINED_FUNCTION_2_32()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 280) = result;
  *(v0 + 288) = v2;
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  *(v0 + 296) = v3;
  *(v0 + 304) = v4;
  v5 = *(v0 + 240);
  *(v0 + 312) = v5;
  v6 = *(v0 + 248);
  *(v0 + 249) = v6;
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28211F3E0](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = v2;
  return a2;
}

uint64_t WeakArray.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _WeakValue(255, *(a1 + 16), a3, a4);
  sub_26B212F50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26B213300();
  swift_getKeyPath();
  sub_26B2128F0();
  swift_getWitnessTable();
  v4 = sub_26B212D30();

  return v4;
}

uint64_t WeakArray.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakArray.wrappedValue.getter(v3, v4, v5, v6);
  return OUTLINED_FUNCTION_8_29();
}

uint64_t _s21ScalarFunctionOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_26B14C2C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26B14C354(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D672400](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D672400](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void BloomFilter.init(estimatedCapacity:falsePositiveTolerance:optimizationAttempts:hashSeed:)(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v6 = a5 >= 1.0 || a1 < 1;
  if (v6 || (a5 > 0.0 ? (v8 = a3 == 0) : (v8 = 1), v8))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = ceil((logf(a5) * a1) / -0.480453014);
  if (v12 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = ceil(v12 / 0.480453014);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a2 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = a3;
  v14 = 0;
  v15 = v12;
  v16 = v13;
  do
  {
    v17 = v14 * v16;
    if ((v14 * v16) >> 64 != (v14 * v16) >> 63)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v18 = v15 + v17;
    if (__OFADD__(v15, v17))
    {
      goto LABEL_36;
    }

    v19 = ceil(v18 / a1 * 0.693147181);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (v19 <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v19 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v20 = v19;
    v21 = a1 * v19;
    if ((a1 * v19) >> 64 != v21 >> 63)
    {
      goto LABEL_40;
    }

    v22 = pow(1.0 - 1.0 / v18, v21);
    v23 = pow(1.0 - v22, v20);
    if (vabds_f32(v23, a5) < 0.005 || a2 == v14)
    {
      goto LABEL_30;
    }
  }

  while (!__OFADD__(v14++, 1));
  __break(1u);
LABEL_30:
  if (v18 >= 1 && v20 >= 1)
  {
    v27 = MEMORY[0x26D66F7D0](0, v18);
    *a4 = 0;
    a4[1] = v20;
    a4[2] = v29;
    a4[3] = v27;
    a4[4] = v28;
    a4[5] = v18;
    return;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_26B14C63C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_26B2128F0();
  sub_26B2131D0();
  v7 = sub_26B2131E0();

  if ((v7 & 1) == 0)
  {
    sub_26B212390();
    sub_26B212350();
    *(v3 + 8) = 0;
    v8 = *(v3 + 56);
    swift_beginAccess();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    *(v8 + 16) = xmmword_26B215910;
    sub_26B156574(v9, v10);
  }

  v17[0] = a2;
  v11 = sub_26B213200();
  WitnessTable = swift_getWitnessTable();
  result = BloomFilter.formUnion<A>(_:)(v17, v11, WitnessTable, a3[3]);
  if (result)
  {
    v14 = *(v4 + 56);
    swift_beginAccess();
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    *(v14 + 16) = xmmword_26B215910;
    return sub_26B156574(v15, v16);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s21ScalarFunctionOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_8_1()
{
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  *(v1 + 80) = *(v2 + 8);
  *(v1 + 88) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B2139C0();
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1)
{
  *(a1 + 32) = v1;

  return sub_26B212AB0();
}

__n128 OUTLINED_FUNCTION_8_16()
{
  result = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v2 - 256) = result;
  *(v2 - 240) = v4;
  *(v2 - 224) = *(v2 - 112);
  *(v2 - 216) = v1;
  return result;
}

void OUTLINED_FUNCTION_8_17(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

void OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  *(v17 + 4) = a14;
  *(v17 + 8) = a15;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
}

uint64_t OUTLINED_FUNCTION_8_22()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_8_25()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_26B2136C0();
}

void OUTLINED_FUNCTION_8_26()
{

  j__os_unfair_lock_unlock(v0);
}

uint64_t OUTLINED_FUNCTION_8_28()
{

  return sub_26B211D40();
}

uint64_t sub_26B14CBB4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v5 = sub_26B2128F0();
  a3(v5, v4);
}

uint64_t WeakArray.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = sub_26B212F50();
  v8 = type metadata accessor for _WeakValue(0, v4, v6, v7);
  OUTLINED_FUNCTION_1_40();
  v9 = OUTLINED_FUNCTION_3_32();
  v15 = sub_26B14B604(v9, v10, v5, v8, v11, v12, v13, v14);

  *v3 = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return sub_26B2139B0();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{

  return sub_26B2139B0();
}

void OUTLINED_FUNCTION_7_0()
{
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t *a1)
{

  return swift_unknownObjectRetain();
}

uint64_t _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_1()
{
  *(v1 + 232) = *(v0 + 16);
  result = *(v0 + 24);
  *(v1 + 240) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_26B212B10();
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  LOBYTE(v3) = sub_26B212120();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void sub_26B14D16C(uint64_t (*a1)(void))
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    v4 = a1();

    if (v4)
    {
      sub_26B212A80();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_26B14D208()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_26B14D274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for _WeakValue(0, *(a2 + a3 - 8), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t sub_26B14D32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 40);
  v10 = sub_26B14FD1C();
  static HashAlgorithm.hash<A>(_:)(a1, &type metadata for FNV1a, a2, v10, a3);
  v11 = static Murmur3.hash<A>(_:seed:)(a1, v8, a2, a3);
  result = sub_26B212100();
  if (v7 < 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = v16 + v11;
    v14 = 1;
    while (v9)
    {
      result = sub_26B2120F0();
      if (v7 == v14)
      {
        return result;
      }

      v13 += v11;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static Murmur3.hash<A>(_:seed:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v13 = a2;
  v6 = *(a4 + 8);
  v7 = sub_26B14FEF8();
  v6(&v11, &type metadata for Murmur3, v7, a3, a4);
  Murmur3.finalize()(v11, v12);
  v9 = v8;

  return v9;
}

void sub_26B14D4CC()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      OUTLINED_FUNCTION_0_11(v7, &qword_280D2CCD0, MEMORY[0x277D84B78]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v2;
      v8[3] = 2 * v9 - 64;
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B1734FC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v13 = OUTLINED_FUNCTION_11_4();
    memcpy(v13, v14, v15);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_26B14D588(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v21 = sub_26B2120E0();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B212110();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B14F238(0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v13 = MEMORY[0x277CC9A28];
  sub_26B14F2CC(&qword_280D2DA50, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
  sub_26B212D10();
  sub_26B14F2CC(&qword_280D2DA48, v13, MEMORY[0x277CC9A50]);
  v14 = (v3 + 8);
  do
  {
    sub_26B213270();
    sub_26B14F2CC(&qword_280D2DA58, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v15 = v21;
    v16 = sub_26B212A20();
    (*v14)(v5, v15);
    if (v16)
    {
      break;
    }

    v17 = sub_26B2132E0();
    v17(v20, 0);
    sub_26B213280();
  }

  while ((sub_26B2123B0() & 1) != 0);
  sub_26B14DB50(v12, sub_26B14F238);
  return v16 & 1;
}

uint64_t SetBloomFilter.projectedValue.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *a2 = v8[0];
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return (*(*(a1 - 8) + 16))(&v7, v8, a1);
}

void sub_26B14D918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26B14F044(a1, a2);
  }
}

uint64_t SetBloomFilter.protobufData.getter()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    v4 = sub_26B156344();
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    *(v1 + 16) = v4;
    *(v1 + 24) = v7;
    sub_26B14F044(v4, v7);
    sub_26B156574(v5, v6);
  }

  sub_26B14D918(v2, v3);
  return v4;
}

uint64_t BloomFilter.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26B212110();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v17 = *v3;
  sub_26B2128F0();
  sub_26B14D32C(a1, a2, a3);

  v15 = sub_26B14D588(v14, v3);
  if (v15)
  {
    (*(v10 + 8))(v14, v8);
    return (v15 & 1) == 0;
  }

  sub_26B154DFC(v14, v4);
  result = (*(v10 + 8))(v14, v8);
  if (!__OFADD__(v17, 1))
  {
    *v4 = v17 + 1;
    return (v15 & 1) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B14DB50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Murmur3.finalize()(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 + 32;
  while (2)
  {
    v6 = 0;
    v7 = 8 * v4;
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      if ((i - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_25;
      }

      v10 = v7 + v6;
      if (v7 + v6 <= -33 || v10 > 32)
      {
        goto LABEL_9;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v10 != -32)
      {
        v11 = *(v5 + i) >> (-(v6 + 8 * v4) & 0x18);
        goto LABEL_17;
      }

LABEL_9:
      if (v9 == v2)
      {
        goto LABEL_18;
      }

      v6 += 8;
    }

    if (v10 == 32)
    {
      goto LABEL_9;
    }

    v11 = *(v5 + i) << ((v6 + 8 * v4) & 0x18);
LABEL_17:
    v3 |= v11;
    v4 = i + 1;
    if (v9 != v2)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (__OFADD__(a1, v2))
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_18();
LABEL_20:
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    return;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_26B14DCE4(void *a1, void *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v14 = sub_26B14F340(0, a4, a6, a7);
    result = sub_26B14F340(a4, a5, a6, a7);
    v16 = v14 + result;
    if (__OFADD__(v14, result))
    {
      __break(1u);
    }

    else if (v16 >= v14)
    {
      v17 = 0;
      if (v16 == v14 || !a3)
      {
        goto LABEL_19;
      }

      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      v18 = (a6 + v14);
      v19 = a2;
LABEL_18:
      memcpy(v19, v18, v17);
LABEL_19:
      v23 = sub_26B14F314(a4, v17, a6, a7);
      a1[3] = a7;
      a1[4] = v23;
      *a1 = a4;
      a1[1] = a5;
      a1[2] = a6;
      return v17;
    }

    __break(1u);
    goto LABEL_22;
  }

  v20 = sub_26B14F340(0, a4, 0, a7);
  result = sub_26B14F340(a4, a5, 0, a7);
  v21 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21 == v20;
  if (v21 >= v20)
  {
    v17 = 0;
    if (v22 || !a3)
    {
      goto LABEL_19;
    }

    if (result >= a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = result;
    }

    v19 = a2;
    v18 = 0;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_26B14DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_26B14F340(a1, a2, a3, a4);
  v11 = *(*v5 + 16);
  if (__OFADD__(v11, v10))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26B14EC44(v11 + v10, 1);
  v4 = *v5;
  v12 = *(*v5 + 16);
  v13 = (*(*v5 + 24) >> 1) - v12;
  v14 = sub_26B14DCE4(&v30, (*v5 + v12 + 32), v13, a1, a2, a3, a4);
  if (v14 < v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 1)
  {
    v15 = *(v4 + 16);
    v16 = __OFADD__(v15, v14);
    v17 = v15 + v14;
    if (v16)
    {
      __break(1u);
LABEL_37:
      *(v4 + 16) = v10 + 1;
      goto LABEL_7;
    }

    *(v4 + 16) = v17;
  }

  if (v14 != v13)
  {
LABEL_7:
    *v5 = v4;
    return;
  }

LABEL_10:
  v18 = v31;
  if (v34 == v31)
  {
    goto LABEL_7;
  }

  v19 = v30;
  if (v34 >= v30 && v34 < v31)
  {
    v21 = v32;
    if (v32)
    {
      v22 = v33 - v32;
    }

    else
    {
      v22 = 0;
    }

    if (v34 < 0 || v34 >= v22)
    {
      goto LABEL_40;
    }

    v10 = *(v4 + 16);
    v23 = *(v32 + v34);
    v24 = v34 + 1;
LABEL_22:
    v25 = *(v4 + 24) >> 1;
    if (v25 < v10 + 1)
    {
      v28 = v23;
      sub_26B14D4CC();
      v23 = v28;
      v4 = v29;
      v25 = *(v29 + 24) >> 1;
    }

    for (i = v24; ; ++i)
    {
      if (v10 >= v25)
      {
        *(v4 + 16) = v10;
        v24 = i;
        goto LABEL_22;
      }

      *(v4 + 32 + v10) = v23;
      if (v18 == i)
      {
        goto LABEL_37;
      }

      if (v24 < v19 || i >= v18)
      {
        break;
      }

      if (v24 < 0 || i >= v22)
      {
        goto LABEL_38;
      }

      v23 = *(v21 + i);
      ++v10;
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_26B14E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B14FCC8();

  return StringProtocol.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t static HashAlgorithm.hash<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 24))(v15, v14);
  (*(a5 + 8))(v13, a2, a4, a3, a5);
  (*(a4 + 40))(a2, a4);
  return (*(v10 + 8))(v13, a2);
}

uint64_t sub_26B14E1AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v33 = a4;
  v31 = a2;
  v36 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  v29 = v7;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  sub_26B2133E0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  v30 = v16;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v32 = a3;
  sub_26B211BF0();
  v36 = v19;
  sub_26B212D10();
  v20 = v15;
  swift_getAssociatedConformanceWitness();
  v21 = (v29 + 32);
  for (i = (v29 + 8); ; (*i)(v10, AssociatedTypeWitness))
  {
    sub_26B213460();
    if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v23 = (*v21)(v10, v13, AssociatedTypeWitness);
    MEMORY[0x28223BE20](v23);
    v24 = v32;
    *(&v28 - 6) = v31;
    *(&v28 - 5) = v24;
    v25 = v34;
    v26 = v35;
    *(&v28 - 4) = v33;
    *(&v28 - 3) = v26;
    *(&v28 - 2) = v25;
    swift_getAssociatedConformanceWitness();
    sub_26B211D60();
  }

  return (*(v30 + 8))(v36, v20);
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FCC68](v5 - 88, a2, a3, v4, v3);
}

void OUTLINED_FUNCTION_28_3()
{

  JUMPOUT(0x26D671480);
}

const char *OUTLINED_FUNCTION_28_6(uint64_t a1)
{

  return sub_26B1AECD0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_28_9()
{
  *(v1 - 104) = v0;

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return sub_26B15D26C(v2, v1, v0);
}

void OUTLINED_FUNCTION_0_11(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_26B16CBDC(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1, uint64_t a2)
{

  return sub_26B16E818(a1, a2, sub_26B16E89C);
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_26B2139E0();
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t a2)
{

  return sub_26B214130();
}

void OUTLINED_FUNCTION_0_20(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_26B182AA4(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return sub_26B19937C(v3, v2, v1, v0, 1);
}

void OUTLINED_FUNCTION_0_28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D857B8];

  sub_26B19E12C(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return sub_26B214030();
}

__n128 OUTLINED_FUNCTION_0_34@<Q0>(uint64_t a1@<X8>, uint64_t a2, __n128 a3, __int128 a4, __int128 a5, uint64_t a6)
{
  result = a3;
  *(a1 + 96) = a6;
  *(a1 + 64) = a4;
  *(a1 + 80) = a5;
  *(a1 + 48) = a3;
  *(a1 + 104) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_0_35@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __int128 a6, __int128 a7, uint64_t a8)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  result = a5;
  *(a1 + 96) = a8;
  *(a1 + 64) = a6;
  *(a1 + 80) = a7;
  *(a1 + 48) = a5;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return sub_26B211CF0();
}

void Murmur3.update(bufferPointer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v7 = v2[1];
  v6 = v2 + 1;
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 4 - v8;
  sub_26B1824FC(4 - v8, a1, a2);
  sub_26B14DE28(v10, v11, v12, v13);
  sub_26B16CE68(v9, v5, v4);
  if (v16)
  {
    v4 = v16 + v15;
  }

  else
  {
    v4 = 0;
  }

  if (v16)
  {
    v5 = v16 + v14;
  }

  else
  {
    v5 = 0;
  }

  if (*(*v6 + 16) == 4)
  {
    OUTLINED_FUNCTION_1_18();
    HIDWORD(v18) = v17 ^ *(v3 + 4);
    LODWORD(v18) = HIDWORD(v18);
    *(v3 + 4) = 5 * (v18 >> 19) - 430675100;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_26B18E01C(0, *(v3[1] + 16));
    }

    else
    {
      v19 = sub_26B18DD0C();

      *v6 = v19;
    }

    if (__OFADD__(*v3, 4))
    {
      goto LABEL_27;
    }

    *v3 += 4;
LABEL_14:
    if (v5)
    {
      v20 = (v4 - v5) / 4;
    }

    else
    {
      v20 = 0;
    }

    v21 = sub_26B14DFF4();
    v24 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_24;
    }

    v25 = *v3;
    v26 = 0x7FFFFFFFFFFFFFFCLL;
    if (*v3 > 0x7FFFFFFFFFFFFFFCLL)
    {
      v26 = *v3;
    }

    if (v22 + ~v21 < (v26 - v25 + 3) >> 2)
    {
      v27 = *(v3 + 4);
      v28 = (v23 + 4 * v21);
      do
      {
        v25 += 4;
        v29 = *v28++;
        HIDWORD(v30) = (461845907 * ((380141568 * v29) | ((-862048943 * v29) >> 17))) ^ v27;
        LODWORD(v30) = HIDWORD(v30);
        v27 = 5 * (v30 >> 19) - 430675100;
        --v24;
      }

      while (v24);
      *v3 = v25;
      *(v3 + 4) = v27;
LABEL_24:
      v31 = sub_26B14F8DC(4 * v20, v5, v4);
      sub_26B14DE28(v31, v32, v33, v34);
      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t StringProtocol.hash<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26B212AD0();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_26B212AC0();
  v14 = sub_26B2134B0();
  v16 = v15;
  result = (*(v9 + 8))(v13, v7);
  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v16;
    v18 = sub_26B14FE8C();
    sub_26B14E1AC(&v19, a3, MEMORY[0x277CC9318], a5, v18);
    return sub_26B14FF4C(v19, v20);
  }

  return result;
}

uint64_t SetBloomFilter.wrappedValue.setter(uint64_t a1, void *a2)
{
  v3 = *v2;
  *v2 = a1;
  sub_26B14D8A4(v3, a2);
}

uint64_t sub_26B14EFB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v8 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = BloomFilter.insert<A>(_:)(a2, AssociatedTypeWitness, a4);
  *a5 = (result | v8) & 1;
  return result;
}

void sub_26B14F044(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void OUTLINED_FUNCTION_12_3()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_12_5()
{
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_17()
{
}

void OUTLINED_FUNCTION_12_18()
{

  JUMPOUT(0x26D670040);
}

void sub_26B14F238(uint64_t a1)
{
  if (!qword_280D2CCD8)
  {
    sub_26B212110();
    sub_26B14F2CC(&qword_280D2DA48, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v1 = sub_26B213910();
    if (!v2)
    {
      atomic_store(v1, &qword_280D2CCD8);
    }
  }
}

uint64_t sub_26B14F2CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B14F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_26B14F340(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *(v3 - 72) = a1;
  *(v3 - 128) = a3;

  return sub_26B2133E0();
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, _DWORD *a2, ...)
{
  va_start(va, a2);
  *a2 = v2;

  return sub_26B1E26EC(v2, va);
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return sub_26B1A8558(v0, v1, v2, v3, v4);
}

void OUTLINED_FUNCTION_25_9()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 120);
  *(v0 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_26B14B604(v18, &a9, v20, v19, v21, a6, a7, va);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_26B213B50();
}

void OUTLINED_FUNCTION_4_19()
{
  *(v2 - 208) = v0;
  *(v2 - 207) = *(v2 - 160);
  *(v2 - 204) = *(v1 + 3);
}

void OUTLINED_FUNCTION_4_21()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v15;
  *(v11 + 40) = v16;
  *(v11 + 48) = v12;
  return a11 + 8;
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_26B2134A0();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  v8 = *(a2 + 32);
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;
  return a6;
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_26B2141F0();
}

void OUTLINED_FUNCTION_50_5(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6].n128_u64[0] = v4;
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
}

uint64_t sub_26B14F8DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 - a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B14F900(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

unsigned __int8 *FNV1a.update(bufferPointer:)(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result && result != a2)
  {
    v3 = *v2;
    do
    {
      v4 = *result++;
      v3 = 0x100000001B3 * (v3 ^ v4);
    }

    while (result != a2);
    *v2 = v3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_13_1()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

void OUTLINED_FUNCTION_13_2()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{
  *(v1 - 72) = a1;

  return sub_26B212F50();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1 + v1;
}

void OUTLINED_FUNCTION_13_14()
{
  *v2 = v0;
  *(v2 + 8) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 64;
}

void OUTLINED_FUNCTION_13_15(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v4[6].n128_u64[0] = a1;
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v4[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_13_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return sub_26B212DF0();
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return sub_26B213E30();
}

void OUTLINED_FUNCTION_16_7()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_16_12(uint64_t a1)
{

  return sub_26B213E30();
}

unint64_t sub_26B14FCC8()
{
  result = qword_280D2DB68[0];
  if (!qword_280D2DB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2DB68);
  }

  return result;
}

unint64_t sub_26B14FD1C()
{
  result = qword_280D2CF30;
  if (!qword_280D2CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2CF30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{
  result = *(v1 + 112);
  *(v1 + 32) = a1;
  return result;
}

__n128 OUTLINED_FUNCTION_98()
{
  v1 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v1;
  result = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 176) = result;
  *(v0 + 192) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_10@<X0>(uint64_t a2@<X8>)
{
  *(v2 - 112) = a2;

  return sub_26B2133E0();
}

unint64_t sub_26B14FE8C()
{
  result = qword_280D2DA68;
  if (!qword_280D2DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DA68);
  }

  return result;
}

unint64_t sub_26B14FEF8()
{
  result = qword_280D2CE68[0];
  if (!qword_280D2CE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2CE68);
  }

  return result;
}

uint64_t sub_26B14FF4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26B14FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 32) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26B2123F0();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26B150068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 24) = 0;
    *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26B2123F0();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B1500F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B150130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLTableFunctionCursorArguments(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_26B1501A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26B150350()
{
  OUTLINED_FUNCTION_27_0();
  v1 = sub_26B213880();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_26B2138A0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_28();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_26B150514(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B15052C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1505DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_26B150614(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B150634(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B15065C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B150680(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_26B150710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B213020();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    sub_26B176B7C();
    v7 = v9;
    v8 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_26B1507AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26B213020();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    sub_26B176B7C();
    v9 = v11;
    v10 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_26B150850()
{
  v1 = sub_26B213020();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_26B15091C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1509B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B150AC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26B150B08()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26B150B78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_26B150BBC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_26B150C58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B150C94()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B150D14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B150D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t sub_26B150E10()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B150E58()
{
  MEMORY[0x26D6724E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_26B150EF0()
{
  if (MEMORY[0x277D85020])
  {
    sub_26B198FBC(0);
  }
}

uint64_t sub_26B150F34()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B150F6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B150FEC()
{

  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26B151028()
{

  if (*(v0 + 32) != 1)
  {
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

BOOL sub_26B15106C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_26B1510A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1510E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B15111C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B15115C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v2, v3, v4, v5);
  v7 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = (v10 + 57) & ~v10;
  v13 = *(v12 + 64);

  (*(v9 + 8))(v1 + v11, v7);

  return MEMORY[0x2821FE8E8](v1, v11 + v13, v10 | 7);
}

uint64_t sub_26B151244()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_26B1512D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26B15136C(void *a1)
{
  sub_26B212150();

  return swift_getWitnessTable();
}

uint64_t sub_26B1513B8(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v1;
  v4[3] = v2;
  type metadata accessor for LRUDictionary.Container(255, v4);
  sub_26B212270();
  OUTLINED_FUNCTION_1_21();
  swift_getWitnessTable();
  sub_26B2138C0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_26B1514E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26B1514F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufData(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

void *sub_26B15153C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void sub_26B151548(void *a1@<X8>, void *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  OUTLINED_FUNCTION_8_17(a1);
}

uint64_t sub_26B151564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SQLDatabase.Location(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26B1515EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SQLDatabase.Location(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B1516D4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B1517D4@<X0>(uint64_t *a1@<X8>)
{
  result = SQLDatabase.AutoVacuumMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26B15186C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1518A4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B151920()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B151A0C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_26B151DE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_26B151F24@<W0>(Swift::OpaquePointer a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_26B151F60@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Int.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_26B151FA8@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = Int.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

Swift::UInt sub_26B152000@<X0>(Swift::OpaquePointer a1@<X0>, Swift::UInt *a2@<X8>)
{
  result = UInt.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

Swift::UInt sub_26B152048@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, Swift::UInt *a3@<X8>)
{
  result = UInt.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

void sub_26B1520A0(Swift::OpaquePointer a1@<X0>, double *a2@<X8>)
{
  v3 = Double.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = v3;
  }
}

void sub_26B1520D8(Swift::OpaquePointer a1@<X0>, float *a2@<X8>)
{
  v3 = Float.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = v3;
  }
}

uint64_t sub_26B15214C()
{
  OUTLINED_FUNCTION_55_2();
  result = swift_getWitnessTable();
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_26B152194()
{
  OUTLINED_FUNCTION_55_2();
  result = swift_getWitnessTable();
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_26B1522C0(void *a1)
{
  if (MEMORY[0x277D85020])
  {
    return sub_26B212130();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_26B152368()
{
  sub_26B1F71A8(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B1523DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_93_1();
  v6 = sub_26B211EF0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26B152488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B211EF0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26B152534()
{
  sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_59_0();
  v1(v0);

  v2 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B1525F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B15262C(uint64_t a1)
{
  OUTLINED_FUNCTION_27_10(a1, &qword_2803E79B0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_59_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26B152704()
{
  sub_26B211EF0();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_26B152798()
{
  sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_59_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B15284C()
{
  sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_59_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B152A48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_26B152AB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26B152B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B152B78()
{
  v1 = sub_26B213080();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

char *sub_26B152C58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B152C78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t Sonic_Foundation_BloomFilter.bits.getter()
{
  v1 = *(v0 + 24);
  sub_26B14F044(v1, *(v0 + 32));
  return v1;
}

uint64_t Sonic_Foundation_BloomFilter.bits.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26B14FF4C(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Sonic_Foundation_BloomFilter.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Sonic_Foundation_BloomFilter(0) + 36);
  v4 = sub_26B2123F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Sonic_Foundation_BloomFilter(uint64_t a1)
{
  result = qword_280D2D8F8;
  if (!qword_280D2D8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Sonic_Foundation_BloomFilter.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Sonic_Foundation_BloomFilter(0) + 36);
  v4 = sub_26B2123F0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Sonic_Foundation_BloomFilter.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000000000;
  type metadata accessor for Sonic_Foundation_BloomFilter(0);
  return sub_26B2123E0();
}

uint64_t sub_26B153058()
{
  v0 = sub_26B212550();
  __swift_allocate_value_buffer(v0, qword_2803E6A58);
  __swift_project_value_buffer(v0, qword_2803E6A58);
  sub_26B1541C0(0);
  sub_26B154218(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26B2151F0;
  v5 = v18 + v4;
  v6 = v18 + v4 + *(v2 + 56);
  *(v18 + v4) = 1;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26B212530();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "count";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "hash_count";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "hash_seed";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 8;
  *v16 = "bits";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  return sub_26B212540();
}

uint64_t static Sonic_Foundation_BloomFilter._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803E6A50 != -1)
  {
    swift_once();
  }

  v2 = sub_26B212550();
  v3 = __swift_project_value_buffer(v2, qword_2803E6A58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Sonic_Foundation_BloomFilter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26B212460();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_2();
        sub_26B212480();
        break;
      case 4:
        OUTLINED_FUNCTION_2();
        sub_26B212490();
        break;
      case 8:
        OUTLINED_FUNCTION_2();
        sub_26B212470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Sonic_Foundation_BloomFilter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*v3 || (OUTLINED_FUNCTION_0_3(), result = sub_26B212510(), (v5 = v4) == 0))
  {
    if (!*(v3 + 4) || (OUTLINED_FUNCTION_0_3(), result = sub_26B212510(), (v5 = v4) == 0))
    {
      if (!*(v3 + 8) || (OUTLINED_FUNCTION_0_3(), result = sub_26B212510(), (v5 = v4) == 0))
      {
        if (!*(v3 + 16) || (OUTLINED_FUNCTION_0_3(), result = sub_26B212520(), (v5 = v4) == 0))
        {
          if (sub_26B153580(*(v3 + 24), *(v3 + 32)) || (result = sub_26B212500(), !v5))
          {
            type metadata accessor for Sonic_Foundation_BloomFilter(0);
            OUTLINED_FUNCTION_2();
            return sub_26B2123D0();
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_26B153580(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t static Sonic_Foundation_BloomFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || (MEMORY[0x26D66F410](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Sonic_Foundation_BloomFilter(0);
  sub_26B2123F0();
  sub_26B153998(&qword_2803E6AE8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26B212A20() & 1;
}

uint64_t Sonic_Foundation_BloomFilter.hashValue.getter()
{
  sub_26B214030();
  type metadata accessor for Sonic_Foundation_BloomFilter(0);
  sub_26B153998(&qword_2803E6AF0, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);
  sub_26B2129A0();
  return sub_26B214070();
}

uint64_t sub_26B1537D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B153998(&qword_2803E6B28, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26B153854(uint64_t a1)
{
  v2 = sub_26B153998(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26B1538C4(uint64_t a1, uint64_t a2)
{
  sub_26B153998(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);

  return sub_26B2124E0();
}

uint64_t sub_26B153940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B214030();
  sub_26B2129A0();
  return sub_26B214070();
}

uint64_t sub_26B153998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B153B68(uint64_t a1)
{
  result = sub_26B2123F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s10ConnectionC6LimitsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10ConnectionC6LimitsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_26B153CA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B153CC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

uint64_t sub_26B153D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 648))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B153D40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 648) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B153E58(uint64_t a1, id *a2)
{
  result = sub_26B212A60();
  *a2 = 0;
  return result;
}

uint64_t sub_26B153ED4(uint64_t a1, id *a2)
{
  v3 = sub_26B212A70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26B153F54@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_26B15476C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_26B153F84(uint64_t a1)
{
  v1 = sub_26B212A80();
  v2 = MEMORY[0x26D6700E0](v1);

  return v2;
}

uint64_t sub_26B153FC4(uint64_t a1, uint64_t a2)
{
  sub_26B212A80();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_26B15402C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26B212A50();

  *a2 = v3;
  return result;
}

uint64_t sub_26B154074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1AA6EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26B1540A0(uint64_t a1)
{
  v2 = sub_26B153998(&qword_2803E6BA0, type metadata accessor for URLResourceKey, &unk_26B215774);
  v3 = sub_26B153998(&qword_2803E6BA8, type metadata accessor for URLResourceKey, &unk_26B2156C8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

void sub_26B1541C0(uint64_t a1)
{
  if (!qword_2803E6B30)
  {
    sub_26B154218(255);
    v1 = sub_26B213BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6B30);
    }
  }
}

void sub_26B154218(uint64_t a1)
{
  if (!qword_2803E6B38)
  {
    sub_26B212530();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6B38);
    }
  }
}

uint64_t sub_26B154288(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 184))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 149);
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

uint64_t sub_26B1542D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 149) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26B154388(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_26B1543DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_26B1544BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1544DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_26B154524(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 352))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154544(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 352) = v3;
  return result;
}

uint64_t sub_26B1545E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 296))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 296) = v3;
  return result;
}

uint64_t sub_26B15476C(uint64_t a1)
{
  sub_26B212A80();
  v1 = sub_26B212A50();

  return v1;
}

uint64_t sub_26B1547B0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *sub_26B15481C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26B154914(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154934(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 76) = v3;
  return result;
}

uint64_t sub_26B154990(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1549B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

uint64_t sub_26B154A10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154A30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B154AA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154AC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26B154B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void sub_26B154B84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26B154BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SetBloomFilter(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  v5 = sub_26B2128F0();
  return SetBloomFilter.wrappedValue.setter(v5, v4);
}

uint64_t (*SetBloomFilter.wrappedValue.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = *v2;
  a1[1] = a2;
  sub_26B2128F0();
  return sub_26B154C88;
}

uint64_t sub_26B154C88(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return SetBloomFilter.wrappedValue.setter(*a1, v2);
  }

  v3 = sub_26B2128F0();
  SetBloomFilter.wrappedValue.setter(v3, v2);
}

uint64_t SetBloomFilter.bloomFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = *(v1 + 40);
  return sub_26B2128F0();
}

Swift::Void __swiftcall BloomFilter.removeAll()()
{
  sub_26B212390();
  sub_26B212350();
  *v0 = 0;
}

void sub_26B154D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 * a1) >> 64 == (a2 * a1) >> 63)
  {
    v4 = pow(1.0 - 1.0 / a3, (a2 * a1));
    pow(1.0 - v4, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B154DFC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_26B2120E0();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26B212110();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26B14F238(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9, a1, v6);
  v13 = MEMORY[0x277CC9A28];
  sub_26B14F2CC(&qword_280D2DA50, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
  sub_26B212D10();
  sub_26B14F2CC(&qword_280D2DA48, v13, MEMORY[0x277CC9A50]);
  v14 = (v18 + 8);
  while (1)
  {
    sub_26B213270();
    sub_26B14F2CC(&qword_280D2DA58, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v15 = sub_26B212A20();
    (*v14)(v5, v3);
    if (v15)
    {
      break;
    }

    v16 = sub_26B2132E0();
    v16(v19, 0);
    sub_26B213280();
    sub_26B2123C0();
  }

  return sub_26B14DB50(v12, sub_26B14F238);
}

uint64_t BloomFilter.contains<A>(_:)(uint64_t a1, char *a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = sub_26B2120E0();
  OUTLINED_FUNCTION_0();
  v34 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  sub_26B14F238(0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = sub_26B212110();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = *(v3 + 2);
  v25 = *(v3 + 3);
  v36 = *v3;
  v37 = v24;
  v38 = v25;
  v35 = v25;
  v31 = v3[2];
  v39 = v31;
  sub_26B14D32C(a1, v32, v33);
  v32 = v23;
  v33 = v17;
  (*(v17 + 16))(v21, v23, v15);
  v26 = MEMORY[0x277CC9A28];
  sub_26B14F2CC(&qword_280D2DA50, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
  sub_26B212D10();
  sub_26B14F2CC(&qword_280D2DA48, v26, MEMORY[0x277CC9A50]);
  v27 = (v34 + 8);
  v34 = v31;
  do
  {
    sub_26B213270();
    sub_26B14F2CC(&qword_280D2DA58, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v28 = sub_26B212A20();
    (*v27)(v10, v5);
    if (v28)
    {
      break;
    }

    v29 = sub_26B2132E0();
    v29(&v36, 0);
    sub_26B213280();
  }

  while ((sub_26B2123B0() & 1) != 0);
  sub_26B14DB50(v14, sub_26B14F238);
  (*(v33 + 8))(v32, v15);
  return v28 & 1;
}

uint64_t sub_26B1554AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B213E30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E756F4368736168 && a2 == 0xE900000000000074;
    if (v6 || (sub_26B213E30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465655368736168 && a2 == 0xE800000000000000;
      if (v7 || (sub_26B213E30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1937008994 && a2 == 0xE400000000000000;
        if (v8 || (sub_26B213E30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1702521203 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B213E30();

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

uint64_t sub_26B155660(unsigned __int8 a1)
{
  sub_26B214030();
  MEMORY[0x26D671480](a1);
  return sub_26B214070();
}

uint64_t sub_26B1556A8(char a1)
{
  result = 0x746E756F63;
  switch(a1)
  {
    case 1:
      result = 0x6E756F4368736168;
      break;
    case 2:
      result = 0x6465655368736168;
      break;
    case 3:
      result = 1937008994;
      break;
    case 4:
      result = 1702521203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B155750(uint64_t a1)
{
  v2 = *v1;
  sub_26B214030();
  MEMORY[0x26D671480](v2);
  return sub_26B214070();
}

uint64_t sub_26B15579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B1554AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B1557E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B155658();
  *a1 = result;
  return result;
}

uint64_t sub_26B15580C(uint64_t a1)
{
  v2 = sub_26B15697C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B155848(uint64_t a1)
{
  v2 = sub_26B15697C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloomFilter.encode(to:)(void *a1)
{
  sub_26B156A68(0, &qword_2803E6BF8, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = v1[1];
  v12 = v1[3];
  v20 = v1[2];
  v21 = v11;
  v13 = v1[5];
  v18 = v1[4];
  v19 = v12;
  v17[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B15697C();
  sub_26B214120();
  LOBYTE(v22) = 0;
  OUTLINED_FUNCTION_2_0();
  sub_26B213B40();
  if (!v2)
  {
    v14 = v19;
    v15 = v18;
    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_2_0();
    sub_26B213B40();
    LOBYTE(v22) = 2;
    OUTLINED_FUNCTION_2_0();
    sub_26B213B60();
    v22 = v14;
    v23 = v15;
    v24 = 3;
    sub_26B156A14();
    OUTLINED_FUNCTION_2_0();
    sub_26B213B50();
    LOBYTE(v22) = 4;
    OUTLINED_FUNCTION_2_0();
    sub_26B213B40();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t BloomFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26B156A68(0, &qword_2803E6C10, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B15697C();
  sub_26B2140F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_0();
  v6 = sub_26B213AE0();
  OUTLINED_FUNCTION_1_0();
  v7 = sub_26B213AE0();
  LOBYTE(v13) = 2;
  OUTLINED_FUNCTION_1_0();
  v12 = sub_26B213B00();
  sub_26B156ACC();
  sub_26B213AF0();
  OUTLINED_FUNCTION_1_0();
  v8 = sub_26B213AE0();
  v9 = OUTLINED_FUNCTION_5();
  v10(v9);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v8;
  sub_26B2128F0();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static BloomFilter.== infix(_:_:)(void *a1, void *a2)
{
  if (a1[5] == a2[5] && *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    JUMPOUT(0x26D66F790);
  }

  return 0;
}

uint64_t BloomFilter.init(message:)@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  sub_26B14F044(v7, v9);
  v10 = sub_26B157044(v7, v9);
  if (v2)
  {
    return OUTLINED_FUNCTION_3_0();
  }

  v13 = v10;
  v14 = v11;
  result = OUTLINED_FUNCTION_3_0();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v4;
  return result;
}

uint64_t BloomFilter.message.getter()
{
  type metadata accessor for Sonic_Foundation_BloomFilter(0);
  sub_26B14F2CC(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);
  return sub_26B2124F0();
}

uint64_t sub_26B155E80(void *a1, uint64_t *a2)
{
  v3 = a2[5];
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a1;
  *a1 = v3;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a1 + 1) = v5;
  v6 = a2[1];
  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a1 + 2) = v6;
  a1[2] = a2[2];
  v7 = type metadata accessor for BitArrayDataEncoder();
  swift_allocObject();
  v8 = sub_26B158468();
  v12[3] = v7;
  v12[4] = sub_26B14F2CC(qword_280D2CF40, type metadata accessor for BitArrayDataEncoder, &unk_26B215D8C);
  v12[0] = v8;

  sub_26B212380();
  a1 = v12;
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    swift_beginAccess();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    sub_26B14F044(v9, v10);

    result = sub_26B14FF4C(v4[3], v4[4]);
    v4[3] = v9;
    v4[4] = v10;
    return result;
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double BloomFilter.init(protobufData:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_26B1560BC(a2, a3, &v9);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    result = *&v9;
    v8 = v12;
    *a1 = v9;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_26B1560BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_26B212410();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Sonic_Foundation_BloomFilter(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v30 = a1;
  v31 = a2;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_26B14F044(a1, a2);
  sub_26B212400();
  sub_26B14F2CC(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);
  sub_26B2124B0();
  if (v3)
  {
    return sub_26B14FF4C(a1, a2);
  }

  sub_26B156FB8(v13, v11);
  v15 = v11[1];
  v32 = *v11;
  v16 = v11[2];
  v17 = *(v11 + 3);
  v25 = *(v11 + 2);
  v26 = v16;
  v18 = *(v11 + 4);
  sub_26B14F044(v17, v18);
  v19 = sub_26B157044(v17, v18);
  v21 = v20;
  sub_26B14FF4C(a1, a2);
  sub_26B14DB50(v11, type metadata accessor for Sonic_Foundation_BloomFilter);
  result = sub_26B14DB50(v13, type metadata accessor for Sonic_Foundation_BloomFilter);
  v22 = v25;
  v23 = v26;
  *a3 = v15;
  a3[1] = v23;
  a3[2] = v22;
  a3[3] = v19;
  v24 = v32;
  a3[4] = v21;
  a3[5] = v24;
  return result;
}

uint64_t sub_26B156344()
{
  v1 = sub_26B212430();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Sonic_Foundation_BloomFilter(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0;
  sub_26B14F2CC(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter, &protocol conformance descriptor for Sonic_Foundation_BloomFilter);
  sub_26B2124F0();
  sub_26B212420();
  sub_26B2124C0();
  (*(v2 + 8))(v4, v1);
  sub_26B14DB50(v7, type metadata accessor for Sonic_Foundation_BloomFilter);
  return v11;
}

uint64_t sub_26B156574(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B14FF4C(result, a2);
  }

  return result;
}

uint64_t sub_26B1565C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  if (sub_26B212EF0())
  {
    sub_26B213690();
    v14 = sub_26B213680();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v36 = sub_26B212EF0();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_26B212EE0();
      sub_26B212E80();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_26B213730();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_26B212990();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v9, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_26B212A20();
        v28 = *(v6 + 8);
        v28(v9, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

unint64_t sub_26B15697C()
{
  result = qword_2803E6C00;
  if (!qword_2803E6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C00);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26B156A14()
{
  result = qword_2803E6C08;
  if (!qword_2803E6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C08);
  }

  return result;
}

void sub_26B156A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B15697C();
    v7 = a3(a1, &type metadata for BloomFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26B156ACC()
{
  result = qword_2803E6C18;
  if (!qword_2803E6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C18);
  }

  return result;
}

uint64_t sub_26B156B84(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26B156BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26B156C28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26B156C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BloomFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B156E2C()
{
  result = qword_2803E6C20;
  if (!qword_2803E6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C20);
  }

  return result;
}

unint64_t sub_26B156E84()
{
  result = qword_2803E6C28;
  if (!qword_2803E6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C28);
  }

  return result;
}

unint64_t sub_26B156EDC()
{
  result = qword_2803E6C30;
  if (!qword_2803E6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C30);
  }

  return result;
}

unint64_t sub_26B156F30(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x26D672400](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        v5 = 0;
        MEMORY[0x26D672400](&v5, 8);
        v3 = v5 * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B156FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sonic_Foundation_BloomFilter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B157044(uint64_t a1, unint64_t a2)
{
  type metadata accessor for BitArrayDataDecoder();
  swift_allocObject();
  sub_26B14F044(a1, a2);
  sub_26B15712C(a1, a2);
  sub_26B15898C(&qword_2803E6C40, type metadata accessor for BitArrayDataDecoder, &unk_26B215F44);
  v4 = sub_26B212370();
  sub_26B14FF4C(a1, a2);
  return v4;
}

void *sub_26B15712C(uint64_t a1, uint64_t a2)
{
  v2[4] = MEMORY[0x277D84F90];
  sub_26B213920();
  v2[5] = sub_26B2128C0();
  v2[6] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

BOOL sub_26B157198()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1 >> 32;
      break;
    case 2uLL:
      v3 = *(v1 + 24);
      break;
    case 3uLL:
      return v0[6] == v3;
    default:
      v3 = BYTE6(v2);
      break;
  }

  return v0[6] == v3;
}

uint64_t sub_26B1571E8@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_26B15898C(&qword_2803E6C38, type metadata accessor for BitArrayDataDecoder, &unk_26B215DD4);
  *a1 = v1;
}

void sub_26B15727C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B157324()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B1573CC()
{
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F540);
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B15749C()
{
  v1 = v0[2];
  v2 = v0[3];

  sub_26B14F044(v1, v2);
  v3 = sub_26B157520(v1, v2, v0);
  result = sub_26B14FF4C(v1, v2);
  v5 = v0[6];
  v6 = __OFADD__(v5, 8);
  v7 = v5 + 8;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v0[6] = v7;
    return v3;
  }

  return result;
}

uint64_t sub_26B157520(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v6 = sub_26B211D10();
      if (!v6)
      {
        goto LABEL_13;
      }

      v9 = sub_26B211D40();
      if (__OFSUB__(v8, v9))
      {
LABEL_18:
        __break(1u);
      }

      v6 += v8 - v9;
LABEL_13:
      result = sub_26B211D30();
      if (v6)
      {
LABEL_14:
        v4 = *(v6 + *(a3 + 48));
LABEL_15:

        return v4;
      }

      else
      {
        __break(1u);
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = sub_26B211D10();
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = sub_26B211D40();
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_17;
      }

      v6 += v5 - v7;
LABEL_6:
      sub_26B211D30();
      if (v6)
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_8:
      memset(v11, 0, 14);
      v4 = *(v11 + *(a3 + 48));
      goto LABEL_15;
    case 3uLL:
      goto LABEL_8;
    default:
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v4 = *(v11 + *(a3 + 48));
      goto LABEL_15;
  }
}

void sub_26B1576DC()
{
  sub_26B2136C0();

  sub_26B2141F0();
  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F540);
  sub_26B2139E0();
  __break(1u);
}

void sub_26B15779C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();

  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B157820()
{
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F540);
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1578F0()
{
  sub_26B14FF4C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_26B157920()
{
  v0 = sub_26B1578F0();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26B157B68()
{
  result = sub_26B213C10();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157BB8()
{
  result = sub_26B213C20();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157C60()
{
  result = sub_26B213C50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157CB0()
{
  result = sub_26B213C30();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157DF0()
{
  result = sub_26B213C60();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_26B157F10@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_26B15898C(&qword_280D2CF38, type metadata accessor for BitArrayDataEncoder, &unk_26B215C24);
  *a1 = v1;
}

void sub_26B157FA8()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B158050()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B1580F8()
{
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F560);
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1581C8(uint64_t a1)
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2 = a1;
  swift_beginAccess();
  v3[3] = MEMORY[0x277D838B0];
  v3[4] = MEMORY[0x277CC9C18];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D838B0]);
  sub_26B211F90();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return swift_endAccess();
}

void sub_26B158288()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();

  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B158314()
{
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F560);
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1583E4()
{
  sub_26B14FF4C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_26B158414()
{
  v0 = sub_26B1583E4();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26B158468()
{
  *(v0 + 16) = xmmword_26B215BA0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  sub_26B213920();
  *(v0 + 48) = sub_26B2128C0();
  return v0;
}

uint64_t sub_26B15898C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_26B2141F0();
}

uint64_t URL.PurgeUrgency.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

unint64_t sub_26B158AE0()
{
  result = qword_2803E6C48;
  if (!qword_2803E6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C48);
  }

  return result;
}

uint64_t _s16PurgeContentTypeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16PurgeContentTypeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t _s12PurgeUrgencyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s12PurgeUrgencyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B158CFC()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_26B212AD0();
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_2();
  result = sub_26B1593D0();
  if (result != 2 && (result & 1) != 0)
  {
    v6 = 0;
    sub_26B211EA0();
    sub_26B212AC0();
    sub_26B14FCC8();
    sub_26B2134C0();
    v2 = OUTLINED_FUNCTION_4_3();
    v3(v2);

    v4 = OUTLINED_FUNCTION_2_2();
    v5 = fsctl(v4, 0x80084A02uLL, &v6, 0);

    if (v5)
    {
      result = MEMORY[0x26D66FAE0](result);
      if (result)
      {
        sub_26B1591D8(result);
        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_26B158E70(int *a1, char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_26B212AD0();
  OUTLINED_FUNCTION_0_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  v9 = *a1;
  v10 = *a2;
  v11 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v12 = sub_26B212A50();

  LODWORD(a2) = [v11 fileExistsAtPath_];

  if (a2)
  {
    if (v9 < 0)
    {
      __break(1u);
    }

    v17 = v9 | dword_26B216060[v10] | 0x10000;
    sub_26B211EA0();
    sub_26B212AC0();
    sub_26B14FCC8();
    sub_26B2134C0();
    (*(v7 + 8))(v3, v2);

    v13 = OUTLINED_FUNCTION_2_2();
    v14 = fsctl(v13, 0xC0084A44uLL, &v17, 0);

    if (v14)
    {
      v16 = MEMORY[0x26D66FAE0](v15);
      if (v16)
      {
        sub_26B1591D8(v16);
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_26B15907C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  sub_26B212AD0();
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_2();
  v6[0] = 0;
  sub_26B211EA0();
  sub_26B212AC0();
  sub_26B14FCC8();
  sub_26B2134C0();
  v1 = OUTLINED_FUNCTION_4_3();
  v2(v1);

  v3 = OUTLINED_FUNCTION_2_2();
  v4 = fsctl(v3, 0xC0084A44uLL, v6, 0);

  if (v4)
  {
    result = MEMORY[0x26D66FAE0](result);
    if (result)
    {
      sub_26B1591D8(result);
      return swift_willThrow();
    }
  }

  return result;
}

char *sub_26B1591D8(int a1)
{
  v3 = sub_26B212A80();
  v5 = v4;
  sub_26B159E68(0, &qword_2803E6C68, sub_26B159ECC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B216070;
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v7;
  v8 = sub_26B211EF0();
  *(inited + 72) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v1, v8);
  *(inited + 80) = sub_26B212A80();
  *(inited + 88) = v10;
  result = strerror(a1);
  if (result)
  {
    v12 = MEMORY[0x26D66FF60]();
    *(inited + 120) = MEMORY[0x277D837D0];
    if (!v13)
    {
      sub_26B2136C0();

      v14 = sub_26B213B90();
      MEMORY[0x26D670040](v14);

      v12 = 0xD000000000000013;
      v13 = 0x800000026B21F580;
    }

    *(inited + 96) = v12;
    *(inited + 104) = v13;
    v15 = a1;
    v16 = sub_26B2128C0();
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    return sub_26B165258(v3, v5, v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1593D0()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v1 = sub_26B212A50();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  if (v2)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t URL.coreURL.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_4();
  sub_26B159E68(0, v2, v3, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_26B211CD0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B211C70();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    OUTLINED_FUNCTION_4_4();
    sub_26B159DF8(v6, v13, v14);
    v15 = sub_26B211EF0();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
    OUTLINED_FUNCTION_7();
    sub_26B211C90();
    OUTLINED_FUNCTION_7();
    sub_26B211CC0();
    OUTLINED_FUNCTION_7();
    sub_26B211CA0();
    OUTLINED_FUNCTION_7();
    sub_26B211CB0();
    sub_26B211C80();
    return (*(v9 + 8))(v12, v7);
  }
}

uint64_t sub_26B15965C()
{
  v2 = v0;
  OUTLINED_FUNCTION_3_3();
  sub_26B159E68(0, v3, v4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = v70 - v6;
  v7 = sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v74 = v8;
  MEMORY[0x28223BE20](v9);
  v83 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B211DA0();
  OUTLINED_FUNCTION_0();
  v75 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v76 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v70 - v16;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  sub_26B211EA0();
  v20 = sub_26B212A50();

  v21 = [v19 fileExistsAtPath_];

  if (!v21)
  {
    return 0;
  }

  v71 = v18;
  v72 = v7;
  v78 = v11;
  sub_26B159E68(0, &qword_2803E6C60, type metadata accessor for URLResourceKey, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v73 = xmmword_26B216080;
  *(inited + 16) = xmmword_26B216080;
  v23 = *MEMORY[0x277CBE8A8];
  v24 = *MEMORY[0x277CBE908];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  *(inited + 40) = v24;
  v25 = *MEMORY[0x277CBE838];
  *(inited + 48) = *MEMORY[0x277CBE838];
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_26B1AA6F0(inited);
  sub_26B211E40();

  if (v1)
  {
    return v26;
  }

  v70[0] = v2;
  v70[1] = v17;
  result = sub_26B211D70();
  if (result == 2)
  {
    goto LABEL_36;
  }

  v30 = v77;
  if (result)
  {
    result = sub_26B211D80();
    if (v31)
    {
      result = sub_26B211D90();
      if (v32)
      {
        goto LABEL_37;
      }
    }

    v26 = result;
    OUTLINED_FUNCTION_6_1();
    v33();
    if ((v26 & 0x8000000000000000) == 0)
    {
      return v26;
    }

    __break(1u);
  }

  v34 = swift_initStackObject();
  *(v34 + 16) = v73;
  *(v34 + 32) = v26;
  *(v34 + 40) = v27;
  *(v34 + 48) = v28;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  sub_26B1AA6F0(v34);
  v39 = v38;
  v40 = [v71 defaultManager];
  v41 = sub_26B2128F0();
  *&v73 = v39;
  sub_26B1F8A50(v41);
  v42 = sub_26B213320();

  v26 = 0;
  v43 = (v74 + 32);
  v75 += 8;
  v74 += 8;
  v44 = v72;
  while (1)
  {
    do
    {
      while (1)
      {
        if (!v42)
        {
          goto LABEL_30;
        }

        if ([v42 nextObject])
        {
          sub_26B213590();
          swift_unknownObjectRelease();
        }

        else
        {
          v80 = 0u;
          v79 = 0u;
        }

        v81 = v79;
        v82 = v80;
        if (!*(&v80 + 1))
        {
          v64 = OUTLINED_FUNCTION_0_6();
          v65(v64);

          OUTLINED_FUNCTION_8_1();
          goto LABEL_32;
        }

        v45 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v30, v45 ^ 1u, 1, v44);
        if (__swift_getEnumTagSinglePayload(v30, 1, v44) == 1)
        {
          v66 = OUTLINED_FUNCTION_0_6();
          v67(v66);
          OUTLINED_FUNCTION_8_1();

          goto LABEL_34;
        }

        (*v43)(v83, v30, v44);
        sub_26B211E40();
        v46 = sub_26B211D70();
        if (v46 != 2 && (v46 & 1) != 0)
        {
          break;
        }

        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_6_1();
        v55();
        v56 = OUTLINED_FUNCTION_1_3();
        v57(v56);
      }

      v47 = sub_26B211D80();
      if ((v48 & 1) == 0)
      {
        v49 = v47;
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_6_1();
        v58();
        v59 = OUTLINED_FUNCTION_1_3();
        result = v60(v59);
        break;
      }

      v49 = sub_26B211D90();
      v51 = v50;
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_6_1();
      v52();
      v53 = OUTLINED_FUNCTION_1_3();
      result = v54(v53);
    }

    while ((v51 & 1) != 0);
    if (v49 < 0)
    {
      break;
    }

    v61 = __CFADD__(v26, v49);
    v26 += v49;
    if (v61)
    {
      __break(1u);
LABEL_30:
      v62 = OUTLINED_FUNCTION_0_6();
      v63(v62);
      OUTLINED_FUNCTION_8_1();
      v26 = 0;
      v81 = 0u;
      v82 = 0u;
LABEL_32:
      sub_26B159D48(&v81);
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v44);
LABEL_34:
      OUTLINED_FUNCTION_3_3();
      sub_26B159DF8(v30, v68, v69);
      return v26;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26B159D48(uint64_t a1)
{
  sub_26B159DA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B159DA4()
{
  if (!qword_280D2DA70)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DA70);
    }
  }
}

uint64_t sub_26B159DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26B159E68(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26B159E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B159ECC()
{
  if (!qword_2803E6C70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6C70);
    }
  }
}

void *sub_26B159F30(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v6 = a3;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_8:
      result = sub_26B15D870(v6, v7, v4);
      break;
    case 3uLL:
      a3 = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a4 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_26B1F3550(result, a2, a3, v5);
      break;
  }

  return result;
}

uint64_t URL.setXAttribute<A>(for:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26B211B90();
  swift_allocObject();
  sub_26B211B80();
  v10 = sub_26B211B70();
  if (!v7)
  {
    v12 = v10;
    v13 = v11;
    v16[2] = v6;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = MEMORY[0x28223BE20](v10);
    v16[6] = v13;
    v14 = sub_26B159F30(sub_26B15A2DC, v16, v12, v13);
    if (v14)
    {
      sub_26B1591D8(v14);
      swift_willThrow();
    }

    sub_26B14FF4C(v12, v13);
  }
}

uint64_t sub_26B15A108@<X0>(const void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, _DWORD *a6@<X8>)
{
  v25 = a2;
  v22 = a4;
  v23 = a5;
  v26 = a3;
  v29 = a1;
  v24 = a6;
  v6 = sub_26B212AD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26B211EA0();
  v28 = v10;
  sub_26B212AC0();
  sub_26B14FCC8();
  v11 = sub_26B2134C0();
  v12 = *(v7 + 8);
  v12(v9, v6);

  v27 = v25;
  v28 = v26;
  sub_26B212AC0();
  v13 = sub_26B2134C0();
  v14 = v9;
  v15 = v29;
  result = (v12)(v14, v6);
  if (v15)
  {
    v17 = MEMORY[0x26D66F450](v22, v23);
    if (v11)
    {
      v18 = (v11 + 32);
    }

    else
    {
      v18 = 0;
    }

    if (v13)
    {
      v19 = (v13 + 32);
    }

    else
    {
      v19 = 0;
    }

    v20 = setxattr(v18, v19, v15, v17, 0, 2);

    if (v20)
    {
      result = MEMORY[0x26D66FAE0](v21);
    }

    else
    {
      result = 0;
    }

    *v24 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.xAttribute<A>(_:for:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a3;
  v29 = a4;
  v37 = a2;
  v32 = a5;
  v7 = sub_26B212AD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v5;
  v35 = sub_26B211EA0();
  v36 = v11;
  sub_26B212AC0();
  sub_26B14FCC8();
  v12 = sub_26B2134C0();
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v37;

  v30 = a1;
  v35 = a1;
  v36 = v14;
  sub_26B2128F0();
  sub_26B212AC0();
  v15 = sub_26B2134C0();
  v13(v10, v7);
  if (v12)
  {
    v16 = (v12 + 32);
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = (v15 + 32);
  }

  else
  {
    v17 = 0;
  }

  v18 = getxattr(v16, v17, 0, 0, 0, 1);

  if (v18 < 0)
  {

    v24 = MEMORY[0x26D66FAE0](v23);
    if (v24 == 93)
    {
      return __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
    }

    else
    {
      sub_26B1591D8(v24);
      return swift_willThrow();
    }
  }

  else if (v18)
  {
    v35 = MEMORY[0x26D66F440](v18);
    v36 = v19;
    sub_26B2128F0();
    v20 = v34;
    v21 = sub_26B15A788(&v35, v12, v30, v14, v18);
    if (v21)
    {
      sub_26B1591D8(v21);
      swift_willThrow();
      return sub_26B14FF4C(v35, v36);
    }

    else
    {
      sub_26B211B60();
      swift_allocObject();
      sub_26B211B50();
      v25 = v35;
      v26 = v36;
      sub_26B14F044(v35, v36);
      v28 = v32;
      v27 = v33;
      sub_26B211B40();
      sub_26B14FF4C(v25, v26);
      sub_26B14FF4C(v25, v26);

      if (!v20)
      {
        return __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);
      }
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  }

  return result;
}

uint64_t sub_26B15A608@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, size_t a5@<X5>, _DWORD *a6@<X8>)
{
  v12 = sub_26B212AD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a3;
  v21[1] = a4;
  sub_26B212AC0();
  sub_26B14FCC8();
  v16 = sub_26B2134C0();
  result = (*(v13 + 8))(v15, v12);
  if (a1)
  {
    if (a2)
    {
      v18 = (a2 + 32);
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v19 = (v16 + 32);
    }

    else
    {
      v19 = 0;
    }

    v20 = getxattr(v18, v19, a1, a5, 0, 1);

    if (v20 < 0)
    {
      result = MEMORY[0x26D66FAE0](result);
      goto LABEL_12;
    }

    if (v20 == a5)
    {
      result = 0;
LABEL_12:
      *a6 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B15A788(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = a5;
  switch(v6 >> 62)
  {
    case 1uLL:
      v21 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_26B14F044(v7, v6);
      sub_26B14FF4C(v7, v6);
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      v22 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      if (v22 < v7)
      {
        goto LABEL_33;
      }

      if (sub_26B211D10() && __OFSUB__(v7, sub_26B211D40()))
      {
        goto LABEL_34;
      }

      sub_26B211D50();
      swift_allocObject();
      v25 = sub_26B211CF0();

      v21 = v25;
LABEL_19:
      if (v22 < v7)
      {
        goto LABEL_30;
      }

      sub_26B2128F0();
      sub_26B2128F0();

      result = sub_26B211D10();
      if (!result)
      {
        goto LABEL_36;
      }

      v26 = result;
      v27 = sub_26B211D40();
      v8 = v7 - v27;
      if (__OFSUB__(v7, v27))
      {
        goto LABEL_32;
      }

      sub_26B211D30();
      sub_26B15A608((v26 + v8), a2, a3, a4, a5, &v35);
      v20 = v21 | 0x4000000000000000;
      if (v5)
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        goto LABEL_24;
      }

      v8 = v35;

      swift_bridgeObjectRelease_n();
      goto LABEL_27;
    case 2uLL:
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_26B14F044(v7, v6);
      sub_26B14FF4C(v7, v6);
      *&v35 = v7;
      *(&v35 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      sub_26B211F10();
      v14 = *(&v35 + 1);
      v7 = v35;
      v15 = *(v35 + 16);
      v16 = *(v35 + 24);
      sub_26B2128F0();
      sub_26B2128F0();
      result = sub_26B211D10();
      if (!result)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v8 = result;
      v18 = sub_26B211D40();
      v19 = v15 - v18;
      if (__OFSUB__(v15, v18))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (__OFSUB__(v16, v15))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      sub_26B211D30();
      sub_26B15A608((v8 + v19), a2, a3, a4, a5, &v34);
      v20 = v14 | 0x8000000000000000;
      if (v5)
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
LABEL_24:
        *a1 = v7;
        a1[1] = v20;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v8 = v34;

LABEL_27:
        *a1 = v7;
        a1[1] = v20;
      }

LABEL_28:

      swift_bridgeObjectRelease_n();
      return v8;
    case 3uLL:
      *(&v35 + 7) = 0;
      *&v35 = 0;
      sub_26B2128F0();
      sub_26B2128F0();
      sub_26B15A608(&v35, a2, a3, a4, v8, &v34);

      if (!v5)
      {
        v8 = v34;
      }

      goto LABEL_28;
    default:
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_26B14FF4C(v7, v6);
      *&v35 = v7;
      WORD4(v35) = v6;
      BYTE10(v35) = BYTE2(v6);
      BYTE11(v35) = BYTE3(v6);
      BYTE12(v35) = BYTE4(v6);
      BYTE13(v35) = BYTE5(v6);
      BYTE14(v35) = BYTE6(v6);
      sub_26B15A608(&v35, a2, a3, a4, a5, &v34);
      if (v5)
      {
        v13 = v35;
        v8 = DWORD2(v35) | ((WORD6(v35) | (BYTE14(v35) << 16)) << 32);

        swift_bridgeObjectRelease_n();
        *a1 = v13;
        a1[1] = v8;
      }

      else
      {
        v8 = v34;
        v23 = v35;
        v24 = DWORD2(v35) | ((WORD6(v35) | (BYTE14(v35) << 16)) << 32);

        swift_bridgeObjectRelease_n();
        *a1 = v23;
        a1[1] = v24;
      }

      goto LABEL_28;
  }
}

uint64_t URLQueryItemCollection.init<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_10_4();
  (*(v8 + 16))(v4, a1, a2);
  sub_26B211C10();
  v9 = sub_26B212F60();
  result = (*(v8 + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t URLQueryItemCollection.queryItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void URLQueryItemCollection.init(dictionaryLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = sub_26B211C10();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_4();
  v6 = *(a1 + 16);
  if (v6)
  {
    v12 = a2;
    v15 = MEMORY[0x277D84F90];
    sub_26B15B0E4(0, v6, 0);
    v7 = 0;
    v8 = v15;
    v13 = a1;
    v9 = a1 + 56;
    while (v7 < *(a1 + 16))
    {
      sub_26B2128F0();
      sub_26B2128F0();
      sub_26B211C00();

      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26B15B0E4(v10 > 1, v11 + 1, 1);
      }

      ++v7;
      *(v15 + 16) = v11 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v2, v14);
      v9 += 32;
      a1 = v13;
      if (v6 == v7)
      {

        a2 = v12;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    *a2 = v8;
  }
}

void sub_26B15B06C()
{
  OUTLINED_FUNCTION_4_5();
  sub_26B15B6F4();
  *v0 = v1;
}

uint64_t _s30_DeviceConditionSnapshotOptionVwet(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t _s30_DeviceConditionSnapshotOptionVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_26B15B218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15B7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B15B3DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15BAE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_1();
  sub_26B15BA10(v4, v5, v6, v7, v8, v9, sub_26B173F10, sub_26B15C6F0);
  *v3 = v10;
}

void *sub_26B15B450(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15BE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B15B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15C040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B15B55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15C154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B15B5C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15C364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26B15B5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B15C47C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B6F4()
{
  OUTLINED_FUNCTION_12_2();
  if ((v6 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_2();
    if (v5)
    {
      sub_26B15C9C0(0, v9, v2, MEMORY[0x277D84560]);
      v10 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_11_1();
      v10[2] = v4;
      v10[3] = v11;
      if (v3)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_9_3();
        v1(v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_2();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_26B15B7D0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_2803E6D48, &type metadata for Data.HexLine, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_26B173538((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15B8F0(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v14 == v15)
  {
LABEL_7:
    v16 = *(a4 + 16);
    if (v13 <= v16)
    {
      v17 = *(a4 + 16);
    }

    else
    {
      v17 = v13;
    }

    if (v17)
    {
      sub_26B15C954(0, a5, a6, a7);
      v18 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v18);
      OUTLINED_FUNCTION_11_1();
      v18[2] = v16;
      v18[3] = v19;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v16, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_26B15C9C0(0, a6, a7, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B15BA10(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(void))
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v13 == v14))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_2();
    if (v8)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      sub_26B15CA10(v15, v16, v17);
      v19 = OUTLINED_FUNCTION_13_0(v18);
      v20 = _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_6_2(v20 - 32);
      if (a1)
      {
LABEL_8:
        v21 = OUTLINED_FUNCTION_9_3();
        a7(v21);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    a8(0);
    OUTLINED_FUNCTION_8_2();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v13)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_26B15BAE4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_280D2DA80, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_26B173588((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15BC44(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_3_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v17 = OUTLINED_FUNCTION_2_4();
  sub_26B15CA10(v17, v18, v19);
  v20 = *(a7(0) - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_2(v24 - v22);
LABEL_18:
  v26 = *(a7(0) - 8);
  if (a1)
  {
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    a8(a4 + v27, v15, v23 + v27);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_26B15BE34(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15CA10(0, &qword_2803E6C98, sub_26B15C684);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26B1735C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B15C684(0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15BF50(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      sub_26B15C9C0(v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_11_1();
      v19[2] = v13;
      v19[3] = v20;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v19 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B15C040(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C768(0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B173F04((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B15C7DC(0, &qword_2803E6CE0, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B15C154(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C7DC(0, &qword_2803E6CC8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26B152C58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B15C9C0(0, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15C28C()
{
  OUTLINED_FUNCTION_12_2();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_2();
    if (v4)
    {
      sub_26B15C9C0(0, v8, v2, MEMORY[0x277D84560]);
      v10 = OUTLINED_FUNCTION_13_0(v9);
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_6_2(v11 - 32);
      if (v3)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_9_3();
        v1(v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_2();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_26B15C364(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_2803E6CB8, &type metadata for SQLDatabase.IndexColumnInfo, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_26B173724((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B15C47C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_2803E6C78, &type metadata for SQLDynamicValue, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B173F04((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15C594(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      sub_26B15C9C0(v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_11_1();
      v19[2] = v13;
      v19[3] = v20;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v19 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B15C684(uint64_t a1)
{
  if (!qword_2803E6CA0)
  {
    sub_26B15C6F0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6CA0);
    }
  }
}

void sub_26B15C6F0(uint64_t a1)
{
  if (!qword_2803E6CA8)
  {
    v2 = _s9StatementCMa();
    v5[0] = MEMORY[0x277D837D0];
    v5[1] = v2;
    v5[2] = v2;
    v5[3] = MEMORY[0x277D837E0];
    v3 = type metadata accessor for LRUDictionary.Container(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_2803E6CA8);
    }
  }
}

void sub_26B15C768(uint64_t a1)
{
  if (!qword_2803E6CD8)
  {
    sub_26B15C7DC(255, &qword_2803E6CE0, MEMORY[0x277D83940]);
    v1 = sub_26B213BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6CD8);
    }
  }
}

void sub_26B15C7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_26B15C9C0(255, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_26B15C860()
{
  if (!qword_2803E6D18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6D18);
    }
  }
}

void sub_26B15C8C4(uint64_t a1)
{
  if (!qword_2803E6D28)
  {
    sub_26B15C9C0(255, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6D28);
    }
  }
}

void sub_26B15C954(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_26B15C9C0(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_26B213BA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26B15C9C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26B15CA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B213BA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_allocObject();
}

uint64_t _sSo8NSBundleC15SonicFoundationE13bundleVersionSSvg_0()
{
  v1 = [v0 infoDictionary];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = sub_26B2128A0();

  result = *MEMORY[0x277CBED58];
  if (*MEMORY[0x277CBED58])
  {
    sub_26B212A80();
    sub_26B15CE98(v3, sub_26B16E800, v7);

    sub_26B159DA4();
    if (swift_dynamicCast())
    {
      return v6;
    }

LABEL_5:
    v5 = *a000;
    sub_26B2128F0();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t NSBundle.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26B2133E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = [v4 infoDictionary];
  if (v13)
  {
    v14 = v13;
    v15 = sub_26B2128A0();

    (*(a2 + 24))(a1, a2);
    sub_26B15CE98(v15, sub_26B16E800, v17);

    sub_26B159DA4();
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
      return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v12, AssociatedTypeWitness);
    }

    __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
  }

  return (*(a2 + 16))(a1, a2);
}

uint64_t sub_26B15CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26B16E800(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_26B15CE98@<D0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = a2(), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_26B15CF98(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26B15CF18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  a4(a1, a2);
  if (v4)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B15CF98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Data.CompressionAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t Data.CompressionError.hashValue.getter()
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

uint64_t sub_26B15D148(uint64_t a1)
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

uint64_t sub_26B15D188(uint64_t result, unint64_t a2, char a3)
{
  v7[3] = result;
  v7[4] = a2;
  v8 = a3;
  v3 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      result = *(result + 16);
      v6 = *(v3 + 24);
LABEL_8:
      result = sub_26B15D920(result, v6, sub_26B15D84C);
      break;
    case 3uLL:
      v5 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = result;
LABEL_5:
      result = sub_26B1F35E0(sub_26B15D84C, v7, v5, v4);
      break;
  }

  return result;
}

uint64_t sub_26B15D26C(uint64_t a1, unint64_t a2, compression_stream *a3)
{
  sub_26B15D188(a1, a2, 1);
  if (!v3)
  {
    v7 = OUTLINED_FUNCTION_3_5();
    sub_26B14F044(v7, v8);
  }

  compression_stream_destroy(a3);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x26D6723F0]();
  v5 = OUTLINED_FUNCTION_3_5();
  sub_26B14FF4C(v5, v6);
  return OUTLINED_FUNCTION_3_5();
}

uint64_t sub_26B15D30C(uint64_t result, uint64_t a2, compression_stream **a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result)
  {
    (*a3)->src_ptr = result;
    (*a3)->src_size = MEMORY[0x26D66F450](a4, a5);
    v8 = swift_slowAlloc();
    do
    {
      (*a3)->dst_ptr = v8;
      (*a3)->dst_size = 0x10000;
      result = compression_stream_process(*a3, a6 & 1);
      dst_size = (*a3)->dst_size;
      v10 = __OFSUB__(0x10000, dst_size);
      v11 = 0x10000 - dst_size;
      if (v10)
      {
        __break(1u);
        goto LABEL_11;
      }

      v12 = result;
      if (v11)
      {
        sub_26B211F90();
      }
    }

    while (!v12);
    if (v12 == -1)
    {
      sub_26B15D564();
      swift_allocError();
      swift_willThrow();
    }

    return MEMORY[0x26D6723F0](v8, -1, -1);
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t Data.decompress(using:)()
{
  v1 = OUTLINED_FUNCTION_1_5();
  if (compression_stream_init(v1, COMPRESSION_STREAM_DECODE, dword_26B2162E0[v0]) == COMPRESSION_STATUS_OK)
  {
    return OUTLINED_FUNCTION_0_7();
  }

  sub_26B15D564();
  swift_allocError();
  swift_willThrow();
  compression_stream_destroy(v1);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x26D6723F0]();
  return sub_26B14FF4C(0, 0xC000000000000000);
}

uint64_t Data.compressed(using:)()
{
  v1 = OUTLINED_FUNCTION_1_5();
  if (compression_stream_init(v1, COMPRESSION_STREAM_ENCODE, dword_26B2162E0[v0]) == COMPRESSION_STATUS_OK)
  {
    return OUTLINED_FUNCTION_0_7();
  }

  sub_26B15D564();
  swift_allocError();
  swift_willThrow();
  compression_stream_destroy(v1);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x26D6723F0]();
  return sub_26B14FF4C(0, 0xC000000000000000);
}

unint64_t sub_26B15D564()
{
  result = qword_2803E6D78;
  if (!qword_2803E6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D78);
  }

  return result;
}

unint64_t sub_26B15D5BC()
{
  result = qword_2803E6D80;
  if (!qword_2803E6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D80);
  }

  return result;
}

unint64_t sub_26B15D614()
{
  result = qword_2803E6D88;
  if (!qword_2803E6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D88);
  }

  return result;
}

_BYTE *_s20CompressionAlgorithmOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s16CompressionErrorOwet(unsigned int *a1, int a2)
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

_BYTE *_s16CompressionErrorOwst(_BYTE *result, int a2, int a3)
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

void *sub_26B15D870(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_26B211D10();
  v8 = result;
  if (result)
  {
    result = sub_26B211D40();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_26B211D30();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_26B15D920(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_26B211D10();
  v7 = result;
  if (result)
  {
    result = sub_26B211D40();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26B211D30();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = sub_26B211BE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v48 - v9;
  v51 = a1;
  v52 = a2;
  sub_26B211BB0();
  sub_26B211BD0();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_26B14FCC8();
  sub_26B213490();
  v11(v8, v4);
  v12 = OUTLINED_FUNCTION_9();
  v14 = sub_26B15FB88(v12, v13);

  if (v14[2])
  {

    return 0;
  }

  else
  {
    v55 = xmmword_26B215BA0;
    sub_26B211F80();
    v15 = v14[2];
    if (v15)
    {
      v48[0] = a2;
      v16 = v14 + 4;
      sub_26B15FC94(0, &qword_2803E6D50, MEMORY[0x277D835B0], MEMORY[0x277D84560]);
      v17 = 0;
      v48[1] = &v51 + 1;
      v49 = xmmword_26B216070;
      while (1)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = v49;
        v19 = v14[2];
        if (v17 >= v19)
        {
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
        }

        v20 = &v16[2 * v17];
        v21 = v20[1];
        *(v18 + 32) = *v20;
        *(v18 + 40) = v21;
        if ((v17 | 1) >= v19)
        {
          goto LABEL_102;
        }

        v22 = &v16[2 * (v17 | 1)];
        v23 = v22[1];
        *(v18 + 48) = *v22;
        *(v18 + 56) = v23;
        v51 = v18;
        OUTLINED_FUNCTION_0_8();
        v24 = MEMORY[0x277D835B0];
        sub_26B15FC94(0, &qword_2803E6D90, MEMORY[0x277D835B0], v25);
        sub_26B15FCE4(&qword_2803E6D98, &qword_2803E6D90, v24, MEMORY[0x277D83970]);
        sub_26B2128F0();
        sub_26B2128F0();
        v26 = sub_26B212CE0();
        v28 = v27;
        v29 = HIBYTE(v27) & 0xF;
        v30 = v26 & 0xFFFFFFFFFFFFLL;
        if ((v28 & 0x2000000000000000) != 0)
        {
          v31 = v29;
        }

        else
        {
          v31 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31)
        {
          goto LABEL_103;
        }

        if ((v28 & 0x1000000000000000) == 0)
        {
          break;
        }

        v46 = sub_26B15F5B8(v26, v28, 16);
        LOBYTE(v34) = v46;
        if ((v46 & 0x100) != 0)
        {
          goto LABEL_108;
        }

LABEL_94:
        v17 += 2;

        sub_26B15FC94(0, &qword_2803E6DA0, MEMORY[0x277D84B78], MEMORY[0x277D84220]);
        v45 = v44;
        v53 = v44;
        v54 = sub_26B15FC18();
        LOBYTE(v51) = v34;
        v50 = *__swift_project_boxed_opaque_existential_1(&v51, v45);
        sub_26B211F70();
        __swift_destroy_boxed_opaque_existential_1(&v51);
        if (v17 >= v15)
        {
          goto LABEL_100;
        }
      }

      if ((v28 & 0x2000000000000000) != 0)
      {
        v51 = v26;
        v52 = v28 & 0xFFFFFFFFFFFFFFLL;
        if (v26 == 43)
        {
          if (!v29)
          {
            goto LABEL_104;
          }

          if (v29 != 1)
          {
            LOBYTE(v34) = 0;
            while (1)
            {
              OUTLINED_FUNCTION_1_6();
              if (v35)
              {
                OUTLINED_FUNCTION_5_2();
                if (v35)
                {
                  OUTLINED_FUNCTION_4_6();
                  if (!v36 & v35)
                  {
                    break;
                  }
                }
              }

              OUTLINED_FUNCTION_3_6();
              if (!v36 & v35)
              {
                break;
              }

              OUTLINED_FUNCTION_2_7();
              if (v36)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (v26 == 45)
        {
          if (!v29)
          {
            goto LABEL_107;
          }

          if (v29 != 1)
          {
            LOBYTE(v34) = 0;
            while (1)
            {
              OUTLINED_FUNCTION_1_6();
              if (v35)
              {
                OUTLINED_FUNCTION_5_2();
                if (v35)
                {
                  OUTLINED_FUNCTION_4_6();
                  if (!v36 & v35)
                  {
                    break;
                  }
                }
              }

              OUTLINED_FUNCTION_3_6();
              if (!v36 & v35)
              {
                break;
              }

              v34 = 16 * (v34 & 0xF) - v41;
              if ((v34 & 0xFFFFFF00) != 0)
              {
                break;
              }

              v39 = v40 - 1;
              if (!v39)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (v29)
        {
          LOBYTE(v34) = 0;
          while (1)
          {
            OUTLINED_FUNCTION_1_6();
            if (v35)
            {
              OUTLINED_FUNCTION_5_2();
              if (v35)
              {
                OUTLINED_FUNCTION_4_6();
                if (!v36 & v35)
                {
                  break;
                }
              }
            }

            OUTLINED_FUNCTION_3_6();
            if (!v36 & v35)
            {
              break;
            }

            OUTLINED_FUNCTION_2_7();
            if (v36)
            {
              goto LABEL_93;
            }
          }
        }

        goto LABEL_92;
      }

      if ((v26 & 0x1000000000000000) != 0)
      {
        v32 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v32 = sub_26B213780();
      }

      v33 = *v32;
      if (v33 == 43)
      {
        if (v30 < 1)
        {
          goto LABEL_105;
        }

        if (v30 == 1)
        {
          goto LABEL_92;
        }

        if (v32)
        {
          LOBYTE(v34) = 0;
          while (1)
          {
            OUTLINED_FUNCTION_1_6();
            if (v35)
            {
              OUTLINED_FUNCTION_5_2();
              if (v35)
              {
                OUTLINED_FUNCTION_4_6();
                if (!v36 & v35)
                {
                  goto LABEL_92;
                }
              }
            }

            OUTLINED_FUNCTION_3_6();
            if (!v36 & v35)
            {
              goto LABEL_92;
            }

            OUTLINED_FUNCTION_2_7();
            if (v36)
            {
              goto LABEL_93;
            }
          }
        }
      }

      else if (v33 == 45)
      {
        if (v30 < 1)
        {
          goto LABEL_106;
        }

        if (v30 == 1)
        {
          goto LABEL_92;
        }

        if (v32)
        {
          LOBYTE(v34) = 0;
          while (1)
          {
            OUTLINED_FUNCTION_1_6();
            if (v35)
            {
              OUTLINED_FUNCTION_5_2();
              if (v35)
              {
                OUTLINED_FUNCTION_4_6();
                if (!v36 & v35)
                {
                  goto LABEL_92;
                }
              }
            }

            OUTLINED_FUNCTION_3_6();
            if (!v36 & v35)
            {
              goto LABEL_92;
            }

            v34 = 16 * (v34 & 0xF) - v38;
            if ((v34 & 0xFFFFFF00) != 0)
            {
              goto LABEL_92;
            }

            v39 = v37 - 1;
            if (!v39)
            {
              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        if (!v30)
        {
LABEL_92:
          LOBYTE(v34) = 0;
          LOBYTE(v39) = 1;
          goto LABEL_93;
        }

        if (v32)
        {
          LOBYTE(v34) = 0;
          while (1)
          {
            v42 = *v32;
            v43 = v42 - 48;
            if ((v42 - 48) >= 0xA)
            {
              if ((v42 - 65) < 6)
              {
                v43 = v42 - 55;
              }

              else
              {
                if ((v42 - 97) > 5)
                {
                  goto LABEL_92;
                }

                v43 = v42 - 87;
              }
            }

            if (v34 > 0xFu)
            {
              goto LABEL_92;
            }

            LOBYTE(v34) = v43 + 16 * v34;
            ++v32;
            if (!--v30)
            {
              goto LABEL_80;
            }
          }
        }
      }

      LOBYTE(v34) = 0;
LABEL_80:
      LOBYTE(v39) = 0;
LABEL_93:
      v50 = v39;
      if (v39)
      {
        goto LABEL_108;
      }

      goto LABEL_94;
    }

LABEL_100:

    return v55;
  }
}

uint64_t Data.chunked(by:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_26B15E17C(a1, a2, a3);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    sub_26B15B1D4(0, v5, 0);
    v6 = v16;
    v7 = v4 + 40;
    do
    {
      v8 = sub_26B212030();
      v10 = v9;
      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = OUTLINED_FUNCTION_8_3(v11);
        sub_26B15B1D4(v14, v12 + 1, 1);
      }

      v7 += 16;
      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}