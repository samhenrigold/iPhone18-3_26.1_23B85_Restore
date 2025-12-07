unint64_t sub_27046C2F4()
{
  result = qword_2807D34E8;
  if (!qword_2807D34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D34E8);
  }

  return result;
}

ValueMetadata *type metadata accessor for JSONType.JSONError()
{
  return &type metadata for JSONType.JSONError;
}

{
  return &type metadata for JSONType.JSONError;
}

uint64_t OUTLINED_FUNCTION_5_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_13_18(uint64_t a1)
{

  return sub_2705D8184();
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_24_13(uint64_t a1@<X8>)
{
  v5 = a1 + 24 * v4;
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
}

void static JSONObject.initReplacingUnmappedTypesWithNull(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27046BFF4(a1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t static JSONObject.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D7494();
  sub_27046BFF4(v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  return result;
}

id static JSONObject.== infix(_:_:)()
{
  sub_27046C720();
  sub_27046CD54();
  v1 = sub_27046C7B8(v0);

  v2 = sub_27046CA08(v1);

  v3 = sub_27046CCCC(v2);
  sub_27046CD54();
  v5 = sub_27046C7B8(v4);

  v6 = sub_27046CA08(v5);

  v7 = sub_27046CCCC(v6);
  v8 = [v3 isEqual_];

  return v8;
}

unint64_t sub_27046C720()
{
  result = qword_2807D3508;
  if (!qword_2807D3508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3508);
  }

  return result;
}

unint64_t JSONObject.dictionary.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27046CD54();
  v4 = sub_27046C7B8(v3);

  return v4;
}

unint64_t sub_27046C7B8(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0138, &qword_27060EBA0);
    v4 = sub_2705D7E94();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_36();

  v6 = 0;
  while (v1)
  {
    v7 = v6;
LABEL_10:
    OUTLINED_FUNCTION_2_31();
    v9 = v8 | (v7 << 6);
    v10 = (a1[6] + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_2703D7F04(a1[7] + 32 * v9, v27);
    *&v26 = v11;
    *(&v26 + 1) = v12;
    v24[2] = v26;
    v25[0] = v27[0];
    v25[1] = v27[1];
    v13 = v26;
    sub_2703E43D4(v25, &v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
    swift_dynamicCast();
    sub_2703E43D4(&v21, v23);
    sub_2703E43D4(v23, v24);
    sub_2703E43D4(v24, &v22);
    result = sub_2703D7318(v13, *(&v13 + 1));
    v14 = result;
    if (v15)
    {
      *(v4[6] + 16 * result) = v13;

      v16 = (v4[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = sub_2703E43D4(&v22, v16);
      v6 = v7;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 16 * result) = v13;
      result = sub_2703E43D4(&v22, (v4[7] + 32 * result));
      v17 = v4[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      v4[2] = v19;
      v6 = v7;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v2)
    {

      return v4;
    }

    v1 = a1[v7 + 8];
    ++v6;
    if (v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27046CA08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3510, &unk_2705F2A60);
    v2 = sub_2705D7E94();
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

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2703D7F04(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2703E43D4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2703E43D4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2703E43D4(v31, v32);
    result = sub_2705D7CD4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2703E43D4(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_27046CCCC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_2705D7454();

  v3 = [v1 initWithDictionary_];

  return v3;
}

void sub_27046CD54()
{
  if (*(v0 + 16) == 16)
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F0, &unk_270610A80);
    v4 = 0;
    v5 = v3 + 64;
    v29 = sub_2705D7E74();
    v30 = v3;
    OUTLINED_FUNCTION_0_36();
    v28 = v6 + 64;
    if (v1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_2_31();
LABEL_9:
        v10 = v7 | (v4 << 6);
        v11 = (*(v30 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];

        v14 = OUTLINED_FUNCTION_0_14();
        sub_2703AE9FC(v14, v15, v16);
        v17 = OUTLINED_FUNCTION_0_14();
        sub_27046A8E8(v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_0_14();
        sub_2703AE630(v21, v22, v23);
        *(v28 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        v24 = (v29[6] + 16 * v10);
        *v24 = v12;
        v24[1] = v13;
        sub_2703E43D4(&v31, (v29[7] + 32 * v10));
        v25 = v29[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          break;
        }

        v29[2] = v27;
        if (!v1)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v4;
      while (1)
      {
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v4 >= v2)
        {
          return;
        }

        v9 = *(v5 + 8 * v4);
        ++v8;
        if (v9)
        {
          v7 = __clz(__rbit64(v9));
          v1 = (v9 - 1) & v9;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);

    sub_2705D7494();
  }
}

uint64_t JSONObject.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27046BE40(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
  }

  return result;
}

unint64_t sub_27046CFD0(uint64_t a1)
{
  *(a1 + 8) = sub_2703C3FAC();
  result = sub_2703C39C4();
  *(a1 + 16) = result;
  return result;
}

uint64_t JSONObjectEncodable<>.object.getter@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v6 = sub_2705D6524();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  sub_2705D4024();
  v14 = objc_opt_self();
  OUTLINED_FUNCTION_0_37();
  v15 = sub_2705D44A4();
  v41[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v41];

  if (v16)
  {
    v17 = v41[0];
    sub_2705D7C84();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
    if (swift_dynamicCast())
    {
      sub_27046BFF4(v40[0]);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = OUTLINED_FUNCTION_0_37();
      sub_27046DCA4(v24, v25);

      goto LABEL_11;
    }

    v36 = OUTLINED_FUNCTION_0_37();
    sub_27046DCA4(v36, v37);
  }

  else
  {
    v32 = v41[0];
    v33 = sub_2705D4364();

    swift_willThrow();
    v34 = OUTLINED_FUNCTION_0_37();
    sub_27046DCA4(v34, v35);
  }

  if (qword_2807CE830 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  sub_2705D6574();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2705E6EB0;
  v41[3] = a1;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v41);
  (*(*(a1 - 1) + 16))(boxed_opaque_existential_1Tm, v3, a1);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2705D7564();
    v38 = v12;
    v39 = v11;

    sub_2705D6514();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(MetatypeMetadata);
    sub_2703B2934(v40, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    v40[3] = MEMORY[0x277D837D0];
    v40[0] = v39;
    v40[1] = v38;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v27 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(v27);
  }

  sub_2703B2934(v40, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_2705D64C4();
  sub_27047CF78(v7);

  v28 = sub_2705D7494();
  sub_27046BFF4(v28);
  v19 = v29;
  v21 = v30;
  v23 = v31;

LABEL_11:
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
  return result;
}

double sub_27046D520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  v8 = objc_opt_self();
  *(&v21 + 1) = a2;
  LOBYTE(v22) = a3;
  sub_27046CD54();
  sub_27046C7B8(v9);

  v10 = sub_2705D7454();
  sub_2703AE630(a1, a2, a3);

  *&v21 = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:&v21];

  v12 = v21;
  if (v11)
  {
    v13 = sub_2705D44C4();
    v15 = v14;

    sub_27046DEA4();
    sub_2705D3FF4();
    sub_27046DCA4(v13, v15);

    v18 = v22;
    *a4 = v21;
    a4[1] = v18;
    result = *&v23;
    v20 = v24;
    a4[2] = v23;
    a4[3] = v20;
  }

  else
  {
    v16 = v12;
    v17 = sub_2705D4364();

    swift_willThrow();

    result = 0.0;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_27046D75C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  v8 = objc_opt_self();
  *(&__src[0] + 1) = a2;
  LOBYTE(__src[1]) = a3;
  sub_27046CD54();
  sub_27046C7B8(v9);

  v10 = sub_2705D7454();
  sub_2703AE630(a1, a2, a3);

  *&__src[0] = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:__src];

  v12 = *&__src[0];
  if (v11)
  {
    v13 = sub_2705D44C4();
    v15 = v14;

    sub_27046DDCC();
    sub_2705D3FF4();
    sub_27046DCA4(v13, v15);

    memcpy(a4, __src, 0x60uLL);
  }

  else
  {
    v16 = v12;
    v17 = sub_2705D4364();

    swift_willThrow();

    a4[4] = 0u;
    a4[5] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }
}

uint64_t JSONObjectDecodable<>.init(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[3] = a3;
  v26 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = sub_2705D7C14();
  v25[1] = *(v6 - 8);
  v25[2] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  v12 = objc_opt_self();
  v27[0] = v9;
  v27[1] = v10;
  v28 = v11;
  sub_27046CD54();
  sub_27046C7B8(v13);

  v14 = sub_2705D7454();
  sub_2703AE630(v9, v10, v11);

  v27[0] = 0;
  v15 = [v12 dataWithJSONObject:v14 options:0 error:v27];

  v16 = v27[0];
  if (v15)
  {
    v17 = sub_2705D44C4();
    v19 = v18;

    sub_2705D3FF4();
    sub_27046DCA4(v17, v19);

    __swift_storeEnumTagSinglePayload(v8, 0, 1, a2);
    v22 = v26;
    (*(*(a2 - 8) + 32))(v26, v8, a2);
    v23 = 0;
  }

  else
  {
    v20 = v16;
    v21 = sub_2705D4364();

    swift_willThrow();

    v23 = 1;
    v22 = v26;
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, 1, a2);
}

uint64_t sub_27046DCA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_27046DDCC()
{
  result = qword_2807D3520;
  if (!qword_2807D3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3520);
  }

  return result;
}

unint64_t sub_27046DEA4()
{
  result = qword_2807D3530;
  if (!qword_2807D3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3530);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{
  *(v2 - 128) = a1;
  *(v2 - 152) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_3_38()
{
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return swift_getDynamicType();
}

uint64_t sub_27046DF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_27046E038(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for JSServiceRequestIntent(uint64_t a1)
{
  result = qword_2807D3540;
  if (!qword_2807D3540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27046E110(uint64_t a1)
{
  sub_2703C5B08(319, &qword_2807CF1A0, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2703C5B08(319, &qword_2807D3550, &type metadata for CoreJSONObject);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_27046E1E0(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_27046E1E0(uint64_t a1)
{
  if (!qword_2807D3558)
  {
    sub_2705D4484();
    v1 = sub_2705D7C14();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D3558);
    }
  }
}

uint64_t sub_27046E238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for JSServiceRequestIntent(0);
  v11 = *(v10 + 24);
  sub_2705D4484();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = (a5 + *(v10 + 28));
  *v16 = 0;
  v16[1] = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_2704703B4(a4, a5 + v11);
  if (a3)
  {

    v18 = sub_2705A5474(v17);
    v20 = v19;
    v22 = v21;
    sub_2703C1634(a4, &unk_2807D4280, &unk_2705E4700);
  }

  else
  {
    result = sub_2703C1634(a4, &unk_2807D4280, &unk_2705E4700);
    v18 = 0;
    v20 = 0;
    v22 = -1;
  }

  *(a5 + 16) = v18;
  *(a5 + 24) = v20;
  *(a5 + 32) = v22;
  return result;
}

BOOL sub_27046E480(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35D0, &unk_2705F2CD0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = *(a1 + 8);
  v20 = *(a2 + 8);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *a1 == *a2 && v19 == v20;
    if (!v21 && (sub_2705D8134() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = *(a1 + 32);
  v23 = *(a2 + 32);
  if (v22 == 255)
  {
    v46 = v10;
    if (v23 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v23 == 255)
    {
      return 0;
    }

    v45 = v6;
    v46 = v10;
    v24 = *(a1 + 16);
    v43 = *(a1 + 24);
    v44 = v24;
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    sub_2703AE9FC(v26, v25, v23);
    v27 = sub_2705A56E4(v44, v43, v22, v26, v25, v23);
    v28 = v26;
    v6 = v45;
    sub_270470288(v28, v25, v23);
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = type metadata accessor for JSServiceRequestIntent(0);
  v30 = *(v29 + 24);
  v31 = *(v15 + 48);
  sub_2703EE6F4(a1 + v30, v18);
  sub_2703EE6F4(a2 + v30, &v18[v31]);
  OUTLINED_FUNCTION_13_19(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_13_19(&v18[v31]);
    if (v21)
    {
      sub_2703C1634(v18, &unk_2807D4280, &unk_2705E4700);
      goto LABEL_26;
    }

LABEL_23:
    sub_2703C1634(v18, &qword_2807D35D0, &unk_2705F2CD0);
    return 0;
  }

  sub_2703EE6F4(v18, v14);
  OUTLINED_FUNCTION_13_19(&v18[v31]);
  if (v32)
  {
    (*(v6 + 8))(v14, v4);
    goto LABEL_23;
  }

  v34 = v46;
  (*(v6 + 32))(v46, &v18[v31], v4);
  sub_27047036C(qword_2807D0658, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v35 = sub_2705D7514();
  v36 = *(v6 + 8);
  v36(v34, v4);
  v36(v14, v4);
  sub_2703C1634(v18, &unk_2807D4280, &unk_2705E4700);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v37 = *(v29 + 28);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (!v39)
  {
    return !v41;
  }

  if (!v41)
  {
    return 0;
  }

  v42 = *v38 == *v40 && v39 == v41;
  return v42 || (sub_2705D8134() & 1) != 0;
}

void sub_27046E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = -1;
  v33 = type metadata accessor for JSServiceRequestIntent(0);
  v34 = *(v33 + 24);
  v35 = sub_2705D4484();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = (v28 + *(v33 + 28));
  *v39 = 0;
  v39[1] = 0;
  OUTLINED_FUNCTION_7_23();
  v40 = sub_2704698DC();
  if (v20)
  {

    v40 = 0;
    v41 = 0;
  }

  *v28 = v40;
  *(v28 + 8) = v41;
  sub_270469B64(7107189, 0xE300000000000000, v33, v32);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v35);
  sub_2704700B4(v32, v28 + v34);
  v42 = OUTLINED_FUNCTION_6_30();
  v43 = sub_2703C5174(v42, 0xE700000000000000, v33);
  *(v28 + 16) = sub_2705A5474(v43);
  *(v28 + 24) = v44;
  *(v28 + 32) = v45;
  v46 = sub_2704698DC();
  v48 = v47;
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  (*(v49 + 8))(v24);
  sub_2705D6484();
  OUTLINED_FUNCTION_11_1();
  (*(v50 + 8))(v26);
  *v39 = v46;
  v39[1] = v48;
  OUTLINED_FUNCTION_11_3();
}

void sub_27046EAE4()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v46 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = [objc_opt_self() valueWithNewObjectInContext_];
  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = sub_270470124();
  v14 = MEMORY[0x277D837D0];
  v45 = MEMORY[0x277D837D0];
  v43 = 0xD000000000000016;
  v44 = 0x80000002705F2AC0;
  v15 = v5;
  v16 = OUTLINED_FUNCTION_8_27();
  if (!sub_27046EDEC(v16, v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2705D7B74();
  v18 = *(v0 + 8);
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = *v3;
  v45 = v14;
  v43 = v19;
  v44 = v18;
  v20 = v15;

  v21 = OUTLINED_FUNCTION_8_27();
  if (!sub_27046EDEC(v21, v22))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_2705D7B74();
LABEL_6:
  v23 = v13;
  v24 = v15;
  v25 = type metadata accessor for JSServiceRequestIntent(0);
  sub_2703EE6F4(v3 + *(v25 + 24), v10);
  v26 = sub_2705D4484();
  if (__swift_getEnumTagSinglePayload(v10, 1, v26) != 1)
  {
    v42 = v1;
    v28 = sub_2705D4394();
    v30 = v29;
    (*(*(v26 - 8) + 8))(v10, v26);
    v45 = MEMORY[0x277D837D0];
    v43 = v28;
    v44 = v30;
    v27 = v24;
    v31 = v24;

    v32 = OUTLINED_FUNCTION_8_27();
    if (sub_27046EDEC(v32, v33))
    {

      sub_2705D7B74();
      v2 = v42;
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_2703C1634(v10, &unk_2807D4280, &unk_2705E4700);
  v27 = v24;
LABEL_10:
  v34 = *(v3 + 32);
  if (v34 == 255)
  {
LABEL_15:
    v40 = MEMORY[0x277D225C8];
    v46[3] = v23;
    v46[4] = v40;
    *v46 = v12;
    goto LABEL_16;
  }

  v35 = sub_270545C30(*(v3 + 16), *(v3 + 24), v34);
  if (v2)
  {

LABEL_16:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v36 = v35;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8, &unk_2705F27A0);
  v43 = v36;
  v37 = v27;
  v38 = OUTLINED_FUNCTION_8_27();
  if (sub_27046EDEC(v38, v39))
  {
    sub_2705D7B74();
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

id sub_27046EDEC(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = *(v3 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_2705D8124();
    (*(v6 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() valueWithObject:v9 inContext:a2];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_27046EFB0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7_23();
  v6 = a1 == v4 && v5 == 0xE800000000000000;
  if (v6 || (OUTLINED_FUNCTION_5_30(v4, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_30();
    v9 = a1 == v8 && a2 == 0xE700000000000000;
    if (v9 || (OUTLINED_FUNCTION_5_30(v8, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = a1 == 0xD000000000000011 && 0x8000000270614120 == a2;
      if (v10 || (OUTLINED_FUNCTION_5_30(0xD000000000000011, 0x8000000270614120) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_5_30(7107189, 0xE300000000000000);

        if (v12)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_27046F0C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_23();
  switch(v2)
  {
    case 1:
      result = OUTLINED_FUNCTION_6_30();
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27046F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27046EFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27046F190(uint64_t a1)
{
  v2 = sub_270470168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27046F1CC(uint64_t a1)
{
  v2 = sub_270470168();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27046F208()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v59 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v61 = v49 - v6;
  v58 = sub_2705D75C4();
  OUTLINED_FUNCTION_0();
  v56 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v55 = v10 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3588, &qword_2705F2CB0);
  OUTLINED_FUNCTION_0();
  v60 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  v15 = type metadata accessor for JSServiceRequestIntent(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = -1;
  v20 = *(v16 + 32);
  v21 = sub_2705D4484();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = (v19 + *(v16 + 36));
  *v25 = 0;
  v25[1] = 0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_270470168();
  sub_2705D8484();
  if (v0)
  {
    v26 = v2;
  }

  else
  {
    v52 = v21;
    v54 = v20;
    v28 = v58;
    v27 = v59;
    LOBYTE(v62) = 0;
    v29 = v57;
    v30 = v14;
    v31 = sub_2705D7F54();
    v53 = v2;
    v32 = v28;
    *v19 = v31;
    *(v19 + 8) = v33;
    v34 = sub_2704701BC();
    v35 = v30;
    sub_2705D7FA4();
    v36 = *(&v62 + 1);
    v37 = v63;
    v58 = v62;
    *(v19 + 16) = v62;
    *(v19 + 24) = v36;
    v51 = v36;
    v64 = v37;
    *(v19 + 32) = v37;
    LOBYTE(v62) = 2;
    sub_2705D7F54();
    v49[1] = v34;
    v38 = v29;
    v39 = v55;
    sub_2705D75A4();
    v50 = sub_2705D7574();
    v41 = v40;

    v42 = v32;
    v43 = v41;
    (*(v56 + 8))(v39, v42);
    if (v41 >> 60 == 15)
    {
      v44 = v27;
      v45 = v61;
    }

    else
    {
      sub_2705D4014();
      swift_allocObject();
      sub_2705D4004();
      sub_2705D3FF4();
      v44 = v27;
      v45 = v61;
      sub_270470274(v50, v43);

      sub_270470288(v58, v51, v64);
      v48 = v63;
      *(v19 + 16) = v62;
      *(v19 + 32) = v48;
    }

    v46 = v60;
    v47 = v54;
    LOBYTE(v62) = 3;
    sub_2705D7F54();
    sub_2705D4454();

    (*(v46 + 8))(v35, v38);
    sub_2704700B4(v45, v19 + v47);
    sub_270470210(v19, v44);
    v26 = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_270470058(v19);
  OUTLINED_FUNCTION_11_3();
}

void sub_27046F728()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v0;
  v4 = v3;
  v47 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v42 = v39 - v7;
  v8 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v40 = v12 - v11;
  v13 = sub_2705D75C4();
  v14 = OUTLINED_FUNCTION_23_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v39[1] = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35A0, &qword_2705F2CB8);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = v39 - v21;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_270470168();
  sub_2705D84C4();
  if (*(v2 + 8))
  {
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_9_25();
    sub_2705D8034();
    if (v1)
    {
      goto LABEL_11;
    }
  }

  v23 = *(v2 + 32);
  if (v23 != 255)
  {
    v39[0] = v8;
    v24 = *(v2 + 16);
    v25 = *(v2 + 24);
    v44 = v24;
    v45 = v25;
    v46 = v23;
    v43 = 1;
    sub_27047029C();
    OUTLINED_FUNCTION_9_25();
    sub_2705D8084();
    if (!v1)
    {
      sub_270545C30(v24, v25, v23);
      v26 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
      v27 = sub_2705D7454();

      v44 = 0;
      v28 = [v26 dataWithJSONObject:v27 options:0 error:&v44];

      v29 = v44;
      if (v28)
      {
        v30 = sub_2705D44C4();
        v32 = v31;

        sub_2705D75A4();
        v44 = sub_2705D7584();
        v45 = v33;
        v43 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35B0, &unk_270610160);
        sub_2704702F0();
        OUTLINED_FUNCTION_9_25();
        sub_2705D8084();

        sub_27046DCA4(v30, v32);
        v8 = v39[0];
        goto LABEL_8;
      }

      v34 = v29;
      sub_2705D4364();

      swift_willThrow();
    }

LABEL_11:
    (*(v19 + 8))(v22, v17);
    goto LABEL_12;
  }

LABEL_8:
  v35 = type metadata accessor for JSServiceRequestIntent(0);
  v36 = v42;
  sub_2703EE6F4(v2 + *(v35 + 24), v42);
  if (__swift_getEnumTagSinglePayload(v36, 1, v8) != 1)
  {
    v38 = v40;
    v37 = v41;
    (*(v41 + 32))(v40, v36, v8);
    sub_2705D4394();
    LOBYTE(v44) = 3;
    OUTLINED_FUNCTION_9_25();
    sub_2705D8034();

    (*(v37 + 8))(v38, v8);
    goto LABEL_11;
  }

  (*(v19 + 8))(v22, v17);
  sub_2703C1634(v36, &unk_2807D4280, &unk_2705E4700);
LABEL_12:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_27046FC34()
{
  v1 = v0;
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2705D7D04();
  v30 = v27;
  v31 = v28;
  v10 = type metadata accessor for JSServiceRequestIntent(0);
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35C0, &qword_2705F2CC0);
  v11 = sub_2705D75D4();
  MEMORY[0x2743A3A90](v11);

  MEMORY[0x2743A3A90](0xD000000000000013, 0x80000002706140D0);
  v12 = *(v0 + 8);
  if (v12)
  {
    v27 = *v0;
    v28 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35B0, &unk_270610160);
    v13 = sub_2705D75D4();
    v15 = v14;
  }

  else
  {
    v13 = 0x656E696665646E75;
    v15 = 0xE900000000000064;
  }

  MEMORY[0x2743A3A90](v13, v15);

  MEMORY[0x2743A3A90](0x706F202020200A29, 0xEF203A736E6F6974);
  v16 = *(v0 + 32);
  if (v16 == 255)
  {
    v18 = 0x656E696665646E75;
    v20 = 0xE900000000000064;
  }

  else
  {
    v17 = *(v0 + 24);
    v27 = *(v0 + 16);
    v28 = v17;
    v29 = v16;
    sub_2703AE9FC(v27, v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35C8, &qword_2705F2CC8);
    v18 = sub_2705D75D4();
    v20 = v19;
  }

  MEMORY[0x2743A3A90](v18, v20);

  MEMORY[0x2743A3A90](0x7275202020200A29, 0xEB00000000203A6CLL);
  v21 = *(v10 + 24);
  sub_2703EE6F4(v0 + v21, v9);
  v22 = sub_2705D4484();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v22);
  sub_2703C1634(v9, &unk_2807D4280, &unk_2705E4700);
  if (EnumTagSinglePayload != 1)
  {
    sub_2703EE6F4(v1 + v21, v7);
    v3 = sub_2705D75D4();
    v2 = v24;
  }

  MEMORY[0x2743A3A90](v3, v2);

  MEMORY[0x2743A3A90](8194601, 0xE300000000000000);
  return v30;
}

unint64_t sub_27046FFAC()
{
  result = qword_2807D3570;
  if (!qword_2807D3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3570);
  }

  return result;
}

uint64_t sub_270470000(uint64_t a1)
{
  result = sub_27047036C(&qword_2807D3578, type metadata accessor for JSServiceRequestIntent, &unk_2705F2C58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_270470058(uint64_t a1)
{
  v2 = type metadata accessor for JSServiceRequestIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2704700B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_270470124()
{
  result = qword_2807D3580;
  if (!qword_2807D3580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3580);
  }

  return result;
}

unint64_t sub_270470168()
{
  result = qword_2807D3590;
  if (!qword_2807D3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3590);
  }

  return result;
}

unint64_t sub_2704701BC()
{
  result = qword_2807D3598;
  if (!qword_2807D3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3598);
  }

  return result;
}

uint64_t sub_270470210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequestIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270470274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_27046DCA4(a1, a2);
  }

  return a1;
}

uint64_t sub_270470288(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2703F6F50(result, a2, a3);
  }

  return result;
}

unint64_t sub_27047029C()
{
  result = qword_2807D35A8;
  if (!qword_2807D35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35A8);
  }

  return result;
}

unint64_t sub_2704702F0()
{
  result = qword_2807D35B8;
  if (!qword_2807D35B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D35B0, &unk_270610160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35B8);
  }

  return result;
}

uint64_t sub_27047036C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2704703B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for JSServiceRequestIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704704F0);
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

unint64_t sub_27047052C()
{
  result = qword_2807D35D8;
  if (!qword_2807D35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35D8);
  }

  return result;
}

unint64_t sub_270470584()
{
  result = qword_2807D35E0;
  if (!qword_2807D35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35E0);
  }

  return result;
}

unint64_t sub_2704705DC()
{
  result = qword_2807D35E8;
  if (!qword_2807D35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D35E8);
  }

  return result;
}

uint64_t sub_270470690()
{
  OUTLINED_FUNCTION_2_2();
  v0[255] = v1;
  v0[254] = v2;
  v0[253] = v3;
  v4 = sub_2705D7D74();
  v0[256] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v0[257] = v5;
  v0[258] = swift_task_alloc();
  v0[259] = swift_task_alloc();
  v0[260] = swift_task_alloc();
  v0[261] = swift_task_alloc();
  v6 = sub_2705D7D84();
  v0[262] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v0[263] = v7;
  v0[264] = OUTLINED_FUNCTION_16_3();
  v8 = type metadata accessor for MessageViewStyle(0);
  v0[265] = v8;
  OUTLINED_FUNCTION_23_0(v8);
  v0[266] = OUTLINED_FUNCTION_16_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35F0, &unk_2705F2E08);
  OUTLINED_FUNCTION_23_0(v9);
  v0[267] = OUTLINED_FUNCTION_16_3();
  v10 = type metadata accessor for SourceLookupType(0);
  v0[268] = v10;
  OUTLINED_FUNCTION_23_0(v10);
  v0[269] = OUTLINED_FUNCTION_16_3();
  v11 = type metadata accessor for JSStyleIntentModel(0);
  OUTLINED_FUNCTION_23_0(v11);
  v0[270] = OUTLINED_FUNCTION_16_3();
  v12 = sub_2705D6524();
  OUTLINED_FUNCTION_23_0(v12);
  v0[271] = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_27047086C()
{
  OUTLINED_FUNCTION_34_7();
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  *(v0 + 2176) = qword_28081C4F8;
  *(v0 + 2184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v1 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v1);
  *(v0 + 2192) = *(v2 + 72);
  *(v0 + 2240) = *(v3 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2705E6EB0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35F8, &unk_2705F2E18);
  *(v0 + 2200) = v5;
  *(v0 + 80) = v5;
  *(v0 + 56) = &type metadata for JSStyleIntentImplementation;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = v0 + 1944;
    v9 = sub_2705D7564();
    v11 = v10;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v12 = OUTLINED_FUNCTION_32_4((v0 + 56));
    *(v0 + 496) = swift_getMetatypeMetadata();
    *(v0 + 472) = v12;
    sub_2705D64E4();
    sub_2703C2EFC(v0 + 472, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    *(v0 + 1968) = MEMORY[0x277D837D0];
    *(v0 + 1944) = v9;
    *(v0 + 1952) = v11;
  }

  else
  {
    v8 = v0 + 1432;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v13 = OUTLINED_FUNCTION_32_4((v0 + 56));
    *(v0 + 1456) = swift_getMetatypeMetadata();
    *(v0 + 1432) = v13;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v8, &unk_2807D4890, &qword_2705E2880);
  v14 = *(v0 + 2160);
  v15 = *(v0 + 2032);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_2705D64C4();
  sub_27047CE48(v4);

  sub_2704732FC(v15, v14, type metadata accessor for JSStyleIntentModel);
  type metadata accessor for MessagePageJavascriptService();
  v16 = swift_task_alloc();
  *(v0 + 2208) = v16;
  *v16 = v0;
  v16[1] = sub_270470B7C;
  OUTLINED_FUNCTION_33_7();

  return MEMORY[0x28217F228](v17);
}

uint64_t sub_270470B7C()
{
  OUTLINED_FUNCTION_2_2();
  v2 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270470C88()
{
  OUTLINED_FUNCTION_25_12();
  v1[277] = v1[252];
  v2 = swift_allocObject();
  v1[31] = &type metadata for JSStyleIntentImplementation;
  *(v2 + 16) = xmmword_2705E6EB0;
  v1[34] = v0;
  v3 = AMSLogKey();
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = (v1 + 75);
    v7 = sub_2705D7564();
    v9 = v8;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v1 + 31, v1[34]);
    DynamicType = swift_getDynamicType();
    v1[82] = swift_getMetatypeMetadata();
    v1[79] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC((v1 + 79), &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    v1[78] = v4;
    v1[75] = v7;
    v1[76] = v9;
  }

  else
  {
    v6 = (v1 + 35);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v1 + 31, v1[34]);
    v11 = swift_getDynamicType();
    v1[38] = swift_getMetatypeMetadata();
    v1[35] = v11;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v6, &unk_2807D4890, &qword_2705E2880);
  v12 = v1[270];
  v13 = v1[268];
  v14 = v1[267];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v1 + 31);
  sub_2705D64C4();
  sub_27047CF60(v2);

  sub_270472AA4(v12, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    v15 = v1[275];
    sub_2703C2EFC(v1[267], &qword_2807D35F0, &unk_2705F2E08);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2705E10F0;
    v1[42] = v15;
    v1[39] = &type metadata for JSStyleIntentImplementation;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      v19 = (v1 + 55);
      v20 = sub_2705D7564();
      v22 = v21;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v23 = OUTLINED_FUNCTION_36_6();
      v1[54] = swift_getMetatypeMetadata();
      v1[51] = v23;
      sub_2705D64E4();
      sub_2703C2EFC((v1 + 51), &unk_2807D4890, &qword_2705E2880);
      OUTLINED_FUNCTION_7_24();
      v1[58] = MEMORY[0x277D837D0];
      v1[55] = v20;
      v1[56] = v22;
    }

    else
    {
      v19 = (v1 + 43);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v29 = OUTLINED_FUNCTION_36_6();
      v1[46] = swift_getMetatypeMetadata();
      v1[43] = v29;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v19, &unk_2807D4890, &qword_2705E2880);
    v30 = v1[270];
    OUTLINED_FUNCTION_35_5();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v1 + 39);
    sub_2705D64C4();
    v1[50] = type metadata accessor for JSServiceRequestIntent(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1 + 47);
    sub_2704732FC(v30, boxed_opaque_existential_1Tm, type metadata accessor for JSServiceRequestIntent);
    sub_2705D6544();
    sub_2703C2EFC((v1 + 47), &unk_2807D4890, &qword_2705E2880);
    sub_27047CF78(v16);

    OUTLINED_FUNCTION_0_38();
    sub_27047335C(v30, v32);
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_20_11(v33, v34, v35, v36);

    OUTLINED_FUNCTION_1_4();

    return v37();
  }

  else
  {
    sub_2704733B4(v1[267], v1[269], type metadata accessor for SourceLookupType);
    v24 = swift_task_alloc();
    v1[278] = v24;
    *v24 = v1;
    v24[1] = sub_2704711FC;
    v25 = v1[270];
    v26 = v1[269];
    v27 = v1[266];

    return sub_270472CC4(v27, v25, v26);
  }
}

uint64_t sub_2704711FC()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  *(v6 + 2232) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270471300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  v13 = v12[270];
  v14 = v12[269];
  v15 = v12[266];
  v16 = v12[253];

  OUTLINED_FUNCTION_8_28();
  sub_27047335C(v14, v17);
  OUTLINED_FUNCTION_0_38();
  sub_27047335C(v13, v18);
  sub_2704733B4(v15, v16, type metadata accessor for MessageViewStyle);
  OUTLINED_FUNCTION_1_40();
  v30 = v19;
  __swift_storeEnumTagSinglePayload(v12[253], 0, 1, v20);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_33_7();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_270471414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_25_12();
  v14 = swift_allocObject();
  v13[15] = &type metadata for JSStyleIntentImplementation;
  *(v14 + 16) = xmmword_2705E6EB0;
  v13[18] = v12;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    v17 = sub_2705D7564();
    v19 = v18;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v13 + 15, v13[18]);
    DynamicType = swift_getDynamicType();
    v13[26] = swift_getMetatypeMetadata();
    v13[23] = DynamicType;
    sub_2705D64E4();
    sub_2703C2EFC((v13 + 23), &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    v13[27] = v17;
    v21 = (v13 + 27);
    v13[30] = MEMORY[0x277D837D0];
    v13[28] = v19;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v13 + 15, v13[18]);
    v22 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v13[19] = v22;
    v21 = (v13 + 19);
    v13[22] = MetatypeMetadata;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v21, &unk_2807D4890, &qword_2705E2880);
  v24 = v13[270];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v13 + 15);
  sub_2705D64C4();
  sub_27047CF78(v14);

  OUTLINED_FUNCTION_0_38();
  sub_27047335C(v24, v25);
  OUTLINED_FUNCTION_1_40();
  v40 = v26;
  OUTLINED_FUNCTION_20_11(v27, v28, v29, v30);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_33_7();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10, a11, a12);
}

uint64_t sub_270471680()
{
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2112);
  OUTLINED_FUNCTION_8_28();
  sub_27047335C(v8, v9);
  *(v0 + 2008) = v6;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
  v186 = v0;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v11 = (*(*(v0 + 2104) + 88))(*(v0 + 2112), *(v0 + 2096));
  if (v11 != *MEMORY[0x277D84160])
  {
    if (v11 == *MEMORY[0x277D84170])
    {
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_3_39();

      (*(v4 + 96))(v2, v7);
      v179 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
      v25 = OUTLINED_FUNCTION_26_10();
      v26(v25);
      v27 = OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_16_14(v27, xmmword_2705E10F0);
      *(v5 + 1104) = v28;
      *(v5 + 1080) = &type metadata for JSStyleIntentImplementation;
      v29 = AMSLogKey();
      if (v29)
      {
        v30 = v29;
        v31 = v5 + 1400;
        v32 = sub_2705D7564();
        v34 = v33;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v35 = OUTLINED_FUNCTION_2_33((v5 + 1080));
        *(v5 + 1392) = swift_getMetatypeMetadata();
        *(v5 + 1368) = v35;
        sub_2705D64E4();
        sub_2703C2EFC(v5 + 1368, &unk_2807D4890, &qword_2705E2880);
        OUTLINED_FUNCTION_7_24();
        *(v5 + 1424) = MEMORY[0x277D837D0];
        *(v5 + 1400) = v32;
        *(v5 + 1408) = v34;
      }

      else
      {
        v31 = v5 + 1112;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v96 = OUTLINED_FUNCTION_2_33((v5 + 1080));
        *(v5 + 1136) = swift_getMetatypeMetadata();
        *(v5 + 1112) = v96;
      }

      sub_2705D64E4();
      OUTLINED_FUNCTION_31_7(v31);
      v172 = *(v5 + 2176);
      v174 = *(v5 + 2184);
      v175 = (*(v5 + 2240) + 32) & ~*(v5 + 2240);
      v177 = *(v5 + 2200);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1((v186 + 1080));
      v97 = sub_2705D8504();
      MEMORY[0x2743A3A90](v97);

      OUTLINED_FUNCTION_14_23();
      v98 = MEMORY[0x277D837D0];
      *(v186 + 1168) = MEMORY[0x277D837D0];
      *(v186 + 1144) = 0x272065756C6156;
      *(v186 + 1152) = 0xE700000000000000;
      sub_2705D6544();
      OUTLINED_FUNCTION_31_7(v186 + 1144);
      v99 = v186;
      v100 = sub_2705D7D64();
      *(v186 + 1200) = v98;
      *(v186 + 1176) = v100;
      *(v186 + 1184) = v101;
      sub_2705D6544();
      OUTLINED_FUNCTION_31_7(v186 + 1176);
      sub_27047CF78(v27);

      v102 = swift_allocObject();
      OUTLINED_FUNCTION_15_19(v102, v103, v104, v105, v106, v107, v108, v109, v110, v172, v174, v175, v177, v179, v180, v111);
      *(v186 + 1232) = v112;
      *(v186 + 1208) = &type metadata for JSStyleIntentImplementation;
      v113 = AMSLogKey();
      if (v113)
      {
        v114 = v113;
        v115 = v186 + 1336;
        v116 = sub_2705D7564();
        v118 = v117;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v119 = OUTLINED_FUNCTION_2_33((v186 + 1208));
        *(v186 + 1328) = swift_getMetatypeMetadata();
        *(v186 + 1304) = v119;
        sub_2705D64E4();
        sub_2703C2EFC(v186 + 1304, &unk_2807D4890, &qword_2705E2880);
        OUTLINED_FUNCTION_7_24();
        *(v186 + 1360) = v98;
        *(v186 + 1336) = v116;
        *(v186 + 1344) = v118;
      }

      else
      {
        v115 = v186 + 1240;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v120 = OUTLINED_FUNCTION_2_33((v186 + 1208));
        *(v186 + 1264) = swift_getMetatypeMetadata();
        *(v186 + 1240) = v120;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v115, &unk_2807D4890, &qword_2705E2880);
      v187 = *(v186 + 2160);
      v121 = *(v99 + 2072);
      v122 = *(v99 + 2056);
      v123 = *(v99 + 2048);
      OUTLINED_FUNCTION_35_5();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1((v99 + 1208));
      OUTLINED_FUNCTION_11_23();
      OUTLINED_FUNCTION_22_11();
      sub_2705D64C4();
      v124 = sub_2705D7D54();
      *(v99 + 1296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3600, &unk_2705F2E40);
      *(v99 + 1272) = v124;
      sub_2705D6544();
      sub_2703C2EFC(v99 + 1272, &unk_2807D4890, &qword_2705E2880);
      sub_27047CF78(v102);

      (*(v122 + 8))(v121, v123);
      OUTLINED_FUNCTION_0_38();
      sub_27047335C(v187, v125);

      goto LABEL_30;
    }

    if (v11 == *MEMORY[0x277D84158])
    {
      OUTLINED_FUNCTION_28_8();
      v183 = v36;
      v37 = *(v0 + 2112);
      v38 = *(v0 + 2104);
      v39 = *(v0 + 2096);
      v40 = *(v0 + 2080);
      OUTLINED_FUNCTION_3_39();

      (*(v38 + 96))(v37, v39);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3608, &qword_2705FD370) + 48);
      sub_2703B291C(v37, v0 + 16);
      (*(v5 + 32))(v40, v37 + v42, v1);
      v43 = v0;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2705EB880;
      v181 = v44;
      *(v0 + 1488) = v183;
      *(v0 + 1464) = &type metadata for JSStyleIntentImplementation;
      v45 = AMSLogKey();
      if (v45)
      {
        v46 = v45;
        v47 = v0 + 1784;
        v48 = sub_2705D7564();
        v50 = v49;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v51 = OUTLINED_FUNCTION_2_33((v0 + 1464));
        *(v186 + 1776) = swift_getMetatypeMetadata();
        *(v186 + 1752) = v51;
        sub_2705D64E4();
        sub_2703C2EFC(v186 + 1752, &unk_2807D4890, &qword_2705E2880);
        OUTLINED_FUNCTION_7_24();
        *(v186 + 1808) = MEMORY[0x277D837D0];
        *(v186 + 1784) = v48;
        *(v186 + 1792) = v50;
      }

      else
      {
        v47 = v0 + 1496;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v149 = OUTLINED_FUNCTION_2_33((v0 + 1464));
        *(v186 + 1520) = swift_getMetatypeMetadata();
        *(v186 + 1496) = v149;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v47, &unk_2807D4890, &qword_2705E2880);
      v184 = *(v186 + 2200);
      OUTLINED_FUNCTION_35_5();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1((v186 + 1464));
      OUTLINED_FUNCTION_4_33();
      sub_2705D64C4();
      sub_2705D7D04();
      MEMORY[0x2743A3A90](0x272079654BLL, 0xE500000000000000);
      __swift_project_boxed_opaque_existential_1((v186 + 16), *(v186 + 40));
      sub_2705D8104();
      OUTLINED_FUNCTION_14_23();
      v150 = MEMORY[0x277D837D0];
      *(v186 + 1552) = MEMORY[0x277D837D0];
      *(v186 + 1528) = 0;
      *(v186 + 1536) = 0xE000000000000000;
      sub_2705D6544();
      sub_2703C2EFC(v186 + 1528, &unk_2807D4890, &qword_2705E2880);
      v151 = sub_2705D7D64();
      *(v186 + 1584) = v150;
      *(v186 + 1560) = v151;
      *(v186 + 1568) = v152;
      sub_2705D6544();
      sub_2703C2EFC(v186 + 1560, &unk_2807D4890, &qword_2705E2880);
      sub_27047CF78(v181);

      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_2705E10F0;
      *(v43 + 1616) = v184;
      *(v43 + 1592) = &type metadata for JSStyleIntentImplementation;
      v154 = AMSLogKey();
      if (v154)
      {
        v155 = v154;
        v156 = v43 + 1720;
        v157 = sub_2705D7564();
        v159 = v158;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v160 = OUTLINED_FUNCTION_2_33((v43 + 1592));
        *(v43 + 1712) = swift_getMetatypeMetadata();
        *(v43 + 1688) = v160;
        sub_2705D64E4();
        sub_2703C2EFC(v43 + 1688, &unk_2807D4890, &qword_2705E2880);
        OUTLINED_FUNCTION_7_24();
        *(v43 + 1744) = MEMORY[0x277D837D0];
        *(v43 + 1720) = v157;
        *(v43 + 1728) = v159;
      }

      else
      {
        v156 = v43 + 1624;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v161 = OUTLINED_FUNCTION_2_33((v43 + 1592));
        *(v43 + 1648) = swift_getMetatypeMetadata();
        *(v43 + 1624) = v161;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v156, &unk_2807D4890, &qword_2705E2880);
      v185 = *(v43 + 2160);
      v162 = *(v43 + 2080);
      v163 = *(v43 + 2056);
      v164 = *(v43 + 2048);
      OUTLINED_FUNCTION_35_5();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1((v43 + 1592));
      OUTLINED_FUNCTION_11_23();
      OUTLINED_FUNCTION_22_11();
      sub_2705D64C4();
      v165 = sub_2705D7D54();
      *(v43 + 1680) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3600, &unk_2705F2E40);
      *(v43 + 1656) = v165;
      sub_2705D6544();
      sub_2703C2EFC(v43 + 1656, &unk_2807D4890, &qword_2705E2880);
      sub_27047CF78(v153);

      (*(v163 + 8))(v162, v164);
      OUTLINED_FUNCTION_0_38();
      sub_27047335C(v185, v166);
      __swift_destroy_boxed_opaque_existential_1((v43 + 16));

      goto LABEL_30;
    }

    if (v11 == *MEMORY[0x277D84168])
    {
      OUTLINED_FUNCTION_28_8();
      v182 = v83;
      v84 = *(v0 + 2112);
      v85 = *(v0 + 2104);
      v86 = *(v0 + 2096);
      v87 = *(v0 + 2088);
      OUTLINED_FUNCTION_3_39();

      (*(v85 + 96))(v84, v86);
      (*(v5 + 32))(v87, v84, v1);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_2705E10F0;
      *(v0 + 1840) = v182;
      *(v0 + 1816) = &type metadata for JSStyleIntentImplementation;
      v90 = AMSLogKey();
      if (v90)
      {
        v91 = v90;
        v92 = v0 + 88;
        v93 = sub_2705D7564();
        v3 = v94;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v95 = OUTLINED_FUNCTION_2_33((v0 + 1816));
        *(v186 + 1936) = swift_getMetatypeMetadata();
        *(v186 + 1912) = v95;
        sub_2705D64E4();
        sub_2703C2EFC(v186 + 1912, &unk_2807D4890, &qword_2705E2880);
        OUTLINED_FUNCTION_7_24();
        *(v186 + 112) = MEMORY[0x277D837D0];
        *(v186 + 88) = v93;
        *(v186 + 96) = v3;
      }

      else
      {
        v92 = v0 + 1848;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v167 = OUTLINED_FUNCTION_2_33((v0 + 1816));
        *(v186 + 1872) = swift_getMetatypeMetadata();
        *(v186 + 1848) = v167;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v92, &unk_2807D4890, &qword_2705E2880);
      v168 = *(v186 + 2160);
      v169 = *(v186 + 2088);
      OUTLINED_FUNCTION_24_14();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1((v186 + 1816));
      OUTLINED_FUNCTION_4_33();
      sub_2705D64C4();
      *(v186 + 1904) = v3;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v186 + 1880));
      (*(v186 + 16))(boxed_opaque_existential_1Tm, v169, v3);
      sub_2705D6544();
      sub_2703C2EFC(v186 + 1880, &unk_2807D4890, &qword_2705E2880);
      sub_27047CF78(v89);

      (*(v186 + 8))(v169, v3);
      v80 = v186;
      OUTLINED_FUNCTION_0_38();
      v82 = v168;
      goto LABEL_16;
    }

    (*(*(v0 + 2104) + 8))(*(v0 + 2112), *(v0 + 2096));
LABEL_26:
    v126 = *(v0 + 2200);

    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_2705E10F0;
    *(v0 + 528) = v126;
    *(v0 + 504) = &type metadata for JSStyleIntentImplementation;
    v128 = AMSLogKey();
    v129 = MEMORY[0x277D837D0];
    if (v128)
    {
      v130 = v128;
      v131 = v0 + 696;
      v132 = sub_2705D7564();
      v134 = v133;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
      DynamicType = swift_getDynamicType();
      *(v0 + 688) = swift_getMetatypeMetadata();
      *(v0 + 664) = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 664, &unk_2807D4890, &qword_2705E2880);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 720) = v129;
      *(v0 + 696) = v132;
      *(v0 + 704) = v134;
    }

    else
    {
      v131 = v0 + 536;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v136 = OUTLINED_FUNCTION_32_4((v0 + 504));
      *(v0 + 560) = swift_getMetatypeMetadata();
      *(v0 + 536) = v136;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v131, &unk_2807D4890, &qword_2705E2880);
    v137 = *(v0 + 2232);
    OUTLINED_FUNCTION_27_7();
    v139 = *(v138 + 2160);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v0 + 504));
    OUTLINED_FUNCTION_4_33();
    sub_2705D64C4();
    swift_getErrorValue();
    v140 = sub_2705D8344();
    *(v0 + 592) = v129;
    *(v0 + 568) = v140;
    *(v0 + 576) = v141;
    sub_2705D6544();
    sub_2703C2EFC(v0 + 568, &unk_2807D4890, &qword_2705E2880);
    sub_27047CF78(v127);

    OUTLINED_FUNCTION_0_38();
    sub_27047335C(v139, v142);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_3_39();

  (*(v4 + 96))(v2, v7);
  v178 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
  v13 = OUTLINED_FUNCTION_26_10();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_16_14(v15, xmmword_2705E10F0);
  *(v5 + 752) = v16;
  *(v5 + 728) = &type metadata for JSStyleIntentImplementation;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    v19 = v5 + 1048;
    v20 = sub_2705D7564();
    v22 = v21;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v23 = OUTLINED_FUNCTION_2_33((v5 + 728));
    *(v5 + 1040) = swift_getMetatypeMetadata();
    *(v5 + 1016) = v23;
    sub_2705D64E4();
    sub_2703C2EFC(v5 + 1016, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    *(v5 + 1072) = MEMORY[0x277D837D0];
    *(v5 + 1048) = v20;
    *(v5 + 1056) = v22;
  }

  else
  {
    v19 = v5 + 760;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v52 = OUTLINED_FUNCTION_2_33((v5 + 728));
    *(v5 + 784) = swift_getMetatypeMetadata();
    *(v5 + 760) = v52;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v19, &unk_2807D4890, &qword_2705E2880);
  v53 = *(v5 + 2240);
  v173 = *(v5 + 2184);
  OUTLINED_FUNCTION_27_7();
  v176 = v54;
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v186 + 728));
  v55 = sub_2705D8504();
  MEMORY[0x2743A3A90](v55);

  MEMORY[0x2743A3A90](0x74616D73696D2027, 0xEB000000003A6863);
  v56 = MEMORY[0x277D837D0];
  *(v186 + 816) = MEMORY[0x277D837D0];
  *(v186 + 792) = 0x272065707954;
  *(v186 + 800) = 0xE600000000000000;
  sub_2705D6544();
  OUTLINED_FUNCTION_31_7(v186 + 792);
  v57 = sub_2705D7D64();
  *(v186 + 848) = v56;
  *(v186 + 824) = v57;
  *(v186 + 832) = v58;
  sub_2705D6544();
  OUTLINED_FUNCTION_31_7(v186 + 824);
  sub_27047CF78(v15);

  v59 = swift_allocObject();
  OUTLINED_FUNCTION_15_19(v59, v60, v61, v62, v63, v64, v65, v66, v67, v171, v173, (v53 + 32) & ~v53, v176, v178, v180, v68);
  *(v186 + 880) = v69;
  *(v186 + 856) = &type metadata for JSStyleIntentImplementation;
  v70 = AMSLogKey();
  if (v70)
  {
    v71 = v70;
    v72 = v186 + 984;
    v53 = sub_2705D7564();
    v74 = v73;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v75 = OUTLINED_FUNCTION_2_33((v186 + 856));
    *(v186 + 976) = swift_getMetatypeMetadata();
    *(v186 + 952) = v75;
    sub_2705D64E4();
    sub_2703C2EFC(v186 + 952, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    *(v186 + 1008) = v56;
    *(v186 + 984) = v53;
    *(v186 + 992) = v74;
  }

  else
  {
    v72 = v186 + 888;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v76 = OUTLINED_FUNCTION_2_33((v186 + 856));
    *(v186 + 912) = swift_getMetatypeMetadata();
    *(v186 + 888) = v76;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v72, &unk_2807D4890, &qword_2705E2880);
  v77 = *(v186 + 2160);
  v78 = *(v186 + 2064);
  OUTLINED_FUNCTION_24_14();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v186 + 856));
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_22_11();
  sub_2705D64C4();
  v79 = sub_2705D7D54();
  *(v186 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3600, &unk_2705F2E40);
  *(v186 + 920) = v79;
  sub_2705D6544();
  sub_2703C2EFC(v186 + 920, &unk_2807D4890, &qword_2705E2880);
  sub_27047CF78(v59);

  (*(v186 + 8))(v78, v53);
  v80 = v186;
  OUTLINED_FUNCTION_0_38();
  v82 = v77;
