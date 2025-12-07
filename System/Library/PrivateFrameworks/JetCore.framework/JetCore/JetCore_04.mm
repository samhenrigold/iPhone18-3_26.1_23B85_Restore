_OWORD *sub_1DB341EF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E20, &unk_1DB50FB00);
  result = sub_1DB50B5F0();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 4;
  v24 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];

      ScalarDictionary.Value.rawValue.getter(v25);
      v3 = v24;
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v24[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      result = sub_1DB30C200(v25, (v24[7] + 32 * v15));
      v20 = v24[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v24[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB34208C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_1DB314BBC(v4, v5, v6);
}

uint64_t _s7JetCore16ScalarDictionaryV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v2 == v5 && v3 == v6)
        {
          sub_1DB314BBC(v2, v3, 3);
          sub_1DB314BBC(v2, v3, 3);
          sub_1DB31EB94(v2, v3, 3);
          sub_1DB31EB94(v2, v3, 3);
          LOBYTE(v7) = 1;
        }

        else
        {
          LOBYTE(v7) = sub_1DB50BA30();
          sub_1DB314BBC(v5, v6, 3);
          sub_1DB314BBC(v2, v3, 3);
          sub_1DB31EB94(v2, v3, 3);
          sub_1DB31EB94(v5, v6, 3);
        }

        return v7 & 1;
      }
    }

    else if (v4 == 4)
    {
      if (v7 == 4)
      {
        sub_1DB314BBC(*a2, *(a2 + 8), 4);
        sub_1DB314BBC(v2, v3, 4);
        LOBYTE(v7) = sub_1DB46FA44(v2, v5);
        sub_1DB31EB94(v2, v3, 4);
        sub_1DB31EB94(v5, v6, 4);
        return v7 & 1;
      }
    }

    else if (v7 == 5)
    {
      sub_1DB314BBC(*a2, *(a2 + 8), 5);
      sub_1DB314BBC(v2, v3, 5);
      LOBYTE(v7) = sub_1DB33C710(v2, v5);
      sub_1DB31EB94(v2, v3, 5);
      sub_1DB31EB94(v5, v6, 5);
      return v7 & 1;
    }

LABEL_24:
    sub_1DB314BBC(v5, v6, v7);
    sub_1DB31EB94(v2, v3, v4);
    sub_1DB31EB94(v5, v6, v7);
LABEL_25:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1DB31EB94(*a1, v3, 0);
      sub_1DB31EB94(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

    goto LABEL_24;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1DB31EB94(*a1, v3, 2);
      sub_1DB31EB94(v5, v6, 2);
      LOBYTE(v7) = v2 == v5;
      return v7 & 1;
    }

    goto LABEL_24;
  }

  if (v7 != 1)
  {
    goto LABEL_24;
  }

  sub_1DB31EB94(*a1, v3, 1);
  sub_1DB31EB94(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_25;
  }

  return v7 & 1;
}

unint64_t sub_1DB3423C0()
{
  result = qword_1ECC433B8;
  if (!qword_1ECC433B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC433B0, &qword_1DB511098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC433B8);
  }

  return result;
}

unint64_t sub_1DB342440()
{
  result = qword_1ECC433D0;
  if (!qword_1ECC433D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC433D0);
  }

  return result;
}

uint64_t sub_1DB342494(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC433B0, &qword_1DB511098);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB34250C()
{
  result = qword_1ECC433E8;
  if (!qword_1ECC433E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC433E8);
  }

  return result;
}

uint64_t sub_1DB342560(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC433C0, &unk_1DB5110A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB342600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB342648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t JSONObject.array.getter@<X0>(void *a1@<X8>)
{
  sub_1DB330D60(v1, v11);
  if (v12)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB300B14(v3, v10);
    sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
    if (swift_dynamicCast())
    {
      v4 = v9;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
      v6 = sub_1DB3A6F38;
      v7 = &off_1F56FB538;
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v4 = 0;
      v6 = 0;
    }

    a1[3] = v5;
    a1[4] = v7;
    *a1 = v4;
    a1[1] = v6;
    a1[2] = 0;
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    result = sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t JSONObject.isNull.getter()
{
  sub_1DB330D60(v0, v6);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB300B14(v1, v5);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v2 = swift_dynamicCast();
    if (v2)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC42E38, &qword_1DB50FB80);
    return 1;
  }

  return v2;
}

double JSONObject.dictionary.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB330D60(v1, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_1DB408B14(a1);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1DB30623C(v4, &qword_1ECC42E38, &qword_1DB50FB80);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double JSONObject.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1DB330D60(v4, v10);
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB40860C(a1, a2, &v12);
    __swift_destroy_boxed_opaque_existential_0(v10);
    if (*(&v13 + 1) != 1)
    {
      result = *&v12;
      v9 = v13;
      *a3 = v12;
      *(a3 + 16) = v9;
      *(a3 + 32) = v14;
      return result;
    }
  }

  else
  {
    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t JSONObject.string.getter()
{
  sub_1DB330D60(v0, v7);
  if (v8)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_1DB300B14(v1, v6);
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1DB30623C(v7, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }

  return v3;
}

uint64_t JSONObject.BOOL.getter()
{
  sub_1DB330D60(v0, v6);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB300B14(v1, v5);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v2 = [v4 BOOLValue];
    }

    else
    {
      v2 = 2;
    }

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC42E38, &qword_1DB50FB80);
    return 2;
  }

  return v2;
}

uint64_t JSONObject.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v4 = swift_allocObject();
    result = sub_1DB30C200(a1, (v4 + 16));
    v6 = &off_1F56FB6B0;
    v7 = &type metadata for FoundationValue;
  }

  else
  {
    result = sub_1DB30623C(a1, &qword_1ECC426B0, &qword_1DB50EEB0);
    v4 = 0;
    v7 = 0;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v7;
  a2[4] = v6;
  return result;
}

uint64_t JSONObject.untyped.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1DB330D60(v1, v7);
  if (v8)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_1DB300B14(v3, v6);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      *a1 = 0u;
      a1[1] = 0u;
    }

    else
    {
      sub_1DB300B14(v3, a1);
    }

    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    result = sub_1DB30623C(v7, &qword_1ECC42E38, &qword_1DB50FB80);
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1DB342CA0()
{
  result = sub_1DB34444C(&unk_1F56F0480);
  qword_1ECC678C8 = result;
  unk_1ECC678D0 = v1;
  return result;
}

uint64_t sub_1DB342CCC()
{
  result = sub_1DB34444C(&unk_1F56F04A8);
  qword_1ECC678D8 = result;
  unk_1ECC678E0 = v1;
  return result;
}

uint64_t JSONObject.init(deserializing:)@<X0>(uint64_t *a3@<X8>)
{
  v33 = a3;
  v39 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509790();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB5097A0();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A6B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50A690();
  v13 = sub_1DB50A660();
  v15 = v14;

  v16 = *(v10 + 8);
  v16(v12, v9);
  if (v15 >> 60 == 15)
  {
    v32[1] = v5;
    sub_1DB509780();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    *(inited + 40) = v18;
    sub_1DB50A690();
    v19 = sub_1DB50A6A0();
    v16(v12, v9);
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 72) = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    *(inited + 48) = v20;
    sub_1DB3135C0(inited);
    swift_setDeallocating();
    sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
    sub_1DB344214();
    sub_1DB509B00();
    sub_1DB509770();
    (*(v34 + 8))(v8, v6);
    return swift_willThrow();
  }

  if (qword_1ECC41FF0 != -1)
  {
    swift_once();
  }

  if (sub_1DB3440AC(qword_1ECC678C8, unk_1ECC678D0, v13, v15))
  {
    v22 = 0x1E695DF20;
    v23 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v24 = &qword_1ECC45BF0;
LABEL_11:
    v37 = sub_1DB336FD4(0, v24, v22);
    *&v36 = v23;
LABEL_12:
    sub_1DB30C200(&v36, v38);
    sub_1DB300B14(v38, &v36);
    v25 = v33;
    v33[3] = &type metadata for FoundationValue;
    v25[4] = &off_1F56FB6B0;
    v26 = swift_allocObject();
    *v25 = v26;
    sub_1DB30C200(&v36, (v26 + 16));
    sub_1DB32E340(v13, v15);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  if (qword_1ECC41FF8 != -1)
  {
    swift_once();
  }

  if (sub_1DB3440AC(qword_1ECC678D8, unk_1ECC678E0, v13, v15))
  {
    v22 = 0x1E695DEC8;
    v23 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v24 = &qword_1ECC45BD0;
    goto LABEL_11;
  }

  v27 = objc_opt_self();
  v28 = sub_1DB509CD0();
  v35 = 0;
  v29 = [v27 JSONObjectWithData:v28 options:4 error:&v35];

  v30 = v35;
  if (v29)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v31 = v30;
  sub_1DB509B20();

  swift_willThrow();
  return sub_1DB32E340(v13, v15);
}

uint64_t JSONObject.init(deserializing:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ECC41FF0 != -1)
  {
    swift_once();
  }

  if (sub_1DB3440AC(qword_1ECC678C8, unk_1ECC678D0, a1, a2))
  {
    v6 = 0x1E695DF20;
    v7 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v8 = &qword_1ECC45BF0;
LABEL_9:
    v18 = sub_1DB336FD4(0, v8, v6);
    *&v17 = v7;
LABEL_10:
    sub_1DB30C200(&v17, v19);
    sub_1DB300B14(v19, &v17);
    a3[3] = &type metadata for FoundationValue;
    a3[4] = &off_1F56FB6B0;
    v9 = swift_allocObject();
    *a3 = v9;
    sub_1DB30C200(&v17, (v9 + 16));
    sub_1DB30C158(a1, a2);
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  if (qword_1ECC41FF8 != -1)
  {
    swift_once();
  }

  if (sub_1DB3440AC(qword_1ECC678D8, unk_1ECC678E0, a1, a2))
  {
    v6 = 0x1E695DEC8;
    v7 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v8 = &qword_1ECC45BD0;
    goto LABEL_9;
  }

  v11 = objc_opt_self();
  v12 = sub_1DB509CD0();
  v16 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:4 error:&v16];

  v14 = v16;
  if (v13)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v15 = v14;
  sub_1DB509B20();

  swift_willThrow();
  return sub_1DB30C158(a1, a2);
}

BOOL JSONObject.isUndefined.getter()
{
  sub_1DB330D60(v0, v3);
  v1 = v4 == 0;
  sub_1DB30623C(v3, &qword_1ECC42E38, &qword_1DB50FB80);
  return v1;
}

uint64_t JSONObject.number.getter()
{
  sub_1DB330D60(v0, v6);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB300B14(v1, v5);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }

  return v2;
}

id sub_1DB343600(SEL *a1)
{
  sub_1DB330D60(v1, v8);
  if (v9)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB300B14(v3, v7);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v4 = [v6 *a1];
    }

    else
    {
      v4 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }

  return v4;
}

unint64_t JSONObject.float.getter()
{
  sub_1DB330D60(v0, v10);
  if (v11)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB300B14(v1, v9);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    v2 = swift_dynamicCast();
    if (v2)
    {
      [v8 floatValue];
      v4 = v3;

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v2 ^ 1;
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 32);
}

uint64_t JSONObject.double.getter()
{
  sub_1DB330D60(v0, v8);
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB300B14(v1, v7);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      [v6 doubleValue];
      v3 = v2;

      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }

  return v4;
}

BOOL JSONObject.isBool.getter()
{
  sub_1DB330D60(v0, v3);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v1 = sub_1DB4088D8();
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_1DB30623C(v3, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }

  return v1;
}

uint64_t JSONObject.isDictionary.getter()
{
  sub_1DB330D60(v0, v6);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB300B14(v1, v5);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    v2 = swift_dynamicCast();
    if (v2)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }

  return v2;
}

char *JSONObject.allKeys.getter()
{
  sub_1DB330D60(v0, v3);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v1 = sub_1DB408A14();
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_1DB30623C(v3, &qword_1ECC42E38, &qword_1DB50FB80);
    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t JSONObject.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DB330D60(v1, v7);
  if (v8)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_1DB300B14(v3, v6);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v7);
      sub_1DB509C60();
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1DB30623C(v7, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v5 = sub_1DB509CA0();
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t sub_1DB343BA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1DB509A40();
    if (v10)
    {
      v11 = sub_1DB509A60();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1DB509A50();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1DB509A40();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DB509A60();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DB509A50();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DB343DD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1DB343FF4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DB30C158(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1DB343BA0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1DB30C158(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

_BYTE *sub_1DB343F60@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DB4AE5E4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DB34434C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DB3443C8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1DB343FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DB509A40();
  v11 = result;
  if (result)
  {
    result = sub_1DB509A60();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DB509A50();
  sub_1DB343BA0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1DB3440AC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DB30C1AC(a3, a4);
          return sub_1DB343DD0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DB344214()
{
  result = qword_1ECC43448;
  if (!qword_1ECC43448)
  {
    sub_1DB5097A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43448);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore12BridgedValue_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB344284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DB3442E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB34434C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DB509A70();
  swift_allocObject();
  result = sub_1DB509A30();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB509CC0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DB3443C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DB509A70();
  swift_allocObject();
  result = sub_1DB509A30();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DB34444C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43450, &qword_1DB511398);
  v10 = sub_1DB3444FC();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1DB343F60(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_1DB3444FC()
{
  result = qword_1ECC43458;
  if (!qword_1ECC43458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43450, &qword_1DB511398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43458);
  }

  return result;
}

uint64_t sub_1DB344590()
{
  type metadata accessor for OperationTranscript();
  v0 = swift_allocObject();
  sub_1DB344A40(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42980, &qword_1DB50F438);
  v1 = 300;
  v2 = sub_1DB50A9E0();
  *(v2 + 16) = 300;
  v3 = 32;
  do
  {
    memcpy((v2 + v3), v5, 0x190uLL);
    v3 += 400;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43490, &qword_1DB511410);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v2;
  *(result + 24) = 0;
  *(v0 + 16) = result;
  qword_1ECC678E8 = v0;
  return result;
}

uint64_t sub_1DB344664()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1ECC678F0);
  __swift_project_value_buffer(v0, qword_1ECC678F0);
  return sub_1DB50A260();
}

uint64_t sub_1DB3446E0()
{
  ProcessLaunchTimeInterval = JEGestaltGetProcessLaunchTimeInterval();
  MonotonicTime.init(timeInterval:)(ProcessLaunchTimeInterval);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43498, &qword_1DB511418);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v2;
  *(result + 24) = v3;
  off_1ECC43460 = result;
  return result;
}

void static PageRenderEvent.willPerformAction()()
{
  static MonotonicTime.now.getter(&v3);
  tv_sec = v3.tv_sec;
  tv_nsec = v3.tv_nsec;
  if (qword_1ECC42010 != -1)
  {
    swift_once();
  }

  v2 = off_1ECC43460;
  os_unfair_lock_lock(off_1ECC43460 + 8);
  *(v2 + 2) = tv_sec;
  *(v2 + 3) = tv_nsec;

  os_unfair_lock_unlock(v2 + 8);
}

uint64_t sub_1DB3447D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43488, &qword_1DB511408);
  result = swift_allocObject();
  *(result + 40) = 0;
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 16) = 50;
  *(result + 24) = v1;
  *(result + 32) = MEMORY[0x1E69E7CC0];
  qword_1ECC67908 = result;
  return result;
}

id sub_1DB344830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43480, &qword_1DB511400);
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1ECC67910 = v0;
  return result;
}

uint64_t PageRenderEvent.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for PageRenderEvent(0) + 24));

  return v1;
}

