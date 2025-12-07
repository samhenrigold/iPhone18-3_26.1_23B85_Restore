uint64_t static OasisAnalyticsHandsSpeedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OasisAnalyticsMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40410, &qword_19397B990);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = *(v14 + 56);
  sub_1934487B4(a1, &v38 - v15, &qword_1EAE402A8, &qword_19397B638);
  sub_1934487B4(a2, &v16[v17], &qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_31(v16);
  if (!v18)
  {
    sub_1934487B4(v16, v11, &qword_1EAE402A8, &qword_19397B638);
    OUTLINED_FUNCTION_31(&v16[v17]);
    if (!v18)
    {
      sub_1936A6128(&v16[v17], v7);
      OUTLINED_FUNCTION_0_85();
      sub_1936A618C(v20, v21, &protocol conformance descriptor for OasisAnalyticsMetadata);
      v22 = sub_19393C550();
      sub_1936A60CC(v7);
      sub_1936A60CC(v11);
      sub_19344E6DC(v16, &qword_1EAE402A8, &qword_19397B638);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_1936A60CC(v11);
LABEL_9:
    sub_19344E6DC(v16, &qword_1EAE40410, &qword_19397B990);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v16[v17]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v16, &qword_1EAE402A8, &qword_19397B638);
LABEL_13:
  v23 = *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(0) + 20);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 13);
  v26 = (a2 + v23);
  if (v25)
  {
    if ((*(v26 + 13) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v26 + 13))
    {
      return 0;
    }

    v29 = *v26;
    v30 = *(v26 + 12);
    v31 = *(v26 + 2);
    v32 = *(v24 + 12);
    v33 = *(v24 + 2);
    v34 = *v24;
    if ((v34 & 0x100000000) != 0)
    {
      if ((v29 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v29 & 0x100000000) != 0 || *&v34 != *&v29)
    {
      return 0;
    }

    v37 = v31 | (v30 << 32);
    if (((v33 | (v32 << 32)) & 0x100000000) != 0)
    {
      if ((v37 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v37 & 0x100000000) != 0 || *&v33 != *&v37)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_26();
  if (v28)
  {
    if (v27)
    {
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_45();
    if ((v36 & 1) == 0)
    {
      OUTLINED_FUNCTION_15_46(v35);
      if (sub_19393C550())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t OasisAnalyticsHandsSpeedEvent.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for OasisAnalyticsMetadata(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_32_26();
  sub_1934487B4(v9, v10, &qword_1EAE402A8, &qword_19397B638);
  v11 = OUTLINED_FUNCTION_19();
  if (__swift_getEnumTagSinglePayload(v11, v12, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1936A6128(v0, v6);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_85();
    sub_1936A618C(v13, v14, &protocol conformance descriptor for OasisAnalyticsMetadata);
    sub_19393C540();
    sub_1936A60CC(v6);
  }

  v15 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  if (*(v0 + *(v15 + 20) + 13) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OasisAnalyticsHandsSpeedSample.hash(into:)();
  }

  if (*(v0 + *(v15 + 24) + 17) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_1936A62A8();
  return sub_19393C540();
}

uint64_t OasisAnalyticsHandsSpeedSample.leftHandSpeed.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t OasisAnalyticsHandsSpeedSample.rightHandSpeed.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

void __swiftcall OasisAnalyticsHandsSpeedSample.init()(IntelligencePlatformLibrary::OasisAnalyticsHandsSpeedSample *__return_ptr retstr)
{
  retstr->leftHandSpeed.value = 0.0;
  retstr->leftHandSpeed.is_nil = 1;
  retstr->rightHandSpeed.value = 0.0;
  retstr->rightHandSpeed.is_nil = 1;
}

uint64_t static OasisAnalyticsHandsSpeedSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  if (*(a1 + 12))
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  return 1;
}

unint64_t sub_1936A6078()
{
  result = qword_1EAE40418;
  if (!qword_1EAE40418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40418);
  }

  return result;
}

uint64_t sub_1936A60CC(uint64_t a1)
{
  v2 = type metadata accessor for OasisAnalyticsMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1936A6128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OasisAnalyticsMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936A618C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OasisAnalyticsHandsSpeedSample.hash(into:)()
{
  v1 = *(v0 + 12);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      return sub_19393CAE0();
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t OasisAnalyticsHandsSpeedSample.hashValue.getter()
{
  OUTLINED_FUNCTION_9_60();
  sub_19393CAB0();
  OasisAnalyticsHandsSpeedSample.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936A62A8()
{
  result = qword_1EAE40430;
  if (!qword_1EAE40430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40430);
  }

  return result;
}

uint64_t sub_1936A62FC()
{
  OUTLINED_FUNCTION_9_60();
  sub_19393CAB0();
  OasisAnalyticsHandsSpeedSample.hash(into:)();
  return sub_19393CB00();
}

uint64_t OasisAnalyticsPinchEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsPinchEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 sub_1936A6464()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v4 = (v1 + *(v3(v2) + 24));
  v5 = v4[1].n128_u8[0];
  v6 = v4[1].n128_u8[1];
  result = *v4;
  *v0 = *v4;
  v0[1].n128_u8[0] = v5;
  v0[1].n128_u8[1] = v6;
  return result;
}

uint64_t sub_1936A64C8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  result = a2(0);
  v8 = v2 + *(result + 24);
  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 17) = v6;
  return result;
}

uint64_t OasisAnalyticsPinchEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsPinchEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1936A65E8(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936A6650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void OasisAnalyticsPinchSample.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OasisAnalyticsPinchSample.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void OasisAnalyticsPinchSample.init()(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_26_26(a1);
}

uint64_t sub_1936A6730@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsPinchSample.HandPinchState.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936A6758@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static OasisAnalyticsPinchSample.HandPinchState.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_1936A67B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936A68C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

__n128 sub_1936A6A68()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2(v1);
  OUTLINED_FUNCTION_71_0();
  v4 = v3[1].n128_u16[0];
  result = *v3;
  *v0 = *v3;
  v0[1].n128_u16[0] = v4;
  return result;
}

void sub_1936A6AE0(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  a2(0);
  OUTLINED_FUNCTION_71_0();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OasisAnalyticsHandUserViewEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandUserViewEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandUserViewEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandUserViewEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 sub_1936A6BEC@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OasisAnalyticsMetadata(0);
  v5 = OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
  v7 = a1(0);
  v8 = a2 + *(v7 + 20);
  *v8 = xmmword_19396F4D0;
  *(v8 + 16) = 0;
  v9 = a2 + *(v7 + 24);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 256;
  sub_19344E6DC(a2, &qword_1EAE402A8, &qword_19397B638);
  v10 = OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v4);
  result = xmmword_19396F4D0;
  *v8 = xmmword_19396F4D0;
  *(v8 + 16) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 256;
  return result;
}

uint64_t sub_1936A6D90@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsHandUserViewSample.UserViewState.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936A6DB8@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static OasisAnalyticsHandUserViewSample.UserViewState.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t OasisAnalyticsHandsPipelineFramerateEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsPipelineFramerateEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSystemFramerateEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSystemFramerateEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

BOOL sub_1936A7258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, _BYTE *))
{
  v39 = a4;
  type metadata accessor for OasisAnalyticsMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40[-v13 - 8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40410, &qword_19397B990);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v40[-v18 - 8];
  v20 = *(v17 + 56);
  sub_1934487B4(a1, &v40[-v18 - 8], &qword_1EAE402A8, &qword_19397B638);
  sub_1934487B4(a2, &v19[v20], &qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_31(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_31(&v19[v20]);
    if (v21)
    {
      sub_19344E6DC(v19, &qword_1EAE402A8, &qword_19397B638);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v19, &qword_1EAE40410, &qword_19397B990);
    return 0;
  }

  sub_1934487B4(v19, v14, &qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_31(&v19[v20]);
  if (v21)
  {
    sub_1936A60CC(v14);
    goto LABEL_9;
  }

  sub_1936A6128(&v19[v20], v10);
  OUTLINED_FUNCTION_0_85();
  sub_1936A618C(v23, v24, &protocol conformance descriptor for OasisAnalyticsMetadata);
  v25 = sub_19393C550();
  sub_1936A60CC(v10);
  sub_1936A60CC(v14);
  sub_19344E6DC(v19, &qword_1EAE402A8, &qword_19397B638);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v26 = *(a3(0) + 20);
  v27 = a1 + v26;
  v28 = *(a1 + v26);
  v29 = a2 + v26;
  v30 = *(a2 + v26);
  if (v28 == 3)
  {
    if (v30 != 3)
    {
      return 0;
    }
  }

  else
  {
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    v33 = *(v27 + 16);
    v34 = *(v27 + 8);
    v43[0] = v28;
    v43[1] = v34;
    v44 = v33;
    if (v30 == 3)
    {
      return 0;
    }

    v40[0] = v30;
    v41 = v31;
    v42 = v32 & 0x1FF;
    if ((v39(v43, v40) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_26();
  if ((v36 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_45();
    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_15_46(v37);
      if (sub_19393C550())
      {
        return 1;
      }
    }

    return 0;
  }

  return (v35 & 1) != 0;
}

uint64_t sub_1936A7594(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_3_4();
  v7 = type metadata accessor for OasisAnalyticsMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_32_26();
  sub_1934487B4(v14, v15, &qword_1EAE402A8, &qword_19397B638);
  v16 = OUTLINED_FUNCTION_19();
  if (__swift_getEnumTagSinglePayload(v16, v17, v7) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1936A6128(v3, v11);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_85();
    sub_1936A618C(v18, v19, &protocol conformance descriptor for OasisAnalyticsMetadata);
    sub_19393C540();
    sub_1936A60CC(v11);
  }

  v20 = a2(0);
  v21 = (v3 + *(v20 + 20));
  v22 = *v21;
  if (v22 == 3)
  {
    goto LABEL_9;
  }

  v23 = *(v21 + 8);
  OUTLINED_FUNCTION_103_0();
  if (v22 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if ((v23 & 0x100) != 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v24 = OUTLINED_FUNCTION_103_0();
    v25 = a3(v24);
    MEMORY[0x193B18030](v25);
  }

  if (*(v3 + *(v20 + 24) + 17))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_1936A62A8();
  return sub_19393C540();
}

uint64_t sub_1936A7848(uint64_t result, unsigned __int8 *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *result;
  v5 = *(result + 17);
  v6 = *a2;
  if (v4 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v5)
    {
      if ((a2[17] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a2[17])
      {
        return 0;
      }

      v7 = a3(result);
      if (v7 != (a3)())
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v4) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1936A7930(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2[17];
  if (*v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v4)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v6 = OUTLINED_FUNCTION_103_0();
  v7 = a2(v6);
  return MEMORY[0x193B18030](v7);
}

uint64_t sub_1936A79EC(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_21_36();
  sub_19393CAB0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v1)
  {
    OUTLINED_FUNCTION_180();
    v4 = a1();
    MEMORY[0x193B18030](v4);
  }

  return sub_19393CB00();
}

uint64_t sub_1936A7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_21_36();
  sub_19393CAB0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_180();
    v7 = a4();
    MEMORY[0x193B18030](v7);
  }

  return sub_19393CB00();
}

uint64_t OasisAnalyticsHandTracking.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934487B4(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t OasisAnalyticsHandTracking.writeTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934453DC(v0, v1 + *(v3 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t OasisAnalyticsHandTracking.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandTracking(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandTracking.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934487B4(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t OasisAnalyticsHandTracking.bookmark.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934453DC(v0, v1 + *(v3 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t OasisAnalyticsHandTracking.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandTracking(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandTracking.payload.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for OasisAnalyticsHandTracking(v2) + 28));
  *v0 = v3;

  return sub_193437C90(v3);
}

uint64_t OasisAnalyticsHandTracking.payload.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28);
  result = sub_193444060(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t OasisAnalyticsHandTracking.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandTracking(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandTracking.Payload.hashValue.getter()
{
  v2[9] = *v0;
  sub_19393CAB0();
  OasisAnalyticsHandTracking.Payload.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_1936A7E14(uint64_t a1)
{
  v3[9] = *v1;
  sub_19393CAB0();
  OasisAnalyticsHandTracking.Payload.hash(into:)(v3);
  return sub_19393CB00();
}

uint64_t sub_1936A7EA4@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsHandsFramerateMode.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936A7ECC@<X0>(char **a1@<X8>)
{
  result = static OasisAnalyticsHandsFramerateMode.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1936A8044()
{
  result = qword_1EAE40440;
  if (!qword_1EAE40440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40440);
  }

  return result;
}

unint64_t sub_1936A8114()
{
  result = qword_1EAE40460;
  if (!qword_1EAE40460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40460);
  }

  return result;
}

unint64_t sub_1936A816C()
{
  result = qword_1EAE40468;
  if (!qword_1EAE40468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40468);
  }

  return result;
}

unint64_t sub_1936A823C()
{
  result = qword_1EAE40488;
  if (!qword_1EAE40488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40488);
  }

  return result;
}

unint64_t sub_1936A8294()
{
  result = qword_1EAE40490;
  if (!qword_1EAE40490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40490);
  }

  return result;
}

unint64_t sub_1936A8334()
{
  result = qword_1EAE404A0;
  if (!qword_1EAE404A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE404A0);
  }

  return result;
}

unint64_t sub_1936A83D4()
{
  result = qword_1EAE404B0;
  if (!qword_1EAE404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE404B0);
  }

  return result;
}

unint64_t sub_1936A84A8()
{
  result = qword_1EAE404D0;
  if (!qword_1EAE404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE404D0);
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OasisAnalyticsHandsSpeedSample(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t storeEnumTagSinglePayload for OasisAnalyticsHandsSpeedSample(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
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

  *(result + 13) = v3;
  return result;
}

void sub_1936A85DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1936A8A54(319, &qword_1EAE404D8, type metadata accessor for OasisAnalyticsMetadata);
  if (v7 <= 0x3F)
  {
    sub_19349D1FC(319, a4, a5);
    if (v8 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE404E8, &type metadata for OasisAnalyticsQualityTrace);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2u)
    {
      v10 = (v9 & 0xFE) + 2147483646;
      v11 = (v10 & 0x7FFFFFFE | v9 & 1) - 1;
      if ((v10 & 0x7FFFFFFE) != 0)
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

void __swift_store_extra_inhabitant_index_14Tm(uint64_t a1, char a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }
}

void sub_1936A897C(uint64_t a1)
{
  sub_1936A8A54(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE40510, &type metadata for OasisAnalyticsHandTracking.Payload);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1936A8A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1936A8AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
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

void *sub_1936A8B08(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1936A8C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6449726574697277;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 9);
  v10 = a1 == 0x6449726574697277 && a2 == 0xE800000000000000;
  if (v10 || (v12 = *(v3 + 3), v13 = *(v3 + 16), result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v9)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0x756F43746E657665;
  v14 = a1 == 0x756F43746E657665 && a2 == 0xEC0000007265746ELL;
  if (v14 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v13)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 40) = &type metadata for OasisAnalyticsQualityTrace;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 25) = v9;
  *(v15 + 28) = v12;
  *(v15 + 32) = v13;
  *(v15 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936A8DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_19393BE60();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  v14 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v14 || (sub_19393CA30() & 1) != 0)
  {
    sub_1934486F8(v5, v11, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      result = sub_19344E6DC(v11, &qword_1EAE3AA88, &qword_19394F9C0);
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      (*(v13 + 32))(v4, v11, v12);
      sub_1934948FC();
      return (*(v13 + 8))(v4, v12);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v17 = v16;
    *v16 = a1;
    v16[1] = a2;
    v16[5] = type metadata accessor for OasisAnalyticsUUID128(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17 + 2);
    sub_1936A92B8(v5, boxed_opaque_existential_1Tm, type metadata accessor for OasisAnalyticsUUID128);
    *(v17 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1936A9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for OasisAnalyticsUUID128(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  v13 = a1 == 0x73736553746F6F62 && a2 == 0xED000064496E6F69;
  if (v13 || (sub_19393CA30() & 1) != 0)
  {
    sub_1934486F8(v3, v10, &qword_1EAE40518, &qword_19397C6C0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      result = sub_19344E6DC(v10, &qword_1EAE40518, &qword_19397C6C0);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_1936A9318(v10, v4);
    sub_193494798(v11, &off_1F07DEEE0, a3);
    return sub_1936A937C(v4);
  }

  else
  {
    v15 = a1 == 0xD00000000000001ELL && 0x8000000193A2D140 == a2;
    if (v15 || (sub_19393CA30() & 1) != 0)
    {
      result = type metadata accessor for OasisAnalyticsMetadata(0);
      v16 = v3 + *(result + 20);
      if (*(v16 + 8))
      {
        goto LABEL_8;
      }

      v20[1] = *v16;
      return sub_1934948FC();
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v18 = v17;
      *v17 = a1;
      v17[1] = a2;
      v17[5] = type metadata accessor for OasisAnalyticsMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18 + 2);
      sub_1936A92B8(v3, boxed_opaque_existential_1Tm, type metadata accessor for OasisAnalyticsMetadata);
      *(v18 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_1936A92B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1936A9318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OasisAnalyticsUUID128(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936A937C(uint64_t a1)
{
  v2 = type metadata accessor for OasisAnalyticsUUID128(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OasisAnalyticsProcessId.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  *(a2 + 8) = result == 1;
  *(a2 + 9) = 0;
  return result;
}

uint64_t OasisAnalyticsProcessId.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

char *static OasisAnalyticsProcessId.allCases.getter()
{
  v0 = sub_1936A95F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1936A95F4((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    v0 = sub_1936A95F4((v1 > 1), v6, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  return v0;
}

uint64_t OasisAnalyticsProcessId.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x4474694B5241;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t OasisAnalyticsProcessId.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4474694B5241 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_19393CA30();
  }

  *a3 = 0;
  *(a3 + 8) = v8 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1936A95F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40528, &qword_19397C678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936A96F4()
{
  result = qword_1EAE40520;
  if (!qword_1EAE40520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40520);
  }

  return result;
}

void sub_1936A9748()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEABFF0);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v1 = 1;
  *v0 = "writerId";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_52();
  *v9 = 2;
  *v8 = "eventCounter";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936A98AC()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_19393C220();
    }

    else if (v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

uint64_t sub_1936A9948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if ((*(v3 + 9) & 1) == 0)
  {
    v6 = *(v3 + 8);
    v8 = *v3;
    v9 = v6 & 1;
    result = sub_193447324(&v8, 1, a2, &type metadata for OasisAnalyticsProcessId, a3, &off_1F07DEF90);
  }

  if (!v4 && (v5 & 1) == 0)
  {
    return sub_19393C3D0();
  }

  return result;
}

uint64_t sub_1936A9A58()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC008);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FAC0;
  v6 = v5 + v4 + v3[14];
  *(v5 + v4) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 104))(v6, v7);
  return sub_19393C410();
}

uint64_t sub_1936A9BB8()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_193497890(v0);
    }
  }

  return result;
}

uint64_t sub_1936A9C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_19393BE60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = OUTLINED_FUNCTION_9_61();
  sub_193448758(v10, v7, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_19344E6DC(v7, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v9 + 32))(v4, v7, v8);
  sub_19344652C();
  return (*(v9 + 8))(v4, v8);
}

void sub_1936A9E54()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC020);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v1 = 1;
  *v0 = "bootSessionId";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_52();
  *v9 = 2;
  *v8 = "timestampSinceBootInNanosecond";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936A9FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    v5 = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (v5 == 2)
    {
      type metadata accessor for OasisAnalyticsMetadata(0);
      sub_19393C230();
LABEL_8:
      v4 = 0;
    }

    else if (v5 == 1)
    {
      type metadata accessor for OasisAnalyticsUUID128(0);
      sub_193498018();
      goto LABEL_8;
    }
  }
}

uint64_t sub_1936AA080()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1936AA108(v0, v0);
  if (!v1)
  {
    result = type metadata accessor for OasisAnalyticsMetadata(0);
    if ((*(v0 + *(result + 20) + 8) & 1) == 0)
    {
      return sub_19393C3E0();
    }
  }

  return result;
}

uint64_t sub_1936AA108(uint64_t a1, uint64_t a2)
{
  v10[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = type metadata accessor for OasisAnalyticsUUID128(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_61();
  sub_193448758(v8, v5, &qword_1EAE40518, &qword_19397C6C0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_19344E6DC(v5, &qword_1EAE40518, &qword_19397C6C0);
  }

  sub_1936A9318(v5, v2);
  sub_193447600();
  return sub_1936A937C(v2);
}

void sub_1936AA2D0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC038);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_52();
  *v9 = 1;
  *v8 = "ARKitD";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void OasisAnalyticsQualityTrace.writerId.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OasisAnalyticsQualityTrace.writerId.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t OasisAnalyticsQualityTrace.eventCounter.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void OasisAnalyticsQualityTrace.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

BOOL static OasisAnalyticsQualityTrace.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a2 + 12);
  v5 = *(a2 + 16);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v6 = OasisAnalyticsProcessId.rawValue.getter();
    if (v6 != OasisAnalyticsProcessId.rawValue.getter())
    {
      return 0;
    }
  }

  if ((v3 & 1) == 0)
  {
    if (v2 == v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    return (v8 & 1) == 0;
  }

  return (v5 & 1) != 0;
}

uint64_t OasisAnalyticsQualityTrace.hash(into:)()
{
  v1 = *(v0 + 16);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      return sub_19393CAE0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v3 = OasisAnalyticsProcessId.rawValue.getter();
    MEMORY[0x193B18030](v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t OasisAnalyticsQualityTrace.hashValue.getter()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v2 = sub_19393CAD0();
    v4 = OUTLINED_FUNCTION_18_37(v2, v3);
    MEMORY[0x193B18030](v4);
  }

  sub_19393CAD0();
  if (!v0)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_1936AA71C()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v2 = sub_19393CAD0();
    v4 = OUTLINED_FUNCTION_18_37(v2, v3);
    MEMORY[0x193B18030](v4);
  }

  sub_19393CAD0();
  if (!v0)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t OasisAnalyticsUUID128.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v5 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

BOOL static OasisAnalyticsUUID128.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  OUTLINED_FUNCTION_52_1(a1, &v27 - v18);
  OUTLINED_FUNCTION_52_1(a2, &v19[v20]);
  OUTLINED_FUNCTION_31(v19);
  if (!v21)
  {
    sub_1934487B4(v19, v14, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&v19[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v19[v20], v4);
      OUTLINED_FUNCTION_0_86();
      sub_1936AB618(v23, v24, MEMORY[0x1E69695C8]);
      v25 = sub_19393C550();
      v26 = *(v6 + 8);
      v26(v10, v4);
      v26(v14, v4);
      sub_19344E6DC(v19, &qword_1EAE3AA88, &qword_19394F9C0);
      return (v25 & 1) != 0;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_19344E6DC(v19, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v19[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v19, &qword_1EAE3AA88, &qword_19394F9C0);
  return 1;
}

uint64_t OasisAnalyticsUUID128.hash(into:)(uint64_t a1)
{
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1934487B4(v1, &v16 - v11, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v8, v12, v2);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_86();
  sub_1936AB618(v14, v15, MEMORY[0x1E69695B8]);
  sub_19393C540();
  return (*(v4 + 8))(v8, v2);
}

uint64_t OasisAnalyticsMetadata.timestampSinceBootInNanosecond.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_8_45();
  v7 = v2 + v6;
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t OasisAnalyticsMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for OasisAnalyticsUUID128(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_8_45();
  v7 = v0 + v6;
  sub_19344E6DC(v0, &qword_1EAE40518, &qword_19397C6C0);
  v8 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

BOOL static OasisAnalyticsMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OasisAnalyticsUUID128(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40560, &qword_19397C6C8);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = *(v14 + 56);
  OUTLINED_FUNCTION_52_1(a1, &v26 - v15);
  OUTLINED_FUNCTION_52_1(a2, &v16[v17]);
  OUTLINED_FUNCTION_5_3(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_5_3(&v16[v17]);
    if (v18)
    {
      sub_19344E6DC(v16, &qword_1EAE40518, &qword_19397C6C0);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v16, &qword_1EAE40560, &qword_19397C6C8);
    return 0;
  }

  sub_1934487B4(v16, v11, &qword_1EAE40518, &qword_19397C6C0);
  OUTLINED_FUNCTION_5_3(&v16[v17]);
  if (v18)
  {
    sub_1936A937C(v11);
    goto LABEL_9;
  }

  sub_1936A9318(&v16[v17], v7);
  v20 = static OasisAnalyticsUUID128.== infix(_:_:)(v11, v7);
  sub_1936A937C(v7);
  sub_1936A937C(v11);
  sub_19344E6DC(v16, &qword_1EAE40518, &qword_19397C6C0);
  if (!v20)
  {
    return 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_8_45();
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if ((v23 & 1) == 0)
  {
    if (*v22 != *v24)
    {
      v25 = 1;
    }

    return (v25 & 1) == 0;
  }

  return (v25 & 1) != 0;
}

uint64_t OasisAnalyticsMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for OasisAnalyticsUUID128(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  sub_1934487B4(v2, &v30 - v20, &qword_1EAE40518, &qword_19397C6C0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1936A9318(v21, v17);
    OUTLINED_FUNCTION_103_0();
    sub_1934487B4(v17, v12, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_5_3(v12);
    if (v22)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      v23 = v31;
      (*(v31 + 32))(v8, v12, v3);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_0_86();
      sub_1936AB618(v24, v25, MEMORY[0x1E69695B8]);
      sub_19393C540();
      (*(v23 + 8))(v8, v3);
    }

    sub_1936A937C(v17);
  }

  OUTLINED_FUNCTION_8_45();
  v27 = (v2 + v26);
  if (v27[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v29 = *v27;
  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v29);
}

uint64_t sub_1936AB380(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936AB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1936AB438@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsProcessId.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936AB460@<X0>(char **a1@<X8>)
{
  result = static OasisAnalyticsProcessId.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936AB494()
{
  sub_19393CAB0();
  v0 = OasisAnalyticsProcessId.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936AB54C(uint64_t a1)
{
  sub_19393CAB0();
  v1 = OasisAnalyticsProcessId.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t sub_1936AB618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1936AB738()
{
  result = qword_1EAE40570;
  if (!qword_1EAE40570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE40578, &qword_19397C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40570);
  }

  return result;
}

unint64_t sub_1936AB7A0()
{
  result = qword_1EAE40580;
  if (!qword_1EAE40580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OasisAnalyticsQualityTrace(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

void sub_1936AB840(uint64_t a1)
{
  sub_1936AB990(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1936AB8F0(uint64_t a1)
{
  sub_1936AB990(319, &qword_1EAE40588, type metadata accessor for OasisAnalyticsUUID128);
  if (v1 <= 0x3F)
  {
    sub_1936AB9E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1936AB990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1936AB9E4()
{
  if (!qword_1ED508070)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED508070);
    }
  }
}

_BYTE *_s3AppOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936ABB0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511838);
  v4 = __swift_project_value_buffer(v3, qword_1ED511838);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.App.LanguageConsumption.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_51 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511838);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40590, &qword_19397C9F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.App.LanguageConsumption.attribute(_:)(void (*a1)(void))
{
  result = sub_1936ABF1C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936ABF64(void (*a1)(void))
{
  result = sub_1936ABF1C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936ABF94(uint64_t a1)
{
  result = sub_1936ABFBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936ABFBC()
{
  result = qword_1EAE3A7D0;
  if (!qword_1EAE3A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7D0);
  }

  return result;
}

_BYTE *_s19LanguageConsumptionOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppLanguageConsumption.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppLanguageConsumption(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1936AC2C4(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE40598, &qword_19397CA78, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE40598, &qword_19397CA78);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1936AC2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLanguageConsumption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppLanguageConsumption.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40598, &qword_19397CA78, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1936AC468(v8, a3);
  }

  return result;
}

uint64_t sub_1936AC468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLanguageConsumption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppLanguageConsumption.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1936AE200() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1936AC468(v11, v36);
      v29 = type metadata accessor for AppLanguageConsumption(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppLanguageConsumption.serialize()()
{
  v1 = type metadata accessor for AppLanguageConsumption(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936AC2C4(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40598, &qword_19397CA78, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE40598, &qword_19397CA78);
  return v11;
}

id static AppLanguageConsumption.columns.getter()
{
  v102 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_13_42();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v11, v12, v13, v14, v0, 4, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v24 = OUTLINED_FUNCTION_2_4(inited, v17, v18, v19, v20, v21, v22, v23, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v24[2].n128_u64[0] = sub_19393C850();
  v34 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0x44496D616461, 0xE600000000000000);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v35 = swift_initStackObject();
  v43 = OUTLINED_FUNCTION_2_4(v35, v36, v37, v38, v39, v40, v41, v42, v99);
  OUTLINED_FUNCTION_2_13(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v43[2].n128_u64[0] = sub_19393C850();
  v53 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_3_62();
  OUTLINED_FUNCTION_14_46();
  result = OUTLINED_FUNCTION_3_5(v54, v55);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v56 = swift_initStackObject();
  v64 = OUTLINED_FUNCTION_2_4(v56, v57, v58, v59, v60, v61, v62, v63, v100);
  OUTLINED_FUNCTION_2_13(v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v64[2].n128_u64[0] = sub_19393C850();
  v74 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v75 = OUTLINED_FUNCTION_3_62();
  result = OUTLINED_FUNCTION_3_5(v75 & 0xFFFFFFFFFFFFLL | 0x4774000000000000, 0xEC00000065726E65);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v76 = swift_initStackObject();
  v84 = OUTLINED_FUNCTION_2_4(v76, v77, v78, v79, v80, v81, v82, v83, v101);
  OUTLINED_FUNCTION_2_13(v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v84[2].n128_u64[0] = sub_19393C850();
  v94 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11_39();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v95, v96, v97, v98, v84, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v102;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *sub_1936ACBCC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_13_42();
  v8 = a1 == v5 && v6 == v7;
  if (v8 || (v9 = v6, (OUTLINED_FUNCTION_59_0(v5, 0xEA00000000006563) & 1) != 0))
  {
    result = type metadata accessor for AppLanguageConsumption(0);
    if (*(v2 + result[7] + 9))
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  v11 = a1 == 0x44496D616461 && v9 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0(0x44496D616461, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption(0);
    v12 = result[8];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_14_46();
  v13 = OUTLINED_FUNCTION_3_62() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000;
  v15 = a1 == v13 && v9 == v14;
  if (v15 || (OUTLINED_FUNCTION_59_0(v13, v14) & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption(0);
    v12 = result[9];
    goto LABEL_15;
  }

  v16 = OUTLINED_FUNCTION_3_62() & 0xFFFFFFFFFFFFLL | 0x4774000000000000;
  v18 = a1 == v16 && v9 == v17;
  if (v18 || (OUTLINED_FUNCTION_59_0(v16, v17) & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption(0);
    v12 = result[10];
LABEL_15:
    if (!*(v2 + v12 + 8))
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v19 = OUTLINED_FUNCTION_11_39();
  v21 = a1 == v19 && v9 == v20;
  if (v21 || (OUTLINED_FUNCTION_59_0(v19, 0xE900000000000074) & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption(0);
    if (*(v2 + result[11] + 4))
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v23 = v22;
  *v22 = a1;
  v22[1] = v9;
  v22[5] = type metadata accessor for AppLanguageConsumption(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
  sub_1936AC2C4(v2, boxed_opaque_existential_1Tm);
  *(v23 + 48) = 1;
  swift_willThrow();
}

uint64_t AppLanguageConsumption.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppLanguageConsumption(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  OUTLINED_FUNCTION_131(v5);
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = a1 + v2[11];
  sub_1934E3F94();
  *a1 = *sub_1936AE200();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  *(v5 + 4) = 256;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t static AppLanguageConsumption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLanguageConsumption(0);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5 + 9);
  v7 = *(a2 + v5 + 9);
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }

    sub_1936AD0E0();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v10)
  {
    if (!v8)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v9);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v16)
  {
    if (!v14)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v15);
    v19 = v13 && v17 == v18;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (!v22)
  {
    if (!v20)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!v20)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v21);
  v25 = v13 && v23 == v24;
  if (!v25 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v26 = *(v4 + 44);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1936AD0E0()
{
  result = qword_1EAE405A8;
  if (!qword_1EAE405A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405A8);
  }

  return result;
}

uint64_t AppLanguageConsumption.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for AppLanguageConsumption(0);
  if (*(v1 + v2[7] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19393CAD0();
    sub_1936AD268();
    sub_19393C540();
  }

  if (*(v1 + v2[8] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v2[9] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v2[10] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v2[11] + 4) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

unint64_t sub_1936AD268()
{
  result = qword_1EAE405B0;
  if (!qword_1EAE405B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405B0);
  }

  return result;
}

uint64_t AppLanguageConsumption.DataSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static AppLanguageConsumption.DataSource.allCases.getter()
{
  v0 = sub_1936AD868(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_1_65(v1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v25 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936AD868(v25, v2 + 2, 1, v26);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v27 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936AD868(v27, v2 + 3, 1, v28);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_1_65(v10, v0);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v29 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1936AD868(v29, v2 + 5, 1, v30);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(&v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v15 = OUTLINED_FUNCTION_1_65(v16, v15);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(&v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v31 = OUTLINED_FUNCTION_39(v19);
    v18 = sub_1936AD868(v31, v2 + 7, 1, v32);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(&v18[16 * v17]);
  if ((v2 + 8) > (v22 >> 1))
  {
    v21 = OUTLINED_FUNCTION_1_65(v22, v21);
  }

  *(v21 + 2) = v2 + 8;
  v23 = &v21[16 * v20];
  *(v23 + 4) = 6;
  v23[40] = 1;
  return v21;
}

uint64_t AppLanguageConsumption.DataSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x7374736163646F50;
  switch(*v0)
  {
    case 1:
      result = 22100;
      break;
    case 2:
      result = 0x736B6F6F42;
      break;
    case 3:
      result = 0x636973754DLL;
      break;
    case 4:
      result = 0x69616D6563696F56;
      break;
    case 5:
      result = 0x6F6F626F69647541;
      break;
    case 6:
      result = 0x7469746275535654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppLanguageConsumption.DataSource.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x7374736163646F50 && a2 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x7374736163646F50, 0xE800000000000000) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 22100 && a2 == 0xE200000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_9(22100, 0xE200000000000000) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v12 = a1 == 0x736B6F6F42 && a2 == 0xE500000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_9(0x736B6F6F42, 0xE500000000000000) & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v13 = a1 == 0x636973754DLL && a2 == 0xE500000000000000;
    if (v13 || (OUTLINED_FUNCTION_0_9(0x636973754DLL, 0xE500000000000000) & 1) != 0)
    {

      v9 = 1;
      v8 = 3;
    }

    else
    {
      v14 = a1 == 0x69616D6563696F56 && a2 == 0xE90000000000006CLL;
      if (v14 || (OUTLINED_FUNCTION_0_9(0x69616D6563696F56, 0xE90000000000006CLL) & 1) != 0)
      {

        v9 = 1;
        v8 = 4;
      }

      else
      {
        v15 = a1 == 0x6F6F626F69647541 && a2 == 0xE90000000000006BLL;
        if (v15 || (OUTLINED_FUNCTION_0_9(0x6F6F626F69647541, 0xE90000000000006BLL) & 1) != 0)
        {

          v9 = 1;
          v8 = 5;
        }

        else if (a1 == 0x7469746275535654 && a2 == 0xEA0000000000656CLL)
        {

          v9 = 1;
          v8 = 6;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_0_9(0x7469746275535654, 0xEA0000000000656CLL);

          v8 = 6;
          if ((v9 & 1) == 0)
          {
            v8 = 0;
          }
        }
      }
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1936AD868(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE405C0, &qword_19397CB28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936AD968()
{
  result = qword_1EAE405B8;
  if (!qword_1EAE405B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405B8);
  }

  return result;
}

uint64_t sub_1936AD9BC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC050);
  __swift_project_value_buffer(v0, qword_1EAEAC050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBD0;
  v6 = v5 + v4;
  v7 = v5 + v4 + dword_1EAEAC088;
  *(v5 + v4) = 1;
  *v7 = "dataSource";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v11 = 2;
  *v10 = "adamID";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v13 = 3;
  *v12 = "contentLanguage";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v6 + 3 * v2);
  *v15 = 4;
  *v14 = "contentGenre";
  *(v14 + 8) = 12;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v16 = OUTLINED_FUNCTION_3_1(v6 + 4 * v2);
  *v17 = 6;
  *v16 = "timeSpent";
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

void sub_1936ADC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    v5 = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        type metadata accessor for AppLanguageConsumption(0);
        sub_1934982A8();
        goto LABEL_11;
      case 2:
        v8 = *(type metadata accessor for AppLanguageConsumption(0) + 32);
        goto LABEL_10;
      case 3:
        v8 = *(type metadata accessor for AppLanguageConsumption(0) + 36);
        goto LABEL_10;
      case 4:
        v8 = *(type metadata accessor for AppLanguageConsumption(0) + 40);
LABEL_10:
        OUTLINED_FUNCTION_8_2(v8);
        sub_19393C200();
        goto LABEL_11;
      case 6:
        v7 = type metadata accessor for AppLanguageConsumption(0);
        OUTLINED_FUNCTION_8_2(*(v7 + 44));
        sub_19393C220();
LABEL_11:
        v4 = 0;
        break;
      default:
        continue;
    }
  }
}

int *sub_1936ADD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AppLanguageConsumption(0);
  v8 = result;
  v9 = (v3 + result[7]);
  if ((*(v9 + 9) & 1) == 0)
  {
    v10 = *(v9 + 8);
    v17 = *v9;
    v18 = v10 & 1;
    result = sub_193447324(&v17, 1, a2, &type metadata for AppLanguageConsumption.DataSource, a3, &off_1F07DF2E8);
  }

  if (!v4)
  {
    v11 = (v3 + v8[8]);
    v12 = v11[1];
    if (v12)
    {
      result = OUTLINED_FUNCTION_2_7(*v11, v12, 2);
    }

    v13 = (v3 + v8[9]);
    v14 = v13[1];
    if (v14)
    {
      result = OUTLINED_FUNCTION_2_7(*v13, v14, 3);
    }

    v15 = (v3 + v8[10]);
    v16 = v15[1];
    if (v16)
    {
      result = OUTLINED_FUNCTION_2_7(*v15, v16, 4);
    }

    if ((*(v3 + v8[11] + 4) & 1) == 0)
    {
      return sub_19393C3D0();
    }
  }

  return result;
}

uint64_t sub_1936ADE6C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE405C8;

  return v1;
}

uint64_t sub_1936ADF08()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC068);
  __swift_project_value_buffer(v0, qword_1EAEAC068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1939526B0;
  v6 = v5 + v4;
  v7 = v5 + v4 + dword_1EAEAC0A0;
  *(v5 + v4) = 0;
  *v7 = "Unknown";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v11 = 1;
  *v10 = "Podcasts";
  v10[1] = 8;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v14 = 2;
  *v13 = "TV";
  v13[1] = 2;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v6 + 3 * v2);
  *v17 = 3;
  *v16 = "Books";
  v16[1] = 5;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v6 + 4 * v2);
  *v20 = 4;
  *v19 = "Music";
  v19[1] = 5;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v6 + 5 * v2);
  *v23 = 5;
  *v22 = "Voicemail";
  v22[1] = 9;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = (v6 + 6 * v2);
  v26 = (v25 + dword_1EAEAC0A0);
  *v25 = 6;
  *v26 = "Audiobook";
  v26[1] = 9;
  v27 = OUTLINED_FUNCTION_41(v26);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v6 + 7 * v2);
  *v29 = 7;
  *v28 = "TVSubtitle";
  *(v28 + 8) = 10;
  *(v28 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

uint64_t AppLanguageConsumption.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AppLanguageConsumption(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppLanguageConsumption(uint64_t a1)
{
  result = qword_1EAE44D30;
  if (!qword_1EAE44D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppLanguageConsumption.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AppLanguageConsumption(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppLanguageConsumption.dataSource.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AppLanguageConsumption(v2);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t AppLanguageConsumption.dataSource.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AppLanguageConsumption(0);
  v6 = v1 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AppLanguageConsumption.adamID.getter()
{
  type metadata accessor for AppLanguageConsumption(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppLanguageConsumption.adamID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_59() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AppLanguageConsumption.contentLanguage.getter()
{
  type metadata accessor for AppLanguageConsumption(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppLanguageConsumption.contentLanguage.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_59() + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AppLanguageConsumption.contentGenre.getter()
{
  type metadata accessor for AppLanguageConsumption(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppLanguageConsumption.contentGenre.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_59() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AppLanguageConsumption.timeSpent.setter()
{
  result = OUTLINED_FUNCTION_2_63();
  v3 = v1 + *(result + 44);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t sub_1936AE754@<X0>(uint64_t *a1@<X8>)
{
  result = AppLanguageConsumption.DataSource.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936AE77C@<X0>(char **a1@<X8>)
{
  result = static AppLanguageConsumption.DataSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936AE7B0()
{
  sub_19393CAB0();
  v0 = AppLanguageConsumption.DataSource.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936AE868(uint64_t a1)
{
  sub_19393CAB0();
  v1 = AppLanguageConsumption.DataSource.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t AppLanguageConsumption.hashValue.getter()
{
  sub_19393CAB0();
  AppLanguageConsumption.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936AE97C(uint64_t a1)
{
  sub_19393CAB0();
  AppLanguageConsumption.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1936AE9BC()
{
  result = qword_1EAE405D8;
  if (!qword_1EAE405D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE405E0, &qword_19397CB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405D8);
  }

  return result;
}

unint64_t sub_1936AEA28()
{
  result = qword_1EAE405E8;
  if (!qword_1EAE405E8)
  {
    type metadata accessor for AppLanguageConsumption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405E8);
  }

  return result;
}

void sub_1936AEAAC(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE405F0, &type metadata for AppLanguageConsumption.DataSource);
      if (v3 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1936AEBEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511898);
  v4 = __swift_project_value_buffer(v3, qword_1ED511898);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:500 maxEventCount:12960000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_52 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511898);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE405F8, &qword_19397CD40);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase.attribute(_:)(void (*a1)(void))
{
  result = sub_1936AEFF0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF038(void (*a1)(void))
{
  result = sub_1936AEFF0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF068(uint64_t a1)
{
  result = sub_1936AF090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936AF090()
{
  result = qword_1ED5030F8;
  if (!qword_1ED5030F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5030F8);
  }

  return result;
}

_BYTE *_s25DeveloperReportedPurchaseOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936AF1D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5118F8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5118F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:500 maxEventCount:12960000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_53 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5118F8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40600, &qword_19397CDD0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase.attribute(_:)(void (*a1)(void))
{
  result = sub_1936AF5DC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF624(void (*a1)(void))
{
  result = sub_1936AF5DC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF654(uint64_t a1)
{
  result = sub_1936AF67C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936AF67C()
{
  result = qword_1ED503200;
  if (!qword_1ED503200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503200);
  }

  return result;
}

_BYTE *_s22SystemReportedPurchaseOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitDeveloperReportedPurchase.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1936AF974(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE40608, &qword_19397CE58, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1936AF974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitDeveloperReportedPurchase.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE40608, &qword_19397CE58, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1936AFB08(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936AFB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitDeveloperReportedPurchase.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  if (*sub_1936B175C() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v27 = v35;
      sub_1936AFB08(v12, v35);
      v28 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitDeveloperReportedPurchase.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936AF974(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40608, &qword_19397CE58, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE40608, &qword_19397CE58);
  return v11;
}

id static AdAttributionKitDeveloperReportedPurchase.columns.getter()
{
  v122 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v12, v13, v14, v15, v0, 5, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v35);
  v36 = OUTLINED_FUNCTION_21_4();
  result = sub_19343D150(v36, 0xEC00000044496E6FLL, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v37 = swift_initStackObject();
  v45 = OUTLINED_FUNCTION_2_4(v37, v38, v39, v40, v41, v42, v43, v44, v117);
  OUTLINED_FUNCTION_5_10(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v55 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v55);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v56, v57, v58, v59, v0, 3, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v60 = swift_initStackObject();
  v68 = OUTLINED_FUNCTION_2_4(v60, v61, v62, v63, v64, v65, v66, v67, v118);
  OUTLINED_FUNCTION_5_10(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v78);
  OUTLINED_FUNCTION_13_43();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v79, v80, v81, v82, v0, 3, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v83 = swift_initStackObject();
  v91 = OUTLINED_FUNCTION_2_4(v83, v84, v85, v86, v87, v88, v89, v90, v119);
  OUTLINED_FUNCTION_5_10(v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v101 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v101);
  v102 = OUTLINED_FUNCTION_24_4();
  result = sub_19343D150(v102, 0xEC00000065746144, 3, 0, v0, 0, 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v103 = swift_initStackObject();
  v111 = OUTLINED_FUNCTION_2_4(v103, v104, v105, v106, v107, v108, v109, v110, v120);
  *(v111 + 16) = v121;
  *(v111 + 32) = sub_19393C850();
  v112 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_52();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v113, v114, v115, v116, v111, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v122;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1936B02CC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = v4 == 0xD000000000000010 && 0x8000000193A29DA0 == v2;
  if (v16 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A29DA0) & 1) != 0)
  {
    v17 = v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 28);
    if (*(v17 + 8))
    {
      goto LABEL_7;
    }

    v40 = *v17;
LABEL_16:
    sub_1934948FC();
    goto LABEL_17;
  }

  v18 = OUTLINED_FUNCTION_21_4();
  v20 = v4 == v18 && v2 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0)
  {
    v21 = (v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 32));
    v22 = v21[1];
    if (!v22)
    {
      goto LABEL_7;
    }

    v40 = *v21;
    v41 = v22;
    goto LABEL_16;
  }

  v23 = v4 == 0x6563697270 && v2 == 0xE500000000000000;
  if (v23 || (OUTLINED_FUNCTION_59_0(0x6563697270, 0xE500000000000000) & 1) != 0)
  {
    v24 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 36);
LABEL_24:
    v25 = (v0 + v24);
    if (v25[1])
    {
      goto LABEL_7;
    }

    v40 = *v25;
    goto LABEL_16;
  }

  v26 = OUTLINED_FUNCTION_13_43();
  v27 = v4 == v26 && v2 == 0xE800000000000000;
  if (v27 || (OUTLINED_FUNCTION_59_0(v26, 0xE800000000000000) & 1) != 0)
  {
    v24 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 40);
    goto LABEL_24;
  }

  v28 = OUTLINED_FUNCTION_24_4();
  v30 = v4 == v28 && v2 == v29;
  if (v30 || (OUTLINED_FUNCTION_59_0(v28, v29) & 1) != 0)
  {
    v31 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
    sub_1934DE90C(v0 + *(v31 + 44), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      (*(v42 + 32))(v15, v9, v10);
      sub_1934948FC();
      (*(v42 + 8))(v15, v10);
      goto LABEL_17;
    }

    sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_7;
  }

  v32 = OUTLINED_FUNCTION_10_52();
  v34 = v4 == v32 && v2 == v33;
  if (!v34 && (OUTLINED_FUNCTION_59_0(v32, 0xE900000000000065) & 1) == 0)
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v38 = v37;
    *v37 = v4;
    v37[1] = v2;
    v37[5] = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 2);
    sub_1936AF974(v0, boxed_opaque_existential_1Tm);
    *(v38 + 48) = 1;
    swift_willThrow();

    goto LABEL_17;
  }

  v35 = v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 48);
  if ((*(v35 + 9) & 1) == 0)
  {
    v36 = *(v35 + 8);
    v40 = *v35;
    LOBYTE(v41) = v36 & 1;
    goto LABEL_16;
  }

LABEL_7:
  *v6 = 0u;
  v6[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitDeveloperReportedPurchase.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v12 = a1 + v2[7];
  j__OUTLINED_FUNCTION_8_11();
  v5 = (a1 + v2[8]);
  OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[9];
  j__OUTLINED_FUNCTION_8_11();
  v7 = a1 + v2[10];
  j__OUTLINED_FUNCTION_8_11();
  v8 = v2[11];
  sub_19349C79C();
  v9 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_1936B175C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v12 = 0;
  v12[8] = 1;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[8] = 1;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v10);
  *v9 = 0;
  *(v9 + 4) = 256;
  return result;
}

BOOL static AdAttributionKitDeveloperReportedPurchase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  OUTLINED_FUNCTION_32_2();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v19)
    {
      return 0;
    }
  }

  v20 = v16[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = *v21 == *v23 && v22 == v24;
    if (!v25 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2();
  if (v27)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v28)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_32_2();
  if (v30)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v31)
    {
      return 0;
    }
  }

  v32 = v16[11];
  v33 = *(v13 + 48);
  sub_1934DE90C(a1 + v32, v15);
  sub_1934DE90C(a2 + v32, &v15[v33]);
  OUTLINED_FUNCTION_31(v15);
  if (v25)
  {
    OUTLINED_FUNCTION_31(&v15[v33]);
    if (v25)
    {
      sub_193442B60(v15, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_33;
    }

LABEL_30:
    sub_193442B60(v15, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v15, v12);
  OUTLINED_FUNCTION_31(&v15[v33]);
  if (v34)
  {
    (*(v6 + 8))(v12, v4);
    goto LABEL_30;
  }

  (*(v6 + 32))(v9, &v15[v33], v4);
  sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  v36 = sub_19393C550();
  v37 = *(v6 + 8);
  v37(v9, v4);
  v37(v12, v4);
  sub_193442B60(v15, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v38 = v16[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 9);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 9);
  if (v40)
  {
    return (v42 & 1) != 0;
  }

  v43 = *v41;
  v44 = *(v41 + 8);
  v45 = *(v39 + 8);
  v48 = *v39;
  v49 = v45;
  if (v42)
  {
    return 0;
  }

  v46 = v43;
  v47 = v44 & 1;
  sub_1936B0BE4();
  return (sub_19393C550() & 1) != 0;
}

unint64_t sub_1936B0BE4()
{
  result = qword_1EAE40618;
  if (!qword_1EAE40618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40618);
  }

  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.hash(into:)(uint64_t a1)
{
  v2 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  v12 = (v1 + v11[7]);
  if (*(v12 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *v12;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  if (*(v1 + v11[8] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v1 + v11[9]);
  if (*(v14 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v15 = *v14;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v15);
  }

  v16 = (v1 + v11[10]);
  if (*(v16 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = *v16;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  sub_1934DE90C(v1 + v11[11], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v7, v10, v2);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v4 + 8))(v7, v2);
  }

  v18 = (v1 + v11[12]);
  if (*(v18 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v20 = *(v18 + 8);
  v21 = *v18;
  v22 = v20 & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1936B0EEC();
  return sub_19393C540();
}

unint64_t sub_1936B0EEC()
{
  result = qword_1EAE40620;
  if (!qword_1EAE40620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40620);
  }

  return result;
}

uint64_t sub_1936B0F40()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC080);
  __swift_project_value_buffer(v0, &qword_1EAEAC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "advertisedItemID";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "conversionID";
  v10[1] = 12;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "price";
  v13[1] = 5;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "quantity";
  v16[1] = 8;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "purchaseDate";
  v19[1] = 12;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "offerType";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_1936B11CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
        OUTLINED_FUNCTION_8_2(*(v10 + 28));
        sub_19393C230();
        goto LABEL_12;
      case 2:
        v13 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
        OUTLINED_FUNCTION_8_2(*(v13 + 32));
        sub_19393C200();
        goto LABEL_12;
      case 3:
        v12 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 36);
        goto LABEL_9;
      case 4:
        v12 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 40);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v12);
        sub_19393C190();
        goto LABEL_12;
      case 5:
        v11 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
        sub_1934976E4(v3 + *(v11 + 44), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_12;
      case 6:
        type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
        sub_1934982A8();
LABEL_12:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

int *sub_1936B1328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  result = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  v11 = result;
  if ((*(v6 + result[7] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_15_11();
    result = sub_19393C3E0();
    v5 = v4;
  }

  if (!v5)
  {
    if (*(v6 + v11[8] + 8))
    {
      v4 = 0;
      sub_19393C3C0();
    }

    if ((*(v6 + v11[9] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
    {
      if ((*(v6 + v11[10] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
      {
        result = sub_1936B149C(v6, a1, a2, a3);
        if (!v5)
        {
          v12 = v6 + v11[12];
          if ((*(v12 + 9) & 1) == 0)
          {
            v13 = *(v12 + 8);
            v14 = *v12;
            v15 = v13 & 1;
            return sub_193447324(&v14, 6, a2, &type metadata for AdAttributionKitOfferType, a3, &off_1F07DF660);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1936B149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  sub_1934DE90C(a1 + *(v14 + 44), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 5, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1936B1658(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE40628;

  return v1;
}

uint64_t sub_1936B169C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7CEC0 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_1EAE7CEC0);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEAC080);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t AdAttributionKitDeveloperReportedPurchase.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(v2);
  return sub_1934488AC(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AdAttributionKitDeveloperReportedPurchase(uint64_t a1)
{
  result = qword_1ED50C080;
  if (!qword_1ED50C080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(v2);
  return sub_1934488AC(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AdAttributionKitDeveloperReportedPurchase.conversionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 32));

  return v1;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.conversionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.purchaseDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(v2);
  return sub_1934488AC(v1 + *(v3 + 44), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AdAttributionKitDeveloperReportedPurchase.offerType.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(v2);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.offerType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AdAttributionKitDeveloperReportedPurchase(0);
  v6 = v1 + *(result + 48);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitDeveloperReportedPurchase.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936B1D7C(uint64_t a1)
{
  sub_19393CAB0();
  AdAttributionKitDeveloperReportedPurchase.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1936B1DBC()
{
  result = qword_1EAE40638;
  if (!qword_1EAE40638)
  {
    type metadata accessor for AdAttributionKitDeveloperReportedPurchase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40638);
  }

  return result;
}

uint64_t sub_1936B1E40(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19349D1FC(319, qword_1ED502C88, &type metadata for AdAttributionKitOfferType);
      v2 = v9;
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitSystemReportedPurchase.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1936B2160(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE40640, &qword_19397CFC0, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1936B2160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitSystemReportedPurchase.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE40640, &qword_19397CFC0, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1936B22F4(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936B22F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitSystemReportedPurchase.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  if (*sub_1936B4514() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v27 = v35;
      sub_1936B22F4(v12, v35);
      v28 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitSystemReportedPurchase.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936B2160(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40640, &qword_19397CFC0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE40640, &qword_19397CFC0);
  return v11;
}

id static AdAttributionKitSystemReportedPurchase.columns.getter()
{
  v122 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v12, v13, v14, v15, v0, 5, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v35);
  v36 = OUTLINED_FUNCTION_21_4();
  result = sub_19343D150(v36, 0xEC00000044496E6FLL, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v37 = swift_initStackObject();
  v45 = OUTLINED_FUNCTION_2_4(v37, v38, v39, v40, v41, v42, v43, v44, v117);
  OUTLINED_FUNCTION_5_10(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v55 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v55);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v56, v57, v58, v59, v0, 3, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v60 = swift_initStackObject();
  v68 = OUTLINED_FUNCTION_2_4(v60, v61, v62, v63, v64, v65, v66, v67, v118);
  OUTLINED_FUNCTION_5_10(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v78);
  OUTLINED_FUNCTION_13_43();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v79, v80, v81, v82, v0, 3, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v83 = swift_initStackObject();
  v91 = OUTLINED_FUNCTION_2_4(v83, v84, v85, v86, v87, v88, v89, v90, v119);
  OUTLINED_FUNCTION_5_10(v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v101 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v101);
  v102 = OUTLINED_FUNCTION_24_4();
  result = sub_19343D150(v102, 0xEC00000065746144, 3, 0, v0, 0, 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v103 = swift_initStackObject();
  v111 = OUTLINED_FUNCTION_2_4(v103, v104, v105, v106, v107, v108, v109, v110, v120);
  *(v111 + 16) = v121;
  *(v111 + 32) = sub_19393C850();
  v112 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_52();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v113, v114, v115, v116, v111, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v122;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1936B2AB8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = v4 == 0xD000000000000010 && 0x8000000193A29DA0 == v2;
  if (v16 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A29DA0) & 1) != 0)
  {
    v17 = v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 28);
    if (*(v17 + 8))
    {
      goto LABEL_7;
    }

    v40 = *v17;
LABEL_16:
    sub_1934948FC();
    goto LABEL_17;
  }

  v18 = OUTLINED_FUNCTION_21_4();
  v20 = v4 == v18 && v2 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0)
  {
    v21 = (v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 32));
    v22 = v21[1];
    if (!v22)
    {
      goto LABEL_7;
    }

    v40 = *v21;
    v41 = v22;
    goto LABEL_16;
  }

  v23 = v4 == 0x6563697270 && v2 == 0xE500000000000000;
  if (v23 || (OUTLINED_FUNCTION_59_0(0x6563697270, 0xE500000000000000) & 1) != 0)
  {
    v24 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 36);
LABEL_24:
    v25 = (v0 + v24);
    if (v25[1])
    {
      goto LABEL_7;
    }

    v40 = *v25;
    goto LABEL_16;
  }

  v26 = OUTLINED_FUNCTION_13_43();
  v27 = v4 == v26 && v2 == 0xE800000000000000;
  if (v27 || (OUTLINED_FUNCTION_59_0(v26, 0xE800000000000000) & 1) != 0)
  {
    v24 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 40);
    goto LABEL_24;
  }

  v28 = OUTLINED_FUNCTION_24_4();
  v30 = v4 == v28 && v2 == v29;
  if (v30 || (OUTLINED_FUNCTION_59_0(v28, v29) & 1) != 0)
  {
    v31 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
    sub_1934DE90C(v0 + *(v31 + 44), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      (*(v42 + 32))(v15, v9, v10);
      sub_1934948FC();
      (*(v42 + 8))(v15, v10);
      goto LABEL_17;
    }

    sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_7;
  }

  v32 = OUTLINED_FUNCTION_10_52();
  v34 = v4 == v32 && v2 == v33;
  if (!v34 && (OUTLINED_FUNCTION_59_0(v32, 0xE900000000000065) & 1) == 0)
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v38 = v37;
    *v37 = v4;
    v37[1] = v2;
    v37[5] = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 2);
    sub_1936B2160(v0, boxed_opaque_existential_1Tm);
    *(v38 + 48) = 1;
    swift_willThrow();

    goto LABEL_17;
  }

  v35 = v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 48);
  if ((*(v35 + 9) & 1) == 0)
  {
    v36 = *(v35 + 8);
    v40 = *v35;
    LOBYTE(v41) = v36 & 1;
    goto LABEL_16;
  }

LABEL_7:
  *v6 = 0u;
  v6[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitSystemReportedPurchase.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v12 = a1 + v2[7];
  j__OUTLINED_FUNCTION_8_11();
  v5 = (a1 + v2[8]);
  OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[9];
  j__OUTLINED_FUNCTION_8_11();
  v7 = a1 + v2[10];
  j__OUTLINED_FUNCTION_8_11();
  v8 = v2[11];
  sub_19349C79C();
  v9 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_1936B4514();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v12 = 0;
  v12[8] = 1;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[8] = 1;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v10);
  *v9 = 0;
  *(v9 + 4) = 256;
  return result;
}

BOOL static AdAttributionKitSystemReportedPurchase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  OUTLINED_FUNCTION_32_2();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v19)
    {
      return 0;
    }
  }

  v20 = v16[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = *v21 == *v23 && v22 == v24;
    if (!v25 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2();
  if (v27)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v28)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_32_2();
  if (v30)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v31)
    {
      return 0;
    }
  }

  v32 = v16[11];
  v33 = *(v13 + 48);
  sub_1934DE90C(a1 + v32, v15);
  sub_1934DE90C(a2 + v32, &v15[v33]);
  OUTLINED_FUNCTION_31(v15);
  if (v25)
  {
    OUTLINED_FUNCTION_31(&v15[v33]);
    if (v25)
    {
      sub_193442B60(v15, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_33;
    }

LABEL_30:
    sub_193442B60(v15, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v15, v12);
  OUTLINED_FUNCTION_31(&v15[v33]);
  if (v34)
  {
    (*(v6 + 8))(v12, v4);
    goto LABEL_30;
  }

  (*(v6 + 32))(v9, &v15[v33], v4);
  sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  v36 = sub_19393C550();
  v37 = *(v6 + 8);
  v37(v9, v4);
  v37(v12, v4);
  sub_193442B60(v15, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v38 = v16[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 9);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 9);
  if (v40)
  {
    return (v42 & 1) != 0;
  }

  v43 = *v41;
  v44 = *(v41 + 8);
  v45 = *(v39 + 8);
  v48 = *v39;
  v49 = v45;
  if (v42)
  {
    return 0;
  }

  v46 = v43;
  v47 = v44 & 1;
  sub_1936B0BE4();
  return (sub_19393C550() & 1) != 0;
}

uint64_t AdAttributionKitSystemReportedPurchase.hash(into:)(uint64_t a1)
{
  v2 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  v12 = (v1 + v11[7]);
  if (*(v12 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *v12;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  if (*(v1 + v11[8] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v1 + v11[9]);
  if (*(v14 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v15 = *v14;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v15);
  }

  v16 = (v1 + v11[10]);
  if (*(v16 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = *v16;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  sub_1934DE90C(v1 + v11[11], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v7, v10, v2);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v4 + 8))(v7, v2);
  }

  v18 = (v1 + v11[12]);
  if (*(v18 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v20 = *(v18 + 8);
  v21 = *v18;
  v22 = v20 & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1936B0EEC();
  return sub_19393C540();
}

uint64_t AdAttributionKitOfferType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

char *static AdAttributionKitOfferType.allCases.getter()
{
  v0 = sub_1936B39FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936B39FC(v13, v2 + 1, 1, v14);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936B39FC(v15, v2 + 2, 1, v16);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936B39FC(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1936B39FC(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t AdAttributionKitOfferType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0x746E756F63736944;
  if (*v0 != 1)
  {
    v1 = 0x6169725465657246;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t AdAttributionKitOfferType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 1701736270 && a2 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9(1701736270, 0xE400000000000000) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0x746E756F63736944 && a2 == 0xEA00000000006465;
  if (v11 || (OUTLINED_FUNCTION_0_9(0x746E756F63736944, 0xEA00000000006465) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 0x6169725465657246 && a2 == 0xE90000000000006CLL)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(0x6169725465657246, 0xE90000000000006CLL);

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1936B39FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40658, &qword_19397D070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936B3AFC()
{
  result = qword_1EAE40650;
  if (!qword_1EAE40650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40650);
  }

  return result;
}

uint64_t sub_1936B3B50()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAC098);
  __swift_project_value_buffer(v2, &qword_1EAEAC098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "advertisedItemID";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "conversionID";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 3;
  *v10 = "price";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 4;
  *v12 = "quantity";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v15 = 5;
  *v14 = "purchaseDate";
  *(v14 + 8) = 12;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v16 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v17 = 6;
  *v16 = "offerType";
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

void sub_1936B3DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
        OUTLINED_FUNCTION_8_2(*(v10 + 28));
        sub_19393C230();
        goto LABEL_12;
      case 2:
        v13 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
        OUTLINED_FUNCTION_8_2(*(v13 + 32));
        sub_19393C200();
        goto LABEL_12;
      case 3:
        v12 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 36);
        goto LABEL_9;
      case 4:
        v12 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 40);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v12);
        sub_19393C190();
        goto LABEL_12;
      case 5:
        v11 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
        sub_1934976E4(v3 + *(v11 + 44), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_12;
      case 6:
        type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
        sub_1934982A8();
LABEL_12:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

int *sub_1936B3F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  result = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  v11 = result;
  if ((*(v6 + result[7] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_15_11();
    result = sub_19393C3E0();
    v5 = v4;
  }

  if (!v5)
  {
    if (*(v6 + v11[8] + 8))
    {
      v4 = 0;
      sub_19393C3C0();
    }

    if ((*(v6 + v11[9] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
    {
      if ((*(v6 + v11[10] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
      {
        result = sub_1936B4090(v6, a1, a2, a3);
        if (!v5)
        {
          v12 = v6 + v11[12];
          if ((*(v12 + 9) & 1) == 0)
          {
            v13 = *(v12 + 8);
            v14 = *v12;
            v15 = v13 & 1;
            return sub_193447324(&v14, 6, a2, &type metadata for AdAttributionKitOfferType, a3, &off_1F07DF660);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1936B4090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  sub_1934DE90C(a1 + *(v14 + 44), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 5, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1936B424C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE40660;

  return v1;
}

uint64_t sub_1936B42E8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC0B0);
  __swift_project_value_buffer(v2, qword_1EAEAC0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "AdAttributionKitOfferTypeUnknown";
  *(v0 + 8) = 32;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "None";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "Discounted";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 3;
  *v12 = "FreeTrial";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

uint64_t AdAttributionKitSystemReportedPurchase.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitSystemReportedPurchase(v2);
  return sub_1934488AC(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AdAttributionKitSystemReportedPurchase(uint64_t a1)
{
  result = qword_1ED50C090;
  if (!qword_1ED50C090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitSystemReportedPurchase(v2);
  return sub_1934488AC(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AdAttributionKitSystemReportedPurchase.conversionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 32));

  return v1;
}

uint64_t AdAttributionKitSystemReportedPurchase.conversionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.purchaseDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitSystemReportedPurchase(v2);
  return sub_1934488AC(v1 + *(v3 + 44), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AdAttributionKitSystemReportedPurchase.offerType.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AdAttributionKitSystemReportedPurchase(v2);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.offerType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AdAttributionKitSystemReportedPurchase(0);
  v6 = v1 + *(result + 48);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitSystemReportedPurchase.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936B4B34(uint64_t a1)
{
  sub_19393CAB0();
  AdAttributionKitSystemReportedPurchase.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1936B4B74()
{
  result = qword_1EAE40670;
  if (!qword_1EAE40670)
  {
    type metadata accessor for AdAttributionKitSystemReportedPurchase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40670);
  }

  return result;
}

uint64_t sub_1936B4BD8@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitOfferType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1936B4C04()
{
  result = qword_1EAE40678;
  if (!qword_1EAE40678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE40680, &qword_19397D158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40678);
  }

  return result;
}

char *sub_1936B4C68@<X0>(char **a1@<X8>)
{
  result = static AdAttributionKitOfferType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936B4CA0()
{
  sub_19393CAB0();
  v0 = AdAttributionKitOfferType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936B4D58(uint64_t a1)
{
  sub_19393CAB0();
  v1 = AdAttributionKitOfferType.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t sub_1936B4DF4(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19349D1FC(319, qword_1ED502C88, &type metadata for AdAttributionKitOfferType);
      v2 = v9;
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1936B4FCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511958);
  v4 = __swift_project_value_buffer(v3, qword_1ED511958);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Link.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_54 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511958);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40688, &qword_19397D2B0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Link.attribute(_:)(void (*a1)(void))
{
  result = sub_1936B53F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B5430(void (*a1)(void))
{
  result = sub_1936B53F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B5498(uint64_t a1)
{
  result = sub_1936B54C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936B54C0()
{
  result = qword_1ED5031F8;
  if (!qword_1ED5031F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5031F8);
  }

  return result;
}

_BYTE *_s4LinkOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingLink.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingLink(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1936B579C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE40690, &qword_19397D320, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE40690, &qword_19397D320);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1936B579C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLink.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40690, &qword_19397D320, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1936B5940(v8, a3);
  }

  return result;
}

uint64_t sub_1936B5940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLink.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1936B75DC() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1936B5940(v11, v36);
      v29 = type metadata accessor for TextUnderstandingLink(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingLink.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingLink(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936B579C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40690, &qword_19397D320, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE40690, &qword_19397D320);
  return v11;
}

id static TextUnderstandingLink.columns.getter()
{
  v116 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v11, v12, v13, v14, v15, v16, 4);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_4(inited, v19, v20, v21, v22, v23, v24, v25, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v26[2].n128_u64[0] = sub_19393C850();
  v36 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v37, v38, v39, v40, v41, v42, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v43 = swift_initStackObject();
  v51 = OUTLINED_FUNCTION_2_4(v43, v44, v45, v46, v47, v48, v49, v50, v114);
  OUTLINED_FUNCTION_2_13(v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  v51[2].n128_u64[0] = sub_19393C850();
  v61 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_53();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v62, v63, v64, v65, v66, v67, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v68 = swift_initStackObject();
  v76 = OUTLINED_FUNCTION_2_4(v68, v69, v70, v71, v72, v73, v74, v75, v115);
  OUTLINED_FUNCTION_2_13(v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v76[2].n128_u64[0] = sub_19393C850();
  v86 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_38();
  OUTLINED_FUNCTION_11_40();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v87, v88, v89, v90, v91, v92, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v93 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v103 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
  v103[2].n128_u64[0] = sub_19393C850();
  v113 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000014, 0x8000000193A2D450, 1, 0, v103, 0, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v116;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *sub_1936B60D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, 0x8000000193A2B920) & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingLink(0) + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v26, (v3 + v8), sizeof(v26));
    sub_19365A03C(__dst, v28);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v28, v26, sizeof(v28));
    return sub_19365A098(v28);
  }

  v10 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0(7107189, 0xE300000000000000) & 1) != 0)
  {
    type metadata accessor for TextUnderstandingLink(0);
    sub_19393BD10();
    return sub_1934948FC();
  }

  v11 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink(0);
    v12 = result[9];
    goto LABEL_20;
  }

  v15 = OUTLINED_FUNCTION_10_53();
  v17 = a1 == v15 && a2 == v16;
  if (v17 || (OUTLINED_FUNCTION_59_0(v15, v16) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink(0);
    v12 = result[10];
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_11_40();
  v18 = OUTLINED_FUNCTION_12_38();
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink(0);
    v12 = result[11];
LABEL_20:
    v13 = (v3 + v12);
    v14 = *(v3 + v12 + 8);
    if (v14)
    {
      v28[0] = *v13;
      v28[1] = v14;
      return sub_1934948FC();
    }

    goto LABEL_40;
  }

  v21 = a1 == 0xD000000000000014 && 0x8000000193A2D450 == a2;
  if (v21 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, 0x8000000193A2D450) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink(0);
    v22 = v3 + result[12];
    if ((*(v22 + 8) & 1) == 0)
    {
      v28[0] = *v22;
      return sub_1934948FC();
    }

LABEL_40:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v24 = v23;
  *v23 = a1;
  v23[1] = a2;
  v23[5] = type metadata accessor for TextUnderstandingLink(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24 + 2);
  sub_1936B579C(v3, boxed_opaque_existential_1Tm);
  *(v24 + 48) = 1;
  swift_willThrow();
}

uint64_t TextUnderstandingLink.init()@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &__src[-v3];
  v5 = type metadata accessor for TextUnderstandingLink(0);
  v6 = v5[5];
  sub_19349C79C();
  v7 = &a1[v5[6]];
  sub_19344B5D8(v7);
  j__OUTLINED_FUNCTION_10_1();
  j__OUTLINED_FUNCTION_10_1();
  j__OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_8_11();
  *a1 = *sub_1936B75DC();
  sub_193442B60(&a1[v6], &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(&a1[v6], 1, 1, v8);
  sub_193442B60(v7, &qword_1EAE3AA00, &unk_19394F8F0);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(&a1[v5[7]], __src, 0x60uLL);
  sub_19393BD00();
  v9 = sub_19393BD10();
  result = __swift_getEnumTagSinglePayload(v4, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v5[8];
    v12 = &a1[v5[9]];
    v13 = &a1[v5[10]];
    v14 = &a1[v5[11]];
    v15 = &a1[v5[12]];
    (*(*(v9 - 8) + 32))(&a1[v11], v4, v9);

    *v12 = 0;
    *(v12 + 1) = 0;
    *v13 = 0;
    *(v13 + 1) = 0;
    *v14 = 0;
    *(v14 + 1) = 0;
    *v15 = 0;
    v15[8] = 1;
  }

  return result;
}

uint64_t static TextUnderstandingLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLink(0);
  v5 = *(v4 + 28);
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = *(v4 + 28);
  memcpy(v34, (a2 + v6), sizeof(v34));
  memcpy(v31, (a2 + v6), sizeof(v31));
  sub_19365A03C(__dst, v36);
  sub_19365A03C(v34, v36);
  sub_19365AB48();
  LOBYTE(v6) = sub_19393C550();
  memcpy(v35, v31, sizeof(v35));
  sub_19365A098(v35);
  memcpy(v36, __src, sizeof(v36));
  sub_19365A098(v36);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_19393BD10();
  sub_1936B691C(&qword_1EAE3F120, MEMORY[0x1E6968FC8]);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v8);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v14);
    v18 = v12 && v16 == v17;
    if (!v18 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (!v21)
  {
    if (!v19)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v20);
  v24 = v12 && v22 == v23;
  if (!v24 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v25 = *(v4 + 48);
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TextUnderstandingLink.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingLink(0);
  memcpy(v7, (v1 + v2[7]), sizeof(v7));
  sub_19365B174();
  sub_19393C540();
  sub_19393BD10();
  sub_1936B691C(&qword_1EAE3F128, MEMORY[0x1E6968FC0]);
  sub_19393C540();
  if (*(v1 + v2[9] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v2[10] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v2[11] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v3 = (v1 + v2[12]);
  if (*(v3 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v5 = *v3;
  sub_19393CAD0();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x193B18060](v6);
}

uint64_t sub_1936B691C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19393BD10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1936B6960()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC0C8);
  __swift_project_value_buffer(v0, qword_1EAEAC0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "url";
  v10[1] = 3;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "title";
  v13[1] = 5;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "senderHandle";
  v16[1] = 12;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "documentTitle";
  v19[1] = 13;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "documentTimeInterval";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_1936B6BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v31 - v15;
  v33 = (v9 + 40);
  v34 = v9 + 32;
  v16 = v3;
  v18 = v17;
  v35 = v7;
  v36 = v17;
  v32 = v3;
  while (2)
  {
    result = sub_19393C0E0();
    if (v6 || (v20 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        __src = 0u;
        memset(v40, 0, sizeof(v40));
        sub_193498018();
        v21 = v5;
        if (*(&__src + 1))
        {
          memcpy(&v37[1], v40, 0x50uLL);
          v37[0] = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v37);
        }

        v30 = *(type metadata accessor for TextUnderstandingLink(0) + 28);
        memcpy(v38, (v16 + v30), sizeof(v38));
        sub_19365A098(v38);
        memcpy((v16 + v30), v37, 0x60uLL);
        v5 = v21;
        v7 = v35;
        v18 = v36;
        continue;
      case 2:
        v5 = v41;
        __swift_storeEnumTagSinglePayload(v41, 1, 1, v7);
        sub_19349780C(v5);
        sub_1936B7008(v5, v18);
        OUTLINED_FUNCTION_4_60();
        if (!v23)
        {
          sub_193442B60(v5, &qword_1EAE3ACA0, &qword_193972420);
          v27 = OUTLINED_FUNCTION_3_65();
          v28(v27);
          goto LABEL_18;
        }

        sub_19393BD00();
        result = OUTLINED_FUNCTION_4_60();
        if (!v23)
        {
          sub_193442B60(v41, &qword_1EAE3ACA0, &qword_193972420);
          v24 = OUTLINED_FUNCTION_3_65();
          v25(v24);
          v18 = v36;
          OUTLINED_FUNCTION_4_60();
          if (!v23)
          {
            sub_193442B60(v18, &qword_1EAE3ACA0, &qword_193972420);
          }

LABEL_18:
          v29 = type metadata accessor for TextUnderstandingLink(0);
          v16 = v32;
          (*v33)(v32 + *(v29 + 32), v5, v7);
          continue;
        }

        __break(1u);
        return result;
      case 3:
        v22 = *(type metadata accessor for TextUnderstandingLink(0) + 36);
        goto LABEL_10;
      case 4:
        v22 = *(type metadata accessor for TextUnderstandingLink(0) + 40);
        goto LABEL_10;
      case 5:
        v22 = *(type metadata accessor for TextUnderstandingLink(0) + 44);
LABEL_10:
        OUTLINED_FUNCTION_8_46(v22);
        sub_19393C200();
        goto LABEL_17;
      case 6:
        v26 = type metadata accessor for TextUnderstandingLink(0);
        OUTLINED_FUNCTION_8_46(*(v26 + 48));
        sub_19393C1E0();
LABEL_17:
        v6 = 0;
        continue;
      default:
        continue;
    }
  }
}

uint64_t sub_1936B7008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936B7078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for TextUnderstandingLink(0);
  v10 = v9[7];
  memcpy(__dst, (v3 + v10), sizeof(__dst));
  memcpy(v21, (v3 + v10), sizeof(v21));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v11 = sub_19393C550();
  memcpy(v23, __src, sizeof(v23));
  sub_19365A098(v23);
  memcpy(v24, v21, sizeof(v24));
  result = sub_19365A098(v24);
  if (v11)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    memcpy(v21, (v5 + v10), sizeof(v21));
    memcpy(__src, (v5 + v10), sizeof(__src));
    sub_19365A03C(v21, v19);
    sub_193447600();
    if (v4)
    {
      memcpy(v19, __src, sizeof(v19));
      return sub_19365A098(v19);
    }

    memcpy(v19, __src, sizeof(v19));
    sub_19365A098(v19);
  }

  result = sub_1936B72C0(v5, a1, a2, a3);
  v13 = (v5 + v9[9]);
  v14 = v13[1];
  if (v14)
  {
    result = OUTLINED_FUNCTION_4_7(*v13, v14, 3);
  }

  v15 = (v5 + v9[10]);
  v16 = v15[1];
  if (v16)
  {
    result = OUTLINED_FUNCTION_4_7(*v15, v16, 4);
  }

  v17 = (v5 + v9[11]);
  v18 = v17[1];
  if (v18)
  {
    result = OUTLINED_FUNCTION_4_7(*v17, v18, 5);
  }

  if ((*(v5 + v9[12] + 8) & 1) == 0)
  {
    return sub_19393C3B0();
  }

  return result;
}

uint64_t sub_1936B72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17[0] = a3;
  v17[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  v13 = *(type metadata accessor for TextUnderstandingLink(0) + 32);
  (*(v11 + 16))(v4, a1 + v13, v9);
  sub_19393BD00();
  result = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1936B7584();
    v15 = sub_19393C550();
    v16 = *(v11 + 8);
    v16(v4, v9);
    result = v16(v8, v9);
    if ((v15 & 1) == 0)
    {
      return sub_19349881C(a1 + v13, 2, v17[0], v18);
    }
  }

  return result;
}

uint64_t sub_1936B7480(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE406A0;

  return v1;
}

uint64_t sub_1936B74C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7D3E0 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EAE7D3E0);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAC0C8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_1936B7584()
{
  result = qword_1EAE3F120;
  if (!qword_1EAE3F120)
  {
    sub_19393BD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F120);
  }

  return result;
}

uint64_t TextUnderstandingLink.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingLink(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingLink(uint64_t a1)
{
  result = qword_1ED50C2B0;
  if (!qword_1ED50C2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingLink.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingLink(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingLink.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingLink(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingLink.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_66() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingLink.url.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingLink(v2) + 32);
  v4 = sub_19393BD10();
  v5 = *(*(v4 - 8) + 16);

  return v5(v0, v1 + v3, v4);
}

uint64_t TextUnderstandingLink.url.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_66() + 32);
  sub_19393BD10();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t TextUnderstandingLink.title.getter()
{
  type metadata accessor for TextUnderstandingLink(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLink.title.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_52() + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingLink.senderHandle.getter()
{
  type metadata accessor for TextUnderstandingLink(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLink.senderHandle.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_52() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingLink.documentTitle.getter()
{
  type metadata accessor for TextUnderstandingLink(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLink.documentTitle.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_52() + 44));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingLink.documentTimeInterval.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextUnderstandingLink(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextUnderstandingLink.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingLink.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936B7CBC(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingLink.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1936B7CFC()
{
  result = qword_1EAE406B0;
  if (!qword_1EAE406B0)
  {
    type metadata accessor for TextUnderstandingLink(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406B0);
  }

  return result;
}

void sub_1936B7D80(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19393BD10();
      if (v3 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506690, MEMORY[0x1E69E63B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *_s12DeviceExpertOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936B7F54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5119B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5119B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.DeviceExpert.Troubleshooting.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:100000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_55 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5119B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406B8, &qword_19397D478);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.DeviceExpert.Troubleshooting.attribute(_:)(void (*a1)(void))
{
  result = sub_1936B835C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B83A4(void (*a1)(void))
{
  result = sub_1936B835C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B83D4(uint64_t a1)
{
  result = sub_1936B83FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936B83FC()
{
  result = qword_1EAE3A7E0;
  if (!qword_1EAE3A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7E0);
  }

  return result;
}

_BYTE *_s15TroubleshootingOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceExpertTroubleshooting.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1936B8704(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE406C0, &qword_19397D4F0, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE406C0, &qword_19397D4F0);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1936B8704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceExpertTroubleshooting.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE406C0, &qword_19397D4F0, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1936B88A8(v8, a3);
  }

  return result;
}

uint64_t sub_1936B88A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceExpertTroubleshooting.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1936BC5D0() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1936B88A8(v11, v36);
      v29 = type metadata accessor for DeviceExpertTroubleshooting(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t DeviceExpertTroubleshooting.serialize()()
{
  v1 = type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936B8704(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE406C0, &qword_19397D4F0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE406C0, &qword_19397D4F0);
  return v11;
}

id static DeviceExpertTroubleshooting.columns.getter()
{
  v111 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v12 = OUTLINED_FUNCTION_15_10();
  result = OUTLINED_FUNCTION_3_5(v12, v13);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v23 = OUTLINED_FUNCTION_2_4(inited, v16, v17, v18, v19, v20, v21, v22, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v33 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v33);
  result = OUTLINED_FUNCTION_3_5(1885697139, 0xE400000000000000);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v34 = swift_initStackObject();
  v42 = OUTLINED_FUNCTION_2_4(v34, v35, v36, v37, v38, v39, v40, v41, v106);
  OUTLINED_FUNCTION_5_10(v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v52);
  result = OUTLINED_FUNCTION_3_5(0x737574617473, 0xE600000000000000);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v53 = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_2_4(v53, v54, v55, v56, v57, v58, v59, v60, v107);
  OUTLINED_FUNCTION_5_10(v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v71 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v71);
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v72, v73, v74, v75, v0, 2, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v76 = swift_initStackObject();
  v84 = OUTLINED_FUNCTION_2_4(v76, v77, v78, v79, v80, v81, v82, v83, v108);
  OUTLINED_FUNCTION_5_10(v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v94 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v94);
  v95 = OUTLINED_FUNCTION_22_34();
  result = OUTLINED_FUNCTION_3_5(v95, 0xE700000000000000);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v96 = swift_initStackObject();
  v104 = OUTLINED_FUNCTION_2_4(v96, v97, v98, v99, v100, v101, v102, v103, v109);
  *(v104 + 16) = v110;
  *(v104 + 32) = sub_19393C850();
  v105 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(2003790950, 0xE400000000000000, 2, 0, v104, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v111;
  }

LABEL_13:
  __break(1u);
  return result;
}

int *sub_1936B9018()
{
  OUTLINED_FUNCTION_21_37();
  v5 = v2 == v4 && v3 == 0xE400000000000000;
  if (v5 || (v6 = v3, v7 = v2, v8 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_59_0(v8, v9) & 1) != 0))
  {
    result = type metadata accessor for DeviceExpertTroubleshooting(0);
    v11 = result[7];
LABEL_7:
    if (*(v0 + v11 + 8))
    {
      return sub_1934948FC();
    }

    *v1 = 0u;
    *(v1 + 16) = 0u;
    return result;
  }

  v12 = v7 == 1885697139 && v6 == 0xE400000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0(1885697139, 0xE400000000000000) & 1) != 0)
  {
    result = type metadata accessor for DeviceExpertTroubleshooting(0);
    v11 = result[8];
    goto LABEL_7;
  }

  v13 = v7 == 0x737574617473 && v6 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_59_0(0x737574617473, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for DeviceExpertTroubleshooting(0);
    v11 = result[9];
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_112_2();
  v15 = v7 == v14 && v6 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0(v14, 0xE700000000000000) & 1) != 0 || ((v16 = OUTLINED_FUNCTION_22_34(), v7 == v16) ? (v17 = v6 == 0xE700000000000000) : (v17 = 0), v17 || (OUTLINED_FUNCTION_59_0(v16, 0xE700000000000000) & 1) != 0 || (v7 == 2003790950 ? (v18 = v6 == 0xE400000000000000) : (v18 = 0), v18 || (OUTLINED_FUNCTION_59_0(2003790950, 0xE400000000000000) & 1) != 0)))
  {
    type metadata accessor for DeviceExpertTroubleshooting(0);
    return sub_1934948FC();
  }

  v19 = v7 == 0x7463617265746E69 && v6 == 0xEB000000006E6F69;
  if (v19 || (OUTLINED_FUNCTION_59_0(0x7463617265746E69, 0xEB000000006E6F69) & 1) != 0)
  {
    type metadata accessor for DeviceExpertTroubleshooting(0);

    sub_193494798(&type metadata for DeviceExpertTroubleshooting.Interaction, &off_1F07DFB28, v1);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v21 = v20;
    *v20 = v7;
    v20[1] = v6;
    v20[5] = type metadata accessor for DeviceExpertTroubleshooting(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
    sub_1936B8704(v0, boxed_opaque_existential_1Tm);
    *(v21 + 48) = 1;
    swift_willThrow();
  }
}

id sub_1936B92E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_5(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
  {
    if (!(v7 >> 62))
    {
      v9 = &type metadata for DeviceExpertTroubleshooting.Action;
      v10 = &off_1F07DFB08;
      return sub_193494798(v9, v10, a3);
    }
  }

  else
  {
    v12 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
    if (v12 || (OUTLINED_FUNCTION_5_5(0x656C6369747261, 0xE700000000000000) & 1) != 0)
    {
      if (v7 >> 62 == 1)
      {
        OUTLINED_FUNCTION_5_60();
        v9 = &type metadata for DeviceExpertTroubleshooting.Article;
        v10 = &off_1F07DFAF8;
        return sub_193494798(v9, v10, a3);
      }
    }

    else
    {
      v13 = a1 == 0x676E6974746573 && a2 == 0xE700000000000000;
      if (!v13 && (OUTLINED_FUNCTION_5_5(0x676E6974746573, 0xE700000000000000) & 1) == 0)
      {
        if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL)
        {
          if (v7 >> 62 != 3)
          {
            goto LABEL_31;
          }
        }

        else if ((OUTLINED_FUNCTION_5_5(0x6F697463656C6573, 0xE90000000000006ELL) & 1) == 0 || v7 >> 62 != 3)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_5_60();
        v9 = &type metadata for DeviceExpertTroubleshooting.UserSelection;
        v10 = &off_1F07DFB18;
        return sub_193494798(v9, v10, a3);
      }

      if (v7 >> 62 == 2)
      {
        OUTLINED_FUNCTION_5_60();
        v9 = &type metadata for DeviceExpertTroubleshooting.Setting;
        v10 = &off_1F07DFAE8;
        return sub_193494798(v9, v10, a3);
      }
    }
  }

LABEL_31:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 40) = &type metadata for DeviceExpertTroubleshooting.Entity;
  *(v15 + 16) = v7;
  *(v15 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936B9A0C()
{
  OUTLINED_FUNCTION_21_37();
  v4 = *v0;
  v5 = *(v0 + 8);
  if (v2 == v6 && v3 == 0xE400000000000000)
  {
    return sub_1934948FC();
  }

  v8 = v3;
  v9 = v2;
  v10 = v0[2];
  OUTLINED_FUNCTION_15_10();
  if (sub_19393CA30())
  {
    return sub_1934948FC();
  }

  v12 = v9 == 0x797469746E65 && v8 == 0xE600000000000000;
  if (v12 || (sub_19393CA30() & 1) != 0)
  {

    sub_193494798(&type metadata for DeviceExpertTroubleshooting.Entity, &off_1F07DFAD8, v1);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v13 = v9;
    *(v13 + 8) = v8;
    *(v13 + 16) = v4;
    *(v13 + 24) = v5;
    *(v13 + 32) = v10;
    *(v13 + 40) = &type metadata for DeviceExpertTroubleshooting.Interaction;
    *(v13 + 48) = 1;
    swift_willThrow();
  }
}

void DeviceExpertTroubleshooting.init()(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1936BC5D0();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[10]) = 0;
  v9 = (a1 + v2[11]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + v2[12]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  DeviceExpertTroubleshooting.Interaction.init()(&v14);
  v11 = v15;
  v12 = v16;
  v13 = a1 + v2[13];
  *v13 = v14;
  v13[8] = v11;
  *(v13 + 2) = v12;
}

uint64_t static DeviceExpertTroubleshooting.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_2_5();
  if (v7)
  {
    if (!v5)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_5(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v5)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_2_5();
  if (v13)
  {
    if (!v11)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_5(v12);
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v11)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_2_5();
  if (!v19)
  {
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_40:
    v29 = 0;
    return v29 & 1;
  }

  if (!v17)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_5(v18);
  v22 = v10 && v20 == v21;
  if (!v22 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_28:
  if (*(a1 + v4[10]) != *(a2 + v4[10]))
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1_9(v4[11]);
  v25 = v10 && v23 == v24;
  if (!v25 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1_9(v4[12]);
  v28 = v10 && v26 == v27;
  if (!v28 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1936B9EC0();

  v29 = sub_19393C550();

  return v29 & 1;
}

unint64_t sub_1936B9EC0()
{
  result = qword_1EAE406D0;
  if (!qword_1EAE406D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406D0);
  }

  return result;
}

uint64_t DeviceExpertTroubleshooting.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting(0);
  if (*(v1 + v2[7] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v1 + v2[8] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v1 + v2[9] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAE0();
  sub_19393C640();
  sub_19393C640();
  sub_1936BA048();
  return sub_19393C540();
}

unint64_t sub_1936BA048()
{
  result = qword_1EAE406D8;
  if (!qword_1EAE406D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406D8);
  }

  return result;
}

uint64_t DeviceExpertTroubleshooting.ActionType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.ActionType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static DeviceExpertTroubleshooting.ActionType.allCases.getter()
{
  v0 = sub_1936BA548(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_9_62(v1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_1936BA548((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v0 = OUTLINED_FUNCTION_9_62(v1, v0);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t DeviceExpertTroubleshooting.ActionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return 0x6465747563657845;
  }

  return 0x6574736567677553;
}

uint64_t DeviceExpertTroubleshooting.ActionType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x6574736567677553 && a2 == 0xE900000000000064;
    if (v10 || (OUTLINED_FUNCTION_0_9(0x6574736567677553, 0xE900000000000064) & 1) != 0)
    {

      v8 = 0;
    }

    else
    {
      if (a1 != 0x6465747563657845 || a2 != 0xE800000000000000)
      {
        v9 = OUTLINED_FUNCTION_0_9(0x6465747563657845, 0xE800000000000000);

        v8 = v9 & 1;
        goto LABEL_14;
      }

      v8 = 1;
    }

    v9 = 1;
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t static DeviceExpertTroubleshooting.Entity.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v2 >> 62 != 1)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_89();

      v41 = OUTLINED_FUNCTION_90_0(v33, v34, v35, v36, v37, v38, v39, v40, v43, v45, v46, v48, v49, v51, v53);
      v23 = static DeviceExpertTroubleshooting.Article.== infix(_:_:)(v41);
      goto LABEL_10;
    case 2uLL:
      if (v2 >> 62 != 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_89();

      v22 = OUTLINED_FUNCTION_90_0(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, v46, v48, v49, v51, v53);
      v23 = static DeviceExpertTroubleshooting.Setting.== infix(_:_:)(v22);
      goto LABEL_10;
    case 3uLL:
      if (v2 >> 62 != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_89();

      v32 = OUTLINED_FUNCTION_90_0(v24, v25, v26, v27, v28, v29, v30, v31, v43, v45, v46, v48, v49, v51, v53);
      v23 = static DeviceExpertTroubleshooting.UserSelection.== infix(_:_:)(v32);
LABEL_10:
      v13 = v23;

      goto LABEL_11;
    default:
      if (v2 >> 62)
      {
LABEL_12:
        v13 = 0;
      }

      else
      {
        v54 = *(*a1 + 16);
        v44 = *(v2 + 16);
        v47 = *(v2 + 32);
        v50 = *(v2 + 48);
        v52 = *(v2 + 56);

        v11 = OUTLINED_FUNCTION_90_0(v3, v4, v5, v6, v7, v8, v9, v10, v44, *(&v44 + 1), v47, *(&v47 + 1), v50, v52, v54);
        v13 = static DeviceExpertTroubleshooting.Action.== infix(_:_:)(v11, v12);

LABEL_11:
      }

      return v13 & 1;
  }
}

uint64_t DeviceExpertTroubleshooting.Entity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  switch(*v6 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_1_66(v7);
      sub_1936BA6EC();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_1_66(v7);
      sub_1936BA698();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_1_66(v7);
      sub_1936BA644();
      break;
    default:
      sub_1936BA740();
      break;
  }

  return sub_19393C540();
}

char *sub_1936BA548(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40708, &qword_19397D600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936BA644()
{
  result = qword_1EAE406E0;
  if (!qword_1EAE406E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406E0);
  }

  return result;
}

unint64_t sub_1936BA698()
{
  result = qword_1EAE406E8;
  if (!qword_1EAE406E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406E8);
  }

  return result;
}

unint64_t sub_1936BA6EC()
{
  result = qword_1EAE406F0;
  if (!qword_1EAE406F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406F0);
  }

  return result;
}

unint64_t sub_1936BA740()
{
  result = qword_1EAE406F8;
  if (!qword_1EAE406F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406F8);
  }

  return result;
}

unint64_t sub_1936BA798()
{
  result = qword_1EAE40700;
  if (!qword_1EAE40700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40700);
  }

  return result;
}

void sub_1936BA7EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC0E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v22, xmmword_193952700);
  *v0 = "type";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  v9 = OUTLINED_FUNCTION_16_6(v7, "step");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 3;
  *v10 = "status";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 4;
  v14 = OUTLINED_FUNCTION_16_6(v12, "version");
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v16 = 5;
  v17 = OUTLINED_FUNCTION_16_6(v15, "session");
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v19 = 6;
  *v18 = "flow";
  *(v18 + 8) = 4;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v20 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v21 = 7;
  OUTLINED_FUNCTION_36_5(v20, "interaction");
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936BAA3C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        type metadata accessor for DeviceExpertTroubleshooting(0);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 4:
        LODWORD(v16) = 0;
        BYTE4(v16) = 1;
        OUTLINED_FUNCTION_113();
        sub_19393C170();
        if (BYTE4(v16))
        {
          v7 = 0;
        }

        else
        {
          v7 = v16;
        }

        *(v1 + *(type metadata accessor for DeviceExpertTroubleshooting(0) + 40)) = v7;
        break;
      case 5:
        v16 = 0;
        v17 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        if (v17)
        {
          v4 = v16;
        }

        else
        {
          v4 = 0;
        }

        if (v17)
        {
          v5 = v17;
        }

        else
        {
          v5 = 0xE000000000000000;
        }

        v6 = *(type metadata accessor for DeviceExpertTroubleshooting(0) + 44);
        goto LABEL_24;
      case 6:
        v16 = 0;
        v17 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        if (v17)
        {
          v4 = v16;
        }

        else
        {
          v4 = 0;
        }

        if (v17)
        {
          v5 = v17;
        }

        else
        {
          v5 = 0xE000000000000000;
        }

        v6 = *(type metadata accessor for DeviceExpertTroubleshooting(0) + 48);
LABEL_24:
        v8 = (v1 + v6);

        *v8 = v4;
        v8[1] = v5;
        break;
      case 7:
        v16 = 0;
        v17 = 0;
        v18 = 0xF000000000000007;
        sub_193498018();
        v9 = v18;
        if ((~v18 & 0xF000000000000007) != 0)
        {
          v10 = v16;
          v11 = v17;

          sub_1936BACA0(v10, v11, v9);
        }

        else
        {
          DeviceExpertTroubleshooting.Interaction.init()(&v13);
          sub_1936BACA0(v16, v17, v18);
          v10 = v13;
          LOBYTE(v11) = v14;
          v9 = v15;
        }

        v12 = v1 + *(type metadata accessor for DeviceExpertTroubleshooting(0) + 52);

        *v12 = v10;
        *(v12 + 8) = v11 & 1;
        *(v12 + 16) = v9;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936BACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

int *sub_1936BACB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for DeviceExpertTroubleshooting(0);
  v7 = result;
  v8 = (v3 + result[7]);
  v9 = v8[1];
  if (v9)
  {
    result = OUTLINED_FUNCTION_2_10(*v8, v9, 1);
    v5 = v4;
  }

  if (!v5)
  {
    v10 = (v3 + v7[8]);
    v11 = v10[1];
    if (!v11 || (result = OUTLINED_FUNCTION_2_10(*v10, v11, 2), !v4))
    {
      v12 = (v3 + v7[9]);
      v13 = v12[1];
      if (!v13 || (result = OUTLINED_FUNCTION_2_10(*v12, v13, 3), !v4))
      {
        if (!*(v3 + v7[10]) || (OUTLINED_FUNCTION_32_20(), result = sub_19393C350(), !v4))
        {
          v14 = (v3 + v7[11]);
          v15 = !*v14 && v14[1] == 0xE000000000000000;
          if (v15 || (v16 = OUTLINED_FUNCTION_71_15(), (OUTLINED_FUNCTION_272(v16, v17) & 1) != 0) || (v18 = OUTLINED_FUNCTION_71_15(), result = OUTLINED_FUNCTION_2_10(v18, v19, 5), !v4))
          {
            v20 = (v3 + v7[12]);
            if (*v20)
            {
              v21 = 0;
            }

            else
            {
              v21 = v20[1] == 0xE000000000000000;
            }

            if (v21 || (v22 = OUTLINED_FUNCTION_71_15(), (OUTLINED_FUNCTION_272(v22, v23) & 1) != 0) || (v24 = OUTLINED_FUNCTION_71_15(), result = OUTLINED_FUNCTION_2_10(v24, v25, 6), !v4))
            {
              OUTLINED_FUNCTION_45_24();
              DeviceExpertTroubleshooting.Interaction.init()(&v27);
              sub_1936B9EC0();
              v26 = sub_19393C550();

              if ((v26 & 1) == 0)
              {
                OUTLINED_FUNCTION_45_24();
                OUTLINED_FUNCTION_32_20();
                sub_193447600();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1936BAF44()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC0F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v5 = OUTLINED_FUNCTION_35_28();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "Suggested";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  OUTLINED_FUNCTION_36_5(v10, "Executed");
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936BB100(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_133();
  v2 = swift_allocObject();
  DeviceExpertTroubleshooting.Action.init()((v2 + 16));
  *a1 = v2;
}

void sub_1936BB140()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC110);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  *v0 = "action";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  v10 = OUTLINED_FUNCTION_16_6(v8, "article");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 3;
  v13 = OUTLINED_FUNCTION_16_6(v11, "setting");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 4;
  OUTLINED_FUNCTION_36_5(v14, "selection");
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936BB300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v38 = v3;
  while (1)
  {
    v6 = sub_19393C0E0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        sub_193498018();
        OUTLINED_FUNCTION_108();
        object = *(&v35 + 1);
        if (*(&v35 + 1))
        {
          v10 = *(&v37 + 1);
          v9 = v37;
          v11 = &v35;
          v13 = *(&v36 + 1);
          countAndFlagsBits = v36;
        }

        else
        {
          v11 = &v34;
          DeviceExpertTroubleshooting.Action.init()(&v34);
          object = v34.actionId._object;
          countAndFlagsBits = v34.url._countAndFlagsBits;
          v13 = v34.url._object;
          v9 = v34.title._countAndFlagsBits;
          v10 = v34.title._object;
        }

        v30 = v11->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_133();
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = object;
        v31[4] = countAndFlagsBits;
        v31[5] = v13;
        v31[6] = v9;
        v31[7] = v10;
        v5 = v38;
        *v38 = v31;
        break;
      case 2:
        OUTLINED_FUNCTION_16_31();
        sub_193498018();
        OUTLINED_FUNCTION_108();
        v22 = *(&v35 + 1);
        if (*(&v35 + 1))
        {
          v24 = *(&v36 + 1);
          v23 = v36;
          v25 = &v35;
        }

        else
        {
          v25 = &v34;
          DeviceExpertTroubleshooting.Article.init()();
          v22 = v34.actionId._object;
          v23 = v34.url._countAndFlagsBits;
          v24 = v34.url._object;
        }

        v32 = v25->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_95();
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        *(v33 + 24) = v22;
        *(v33 + 32) = v23;
        *(v33 + 40) = v24;
        *v5 = v33 | 0x4000000000000000;
        break;
      case 3:
        OUTLINED_FUNCTION_16_31();
        sub_193498018();
        OUTLINED_FUNCTION_108();
        v14 = *(&v35 + 1);
        if (*(&v35 + 1))
        {
          v16 = *(&v36 + 1);
          v15 = v36;
          v17 = &v35;
        }

        else
        {
          v17 = &v34;
          DeviceExpertTroubleshooting.Setting.init()();
          v14 = v34.actionId._object;
          v15 = v34.url._countAndFlagsBits;
          v16 = v34.url._object;
        }

        v26 = v17->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_95();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v14;
        *(v27 + 32) = v15;
        *(v27 + 40) = v16;
        *v5 = v27 | 0x8000000000000000;
        break;
      case 4:
        OUTLINED_FUNCTION_16_31();
        sub_193498018();
        OUTLINED_FUNCTION_108();
        v18 = *(&v35 + 1);
        if (*(&v35 + 1))
        {
          v20 = *(&v36 + 1);
          v19 = v36;
          v21 = &v35;
        }

        else
        {
          v21 = &v34;
          DeviceExpertTroubleshooting.UserSelection.init()();
          v18 = v34.actionId._object;
          v19 = v34.url._countAndFlagsBits;
          v20 = v34.url._object;
        }

        v28 = v21->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_95();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = v18;
        *(v29 + 32) = v19;
        *(v29 + 40) = v20;
        *v5 = v29 | 0xC000000000000000;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936BB5DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1936BB62C()
{
  switch(*v0 >> 62)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_9_63();
      break;
    default:
      break;
  }

  sub_193447600();
}

uint64_t sub_1936BB7EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_40_25();
  v9 = *(v8 + 72);
  OUTLINED_FUNCTION_30_3();
  v12 = v11 & ~v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19394FBE0;
  v14 = (v13 + v12);
  v15 = v13 + v12 + *(v7 + 56);
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v9 + *(v7 + 56);
  *(v14 + v9) = 2;
  *v20 = a4;
  *(v20 + 1) = a5;
  v20[16] = 2;
  v19();
  return sub_19393C410();
}

void sub_1936BB9C4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC158);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v5 = OUTLINED_FUNCTION_35_28();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "actionId";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "url";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 3;
  OUTLINED_FUNCTION_36_5(v10, "title");
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}