LABEL_16:
  sub_27047335C(v82, v81);

LABEL_30:
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_20_11(v143, v144, v145, v146);

  OUTLINED_FUNCTION_1_4();

  return v147();
}

uint64_t sub_270472AA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_2705D4484();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JSServiceRequestIntent(0);
  sub_2703EE6F4(a1 + *(v12 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2703C2EFC(v7, &unk_2807D4280, &unk_2705E4700);
    v13 = (a1 + *(v12 + 28));
    v14 = v13[1];
    if (v14)
    {
      *a2 = *v13;
      *(a2 + 1) = v14;
      v15 = type metadata accessor for SourceLookupType(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v15);
    }

    v21 = type metadata accessor for SourceLookupType(0);
    v19 = a2;
    v20 = 1;
  }

  else
  {
    v17 = *(v9 + 32);
    v17(v11, v7, v8);
    v17(a2, v11, v8);
    v18 = type metadata accessor for SourceLookupType(0);
    swift_storeEnumTagMultiPayload();
    v19 = a2;
    v20 = 0;
    v21 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
}

uint64_t sub_270472CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_270472CE8, 0, 0);
}

uint64_t sub_270472CE8()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_270472D0C, v1, 0);
}

uint64_t sub_270472D0C()
{
  OUTLINED_FUNCTION_2_2();
  sub_2704A8968(*(v0 + 40));
  *(v0 + 64) = v1;
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_270472D74()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    v3 = type metadata accessor for JSEngineCore();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
    *v2 = v0;
    v2[1] = sub_270472EB0;
    v5 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 16, v1, v3, v4, v5);
  }

  else
  {
    sub_270473414();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_1_4();

    return v7();
  }
}