uint64_t type metadata accessor for PageRenderEvent(uint64_t a1)
{
  result = qword_1ECC43468;
  if (!qword_1ECC43468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB344950(uint64_t a1)
{
  type metadata accessor for MonotonicTimeReference(319);
  if (v1 <= 0x3F)
  {
    sub_1DB3449DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB3449DC(uint64_t a1)
{
  if (!qword_1ECC43478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
    v1 = sub_1DB50B120();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC43478);
    }
  }
}

_OWORD *sub_1DB344A40(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x1FFFFFFFE00;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 56) = 0u;
  result = (a1 + 56);
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  return result;
}

uint64_t AssetSQLiteDatabase.Mode.description.getter()
{
  if (*v0)
  {
    return 0x6E6F6D656164;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t AssetSQLiteDatabase.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB344B64()
{
  if (*v0)
  {
    return 0x6E6F6D656164;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t AssetSQLiteDatabase.__allocating_init(url:mode:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  AssetSQLiteDatabase.init(url:mode:)(a1, a2);
  return v4;
}

uint64_t AssetSQLiteDatabase.init(url:mode:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_url;
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_mode) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434A0, &qword_1DB511430);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_db) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434A8, &qword_1DB511438);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434B0, &qword_1DB511440);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  (*(v7 + 8))(a1, v6);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive) = v10;
  return v2;
}

void sub_1DB344D70(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, unint64_t a3@<X2>, _BOOL4 a4@<W3>, uint64_t x8_0@<X8>)
{
  v7 = v6;
  v30 = a4;
  v11 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  sub_1DB3483BC(a2, a3);
  v12 = qword_1EE30E190;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  v14 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock((v11 + 40));
    sub_1DB349364((v11 + 16));
    if (v7)
    {
      sub_1DB32E340(a2, a3);

      os_unfair_lock_unlock((v11 + 40));
      __break(1u);
      os_unfair_lock_unlock(&v29);
      __break(1u);
      return;
    }

    v7 = 0;
    os_unfair_lock_unlock((v11 + 40));
  }

  v15 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  sub_1DB3483BC(a2, a3);

  os_unfair_lock_lock((v15 + 24));
  sub_1DB349348((v15 + 16), &v27);
  os_unfair_lock_unlock((v15 + 24));
  if (!v7)
  {
    sub_1DB4ADB3C(v27, a2, a3, v30, x8_0);
    os_unfair_lock_lock((v15 + 24));
    sub_1DB349330((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));
  }

  sub_1DB32E340(a2, a3);

  if ((v14 & 1) == 0)
  {
    os_unfair_lock_lock((v11 + 40));
    v16 = *(v11 + 16);
    if (v16)
    {
      v18 = *(v11 + 24);
      v17 = *(v11 + 32);
      v27 = *(v11 + 16);
      v28 = v18;
      v29 = v17;
      v19 = v16;
      v20 = v18;

      v30 = ProcessAssertion.invalidate()();
      v22 = v27;
      v21 = v28;

      if (v30)
      {
        v23 = *(v11 + 16);
        v24 = *(v11 + 24);
        v25 = *(v11 + 32);
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        sub_1DB3481B0(v23, v24, v25);
      }
    }

    os_unfair_lock_unlock((v11 + 40));
  }

  sub_1DB32E340(a2, a3);

  sub_1DB32E340(a2, a3);
}

void sub_1DB34504C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = v4;
  v9 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  sub_1DB32E354(a2, &v23);
  v10 = qword_1EE30E190;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v12 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock((v9 + 40));
    sub_1DB349364((v9 + 16));
    if (v5)
    {
      sub_1DB32DFF8(a2);

      os_unfair_lock_unlock((v9 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v9 + 40));
  }

  sub_1DB32E354(a2, &v23);

  sub_1DB345E50(a1, a2, x8_0);
  if ((v12 & 1) == 0)
  {
    os_unfair_lock_lock((v9 + 40));
    v13 = *(v9 + 16);
    if (v13)
    {
      v15 = *(v9 + 24);
      v14 = *(v9 + 32);
      v23 = *(v9 + 16);
      v24 = v15;
      v25 = v14;
      v16 = v13;
      v17 = v15;

      LOBYTE(v14) = ProcessAssertion.invalidate()();
      v18 = v23;
      v19 = v24;

      if (v14)
      {
        v20 = *(v9 + 16);
        v21 = *(v9 + 24);
        v22 = *(v9 + 32);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        sub_1DB3481B0(v20, v21, v22);
      }
    }

    os_unfair_lock_unlock((v9 + 40));
  }

  sub_1DB32DFF8(a2);

  sub_1DB32DFF8(a2);
}

void sub_1DB345254(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EE30E190;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB3461D4(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1DB349364((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1DB3461D4(a1, a2);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v16 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          v15 = *(v5 + 32);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1DB3481B0(v13, v14, v15);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1DB345414(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EE30E190;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB3462CC(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1DB349364((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1DB3462CC(a1, a2);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v16 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          v15 = *(v5 + 32);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1DB3481B0(v13, v14, v15);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1DB3455D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v10 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v11 = qword_1EE30E190;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  v13 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v10 + 40));
    sub_1DB349364((v10 + 16));
    if (v5)
    {

      os_unfair_lock_unlock((v10 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v10 + 40));
  }

  sub_1DB3463C4(a1, a2, a3, x8_0);
  if ((v13 & 1) == 0)
  {
    os_unfair_lock_lock((v10 + 40));
    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = *(v10 + 24);
      v22 = *(v10 + 16);
      v16 = v14;
      v17 = v15;

      v18 = ProcessAssertion.invalidate()();

      if (v18)
      {
        v19 = *(v10 + 16);
        v20 = *(v10 + 24);
        v21 = *(v10 + 32);
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        sub_1DB3481B0(v19, v20, v21);
      }
    }

    os_unfair_lock_unlock((v10 + 40));
  }

  swift_bridgeObjectRelease_n();
}

void sub_1DB3457EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v9 = qword_1EE30E190;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  v11 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock((v8 + 40));
    sub_1DB349364((v8 + 16));
    if (v4)
    {

      os_unfair_lock_unlock((v8 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v8 + 40));
  }

  sub_1DB346510(a1, a2, x8_0);
  if ((v11 & 1) == 0)
  {
    os_unfair_lock_lock((v8 + 40));
    v12 = *(v8 + 16);
    if (v12)
    {
      v13 = *(v8 + 24);
      v20 = *(v8 + 16);
      v14 = v12;
      v15 = v13;

      v16 = ProcessAssertion.invalidate()();

      if (v16)
      {
        v17 = *(v8 + 16);
        v18 = *(v8 + 24);
        v19 = *(v8 + 32);
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        sub_1DB3481B0(v17, v18, v19);
      }
    }

    os_unfair_lock_unlock((v8 + 40));
  }
}

void sub_1DB3459C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v8 = qword_1EE30E190;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB34673C(a1, a2, a3);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v7 + 40));
    sub_1DB349364((v7 + 16));
    if (v3)
    {
      os_unfair_lock_unlock((v7 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v7 + 40));
      sub_1DB34673C(a1, a2, a3);
      os_unfair_lock_lock((v7 + 40));
      v10 = *(v7 + 16);
      if (v10)
      {
        v11 = *(v7 + 24);
        v18 = *(v7 + 16);
        v12 = v10;
        v13 = v11;

        v14 = ProcessAssertion.invalidate()();

        if (v14)
        {
          v15 = *(v7 + 16);
          v16 = *(v7 + 24);
          v17 = *(v7 + 32);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 32) = 0;
          sub_1DB3481B0(v15, v16, v17);
        }
      }

      os_unfair_lock_unlock((v7 + 40));
    }
  }
}

void sub_1DB345BAC(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C0, &qword_1DB511550);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB511420;
  v4 = sub_1DB50A620();
  v5 = sub_1DB50A620();
  v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];

  *(v3 + 32) = v6;
  v7 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
  v8 = sub_1DB50A620();
  sub_1DB3483D0();
  v9 = sub_1DB50A980();

  v10 = [v7 initWithExplanation:v8 target:v2 attributes:v9];

  *a1 = v10;
  v11 = objc_allocWithZone(_JEAtomicCounter);
  v12 = v10;
  a1[1] = [v11 initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C8, qword_1DB511558);
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  a1[2] = v13;
  v17[4] = sub_1DB34841C;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DB34EAE0;
  v17[3] = &block_descriptor_0;
  v16 = _Block_copy(v17);

  [v12 setInvalidationHandler_];
  _Block_release(v16);
}

void sub_1DB345E50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v7 + 24));
  sub_1DB349348((v7 + 16), &v8);
  os_unfair_lock_unlock((v7 + 24));
  if (!v4)
  {
    sub_1DB4AD294(v8, a2, x8_0);
    os_unfair_lock_lock((v7 + 24));
    sub_1DB349330((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }

  sub_1DB32DFF8(a2);
}

void sub_1DB345F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v7 + 24));
  sub_1DB349348((v7 + 16), &v8);
  os_unfair_lock_unlock((v7 + 24));
  if (v4)
  {
  }

  else
  {
    sub_1DB4ACDC8(v8, a2, a3, &v9);
    os_unfair_lock_lock((v7 + 24));
    sub_1DB349330((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }
}

void sub_1DB3460C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v3 + 24));
  sub_1DB349348((v3 + 16), &v4);
  os_unfair_lock_unlock((v3 + 24));
  if (!v2)
  {
    sub_1DB4ACA44(v4, &v5);
    os_unfair_lock_lock((v3 + 24));
    sub_1DB349330((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }
}

void sub_1DB3461D4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    sub_1DB4AD7FC(v5, v3);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1DB3462CC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    sub_1DB427878(v5, v3);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1DB3463C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v9 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v9 + 24));
  sub_1DB349348((v9 + 16), &v10);
  os_unfair_lock_unlock((v9 + 24));
  if (v5)
  {
  }

  else
  {
    sub_1DB4AC69C(v10, a2, a3, x8_0);
    os_unfair_lock_lock((v9 + 24));
    sub_1DB349330((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));
  }
}

void sub_1DB346510(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = a2;
  v7 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v7 + 24));
  sub_1DB349348((v7 + 16), &v8);
  os_unfair_lock_unlock((v7 + 24));
  if (!v4)
  {
    sub_1DB4AC0D4(v8, v5, x8_0);
    os_unfair_lock_lock((v7 + 24));
    sub_1DB349330((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }
}

void sub_1DB34662C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    sub_1DB4291C0(v5, a2, &v6);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  sub_1DB348C74(a2);
}

void sub_1DB34673C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v6 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1DB349348((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (!v3)
  {
    sub_1DB42BEF8(v7, v4, a3);
    os_unfair_lock_lock((v6 + 24));
    sub_1DB349330((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }
}

void sub_1DB346834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v6 + 24));
  sub_1DB349348((v6 + 16), &v7);
  os_unfair_lock_unlock((v6 + 24));
  if (v3)
  {
  }

  else
  {
    sub_1DB42C444(v7, a2, a3, &v8);
    os_unfair_lock_lock((v6 + 24));
    sub_1DB349330((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }
}

uint64_t AssetSQLiteDatabase.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB34697C, 0, 0);
}

uint64_t sub_1DB34697C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1DB346A84;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return sub_1DB34DDB0(v8, sub_1DB346C58, v7, &unk_1DB511458, v4, v3);
}

uint64_t sub_1DB346A84()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB346BF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB346BF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB346C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB346C80, 0, 0);
}

uint64_t sub_1DB346C80()
{
  v8 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  v0[6] = v1;
  os_unfair_lock_lock((v1 + 24));
  sub_1DB349348((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v0[4];

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1DB346DF4;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1DB346DF4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DB346FAC;
  }

  else
  {
    v2 = sub_1DB346F08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DB346F08()
{
  v1 = v0[8];
  v2 = v0[6];
  os_unfair_lock_lock((v2 + 24));
  sub_1DB349330((v2 + 16));
  os_unfair_lock_unlock((v0[6] + 24));
  if (!v1)
  {
    v3 = v0[1];

    v3();
  }
}

uint64_t sub_1DB346FAC()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB349330((v1 + 16));
  os_unfair_lock_unlock((*(v0 + 48) + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB347050(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB306AF4;

  return sub_1DB346C5C(a1, v4, v6, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetSQLiteDatabase.checkDB()()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v4 = qword_1EE30E190;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  v6 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v3 + 40));
    sub_1DB348178((v3 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v3 + 40));
      __break(1u);
      os_unfair_lock_unlock(&v20);
      __break(1u);
      return;
    }

    v2 = 0;
    os_unfair_lock_unlock((v3 + 40));
  }

  v7 = *(v0 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v7 + 24));
  sub_1DB348194((v7 + 16), &v18);
  if (!v2)
  {
    os_unfair_lock_unlock((v7 + 24));

    os_unfair_lock_lock((v7 + 24));
    sub_1DB3481F8((v7 + 16));
  }

  os_unfair_lock_unlock((v7 + 24));
  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock((v3 + 40));
    v8 = *(v3 + 16);
    if (v8)
    {
      v10 = *(v3 + 24);
      v9 = *(v3 + 32);
      v18 = *(v3 + 16);
      v19 = v10;
      v20 = v9;
      v11 = v8;
      v12 = v10;

      LOBYTE(v9) = ProcessAssertion.invalidate()();
      v13 = v18;
      v14 = v19;

      if (v9)
      {
        v15 = *(v3 + 16);
        v16 = *(v3 + 24);
        v17 = *(v3 + 32);
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        sub_1DB3481B0(v15, v16, v17);
      }
    }

    os_unfair_lock_unlock((v3 + 40));
  }
}