uint64_t sub_270472EB0(uint64_t a1)
{
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 80) = v1;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_270472FDC()
{
  v1 = v0[2];
  v0[11] = v1;
  v8 = (*(*v1 + 104) + **(*v1 + 104));
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = type metadata accessor for JSStyleIntentModel(0);
  v4 = sub_270473468();
  *v2 = v0;
  v2[1] = sub_27047311C;
  v5 = v0[3];
  v6 = v0[4];

  return v8(v5, v6, v3, v4);
}

uint64_t sub_27047311C()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270473244()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704732A0()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704732FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27047335C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2704733B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_270473414()
{
  result = qword_2807D3610;
  if (!qword_2807D3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3610);
  }

  return result;
}

unint64_t sub_270473468()
{
  result = qword_2807D3618;
  if (!qword_2807D3618)
  {
    type metadata accessor for JSStyleIntentModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3618);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_33(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_2705D6504();
}

void OUTLINED_FUNCTION_14_23()
{

  JUMPOUT(0x2743A3A90);
}

__n128 OUTLINED_FUNCTION_15_19(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(*(v4 + 2024), 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t a1)
{

  return sub_2703C2EFC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v1 + 336));

  return swift_getDynamicType();
}

uint64_t sub_27047389C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequestIntent(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2704738F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequestIntent(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for JSStyleIntentModel(uint64_t a1)
{
  result = qword_2807D3620;
  if (!qword_2807D3620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270473990(uint64_t a1)
{
  result = type metadata accessor for JSServiceRequestIntent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2704739FC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for JSServiceRequestIntent(0);
  OUTLINED_FUNCTION_0_39();
  a1[4] = sub_270474124(v3, v4, &unk_2705F2C20);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);

  return sub_270470210(v1, boxed_opaque_existential_1Tm);
}

uint64_t sub_270473A70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4974736575716572 && a2 == 0xED0000746E65746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270473B14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3660, &qword_2705F2F48);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270474068();
  sub_2705D84C4();
  type metadata accessor for JSServiceRequestIntent(0);
  OUTLINED_FUNCTION_0_39();
  sub_270474124(v8, v9, &unk_2705F2B48);
  sub_2705D8084();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_270473C70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for JSServiceRequestIntent(0);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3648, &qword_2705F2F40);
  OUTLINED_FUNCTION_0();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for JSStyleIntentModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270474068();
  sub_2705D8484();
  if (!v2)
  {
    v14 = v19;
    OUTLINED_FUNCTION_0_39();
    sub_270474124(v15, v16, &unk_2705F2B70);
    v17 = v21;
    sub_2705D7FA4();
    (*(v20 + 8))(v10, v6);
    sub_2704740BC(v17, v13, type metadata accessor for JSServiceRequestIntent);
    sub_2704740BC(v13, v14, type metadata accessor for JSStyleIntentModel);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_270473ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270473A70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270473EF8(uint64_t a1)
{
  v2 = sub_270474068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270473F34(uint64_t a1)
{
  v2 = sub_270474068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270474010(uint64_t a1)
{
  result = sub_270474124(&qword_2807D3638, type metadata accessor for JSStyleIntentModel, &unk_2705F2E84);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270474068()
{
  result = qword_2807D3650;
  if (!qword_2807D3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3650);
  }

  return result;
}

uint64_t sub_2704740BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_270474124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for JSStyleIntentModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270474208);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270474244()
{
  result = qword_2807D3670;
  if (!qword_2807D3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3670);
  }

  return result;
}

unint64_t sub_27047429C()
{
  result = qword_2807D3678;
  if (!qword_2807D3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3678);
  }

  return result;
}

unint64_t sub_2704742F4()
{
  result = qword_2807D3680[0];
  if (!qword_2807D3680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D3680);
  }

  return result;
}

uint64_t sub_270474360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2704743B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_1Tm(&v10);
  OUTLINED_FUNCTION_4_4();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_2703B291C(&v10, v8 + 40 * a1 + 32);
}

void sub_270474448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_4_4();
  (*(v10 + 16))();
  v11 = sub_2703D51F4(a1, a3[1]);
  if (v12)
  {
    sub_270474544(a1, boxed_opaque_existential_1Tm, a3, a4, a5);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v17);
    return;
  }

  v13 = v11;
  v14 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_270435E80(v14);
  v14 = isUniquelyReferenced_nonNull_native;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v13 < v14[2])
  {
    OUTLINED_FUNCTION_1_41(isUniquelyReferenced_nonNull_native, v16);
    *a3 = v14;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_270474544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v37[3] = a4;
  v37[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v37);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a4);
  sub_2703BD1EC(a1, v35);
  sub_2703B4E54(v37, &v36);
  sub_2703C1DF8(v35, v27, &qword_2807D23B8, &unk_2705ECBF0);
  sub_2704E8CB4();
  v10 = *(*a3 + 16);
  sub_2704E8D58(v10);
  v11 = v33;
  v12 = v34;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v16 + 16))(v15);
  sub_2704743B4(v10, v15, a3, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v17 = *a3;
  sub_2703D7E30(v27);
  sub_2703C1DF8(v35, v27, &qword_2807D23B8, &unk_2705ECBF0);
  v18 = *(v17 + 16) - 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2703BC4CC(v18, v27, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, a3[1], *v27, v28, v29, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4]);
  a3[1] = v26;
  sub_270474A7C(v35, &qword_2807D23B8, &unk_2705ECBF0);
  sub_2703D7E30(v27);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_27047476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a5;
  v19[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  OUTLINED_FUNCTION_4_4();
  (*(v12 + 16))();
  v13 = sub_2703D5508(a1, a2, a4[1]);
  if (v14)
  {
    sub_27047487C(a1, a2, boxed_opaque_existential_1Tm, a4, a5, a6);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return;
  }

  v15 = v13;
  v16 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_270435E80(v16);
  v16 = isUniquelyReferenced_nonNull_native;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v15 < v16[2])
  {
    OUTLINED_FUNCTION_1_41(isUniquelyReferenced_nonNull_native, v18);
    *a4 = v16;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_27047487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v28[3] = a5;
  v28[4] = a6;
  __swift_allocate_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_4_4();
  (*(v9 + 16))();
  v26[0] = a1;
  v26[1] = a2;
  sub_2703B4E54(v28, &v27);
  OUTLINED_FUNCTION_2_34();

  sub_2704E8CB4();
  v10 = *(*a4 + 16);
  sub_2704E8D58(v10);
  v11 = v24;
  v12 = v25;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  sub_2704743B4(v10, v15, a4, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v17 = *a4;

  OUTLINED_FUNCTION_2_34();
  v18 = *(v17 + 16) - 1;
  v19 = v22[1];
  v20 = v22[2];
  swift_isUniquelyReferenced_nonNull_native();
  v22[0] = a4[1];
  sub_2703BCC9C(v18, v19, v20);

  a4[1] = v22[0];
  sub_270474A7C(v26, &qword_2807D3708, &qword_2705F30D8);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_270474A7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *OUTLINED_FUNCTION_1_41(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_assign_boxed_opaque_existential_1((v2 + 40 * v3 + 32), va);
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return sub_2703C1DF8(v2 - 160, v2 - 216, v0, v1);
}

uint64_t sub_270474B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270474BD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LabelComponentModel(uint64_t a1)
{
  result = qword_2807D3710;
  if (!qword_2807D3710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270474CAC(uint64_t a1)
{
  sub_2704459D4();
  if (v1 <= 0x3F)
  {
    sub_270474EE8(319, &qword_2807D0150, MEMORY[0x277CE0AE0], type metadata accessor for CodableByProxy);
    if (v2 <= 0x3F)
    {
      sub_270474EE8(319, &qword_2807D3720, MEMORY[0x277CE09E0], type metadata accessor for CodableOptionalByProxy);
      if (v3 <= 0x3F)
      {
        sub_270474EE8(319, &qword_2807D3728, MEMORY[0x277CE0F78], type metadata accessor for CodableByProxy);
        if (v4 <= 0x3F)
        {
          sub_270474EE8(319, &qword_2807D3730, MEMORY[0x277CE1378], type metadata accessor for CodableByProxy);
          if (v5 <= 0x3F)
          {
            sub_270474EE8(319, &qword_2807D3738, MEMORY[0x277CDF720], type metadata accessor for CodableByProxy);
            if (v6 <= 0x3F)
            {
              sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80);
              if (v7 <= 0x3F)
              {
                sub_270474EE8(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328, qword_2705DF710);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_270474EE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_270474F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v158 = v24;
  v30 = v29;
  v32 = v31;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AC8, &qword_2705F35E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  v35 = v140 - v34;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AD0, &unk_2705F35E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  v156 = v37;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0000, &unk_2705E2C70);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_21_13(v39, v140[0]);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AD8, &unk_2705F35F8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  v153 = v41;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0020, &unk_2705E2C80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_12(v43, v140[0]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AE0, &unk_2705F3608);
  OUTLINED_FUNCTION_1_42(v44, &a15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0040, &unk_2705E2C90);
  OUTLINED_FUNCTION_1_42(v47, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3AE8, &qword_2705F3618);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0060, &unk_2705E2CA0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  v54 = v140 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0050, &unk_2705E7840);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a14);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v57);
  v59 = v140 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0030, &unk_2705E7830);
  v61 = OUTLINED_FUNCTION_1_42(v60, &a19);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_93_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0010, &unk_2705E7820);
  v65 = OUTLINED_FUNCTION_1_42(v64, &a21);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFFF0, &unk_2705E7810);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_16_15();
  if (v73)
  {
    v74 = OUTLINED_FUNCTION_10_10();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
    OUTLINED_FUNCTION_14();
    (*(v77 + 16))(v35, v158, v76);
    swift_storeEnumTagMultiPayload();
    sub_2703E2638();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_71();
    sub_2703E2A50(v78);
    OUTLINED_FUNCTION_55_1();
    sub_2705D5434();
  }

  else
  {
    v141 = v59;
    v79 = v158;
    v142 = v72;
    v140[1] = v68;
    v143 = v32;
    v160[0] = *v30;
    v160[1] = v71;
    v80 = *(v30 + 32);
    v161 = *(v30 + 16);
    *v162 = v80;
    *&v162[9] = *(v30 + 41);
    sub_270417938();
    if (v81)
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40, &qword_2705E2C18);
      OUTLINED_FUNCTION_14();
      (*(v83 + 16))(v26, v79, v82);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      sub_2703E2998();
      OUTLINED_FUNCTION_5_36();
      OUTLINED_FUNCTION_33_2();
      sub_2703E2A50(v84);
      OUTLINED_FUNCTION_90_0();
      sub_2705D5434();
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40, &qword_2705E2C18);
      OUTLINED_FUNCTION_14();
      (*(v86 + 16))(v54, v79, v85);
      v87 = &v54[*(v51 + 36)];
      *v87 = v160;
      OUTLINED_FUNCTION_14_10(v87);
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v88, v89, v90, v91);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      sub_2703E2998();
      OUTLINED_FUNCTION_5_36();
      sub_2703E2A50(v92);
      OUTLINED_FUNCTION_90_0();
      sub_2705D5434();
      sub_2703C2EFC(v54, &qword_2807D0060, &unk_2705E2CA0);
    }

    v93 = v141;
    sub_2703FC3D4(v25, v141, &qword_2807D0050, &unk_2705E7840);
    sub_270417900();
    v94 = v150;
    if (v95)
    {
      sub_2703FC5C0(v93, v148, &qword_2807D0050, &unk_2705E7840);
      swift_storeEnumTagMultiPayload();
      sub_270414EE0();
      sub_2703E28E0();
      v96 = v146;
      sub_2705D5434();
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_94_0();
      sub_2703FC5C0(v97, v98, v99, v100);
      OUTLINED_FUNCTION_4_34(&v35[*(v147 + 36)]);
      OUTLINED_FUNCTION_19_9();
      sub_2703FC5C0(v101, v102, v103, v104);
      swift_storeEnumTagMultiPayload();
      sub_270414EE0();
      sub_2703E28E0();
      v96 = v146;
      sub_2705D5434();
      OUTLINED_FUNCTION_71();
      sub_2703C2EFC(v105, v106, v107);
    }

    v108 = v157;
    sub_2703C2EFC(v93, &qword_2807D0050, &unk_2705E7840);
    sub_2703FC3D4(v96, v108, &qword_2807D0030, &unk_2705E7830);
    sub_270416214();
    if (v109)
    {
      sub_2703FC5C0(v108, v153, &qword_2807D0030, &unk_2705E7830);
      swift_storeEnumTagMultiPayload();
      sub_270414E54();
      sub_2703E2828();
      v110 = v149;
      sub_2705D5434();
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      v111 = v144;
      sub_2703FC5C0(v108, v144, &qword_2807D0030, &unk_2705E7830);
      OUTLINED_FUNCTION_4_34(v111 + *(v152 + 36));
      OUTLINED_FUNCTION_19_9();
      sub_2703FC5C0(v112, v113, v114, v115);
      swift_storeEnumTagMultiPayload();
      sub_270414E54();
      sub_2703E2828();
      v110 = v149;
      v108 = v157;
      sub_2705D5434();
      OUTLINED_FUNCTION_71();
      sub_2703C2EFC(v116, v117, v118);
    }

    sub_2703C2EFC(v108, &qword_2807D0030, &unk_2705E7830);
    sub_2703FC3D4(v110, v94, &qword_2807D0010, &unk_2705E7820);
    sub_27041624C();
    if (v119)
    {
      sub_2703FC5C0(v94, v156, &qword_2807D0010, &unk_2705E7820);
      swift_storeEnumTagMultiPayload();
      sub_270414DC8();
      sub_2703E26F0();
      sub_2705D5434();
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      v120 = v145;
      sub_2703FC5C0(v94, v145, &qword_2807D0010, &unk_2705E7820);
      OUTLINED_FUNCTION_4_34(v120 + *(v155 + 36));
      OUTLINED_FUNCTION_19_9();
      sub_2703FC5C0(v121, v122, v123, v124);
      swift_storeEnumTagMultiPayload();
      sub_270414DC8();
      sub_2703E26F0();
      OUTLINED_FUNCTION_62_2();
      sub_2705D5434();
      OUTLINED_FUNCTION_71();
      sub_2703C2EFC(v125, v126, v127);
    }

    sub_2703C2EFC(v94, &qword_2807D0010, &unk_2705E7820);
    OUTLINED_FUNCTION_38_4();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v128, v129, v130, v131);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v132, v133, v134, v135);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CFF40, &qword_2705E2C18);
    sub_2703E2638();
    OUTLINED_FUNCTION_5_36();
    sub_2703E2A50(v136);
    sub_2705D5434();
    v137 = OUTLINED_FUNCTION_17_15();
    sub_2703C2EFC(v137, v138, v139);
  }

  OUTLINED_FUNCTION_41_3();
}

void sub_270475A90(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  v5 = v1;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v5, sizeof(__dst));
  v10 = *(v7 + 8);
  if (v10 == 254)
  {
    memcpy(v142, v5, 0xB9uLL);
    sub_27047ADF4(v142);
    v11 = OUTLINED_FUNCTION_63_1();
    v13 = memcpy(v11, v12, 0x17BuLL);
    OUTLINED_FUNCTION_86_1(v13, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1498, &unk_2705EF710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1518, &unk_2705EF6F0);
    sub_27041342C();
    sub_27041388C();
  }

  else
  {
    v144[0] = *v7;
    v144[1] = v10;
    v14 = *(v7 + 32);
    v145 = *(v7 + 16);
    v146[0] = v14;
    *(v146 + 9) = *(v7 + 41);
    v15 = sub_270417938();
    if (v16)
    {
      memcpy(v143, __dst, 0xB9uLL);
      sub_27047A558(v143);
      v17 = OUTLINED_FUNCTION_50_2();
      v19 = memcpy(v17, v18, 0xEAuLL);
      OUTLINED_FUNCTION_86_1(v19, v141);
      v20 = &qword_2807D1508;
      v21 = &unk_2705E76A0;
    }

    else
    {
      v22 = v15;
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v142, v5, 0xB9uLL);
      OUTLINED_FUNCTION_69_1();
      memcpy(v23, v24, 0xC0uLL);
      LOBYTE(__src[24]) = v144;
      __src[25] = v22;
      __src[26] = v2;
      __src[27] = v3;
      __src[28] = v4;
      LOBYTE(__src[29]) = v133[0];
      v25 = OUTLINED_FUNCTION_63_1();
      v27 = memcpy(v25, v26, 0xC0uLL);
      LOBYTE(v141[24]) = v144;
      v141[25] = v22;
      v141[26] = v2;
      v141[27] = v3;
      v141[28] = v4;
      LOBYTE(v141[29]) = v133[0];
      OUTLINED_FUNCTION_86_1(v27, v143);
      sub_2703FC5C0(__src, v143, &qword_2807D1508, &unk_2705E76A0);
      sub_2703C2EFC(v141, &qword_2807D1508, &unk_2705E76A0);
      memcpy(v143, __src, 0xE9uLL);
      sub_27047A580(v143);
      v28 = OUTLINED_FUNCTION_50_2();
      memcpy(v28, v29, 0xEAuLL);
      v20 = OUTLINED_FUNCTION_92_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1518, &unk_2705EF6F0);
    sub_270413800();
    sub_27041388C();
    sub_2705D5434();
    memcpy(v138, v139, 0xEAuLL);
    v30 = sub_270417900();
    if (v31)
    {
      memcpy(v143, v138, 0xEAuLL);
      sub_27047A564(v143);
      v32 = OUTLINED_FUNCTION_50_2();
      memcpy(v32, v33, 0x11AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14E8, &unk_2705E7690);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14F8, &unk_2705EF740);
      sub_2704136E8();
      sub_270413774();
      OUTLINED_FUNCTION_55_1();
      sub_2705D5434();
    }

    else
    {
      v34 = v30;
      sub_2705D56E4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v142, v138, 0xEAuLL);
      OUTLINED_FUNCTION_69_1();
      memcpy(v35, v36, 0xF0uLL);
      LOBYTE(__src[30]) = v144;
      __src[31] = v34;
      __src[32] = v2;
      __src[33] = v3;
      __src[34] = v4;
      LOBYTE(__src[35]) = v133[0];
      v37 = OUTLINED_FUNCTION_63_1();
      memcpy(v37, v38, 0xF0uLL);
      LOBYTE(v141[30]) = v144;
      v141[31] = v34;
      v141[32] = v2;
      v141[33] = v3;
      v141[34] = v4;
      LOBYTE(v141[35]) = v133[0];
      OUTLINED_FUNCTION_80_1(v138);
      OUTLINED_FUNCTION_81_0(__src);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v39, v40, v41);
      memcpy(v143, __src, 0x119uLL);
      sub_27047A578(v143);
      v42 = OUTLINED_FUNCTION_50_2();
      v44 = memcpy(v42, v43, 0x11AuLL);
      OUTLINED_FUNCTION_95(v44, v45, v46, v47, v48, v49, v50, v51, v133[0]);
      v52 = OUTLINED_FUNCTION_62_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
      OUTLINED_FUNCTION_85_1();
      sub_2704136E8();
      v54 = sub_270413774();
      OUTLINED_FUNCTION_59_2(v54, v55, v56, v57, v54);
      OUTLINED_FUNCTION_33_2();
      sub_2703C2EFC(v58, v59, v60);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v61, v62, v63);
    }

    memcpy(v136, v137, 0x11AuLL);
    v64 = sub_270416214();
    if (v65)
    {
      memcpy(v143, v136, 0x11AuLL);
      sub_27047AE00(v143);
      v66 = OUTLINED_FUNCTION_50_2();
      memcpy(v66, v67, 0x14AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14C8, &unk_2705E7680);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14D8, &unk_2705EF730);
      sub_2704135D0();
      sub_27041365C();
      OUTLINED_FUNCTION_55_1();
      sub_2705D5434();
    }

    else
    {
      v68 = v64;
      sub_2705D56F4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v142, v136, 0x11AuLL);
      OUTLINED_FUNCTION_69_1();
      memcpy(v69, v70, 0x120uLL);
      LOBYTE(__src[36]) = v144;
      __src[37] = v68;
      __src[38] = v2;
      __src[39] = v3;
      __src[40] = v4;
      LOBYTE(__src[41]) = v133[0];
      v71 = OUTLINED_FUNCTION_63_1();
      memcpy(v71, v72, 0x120uLL);
      LOBYTE(v141[36]) = v144;
      v141[37] = v68;
      v141[38] = v2;
      v141[39] = v3;
      v141[40] = v4;
      LOBYTE(v141[41]) = v133[0];
      OUTLINED_FUNCTION_80_1(v136);
      OUTLINED_FUNCTION_81_0(__src);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v73, v74, v75);
      memcpy(v143, __src, 0x149uLL);
      sub_27047AE28(v143);
      v76 = OUTLINED_FUNCTION_50_2();
      v78 = memcpy(v76, v77, 0x14AuLL);
      OUTLINED_FUNCTION_95(v78, v79, v80, v81, v82, v83, v84, v85, v133[0]);
      v86 = OUTLINED_FUNCTION_62_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v86, v87);
      OUTLINED_FUNCTION_85_1();
      sub_2704135D0();
      v88 = sub_27041365C();
      OUTLINED_FUNCTION_59_2(v88, v89, v90, v91, v88);
      OUTLINED_FUNCTION_33_2();
      sub_2703C2EFC(v92, v93, v94);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v95, v96, v97);
    }

    memcpy(v134, v135, 0x14AuLL);
    v98 = sub_27041624C();
    if (v99)
    {
      memcpy(v143, v134, 0x14AuLL);
      sub_27047AE0C(v143);
      v100 = OUTLINED_FUNCTION_50_2();
      memcpy(v100, v101, 0x17AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14A8, &unk_2705E7670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D14B8, &unk_2705EF720);
      sub_2704134B8();
      sub_270413544();
      OUTLINED_FUNCTION_55_1();
      sub_2705D5434();
    }

    else
    {
      v102 = v98;
      sub_2705D5714();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      memcpy(v142, v134, 0x14AuLL);
      LOBYTE(__src[0]) = 0;
      memcpy(v133, v142, 0x150uLL);
      LOBYTE(v133[42]) = v144;
      v133[43] = v102;
      v133[44] = v2;
      v133[45] = v3;
      v133[46] = v4;
      LOBYTE(v133[47]) = 0;
      v103 = OUTLINED_FUNCTION_63_1();
      memcpy(v103, v104, 0x150uLL);
      LOBYTE(v141[42]) = v144;
      v141[43] = v102;
      v141[44] = v2;
      v141[45] = v3;
      v141[46] = v4;
      LOBYTE(v141[47]) = 0;
      OUTLINED_FUNCTION_80_1(v134);
      OUTLINED_FUNCTION_81_0(v133);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v105, v106, v107);
      memcpy(v143, v133, 0x179uLL);
      sub_27047AE20(v143);
      v108 = OUTLINED_FUNCTION_50_2();
      memcpy(v108, v109, 0x17AuLL);
      sub_2703FC5C0(v133, __src, &qword_2807D14A8, &unk_2705E7670);
      v110 = OUTLINED_FUNCTION_62_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v110, v111);
      OUTLINED_FUNCTION_85_1();
      sub_2704134B8();
      v112 = sub_270413544();
      OUTLINED_FUNCTION_59_2(v112, v113, v114, v115, v112);
      OUTLINED_FUNCTION_33_2();
      sub_2703C2EFC(v116, v117, v118);
      OUTLINED_FUNCTION_57_1();
      sub_2703C2EFC(v119, v120, v121);
    }

    memcpy(v142, __src, 0x17AuLL);
    sub_27047AE18(v142);
    v122 = OUTLINED_FUNCTION_63_1();
    memcpy(v122, v123, 0x17BuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1498, &unk_2705EF710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1518, &unk_2705EF6F0);
    sub_27041342C();
    sub_27041388C();
    OUTLINED_FUNCTION_33_2();
  }

  sub_2705D5434();
  memcpy(v141, v143, 0x17BuLL);
  memcpy(v9, v143, 0x17BuLL);
  v124 = OUTLINED_FUNCTION_50_2();
  memcpy(v124, v125, 0x17BuLL);
  OUTLINED_FUNCTION_28_9();
  sub_2703FC5C0(v126, v127, v128, v129);
  OUTLINED_FUNCTION_71();
  sub_2703C2EFC(v130, v131, v132);
  OUTLINED_FUNCTION_41_3();
}