Swift::Void __swiftcall AssetSQLiteDatabase.endTransaction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB349330((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

const char *sub_1DB347364(uint64_t *a1)
{
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_db) + 24));
  if (*a1)
  {
    v4 = *a1;

    return v4;
  }

  v81 = v5;
  v73 = a1;
  v82 = v1;
  v80 = OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_url;
  v11 = sub_1DB509C30();
  v13 = v12;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v76 = qword_1EE30C918;
  sub_1DB50BEB0();
  v14 = v92;
  v79 = v93;
  v78 = __swift_project_boxed_opaque_existential_1(v91, v92);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  v74 = xmmword_1DB50EE90;
  *(v15 + 16) = xmmword_1DB50EE90;
  v94 = sub_1DB301BC0(0, 42, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0xD000000000000029;
  v16._object = 0x80000001DB52A330;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v90 = MEMORY[0x1E69E6158];
  v77 = v11;
  v88 = v11;
  v89 = v13;
  sub_1DB301CDC(&v88, v84);
  v85 = 0u;
  v86 = 0u;

  sub_1DB301D4C(v84, &v85);
  v87 = 0;
  v17 = v94;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
    v94 = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[40 * v20];
  v22 = v85;
  v23 = v86;
  v21[64] = v87;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v94 = v17;
  sub_1DB301DBC(&v88);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v15 + 32) = v94;
  Logger.info(_:)(v15, v14, v79);

  __swift_destroy_boxed_opaque_existential_0(v91);
  v25 = OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_mode;
  v26 = v82;
  v27 = (v81 + 2);
  if (*(v82 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_mode) == 1)
  {
    v28 = v77;
    v29 = sub_1DB348CF4(v77, v13);
    (*v27)(v10, v26 + v80, v4);
    type metadata accessor for SQLiteConnection();
    swift_allocObject();
    v30 = v83;
    v31 = sub_1DB4AF204(v10, 3211270);
    if (v30)
    {

      return v4;
    }

    v4 = v31;

    if ((v29 & 1) == 0)
    {
      sub_1DB348CF4(v28, v13);
    }
  }

  else
  {

    (*v27)(v7, v26 + v80, v4);
    type metadata accessor for SQLiteConnection();
    swift_allocObject();
    v32 = v83;
    v33 = sub_1DB4AF204(v7, 65542);
    if (v32)
    {
      return v4;
    }

    v4 = v33;
  }

  v34 = sub_1DB387888();

  sub_1DB50BEB0();
  v36 = v92;
  v35 = v93;
  v81 = __swift_project_boxed_opaque_existential_1(v91, v92);
  v37 = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = v74;
  v94 = sub_1DB301BC0(0, 70, 0, MEMORY[0x1E69E7CC0]);
  v39._countAndFlagsBits = 0xD00000000000001FLL;
  v39._object = 0x80000001DB52A360;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  v40 = *(v37 + v25);
  v90 = &type metadata for AssetSQLiteDatabase.Mode;
  LOBYTE(v88) = v40;
  sub_1DB301CDC(&v88, v84);
  v85 = 0u;
  v86 = 0u;
  sub_1DB301D4C(v84, &v85);
  v87 = 0;
  v41 = v94;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v83 = 0;
  if ((v42 & 1) == 0)
  {
    v41 = sub_1DB301BC0(0, *(v41 + 2) + 1, 1, v41);
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    v41 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v41);
  }

  *(v41 + 2) = v44 + 1;
  v45 = &v41[40 * v44];
  v46 = v85;
  v47 = v86;
  v45[64] = v87;
  *(v45 + 2) = v46;
  *(v45 + 3) = v47;
  v94 = v41;
  sub_1DB301DBC(&v88);
  v48._countAndFlagsBits = 0xD000000000000013;
  v48._object = 0x80000001DB52A380;
  LogMessage.StringInterpolation.appendLiteral(_:)(v48);
  result = sqlite3_libversion();
  if (result)
  {
    v50 = MEMORY[0x1E1285C00]();
    v52 = 0x6E776F6E6B6E7528;
    if (v51)
    {
      v52 = v50;
    }

    v53 = 0xE900000000000029;
    if (v51)
    {
      v53 = v51;
    }

    *&v85 = v52;
    *(&v85 + 1) = v53;
    v54 = MEMORY[0x1E69E6158];
    v55 = sub_1DB50A860();
    v90 = v54;
    v88 = v55;
    v89 = v56;
    sub_1DB301CDC(&v88, v84);
    v85 = 0u;
    v86 = 0u;
    sub_1DB301D4C(v84, &v85);
    v87 = 0;
    v57 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1DB301BC0(0, *(v57 + 2) + 1, 1, v57);
      v94 = v57;
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1DB301BC0((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[40 * v59];
    v61 = v85;
    v62 = v86;
    v60[64] = v87;
    *(v60 + 2) = v61;
    *(v60 + 3) = v62;
    v94 = v57;
    sub_1DB301DBC(&v88);
    v63._object = 0x80000001DB52A3A0;
    v63._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v63);
    v90 = MEMORY[0x1E69E72F0];
    LODWORD(v88) = v34;
    sub_1DB301CDC(&v88, v84);
    v85 = 0u;
    v86 = 0u;
    sub_1DB301D4C(v84, &v85);
    v87 = 0;
    v64 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1DB301BC0(0, *(v64 + 2) + 1, 1, v64);
      v94 = v64;
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1DB301BC0((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[40 * v66];
    v68 = v85;
    v69 = v86;
    v67[64] = v87;
    *(v67 + 2) = v68;
    *(v67 + 3) = v69;
    v94 = v64;
    sub_1DB301DBC(&v88);
    v70._countAndFlagsBits = 41;
    v70._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v70);
    *(v38 + 32) = v94;
    Logger.info(_:)(v38, v36, v35);

    __swift_destroy_boxed_opaque_existential_0(v91);
    if (qword_1EE30DCC0 != -1)
    {
      swift_once();
    }

    v71 = v83;
    sub_1DB4B017C(qword_1EE30DCC8, unk_1EE30DCD0, qword_1EE30DCD8);
    if (v71)
    {
    }

    else
    {
      if (*(v82 + v25))
      {
        sub_1DB42CFDC(v4);
      }

      sub_1DB387B90(1);
      *v73 = v4;
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1DB347C5C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a1;
    v5 = *(a2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_db);
    os_unfair_lock_lock((v5 + 24));
    sub_1DB348CC8((v5 + 16), &v6);
    os_unfair_lock_unlock((v5 + 24));
    if (!v3)
    {
      *a3 = v6;
    }
  }
}

void sub_1DB347CE8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1 == 1;
  if (*a1 < 1)
  {
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB50EE90;
    v9[3] = MEMORY[0x1E69E6158];
    v9[0] = 0xD00000000000005FLL;
    v9[1] = 0x80000001DB52A2B0;
    *(v8 + 48) = 0u;
    *(v8 + 32) = 0u;
    sub_1DB301D4C(v9, v8 + 32);
    *(v8 + 64) = 0;
    *(v7 + 32) = v8;
    Logger.error(_:)(v7, v5, v6);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    --*a1;
    if (v3)
    {
      v4 = *(a2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_db);
      os_unfair_lock_lock((v4 + 24));
      sub_1DB347EA8((v4 + 16));
      os_unfair_lock_unlock((v4 + 24));
      if (v2)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1DB347EA8(void *a1)
{

  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = 0xD00000000000001BLL;
  v7[1] = 0x80000001DB52A310;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1DB301D4C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.info(_:)(v4, v2, v3);

  result = __swift_destroy_boxed_opaque_existential_0(v8);
  *a1 = 0;
  return result;
}

uint64_t AssetSQLiteDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_url;
  v2 = sub_1DB509CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AssetSQLiteDatabase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_url;
  v2 = sub_1DB509CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void *sub_1DB3481B0(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DB348218()
{
  result = qword_1ECC434B8;
  if (!qword_1ECC434B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC434B8);
  }

  return result;
}

uint64_t type metadata accessor for AssetSQLiteDatabase(uint64_t a1)
{
  result = qword_1EE30D220;
  if (!qword_1EE30D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB3482C0(uint64_t a1)
{
  result = sub_1DB509CA0();
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

uint64_t sub_1DB3483BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DB30C1AC(result, a2);
  }

  return result;
}

unint64_t sub_1DB3483D0()
{
  result = qword_1EE30C818;
  if (!qword_1EE30C818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30C818);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DB34843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v10 = qword_1EE30E190;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v12 = byte_1EE30E198;
  if (byte_1EE30E198)
  {
LABEL_6:

    sub_1DB345F78(a1, a2, a3, a4);
    if (v4)
    {
      if ((v12 & 1) == 0)
      {
        os_unfair_lock_lock((v9 + 40));
        v14 = (v9 + 16);
        v13 = *(v9 + 16);
        if (v13)
        {
LABEL_12:
          v15 = *(v9 + 24);
          v21 = *(v9 + 16);
          v16 = v13;
          v17 = v15;

          v22 = ProcessAssertion.invalidate()();

          if (v22)
          {
            v18 = *(v9 + 16);
            v19 = *(v9 + 24);
            v20 = *(v9 + 32);
            *v14 = 0;
            v14[1] = 0;
            v14[2] = 0;
            sub_1DB3481B0(v18, v19, v20);
          }
        }

LABEL_14:
        os_unfair_lock_unlock((v9 + 40));
      }
    }

    else if ((v12 & 1) == 0)
    {
      os_unfair_lock_lock((v9 + 40));
      v14 = (v9 + 16);
      v13 = *(v9 + 16);
      if (v13)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    return;
  }

  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock((v9 + 40));
  sub_1DB349364((v9 + 16));
  if (!v4)
  {
    os_unfair_lock_unlock((v9 + 40));
    v4 = 0;
    goto LABEL_6;
  }

  os_unfair_lock_unlock((v9 + 40));
  __break(1u);
}

void sub_1DB3486A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EE30E190;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v8 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1DB349364((v5 + 16));
    if (v2)
    {

      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v5 + 40));
  }

  sub_1DB3460C4(a1, a2);
  if ((v8 & 1) == 0)
  {
    os_unfair_lock_lock((v5 + 40));
    v9 = *(v5 + 16);
    if (v9)
    {
      v10 = *(v5 + 24);
      v17 = *(v5 + 16);
      v11 = v9;
      v12 = v10;

      v13 = ProcessAssertion.invalidate()();

      if (v13)
      {
        v14 = *(v5 + 16);
        v15 = *(v5 + 24);
        v16 = *(v5 + 32);
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        sub_1DB3481B0(v14, v15, v16);
      }
    }

    os_unfair_lock_unlock((v5 + 40));
  }
}

void sub_1DB348870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  sub_1DB348C18(a2, &v20);
  v7 = qword_1EE30E190;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  v9 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v6 + 40));
    sub_1DB349364((v6 + 16));
    if (v3)
    {
      sub_1DB348C74(a2);
      os_unfair_lock_unlock((v6 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v6 + 40));
  }

  sub_1DB348C18(a2, &v20);
  sub_1DB34662C(a1, a2);
  if ((v9 & 1) == 0)
  {
    os_unfair_lock_lock((v6 + 40));
    v10 = *(v6 + 16);
    if (v10)
    {
      v12 = *(v6 + 24);
      v11 = *(v6 + 32);
      v20 = *(v6 + 16);
      v21 = v12;
      v22 = v11;
      v13 = v10;
      v14 = v12;

      LOBYTE(v11) = ProcessAssertion.invalidate()();
      v15 = v20;
      v16 = v21;

      if (v11)
      {
        v17 = *(v6 + 16);
        v18 = *(v6 + 24);
        v19 = *(v6 + 32);
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        sub_1DB3481B0(v17, v18, v19);
      }
    }

    os_unfair_lock_unlock((v6 + 40));
  }

  sub_1DB348C74(a2);
}

void sub_1DB348A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v8 = qword_1EE30E190;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v10 = byte_1EE30E198;
  if ((byte_1EE30E198 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v7 + 40));
    sub_1DB349364((v7 + 16));
    if (v3)
    {

      os_unfair_lock_unlock((v7 + 40));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v7 + 40));
  }

  sub_1DB346834(a1, a2, a3);
  if ((v10 & 1) == 0)
  {
    os_unfair_lock_lock((v7 + 40));
    v11 = *(v7 + 16);
    if (v11)
    {
      v12 = *(v7 + 24);
      v19 = *(v7 + 16);
      v13 = v11;
      v14 = v12;

      v15 = ProcessAssertion.invalidate()();

      if (v15)
      {
        v16 = *(v7 + 16);
        v17 = *(v7 + 24);
        v18 = *(v7 + 32);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        sub_1DB3481B0(v16, v17, v18);
      }
    }

    os_unfair_lock_unlock((v7 + 40));
  }
}

const char *sub_1DB348CC8@<X0>(uint64_t *a1@<X0>, const char **a2@<X8>)
{
  result = sub_1DB347364(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB348CF4(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1DB50A620();
  v4 = [v2 fileExistsAtPath_];

  if (!v4)
  {
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v29 = v47;
    v30 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DB50EE90;
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD000000000000020;
    *(&v42 + 1) = 0x80000001DB52A3C0;
    *(v32 + 48) = 0u;
    *(v32 + 32) = 0u;
    sub_1DB301D4C(&v42, v32 + 32);
    *(v32 + 64) = 0;
    *(v31 + 32) = v32;
    Logger.info(_:)(v31, v29, v30);
    goto LABEL_21;
  }

  v5 = sub_1DB50A620();
  v46[0] = 0;
  v6 = [v2 attributesOfItemAtPath:v5 error:v46];

  v7 = v46[0];
  if (!v6)
  {
    v33 = v46[0];
    v34 = sub_1DB509B20();

    swift_willThrow();
    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1DB3492D8();
  v8 = sub_1DB50A4B0();
  v9 = v7;

  if (!*(v8 + 16) || (v10 = sub_1DB314CB4(), (v11 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_1DB300B14(*(v8 + 56) + 32 * v10, v46);

  type metadata accessor for FileProtectionType(0);
  v13 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v35 = v47;
    v36 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DB50EE90;
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD00000000000002ALL;
    *(&v42 + 1) = 0x80000001DB52A3F0;
    *(v38 + 48) = 0u;
    *(v38 + 32) = 0u;
    sub_1DB301D4C(&v42, v38 + 32);
    *(v38 + 64) = 0;
    *(v37 + 32) = v38;
    Logger.warning(_:)(v37, v35, v36);
LABEL_21:

    __swift_destroy_boxed_opaque_existential_0(v46);
    return 0;
  }

  v14 = v42;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v15 = v47;
  v16 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB50EE90;
  v40 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0xD00000000000002DLL;
  v18._object = 0x80000001DB52A420;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v45[3] = v13;
  v45[0] = v14;
  sub_1DB301CDC(v45, v41);
  v42 = 0u;
  v43 = 0u;
  v19 = v14;
  sub_1DB301D4C(v41, &v42);
  v44 = 0;
  v20 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v40 + 2) + 1, 1, v40);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v39 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
    v23 = v22 + 1;
    v20 = v39;
  }

  *(v20 + 2) = v23;
  v24 = &v20[40 * v22];
  v25 = v42;
  v26 = v43;
  v24[64] = v44;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  sub_1DB301DBC(v45);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v17 + 32) = v20;
  Logger.info(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_0(v46);
  return 1;
}

unint64_t sub_1DB3492D8()
{
  result = qword_1EE30C808;
  if (!qword_1EE30C808)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C808);
  }

  return result;
}

uint64_t sub_1DB349394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1DB3171C0(a1, v7);
  v6[0] = a2;

  v8 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v6);
  v9 = MEMORY[0x1E69E7CC0];
  v6[3] = &type metadata for _JSONObjectDecoder;
  v6[4] = sub_1DB34A154();
  v6[0] = swift_allocObject();
  sub_1DB34A1A8(v7, v6[0] + 16);
  static AppleServicesPropertyScope.SigningStyleProperty.value(from:)(v6, a3);
  sub_1DB34A204(v7);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1DB349458(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  sub_1DB3171C0(a1, v7);
  v6[0] = a2;

  v8 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v6);
  v9 = MEMORY[0x1E69E7CC0];
  v6[3] = &type metadata for _JSONObjectDecoder;
  v6[4] = sub_1DB34A154();
  v6[0] = swift_allocObject();
  sub_1DB34A1A8(v7, v6[0] + 16);
  LOBYTE(a3) = a3(v6);
  sub_1DB34A204(v7);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return a3 & 1;
}

uint64_t sub_1DB349524(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  sub_1DB3171C0(a1, v8);
  v7[0] = a2;

  v9 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v7);
  v10 = MEMORY[0x1E69E7CC0];
  v7[3] = &type metadata for _JSONObjectDecoder;
  v7[4] = sub_1DB34A154();
  v7[0] = swift_allocObject();
  sub_1DB34A1A8(v8, v7[0] + 16);
  v5 = a3(v7);
  sub_1DB34A204(v8);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t static NetRequestProperty.value(byDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  sub_1DB3171C0(a1, v9);
  v8[0] = v6;

  v10 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v8);
  v11 = MEMORY[0x1E69E7CC0];
  v8[3] = &type metadata for _JSONObjectDecoder;
  v8[4] = sub_1DB34A154();
  v8[0] = swift_allocObject();
  sub_1DB34A1A8(v9, v8[0] + 16);
  (*(a4 + 32))(v8, a3, a4);
  sub_1DB34A204(v9);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

void *static NetRequestProperty.value(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DB50BDD0();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1DB324D00();
    sub_1DB50BA80();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v8);
    (*(a3 + 24))(v10, &v9, a2, a3);

    sub_1DB3151CC(v10);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return result;
}

uint64_t sub_1DB349864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12 = *a2;
  v10 = *(a4 + 24);
  a5[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a5);
  result = v10(a1, &v12, a3, a4);
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a5);
  }

  return result;
}

uint64_t sub_1DB34991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-v10];
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-v14];
  sub_1DB300B14(a1, v23);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    (*(a4 + 40))(v15, v22, a3, a4);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v17(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    v19 = sub_1DB50B410();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0);
    v21[3] = swift_getMetatypeMetadata();
    *v21 = AssociatedTypeWitness;
    sub_1DB50B3C0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B30], v19);
    return swift_willThrow();
  }
}

double static NetRequestPropertyCollectionBuilder.buildExpression<A, B>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1DB50EE90;
  *(v5 + 32) = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  *(v5 + 40) = a3;
  return result;
}

double static NetRequestPropertyCollectionBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DB50EE90;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return result;
}

void NetRequestPropertyLookup.subscript.getter()
{
  sub_1DB50B580();
  __break(1u);
}

{
  NetRequestPropertyLookup.subscript.getter();
}