uint64_t sub_2704762F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  v6 = a1[1];
  if (v6 == 254)
  {
    memcpy(__src, v3, 0x59uLL);
    sub_270479F98(__src);
    memcpy(v57, __src, 0x11BuLL);
    sub_2703FC5C0(v3, v59, &qword_2807D37D8, &qword_2705F33F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37E0, &qword_2705F33F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37D8, &qword_2705F33F0);
    sub_270479FA4();
    sub_27047A404();
  }

  else
  {
    v60 = *a1;
    v61 = v6;
    v7 = *(a1 + 2);
    v62 = *(a1 + 1);
    v63[0] = v7;
    *(v63 + 9) = *(a1 + 41);
    sub_270417938();
    if (v8)
    {
      memcpy(v59, __dst, 0x59uLL);
      sub_27047A540(v59);
      memcpy(__src, v59, 0x8AuLL);
      sub_2703FC5C0(v3, v57, &qword_2807D37D8, &qword_2705F33F0);
    }

    else
    {
      v9 = sub_2705D56D4();
      sub_2705D4D34();
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      memcpy(__src, v3, 0x59uLL);
      LOBYTE(v49[0]) = 0;
      memcpy(v56, __src, 0x60uLL);
      LOBYTE(v56[12]) = v9;
      v56[13] = v11;
      v56[14] = v13;
      v56[15] = v15;
      v56[16] = v17;
      LOBYTE(v56[17]) = 0;
      memcpy(v57, __src, 0x60uLL);
      LOBYTE(v57[12]) = v9;
      v57[13] = v11;
      v57[14] = v13;
      v57[15] = v15;
      v57[16] = v17;
      LOBYTE(v57[17]) = 0;
      sub_2703FC5C0(v3, v59, &qword_2807D37D8, &qword_2705F33F0);
      sub_2703FC5C0(v56, v59, &qword_2807D3858, &unk_2705F3430);
      sub_2703C2EFC(v57, &qword_2807D3858, &unk_2705F3430);
      memcpy(v59, v56, 0x89uLL);
      sub_27047A590(v59);
      memcpy(__src, v59, 0x8AuLL);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3858, &unk_2705F3430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37D8, &qword_2705F33F0);
    sub_27047A378();
    sub_27047A404();
    sub_2705D5434();
    memcpy(v54, v55, 0x8AuLL);
    sub_270417900();
    if (v18)
    {
      memcpy(v59, v54, 0x8AuLL);
      sub_27047A54C(v59);
      memcpy(__src, v59, 0xBAuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3838, &qword_2705F3420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3848, &qword_2705F3428);
      sub_27047A260();
      sub_27047A2EC();
      sub_2705D5434();
    }

    else
    {
      v19 = sub_2705D56E4();
      sub_2705D4D34();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      memcpy(__src, v54, 0x8AuLL);
      LOBYTE(v49[0]) = 0;
      memcpy(v56, __src, 0x90uLL);
      LOBYTE(v56[18]) = v19;
      v56[19] = v21;
      v56[20] = v23;
      v56[21] = v25;
      v56[22] = v27;
      LOBYTE(v56[23]) = 0;
      memcpy(v57, __src, 0x90uLL);
      LOBYTE(v57[18]) = v19;
      v57[19] = v21;
      v57[20] = v23;
      v57[21] = v25;
      v57[22] = v27;
      LOBYTE(v57[23]) = 0;
      sub_2703FC5C0(v54, v59, &qword_2807D3848, &qword_2705F3428);
      sub_2703FC5C0(v56, v59, &qword_2807D3838, &qword_2705F3420);
      sub_2703C2EFC(v57, &qword_2807D3838, &qword_2705F3420);
      memcpy(v59, v56, 0xB9uLL);
      sub_27047A588(v59);
      memcpy(__src, v59, 0xBAuLL);
      sub_2703FC5C0(v56, v49, &qword_2807D3838, &qword_2705F3420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3838, &qword_2705F3420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3848, &qword_2705F3428);
      sub_27047A260();
      sub_27047A2EC();
      sub_2705D5434();
      sub_2703C2EFC(v54, &qword_2807D3848, &qword_2705F3428);
      sub_2703C2EFC(v56, &qword_2807D3838, &qword_2705F3420);
    }

    memcpy(v52, v53, 0xBAuLL);
    sub_270416214();
    if (v28)
    {
      memcpy(v59, v52, 0xBAuLL);
      sub_27047A558(v59);
      memcpy(__src, v59, 0xEAuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3818, &qword_2705F3410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3828, &qword_2705F3418);
      sub_27047A148();
      sub_27047A1D4();
      sub_2705D5434();
    }

    else
    {
      v29 = sub_2705D56F4();
      sub_2705D4D34();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      memcpy(__src, v52, 0xBAuLL);
      LOBYTE(v49[0]) = 0;
      memcpy(v56, __src, 0xC0uLL);
      LOBYTE(v56[24]) = v29;
      v56[25] = v31;
      v56[26] = v33;
      v56[27] = v35;
      v56[28] = v37;
      LOBYTE(v56[29]) = 0;
      memcpy(v57, __src, 0xC0uLL);
      LOBYTE(v57[24]) = v29;
      v57[25] = v31;
      v57[26] = v33;
      v57[27] = v35;
      v57[28] = v37;
      LOBYTE(v57[29]) = 0;
      sub_2703FC5C0(v52, v59, &qword_2807D3828, &qword_2705F3418);
      sub_2703FC5C0(v56, v59, &qword_2807D3818, &qword_2705F3410);
      sub_2703C2EFC(v57, &qword_2807D3818, &qword_2705F3410);
      memcpy(v59, v56, 0xE9uLL);
      sub_27047A580(v59);
      memcpy(__src, v59, 0xEAuLL);
      sub_2703FC5C0(v56, v49, &qword_2807D3818, &qword_2705F3410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3818, &qword_2705F3410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3828, &qword_2705F3418);
      sub_27047A148();
      sub_27047A1D4();
      sub_2705D5434();
      sub_2703C2EFC(v52, &qword_2807D3828, &qword_2705F3418);
      sub_2703C2EFC(v56, &qword_2807D3818, &qword_2705F3410);
    }

    memcpy(v50, v51, 0xEAuLL);
    sub_27041624C();
    if (v38)
    {
      memcpy(v59, v50, 0xEAuLL);
      sub_27047A564(v59);
      memcpy(__src, v59, 0x11AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37F8, &qword_2705F3400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3808, &qword_2705F3408);
      sub_27047A030();
      sub_27047A0BC();
      sub_2705D5434();
    }

    else
    {
      v39 = sub_2705D5714();
      sub_2705D4D34();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      memcpy(__src, v50, 0xEAuLL);
      LOBYTE(v56[0]) = 0;
      memcpy(v49, __src, 0xF0uLL);
      LOBYTE(v49[30]) = v39;
      v49[31] = v41;
      v49[32] = v43;
      v49[33] = v45;
      v49[34] = v47;
      LOBYTE(v49[35]) = 0;
      memcpy(v57, __src, 0xF0uLL);
      LOBYTE(v57[30]) = v39;
      v57[31] = v41;
      v57[32] = v43;
      v57[33] = v45;
      v57[34] = v47;
      LOBYTE(v57[35]) = 0;
      sub_2703FC5C0(v50, v59, &qword_2807D3808, &qword_2705F3408);
      sub_2703FC5C0(v49, v59, &qword_2807D37F8, &qword_2705F3400);
      sub_2703C2EFC(v57, &qword_2807D37F8, &qword_2705F3400);
      memcpy(v59, v49, 0x119uLL);
      sub_27047A578(v59);
      memcpy(__src, v59, 0x11AuLL);
      sub_2703FC5C0(v49, v56, &qword_2807D37F8, &qword_2705F3400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37F8, &qword_2705F3400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3808, &qword_2705F3408);
      sub_27047A030();
      sub_27047A0BC();
      sub_2705D5434();
      sub_2703C2EFC(v50, &qword_2807D3808, &qword_2705F3408);
      sub_2703C2EFC(v49, &qword_2807D37F8, &qword_2705F3400);
    }

    memcpy(__src, v56, 0x11AuLL);
    sub_27047A570(__src);
    memcpy(v57, __src, 0x11BuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37E0, &qword_2705F33F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D37D8, &qword_2705F33F0);
    sub_270479FA4();
    sub_27047A404();
  }

  sub_2705D5434();
  memcpy(v57, v59, 0x11BuLL);
  memcpy(a2, v59, 0x11BuLL);
  memcpy(__src, v59, 0x11BuLL);
  sub_2703FC5C0(v57, v56, &qword_2807D3888, &qword_2705F3448);
  return sub_2703C2EFC(__src, &qword_2807D3888, &qword_2705F3448);
}

void sub_270476D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3898, &qword_2705F3450);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38A0, &qword_2705F3458);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_93_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38A8, &qword_2705F3460);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38B0, &qword_2705F3468);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38B8, &qword_2705F3470);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_13(v38, v179);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38C0, &qword_2705F3478);
  OUTLINED_FUNCTION_1_42(v39, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38C8, &qword_2705F3480);
  OUTLINED_FUNCTION_1_42(v42, &a17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_12(v44, v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38D0, &qword_2705F3488);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38D8, &unk_2705F3490);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38E0, &unk_2706026C0);
  v49 = OUTLINED_FUNCTION_1_42(v48, &a15);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38E8, &unk_2705F34A0);
  v52 = OUTLINED_FUNCTION_1_42(v51, &a20);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38F0, &unk_2706026B0);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a22);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_54_2(v58, v59, v60, v61, v62, v63, v64, v65, v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D38F8, &qword_2705F34B0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_16_15();
  if (v69)
  {
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v70, v71, v72, v73);
    OUTLINED_FUNCTION_87_1();
    v74 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
    sub_27047A628();
    sub_27047AA88();
    OUTLINED_FUNCTION_28_9();
    sub_2705D5434();
  }

  else
  {
    OUTLINED_FUNCTION_11_24(v68);
    if (v76)
    {
      v25 = &qword_2705F34B8;
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v77, v78, v79, v80);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      v81 = OUTLINED_FUNCTION_76_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
      sub_27047A9FC();
      v83 = sub_27047AA88();
      OUTLINED_FUNCTION_13_20(v83);
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v84 = OUTLINED_FUNCTION_73_0();
      sub_2703FC5C0(v84, v85, v86, v87);
      v88 = v25 + *(v46 + 36);
      *v88 = v30;
      OUTLINED_FUNCTION_14_10(v88);
      v26 = &unk_2705F3490;
      v89 = OUTLINED_FUNCTION_44_2();
      sub_2703FC5C0(v89, v90, v91, v92);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3900, &qword_2705F34B8);
      sub_27047A9FC();
      v93 = sub_27047AA88();
      OUTLINED_FUNCTION_13_20(v93);
      v94 = OUTLINED_FUNCTION_66_1();
      sub_2703C2EFC(v94, v95, v96);
    }

    v97 = OUTLINED_FUNCTION_46_4();
    sub_2703FC3D4(v97, v98, v99, v100);
    sub_270417900();
    OUTLINED_FUNCTION_65_1();
    if (v101)
    {
      v102 = OUTLINED_FUNCTION_49_3();
      sub_2703FC5C0(v102, v103, v104, v105);
      OUTLINED_FUNCTION_60_2();
      sub_27047A8E4();
      v106 = sub_27047A970();
      OUTLINED_FUNCTION_23_13(v106);
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v107, v108, v109, v110);
      OUTLINED_FUNCTION_0_40();
      v24 = v182;
      OUTLINED_FUNCTION_28_9();
      sub_2703FC5C0(v111, v112, v113, v114);
      OUTLINED_FUNCTION_61_2();
      sub_27047A8E4();
      v115 = sub_27047A970();
      OUTLINED_FUNCTION_26_11(v115);
      v116 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v116, v117, v118);
    }

    sub_2703C2EFC(v26, &qword_2807D38E0, &unk_2706026C0);
    v119 = OUTLINED_FUNCTION_92_0();
    sub_2703FC3D4(v119, v120, v121, v122);
    sub_270416214();
    if (v123)
    {
      v124 = OUTLINED_FUNCTION_67_1();
      sub_2703FC5C0(v124, v125, v126, v127);
      OUTLINED_FUNCTION_84_0();
      sub_27047A7CC();
      v128 = sub_27047A858();
      OUTLINED_FUNCTION_25_13(v128);
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v129, v130, v131, v132);
      OUTLINED_FUNCTION_0_40();
      v133 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v133, v134, v135, v136);
      OUTLINED_FUNCTION_79_1();
      v24 = sub_27047A7CC();
      v137 = sub_27047A858();
      OUTLINED_FUNCTION_24_15(v137);
      v138 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v138, v139, v140);
    }

    sub_2703C2EFC(v25, &qword_2807D38E8, &unk_2705F34A0);
    sub_2703FC3D4(v24, v183, &qword_2807D38F0, &unk_2706026B0);
    sub_27041624C();
    if (v141)
    {
      v142 = OUTLINED_FUNCTION_72_0();
      sub_2703FC5C0(v142, v143, v144, v145);
      OUTLINED_FUNCTION_83_0();
      sub_27047A6B4();
      sub_27047A740();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_51_2(v146, v147, v148, v149, v150);
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v151, v152, v153, v154);
      OUTLINED_FUNCTION_0_40();
      v155 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v155, v156, v157, v158);
      OUTLINED_FUNCTION_78_1();
      sub_27047A6B4();
      sub_27047A740();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_45_3(v159, v160, v161, v162, v163);
      v164 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v164, v165, v166);
    }

    OUTLINED_FUNCTION_53_1();
    sub_2703C2EFC(v183, &qword_2807D38F0, &unk_2706026B0);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v167, v168, v169, v170);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v171, v172, v173, v174);
    OUTLINED_FUNCTION_82_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3900, &qword_2705F34B8);
    sub_27047A628();
    v175 = sub_27047AA88();
    OUTLINED_FUNCTION_35_6(v175);
    OUTLINED_FUNCTION_71();
    sub_2703C2EFC(v176, v177, v178);
  }

  OUTLINED_FUNCTION_41_3();
}

void sub_27047759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39C8, &qword_2705F3548);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39D0, &qword_2705F3550);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_93_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39D8, &qword_2705F3558);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39E0, &qword_2705F3560);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39E8, &qword_2705F3568);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_13(v38, v179);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39F0, &qword_2705F3570);
  OUTLINED_FUNCTION_1_42(v39, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39F8, &qword_2705F3578);
  OUTLINED_FUNCTION_1_42(v42, &a17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_12(v44, v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A00, &qword_2705F3580);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A08, &qword_2705F3588);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A10, &unk_2705F3590);
  v49 = OUTLINED_FUNCTION_1_42(v48, &a15);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A18, &unk_270608AA0);
  v52 = OUTLINED_FUNCTION_1_42(v51, &a20);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A20, &unk_2705F35A0);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a22);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_54_2(v58, v59, v60, v61, v62, v63, v64, v65, v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A28, &unk_270608A90);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_16_15();
  if (v69)
  {
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v70, v71, v72, v73);
    OUTLINED_FUNCTION_87_1();
    v74 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
    sub_27047AE30();
    sub_27047B290();
    OUTLINED_FUNCTION_28_9();
    sub_2705D5434();
  }

  else
  {
    OUTLINED_FUNCTION_11_24(v68);
    if (v76)
    {
      v25 = &unk_2705F35B0;
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v77, v78, v79, v80);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      v81 = OUTLINED_FUNCTION_76_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
      sub_27047B204();
      v83 = sub_27047B290();
      OUTLINED_FUNCTION_13_20(v83);
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v84 = OUTLINED_FUNCTION_73_0();
      sub_2703FC5C0(v84, v85, v86, v87);
      v88 = &v25[*(v46 + 36)];
      *v88 = v30;
      OUTLINED_FUNCTION_14_10(v88);
      v26 = &qword_2705F3588;
      v89 = OUTLINED_FUNCTION_44_2();
      sub_2703FC5C0(v89, v90, v91, v92);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A30, &unk_2705F35B0);
      sub_27047B204();
      v93 = sub_27047B290();
      OUTLINED_FUNCTION_13_20(v93);
      v94 = OUTLINED_FUNCTION_66_1();
      sub_2703C2EFC(v94, v95, v96);
    }

    v97 = OUTLINED_FUNCTION_46_4();
    sub_2703FC3D4(v97, v98, v99, v100);
    sub_270417900();
    OUTLINED_FUNCTION_65_1();
    if (v101)
    {
      v102 = OUTLINED_FUNCTION_49_3();
      sub_2703FC5C0(v102, v103, v104, v105);
      OUTLINED_FUNCTION_60_2();
      sub_27047B0EC();
      v106 = sub_27047B178();
      OUTLINED_FUNCTION_23_13(v106);
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v107, v108, v109, v110);
      OUTLINED_FUNCTION_0_40();
      v24 = v182;
      OUTLINED_FUNCTION_28_9();
      sub_2703FC5C0(v111, v112, v113, v114);
      OUTLINED_FUNCTION_61_2();
      sub_27047B0EC();
      v115 = sub_27047B178();
      OUTLINED_FUNCTION_26_11(v115);
      v116 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v116, v117, v118);
    }

    sub_2703C2EFC(v26, &qword_2807D3A10, &unk_2705F3590);
    v119 = OUTLINED_FUNCTION_92_0();
    sub_2703FC3D4(v119, v120, v121, v122);
    sub_270416214();
    if (v123)
    {
      v124 = OUTLINED_FUNCTION_67_1();
      sub_2703FC5C0(v124, v125, v126, v127);
      OUTLINED_FUNCTION_84_0();
      sub_27047AFD4();
      v128 = sub_27047B060();
      OUTLINED_FUNCTION_25_13(v128);
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v129, v130, v131, v132);
      OUTLINED_FUNCTION_0_40();
      v133 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v133, v134, v135, v136);
      OUTLINED_FUNCTION_79_1();
      v24 = sub_27047AFD4();
      v137 = sub_27047B060();
      OUTLINED_FUNCTION_24_15(v137);
      v138 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v138, v139, v140);
    }

    sub_2703C2EFC(v25, &qword_2807D3A18, &unk_270608AA0);
    sub_2703FC3D4(v24, v183, &qword_2807D3A20, &unk_2705F35A0);
    sub_27041624C();
    if (v141)
    {
      v142 = OUTLINED_FUNCTION_72_0();
      sub_2703FC5C0(v142, v143, v144, v145);
      OUTLINED_FUNCTION_83_0();
      sub_27047AEBC();
      sub_27047AF48();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_51_2(v146, v147, v148, v149, v150);
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v151, v152, v153, v154);
      OUTLINED_FUNCTION_0_40();
      v155 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v155, v156, v157, v158);
      OUTLINED_FUNCTION_78_1();
      sub_27047AEBC();
      sub_27047AF48();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_45_3(v159, v160, v161, v162, v163);
      v164 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v164, v165, v166);
    }

    OUTLINED_FUNCTION_53_1();
    sub_2703C2EFC(v183, &qword_2807D3A20, &unk_2705F35A0);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v167, v168, v169, v170);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v171, v172, v173, v174);
    OUTLINED_FUNCTION_82_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3A30, &unk_2705F35B0);
    sub_27047AE30();
    v175 = sub_27047B290();
    OUTLINED_FUNCTION_35_6(v175);
    OUTLINED_FUNCTION_71();
    sub_2703C2EFC(v176, v177, v178);
  }

  OUTLINED_FUNCTION_41_3();
}