uint64_t sub_1DB349D94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB349458(a1, *a2, sub_1DB4EED8C);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1DB349DDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB349458(a1, *a2, sub_1DB4EED44);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1DB349E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB349458(a1, *a2, sub_1DB4EEDD4);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1DB349E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB349458(a1, *a2, sub_1DB4EECFC);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1DB349F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  result = sub_1DB349524(a1, *a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

void *_s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 4;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = v4[v3];

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 16 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v28 = *(v9 + 16 * v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 17;
          }

          v19 = v18 >> 4;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 4);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 16 * v21)
            {
              v23 = v18 >> 4;
              memmove(v16 + 4, v22, 16 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 16 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
          v12 = v28;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1DB34A154()
{
  result = qword_1ECC434D0;
  if (!qword_1ECC434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC434D0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E1288220);
  }

  return result;
}

double ShelfModel.layoutReferenceItem.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 40))();
  if (*(v3 + 16))
  {
    sub_1DB30BE90(v3 + 32, a2);
  }

  else
  {

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t ShelfModel.isHomogenousForLayout.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = v4();
  if (*(v5 + 16))
  {
    sub_1DB30BE90(v5 + 32, &v17);

    sub_1DB2FEA0C(&v17, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    DynamicType = swift_getDynamicType();
    v7 = (v4)(a1, a2);
    v8 = *(v7 + 16);
    v9 = v8 != 0;
    v10 = v8 - v9;
    if (v8 >= v9)
    {
      v11 = v8 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + 1;
    result = v7 + 40 * v9 + 32;
    while (1)
    {
      v14 = v10 == 0;
      if (!v10)
      {
LABEL_9:

        __swift_destroy_boxed_opaque_existential_0(v19);
        return v14;
      }

      if (!--v12)
      {
        break;
      }

      v15 = result + 40;
      --v10;
      sub_1DB30BE90(result, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v16 = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(&v17);
      result = v15;
      if (v16 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t MediaArtworkSource.cachedImagesKey(using:)@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ECC42100 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1DB30BE90(&qword_1ECC45180, v2);
}

uint64_t sub_1DB34A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43510, &qword_1DB5118D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;

  sub_1DB50B540();
  v13 = sub_1DB50B560();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    return (*(v14 + 32))(a5, v12, v13);
  }

  sub_1DB30623C(v12, &qword_1ECC43510, &qword_1DB5118D8);
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52A570);
  v16[0] = a1;
  v16[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52A590);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB34A900@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ECC42100 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1DB30BE90(&qword_1ECC45180, v2);
}

uint64_t sub_1DB34A970@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1DB34A9F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BB10();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_1DB34AA90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  result = sub_1DB34BF54(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DB34AAC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10_URLSourceVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1DB34CA8C();
    sub_1DB50BA80();
    (*(v5 + 32))(v10, v7, v4);
    __swift_destroy_boxed_opaque_existential_0(v13);
    sub_1DB34CA28(v10, v14);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB34AC88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43508, &qword_1DB5118D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-v7 - 8];
  v9 = *a2;
  sub_1DB3171C0(a1, v16);
  v17 = v9;
  sub_1DB34AE0C(v16, v8);
  v10 = _s10_URLSourceVMa(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1DB30623C(v8, &qword_1ECC43508, &qword_1DB5118D0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
    sub_1DB315178();
    swift_allocError();
    v12 = MEMORY[0x1E69E7CC0];
    *v13 = v11;
    v13[1] = v12;
    v13[2] = 0;
    v13[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  else
  {
    sub_1DB3151CC(a1);
    return sub_1DB34CA28(v8, a3);
  }
}

uint64_t sub_1DB34AE0C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v22 - v6 + 8;
  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v12 = _s10_URLSourceVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;

  sub_1DB330D60(a1, v23);
  if (!v24)
  {
    sub_1DB3151CC(a1);
    sub_1DB30623C(v23, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_7:
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v16 = __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1DB300B14(v16, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB3151CC(a1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    goto LABEL_7;
  }

  v21 = v11;
  __swift_destroy_boxed_opaque_existential_0(v23);
  sub_1DB509C60();

  sub_1DB3151CC(a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_8:
    sub_1DB30623C(v7, &unk_1ECC42B20, &unk_1DB50F6A0);
    v19 = 1;
    return (*(v13 + 56))(a3, v19, 1, v12);
  }

  v17 = *(v9 + 32);
  v18 = v21;
  v17(v21, v7, v8);
  v17(v15, v18, v8);
  sub_1DB34CA28(v15, a3);
  v19 = 0;
  return (*(v13 + 56))(a3, v19, 1, v12);
}

uint64_t sub_1DB34B12C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB509B80();
  v3 = MEMORY[0x1E69E6168];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v3;
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB34B168@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1DB34B24C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  sub_1DB509B80();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_1DB34B338@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = [a2 URLWithSize:a1[3] cropStyle:*a1 format:70 quality:{1.0, 1.0}];
  if (v13)
  {
    v14 = v13;
    sub_1DB509C20();

    (*(v7 + 32))(v12, v9, v6);
    v15 = sub_1DB509B80();
    v16 = MEMORY[0x1E69E6168];
    a3[3] = MEMORY[0x1E69E6158];
    a3[4] = v16;
    *a3 = v15;
    a3[1] = v17;
    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (qword_1ECC42100 != -1)
    {
      swift_once();
    }

    return sub_1DB30BE90(&qword_1ECC45180, a3);
  }
}

uint64_t sub_1DB34B510@<X0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  if (a1[4] <= 0.0 || a1[5] <= 0.0)
  {
    v17 = sub_1DB509CA0();
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }

  else
  {
    v12 = *a1;
    v13 = *(a1 + 3);
    if (a1[2])
    {
      v14 = [a2 URLWithSize:v13 cropStyle:*&v12 format:?];
      if (v14)
      {
        v15 = v14;
        sub_1DB509C20();

        v16 = sub_1DB509CA0();
        (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
      }

      else
      {
        v23 = sub_1DB509CA0();
        (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      }

      v24 = v8;
    }

    else
    {
      v20 = [a2 URLWithSize:v13 cropStyle:*&v12 format:*(a1 + 1) quality:?];
      if (v20)
      {
        v21 = v20;
        sub_1DB509C20();

        v22 = sub_1DB509CA0();
        (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
      }

      else
      {
        v25 = sub_1DB509CA0();
        (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
      }

      v24 = v11;
    }

    return sub_1DB34BBCC(v24, a3);
  }
}

id sub_1DB34B7A8(uint64_t a1)
{
  v3 = *v1;

  return [v3 colorWithKind_];
}

uint64_t sub_1DB34B7FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB34C43C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DB34B828(void *a1)
{
  v3 = [*v1 artworkDictionary];
  v4 = sub_1DB50A4B0();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F8, &qword_1DB5118C0);
  *&v6 = v4;
  v8[3] = &type metadata for FoundationValue;
  v8[4] = &off_1F56FB6B0;
  v8[0] = swift_allocObject();
  sub_1DB30C200(&v6, (v8[0] + 16));
  JSONObject.encode(to:)(a1);
  return sub_1DB3151CC(v8);
}

uint64_t sub_1DB34B918@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_1DB3171C0(a1, v13);
  v12 = v5;
  v6 = sub_1DB34C02C(v13, &v12);
  if (v6)
  {
    v7 = v6;
    result = sub_1DB3151CC(a1);
    *a3 = v7;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
    sub_1DB315178();
    swift_allocError();
    v10 = MEMORY[0x1E69E7CC0];
    *v11 = v9;
    v11[1] = v10;
    v11[2] = 0;
    v11[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

id sub_1DB34B9E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1DB34C02C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t _s10_URLSourceVMa(uint64_t a1)
{
  result = qword_1ECC434D8;
  if (!qword_1ECC434D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB34BB44(uint64_t a1)
{
  result = sub_1DB509CA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB34BBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB34BC3C(void *a1, void *a2)
{
  v3 = [a1 artworkDictionary];
  v4 = sub_1DB50A4B0();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F8, &qword_1DB5118C0);
  v9[0] = v4;
  v5 = [a2 artworkDictionary];
  v6 = sub_1DB50A4B0();

  v8[3] = v10;
  v8[0] = v6;
  LOBYTE(v5) = _isStructurallyEqual(_:to:with:at:)(v9, v8, 3uLL, 0);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v5 & 1;
}

uint64_t sub_1DB34BD48(void *a1)
{
  v3 = sub_1DB50B3D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    if ((sub_1DB50BA90() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DB50BDB0();
      sub_1DB50B3C0();
      v7 = sub_1DB50B3E0();
      swift_allocError();
      v9 = v8;
      (*(v4 + 16))(v8, v6, v3);
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB34BF54(uint64_t a1, void *a2)
{

  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = *(a1 + 32);
  if (*(&v3 + 1))
  {
    v4 = __swift_project_boxed_opaque_existential_1(v8, *(&v3 + 1));
    sub_1DB300B14(v4, v7);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0(v8);
      return 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v8);
      return 1;
    }
  }

  else
  {
    sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }
}

id sub_1DB34C02C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-1] - v4;

  sub_1DB330D60(a1, v19);
  if (!v20)
  {
    sub_1DB3151CC(a1);
    sub_1DB30623C(v19, &qword_1ECC42E38, &qword_1DB50FB80);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
LABEL_8:
    v14 = &qword_1ECC42EA0;
    v15 = &qword_1DB50FB88;
    v16 = &v21;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1DB408B14(&v21);
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (!*(&v22 + 1))
  {
    sub_1DB3151CC(a1);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  v19[0] = 0;
  sub_1DB50A4A0();
  v6 = v19[0];
  sub_1DB317740(&v21);
  if (!v6)
  {
    sub_1DB3151CC(a1);
    return 0;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E698C9B0]);
  v8 = sub_1DB50A490();
  v9 = [v7 initWithDictionary_];

  [v9 artworkSize];
  v10 = [v9 URLWithSize_];
  if (v10)
  {
    v11 = v10;
    sub_1DB509C20();

    sub_1DB3151CC(a1);
    v12 = sub_1DB509CA0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_1DB30623C(v5, &unk_1ECC42B20, &unk_1DB50F6A0);
    return v9;
  }

  sub_1DB3151CC(a1);

  v17 = sub_1DB509CA0();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v14 = &unk_1ECC42B20;
  v15 = &unk_1DB50F6A0;
  v16 = v5;
LABEL_9:
  sub_1DB30623C(v16, v14, v15);
  return 0;
}

uint64_t sub_1DB34C2F8(uint64_t a1, uint64_t *a2)
{
  sub_1DB3171C0(a1, &v11);

  v9[0] = v11;
  v9[1] = v12;
  v10 = v13;
  if (*(&v12 + 1))
  {
    v3 = __swift_project_boxed_opaque_existential_1(v9, *(&v12 + 1));
    sub_1DB300B14(v3, &v8);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v9);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
      sub_1DB315178();
      swift_allocError();
      v5 = MEMORY[0x1E69E7CC0];
      *v6 = v4;
      v6[1] = v5;
      v6[2] = 0;
      v6[3] = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  return sub_1DB3151CC(a1);
}

uint64_t sub_1DB34C43C(void *a1)
{
  v3 = sub_1DB50B3D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DB50BDD0();
  if (v1)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1DB324D00();
  sub_1DB50BA80();
  sub_1DB330D60(v32, v27);
  if (!v28)
  {
    sub_1DB30623C(v27, &qword_1ECC42E38, &qword_1DB50FB80);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_1DB408B14(&v29);
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (!*(&v30 + 1))
  {
LABEL_9:
    sub_1DB30623C(&v29, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  v27[0] = 0;
  sub_1DB50A4A0();
  v11 = v27[0];
  sub_1DB317740(&v29);
  if (!v11)
  {
LABEL_10:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v17 = sub_1DB50B3E0();
    swift_allocError();
    v19 = v18;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v19 = sub_1DB336FD4(0, &qword_1ECC434E8, 0x1E698C9B0);
    (*(v4 + 16))(v19 + v10, v6, v3);
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    goto LABEL_11;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E698C9B0]);
  v13 = sub_1DB50A490();
  v10 = [v12 initWithDictionary_];

  [v10 artworkSize];
  v14 = [v10 URLWithSize_];
  if (!v14)
  {
    v21 = sub_1DB509CA0();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    sub_1DB30623C(v9, &unk_1ECC42B20, &unk_1DB50F6A0);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v22 = sub_1DB50B3E0();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F0, &qword_1DB515DD0) + 48);
    *(v24 + 24) = &type metadata for OpenCodingKey;
    *(v24 + 32) = sub_1DB3053A8();
    *v24 = xmmword_1DB511610;
    *(v24 + 16) = 1;
    (*(v4 + 16))(v24 + v25, v6, v3);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF0], v22);
    swift_willThrow();

LABEL_11:
    (*(v4 + 8))(v6, v3);
    sub_1DB3151CC(v32);
    __swift_destroy_boxed_opaque_existential_0(v33);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v10;
  }

  v15 = v14;
  sub_1DB509C20();

  sub_1DB3151CC(v32);
  v16 = sub_1DB509CA0();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  sub_1DB30623C(v9, &unk_1ECC42B20, &unk_1DB50F6A0);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_1DB34CA28(uint64_t a1, uint64_t a2)
{
  v4 = _s10_URLSourceVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB34CA8C()
{
  result = qword_1EE30E290;
  if (!qword_1EE30E290)
  {
    sub_1DB509CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E290);
  }

  return result;
}

id sub_1DB34CAE4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43160, &qword_1DB510A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB511620;
  v11 = MEMORY[0x1E69E6158];
  sub_1DB50B2B0();
  *(inited + 96) = v11;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  sub_1DB50B2B0();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v13 = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  *(inited + 168) = v13;
  *(inited + 144) = v12;
  v55[0] = 0x746867696568;
  v55[1] = 0xE600000000000000;
  sub_1DB50B2B0();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 240) = v13;
  *(inited + 216) = v14;
  v15 = sub_1DB313804(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DC0, &qword_1DB50FAA0);
  swift_arrayDestroy();
  v16 = 0;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  while (1)
  {
    v21 = v16;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = (v16 << 9) | (8 * v22);
    v24 = *(*(a3 + 56) + v23);
    v25 = *(*(a3 + 48) + v23);
    v26 = v24;
    sub_1DB368440(0);
    if (v28)
    {
      v29 = v27;
      v50 = v28;
      *&v53 = sub_1DB50A650();
      *(&v53 + 1) = v30;
      sub_1DB50B2B0();
      v54 = v11;
      *&v53 = v29;
      *(&v53 + 1) = v50;
      sub_1DB30C200(&v53, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v15;
      v32 = sub_1DB30EDA8(v55);
      v34 = *(v15 + 16);
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_22;
      }

      if (*(v15 + 24) >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v32;
          v45 = v33;
          sub_1DB311B6C();
          v33 = v45;
          v32 = v44;
        }
      }

      else
      {
        v38 = v33;
        sub_1DB31A3F4(v37, isUniquelyReferenced_nonNull_native);
        v32 = sub_1DB30EDA8(v55);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_24;
        }

        v33 = v38;
      }

      v11 = MEMORY[0x1E69E6158];
      v15 = v51;
      if (v33)
      {
        v40 = (v51[7] + 32 * v32);
        __swift_destroy_boxed_opaque_existential_0(v40);
        sub_1DB30C200(v52, v40);

        sub_1DB314BE8(v55);
      }

      else
      {
        v51[(v32 >> 6) + 8] |= 1 << v32;
        v41 = v32;
        sub_1DB314C3C(v55, v51[6] + 40 * v32);
        sub_1DB30C200(v52, (v51[7] + 32 * v41));

        sub_1DB314BE8(v55);
        v42 = v51[2];
        v36 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v51[2] = v43;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= v20)
    {

      v46 = objc_allocWithZone(MEMORY[0x1E698C9B0]);
      v47 = sub_1DB50A490();

      v48 = [v46 initWithDictionary_];

      return v48;
    }

    v19 = *(a3 + 64 + 8 * v16);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void ShelfBasedPageModel<>.presentation.getter(uint64_t a1)
{
  sub_1DB50B320();

  swift_getDynamicType();
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD000000000000021, 0x80000001DB52A610);
  sub_1DB50B580();
  __break(1u);
}

JetCore::MonotonicTime __swiftcall MonotonicTime.init(timeInterval:)(Swift::Double timeInterval)
{
  if ((*&timeInterval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (timeInterval <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (timeInterval < 9.22337204e18)
  {
    v2 = timeInterval - trunc(timeInterval);
    if (qword_1EE30ED48 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v4 = v1;
  v5 = timeInterval;
  v6 = swift_once();
  timeInterval = v5;
  v1 = v4;
LABEL_5:
  v3 = round(v2 * *&qword_1EE30ED50);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *v1 = timeInterval;
  v1[1] = v3;
LABEL_16:
  result.nanoseconds = v7;
  result.seconds = v6;
  return result;
}

uint64_t static MonotonicTime.now.getter@<X0>(timespec *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = sub_1DB5097B0();
  MEMORY[0x1EEE9AC00](v2);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  result = clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  if (result && (result = clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp), result))
  {
    sub_1DB50A370();
    sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
    sub_1DB34DC78();
    sub_1DB509B00();
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000002BLL, 0x80000001DB52A660);
    sub_1DB50B530();
    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    *a1 = __tp;
  }

  return result;
}

Swift::Double __swiftcall MonotonicTime.timeIntervalSince(_:)(JetCore::MonotonicTime a1)
{
  v2 = *a1.seconds;
  v3 = *(a1.seconds + 8);
  v5 = *v1;
  v4 = v1[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  return v4 / *&qword_1EE30ED50 + v5 - (v3 / *&qword_1EE30ED50 + v2);
}

double static MonotonicTime.nanosecondsPerSecond.getter()
{
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  return *&qword_1EE30ED50;
}

void sub_1DB34D440()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 < 0 || v2 < 0)
  {
    sub_1DB3D66F0("JetCore/MonotonicTime.swift", 27, 2, 111, sub_1DB34DD38);
    v1 &= ~(v1 >> 63);
  }

  if (is_mul_ok(v1, 0x3B9ACA00uLL))
  {
    v3 = 1000000000 * v1;
    v4 = v2 & ~(v2 >> 63);
    v1 = 1000000000 * v1 + v4;
    if (!__CFADD__(v3, v4))
    {
      if (qword_1ECC42030 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_7:
  if (!is_mul_ok(v1, HIDWORD(qword_1ECC43518)))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!qword_1ECC43518)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1DB34D534(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000002BLL, 0x80000001DB52A690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43530, &qword_1DB511A28);
  sub_1DB50B530();
  return 0;
}

double sub_1DB34D5E0()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  mach_timebase_info(v1);
  result = *v1;
  qword_1ECC43518 = v1[0];
  return result;
}

double MonotonicTime.timeInterval.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  return v2 / *&qword_1EE30ED50 + v1;
}

double static MonotonicTime.timeIntervalSinceNow(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static MonotonicTime.now.getter(&v6);
  tv_sec = v6.tv_sec;
  tv_nsec = v6.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  return tv_nsec / *&qword_1EE30ED50 + tv_sec - (v2 / *&qword_1EE30ED50 + v1);
}

Swift::Int static MonotonicTime.+ infix(_:_:)(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (qword_1EE30ED48 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = v3 / *&qword_1EE30ED50 + v2 + a2;

  return MonotonicTime.init(timeInterval:)(v4).seconds;
}

double static MonotonicTime.+= infix(_:_:)(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EE30ED48 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  MonotonicTime.init(timeInterval:)(v4 / *&qword_1EE30ED50 + v3 + a2);
  result = *&v7;
  *a1 = v7;
  return result;
}

Swift::Int static MonotonicTime.- infix(_:_:)(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (qword_1EE30ED48 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = v3 / *&qword_1EE30ED50 + v2 - a2;

  return MonotonicTime.init(timeInterval:)(v4).seconds;
}

double static MonotonicTime.-= infix(_:_:)(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EE30ED48 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  MonotonicTime.init(timeInterval:)(v4 / *&qword_1EE30ED50 + v3 - a2);
  result = *&v7;
  *a1 = v7;
  return result;
}

uint64_t MonotonicTime.description.getter()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x696E6F746F6E6F4DLL, 0xEE0028656D695463);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  sub_1DB50ADA0();
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1DB34DB68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E20, &unk_1DB50FB00);
    v3 = sub_1DB50B610();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DB34DD40(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1DB306160(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DB30C200(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB34DC78()
{
  result = qword_1ECC43520;
  if (!qword_1ECC43520)
  {
    sub_1DB5097B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43520);
  }

  return result;
}

unint64_t sub_1DB34DCD4()
{
  result = qword_1ECC43528;
  if (!qword_1ECC43528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43528);
  }

  return result;
}

uint64_t sub_1DB34DD40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB34DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB34DDD8, 0, 0);
}

uint64_t sub_1DB34DDD8()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  v1 = byte_1EE30E198;
  *(v0 + 80) = byte_1EE30E198;
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 56);
    *(swift_task_alloc() + 16) = *(v0 + 24);
    os_unfair_lock_lock((v2 + 40));
    sub_1DB348178((v2 + 16));
    os_unfair_lock_unlock((v2 + 40));
  }

  v6 = (*(v0 + 40) + **(v0 + 40));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DB34DF68;
  v4 = *(v0 + 16);

  return v6(v4);
}

uint64_t sub_1DB34DF68()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DB34E174;
  }

  else
  {
    v2 = sub_1DB34E07C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB34E07C()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = *(v0 + 56);
    os_unfair_lock_lock((v1 + 40));
    v3 = (v1 + 16);
    v2 = *(v1 + 16);
    if (v2)
    {
      v4 = *(v0 + 56);
      v5 = *(v4 + 24);
      v6 = v2;
      v7 = v5;

      LOBYTE(v5) = ProcessAssertion.invalidate()();

      if (v5)
      {
        v8 = *v3;
        v9 = *(v4 + 24);
        v10 = *(v4 + 32);
        *(v1 + 24) = 0;
        *(v1 + 32) = 0;
        *v3 = 0;
        sub_1DB3481B0(v8, v9, v10);
      }
    }

    os_unfair_lock_unlock((v1 + 40));
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB34E174()
{
  sub_1DB34FFFC(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

void ProcessAssertion.init(explanation:domain:name:)(void *a7@<X8>)
{
  v8 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C0, &qword_1DB511550);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB511420;
  v10 = sub_1DB50A620();

  v11 = sub_1DB50A620();

  v12 = [objc_opt_self() attributeWithDomain:v10 name:v11];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
  v14 = sub_1DB50A620();

  sub_1DB3483D0();
  v15 = sub_1DB50A980();

  v16 = [v13 initWithExplanation:v14 target:v8 attributes:v15];

  *a7 = v16;
  v17 = objc_allocWithZone(_JEAtomicCounter);
  v18 = v16;
  a7[1] = [v17 initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C8, qword_1DB511558);
  v19 = swift_allocObject();
  v20 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  a7[2] = v19;
  v23[4] = sub_1DB34841C;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1DB34EAE0;
  v23[3] = &block_descriptor_1;
  v22 = _Block_copy(v23);

  [v18 setInvalidationHandler_];
  _Block_release(v22);
}

void sub_1DB34E4A4(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB34FFDC((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EE30D460 = v2;
}

id sub_1DB34E58C()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = v0;
  if ([v1 isValid])
  {
    if (qword_1EE30D458 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE30D460;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DB50EE90;
    v29 = sub_1DB301BC0(0, 50, 0, MEMORY[0x1E69E7CC0]);
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    v5 = type metadata accessor for ProcessAssertion.JetRBSAssertion();
    v37 = v5;
    v36[0] = v1;
    sub_1DB30C4B8(v36, v32, &qword_1ECC426B0, &qword_1DB50EEB0);
    v33 = 0u;
    v34 = 0u;
    v6 = v1;
    sub_1DB301D4C(v32, &v33);
    v35 = 0;
    v7 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v33;
    v12 = v34;
    v10[64] = v35;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    sub_1DB30623C(v36, &qword_1ECC426B0, &qword_1DB50EEB0);
    v13._object = 0x80000001DB52A7E0;
    v13._countAndFlagsBits = 0xD000000000000031;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v3 + 32) = v7;
    *&v33 = v2;
    LOBYTE(v36[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v3, v36);

    *&v33 = 0;
    if ([v6 invalidateSyncWithError_])
    {
      v14 = v33;
    }

    else
    {
      v15 = v33;
      v16 = sub_1DB509B20();

      swift_willThrow();
      v17 = qword_1EE30D460;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v30 = sub_1DB301BC0(0, 64, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v37 = v5;
      v36[0] = v6;
      sub_1DB30C4B8(v36, v32, &qword_1ECC426B0, &qword_1DB50EEB0);
      v33 = 0u;
      v34 = 0u;
      v20 = v6;
      sub_1DB301D4C(v32, &v33);
      v35 = 0;
      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v33;
      v26 = v34;
      v24[64] = v35;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      sub_1DB30623C(v36, &qword_1ECC426B0, &qword_1DB50EEB0);
      v27._countAndFlagsBits = 0xD00000000000003FLL;
      v27._object = 0x80000001DB52A820;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      *(v18 + 32) = v21;
      *&v33 = v17;
      LOBYTE(v36[0]) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, v36);
    }
  }

  v31.receiver = v1;
  v31.super_class = type metadata accessor for ProcessAssertion.JetRBSAssertion();
  return objc_msgSendSuper2(&v31, sel_dealloc);
}

id sub_1DB34EA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  [v5 lock];
  sub_1DB473ABC(a3, a2);

  return [v5 unlock];
}

void sub_1DB34EAE0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void ProcessAssertion.init(interruptableTask:)(void *a3@<X8>)
{
  v4 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C0, &qword_1DB511550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB511420;
  v6 = sub_1DB50A620();
  v7 = sub_1DB50A620();
  v8 = [objc_opt_self() attributeWithDomain:v6 name:v7];

  *(v5 + 32) = v8;
  v9 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
  v10 = sub_1DB50A620();

  sub_1DB3483D0();
  v11 = sub_1DB50A980();

  v12 = [v9 initWithExplanation:v10 target:v4 attributes:v11];

  *a3 = v12;
  v13 = objc_allocWithZone(_JEAtomicCounter);
  v14 = v12;
  a3[1] = [v13 initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C8, qword_1DB511558);
  v15 = swift_allocObject();
  v16 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v17 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  a3[2] = v15;
  v19[4] = sub_1DB350110;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1DB34EAE0;
  v19[3] = &block_descriptor_4;
  v18 = _Block_copy(v19);

  [v14 setInvalidationHandler_];
  _Block_release(v18);
}

id ProcessAssertion.isAcquired.getter()
{
  v1 = *v0;
  if ([(_JEAtomicCounter *)*(v0 + 8) currentValue]< 1)
  {
    return 0;
  }

  else
  {
    return [v1 isValid];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessAssertion.acquire()()
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v1 = *(v0 + 8);
  if (qword_1EE30D458 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE30D460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v27 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = v2;
  sub_1DB50A600();
  sub_1DB34FEF0();
  v7 = sub_1DB50A840();
  v9 = v8;
  swift_getObjectType();
  *&v31 = sub_1DB50BEE0();
  *(&v31 + 1) = v10;
  MEMORY[0x1E1285C70](7876666, 0xE300000000000000);
  MEMORY[0x1E1285C70](v7, v9);

  v30 = MEMORY[0x1E69E6158];

  v29 = v31;
  v31 = 0u;
  v32 = 0u;
  sub_1DB301D4C(&v29, &v31);
  v33 = 0;
  v11 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v31;
  v16 = v32;
  v14[64] = v33;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v17._object = 0x80000001DB52A700;
  v17._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = [(_JEAtomicCounter *)v1 currentValue];
  v30 = MEMORY[0x1E69E6530];
  *&v29 = v18;
  sub_1DB30C4B8(&v29, v28, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31 = 0u;
  v32 = 0u;
  sub_1DB301D4C(v28, &v31);
  v33 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v11 + 2) + 1, 1, v11);
  }

  v20 = *(v11 + 2);
  v19 = *(v11 + 3);
  if (v20 >= v19 >> 1)
  {
    v11 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v11);
  }

  *(v11 + 2) = v20 + 1;
  v21 = &v11[40 * v20];
  v22 = v31;
  v23 = v32;
  v21[64] = v33;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  sub_1DB30623C(&v29, &qword_1ECC426B0, &qword_1DB50EEB0);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v4 + 32) = v11;
  *&v31 = v3;
  LOBYTE(v29) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v29);

  if (![v1 increment])
  {
    *&v31 = 0;
    if ([v6 acquireWithError_])
    {
      v25 = v31;
    }

    else
    {
      v26 = v31;
      sub_1DB509B20();

      swift_willThrow();
    }
  }
}

Swift::Bool __swiftcall ProcessAssertion.invalidate()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (qword_1EE30D458 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE30D460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v34 = sub_1DB301BC0(0, 39, 0, MEMORY[0x1E69E7CC0]);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = v2;
  sub_1DB50A600();
  sub_1DB34FEF0();
  v7 = sub_1DB50A840();
  v9 = v8;
  swift_getObjectType();
  *&v31 = sub_1DB50BEE0();
  *(&v31 + 1) = v10;
  MEMORY[0x1E1285C70](7876666, 0xE300000000000000);
  MEMORY[0x1E1285C70](v7, v9);

  v30 = MEMORY[0x1E69E6158];

  v29 = v31;
  v31 = 0u;
  v32 = 0u;
  sub_1DB301D4C(&v29, &v31);
  v33 = 0;
  v11 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v31;
  v16 = v32;
  v14[64] = v33;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v34 = v11;
  v17._object = 0x80000001DB52A730;
  v17._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = [(_JEAtomicCounter *)v1 currentValue];
  v30 = MEMORY[0x1E69E6530];
  *&v29 = v18;
  sub_1DB30C4B8(&v29, v28, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31 = 0u;
  v32 = 0u;
  sub_1DB301D4C(v28, &v31);
  v33 = 0;
  v19 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    v34 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v31;
  v24 = v32;
  v22[64] = v33;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v34 = v19;
  sub_1DB30623C(&v29, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v4 + 32) = v34;
  *&v31 = v3;
  LOBYTE(v29) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v29);

  v26 = [v1 decrement];
  if (v26 == 1)
  {
    [v6 invalidate];
  }

  return v26 == 1;
}

__n128 sub_1DB34F5B8(uint64_t *a1, void (*a2)(_OWORD *__return_ptr))
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 1);
  }

  else
  {
    a2(v33);
    v3 = *&v33[0];
    v4 = *(v33 + 8);
  }

  v32 = v4;
  *&v33[0] = v3;
  *(v33 + 8) = v4;
  ProcessAssertion.acquire()();
  if (v5)
  {
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50F8D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB50EE90;
    *(&v33[1] + 1) = MEMORY[0x1E69E6158];
    *&v33[0] = 0xD000000000000030;
    *(&v33[0] + 1) = 0x80000001DB52A860;
    *(v8 + 48) = 0u;
    *(v8 + 32) = 0u;
    sub_1DB301D4C(v33, v8 + 32);
    *(v8 + 64) = 0;
    *(v7 + 32) = v8;
    v43 = sub_1DB301BC0(0, 9, 0, MEMORY[0x1E69E7CC0]);
    v9._countAndFlagsBits = 0x203A6E6F73616572;
    v9._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    swift_getErrorValue();
    v10 = v41;
    v11 = v42;
    v38 = v42;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
    (*(v11[-1].Description + 2))(boxed_opaque_existential_0, v10, v11);
    sub_1DB30C4B8(v37, v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    memset(v33, 0, sizeof(v33));
    sub_1DB301D4C(v40, v33);
    v34 = 0;
    v13 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
      v43 = v13;
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v33[0];
    v18 = v33[1];
    v16[64] = v34;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v43 = v13;
    sub_1DB30623C(v37, &qword_1ECC426B0, &qword_1DB50EEB0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 40) = v43;
    *&v33[0] = v6;
    LOBYTE(v37[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v7, v37);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43538, &qword_1DB511AA0);
    v20 = swift_allocObject();
    v38 = &type metadata for SyncTaskScheduler;
    v39 = &protocol witness table for SyncTaskScheduler;
    sub_1DB30BE90(v37, v33);
    v35 = sub_1DB34FAC0;
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43540, &qword_1DB511AA8);
    v21 = swift_allocObject();
    *(v21 + 72) = 0;
    __swift_destroy_boxed_opaque_existential_0(v37);
    sub_1DB30C4B8(v33, v21 + 16, &qword_1ECC43548, &qword_1DB511AB0);
    sub_1DB30623C(v33, &qword_1ECC43548, &qword_1DB511AB0);
    *(v20 + 16) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43550, &qword_1DB511AB8);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v23 = *(v32.n128_u64[1] + 16);

    [v23 lock];
    swift_beginAccess();
    v24 = *(v32.n128_u64[1] + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32.n128_u64[1] + 24) = v24;
    v31 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = v24[2];

      v30 = sub_1DB302BF8(0, v29 + 1, 1, v24);
      *(v32.n128_u64[1] + 24) = v30;

      v24 = v30;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1DB302BF8((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v24[v27 + 4] = v22;
    *(v32.n128_u64[1] + 24) = v24;
    swift_endAccess();

    [v23 unlock];

    v3 = v31;
  }

  *a1 = v3;
  result = v32;
  *(a1 + 1) = v32;
  return result;
}

uint64_t sub_1DB34FAC0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1ECC42218 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50F8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v5 = MEMORY[0x1E69E6158];
  *(&v27 + 1) = MEMORY[0x1E69E6158];
  *&v26 = 0xD00000000000002DLL;
  *(&v26 + 1) = 0x80000001DB52A8A0;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  sub_1DB301D4C(&v26, v4 + 32);
  *(v4 + 64) = 0;
  *(v3 + 32) = v4;
  v31 = sub_1DB301BC0(0, 20, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52A8D0;
  v6._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v1)
  {
    swift_getErrorValue();
    *(&v30 + 1) = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  sub_1DB30C4B8(&v29, v25, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26 = 0u;
  v27 = 0u;
  sub_1DB301D4C(v25, &v26);
  v28 = 0;
  v8 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v26;
  v13 = v27;
  v11[64] = v28;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v31 = v8;
  sub_1DB30623C(&v29, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 40) = v31;
  v15 = sub_1DB50AF40();
  if (os_log_type_enabled(v2, v15))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v16 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v16 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v26 = v3;
    *(&v26 + 1) = sub_1DB31485C;
    *&v27 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v19 = sub_1DB50A5E0();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    *(v22 + 56) = v5;
    *(v22 + 64) = sub_1DB31494C();
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v2, v15, v22);
  }
}

unint64_t sub_1DB34FEF0()
{
  result = qword_1EE30C868;
  if (!qword_1EE30C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C868);
  }

  return result;
}

uint64_t sub_1DB34FF44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB34FF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DB34FFFC(uint64_t a1)
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if ((byte_1EE30E198 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 40));
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 24);
      v4 = v2;
      v5 = v3;

      LOBYTE(v3) = ProcessAssertion.invalidate()();

      if (v3)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        sub_1DB3481B0(v6, v7, v8);
      }
    }

    os_unfair_lock_unlock((a1 + 40));
  }
}