void sub_270477DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_42_3();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39A0, &qword_2705F34F0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39A8, &unk_2705F34F8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_93_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1600, &qword_2705E7720);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39B0, &unk_2705F3508);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1620, &unk_2705E7730);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_13(v38, v179);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39B8, &unk_2705F3518);
  OUTLINED_FUNCTION_1_42(v39, &a16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_51(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1640, &qword_2705E7740);
  OUTLINED_FUNCTION_1_42(v42, &a17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_12(v44, v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D39C0, &qword_2705F3528);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1660, &unk_2705E7750);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1650, &qword_2705E7748);
  v49 = OUTLINED_FUNCTION_1_42(v48, &a15);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1630, &unk_2705F3530);
  v52 = OUTLINED_FUNCTION_1_42(v51, &a20);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1610, &qword_2705E7728);
  v56 = OUTLINED_FUNCTION_1_42(v55, &a22);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_20_12();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_54_2(v58, v59, v60, v61, v62, v63, v64, v65, v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D15F0, &qword_2705F3540);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_16_15();
  if (v69)
  {
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v70, v71, v72, v73);
    OUTLINED_FUNCTION_87_1();
    v74 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
    sub_270413F98();
    sub_2704143F8();
    OUTLINED_FUNCTION_28_9();
    sub_2705D5434();
  }

  else
  {
    OUTLINED_FUNCTION_11_24(v68);
    if (v76)
    {
      v25 = &unk_27060AED0;
      OUTLINED_FUNCTION_47_2();
      sub_2703FC5C0(v77, v78, v79, v80);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      v81 = OUTLINED_FUNCTION_76_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
      sub_27041436C();
      v83 = sub_2704143F8();
      OUTLINED_FUNCTION_13_20(v83);
    }

    else
    {
      sub_2705D56D4();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_13_4();
      v84 = OUTLINED_FUNCTION_73_0();
      sub_2703FC5C0(v84, v85, v86, v87);
      v88 = &v25[*(v46 + 36)];
      *v88 = v30;
      OUTLINED_FUNCTION_14_10(v88);
      v26 = &unk_2705E7750;
      v89 = OUTLINED_FUNCTION_44_2();
      sub_2703FC5C0(v89, v90, v91, v92);
      OUTLINED_FUNCTION_40_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1670, &unk_27060AED0);
      sub_27041436C();
      v93 = sub_2704143F8();
      OUTLINED_FUNCTION_13_20(v93);
      v94 = OUTLINED_FUNCTION_66_1();
      sub_2703C2EFC(v94, v95, v96);
    }

    v97 = OUTLINED_FUNCTION_46_4();
    sub_2703FC3D4(v97, v98, v99, v100);
    sub_270417900();
    OUTLINED_FUNCTION_65_1();
    if (v101)
    {
      v102 = OUTLINED_FUNCTION_49_3();
      sub_2703FC5C0(v102, v103, v104, v105);
      OUTLINED_FUNCTION_60_2();
      sub_270414254();
      v106 = sub_2704142E0();
      OUTLINED_FUNCTION_23_13(v106);
    }

    else
    {
      sub_2705D56E4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v107, v108, v109, v110);
      OUTLINED_FUNCTION_0_40();
      v24 = v182;
      OUTLINED_FUNCTION_28_9();
      sub_2703FC5C0(v111, v112, v113, v114);
      OUTLINED_FUNCTION_61_2();
      sub_270414254();
      v115 = sub_2704142E0();
      OUTLINED_FUNCTION_26_11(v115);
      v116 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v116, v117, v118);
    }

    sub_2703C2EFC(v26, &qword_2807D1650, &qword_2705E7748);
    v119 = OUTLINED_FUNCTION_92_0();
    sub_2703FC3D4(v119, v120, v121, v122);
    sub_270416214();
    if (v123)
    {
      v124 = OUTLINED_FUNCTION_67_1();
      sub_2703FC5C0(v124, v125, v126, v127);
      OUTLINED_FUNCTION_84_0();
      sub_27041413C();
      v128 = sub_2704141C8();
      OUTLINED_FUNCTION_25_13(v128);
    }

    else
    {
      sub_2705D56F4();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v129, v130, v131, v132);
      OUTLINED_FUNCTION_0_40();
      v133 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v133, v134, v135, v136);
      OUTLINED_FUNCTION_79_1();
      v24 = sub_27041413C();
      v137 = sub_2704141C8();
      OUTLINED_FUNCTION_24_15(v137);
      v138 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v138, v139, v140);
    }

    sub_2703C2EFC(v25, &qword_2807D1630, &unk_2705F3530);
    sub_2703FC3D4(v24, v183, &qword_2807D1610, &qword_2705E7728);
    sub_27041624C();
    if (v141)
    {
      v142 = OUTLINED_FUNCTION_72_0();
      sub_2703FC5C0(v142, v143, v144, v145);
      OUTLINED_FUNCTION_83_0();
      sub_270414024();
      sub_2704140B0();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_51_2(v146, v147, v148, v149, v150);
    }

    else
    {
      sub_2705D5714();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_38_4();
      sub_2703FC5C0(v151, v152, v153, v154);
      OUTLINED_FUNCTION_0_40();
      v155 = OUTLINED_FUNCTION_14_24();
      sub_2703FC5C0(v155, v156, v157, v158);
      OUTLINED_FUNCTION_78_1();
      sub_270414024();
      sub_2704140B0();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_45_3(v159, v160, v161, v162, v163);
      v164 = OUTLINED_FUNCTION_17_15();
      sub_2703C2EFC(v164, v165, v166);
    }

    OUTLINED_FUNCTION_53_1();
    sub_2703C2EFC(v183, &qword_2807D1610, &qword_2705E7728);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_28_9();
    sub_2703FC3D4(v167, v168, v169, v170);
    OUTLINED_FUNCTION_28_9();
    sub_2703FC5C0(v171, v172, v173, v174);
    OUTLINED_FUNCTION_82_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1670, &unk_27060AED0);
    sub_270413F98();
    v175 = sub_2704143F8();
    OUTLINED_FUNCTION_35_6(v175);
    OUTLINED_FUNCTION_71();
    sub_2703C2EFC(v176, v177, v178);
  }

  OUTLINED_FUNCTION_41_3();
}

uint64_t sub_270478654@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_2();
  type metadata accessor for LabelComponentModel(0);
  OUTLINED_FUNCTION_55_1();
  sub_2703FC5C0(v4, v5, v6, v7);
  return sub_2703FC3D4(v1, a1, &qword_2807CF190, &unk_2705DEE80);
}

double sub_270478708()
{
  v1 = type metadata accessor for LabelComponentModel(0);
  v2 = sub_2703FC5C0(v0 + *(v1 + 48), &v14, &qword_2807CF2D8, &unk_2705DF6E0);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

uint64_t sub_27047875C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953394534 && a2 == 0xE400000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x67696557746E6F66 && a2 == 0xEA00000000007468;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002706141D0 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001FLL && 0x80000002706141F0 == a2;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2705D8134();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_270478A74(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1953394534;
      break;
    case 2:
      result = 0x67696557746E6F66;
      break;
    case 3:
      result = 0x756F726765726F66;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x676E6964646170;
      break;
    case 8:
      result = 0x6575676573;
      break;
    case 9:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270478BB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3788, &qword_2705F31D0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  v9 = OUTLINED_FUNCTION_45_1();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_270479814();
  sub_2705D84C4();
  LOBYTE(v29) = 0;
  v11 = OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_32_5(&unk_2807D29C0);
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (!v2)
  {
    *&v29 = *(v1 + 40);
    v32 = 1;

    v13 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_8_29(&unk_2807D01E0);
    OUTLINED_FUNCTION_12_21();

    v15 = *(v1 + 56);
    *&v29 = *(v1 + 48);
    BYTE8(v29) = v15;
    v32 = 2;
    v16 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_32_5(&unk_2807D3798);
    OUTLINED_FUNCTION_12_21();
    *&v29 = *(v1 + 64);
    v32 = 3;

    v19 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_8_29(&unk_2807D37A0);
    OUTLINED_FUNCTION_12_21();

    v29 = *(v1 + 72);
    v32 = 4;
    v21 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_8_29(&unk_2807D37A8);
    OUTLINED_FUNCTION_12_21();
    LOBYTE(v29) = *(v1 + 88);
    v32 = 5;
    v23 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_8_29(&unk_2807D37B0);
    OUTLINED_FUNCTION_12_21();
    v25 = type metadata accessor for LabelComponentModel(0);
    v32 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    sub_2703E1004();
    OUTLINED_FUNCTION_28_9();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v26 = (v1 + *(v25 + 44));
    v27 = v26[1];
    v29 = *v26;
    v30 = v27;
    *v31 = v26[2];
    *&v31[9] = *(v26 + 41);
    v28[15] = 7;
    sub_2703E10C0();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    LOBYTE(v29) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_270479868(&qword_2807CFE98);
    OUTLINED_FUNCTION_28_9();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    LOBYTE(v29) = 9;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8034();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_270479000@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47[0] = a2;
  v47[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3748, &unk_2705F31B0);
  OUTLINED_FUNCTION_0();
  v48 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  v10 = type metadata accessor for LabelComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 5) = sub_2705D5774();
  *(v13 + 6) = 0;
  v13[56] = 1;
  *(v13 + 8) = sub_2705D5D54();
  *(v13 + 9) = sub_2705D60B4();
  *(v13 + 10) = v14;
  v13[88] = 0;
  v15 = v10[10];
  v16 = sub_2705D6A54();
  v52 = v15;
  __swift_storeEnumTagSinglePayload(&v13[v15], 1, 1, v16);
  v17 = &v13[v10[12]];
  *&v57[0] = 0;
  v55 = 0u;
  v56 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v50 = v17;
  sub_2703F92B0(&v55, v17, &unk_2807CF480, &unk_2705DC040);
  v18 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_270479814();
  v19 = v49;
  sub_2705D8484();
  if (v19)
  {
    v23 = v50;
    __swift_destroy_boxed_opaque_existential_1(v51);

    sub_2703C2EFC(&v13[v52], &qword_2807CF130, &unk_2705DEE50);
    return sub_2703C2EFC(v23, &qword_2807CF2D8, &unk_2705DF6E0);
  }

  else
  {
    v49 = v6;
    v20 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    LOBYTE(v53) = 0;
    OUTLINED_FUNCTION_32_5(&unk_2807D29A8);
    OUTLINED_FUNCTION_37_4();
    sub_2705D7FA4();
    v22 = v7;
    v25 = v56;
    *v13 = v55;
    *(v13 + 1) = v25;
    *(v13 + 4) = *&v57[0];
    v26 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    LOBYTE(v53) = 1;
    OUTLINED_FUNCTION_7_25(&unk_2807D01C8);
    OUTLINED_FUNCTION_18_12();
    v28 = v50;
    v29 = v55;

    *(v13 + 5) = v29;
    v59 = 2;
    if ((sub_2705D7FC4() & 1) != 0 && (OUTLINED_FUNCTION_37_4(), (sub_2705D7FD4() & 1) == 0))
    {
      OUTLINED_FUNCTION_37_4();
      sub_2705D7EF4();
      sub_27044AC6C();
      v30 = v53;
      v31 = v54;
    }

    else
    {
      v30 = 0;
      v31 = 1;
    }

    *(v13 + 6) = v30;
    v13[56] = v31;
    v32 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    LOBYTE(v53) = 3;
    OUTLINED_FUNCTION_7_25(&unk_2807D3760);
    OUTLINED_FUNCTION_18_12();
    v34 = v55;

    *(v13 + 8) = v34;
    v35 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    LOBYTE(v53) = 4;
    OUTLINED_FUNCTION_7_25(&unk_2807D3770);
    OUTLINED_FUNCTION_18_12();
    *(v13 + 72) = v55;
    v37 = OUTLINED_FUNCTION_45_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    LOBYTE(v53) = 5;
    OUTLINED_FUNCTION_7_25(&unk_2807D3780);
    OUTLINED_FUNCTION_18_12();
    v13[88] = v55;
    LOBYTE(v55) = 6;
    sub_2703E0C88();
    v39 = v49;
    OUTLINED_FUNCTION_37_4();
    sub_2705D7FA4();
    v40 = v48;
    sub_2703F92B0(v39, &v13[v52], &qword_2807CF130, &unk_2705DEE50);
    v59 = 7;
    sub_2703E0E1C();
    OUTLINED_FUNCTION_37_4();
    sub_2705D7F44();
    v41 = &v13[v10[11]];
    v42 = v56;
    *v41 = v55;
    *(v41 + 1) = v42;
    *(v41 + 2) = v57[0];
    *(v41 + 41) = *(v57 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    v58 = 8;
    sub_270479868(&qword_2807CFE48);
    OUTLINED_FUNCTION_37_4();
    sub_2705D7FA4();
    sub_2703F92B0(&v53, v28, &qword_2807CF2D8, &unk_2705DF6E0);
    LOBYTE(v53) = 9;
    OUTLINED_FUNCTION_37_4();
    v43 = sub_2705D7F54();
    v45 = v44;
    (*(v40 + 8))(v2, v22);
    v46 = &v13[v10[13]];
    *v46 = v43;
    v46[1] = v45;
    sub_2704798F8(v13, v47[0]);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_27047995C(v13);
  }
}

uint64_t sub_2704796F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27047875C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27047971C(uint64_t a1)
{
  v2 = sub_270479814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270479758(uint64_t a1)
{
  v2 = sub_270479814();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270479814()
{
  result = qword_2807D3750;
  if (!qword_2807D3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3750);
  }

  return result;
}

unint64_t sub_270479868(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703E2A50(v4);
    OUTLINED_FUNCTION_76_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2704798F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27047995C(uint64_t a1)
{
  v2 = type metadata accessor for LabelComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for LabelComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x270479A84);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270479AC0()
{
  result = qword_2807D37B8;
  if (!qword_2807D37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37B8);
  }

  return result;
}

unint64_t sub_270479B18()
{
  result = qword_2807D37C0;
  if (!qword_2807D37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37C0);
  }

  return result;
}

unint64_t sub_270479B70()
{
  result = qword_2807D37C8;
  if (!qword_2807D37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37C8);
  }

  return result;
}

void *sub_270479C24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = type metadata accessor for LabelComponentModel(0);
  v3 = (a1 + *(v26 + 52));
  v4 = v3[1];
  __src[0] = *v3;
  __src[1] = v4;
  sub_2703C2F54();

  sub_2705D5944();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_57_1();
  v5 = sub_2705D5914();
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_62_2();
  sub_2703CEDB0(v10, v11, v12);

  sub_2705D58E4();
  OUTLINED_FUNCTION_91_0();
  sub_2703CEDB0(v5, v7, v9 & 1);

  __src[0] = *(a1 + 64);

  OUTLINED_FUNCTION_57_1();
  v13 = sub_2705D58F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = OUTLINED_FUNCTION_62_2();
  sub_2703CEDB0(v20, v21, v22);

  sub_2705D4E64();
  LOBYTE(__src[0]) = v17 & 1;
  LOBYTE(v4) = *(a1 + 88);
  v33[0] = v13;
  v33[1] = v15;
  v34 = v17 & 1;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v35 = v19;
  KeyPath = swift_getKeyPath();
  v40 = v4;
  v23 = (a1 + *(v26 + 44));
  v24 = v23[2];
  v31[1] = v23[1];
  v32[0] = v24;
  *(v32 + 9) = *(v23 + 41);
  v31[0] = *v23;
  sub_2704762F0(v31, __src);
  sub_2703C2EFC(v33, &qword_2807D37D8, &qword_2705F33F0);
  return memcpy(a2, __src, 0x11BuLL);
}

unint64_t sub_270479E4C()
{
  result = qword_2807D37D0;
  if (!qword_2807D37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37D0);
  }

  return result;
}

unint64_t sub_270479F4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_270479FA4()
{
  result = qword_2807D37E8;
  if (!qword_2807D37E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D37E0, &qword_2705F33F8);
    sub_27047A030();
    sub_27047A0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37E8);
  }

  return result;
}

unint64_t sub_27047A030()
{
  result = qword_2807D37F0;
  if (!qword_2807D37F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D37F8, &qword_2705F3400);
    sub_27047A0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D37F0);
  }

  return result;
}

unint64_t sub_27047A0BC()
{
  result = qword_2807D3800;
  if (!qword_2807D3800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3808, &qword_2705F3408);
    sub_27047A148();
    sub_27047A1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3800);
  }

  return result;
}

unint64_t sub_27047A148()
{
  result = qword_2807D3810;
  if (!qword_2807D3810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3818, &qword_2705F3410);
    sub_27047A1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3810);
  }

  return result;
}

unint64_t sub_27047A1D4()
{
  result = qword_2807D3820;
  if (!qword_2807D3820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3828, &qword_2705F3418);
    sub_27047A260();
    sub_27047A2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3820);
  }

  return result;
}

unint64_t sub_27047A260()
{
  result = qword_2807D3830;
  if (!qword_2807D3830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3838, &qword_2705F3420);
    sub_27047A2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3830);
  }

  return result;
}

unint64_t sub_27047A2EC()
{
  result = qword_2807D3840;
  if (!qword_2807D3840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3848, &qword_2705F3428);
    sub_27047A378();
    sub_27047A404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3840);
  }

  return result;
}

unint64_t sub_27047A378()
{
  result = qword_2807D3850;
  if (!qword_2807D3850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3858, &unk_2705F3430);
    sub_27047A404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3850);
  }

  return result;
}

unint64_t sub_27047A404()
{
  result = qword_2807D3860;
  if (!qword_2807D3860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D37D8, &qword_2705F33F0);
    sub_27047A4BC();
    sub_2703E2A50(&qword_2807D3878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3860);
  }

  return result;
}

unint64_t sub_27047A4BC()
{
  result = qword_2807D3868;
  if (!qword_2807D3868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3870, &qword_2705FA240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3868);
  }

  return result;
}

unint64_t sub_27047A59C()
{
  result = qword_2807D3890;
  if (!qword_2807D3890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3888, &qword_2705F3448);
    sub_270479FA4();
    sub_27047A404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3890);
  }

  return result;
}

unint64_t sub_27047A628()
{
  result = qword_2807D3908;
  if (!qword_2807D3908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38F8, &qword_2705F34B0);
    sub_27047A6B4();
    sub_27047A740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3908);
  }

  return result;
}

unint64_t sub_27047A6B4()
{
  result = qword_2807D3910;
  if (!qword_2807D3910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38A8, &qword_2705F3460);
    sub_27047A740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3910);
  }

  return result;
}

unint64_t sub_27047A740()
{
  result = qword_2807D3918;
  if (!qword_2807D3918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38F0, &unk_2706026B0);
    sub_27047A7CC();
    sub_27047A858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3918);
  }

  return result;
}

unint64_t sub_27047A7CC()
{
  result = qword_2807D3920;
  if (!qword_2807D3920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38B8, &qword_2705F3470);
    sub_27047A858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3920);
  }

  return result;
}

unint64_t sub_27047A858()
{
  result = qword_2807D3928;
  if (!qword_2807D3928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38E8, &unk_2705F34A0);
    sub_27047A8E4();
    sub_27047A970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3928);
  }

  return result;
}

unint64_t sub_27047A8E4()
{
  result = qword_2807D3930;
  if (!qword_2807D3930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38C8, &qword_2705F3480);
    sub_27047A970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3930);
  }

  return result;
}

unint64_t sub_27047A970()
{
  result = qword_2807D3938;
  if (!qword_2807D3938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38E0, &unk_2706026C0);
    sub_27047A9FC();
    sub_27047AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3938);
  }

  return result;
}

unint64_t sub_27047A9FC()
{
  result = qword_2807D3940;
  if (!qword_2807D3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D38D8, &unk_2705F3490);
    sub_27047AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3940);
  }

  return result;
}

unint64_t sub_27047AA88()
{
  result = qword_2807D3948;
  if (!qword_2807D3948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3900, &qword_2705F34B8);
    sub_27047AB40();
    sub_2703E2A50(&unk_2807D0B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3948);
  }

  return result;
}

unint64_t sub_27047AB40()
{
  result = qword_2807D3950;
  if (!qword_2807D3950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3958, &unk_2705F34C0);
    sub_27047ABF8();
    sub_2703E2A50(&qword_2807D0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3950);
  }

  return result;
}

unint64_t sub_27047ABF8()
{
  result = qword_2807D3960;
  if (!qword_2807D3960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3968, &unk_2706026D0);
    sub_27047ACB0();
    sub_2703E2A50(&qword_2807D0B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3960);
  }

  return result;
}

unint64_t sub_27047ACB0()
{
  result = qword_2807D3970;
  if (!qword_2807D3970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3978, &unk_2705F34D0);
    sub_27047AD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3970);
  }

  return result;
}

unint64_t sub_27047AD3C()
{
  result = qword_2807D3980;
  if (!qword_2807D3980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3988, &unk_2706026E0);
    sub_2703E2A50(&unk_2807D3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3980);
  }

  return result;
}

unint64_t sub_27047AE30()
{
  result = qword_2807D3A38;
  if (!qword_2807D3A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A28, &unk_270608A90);
    sub_27047AEBC();
    sub_27047AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A38);
  }

  return result;
}

unint64_t sub_27047AEBC()
{
  result = qword_2807D3A40;
  if (!qword_2807D3A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D39D8, &qword_2705F3558);
    sub_27047AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A40);
  }

  return result;
}

unint64_t sub_27047AF48()
{
  result = qword_2807D3A48;
  if (!qword_2807D3A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A20, &unk_2705F35A0);
    sub_27047AFD4();
    sub_27047B060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A48);
  }

  return result;
}

unint64_t sub_27047AFD4()
{
  result = qword_2807D3A50;
  if (!qword_2807D3A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D39E8, &qword_2705F3568);
    sub_27047B060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A50);
  }

  return result;
}

unint64_t sub_27047B060()
{
  result = qword_2807D3A58;
  if (!qword_2807D3A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A18, &unk_270608AA0);
    sub_27047B0EC();
    sub_27047B178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A58);
  }

  return result;
}

unint64_t sub_27047B0EC()
{
  result = qword_2807D3A60;
  if (!qword_2807D3A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D39F8, &qword_2705F3578);
    sub_27047B178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A60);
  }

  return result;
}

unint64_t sub_27047B178()
{
  result = qword_2807D3A68;
  if (!qword_2807D3A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A10, &unk_2705F3590);
    sub_27047B204();
    sub_27047B290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A68);
  }

  return result;
}

unint64_t sub_27047B204()
{
  result = qword_2807D3A70;
  if (!qword_2807D3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A08, &qword_2705F3588);
    sub_27047B290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A70);
  }

  return result;
}

unint64_t sub_27047B290()
{
  result = qword_2807D3A78;
  if (!qword_2807D3A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A30, &unk_2705F35B0);
    sub_27047B348();
    sub_2703E2A50(&unk_2807D3AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A78);
  }

  return result;
}

unint64_t sub_27047B348()
{
  result = qword_2807D3A80;
  if (!qword_2807D3A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A88, &unk_2706089D0);
    sub_27047B3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A80);
  }

  return result;
}

unint64_t sub_27047B3D4()
{
  result = qword_2807D3A90;
  if (!qword_2807D3A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3A98, &unk_2705F35C0);
    sub_27047B460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3A90);
  }

  return result;
}

unint64_t sub_27047B460()
{
  result = qword_2807D3AA0;
  if (!qword_2807D3AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3AA8, &unk_2706089C0);
    sub_2703E2A50(&unk_2807D3AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3AA0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_40()
{
  v7 = v2 + *(v1 + 36);
  *v7 = v0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

void OUTLINED_FUNCTION_4_34(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

unint64_t OUTLINED_FUNCTION_7_25(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

unint64_t OUTLINED_FUNCTION_8_29(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

uint64_t OUTLINED_FUNCTION_11_24@<X0>(uint64_t a1@<X8>)
{
  *(v7 - 384) = v6;
  *(v7 - 376) = v2;
  *(v7 - 368) = v1;
  *(v7 - 360) = v5;
  *(v7 - 392) = v4;
  *(v7 - 184) = *v3;
  *(v7 - 176) = a1;
  v9 = *(v3 + 32);
  *(v7 - 168) = *(v3 + 16);
  *(v7 - 152) = v9;
  *(v7 - 143) = *(v3 + 41);

  return sub_270417938();
}

uint64_t OUTLINED_FUNCTION_12_21()
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_24_15(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_25_13(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1)
{

  return sub_2705D5434();
}

unint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

uint64_t OUTLINED_FUNCTION_35_6(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return swift_storeEnumTagMultiPayload();
}

double OUTLINED_FUNCTION_64_1()
{

  sub_2705D4D34();
  return result;
}

double OUTLINED_FUNCTION_75_0()
{

  sub_2705D4D34();
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return sub_2703FC5C0(a1, &STACK[0xCC0], v1, v2);
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{

  return sub_2703FC5C0(a1, &STACK[0xCC0], v1, v2);
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2)
{

  return sub_2703FC5C0(v3, a2, v2, v4);
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2703FC5C0(&STACK[0x840], &a9, v9, v10);
}

uint64_t sub_27047BCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v16 = v2[1];
  sub_27047C6BC(*v2, v16);
  sub_27047C6BC(v4, v5);
  sub_27047C6BC(v6, v7);
  sub_27047C6BC(v8, v9);
  sub_2705D60A4();
  sub_2705D4E64();
  v10 = sub_2705D60A4();
  v12 = v11;
  *&__src[0] = v3;
  *(&__src[0] + 1) = v16;
  *&__src[1] = v4;
  *(&__src[1] + 1) = v5;
  *&__src[2] = v6;
  *(&__src[2] + 1) = v7;
  *&__src[3] = v8;
  *(&__src[3] + 1) = v9;
  __src[4] = v20;
  __src[5] = v21;
  __src[6] = v22;
  *&__src[7] = v10;
  *(&__src[7] + 1) = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B10, &qword_2705F3770);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B18, &qword_2705F3778);
  memcpy((a2 + *(v14 + 36)), __src, 0x80uLL);
  v24[0] = v3;
  v24[1] = v16;
  v24[2] = v4;
  v24[3] = v5;
  v24[4] = v6;
  v24[5] = v7;
  v24[6] = v8;
  v24[7] = v9;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v10;
  v29 = v12;
  sub_27047C6CC(__src, &v19);
  return sub_27047C73C(v24);
}

char *sub_27047BE4C()
{
  type metadata accessor for LifecycleAdaptorViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *v0;
  v3 = v0[1];
  v4 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  v5 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  v6 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear + 8];
  *v4 = *v0;
  v4[1] = v3;
  sub_27047C6BC(v2, v3);
  sub_2703B8280(v5, v6);
  v7 = v0[2];
  v8 = v0[3];
  v9 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  v10 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  v11 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear + 8];
  *v9 = v7;
  v9[1] = v8;
  sub_27047C6BC(v7, v8);
  sub_2703B8280(v10, v11);
  v12 = v0[4];
  v13 = v0[5];
  v14 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  v15 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  v16 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear + 8];
  *v14 = v12;
  v14[1] = v13;
  sub_27047C6BC(v12, v13);
  sub_2703B8280(v15, v16);
  v17 = v0[6];
  v18 = v0[7];
  v19 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  v20 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  v21 = *&v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear + 8];
  *v19 = v17;
  v19[1] = v18;
  sub_27047C6BC(v17, v18);
  sub_2703B8280(v20, v21);
  return v1;
}

uint64_t sub_27047BF34(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear);
  v6 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear);
  v7 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear + 8);
  *v5 = *v1;
  v5[1] = v4;
  sub_27047C6BC(v3, v4);
  sub_2703B8280(v6, v7);
  v8 = v1[2];
  v9 = v1[3];
  v10 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear);
  v11 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear);
  v12 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear + 8);
  *v10 = v8;
  v10[1] = v9;
  sub_27047C6BC(v8, v9);
  sub_2703B8280(v11, v12);
  v13 = v1[4];
  v14 = v1[5];
  v15 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear);
  v16 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear);
  v17 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear + 8);
  *v15 = v13;
  v15[1] = v14;
  sub_27047C6BC(v13, v14);
  sub_2703B8280(v16, v17);
  v18 = v1[6];
  v19 = v1[7];
  v20 = (a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear);
  v21 = *(a1 + OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear);
  v22 = v20[1];
  *v20 = v18;
  v20[1] = v19;
  sub_27047C6BC(v18, v19);

  return sub_2703B8280(v21, v22);
}

uint64_t sub_27047C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27047C900();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27047C12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27047C900();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27047C190(uint64_t a1)
{
  sub_27047C900();
  sub_2705D5634();
  __break(1u);
}

id sub_27047C2E4(char a1, SEL *a2, void *a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v12, *a2, a1 & 1);
  v8 = &v3[*a3];
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);

    v9(v11);
    return sub_2703B8280(v9, v10);
  }

  return result;
}

id sub_27047C3CC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = sub_2705D7534();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_27047C508(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear];
  *v7 = 0;
  *(v7 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27047C6BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27047C6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B20, &unk_2705F3780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27047C73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B20, &unk_2705F3780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27047C7B8()
{
  result = qword_2807D3B28;
  if (!qword_2807D3B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3B18, &qword_2705F3778);
    sub_2703AFBC8(&qword_2807D3B30, &qword_2807D3B10, &qword_2705F3770, MEMORY[0x277CE04B0]);
    sub_2703AFBC8(&qword_2807D3B38, &qword_2807D3B20, &unk_2705F3780, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B28);
  }

  return result;
}

unint64_t sub_27047C8AC()
{
  result = qword_2807D3B40;
  if (!qword_2807D3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B40);
  }

  return result;
}

unint64_t sub_27047C900()
{
  result = qword_2807D3B48;
  if (!qword_2807D3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B48);
  }

  return result;
}

uint64_t sub_27047C95C()
{
  v0 = sub_2705D7144();
  __swift_allocate_value_buffer(v0, qword_28081C498);
  __swift_project_value_buffer(v0, qword_28081C498);
  return sub_2705D7154();
}

uint64_t sub_27047C9F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_2705D7144();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2705D7174();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (qword_2807CE808 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_28081C498);
  (*(v5 + 16))(v7, v9, v4);
  return sub_2705D7164();
}

uint64_t sub_27047CC44(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  type metadata accessor for Log();
  v7 = swift_allocObject();
  *(v7 + 16) = v9;
  *a4 = v7;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_27047CD2C()
{
  sub_27047D06C();
  result = sub_2705D7BE4();
  qword_2807D3B68 = result;
  return result;
}

uint64_t sub_27047CDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_27047D06C();
  result = sub_2705D7BE4();
  *a4 = result;
  return result;
}

uint64_t sub_27047CE60(uint64_t a1, os_log_t oslog, uint64_t a3)
{
  result = os_log_type_enabled(oslog, a1);
  if (result)
  {
    sub_2705D64D4();
    v6 = sub_2705D6554();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88, &qword_2705F38A8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2705DC030;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_27047D0B0();
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    sub_2705D4BF4("%{public}@", 10, 2, &dword_2703AA000, oslog, a1, v9);
  }

  return result;
}

uint64_t sub_27047D010()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for Log()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

unint64_t sub_27047D06C()
{
  result = qword_2807D3B80;
  if (!qword_2807D3B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3B80);
  }

  return result;
}

unint64_t sub_27047D0B0()
{
  result = qword_2807D3B90;
  if (!qword_2807D3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3B90);
  }

  return result;
}

uint64_t sub_27047D104(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98, &unk_2705F3900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E10F0;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v11 = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6874646977;
  *(inited + 88) = 0xE500000000000000;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v13 = sub_27047D5E0();
  *(inited + 96) = v12;
  *(inited + 120) = v13;
  *(inited + 128) = 0x746867696568;
  *(inited + 136) = 0xE600000000000000;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 168) = v13;
  *(inited + 144) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  v64 = sub_2705D7494();
  v15 = 0;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  while (1)
  {
    v20 = v15;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v22 = (v15 << 9) | (8 * v21);
    v23 = *(*(a3 + 56) + v22);
    v24 = *(*(a3 + 48) + v22);
    v25 = v23;
    sub_27047DDF4(0);
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v62 = sub_2705D7564();
      v63 = v30;
      v73 = MEMORY[0x277D837D0];
      *&v72 = v28;
      *(&v72 + 1) = v29;
      sub_2703E43D4(&v72, &v70);
      __swift_mutable_project_boxed_opaque_existential_1(&v70, v71);
      v59 = &v59;
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v31);
      OUTLINED_FUNCTION_4_0();
      v33 = OUTLINED_FUNCTION_9_27(v32);
      v34(v33);
      v35 = *v29;
      v36 = v29[1];
      v61 = v35;
      v37 = v64;
      LODWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v69 = v37;
      v68 = MEMORY[0x277D837D0];
      *&v67 = v61;
      *(&v67 + 1) = v36;
      v61 = sub_2703D7318(v62, v63);
      v38 = *(v37 + 16);
      LODWORD(v64) = v39;
      v40 = (v39 & 1) == 0;
      v41 = (v38 + v40);
      if (__OFADD__(v38, v40))
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
      if (sub_2705D7E04())
      {
        v42 = sub_2703D7318(v62, v63);
        if ((v64 & 1) != (v43 & 1))
        {
          goto LABEL_23;
        }

        v61 = v42;
        if (v64)
        {
LABEL_17:

          v64 = v69;
          v57 = (*(v69 + 56) + 32 * v61);
          __swift_destroy_boxed_opaque_existential_1(v57);
          sub_2703E43D4(&v67, v57);

          goto LABEL_18;
        }
      }

      else if (v64)
      {
        goto LABEL_17;
      }

      v64 = v69;
      __swift_mutable_project_boxed_opaque_existential_1(&v67, v68);
      v60 = &v59;
      OUTLINED_FUNCTION_16_16();
      MEMORY[0x28223BE20](v44);
      OUTLINED_FUNCTION_4_0();
      v46 = OUTLINED_FUNCTION_9_27(v45);
      v47(v46);
      v48 = *v41;
      v49 = v41[1];
      v66 = MEMORY[0x277D837D0];
      *&v65 = v48;
      *(&v65 + 1) = v49;
      v50 = v61;
      v51 = v64;
      *(v64 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v52 = (v51[6] + 16 * v50);
      v53 = v63;
      *v52 = v62;
      v52[1] = v53;
      sub_2703E43D4(&v65, (v51[7] + 32 * v50));

      v54 = v51[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_22;
      }

      v51[2] = v56;
      __swift_destroy_boxed_opaque_existential_1(&v67);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(&v70);
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= v19)
    {

      return v64;
    }

    v18 = *(a3 + 64 + 8 * v15);
    ++v20;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2705D82D4();
  __break(1u);
  return result;
}

unint64_t sub_27047D5E0()
{
  result = qword_2807D3BA0;
  if (!qword_2807D3BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D3BA0);
  }

  return result;
}