uint64_t Optional<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1DB50B120();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-1] - v13;
  v15 = *a2;
  sub_1DB330D60(a1, v20);
  if (!v21)
  {

    sub_1DB330DD0(v20);
    goto LABEL_5;
  }

  v16 = __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_1DB300B14(v16, v19);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v20);

LABEL_5:
    sub_1DB3151CC(a1);
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  __swift_destroy_boxed_opaque_existential_0(v20);
  sub_1DB3171C0(a1, v20);
  v19[0] = v15;
  (*(a4 + 8))(v20, v19, a3, a4);
  result = sub_1DB3151CC(a1);
  if (!v5)
  {
    (*(*(a3 - 8) + 56))(v14, 0, 1, a3);
    return (*(v12 + 32))(a5, v14, v11);
  }

  return result;
}

unint64_t sub_1DB350378(uint64_t a1)
{
  if (*(v1 + 40))
  {
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v3 = v56;
    v4 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    v54 = sub_1DB301BC0(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001DB52A9C0;
    v6._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v53 = MEMORY[0x1E69E6530];
    v52[0] = a1;
    sub_1DB301CDC(v52, v48);
    v49 = 0u;
    v50 = 0u;
    sub_1DB301D4C(v48, &v49);
    v51 = 0;
    v7 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v49;
    v12 = v50;
    v10[64] = v51;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    v54 = v7;
    sub_1DB301DBC(v52);
    v13 = "eted with success, label: ";
    v14 = 0xD000000000000023;
LABEL_18:
    v24 = v13 | 0x8000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(*&v14);
    *(v5 + 32) = v54;
    Logger.error(_:)(v5, v3, v4);

    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  v15 = v1;
  if (*(*(v1 + 16) + 16))
  {
    sub_1DB30EE50(a1);
    if (v16)
    {
      if (qword_1EE30C900 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v3 = v56;
      v4 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DB50EE90;
      v54 = sub_1DB301BC0(0, 64, 0, MEMORY[0x1E69E7CC0]);
      v17._object = 0x80000001DB52A9C0;
      v17._countAndFlagsBits = 0xD000000000000019;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      v53 = MEMORY[0x1E69E6530];
      v52[0] = a1;
      sub_1DB301CDC(v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1DB301D4C(v48, &v49);
      v51 = 0;
      v18 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[40 * v20];
      v22 = v49;
      v23 = v50;
      v21[64] = v51;
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      v54 = v18;
      sub_1DB301DBC(v52);
      v13 = "Cannot activate activity ";
      v14 = 0xD000000000000026;
      goto LABEL_18;
    }
  }

  sub_1DB50A3E0();
  v26 = sub_1DB50A3B0();

  sub_1DB50A390();
  sub_1DB50A3C0();
  if (qword_1EE30C900 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v27 = v56;
  v28 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DB50EE90;
  v54 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v30._countAndFlagsBits = 0xD000000000000022;
  v30._object = 0x80000001DB52A990;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  v53 = MEMORY[0x1E69E6530];
  v52[0] = a1;
  sub_1DB301CDC(v52, v48);
  v49 = 0u;
  v50 = 0u;
  sub_1DB301D4C(v48, &v49);
  v51 = 0;
  v31 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = v49;
  v36 = v50;
  v34[64] = v51;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v54 = v31;
  sub_1DB301DBC(v52);
  v37._countAndFlagsBits = 0x74617265706F202CLL;
  v37._object = 0xEF203A44496E6F69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v15[3];
  v39 = v15[4];
  v53 = MEMORY[0x1E69E6158];
  v52[0] = v38;
  v52[1] = v39;
  sub_1DB301CDC(v52, v48);
  v49 = 0u;
  v50 = 0u;

  sub_1DB301D4C(v48, &v49);
  v51 = 0;
  v40 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_1DB301BC0(0, *(v40 + 2) + 1, 1, v40);
    v54 = v40;
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_1DB301BC0((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v43 = &v40[40 * v42];
  v44 = v49;
  v45 = v50;
  v43[64] = v51;
  *(v43 + 2) = v44;
  *(v43 + 3) = v45;
  v54 = v40;
  sub_1DB301DBC(v52);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  *(v29 + 32) = v54;
  Logger.debug(_:)(v29, v27, v28);

  __swift_destroy_boxed_opaque_existential_0(v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v15[2];
  result = sub_1DB31D878(v26, a1, isUniquelyReferenced_nonNull_native);
  v15[2] = v55[0];
  return result;
}

uint64_t sub_1DB350A48(uint64_t a1)
{
  v3 = sub_1DB50A3A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 40))
  {
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB50EE90;
    v58 = sub_1DB301BC0(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001DB52A8F0;
    v11._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v57 = MEMORY[0x1E69E6530];
    v56[0] = a1;
    sub_1DB301CDC(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1DB301D4C(v52, &v53);
    v55 = 0;
    v12 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DB301BC0(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v53;
    v17 = v54;
    v15[64] = v55;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v58 = v12;
    sub_1DB301DBC(v56);
    v18 = "eted with success, label: ";
    v19 = 0xD000000000000023;
LABEL_29:
    v50 = v18 | 0x8000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(*&v19);
    *(v10 + 32) = v58;
    Logger.error(_:)(v10, v8, v9);

    return __swift_destroy_boxed_opaque_existential_0(v59);
  }

  v20 = v1;
  if (!*(*(v1 + 16) + 16) || (v21 = v5, sub_1DB30EE50(a1), (v22 & 1) == 0))
  {
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB50EE90;
    v58 = sub_1DB301BC0(0, 55, 0, MEMORY[0x1E69E7CC0]);
    v43._object = 0x80000001DB52A8F0;
    v43._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    v57 = MEMORY[0x1E69E6530];
    v56[0] = a1;
    sub_1DB301CDC(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1DB301D4C(v52, &v53);
    v55 = 0;
    v44 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1DB301BC0(0, *(v44 + 2) + 1, 1, v44);
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1DB301BC0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[40 * v46];
    v48 = v53;
    v49 = v54;
    v47[64] = v55;
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    v58 = v44;
    sub_1DB301DBC(v56);
    v18 = "Cannot complete activity ";
    v19 = 0xD00000000000001DLL;
    goto LABEL_29;
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E6977AC8], v21);

  sub_1DB50A3D0();
  (*(v4 + 8))(v7, v21);
  sub_1DB30FB48(a1);

  if (qword_1EE30C900 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v23 = v60;
  v24 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DB50EE90;
  v58 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v26._object = 0x80000001DB52A930;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v57 = MEMORY[0x1E69E6530];
  v56[0] = a1;
  sub_1DB301CDC(v56, v52);
  v53 = 0u;
  v54 = 0u;
  sub_1DB301D4C(v52, &v53);
  v55 = 0;
  v27 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[40 * v29];
  v31 = v53;
  v32 = v54;
  v30[64] = v55;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  v58 = v27;
  sub_1DB301DBC(v56);
  v33._countAndFlagsBits = 0x74617265706F202CLL;
  v33._object = 0xEF203A44496E6F69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  v34 = *(v20 + 24);
  v35 = *(v20 + 32);
  v57 = MEMORY[0x1E69E6158];
  v56[0] = v34;
  v56[1] = v35;
  sub_1DB301CDC(v56, v52);
  v53 = 0u;
  v54 = 0u;

  sub_1DB301D4C(v52, &v53);
  v55 = 0;
  v36 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
    v58 = v36;
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[40 * v38];
  v40 = v53;
  v41 = v54;
  v39[64] = v55;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  v58 = v36;
  sub_1DB301DBC(v56);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  *(v25 + 32) = v58;
  Logger.debug(_:)(v25, v23, v24);

  return __swift_destroy_boxed_opaque_existential_0(v59);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB3511B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB351200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AsyncObjectGraphError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    v4 = *(v1 + 32);
    swift_getErrorValue();
    v5 = v4;
    v3 = sub_1DB50BC80();
  }

  else if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DB34130C(0, v2, 0);
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      swift_getErrorValue();
      v8 = v7;
      v9 = sub_1DB50BC80();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DB34130C((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v6;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
    sub_1DB330B04();
    v3 = sub_1DB50A5E0();
  }

  else
  {
    return 0xD000000000000036;
  }

  return v3;
}

unint64_t AsyncObjectGraphError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    v6 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v10 = sub_1DB3135C0(inited);
    swift_setDeallocating();
    sub_1DB351638(v6);
    return v10;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    v6 = inited + 32;
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43558, &unk_1DB511B80);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1DB3135C0(v3);
}

uint64_t sub_1DB3515C0(uint64_t a1)
{
  v2 = sub_1DB351704();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB3515FC(uint64_t a1)
{
  v2 = sub_1DB351704();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DB351638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB3516A0()
{
  result = qword_1ECC44FB0;
  if (!qword_1ECC44FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44FB0);
  }

  return result;
}

unint64_t sub_1DB351704()
{
  result = qword_1ECC43560;
  if (!qword_1ECC43560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43560);
  }

  return result;
}

uint64_t NativeIntentDispatcher.Configuration.init(cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30C4B8(a1, &v7, &qword_1ECC43568, &unk_1DB511CA0);
  if (v8)
  {
    sub_1DB30623C(a1, &qword_1ECC43568, &unk_1DB511CA0);
    sub_1DB2FEA0C(&v7, &v9);
  }

  else
  {
    v4 = type metadata accessor for NoOpIntentCache();
    v5 = swift_allocObject();
    v10 = v4;
    v11 = &off_1F56FA310;
    *&v9 = v5;
    sub_1DB30623C(a1, &qword_1ECC43568, &unk_1DB511CA0);
    if (v8)
    {
      sub_1DB30623C(&v7, &qword_1ECC43568, &unk_1DB511CA0);
    }
  }

  return sub_1DB2FEA0C(&v9, a2);
}

uint64_t NativeIntentDispatcher.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v2 = (a1 + 40);
  sub_1DB30623C(a1 + 40, &qword_1ECC43570, &qword_1DB521A80);
  *v2 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *a1 = sub_1DB313CA0(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for NoOpIntentCache();
  result = swift_allocObject();
  *(a1 + 32) = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t NativeIntentDispatcher.init(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = (a2 + 40);
  sub_1DB30623C(a2 + 40, &qword_1ECC43570, &qword_1DB521A80);
  *v4 = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *a2 = sub_1DB313CA0(MEMORY[0x1E69E7CC0]);
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  *(a2 + 32) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 8));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);

  return sub_1DB356160(a1);
}

uint64_t NativeIntentDispatcher.withNext(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB356190(v2, a2);
  sub_1DB30C4B8(a1, v6, &qword_1ECC43570, &qword_1DB521A80);
  return sub_1DB30C2D8(v6, a2 + 40, &qword_1ECC43570, &qword_1DB521A80);
}

uint64_t NativeIntentDispatcher.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  v8 = v7;
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  return sub_1DB30D7A0(v11, v6, v8);
}

uint64_t NativeIntentDispatcher.register(contentsOf:)(uint64_t *a1)
{
  v2 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  sub_1DB3561C8(v2, sub_1DB356114, 0, isUniquelyReferenced_nonNull_native, &v5);

  *v1 = v5;
  return result;
}

uint64_t NativeIntentDispatcher.registering(contentsOf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DB356190(v2, a2);
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a2;
  sub_1DB3561C8(v5, sub_1DB356114, 0, isUniquelyReferenced_nonNull_native, &v8);

  *a2 = v8;
  return result;
}

uint64_t NativeIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB351CF0, 0, 0);
}

uint64_t sub_1DB351CF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v1[3] = &type metadata for NativeIntentDispatcher;
  v1[4] = &protocol witness table for NativeIntentDispatcher;
  v3 = swift_allocObject();
  *v1 = v3;
  sub_1DB356190(v2, v3 + 16);
  v4 = v0[1];

  return v4();
}

uint64_t NativeIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v10 = type metadata accessor for IntentOutcome(0, AssociatedTypeWitness, v8, v9);
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = *(AssociatedTypeWitness - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB351EEC, 0, 0);
}

uint64_t sub_1DB351EEC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  sub_1DB352534(v0[5], v0[6], v1);
  v4 = *(v2 + 48);
  v0[16] = v4;
  v0[17] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v8 = *(v7 + 8);
    v0[18] = v8;
    v0[19] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_1DB3520A8;
    v10 = v0[11];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return sub_1DB3526E0(v10, v14, v12, v13, v11);
  }

  else
  {
    v16 = v0[15];
    v17 = v0[8];
    v18 = v0[2];
    v19 = *(v0[13] + 32);
    v19(v16, v0[12], v17);
    v19(v18, v16, v17);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1DB3520A8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DB3524AC;
  }

  else
  {
    v2 = sub_1DB3521BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3521BC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if ((*(v0 + 128))(v1, 1, v2) == 1)
  {
    (*(v0 + 144))(v1, *(v0 + 72));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_1DB352338;
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    return sub_1DB352B10(v7, v8, v5, v6, v4);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 16);
    v12 = *(*(v0 + 104) + 32);
    v12(v10, v1, v2);
    v12(v11, v10, v2);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1DB352338()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB3524AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB352534@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  static StaticIntent._unwrapData<A>(of:)(AssociatedTypeWitness, a2, a3, &v15 - v10);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = 1;
  }

  else
  {
    (*(v12 + 32))(a4, v11, AssociatedTypeWitness);
    v13 = 0;
  }

  return (*(v12 + 56))(a4, v13, 1, AssociatedTypeWitness);
}

uint64_t sub_1DB3526E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB352708, 0, 0);
}

uint64_t sub_1DB352708()
{
  v1 = **(v0 + 176);
  (*(*(v0 + 168) + 40))(*(v0 + 160));
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (*(v1 + 16))
  {
    v6 = sub_1DB306160(v4, v5);
    v8 = v7;

    if (v8)
    {
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      v22 = *(v0 + 144);
      sub_1DB30BE90(*(v1 + 56) + 40 * v6, v0 + 96);
      sub_1DB2FEA0C((v0 + 96), v0 + 16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      v11 = swift_task_alloc();
      *(v0 + 184) = v11;
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      *(v11 + 32) = v0 + 16;
      *(v11 + 40) = v22;
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v16 = type metadata accessor for IntentOutcome(0, AssociatedTypeWitness, v14, v15);
      *v12 = v0;
      v12[1] = sub_1DB352988;
      v17 = *(v0 + 136);

      return sub_1DB40CD74(v17, &unk_1DB511DF8, v11, v16);
    }
  }

  else
  {
  }

  v19 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v20 = swift_getAssociatedTypeWitness();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DB352988()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1DB352AA4;
  }

  else
  {

    v2 = sub_1DB356818;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB352AA4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB352B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB352B38, 0, 0);
}