uint64_t sub_27047D624(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = sub_2703D7318(7107189, 0xE300000000000000);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_25(v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27047D6C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a5;
    }

    else
    {
      v12 = 6778986;
    }

    if (a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (a4)
    {
      v14 = a3;
    }

    else
    {
      v14 = 25186;
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    if (a8)
    {
      v16 = a7;
    }

    else
    {
      v16 = 12343;
    }

    if (a8)
    {
      v17 = a8;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    if ((*&a11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a11 <= -1.0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (a11 >= 1.84467441e19)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v35 = v15;

      result = sub_2705D80A4();
      if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (a10 <= -1.0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (a10 >= 1.84467441e19)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v20 = result;
      v21 = v19;
      v22 = sub_2705D80A4();
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25E0, &unk_2705F3A60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2705F38E0;
      *(inited + 32) = 8217467;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v14;
      *(inited + 56) = v35;
      *(inited + 64) = 8218235;
      *(inited + 72) = 0xE300000000000000;
      *(inited + 80) = v12;
      *(inited + 88) = v13;
      *(inited + 96) = 8218747;
      *(inited + 104) = 0xE300000000000000;
      *(inited + 112) = v20;
      *(inited + 120) = v21;
      *(inited + 128) = 8221051;
      *(inited + 136) = 0xE300000000000000;
      *(inited + 144) = v16;
      *(inited + 152) = v17;
      *(inited + 160) = 8222587;
      *(inited + 168) = 0xE300000000000000;
      *(inited + 176) = v22;
      *(inited + 184) = v34;
      v25 = sub_2705D7494();
      v26 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v25 + 64);
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      if (v29)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v30)
        {

          sub_2705D4454();
        }

        v29 = *(v26 + 8 * v32);
        ++v31;
        if (v29)
        {
          v31 = v32;
          do
          {
LABEL_34:
            v29 &= v29 - 1;
            sub_2703C2F54();

            sub_2705D7C64();
          }

          while (v29);
          continue;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v33 = sub_2705D4484();

  return __swift_storeEnumTagSinglePayload(a9, 1, 1, v33);
}

CGColorRef sub_27047DA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_2703D7318(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_25(v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v30;
  v9 = HIBYTE(v31) & 0xF;
  v10 = v30 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v11 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v13 = sub_27047F220(v30, v31, 10);

    if ((v13 & 0x100000000) != 0)
    {
      return 0;
    }

    return CGColorCreateGenericRGB((v13 >> 16) / 255.0, (v13 >> 8) / 255.0, v13 / 255.0, 1.0);
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      result = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_2705D7DB4();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          LODWORD(v13) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_40();
              if (!v15 & v14)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_8_30();
              if (!v15)
              {
                goto LABEL_71;
              }

              LODWORD(v13) = v22 + v21;
              if (__CFADD__(v22, v21))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_7_26();
              if (v15)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_80;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        LODWORD(v13) = 0;
        if (result)
        {
          while (1)
          {
            v25 = *result - 48;
            if (v25 > 9)
            {
              goto LABEL_71;
            }

            v26 = 10 * v13;
            if ((v26 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            LODWORD(v13) = v26 + v25;
            if (__CFADD__(v26, v25))
            {
              goto LABEL_71;
            }

            result = (result + 1);
            if (!--v10)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      LODWORD(v13) = 0;
      v18 = 1;
LABEL_72:
      v29 = v18;

      if (v29)
      {
        return 0;
      }

      return CGColorCreateGenericRGB((v13 >> 16) / 255.0, (v13 >> 8) / 255.0, v13 / 255.0, 1.0);
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        LODWORD(v13) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_40();
            if (!v15 & v14)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_8_30();
            if (!v15)
            {
              goto LABEL_71;
            }

            LODWORD(v13) = v17 - v16;
            if (v17 < v16)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_7_26();
            if (v15)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v18 = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v30 != 43)
  {
    if (v30 != 45)
    {
      if (v9)
      {
        while (1)
        {
          OUTLINED_FUNCTION_3_40();
          if (!v15 & v14)
          {
            break;
          }

          OUTLINED_FUNCTION_8_30();
          if (!v15)
          {
            break;
          }

          LODWORD(v13) = v28 + v27;
          if (__CFADD__(v28, v27))
          {
            break;
          }

          OUTLINED_FUNCTION_7_26();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_15_21();
        while (1)
        {
          OUTLINED_FUNCTION_3_40();
          if (!v15 & v14)
          {
            break;
          }

          OUTLINED_FUNCTION_8_30();
          if (!v15)
          {
            break;
          }

          LODWORD(v13) = v20 - v19;
          if (v20 < v19)
          {
            break;
          }

          OUTLINED_FUNCTION_7_26();
          if (v15)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_79;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_15_21();
      while (1)
      {
        OUTLINED_FUNCTION_3_40();
        if (!v15 & v14)
        {
          break;
        }

        OUTLINED_FUNCTION_8_30();
        if (!v15)
        {
          break;
        }

        LODWORD(v13) = v24 + v23;
        if (__CFADD__(v24, v23))
        {
          break;
        }

        OUTLINED_FUNCTION_7_26();
        if (v15)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_81:
  __break(1u);
  return result;
}

double sub_27047DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0.0;
  if (*(a1 + 16))
  {
    v4 = sub_2703D7318(a2, a3);
    if (v5)
    {
      OUTLINED_FUNCTION_11_25(v4, v5, v6, v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }
  }

  return v3;
}

void sub_27047DDF4(char a1)
{
  v2 = v1;
  v4 = sub_27047F108();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2705D7A34();

    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *(v6 + 32) * 255.0;
        if (COERCE__INT64(fabs(v8)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -1.0)
          {
            if (v8 < 256.0)
            {
              if (v7 != 1)
              {
                v9 = *(v6 + 40) * 255.0;
                if (COERCE__INT64(fabs(v9)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v9 > -1.0)
                  {
                    if (v9 < 256.0)
                    {
                      if (v7 >= 3)
                      {
                        v10 = *(v6 + 48);

                        v11 = v10 * 255.0;
                        if (COERCE__INT64(fabs(v10 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          if (v11 > -1.0)
                          {
                            if (v11 < 256.0)
                            {
                              v12 = v8;
                              v13 = v9;
                              v14 = v11;
                              if ((a1 & 1) == 0)
                              {
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88, &qword_2705F38A8);
                                v20 = swift_allocObject();
                                v21 = MEMORY[0x277D84B78];
                                *(v20 + 16) = xmmword_2705E10F0;
                                v22 = MEMORY[0x277D84BC0];
                                *(v20 + 56) = v21;
                                *(v20 + 64) = v22;
                                *(v20 + 32) = v12;
                                *(v20 + 96) = v21;
                                *(v20 + 104) = v22;
                                *(v20 + 72) = v13;
                                *(v20 + 136) = v21;
                                *(v20 + 144) = v22;
                                *(v20 + 112) = v14;
                                goto LABEL_22;
                              }

                              v15 = CGColorGetAlpha(v2) * 255.0;
                              if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                              {
                                if (v15 > -1.0)
                                {
                                  if (v15 < 256.0)
                                  {
                                    v16 = v15;
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88, &qword_2705F38A8);
                                    v17 = swift_allocObject();
                                    *(v17 + 16) = xmmword_2705EB880;
                                    v18 = MEMORY[0x277D84B78];
                                    v19 = MEMORY[0x277D84BC0];
                                    *(v17 + 56) = MEMORY[0x277D84B78];
                                    *(v17 + 64) = v19;
                                    *(v17 + 32) = v12;
                                    *(v17 + 96) = v18;
                                    *(v17 + 104) = v19;
                                    *(v17 + 72) = v13;
                                    *(v17 + 136) = v18;
                                    *(v17 + 144) = v19;
                                    *(v17 + 112) = v14;
                                    *(v17 + 176) = v18;
                                    *(v17 + 184) = v19;
                                    *(v17 + 152) = v16;
LABEL_22:
                                    sub_2705D7594();
                                    return;
                                  }

                                  goto LABEL_37;
                                }

LABEL_36:
                                __break(1u);
LABEL_37:
                                __break(1u);
                                return;
                              }

LABEL_35:
                              __break(1u);
                              goto LABEL_36;
                            }

LABEL_34:
                            __break(1u);
                            goto LABEL_35;
                          }

LABEL_33:
                          __break(1u);
                          goto LABEL_34;
                        }

LABEL_32:
                        __break(1u);
                        goto LABEL_33;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }
  }
}

void *sub_27047E0B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - v4;
  sub_2705D7D74();
  OUTLINED_FUNCTION_0();
  v57 = v6;
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2E0, &unk_270610B30);
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = (&v51 - v12);
  v14 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v19 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v59;
  sub_2705D8454();
  if (v21)
  {
    goto LABEL_12;
  }

  v54 = v13;
  v55 = v16;
  v59 = v9;
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  sub_27047FC94(&qword_2807D3BC0, MEMORY[0x277D21B10], MEMORY[0x277D21B20]);
  sub_2705D8184();
  v53 = v14;
  v22 = v54;
  sub_2705D63B4();
  v23 = sub_2705D6844();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v52 = v20;
    sub_2703C1634(v22, &qword_2807CF2E0, &unk_270610B30);
    v24 = v59;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
    v13 = sub_2705D6834();
    OUTLINED_FUNCTION_4_4();
    (*(v25 + 8))(v22, v23);
    v24 = v59;
    if (v13)
    {
      OUTLINED_FUNCTION_10_23();
      sub_27047DD68(v13, v26, 0xE500000000000000);
      OUTLINED_FUNCTION_5_37();
      sub_27047DD68(v13, v27, 0xE600000000000000);
      CGSizeMake();
      OUTLINED_FUNCTION_13_21();
      sub_27047D624(v13);
      v60[8] = 70;
      sub_2705D80A4();
      OUTLINED_FUNCTION_17_16();
      v28 = v56;
      v29 = OUTLINED_FUNCTION_6_32();
      sub_27047D6C8(v30, v31, v32, v33, v34, v35, v36, v37, v38, v29, v39);
      v40 = v28;

      v41 = sub_2705D4484();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v41);
      v43 = a1;
      if (EnumTagSinglePayload != 1)
      {
        (*(v55 + 8))(v20, v53);
        sub_2703C1634(v40, &unk_2807D4280, &unk_2705E4700);
        __swift_destroy_boxed_opaque_existential_1(v60);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v13;
      }

      v52 = v20;

      sub_2703C1634(v40, &unk_2807D4280, &unk_2705E4700);
      v44 = v55;
      goto LABEL_10;
    }

    v52 = v20;
  }

  v43 = a1;
  v44 = v55;
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  sub_2705D8434();
  sub_2705D7D44();
  sub_2705D7D84();
  swift_allocError();
  v13 = v45;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0) + 48);
  *v13 = &type metadata for CoreMediaArtwork;
  v48 = v57;
  v47 = v58;
  (*(v57 + 16))(v13 + v46, v24, v58);
  OUTLINED_FUNCTION_4_4();
  (*(v49 + 104))(v13);
  swift_willThrow();
  (*(v48 + 8))(v24, v47);
  (*(v44 + 8))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1(v60);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_27047E654(uint64_t a1, uint64_t a2)
{
  v2 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8, &unk_2705F27A0);

  sub_2705D6474();
  sub_2705D6434();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_27047E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1, v11);
  (*(v6 + 16))(v10, a2, v4);
  v18 = sub_27047E9E0(v17, v10);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = sub_2705D7184();
    sub_27047FC94(&qword_2807CF138, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BC8, &qword_2705F3A70);
    v23 = MEMORY[0x277D84F90];
    *v21 = v22;
    v21[1] = v23;
    OUTLINED_FUNCTION_4_4();
    (*(v24 + 104))(v21);
    swift_willThrow();
  }

  (*(v6 + 8))(a2, v4);
  (*(v13 + 8))(a1, v11);
  return v19;
}

uint64_t sub_27047E9E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2E0, &unk_270610B30);
  OUTLINED_FUNCTION_23_0(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  sub_2705D63B4();
  v12 = sub_2705D6844();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v13 + 8))(a2);
    sub_2705D6484();
    OUTLINED_FUNCTION_11_1();
    (*(v14 + 8))(a1);
    v15 = &qword_2807CF2E0;
    v16 = &unk_270610B30;
    v17 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
    v18 = sub_2705D6834();
    OUTLINED_FUNCTION_4_4();
    (*(v19 + 8))(v11, v12);
    if (!v18)
    {
      sub_2705D6654();
      OUTLINED_FUNCTION_11_1();
      (*(v36 + 8))(a2);
      sub_2705D6484();
      OUTLINED_FUNCTION_11_1();
      (*(v37 + 8))(a1);
      return v18;
    }

    OUTLINED_FUNCTION_10_23();
    sub_27047DD68(v18, v20, 0xE500000000000000);
    OUTLINED_FUNCTION_5_37();
    sub_27047DD68(v18, v21, 0xE600000000000000);
    CGSizeMake();
    OUTLINED_FUNCTION_13_21();
    sub_27047D624(v18);
    v39[1] = 70;
    sub_2705D80A4();
    OUTLINED_FUNCTION_17_16();
    v22 = OUTLINED_FUNCTION_6_32();
    sub_27047D6C8(v23, v24, v25, v26, v27, v28, v29, v30, v31, v22, v32);

    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v33 + 8))(a2);
    sub_2705D6484();
    OUTLINED_FUNCTION_11_1();
    (*(v34 + 8))(a1);
    v35 = sub_2705D4484();
    if (__swift_getEnumTagSinglePayload(v7, 1, v35) != 1)
    {
      sub_2703C1634(v7, &unk_2807D4280, &unk_2705E4700);
      return v18;
    }

    v15 = &unk_2807D4280;
    v16 = &unk_2705E4700;
    v17 = v7;
  }

  sub_2703C1634(v17, v15, v16);
  return 0;
}

void sub_27047ED58(uint64_t a1)
{
  OUTLINED_FUNCTION_10_23();
  sub_27047DD68(v2, v3, 0xE500000000000000);
  OUTLINED_FUNCTION_5_37();
  sub_27047DD68(a1, v4, 0xE600000000000000);

  CGSizeMake();
}

CGColorRef sub_27047EDB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2705D7564();
  v5 = sub_27047DA80(v3, v4, a2);

  return v5;
}

uint64_t sub_27047EDF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2705D6D64();
  if (v6 <= 0.0 || (sub_2705D6D64(), v7 <= 0.0))
  {
    v22 = sub_2705D4484();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
  }

  else
  {
    v8 = sub_2705D6D84();
    if (v9)
    {
      sub_2705D6D64();
      OUTLINED_FUNCTION_13_21();
      v10 = sub_2705D6D94();
      v11 = sub_2705D7564();
      v13 = v12;

      v14 = sub_2705D6D74();
      v15 = sub_2705D7564();
      v17 = v16;

      v18 = sub_27047D624(a1);
      v20 = v19;
      v37 = 70;
      sub_2705D80A4();
      OUTLINED_FUNCTION_17_16();
      sub_27047D6C8(v18, v20, v11, v13, v15, v17, v21, &v37, a2, v2, v3);
    }

    else
    {
      v24 = v8;
      sub_2705D6D64();
      OUTLINED_FUNCTION_13_21();
      v25 = sub_2705D6D94();
      v26 = sub_2705D7564();
      v28 = v27;

      v29 = sub_2705D6D74();
      v30 = sub_2705D7564();
      v32 = v31;

      v33 = sub_27047D624(a1);
      v35 = v34;
      v37 = v24;
      sub_2705D80A4();
      OUTLINED_FUNCTION_17_16();
      sub_27047D6C8(v33, v35, v26, v28, v30, v32, v36, &v37, a2, v2, v3);
    }
  }
}

void *sub_27047F06C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_27047E0B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_27047F0B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2703C0FF0(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_27047F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27047E9E0(a1, a2);
  *a3 = result;
  return result;
}

CGColorRef sub_27047F108()
{
  v1 = CGColorGetColorSpace(v0);
  if (v1)
  {
    v2 = v1;
    Model = CGColorSpaceGetModel(v1);

    if (Model == kCGColorSpaceModelRGB)
    {
      return v0;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, v0, 0);

  return CopyByMatchingToColorSpace;
}

unint64_t sub_27047F198(uint64_t a1)
{
  result = sub_27047F1C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27047F1C0()
{
  result = qword_2807D3BB0;
  if (!qword_2807D3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BB0);
  }

  return result;
}

unsigned __int8 *sub_27047F220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_2705D7734();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_27047F798(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2705D7DB4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_27047F798(uint64_t a1, unint64_t a2)
{
  v2 = sub_27047F804(sub_27047F800, 0, a1, a2);
  v6 = sub_27047F838(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_27047F838(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2705D7C34();
    if (!v9 || (v10 = v9, v11 = sub_27047F998(v9, 0), v12 = sub_27047FA08(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2705D7624();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2705D7624();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2705D7DB4();
LABEL_4:

  return sub_2705D7624();
}

void *sub_27047F998(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BB8, qword_27060FEE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_27047FA08(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_27047FC18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2705D76D4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2705D7DB4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_27047FC18(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2705D76B4();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_27047FC18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2705D7704();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743A3AE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_27047FC94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 + 56) + 32 * a1;

  return sub_2703D7F04(v7, va);
}

_BYTE *storeEnumTagSinglePayload for MercuryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27047FEA8);
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

uint64_t sub_27047FEE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_30(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30(1684957547, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_30(0x736C65646F6DLL, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_5_30(0x6574656D61726170, 0xEA00000000007372);

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_270480004(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x736C65646F6DLL;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270480084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C10, &qword_2705F3C98);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270480728();
  sub_2705D84C4();
  v11 = *v3;
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_5_38(v11);
  if (!v2)
  {
    v12 = v3[2];
    LOBYTE(v15) = 1;
    OUTLINED_FUNCTION_5_38(v12);
    v15 = v3[4];
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BF0, &qword_2705F3C80);
    sub_2704808BC();
    OUTLINED_FUNCTION_2_35();
    v15 = v3[5];
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3498, &qword_2705F2770);
    sub_270480838(&qword_2807D34B8, sub_270416914, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_2_35();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_270480264@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98, &unk_2705DAB30);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270480728();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = OUTLINED_FUNCTION_6_33();
  v15 = v7;
  LOBYTE(v16) = 1;
  v8 = OUTLINED_FUNCTION_6_33();
  v14 = v9;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BF0, &qword_2705F3C80);
  sub_27048077C();
  OUTLINED_FUNCTION_1_43();
  sub_2705D7F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3498, &qword_2705F2770);
  sub_270480838(&qword_2807D34A0, sub_270416968, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  OUTLINED_FUNCTION_1_43();
  sub_2705D7F44();
  v10 = OUTLINED_FUNCTION_30_3();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v16;
  return result;
}

uint64_t sub_270480524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27047FEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27048054C(uint64_t a1)
{
  v2 = sub_270480728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270480588(uint64_t a1)
{
  v2 = sub_270480728();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2704805C8()
{
  result = qword_2807D3BD0;
  if (!qword_2807D3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BD0);
  }

  return result;
}

double sub_27048061C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_270480264(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_27048067C()
{
  result = qword_2807D3BD8;
  if (!qword_2807D3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BD8);
  }

  return result;
}

unint64_t sub_2704806D4()
{
  result = qword_2807D3BE0;
  if (!qword_2807D3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BE0);
  }

  return result;
}

unint64_t sub_270480728()
{
  result = qword_2807D3BE8;
  if (!qword_2807D3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BE8);
  }

  return result;
}

unint64_t sub_27048077C()
{
  result = qword_2807D3BF8;
  if (!qword_2807D3BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3BF0, &qword_2705F3C80);
    sub_270480978(&qword_2807D3C00, sub_2703D2C58, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3BF8);
  }

  return result;
}

uint64_t sub_270480838(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3498, &qword_2705F2770);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704808BC()
{
  result = qword_2807D3C18;
  if (!qword_2807D3C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3BF0, &qword_2705F3C80);
    sub_270480978(&qword_2807D3C20, sub_2703D2DD4, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C18);
  }

  return result;
}

uint64_t sub_270480978(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3C08, &unk_2705F3C88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_5_38(uint64_t a1)
{

  return sub_2705D8034();
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_2705D7F54();
}

uint64_t sub_270480A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for MessagePlacementActionObject(0);
  v6 = v5;
  if (v4)
  {
    sub_27048171C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for MessagePlacementActionObject);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t MessageAction.Action.hashValue.getter()
{
  v1 = *v0;
  sub_2705D83B4();
  MEMORY[0x2743A47E0](v1);
  return sub_2705D8414();
}

uint64_t MessageAction.messagePlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;

  return sub_2703B4984(v4, v5, v6);
}

uint64_t MessageAction.message.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessageAction(0);
  OUTLINED_FUNCTION_2_36();
  return sub_27048171C(v1 + v3, a1, v4);
}

uint64_t type metadata accessor for MessageAction(uint64_t a1)
{
  result = qword_2807D3C50;
  if (!qword_2807D3C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageAction.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessageAction(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MessageAction.init(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  __dst[12] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28, &qword_2705F3CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v49 - v4;
  v52 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C30, &qword_2705F3CA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v55 = type metadata accessor for MessagePlacementActionObject(0);
  OUTLINED_FUNCTION_14();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v49 - v14;
  v56 = type metadata accessor for MessageAction(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v50 = v16;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = objc_opt_self();
  __dst[0] = v17;
  __dst[1] = v18;
  LOBYTE(__dst[2]) = v19;
  sub_27046CD54();
  sub_27046C7B8(v21);

  v22 = sub_2705D7454();
  sub_2703AE630(v17, v18, v19);

  __dst[0] = 0;
  v23 = [v20 dataWithJSONObject:v22 options:0 error:__dst];

  v24 = __dst[0];
  if (!v23)
  {
    v25 = v24;
    v26 = sub_2705D4364();

    swift_willThrow();
LABEL_10:
    v29 = v56;
LABEL_11:
    v30 = v57;
    v31 = 1;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  }

  sub_2705D44C4();

  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  sub_2704816C8();
  sub_2705D3FF4();

  if (!__dst[0])
  {
LABEL_9:
    OUTLINED_FUNCTION_5_39();
    goto LABEL_10;
  }

  if (!*(__dst[0] + 2))
  {

    goto LABEL_9;
  }

  v27 = *(__dst[0] + 6);

  sub_270480A7C(v27, v9);

  v28 = v55;
  if (__swift_getEnumTagSinglePayload(v9, 1, v55) == 1)
  {
    OUTLINED_FUNCTION_5_39();
    sub_2703C2EFC(v9, &qword_2807D3C30, &qword_2705F3CA8);
    goto LABEL_10;
  }

  v33 = v9;
  v34 = v54;
  sub_270481884(v33, v54, type metadata accessor for MessagePlacementActionObject);
  sub_27048171C(v34, v13, type metadata accessor for MessagePlacementActionObject);
  v35 = v53;
  sub_2704C07F4(v13, v53);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v52);
  v29 = v56;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_0_41();
    OUTLINED_FUNCTION_5_39();
    sub_2703C2EFC(v35, &qword_2807D3C28, &qword_2705F3CA0);
    goto LABEL_11;
  }

  v37 = v51;
  sub_270481884(v35, v51, type metadata accessor for MessageViewStyle);
  v38 = *(v28 + 28);
  memcpy(__dst, &v34[v38], 0x60uLL);
  memcpy(v64, &v34[v38], sizeof(v64));
  sub_2704B12EC(&v59);
  v39 = v60;
  if (!v60)
  {
    sub_27048177C(__dst, &v58);
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_0_41();
    sub_270481830(__dst);
    goto LABEL_11;
  }

  v40 = v63;
  v41 = v61;
  v42 = v62;
  v43 = v50;
  *v50 = v59;
  *(v43 + 8) = v39;
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  *(v43 + 40) = v40;
  OUTLINED_FUNCTION_2_36();
  sub_27048171C(v37, v43 + v44, v45);
  if (*v34)
  {
    v46 = sub_2705D8134();
    OUTLINED_FUNCTION_5_39();

    v47 = v46 ^ 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_39();

    v47 = 0;
  }

  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_0_41();
  *(v43 + *(v29 + 24)) = v47 & 1;
  v48 = v57;
  sub_270481884(v43, v57, type metadata accessor for MessageAction);
  v30 = v48;
  v31 = 0;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}