uint64_t sub_1DB352B38()
{
  sub_1DB30C4B8(*(v0 + 136) + 40, v0 + 56, &qword_1ECC43570, &qword_1DB521A80);
  if (*(v0 + 80))
  {
    sub_1DB2FEA0C((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v12 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1DB352D18;
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    return v12(v8, v6, v7, v4, v5, v1, v2);
  }

  else
  {
    sub_1DB30623C(v0 + 56, &qword_1ECC43570, &qword_1DB521A80);
    sub_1DB3566FC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1DB352D18()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1DB352E90;
  }

  else
  {
    v2 = sub_1DB352E2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB352E2C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB352E90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = v6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  *(v7 + 57) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB352F24, 0, 0);
}

uint64_t sub_1DB352F24()
{
  v1 = *(v0 + 57);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1DB352FE0;
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(v6, v7, v4, v0 + 16, v5, v3);
}

uint64_t sub_1DB352FE0()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  sub_1DB3564E4(v2 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB35311C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[51] = a6;
  v7[52] = v6;
  v7[49] = a4;
  v7[50] = a5;
  v7[47] = a2;
  v7[48] = a3;
  v7[46] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[53] = AssociatedTypeWitness;
  v9 = sub_1DB50B120();
  v7[54] = v9;
  v7[55] = *(v9 - 8);
  v7[56] = swift_task_alloc();
  v12 = type metadata accessor for IntentOutcome(0, AssociatedTypeWitness, v10, v11);
  v7[57] = v12;
  v7[58] = *(v12 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = *(AssociatedTypeWitness - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3532EC, 0, 0);
}

uint64_t sub_1DB3532EC()
{
  sub_1DB300B14(*(v0 + 416) + 8, v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43578, &qword_1DB511CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43580, &qword_1DB511CE8);
  if (!swift_dynamicCast())
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1DB30623C(v0 + 56, &qword_1ECC43568, &unk_1DB511CA0);
    sub_1DB3CCFE8("JetCore/NativeIntentDispatcher.swift", 0x24uLL, 2, 0xC8uLL);
    return sub_1DB50B580();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  sub_1DB2FEA0C((v0 + 56), v0 + 16);
  v7 = *(v6 + 40);
  sub_1DB352534(v5, v4, v1);
  v8 = *(v2 + 48);
  *(v0 + 504) = v8;
  *(v0 + 512) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v1, 1, v3) == 1)
  {
    v9 = *(v0 + 392);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_1DB30C4B8(v9, v0 + 136, &qword_1ECC43588, &qword_1DB511CF0);
    if (*(v0 + 160))
    {
      sub_1DB2FEA0C((v0 + 136), v0 + 96);
    }

    else
    {
      sub_1DB38CDC8(*(v0 + 400), *(v0 + 408), v0 + 96);
      if (*(v0 + 160))
      {
        sub_1DB30623C(v0 + 136, &qword_1ECC43588, &qword_1DB511CF0);
      }
    }

    sub_1DB30C4B8(v0 + 96, v0 + 216, &qword_1ECC43588, &qword_1DB511CF0);
    if (!*(v0 + 240))
    {
      sub_1DB30623C(v0 + 216, &qword_1ECC43588, &qword_1DB511CF0);
LABEL_15:
      sub_1DB30C4B8(v0 + 96, v0 + 296, &qword_1ECC43588, &qword_1DB511CF0);
      if (*(v0 + 320))
      {
        v16 = *(v0 + 416);
        v17 = *(v0 + 392);
        v36 = *(v0 + 400);
        v37 = *(v0 + 376);
        sub_1DB2FEA0C((v0 + 296), v0 + 256);
        v18 = *(v0 + 40);
        v19 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
        v20 = swift_task_alloc();
        *(v0 + 536) = v20;
        *(v20 + 16) = v36;
        *(v20 + 32) = v16;
        *(v20 + 40) = v37;
        *(v20 + 56) = v17;
        v38 = (*(v19 + 16) + **(v19 + 16));
        v21 = swift_task_alloc();
        *(v0 + 544) = v21;
        *v21 = v0;
        v21[1] = sub_1DB353E00;
        v22 = *(v0 + 424);
        v23 = *(v0 + 368);

        return v38(v23, v0 + 256, &unk_1DB511D08, v20, v22, v18, v19);
      }

      else
      {
        sub_1DB30623C(v0 + 296, &qword_1ECC43588, &qword_1DB511CF0);
        v29 = swift_task_alloc();
        *(v0 + 560) = v29;
        *v29 = v0;
        v29[1] = sub_1DB353FE8;
        v30 = *(v0 + 408);
        v31 = *(v0 + 392);
        v32 = *(v0 + 400);
        v33 = *(v0 + 376);
        v34 = *(v0 + 384);
        v35 = *(v0 + 368);

        return sub_1DB3543E4(v35, v33, v34, v31, v32, v30);
      }
    }

    sub_1DB2FEA0C((v0 + 216), v0 + 176);
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      goto LABEL_15;
    }

    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
    v39 = (*(v25 + 8) + **(v25 + 8));
    v26 = swift_task_alloc();
    *(v0 + 520) = v26;
    *v26 = v0;
    v26[1] = sub_1DB353970;
    v27 = *(v0 + 448);
    v28 = *(v0 + 424);

    return v39(v27, v0 + 176, v28, v24, v25);
  }

  else
  {
    v11 = *(v0 + 496);
    v12 = *(v0 + 424);
    v13 = *(v0 + 368);
    v14 = *(*(v0 + 480) + 32);
    v14(v11, *(v0 + 472), v12);
    v14(v13, v11, v12);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1DB353970()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1DB3541AC;
  }

  else
  {
    v2 = sub_1DB353A84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB353A84()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  if (v1(v2, 1, v3) == 1)
  {
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    sub_1DB30C4B8(v0 + 96, v0 + 296, &qword_1ECC43588, &qword_1DB511CF0);
    if (*(v0 + 320))
    {
      v4 = *(v0 + 416);
      v5 = *(v0 + 392);
      v27 = *(v0 + 400);
      v28 = *(v0 + 376);
      sub_1DB2FEA0C((v0 + 296), v0 + 256);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v8 = swift_task_alloc();
      *(v0 + 536) = v8;
      *(v8 + 16) = v27;
      *(v8 + 32) = v4;
      *(v8 + 40) = v28;
      *(v8 + 56) = v5;
      v29 = (*(v7 + 16) + **(v7 + 16));
      v9 = swift_task_alloc();
      *(v0 + 544) = v9;
      *v9 = v0;
      v9[1] = sub_1DB353E00;
      v10 = *(v0 + 424);
      v11 = *(v0 + 368);

      return v29(v11, v0 + 256, &unk_1DB511D08, v8, v10, v6, v7);
    }

    else
    {
      sub_1DB30623C(v0 + 296, &qword_1ECC43588, &qword_1DB511CF0);
      v20 = swift_task_alloc();
      *(v0 + 560) = v20;
      *v20 = v0;
      v20[1] = sub_1DB353FE8;
      v21 = *(v0 + 408);
      v22 = *(v0 + 392);
      v23 = *(v0 + 400);
      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = *(v0 + 368);

      return sub_1DB3543E4(v26, v24, v25, v22, v23, v21);
    }
  }

  else
  {
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v15 = *(v0 + 448);
    v16 = *(v0 + 424);
    v17 = *(v0 + 368);
    sub_1DB30623C(v0 + 96, &qword_1ECC43588, &qword_1DB511CF0);
    v18 = *(v14 + 32);
    v18(v13, v15, v16);
    v18(v17, v13, v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1DB353E00()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1DB354324;
  }

  else
  {
    v2 = sub_1DB353F30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB353F30()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_1DB30623C((v0 + 12), &qword_1ECC43588, &qword_1DB511CF0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB353FE8()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_1DB35426C;
  }

  else
  {
    v2 = sub_1DB3540FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3540FC()
{
  sub_1DB30623C(v0 + 96, &qword_1ECC43588, &qword_1DB511CF0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3541AC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_1DB30623C((v0 + 12), &qword_1ECC43588, &qword_1DB511CF0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB35426C()
{
  sub_1DB30623C(v0 + 96, &qword_1ECC43588, &qword_1DB511CF0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB354324()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_1DB30623C((v0 + 12), &qword_1ECC43588, &qword_1DB511CF0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB3543E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v7[10] = *(AssociatedTypeWitness - 8);
  v7[11] = swift_task_alloc();
  v15 = type metadata accessor for IntentOutcome(0, AssociatedTypeWitness, v13, v14);
  v7[12] = v15;
  v7[13] = *(v15 - 8);
  v16 = swift_task_alloc();
  v7[14] = v16;
  v17 = swift_task_alloc();
  v7[15] = v17;
  *v17 = v7;
  v17[1] = sub_1DB354598;

  return sub_1DB3526E0(v16, a2, a3, a5, a6);
}

uint64_t sub_1DB354598()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1DB3549A8;
  }

  else
  {
    v2 = sub_1DB3546AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3546AC()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v1, v0[12]);
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1DB354804;
    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];

    return sub_1DB355A80(v5, v9, v10, v7, v8, v6);
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DB354804()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DB354A18;
  }

  else
  {
    v2 = sub_1DB354918;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB354918()
{
  (*(v0[10] + 32))(v0[2], v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB3549A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB354A18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB354A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DB306AF4;

  return sub_1DB3543E4(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1DB354B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB354B90, 0, 0);
}

uint64_t sub_1DB354B90()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1DB354C54;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_1DB354D48(v9, v7, v8, v3, v5, v2, v6);
}

uint64_t sub_1DB354C54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB354D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[40] = a7;
  v8[41] = v7;
  v8[38] = a5;
  v8[39] = a6;
  v8[36] = a3;
  v8[37] = a4;
  v8[34] = a1;
  v8[35] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[42] = AssociatedTypeWitness;
  v8[43] = type metadata accessor for IntentOutcome(255, AssociatedTypeWitness, v10, v11);
  v12 = sub_1DB50B120();
  v8[44] = v12;
  v8[45] = *(v12 - 8);
  v8[46] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[47] = v13;
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for IntentOutcome(0, v14, v15, v16);
  v8[48] = v17;
  v8[49] = *(v17 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v18 = sub_1DB50B120();
  v8[52] = v18;
  v8[53] = *(v18 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = *(v13 - 8);
  v8[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB354FE8, 0, 0);
}

uint64_t sub_1DB354FE8()
{
  v43 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  (*(*(v0 + 320) + 40))(*(v0 + 304));
  *(v0 + 264) = v2;
  swift_getExtendedExistentialTypeMetadata();
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);
    v8 = *(v0 + 376);
    v40 = *(v0 + 312);
    v4(v7, 0, 1, v8);
    (*(v6 + 32))(v5, v7, v8);
    v39 = (*(v40 + 32) + **(v40 + 32));
    v9 = swift_task_alloc();
    *(v0 + 456) = v9;
    *v9 = v0;
    v9[1] = sub_1DB3555C4;
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    v12 = *(v0 + 312);
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);

    return v39(v11, v10, v13, v14, v12);
  }

  else
  {
    v17 = *(v0 + 424);
    v16 = *(v0 + 432);
    v18 = *(v0 + 416);
    v4(v16, 1, 1, *(v0 + 376));
    (*(v17 + 8))(v16, v18);
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    v41 = sub_1DB301BC0(0, 50, 0, MEMORY[0x1E69E7CC0]);
    v20._countAndFlagsBits = 0x7420746E65746E49;
    v20._object = 0xED00006020657079;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    DynamicType = swift_getDynamicType();
    *(v0 + 160) = swift_getMetatypeMetadata();
    *(v0 + 136) = DynamicType;
    sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1DB30C2D8(v0 + 168, v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 88) = 0;
    v22 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DB301BC0(0, *(v41 + 2) + 1, 1, v41);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
    }

    v25 = *(v0 + 376);
    *(v22 + 2) = v24 + 1;
    v26 = &v22[40 * v24];
    v27 = *(v0 + 56);
    v28 = *(v0 + 72);
    v26[64] = *(v0 + 88);
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
    v29._object = 0x80000001DB52AAA0;
    v29._countAndFlagsBits = 0xD000000000000022;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v0 + 224) = swift_getMetatypeMetadata();
    *(v0 + 200) = v25;
    sub_1DB30C4B8(v0 + 200, v0 + 232, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_1DB30C2D8(v0 + 232, v0 + 96, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 128) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
    }

    v31 = *(v22 + 2);
    v30 = *(v22 + 3);
    if (v31 >= v30 >> 1)
    {
      v22 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v22);
    }

    v32 = *(v0 + 336);
    v33 = *(v0 + 272);
    *(v22 + 2) = v31 + 1;
    v34 = &v22[40 * v31];
    v35 = *(v0 + 96);
    v36 = *(v0 + 112);
    v34[64] = *(v0 + 128);
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    sub_1DB30623C(v0 + 200, &qword_1ECC426B0, &qword_1DB50EEB0);
    v37._countAndFlagsBits = 96;
    v37._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v19 + 32) = v22;
    v42 = 0;
    OSLogger.log(contentsOf:withLevel:)(v19, &v42);

    (*(*(v32 - 8) + 56))(v33, 1, 1, v32);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1DB3555C4()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1DB3559C8;
  }

  else
  {
    v2 = sub_1DB3556D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3556D8()
{
  (*(v0[49] + 16))(v0[50], v0[51], v0[48]);
  if (swift_dynamicCast())
  {
    v2 = v0[55];
    v1 = v0[56];
    v4 = v0[46];
    v3 = v0[47];
    v5 = v0[43];
    v6 = v0[34];
    (*(v0[49] + 8))(v0[51], v0[48]);
    (*(v2 + 8))(v1, v3);
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, 0, 1, v5);
    (*(v7 + 32))(v6, v4, v5);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[45];
    v10 = v0[46];
    v12 = v0[44];
    (*(*(v0[43] - 8) + 56))(v10, 1, 1, v0[43]);
    (*(v11 + 8))(v10, v12);
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52AAD0);
    v13 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v13);

    MEMORY[0x1E1285C70](0xD000000000000029, 0x80000001DB52AAF0);
    v14 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v14);

    MEMORY[0x1E1285C70](96, 0xE100000000000000);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB3559C8()
{
  (*(v0[55] + 8))(v0[56], v0[47]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB355A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB355AAC, 0, 0);
}

uint64_t sub_1DB355AAC()
{
  sub_1DB30C4B8(*(v0 + 144) + 40, v0 + 56, &qword_1ECC43570, &qword_1DB521A80);
  if (*(v0 + 80))
  {
    sub_1DB2FEA0C((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v13 = (*(v2 + 32) + **(v2 + 32));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_1DB355C8C;
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    return v13(v8, v9, v6, v7, v4, v5, v1, v2);
  }

  else
  {
    sub_1DB30623C(v0 + 56, &qword_1ECC43570, &qword_1DB521A80);
    sub_1DB3566FC();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1DB355C8C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DB355DA0;
  }

  else
  {
    v2 = sub_1DB356818;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB355DA0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB355E04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB30C7A0;

  return NativeIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1);
}

uint64_t sub_1DB355E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB30C7A0;

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB355F64(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DB30C7A0;

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DB35603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DB30C7A0;

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DB356114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1DB30BE90((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_1DB3561C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_1DB3AFA98(&v43);
  v12 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1DB2FEA0C(v45, v42);
  v14 = *a5;
  result = sub_1DB306160(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1DB31B1F0(v20, a4 & 1);
    result = sub_1DB306160(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1DB3123D8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 40 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1DB2FEA0C(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1DB2FEA0C(v42, v23[7] + 40 * result);
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1DB3AFA98(&v43);
    v12 = v44;
    if (v44)
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1DB2FEA0C(v45, v42);
        v32 = *a5;
        result = sub_1DB306160(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1DB31B1F0(v36, 1);
          result = sub_1DB306160(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 40 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_1DB2FEA0C(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1DB2FEA0C(v42, v38[7] + 40 * result);
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1DB3AFA98(&v43);
        v12 = v44;
      }

      while (v44);
    }

LABEL_25:
    sub_1DB2FEA60(v46);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DB356538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB354A88(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_7JetCore16IntentDispatcher_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DB356640(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB356688(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DB3566FC()
{
  result = qword_1ECC43590;
  if (!qword_1ECC43590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43590);
  }

  return result;
}

uint64_t sub_1DB356750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB354B68(a1, v6, v7, v8, v4, v5);
}

uint64_t MetricsEmitter.Event.fieldName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsEmitter.Event.operationId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 MetricsEmitter.Event.eventTime.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

void sub_1DB356888()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    os_variant_has_internal_content();
  }

  qword_1ECC43598 = 1;
}

uint64_t static MetricsEmitter.emitterConfig.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC42040 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ECC43598;
  *a1 = qword_1ECC43598;

  return sub_1DB356980(v2);
}

uint64_t sub_1DB356980(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1DB356990()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43608, &qword_1DB511F08);
  swift_allocObject();
  result = sub_1DB3ADCE4();
  qword_1ECC435A0 = result;
  return result;
}

uint64_t static MetricsEmitter.eventStream.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435D0, &qword_1DB511E10);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  if (qword_1ECC42048 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1DB50AC40();
}

void sub_1DB356B1C()
{
  v0 = sub_1DB50A620();
  v1 = NSClassFromString(v0);

  if (!v1 || ((ObjCClassMetadata = swift_getObjCClassMetadata(), (v3 = swift_conformsToProtocol2()) != 0) ? (v4 = ObjCClassMetadata == 0) : (v4 = 1), v4))
  {
    qword_1ECC435C8 = 0;
    xmmword_1ECC435A8 = 0u;
    *algn_1ECC435B8 = 0u;
  }

  else
  {
    v5 = *(v3 + 8);
    qword_1ECC435C0 = ObjCClassMetadata;
    qword_1ECC435C8 = v3;
    v6 = v3;
    __swift_allocate_boxed_opaque_existential_0(&xmmword_1ECC435A8);
    v5(ObjCClassMetadata, v6);
  }
}

uint64_t sub_1DB356BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7 - 8];
  (*(v5 + 16))(&v17[-v7 - 8], a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = sub_1DB357BD4();

  v12 = sub_1DB50AFB0();
  v20[3] = v11;
  v20[4] = &protocol witness table for OS_dispatch_queue;
  v20[0] = v12;
  sub_1DB30BE90(v20, v17);
  v18 = sub_1DB357B58;
  v19 = v10;
  sub_1DB35704C(v17, &v21);
  sub_1DB30623C(v17, &qword_1ECC435E8, &unk_1DB511EE0);
  __swift_destroy_boxed_opaque_existential_0(v20);
  v13 = v21;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v13;
  return sub_1DB50ABC0();
}

uint64_t getEnumTagSinglePayload for StartUpPerformanceEvent.RawCheckpoint(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StartUpPerformanceEvent.RawCheckpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DB356E8C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DB356EA4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DB356ED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB356F1C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB356FA0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DB35704C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v19 = sub_1DB50A440();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A400();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(a1, &aBlock, &qword_1ECC435E8, &unk_1DB511EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F8, &qword_1DB511EF8);
  v12 = swift_allocObject();
  v13 = v22;
  *(v12 + 16) = aBlock;
  *(v12 + 32) = v13;
  *(v12 + 48) = v23;
  *(v12 + 64) = v24;
  v18 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  *&aBlock = v14;
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB357CA0();
  sub_1DB50B240();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v12;
  *&v23 = sub_1DB357D64;
  *(&v23 + 1) = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1DB3330B0;
  *(&v22 + 1) = &block_descriptor_21;
  v16 = _Block_copy(&aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v7, v11, v16);
  _Block_release(v16);
  (*(v5 + 8))(v7, v19);
  (*(v9 + 8))(v11, v8);

  *v20 = v12;
  return result;
}

uint64_t sub_1DB357384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB302FF0(0, v4[2] + 1, 1, v4);
    *(a1 + 24) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB302FF0((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 24) = v4;
  swift_endAccess();
}

uint64_t sub_1DB35745C(uint64_t a1)
{
  v2 = v1;
  v16 = sub_1DB50A440();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50A400();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  aBlock[0] = v11;
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB357CA0();
  sub_1DB50B240();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1DB357D04;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_2;
  v13 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v6, v10, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DB35772C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (*(v8 + 8 * v7) != a2)
    {
      if (v6 == ++v7)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1DB473984(v7, &v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB3577D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43600, &qword_1DB511F00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v11 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8);
  sub_1DB50ABE0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DB3578F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = result;
  v9 = *a5;
  v10 = a5[1];
  if (qword_1ECC42040 != -1)
  {
    result = swift_once();
  }

  v11 = qword_1ECC43598;
  if (!qword_1ECC43598 || qword_1ECC43598 != 1 && (*&v17 = v8, *(&v17 + 1) = a2, MEMORY[0x1EEE9AC00](result), v16[2] = &v17, , v12 = sub_1DB356FA0(sub_1DB357AF0, v16, v11), result = sub_1DB357B48(v11), (v12 & 1) != 0))
  {
    if (qword_1ECC42050 != -1)
    {
      swift_once();
    }

    sub_1DB30C4B8(&xmmword_1ECC435A8, &v17, &qword_1ECC435D8, &qword_1DB511ED0);
    if (v19)
    {
      sub_1DB2FEA0C(&v17, v22);
      v13 = v23;
      v14 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      *&v17 = v8;
      *(&v17 + 1) = a2;
      v18 = a3;
      v19 = a4;
      v20 = v9;
      v21 = v10;
      v15 = *(v14 + 16);

      v15(&v17, v13, v14);

      return __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      return sub_1DB30623C(&v17, &qword_1ECC435D8, &qword_1DB511ED0);
    }
  }

  return result;
}

uint64_t sub_1DB357AF0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30() & 1;
  }
}

uint64_t sub_1DB357B48(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1DB357B58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435E0, &qword_1DB511ED8);

  return sub_1DB3577D8(a1);
}

unint64_t sub_1DB357BD4()
{
  result = qword_1EE30E320;
  if (!qword_1EE30E320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30E320);
  }

  return result;
}

unint64_t sub_1DB357C48()
{
  result = qword_1EE30E380[0];
  if (!qword_1EE30E380[0])
  {
    sub_1DB50A400();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30E380);
  }

  return result;
}

unint64_t sub_1DB357CA0()
{
  result = qword_1EE30E350;
  if (!qword_1EE30E350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC45390, &qword_1DB511EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E350);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t LazyPromise.__allocating_init(on:perform:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  LazyPromise.init(on:perform:)(a1, a2, a3);
  return v6;
}

uint64_t LazyPromise.init(on:perform:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 16) = v7;
  sub_1DB2FEA0C(a1, v3 + 24);
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 80) = 0;
  return v3;
}

uint64_t LazyPromise.hasStarted.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DB35A5E8(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DB357EA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = a1 + 3;
  v4 = *a1;
  swift_beginAccess();
  v7 = type metadata accessor for LazyPromise.State(0, *(v4 + 80), v5, v6);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, v3, v7);
  if (v12)
  {
    result = (*(v8 + 8))(v11, v7);
    v10 = 1;
  }

  else
  {

    result = __swift_destroy_boxed_opaque_existential_0(v11);
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

char *LazyPromise.start()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v2 + 80);
  v7 = type metadata accessor for LazyPromise.State(0, v4, v5, v6);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v29, v0 + 3, v7);
  if (v32)
  {
    v9 = *&v29[0];
    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v11 = v30;
    v10 = v31;
    sub_1DB2FEA0C(v29, v26);
    v14 = type metadata accessor for Promise(0, v4, v12, v13);
    v9 = Promise.__allocating_init()(v14, v15, v16, v17);
    v24[0] = v9;
    v25 = 1;
    swift_beginAccess();
    v18 = *(v8 + 40);

    v18(v1 + 3, v24, v7);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v21 = swift_allocObject();
    v21[2] = v11;
    v21[3] = v10;
    v21[4] = v9;
    v22 = *(v20 + 8);

    v22(sub_1DB35A644, v21, v19, v20);

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return v9;
}

uint64_t sub_1DB3581C8(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(j___s7JetCore7PromiseC7resolveyyxF, a3, j___s7JetCore7PromiseC6rejectyys5Error_pF, a3);
}

uint64_t LazyPromise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(a1, a2, a3, a4, a5);
}

uint64_t LazyPromise.then()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB3582DC, 0, 0);
}

uint64_t sub_1DB3582DC()
{
  v0[4] = LazyPromise.start()();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DB358384;
  v2 = v0[2];

  return Promise.then()(v2);
}

uint64_t sub_1DB358384()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DB3584FC;
  }

  else
  {
    v2 = sub_1DB358498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB358498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3584FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LazyPromise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for LazyPromise(0, a4, a3, a4);
  sub_1DB30BE90(a1, v14);
  sub_1DB30BE90(a1, v13);
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a3;
  sub_1DB2FEA0C(v13, (v10 + 6));
  v11 = swift_allocObject();
  LazyPromise.init(on:perform:)(v14, sub_1DB35A668, v10);

  return v11;
}

uint64_t sub_1DB358644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a5;
  v16 = swift_allocObject();
  v16[2] = *(v15 + 80);
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a3;
  v16[9] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1DB35AC18, v16, sub_1DB35AC4C, v17, a8);
}

uint64_t sub_1DB358788(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a2(v13);
  return (*(v10 + 8))(v13, a9);
}

uint64_t LazyPromise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for LazyPromise(0, AssociatedTypeWitness, v13, v14);
  sub_1DB30BE90(a1, v19);
  sub_1DB30BE90(a1, v18);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v6;
  v15[5] = a2;
  v15[6] = a3;
  sub_1DB2FEA0C(v18, (v15 + 7));
  v16 = swift_allocObject();
  LazyPromise.init(on:perform:)(v19, sub_1DB35A698, v15);

  return v16;
}

uint64_t sub_1DB3589BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *a5;
  sub_1DB30BE90(a8, v21);
  v16 = swift_allocObject();
  v16[2] = *(v15 + 80);
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  sub_1DB2FEA0C(v21, (v16 + 11));
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1DB35AB80, v16, sub_1DB35AC7C, v17, a8);
}

uint64_t LazyPromise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = a1;
  v22[1] = *v3;
  v4 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DB50AFA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB357BD4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *&v26 = MEMORY[0x1E69E7CC0];
  sub_1DB35A9C4(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB35AA0C(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  v11 = sub_1DB50AFD0();
  v12 = v22[0];
  v14 = v23;
  v13 = v24;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for LazyPromise(0, TupleTypeMetadata2, v16, v17);
  v27 = v10;
  v28 = &protocol witness table for OS_dispatch_queue;
  *&v26 = v11;
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = v12;
  v18[5] = v11;
  v18[6] = v25;
  v19 = swift_allocObject();
  LazyPromise.init(on:perform:)(&v26, sub_1DB35A6CC, v18);
  v20 = v11;

  swift_unknownObjectRetain();
  return v19;
}

uint64_t sub_1DB358E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = a7;
  v63 = a6;
  v67 = a3;
  v68 = a4;
  v59 = a1;
  v11 = *a5;
  v58 = a5;
  v70 = sub_1DB50A400();
  v73 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB50A440();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = type metadata accessor for Result(255, AssociatedTypeWitness, v16, v17);
  v18 = sub_1DB50B120();
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - v20;
  v22 = *(v11 + 80);
  v25 = type metadata accessor for Result(255, v22, v23, v24);
  v26 = sub_1DB50B120();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - v28;
  v30 = swift_allocObject();
  v64 = v30;
  v30[2] = v22;
  v30[3] = a8;
  v31 = v59;
  v30[4] = a9;
  v30[5] = v31;
  v30[6] = a2;

  v32 = dispatch_group_create();
  (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  v33 = sub_1DB388A48(v29, v26);
  (*(v27 + 8))(v29, v26);
  dispatch_group_enter(v32);
  v34 = swift_allocObject();
  v34[2] = v22;
  v34[3] = a8;
  v34[4] = a9;
  v34[5] = v33;
  v35 = v33;
  v34[6] = v32;
  v36 = swift_allocObject();
  v36[2] = v22;
  v36[3] = a8;
  v36[4] = a9;
  v36[5] = v35;
  v59 = v35;
  v36[6] = v32;
  v57 = sub_1DB357BD4();
  v76 = v57;
  v77 = &protocol witness table for OS_dispatch_queue;
  v37 = v63;
  aBlock[0] = v63;
  swift_retain_n();
  v38 = v32;
  v39 = v37;
  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1DB35A8A4, v34, sub_1DB35A8BC, v36, aBlock);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  (*(*(v60 - 8) + 56))(v21, 1, 1);
  v40 = v61;
  v41 = sub_1DB388A48(v21, v61);
  v62[1](v21, v40);
  dispatch_group_enter(v38);
  v42 = swift_allocObject();
  v56 = v22;
  v42[2] = v22;
  v42[3] = a8;
  v42[4] = a9;
  v42[5] = v41;
  v42[6] = v38;
  v43 = swift_allocObject();
  v43[2] = v22;
  v43[3] = a8;
  v43[4] = a9;
  v43[5] = v41;
  v43[6] = v38;
  v76 = v57;
  v77 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v39;
  v44 = *(a9 + 16);
  v45 = v38;
  swift_retain_n();
  v63 = v45;
  v62 = v39;
  v44(sub_1DB35A8D4, v42, sub_1DB35A944, v43, aBlock, a8, a9);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v46 = swift_allocObject();
  v46[2] = v56;
  v46[3] = a8;
  v47 = v59;
  v46[4] = a9;
  v46[5] = v47;
  v46[6] = v41;
  v46[7] = sub_1DB35A894;
  v48 = v67;
  v49 = v68;
  v46[8] = v64;
  v46[9] = v48;
  v46[10] = v49;
  v77 = sub_1DB35A974;
  v78 = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  v76 = &block_descriptor_3;
  v50 = _Block_copy(aBlock);

  v51 = v66;
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1DB35A9C4(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  v53 = v69;
  v52 = v70;
  sub_1DB50B240();
  v54 = v63;
  sub_1DB50AF60();
  _Block_release(v50);

  (*(v73 + 8))(v53, v52);
  (*(v71 + 8))(v51, v72);
}

uint64_t sub_1DB3595F4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v18 - v15;
  (*(*(a5 - 8) + 16))(&v18 - v15, a1, a5, v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v16[*(TupleTypeMetadata2 + 48)], a2, AssociatedTypeWitness);
  a3(v16);
  return (*(v13 + 8))(v16, TupleTypeMetadata2);
}

void sub_1DB359780(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  type metadata accessor for Result(255, a4, a3, a4);
  sub_1DB50B120();
  sub_1DB47D0C4(sub_1DB35AB60, v8, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1DB359810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Result(255, a3, a3, a4);
  v8 = sub_1DB50B120();
  (*(*(v8 - 8) + 8))(a1, v8);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

void sub_1DB359918(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a1;
  type metadata accessor for Result(255, a4, a3, a4);
  v8 = sub_1DB50B120();
  sub_1DB35B4EC(sub_1DB35AB40, v9, a2, v8, MEMORY[0x1E69E7CA8] + 8);
  dispatch_group_leave(a3);
}