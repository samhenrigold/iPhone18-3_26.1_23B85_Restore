uint64_t Kgqsapipb_NEROutput.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_NEROutput(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_NEROutput.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_NEROutput(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_NEROutput.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Kgqsapipb_NEROutput(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E35C1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB9F8);
  __swift_project_value_buffer(v0, qword_1EBABB9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "begin";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_TokenPair.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_TokenPair.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      type metadata accessor for Kgqsapipb_TokenPair(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_TokenPair.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_TokenPair(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_17();
  v4 = sub_1B8CD1D48(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B8E3602C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D48(&qword_1EBABBAF8, type metadata accessor for Kgqsapipb_TokenPair, protocol conformance descriptor for Kgqsapipb_TokenPair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E360AC(uint64_t a1)
{
  v2 = sub_1B8CD1D48(&qword_1EBABBA58, type metadata accessor for Kgqsapipb_TokenPair, protocol conformance descriptor for Kgqsapipb_TokenPair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E3611C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D48(&qword_1EBABBA58, type metadata accessor for Kgqsapipb_TokenPair, protocol conformance descriptor for Kgqsapipb_TokenPair);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E361B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBA10);
  __swift_project_value_buffer(v0, qword_1EBABBA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "lstmScores";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_LSTMScoresArray.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C4C0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_LSTMScoresArray.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C640(), !v1))
  {
    type metadata accessor for Kgqsapipb_LSTMScoresArray(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_LSTMScoresArray.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_7(a1);
  if ((sub_1B8D7BE5C(v1, v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_LSTMScoresArray(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_17();
  v5 = sub_1B8CD1D48(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8E36528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D48(&qword_1EBABBAF0, type metadata accessor for Kgqsapipb_LSTMScoresArray, protocol conformance descriptor for Kgqsapipb_LSTMScoresArray);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E365A8(uint64_t a1)
{
  v2 = sub_1B8CD1D48(&qword_1EBABBA50, type metadata accessor for Kgqsapipb_LSTMScoresArray, protocol conformance descriptor for Kgqsapipb_LSTMScoresArray);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E36618(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D48(&qword_1EBABBA50, type metadata accessor for Kgqsapipb_LSTMScoresArray, protocol conformance descriptor for Kgqsapipb_LSTMScoresArray);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E366A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBA28);
  __swift_project_value_buffer(v0, qword_1EBABBA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lstmScoresArray";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tokenPairs";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "modelVersion";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_NEROutput.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8E369F8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E36958(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8E36958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_LSTMScoresArray(0);
  sub_1B8CD1D48(&qword_1EBABBA50, type metadata accessor for Kgqsapipb_LSTMScoresArray, protocol conformance descriptor for Kgqsapipb_LSTMScoresArray);
  return sub_1B964C570();
}

uint64_t sub_1B8E369F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_TokenPair(0);
  sub_1B8CD1D48(&qword_1EBABBA58, type metadata accessor for Kgqsapipb_TokenPair, protocol conformance descriptor for Kgqsapipb_TokenPair);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_NEROutput.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v1;
  if (!*(v4 + 16) || (type metadata accessor for Kgqsapipb_LSTMScoresArray(0), v5 = sub_1B8CD1D48(&qword_1EBABBA50, type metadata accessor for Kgqsapipb_LSTMScoresArray, protocol conformance descriptor for Kgqsapipb_LSTMScoresArray), result = OUTLINED_FUNCTION_11_9(v4, 1, v6, v5), (v0 = v2) == 0))
  {
    v8 = v3[1];
    if (!*(v8 + 16) || (type metadata accessor for Kgqsapipb_TokenPair(0), v9 = sub_1B8CD1D48(&qword_1EBABBA58, type metadata accessor for Kgqsapipb_TokenPair, protocol conformance descriptor for Kgqsapipb_TokenPair), result = OUTLINED_FUNCTION_11_9(v8, 2, v10, v9), (v0 = v2) == 0))
    {
      v11 = v3[3];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_1B964C700(), !v0))
      {
        type metadata accessor for Kgqsapipb_NEROutput(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_NEROutput.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_14_7(a1);
  sub_1B8D7D3E0(v3, v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7D5C0(v2[1], v1[1]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_NEROutput(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_17();
  v10 = sub_1B8CD1D48(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8E36CDC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD1D48(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E36DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D48(&qword_1EBABBAE8, type metadata accessor for Kgqsapipb_NEROutput, protocol conformance descriptor for Kgqsapipb_NEROutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E36E40(uint64_t a1)
{
  v2 = sub_1B8CD1D48(&qword_1EBABBA90, type metadata accessor for Kgqsapipb_NEROutput, protocol conformance descriptor for Kgqsapipb_NEROutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E36EB0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D48(&qword_1EBABBA90, type metadata accessor for Kgqsapipb_NEROutput, protocol conformance descriptor for Kgqsapipb_NEROutput);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E372B8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E3735C(uint64_t a1)
{
  sub_1B8E373E0();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E373E0()
{
  if (!qword_1EBABBAC0)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABBAC0);
    }
  }
}

void sub_1B8E37458(uint64_t a1)
{
  sub_1B8E37534(319, &qword_1EBABBAD8, type metadata accessor for Kgqsapipb_LSTMScoresArray);
  if (v1 <= 0x3F)
  {
    sub_1B8E37534(319, &qword_1EBABBAE0, type metadata accessor for Kgqsapipb_TokenPair);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E37534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C730();
}

uint64_t Kgqsapipb_ArgInfo.arg.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_ArgInfo.value.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_ArgInfo.span.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_ArgInfo(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_Span(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = 0;
    *(a1 + 24) = v9;
    v10 = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = 0;
    *(a1 + 40) = v9;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = v10;
    *(a1 + 72) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9240, &qword_1B965A610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_ArgInfo.span.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_ArgInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9240, &qword_1B965A610);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E46784();
  type metadata accessor for Kgqsapipb_Span(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Kgqsapipb_ArgInfo.span.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  *(v1 + 16) = type metadata accessor for Kgqsapipb_Span(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Kgqsapipb_ArgInfo(v13);
  OUTLINED_FUNCTION_116_0(*(v14 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_114_0();
    v16 = MEMORY[0x1E69E7CC0];
    *(v9 + 32) = 0;
    *(v9 + 40) = v17;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    *(v9 + 48) = v16;
    *(v9 + 72) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9240, &qword_1B965A610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Kgqsapipb_ArgInfo.hasSpan.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_ArgInfo(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Kgqsapipb_Span(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Kgqsapipb_ArgInfo.clearSpan()()
{
  v1 = type metadata accessor for Kgqsapipb_ArgInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB9240, &qword_1B965A610);
  type metadata accessor for Kgqsapipb_Span(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Kgqsapipb_ArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_ArgInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_ArgInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Kgqsapipb_ArgInfo(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Kgqsapipb_Span(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Kgqsapipb_IntentArgInfo.intentSource.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Kgqsapipb_IntentArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_IntentArgInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_IntentArgInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = v2;
  type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void sub_1B8E37D6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGDBResponse.query.setter(v1, v2);
}

uint64_t Kgqsapipb_KGDBResponse.query.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.result.getter()
{
  OUTLINED_FUNCTION_32_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);
}

uint64_t Kgqsapipb_KGDBResponse.result.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_KGDBResponse(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E41ED4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 32, v6);
  *(v7 + 32) = v0;
}

uint64_t Kgqsapipb_KGDBResponse.result.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E37FD0()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_KGDBResponse.result.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_55_1();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E41ED4(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 32);
    *(v6 + 32) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_KGDBResponse.debug.getter()
{
  OUTLINED_FUNCTION_32_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 40, v2);
}

uint64_t Kgqsapipb_KGDBResponse.debug.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_KGDBResponse(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E41ED4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 40, v6);
  *(v7 + 40) = v0;
}

uint64_t Kgqsapipb_KGDBResponse.debug.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 48) = *(v0 + 40);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E38198()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_KGDBResponse.debug.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_55_1();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E41ED4(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 40);
    *(v6 + 40) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_KGDBResponse.relaxed.getter()
{
  OUTLINED_FUNCTION_32_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t Kgqsapipb_KGDBResponse.relaxed.setter(char a1)
{
  v4 = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E41ED4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = a1 & 1;
  return result;
}

uint64_t Kgqsapipb_KGDBResponse.relaxed.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_6();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  *(v1 + 84) = *(v5 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E38334(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E41ED4(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;

  free(v1);
}

void sub_1B8E383CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGDBResponse.entities.setter(v1, v2);
}

uint64_t Kgqsapipb_KGDBResponse.entities.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.hasMoreResults_p.getter()
{
  OUTLINED_FUNCTION_32_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 72, v3);
  return *(v2 + 72);
}

uint64_t Kgqsapipb_KGDBResponse.hasMoreResults_p.setter(char a1)
{
  v4 = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E41ED4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 72, v6);
  *(v7 + 72) = a1 & 1;
  return result;
}

uint64_t Kgqsapipb_KGDBResponse.hasMoreResults_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_6();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 72);
  *(v1 + 84) = *(v5 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E38604(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E41ED4(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v3;

  free(v1);
}

void sub_1B8E3869C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGDBResponse.lastIntent.setter(v1, v2);
}

uint64_t Kgqsapipb_KGDBResponse.lastIntent.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.queryFeatures.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_QueryFeatures(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB61E8 != -1)
    {
      OUTLINED_FUNCTION_137_2(&qword_1EBAB61E8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD18, &qword_1B965A618);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.queryFeatures.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_190_2();
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  OUTLINED_FUNCTION_65_1(Features);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_KGDBResponse.queryFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(v9);
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB61E8 != -1)
    {
      OUTLINED_FUNCTION_137_2(&qword_1EBAB61E8);
    }

    OUTLINED_FUNCTION_57_2();
    if (Features != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD18, &qword_1B965A618);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_KGDBResponse.perfMetrics.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_53_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v0 + v6);

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.displayableMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_132_2();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBABBD20, &qword_1B965A620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.displayableMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_DisplayableMetadata.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Kgqsapipb_KGDBResponse.displayableMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_DisplayableMetadata(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD20, &qword_1B965A620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E38FE4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E467DC();
    v2(v3);
    sub_1B8E46834();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8E390B8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v13 = (a4)(0);
  OUTLINED_FUNCTION_178(v6, 1, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v16, v17, v4);
  return v15;
}

void sub_1B8E391AC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_208();
  v7 = *(type metadata accessor for Kgqsapipb_KGDBResponse(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B8E41ED4(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Kgqsapipb_KGDBResponse.nextStart.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_6();
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8E393C4(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  v6 = *a2;
  OUTLINED_FUNCTION_10_4(v2 + v6, v7);
  return *(v2 + v6);
}

void sub_1B8E39454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_184_0();
  v10 = v9;
  OUTLINED_FUNCTION_134_2();
  v12 = v11;
  v14 = v13(0);
  v15 = OUTLINED_FUNCTION_216_1(v14);
  v17 = *(v5 + v8);
  if ((v15 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_40_0();
    v19 = v6(v18);
    OUTLINED_FUNCTION_192_2(v19);
  }

  v20 = *v10;
  OUTLINED_FUNCTION_9_3(v17 + v20, v16);
  *(v17 + v20) = v12;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_KGDBResponse.totalResultsCount.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_6();
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E3957C()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_238();
  v6 = *(v5 + 80);
  v7 = *(v0 + 84);
  v8 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 72);
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v13);
    *(v12 + v11) = v10;
  }

  v14 = *v4;
  OUTLINED_FUNCTION_11_4();
  *(v10 + v14) = v6;
  OUTLINED_FUNCTION_283();

  free(v15);
}

uint64_t Kgqsapipb_KGDBResponse.intent.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  *(v0 + 72) = *(type metadata accessor for Kgqsapipb_KGDBResponse(v3) + 20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.intentArgInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_132_2();
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = 0;
    a1[4] = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD28, &qword_1B965A628);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.intentArgInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_KGDBResponse.intentArgInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_IntentArgInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = MEMORY[0x1E69E7CC0];
    v13[3] = 0;
    v13[4] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD28, &qword_1B965A628);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_KGDBResponse.renderFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_RenderFeatures(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Kgqsapipb_RenderFeatures.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD30, &qword_1B965A630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.renderFeatures.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_RenderFeatures.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  type metadata accessor for Kgqsapipb_RenderFeatures(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Kgqsapipb_KGDBResponse.renderFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_RenderFeatures(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    *(v13 + 4) = 0;
    v13[12] = 0;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    v13[32] = 0;
    *(v13 + 5) = 0;
    *(v13 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD30, &qword_1B965A630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E39EF8(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_178_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_6_2(v4);

  return OUTLINED_FUNCTION_288();
}

void sub_1B8E39FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23;
  v34 = OUTLINED_FUNCTION_112();
  v36 = *(v35(v34) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v23 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v39 = OUTLINED_FUNCTION_40_0();
    v38 = v30(v39);
    *(v33 + v36) = v38;
  }

  v40 = (v38 + *v28);
  OUTLINED_FUNCTION_18(v40, &a10);
  *v40 = v24;
  v40[1] = v22;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_KGDBResponse.fullCardURL.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  *(v0 + 72) = *(type metadata accessor for Kgqsapipb_KGDBResponse(v3) + 20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.resultSource.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_32_6();
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8E3A260@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1(0);
  v7 = *(v3 + *(v6 + 20)) + *a2;
  result = OUTLINED_FUNCTION_6_2(v6);
  v9 = *(v7 + 8);
  *a3 = *v7;
  *(a3 + 8) = v9;
  return result;
}

void sub_1B8E3A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v22;
  v33 = *v32;
  v34 = *(v32 + 8);
  v36 = *(v35(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v22 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v39 = OUTLINED_FUNCTION_40_0();
    v38 = v28(v39);
    *(v31 + v36) = v38;
  }

  v40 = v38 + *v26;
  OUTLINED_FUNCTION_18(v40, &a10);
  *v40 = v33;
  *(v40 + 8) = v34;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_KGDBResponse.resultType.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_32_6();
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E3A458()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_134_2();
  v6 = v5;
  OUTLINED_FUNCTION_238();
  v8 = *(v7 + 72);
  v9 = *(v0 + 84);
  v10 = *(v0 + 88);
  v11 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v0 + 84);
    v15 = *(v0 + 88);
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v16);
    *(v15 + v14) = v13;
  }

  v17 = 48;
  if (v6)
  {
    v17 = 24;
  }

  v18 = v13 + *v4;
  OUTLINED_FUNCTION_18(v18, v0 + v17);
  *v18 = v8;
  *(v18 + 8) = v11;
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t sub_1B8E3A544(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v2 + *a2, v6);
}

void sub_1B8E3A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_184_0();
  v11 = v10;
  OUTLINED_FUNCTION_134_2();
  v12 = OUTLINED_FUNCTION_313();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_216_1(v14);
  v17 = *(v6 + v9);
  if ((v15 & 1) == 0)
  {
    v8(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_40_0();
    v19 = v7(v18);
    OUTLINED_FUNCTION_192_2(v19);
  }

  v20 = *v11;
  OUTLINED_FUNCTION_9_3(v17 + v20, v16);
  *(v17 + v20) = v5;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_KGDBResponse.geoEntities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(v4);
  OUTLINED_FUNCTION_53_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v0 + v6);

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGDBResponse.electionsResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Electionspb_ElectionsResponse(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD38, &qword_1B965A638);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.electionsResponse.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Electionspb_ElectionsResponse(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_KGDBResponse.electionsResponse.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Electionspb_ElectionsResponse(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *v13 = MEMORY[0x1E69E7CC0];
    v13[1] = v15;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    *(v13 + 40) = 1;
    v13[6] = 0;
    *(v13 + 56) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD38, &qword_1B965A638);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_KGDBResponse.nlgDialog.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Nlgpb_NlgDialog(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_132_2();
    a1[2] = 0;
    a1[3] = v9;
    a1[4] = 0;
    a1[5] = v9;
    a1[6] = 0;
    a1[7] = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD40, &qword_1B965A640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.nlgDialog.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Nlgpb_NlgDialog(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_KGDBResponse.nlgDialog.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Nlgpb_NlgDialog(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v13[4] = 0;
    v13[5] = v15;
    v13[6] = 0;
    v13[7] = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD40, &qword_1B965A640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_KGDBResponse.kgEventLogMessage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_2(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6310 != -1)
    {
      OUTLINED_FUNCTION_148_1(&qword_1EBAB6310);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD48, &qword_1B965A648);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponse.kgEventLogMessage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_167_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E41ED4(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_KGDBResponse.kgEventLogMessage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Kgqsapipb_KGEventLogMessage(v9);
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6310 != -1)
    {
      OUTLINED_FUNCTION_148_1(&qword_1EBAB6310);
    }

    OUTLINED_FUNCTION_57_2();
    if (v10 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD48, &qword_1B965A648);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E3B238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E53458();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8E3B2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E53404();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_KGDBResponse.ResultSource.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8E3B3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Kgqsapipb_KGDBResponse.ResultSource.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Kgqsapipb_KGDBResponse.ResultType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8E3B458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Kgqsapipb_KGDBResponse.ResultType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Kgqsapipb_DisplayableMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_DisplayableMetadata(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E3B570()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E3B5F8()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Kgqsapipb_PerfMetric.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_PerfMetric(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_PerfMetric.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  type metadata accessor for Kgqsapipb_PerfMetric(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEntity.wikidata.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_KGEntity(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_Entity(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6398 != -1)
    {
      OUTLINED_FUNCTION_145_3(&qword_1EBAB6398);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD50, &qword_1B965A650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGEntity.wikidata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_KGEntity(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBABBD50, &qword_1B965A650);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E46784();
  type metadata accessor for Kgqsapipb_Entity(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Kgqsapipb_KGEntity.wikidata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Kgqsapipb_Entity(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Kgqsapipb_KGEntity(v13);
  OUTLINED_FUNCTION_116_0(*(v14 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6398 != -1)
    {
      OUTLINED_FUNCTION_145_3(&qword_1EBAB6398);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD50, &qword_1B965A650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Kgqsapipb_KGEntity.hasWikidata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_KGEntity(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Kgqsapipb_Entity(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Kgqsapipb_KGEntity.clearWikidata()()
{
  v1 = type metadata accessor for Kgqsapipb_KGEntity(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBABBD50, &qword_1B965A650);
  type metadata accessor for Kgqsapipb_Entity(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Kgqsapipb_KGEntity.wikipedia.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_KGEntity(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_Thing(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6438 != -1)
    {
      OUTLINED_FUNCTION_144_2(&qword_1EBAB6438);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD58, &qword_1B965A658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGEntity.wikipedia.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_KGEntity(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBABBD58, &qword_1B965A658);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E46784();
  type metadata accessor for Kgqsapipb_Thing(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Kgqsapipb_KGEntity.wikipedia.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Kgqsapipb_Thing(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Kgqsapipb_KGEntity(v13);
  OUTLINED_FUNCTION_116_0(*(v14 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6438 != -1)
    {
      OUTLINED_FUNCTION_144_2(&qword_1EBAB6438);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD58, &qword_1B965A658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Kgqsapipb_KGEntity.hasWikipedia.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_KGEntity(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Kgqsapipb_Thing(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Kgqsapipb_KGEntity.clearWikipedia()()
{
  v1 = type metadata accessor for Kgqsapipb_KGEntity(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBABBD58, &qword_1B965A658);
  type metadata accessor for Kgqsapipb_Thing(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Kgqsapipb_KGEntity.attributes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEntity.features.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_KGEntity(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD60, &unk_1B965A660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_KGEntity.features.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_KGEntity(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBABBD60, &unk_1B965A660);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E46784();
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Kgqsapipb_KGEntity.features.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  v6 = type metadata accessor for Kgqsapipb_EntityFeatures(0);
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  *(v0 + 40) = *(type metadata accessor for Kgqsapipb_KGEntity(v12) + 40);
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v6);
  if (v15)
  {
    *v8 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v6);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBABBD60, &unk_1B965A660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_461();
    sub_1B8E46784();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Kgqsapipb_KGEntity.hasFeatures.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_KGEntity(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Kgqsapipb_EntityFeatures(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Kgqsapipb_KGEntity.clearFeatures()()
{
  v1 = type metadata accessor for Kgqsapipb_KGEntity(0);
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBABBD60, &unk_1B965A660);
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Kgqsapipb_KGEntity.additionalEntityInfo.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B8E3C2BC()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E3C344()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Kgqsapipb_KGEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEntity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E3C434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E533B0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_KGEntity.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_AttributeStore(0);
  *(a1 + 16) = sub_1B964C7B0();
  type metadata accessor for Kgqsapipb_KGEntity(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Kgqsapipb_Entity(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Kgqsapipb_Thing(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t static Kgqsapipb_KGEntity.AttributeType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8E3C5F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Kgqsapipb_KGEntity.AttributeType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Kgqsapipb_AttributeStore.attributes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_AttributeStore.debugInfo.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_AttributeStore(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB62A8 != -1)
    {
      OUTLINED_FUNCTION_141_3(&qword_1EBAB62A8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9A78, &qword_1B96507A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t Kgqsapipb_AttributeStore.debugInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_AttributeStore(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9A78, &qword_1B96507A0);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E46784();
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8E3C818(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_145_2();
  v7 = v6;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(v4(0) + 20);
  if (*v3 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(v7 + v8) = *a3;
}

void Kgqsapipb_AttributeStore.debugInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Kgqsapipb_DebugInfo(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Kgqsapipb_AttributeStore(v13);
  OUTLINED_FUNCTION_116_0(*(v14 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB62A8 != -1)
    {
      OUTLINED_FUNCTION_141_3(&qword_1EBAB62A8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9A78, &qword_1B96507A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8E3C9F8()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8E467DC();
    sub_1B8D9207C(v9 + v5, v3, v2);
    sub_1B8E46784();
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_177_1();
    sub_1B8E46834();
  }

  else
  {
    sub_1B8D9207C(v9 + v5, v0, v1);
    sub_1B8E46784();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Kgqsapipb_AttributeStore.hasDebugInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_AttributeStore(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Kgqsapipb_AttributeStore.clearDebugInfo()()
{
  v1 = type metadata accessor for Kgqsapipb_AttributeStore(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB9A78, &qword_1B96507A0);
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8E3CBC8()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E3CC50()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Kgqsapipb_AttributeStore.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_AttributeStore(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_AttributeStore.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_AttributeStore(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Kgqsapipb_EntityFeatures.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_EntityFeatures(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_EntityInfo.description_p.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_EntityInfo.thumbnailURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Kgqsapipb_EntityInfo.ontologyPaths.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Kgqsapipb_EntityInfo.entitySyn.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Kgqsapipb_EntityInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_EntityInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_EntityInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_EntityInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_EntityInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_EntityInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_EntityInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = MEMORY[0x1E69E7CC0];
  v1[11] = 0;
  v1[12] = v2;
  type metadata accessor for Kgqsapipb_EntityInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E3D1A8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E3D1F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_DebugInfo.code.setter(v1, v2);
}

void sub_1B8E3D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_184_0();
  v11 = OUTLINED_FUNCTION_93_3();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v16 = *(v6 + v10);
  if ((v14 & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = v8(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3(v16 + 16, v15);
  *(v16 + 16) = v7;
  *(v16 + 24) = v5;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_DebugInfo.code.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_9(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3D398()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v8 = OUTLINED_FUNCTION_206_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 16);
    *(v9 + 16) = v2;
    *(v9 + 24) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Kgqsapipb_DebugInfo.description_p.getter()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_DebugInfo.description_p.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = *(type metadata accessor for Kgqsapipb_DebugInfo(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E4B540(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 32, v6);
  *(v7 + 32) = v2;
  *(v7 + 40) = v0;
}

uint64_t Kgqsapipb_DebugInfo.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_9(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3D5A4()
{
  OUTLINED_FUNCTION_58_0();
  if (v3)
  {

    OUTLINED_FUNCTION_461();
    Kgqsapipb_DebugInfo.description_p.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_52_1();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E4B540(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
  }

  free(v0);
}

uint64_t Kgqsapipb_DebugInfo.messages.getter()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);
}

uint64_t Kgqsapipb_DebugInfo.messages.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_166_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E4B540(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v0;
}

uint64_t Kgqsapipb_DebugInfo.messages.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3D780()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_DebugInfo.messages.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_52_1();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E4B540(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 48);
    *(v6 + 48) = v2;
  }

  free(v0);
}

uint64_t sub_1B8E3D828()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 56, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E3D874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_DebugInfo.pattern.setter(v1, v2);
}

void sub_1B8E3D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_184_0();
  v11 = OUTLINED_FUNCTION_93_3();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v16 = *(v6 + v10);
  if ((v14 & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = v8(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3(v16 + 56, v15);
  *(v16 + 56) = v7;
  *(v16 + 64) = v5;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_DebugInfo.pattern.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_9(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 56);
  v6 = *(v5 + 64);
  *(v1 + 48) = *(v5 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3DA18()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v8 = OUTLINED_FUNCTION_206_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 56);
    *(v9 + 56) = v2;
    *(v9 + 64) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Kgqsapipb_DebugInfo.dbQueryPattern.getter()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 72, v2);
}

uint64_t Kgqsapipb_DebugInfo.dbQueryPattern.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_166_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E4B540(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 72, v5);
  *(v6 + 72) = v0;
}

uint64_t Kgqsapipb_DebugInfo.dbQueryPattern.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 48) = *(v0 + 72);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3DBF4()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_DebugInfo.dbQueryPattern.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_52_1();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E4B540(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 72);
    *(v6 + 72) = v2;
  }

  free(v0);
}

uint64_t sub_1B8E3DC9C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 80, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E3DCE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_DebugInfo.encodedIntent.setter(v1, v2);
}

void sub_1B8E3DD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_184_0();
  v11 = OUTLINED_FUNCTION_93_3();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v16 = *(v6 + v10);
  if ((v14 & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = v8(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3(v16 + 80, v15);
  *(v16 + 80) = v7;
  *(v16 + 88) = v5;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Kgqsapipb_DebugInfo.encodedIntent.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_9(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 80);
  v6 = *(v5 + 88);
  *(v1 + 48) = *(v5 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3DE8C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v8 = OUTLINED_FUNCTION_206_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 80);
    *(v9 + 80) = v2;
    *(v9 + 88) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

float Kgqsapipb_DebugInfo.maxPopularityScore.getter()
{
  OUTLINED_FUNCTION_34_3();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Kgqsapipb_DebugInfo.maxPopularityScore.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_DebugInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E4B540(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 96, v6);
  *(v7 + 96) = a1;
  return result;
}

uint64_t Kgqsapipb_DebugInfo.maxPopularityScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E3E04C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 80);
  v5 = *(v2 + 84);
  v6 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E4B540(v9);
    OUTLINED_FUNCTION_15(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 96) = v4;

  free(v2);
}

uint64_t Kgqsapipb_DebugInfo.queryEntities.getter()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 104, v2);
}

uint64_t Kgqsapipb_DebugInfo.queryEntities.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_166_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E4B540(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 104, v5);
  *(v6 + 104) = v0;
}

uint64_t Kgqsapipb_DebugInfo.queryEntities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 104);
  *(v1 + 48) = *(v0 + 104);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3E220()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_DebugInfo.queryEntities.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_52_1();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E4B540(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 104);
    *(v6 + 104) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_DebugInfo.fedPatterns.getter()
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);
}

uint64_t Kgqsapipb_DebugInfo.fedPatterns.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_166_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E4B540(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 112, v5);
  *(v6 + 112) = v0;
}

uint64_t Kgqsapipb_DebugInfo.fedPatterns.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  *(v1 + 48) = *(v0 + 112);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3E3E4()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_DebugInfo.fedPatterns.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_52_1();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E4B540(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 112);
    *(v6 + 112) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_DebugInfo.intentFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_DebugInfo(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_IntentFeatures(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Kgqsapipb_IntentFeatures.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABBD68, &unk_1B965A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8E46784();
  }

  return result;
}

uint64_t sub_1B8E3E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E467DC();
  return a7(v7);
}

uint64_t Kgqsapipb_DebugInfo.intentFeatures.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Kgqsapipb_DebugInfo(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E4B540(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_190_2();
  v5 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_DebugInfo.intentFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_IntentFeatures(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v13[5] = 0;
    v13[6] = 0;
    v13[4] = 0;
    *(v13 + 56) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v13[8] = MEMORY[0x1E69E7CC0];
    v13[9] = v15;
    v13[10] = v15;
    v13[11] = v15;
    v13[12] = 0;
    v13[13] = v16;
    v13[14] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD68, &unk_1B965A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_177_2();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_DebugInfo.hasIntentFeatures.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_DebugInfo(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures, v8);
  sub_1B8D92024();
  v6 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Kgqsapipb_DebugInfo.clearIntentFeatures()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_166_2(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E4B540(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  type metadata accessor for Kgqsapipb_IntentFeatures(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Kgqsapipb_DebugInfo.canonResultID.getter()
{
  OUTLINED_FUNCTION_34_3();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID, v4);
  return *(v2 + v3);
}

uint64_t Kgqsapipb_DebugInfo.canonResultID.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_166_2(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E4B540(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID, v5);
  *(v6 + v9) = v0;
  return result;
}

uint64_t Kgqsapipb_DebugInfo.canonResultID.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_34_3();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E3EAC8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E4B540(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_11_4();
  *(v8 + v11) = v4;

  free(v2);
}

void *sub_1B8E3EB88@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B8E3EBD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Kgqsapipb_DebugInfo.quality.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_34_3();
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_DebugInfo.productionRules.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  OUTLINED_FUNCTION_53_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v0 + v6);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3EE48()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5();
  if (v6)
  {
    v7 = v5;
    v8 = OUTLINED_FUNCTION_61_1();
    v7(v8);
  }

  else
  {
    v9 = v4;
    OUTLINED_FUNCTION_134_2();
    v10 = *(v0 + 64);
    v11 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = v2(v14);
      OUTLINED_FUNCTION_228_1(v15);
    }

    v16 = *v9;
    OUTLINED_FUNCTION_59_3(v13 + v16);
    *(v13 + v16) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Kgqsapipb_DebugInfo.referEntityIdx.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_DebugInfo.encodedContext.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_9(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_DebugInfo.encodedIntentProto.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_9(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

double Kgqsapipb_DebugInfo.maxEntityScore.getter()
{
  OUTLINED_FUNCTION_34_3();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore, v4);
  return *(v2 + v3);
}

uint64_t Kgqsapipb_DebugInfo.maxEntityScore.setter(double a1)
{
  v4 = OUTLINED_FUNCTION_166_2(0);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v6 = sub_1B8E4B540(v6);
    *(v1 + v2) = v6;
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore, v5);
  *(v6 + v7) = a1;
  return result;
}

uint64_t Kgqsapipb_DebugInfo.maxEntityScore.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_34_3();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E3F3EC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_52_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E4B540(v9);
    OUTLINED_FUNCTION_15(v10);
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_11_4();
  *(v8 + v11) = v4;

  free(v2);
}

uint64_t Kgqsapipb_DebugInfo.algorithm.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_9(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_DebugInfo.intentName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_9_9(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E3F744()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0();
  if (v7)
  {
    v8 = v6;

    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = *(v0 + 72);
    v14 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 72);
      v18 = *(v0 + 64);
      v12(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = v11(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v10);
    OUTLINED_FUNCTION_18(v20, v0 + 24);
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v21);
}

uint64_t sub_1B8E3F874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E5335C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_DebugInfo.Quality.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8E3F95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Kgqsapipb_DebugInfo.Quality.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Kgqsapipb_KGDebugContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGDebugContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGDebugContext.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v2;
  type metadata accessor for Kgqsapipb_KGDebugContext(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_DebugInfoContainer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_DebugInfoContainer(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E3FB40@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Kgqsapipb_RenderFeatures.answerType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Kgqsapipb_RenderFeatures.answerType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Kgqsapipb_RenderFeatures.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_RenderFeatures(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_RenderFeatures.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_RenderFeatures(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_RenderFeatures.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_RenderFeatures(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E3FE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E5090C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_RenderFeatures.AnswerType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8E3FEF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Kgqsapipb_RenderFeatures.AnswerType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Kgqsapipb_GeoEntity.placetype.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_GeoEntity.containers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Kgqsapipb_GeoEntity.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_GeoEntity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_GeoEntity.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_GeoEntity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_GeoEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_GeoEntity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_GeoEntity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_GeoEntity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGSound.audioBytes.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGSound.audioBytes.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Kgqsapipb_KGSound.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_KGSound(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_KGSound.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGSound(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_KGSound.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGSound(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGSound.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  type metadata accessor for Kgqsapipb_KGSound(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E404F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB28);
  __swift_project_value_buffer(v0, qword_1EBABBB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "arg";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "span";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_ArgInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8E4079C(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8E4079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_ArgInfo(0);
  type metadata accessor for Kgqsapipb_Span(0);
  sub_1B8CD1D90(&qword_1EBABB7A0, type metadata accessor for Kgqsapipb_Span, protocol conformance descriptor for Kgqsapipb_Span);
  return sub_1B964C580();
}

void Kgqsapipb_ArgInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9240, &qword_1B965A610);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_186_1();
  v5 = type metadata accessor for Kgqsapipb_Span(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_1();
  if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      type metadata accessor for Kgqsapipb_ArgInfo(0);
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
      {
        sub_1B8D9207C(v1, &qword_1EBAB9240, &qword_1B965A610);
LABEL_8:
        OUTLINED_FUNCTION_8_1();
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_24_5();
      sub_1B8E46784();
      sub_1B8CD1D90(&qword_1EBABB7A0, type metadata accessor for Kgqsapipb_Span, protocol conformance descriptor for Kgqsapipb_Span);
      OUTLINED_FUNCTION_37_2();
      sub_1B964C740();
      sub_1B8E46834();
      if (!v0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

void static Kgqsapipb_ArgInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Kgqsapipb_Span(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9240, &qword_1B965A610);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9248, &qword_1B964DA30);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = *v1 == *v0 && v1[1] == v0[1];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_84_1();
  v13 = v10 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v24[1] = type metadata accessor for Kgqsapipb_ArgInfo(0);
  v14 = *(v6 + 48);
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  v15 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v15, v16, v2);
  if (v10)
  {
    OUTLINED_FUNCTION_178(&v9[v14], 1, v2);
    if (v10)
    {
      sub_1B8D9207C(v9, &qword_1EBAB9240, &qword_1B965A610);
LABEL_22:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_18();
      v23 = sub_1B8CD1D90(v21, v22, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v23);
      goto LABEL_23;
    }

LABEL_19:
    sub_1B8D9207C(v9, &qword_1EBAB9248, &qword_1B964DA30);
    goto LABEL_23;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v9[v14], 1, v2);
  if (v17)
  {
    OUTLINED_FUNCTION_234_1();
    goto LABEL_19;
  }

  sub_1B8E46784();
  v18 = OUTLINED_FUNCTION_196();
  v20 = static Kgqsapipb_Span.== infix(_:_:)(v18, v19);
  OUTLINED_FUNCTION_236();
  sub_1B8E46834();
  sub_1B8E46834();
  sub_1B8D9207C(v9, &qword_1EBAB9240, &qword_1B965A610);
  if (v20)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E40D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1B8, type metadata accessor for Kgqsapipb_ArgInfo, protocol conformance descriptor for Kgqsapipb_ArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E40DF4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBD78, type metadata accessor for Kgqsapipb_ArgInfo, protocol conformance descriptor for Kgqsapipb_ArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E40E64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBD78, type metadata accessor for Kgqsapipb_ArgInfo, protocol conformance descriptor for Kgqsapipb_ArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E40EFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB40);
  __swift_project_value_buffer(v0, qword_1EBABBB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "args";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intent_source";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_IntentArgInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        goto LABEL_9;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E411A4(v3, v4, v5, v6);
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t sub_1B8E411A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_ArgInfo(0);
  sub_1B8CD1D90(&qword_1EBABBD78, type metadata accessor for Kgqsapipb_ArgInfo, protocol conformance descriptor for Kgqsapipb_ArgInfo);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_IntentArgInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Kgqsapipb_ArgInfo(0), sub_1B8CD1D90(&qword_1EBABBD78, type metadata accessor for Kgqsapipb_ArgInfo, protocol conformance descriptor for Kgqsapipb_ArgInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        type metadata accessor for Kgqsapipb_IntentArgInfo(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_IntentArgInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7C774(v2[2], v1[2]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v2[3] == v1[3] && v2[4] == v1[4];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v10 = sub_1B8CD1D90(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8E4148C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1B0, type metadata accessor for Kgqsapipb_IntentArgInfo, protocol conformance descriptor for Kgqsapipb_IntentArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4150C(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo, protocol conformance descriptor for Kgqsapipb_IntentArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4157C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo, protocol conformance descriptor for Kgqsapipb_IntentArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E41614()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB58);
  __swift_project_value_buffer(v0, qword_1EBABBB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B965A5F0;
  v4 = v50 + v3 + v1[14];
  *(v50 + v3) = 1;
  *v4 = "query";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v50 + v3 + v2 + v1[14];
  *(v50 + v3 + v2) = 2;
  *v8 = "result";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v50 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "debug";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v50 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "relaxed";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v50 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "entities";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v50 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasMoreResults";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v50 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "lastIntent";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v50 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "queryFeatures";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v50 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "perfMetrics";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v50 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "displayableMetadata";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v50 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "nextStart";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v50 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "totalResultsCount";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v50 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "intent";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v50 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "intentArgInfo";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v7();
  v33 = (v50 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "renderFeatures";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v7();
  v35 = (v50 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "fullCardUrl";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v50 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "result_source";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v7();
  v39 = (v50 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "resultType";
  *(v40 + 1) = 10;
  v40[16] = 2;
  v7();
  v41 = (v50 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 23;
  *v42 = "geoEntities";
  *(v42 + 1) = 11;
  v42[16] = 2;
  v7();
  v43 = (v50 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 25;
  *v44 = "electionsResponse";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  v45 = (v50 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 26;
  *v46 = "nlg_dialog";
  *(v46 + 1) = 10;
  v46[16] = 2;
  v7();
  v47 = (v50 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 27;
  *v48 = "kg_event_log_message";
  *(v48 + 1) = 20;
  v48[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E41D08()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures;
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, Features);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics) = v1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata;
  v5 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount) = 0;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo;
  v8 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures;
  v10 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities) = v1;
  v14 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse;
  v15 = type metadata accessor for Electionspb_ElectionsResponse(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog;
  v17 = type metadata accessor for Nlgpb_NlgDialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage;
  v19 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  __swift_storeEnumTagSinglePayload(v0 + v18, 1, 1, v19);
  return v0;
}

uint64_t sub_1B8E41ED4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v88 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v72 - v16;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v17 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v17;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v72 = (v1 + 56);
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v73 = (v1 + 72);
  *(v1 + 80) = 0;
  v74 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures;
  v75 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures;
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, Features);
  v76 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics) = v17;
  v20 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata;
  v78 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata;
  v21 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v79 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart) = 0;
  v80 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount) = 0;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  v81 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo;
  v83 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo;
  v24 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures;
  v84 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures;
  v26 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  v85 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  v86 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
  v87 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
  *v29 = 0;
  *(v29 + 8) = 1;
  v89 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities) = v17;
  v30 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse;
  v90 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse;
  v31 = type metadata accessor for Electionspb_ElectionsResponse(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog;
  v91 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog;
  v33 = type metadata accessor for Nlgpb_NlgDialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage;
  v93 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage;
  v35 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  __swift_storeEnumTagSinglePayload(v1 + v34, 1, 1, v35);
  swift_beginAccess();
  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v37;
  *(v1 + 24) = v36;
  swift_beginAccess();
  v38 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v38;

  swift_beginAccess();
  v39 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v39;

  swift_beginAccess();
  LOBYTE(v39) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v39;
  swift_beginAccess();
  v41 = *(a1 + 56);
  v40 = *(a1 + 64);
  v42 = v72;
  swift_beginAccess();
  *v42 = v41;
  *(v1 + 64) = v40;

  swift_beginAccess();
  LOBYTE(v42) = *(a1 + 72);
  v43 = v73;
  swift_beginAccess();
  *v43 = v42;
  swift_beginAccess();
  v45 = *(a1 + 80);
  v44 = *(a1 + 88);
  v46 = v74;
  swift_beginAccess();
  *v46 = v45;
  *(v1 + 88) = v44;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  swift_beginAccess();
  v48 = *(a1 + v47);
  v49 = v76;
  swift_beginAccess();
  *(v1 + v49) = v48;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  swift_beginAccess();
  LODWORD(v50) = *(a1 + v50);
  v51 = v79;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + v52);
  v53 = v80;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v81;
  swift_beginAccess();
  *v57 = v56;
  v57[1] = v55;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  swift_beginAccess();
  v60 = *v58;
  v59 = v58[1];
  v61 = v85;
  swift_beginAccess();
  *v61 = v60;
  v61[1] = v59;

  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource);
  swift_beginAccess();
  v63 = *v62;
  LOBYTE(v62) = *(v62 + 8);
  v64 = v86;
  swift_beginAccess();
  *v64 = v63;
  *(v64 + 8) = v62;
  v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType);
  swift_beginAccess();
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v87;
  swift_beginAccess();
  *v67 = v66;
  *(v67 + 8) = v65;
  v68 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = v89;
  swift_beginAccess();
  *(v1 + v70) = v69;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B8E42AB8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures, &qword_1EBABBD18, &qword_1B965A618);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata, &qword_1EBABBD20, &qword_1B965A620);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo, &qword_1EBABBD28, &qword_1B965A628);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures, &qword_1EBABBD30, &qword_1B965A630);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse, &qword_1EBABBD38, &qword_1B965A638);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog, &qword_1EBABBD40, &qword_1B965A640);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage, &qword_1EBABBD48, &qword_1B965A648);
  return v0;
}

uint64_t sub_1B8E42C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E4C21C();
        break;
      case 2:
        sub_1B8E42FE4(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8E430B0(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8E4317C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8E4C300();
        break;
      case 6:
        sub_1B8E43200(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8E4C3E4();
        break;
      case 8:
        sub_1B8E43284(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8E43360(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8E4343C(a2, a1, a3, a4);
        break;
      case 11:
      case 12:
        sub_1B8E4C684();
        break;
      case 13:
      case 16:
        sub_1B8E4C770();
        break;
      case 14:
        sub_1B8E43518(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8E435F4(a2, a1, a3, a4);
        break;
      case 17:
        v11 = sub_1B8E53458;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
        v17 = &type metadata for Kgqsapipb_KGDBResponse.ResultSource;
        goto LABEL_15;
      case 18:
        v11 = sub_1B8E53404;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
        v17 = &type metadata for Kgqsapipb_KGDBResponse.ResultType;
LABEL_15:
        sub_1B8E4C5EC(v12, v13, v14, v15, v16, v11, v17);
        break;
      case 23:
        sub_1B8E436D0(a2, a1, a3, a4);
        break;
      case 25:
        sub_1B8E437AC(a2, a1, a3, a4);
        break;
      case 26:
        sub_1B8E43888(a2, a1, a3, a4);
        break;
      case 27:
        sub_1B8E43964(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E42FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEntity(0);
  sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity, protocol conformance descriptor for Kgqsapipb_KGEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E430B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo, protocol conformance descriptor for Kgqsapipb_DebugInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E4317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E43200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E43284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_QueryFeatures(0);
  sub_1B8CD1D90(&qword_1EBABB8B0, type metadata accessor for Kgqsapipb_QueryFeatures, protocol conformance descriptor for Kgqsapipb_QueryFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_PerfMetric(0);
  sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric, ")");
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E4343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata, protocol conformance descriptor for Kgqsapipb_DisplayableMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo, protocol conformance descriptor for Kgqsapipb_IntentArgInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E435F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_RenderFeatures(0);
  sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures, protocol conformance descriptor for Kgqsapipb_RenderFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E436D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_GeoEntity(0);
  sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E437AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Electionspb_ElectionsResponse(0);
  sub_1B8CD1D90(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse, protocol conformance descriptor for Electionspb_ElectionsResponse);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Nlgpb_NlgDialog(0);
  sub_1B8CD1D90(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  sub_1B8CD1D90(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v89 - v9;
  v10 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v89 - v13;
  v96 = type metadata accessor for Nlgpb_NlgDialog(0);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v97 = &v89 - v16;
  v98 = type metadata accessor for Electionspb_ElectionsResponse(0);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = &v89 - v19;
  v102 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v89 - v22;
  v104 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = &v89 - v25;
  v109 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v89 - v28;
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  MEMORY[0x1EEE9AC00](Features);
  v107 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v114 = a1;
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v90 = v10;
    v35 = a4;
  }

  else
  {
    v90 = v10;
    v35 = a4;
  }

  v36 = v114;
  swift_beginAccess();
  if (*(*(v36 + 32) + 16))
  {
    type metadata accessor for Kgqsapipb_KGEntity(0);
    sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity, protocol conformance descriptor for Kgqsapipb_KGEntity);

    sub_1B964C730();
    if (v5)
    {
    }

    v5 = 0;
  }

  v37 = v114;
  swift_beginAccess();
  if (*(*(v37 + 40) + 16))
  {
    type metadata accessor for Kgqsapipb_DebugInfo(0);
    sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo, protocol conformance descriptor for Kgqsapipb_DebugInfo);

    v38 = v35;
    sub_1B964C730();
    v108 = v5;
    if (v5)
    {
    }
  }

  else
  {
    v38 = v35;
    v108 = v5;
  }

  v40 = v114;
  swift_beginAccess();
  if (*(v40 + 48) == 1)
  {
    v41 = v108;
    result = sub_1B964C670();
    if (v41)
    {
      return result;
    }

    v108 = 0;
  }

  v42 = v114;
  swift_beginAccess();
  v43 = *(v42 + 64);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = *(v42 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    v45 = v108;
    sub_1B964C700();
    if (v45)
    {
    }

    v108 = 0;
  }

  v46 = v114;
  swift_beginAccess();
  if (*(v46 + 72) == 1)
  {
    v47 = v108;
    result = sub_1B964C670();
    if (v47)
    {
      return result;
    }

    v108 = 0;
  }

  v48 = v114;
  swift_beginAccess();
  v49 = *(v48 + 88);
  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = *(v48 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {

    v51 = v108;
    sub_1B964C700();
    if (v51)
    {
    }

    v108 = 0;
    v89 = v38;
  }

  else
  {
    v89 = v38;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v29, 1, Features) == 1)
  {
    sub_1B8D9207C(v29, &qword_1EBABBD18, &qword_1B965A618);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABB8B0, type metadata accessor for Kgqsapipb_QueryFeatures, protocol conformance descriptor for Kgqsapipb_QueryFeatures);
    v52 = v108;
    sub_1B964C740();
    if (v52)
    {
      return sub_1B8E46834();
    }

    v108 = 0;
    sub_1B8E46834();
  }

  v53 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  v54 = v114;
  swift_beginAccess();
  v55 = v109;
  if (*(*(v54 + v53) + 16))
  {
    type metadata accessor for Kgqsapipb_PerfMetric(0);
    sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric, ")");

    v56 = v108;
    sub_1B964C730();
    v108 = v56;
    if (v56)
    {
    }
  }

  swift_beginAccess();
  v57 = v106;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
  {
    sub_1B8D9207C(v57, &qword_1EBABBD20, &qword_1B965A620);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata, protocol conformance descriptor for Kgqsapipb_DisplayableMetadata);
    v58 = v108;
    sub_1B964C740();
    if (v58)
    {
      return sub_1B8E46834();
    }

    v108 = 0;
    sub_1B8E46834();
  }

  v59 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  v60 = v114;
  swift_beginAccess();
  if (*(v60 + v59))
  {
    v61 = v108;
    result = sub_1B964C6C0();
    if (v61)
    {
      return result;
    }

    v108 = 0;
  }

  v62 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  v63 = v114;
  swift_beginAccess();
  if (*(v63 + v62))
  {
    v64 = v108;
    result = sub_1B964C6C0();
    v65 = v64;
    if (v64)
    {
      return result;
    }
  }

  else
  {
    v65 = v108;
  }

  v66 = (v114 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    sub_1B964C700();
    if (v65)
    {
    }

    v70 = 0;
  }

  else
  {
    v70 = v65;
  }

  swift_beginAccess();
  v71 = v103;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v71, 1, v104) == 1)
  {
    sub_1B8D9207C(v71, &qword_1EBABBD28, &qword_1B965A628);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo, protocol conformance descriptor for Kgqsapipb_IntentArgInfo);
    sub_1B964C740();
    if (v70)
    {
      return sub_1B8E46834();
    }

    v70 = 0;
    sub_1B8E46834();
  }

  swift_beginAccess();
  v72 = v101;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v72, 1, v102) == 1)
  {
    sub_1B8D9207C(v72, &qword_1EBABBD30, &qword_1B965A630);
    v73 = v70;
    goto LABEL_67;
  }

  sub_1B8E46784();
  sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures, protocol conformance descriptor for Kgqsapipb_RenderFeatures);
  sub_1B964C740();
  v73 = v70;
  if (v70)
  {
    return sub_1B8E46834();
  }

  sub_1B8E46834();
LABEL_67:
  v74 = (v114 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  swift_beginAccess();
  v75 = *v74;
  v76 = v74[1];
  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {

    sub_1B964C700();
    if (v73)
    {
    }
  }

  v78 = v114 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  swift_beginAccess();
  if (!*v78 || (v79 = *(v78 + 8), v112 = *v78, v113 = v79, sub_1B8E53458(), result = sub_1B964C680(), !v73))
  {
    v80 = v114 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
    swift_beginAccess();
    if (!*v80 || (v81 = *(v80 + 8), v110 = *v80, v111 = v81, sub_1B8E53404(), result = sub_1B964C680(), !v73))
    {
      v82 = v73;
      v83 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
      v84 = v114;
      swift_beginAccess();
      if (*(*(v84 + v83) + 16))
      {
        type metadata accessor for Kgqsapipb_GeoEntity(0);
        sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity);

        sub_1B964C730();

        if (v82)
        {
          return result;
        }

        v82 = 0;
      }

      v85 = v97;
      swift_beginAccess();
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v85, 1, v98) == 1)
      {
        v86 = v82;
        sub_1B8D9207C(v85, &qword_1EBABBD38, &qword_1B965A638);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse, protocol conformance descriptor for Electionspb_ElectionsResponse);
        sub_1B964C740();
        v86 = v82;
        result = sub_1B8E46834();
        if (v82)
        {
          return result;
        }
      }

      swift_beginAccess();
      v87 = v95;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v87, 1, v96) == 1)
      {
        sub_1B8D9207C(v87, &qword_1EBABBD40, &qword_1B965A640);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);
        sub_1B964C740();
        result = sub_1B8E46834();
        if (v86)
        {
          return result;
        }
      }

      swift_beginAccess();
      v88 = v93;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v88, 1, v90) == 1)
      {
        return sub_1B8D9207C(v88, &qword_1EBABBD48, &qword_1B965A648);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage);
        sub_1B964C740();
        return sub_1B8E46834();
      }
    }
  }

  return result;
}

void sub_1B8E44E08()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_145_2();
  v227 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v221 = v5;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC1F8, &qword_1B965C6F8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  v224 = v9;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_266_0();
  v226 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v231 = type metadata accessor for Nlgpb_NlgDialog(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v222 = v14;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC200, &qword_1B965C700);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v234 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v18 = OUTLINED_FUNCTION_183(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  v229 = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_266_0();
  v230 = v21;
  v22 = OUTLINED_FUNCTION_201();
  v236 = type metadata accessor for Electionspb_ElectionsResponse(v22);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_21();
  v225 = v24;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC208, &qword_1B965C708);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_185();
  v237 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  v28 = OUTLINED_FUNCTION_183(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  v233 = v29;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_266_0();
  v235 = v31;
  v32 = OUTLINED_FUNCTION_201();
  v242 = type metadata accessor for Kgqsapipb_RenderFeatures(v32);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21();
  v238 = v34;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC210, &qword_1B965C710);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_185();
  v244 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  v38 = OUTLINED_FUNCTION_183(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44_0();
  v240 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_266_0();
  v245 = v41;
  v42 = OUTLINED_FUNCTION_201();
  v247 = type metadata accessor for Kgqsapipb_IntentArgInfo(v42);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_21();
  v239 = v44;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC218, &qword_1B965C718);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_185();
  v248 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  v48 = OUTLINED_FUNCTION_183(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v243 = v49;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_266_0();
  v255 = v51;
  v52 = OUTLINED_FUNCTION_201();
  v253 = type metadata accessor for Kgqsapipb_DisplayableMetadata(v52);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21();
  v249 = v54;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC220, &qword_1B965C720);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_185();
  v254 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  v58 = OUTLINED_FUNCTION_183(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44_0();
  v250 = v59;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_266_0();
  v252 = v61;
  v62 = OUTLINED_FUNCTION_201();
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(v62);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_21();
  v256 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC228, &qword_1B965C728);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_185();
  v257 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  v70 = OUTLINED_FUNCTION_183(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_181_1();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v217 - v72;
  OUTLINED_FUNCTION_521((v1 + 2), &v301);
  v75 = v1[2];
  v74 = v1[3];
  OUTLINED_FUNCTION_521((v0 + 2), &v300);
  v76 = v75 == v0[2] && v74 == v0[3];
  if (!v76 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v220 = v2;
  OUTLINED_FUNCTION_521((v1 + 4), &v299);
  v77 = v1[4];
  OUTLINED_FUNCTION_521((v0 + 4), &v298);
  v78 = v0[4];

  sub_1B8D88934(v77, v78);
  v79 = v1;
  v80 = v0;
  OUTLINED_FUNCTION_225_1();

  if ((v0 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521((v79 + 5), &v297);
  v81 = v79[5];
  OUTLINED_FUNCTION_521((v0 + 5), &v296);
  v82 = v0[5];

  sub_1B8D7AE40(v81, v82);
  v84 = v83;

  if ((v84 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521((v79 + 6), &v295);
  v85 = *(v79 + 48);
  OUTLINED_FUNCTION_521((v80 + 6), &v294);
  if (v85 != *(v80 + 48))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521((v79 + 7), &v293);
  v86 = v79[7];
  v87 = v79[8];
  OUTLINED_FUNCTION_521((v80 + 7), &v292);
  v88 = v86 == v80[7] && v87 == v80[8];
  if (!v88 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521((v79 + 9), &v291);
  v89 = *(v79 + 72);
  OUTLINED_FUNCTION_521((v80 + 9), &v290);
  if (v89 != *(v80 + 72))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521((v79 + 10), &v289);
  v90 = v79[10];
  v91 = v79[11];
  OUTLINED_FUNCTION_521((v80 + 10), &v288);
  v92 = v90 == v80[10] && v91 == v80[11];
  if (!v92 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521(v79 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures, &v287);
  v218 = v79;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v80 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures, &v286);
  v93 = *(v66 + 48);
  v94 = v257;
  sub_1B8D92024();
  v219 = v80;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v94);
  if (v76)
  {
    sub_1B8D9207C(v73, &qword_1EBABBD18, &qword_1B965A618);
    OUTLINED_FUNCTION_37_0(v94 + v93);
    v95 = v218;
    if (v76)
    {
      sub_1B8D9207C(v94, &qword_1EBABBD18, &qword_1B965A618);
      v96 = v219;
      goto LABEL_36;
    }

LABEL_32:
    sub_1B8D9207C(v94, &qword_1EBABC228, &qword_1B965C728);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_491();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v94 + v93);
  v95 = v218;
  if (v97)
  {
    sub_1B8D9207C(v73, &qword_1EBABBD18, &qword_1B965A618);
    sub_1B8E46834();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_17_6();
  v98 = v256;
  sub_1B8E46784();
  if (*(v3 + *(Features + 20)) != *(v98 + *(Features + 20)))
  {

    v99 = OUTLINED_FUNCTION_543();
    sub_1B8E30B60(v99, v100);
    OUTLINED_FUNCTION_225_1();

    if ((&qword_1B965A618 & 1) == 0)
    {
      sub_1B8E46834();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v121, v122, v123);
      OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v124, v125, v126);
      goto LABEL_17;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v101, v102, MEMORY[0x1E69AAC10]);
  v103 = sub_1B964C850();
  sub_1B8E46834();
  sub_1B8D9207C(v73, &qword_1EBABBD18, &qword_1B965A618);
  sub_1B8E46834();
  sub_1B8D9207C(v94, &qword_1EBABBD18, &qword_1B965A618);
  v96 = v219;
  if ((v103 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_36:
  OUTLINED_FUNCTION_521(v95 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics, &v285);
  OUTLINED_FUNCTION_521(v96 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics, &v284);

  v104 = OUTLINED_FUNCTION_543();
  sub_1B8D88988(v104, v105);
  v107 = v106;

  if ((v107 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521(v95 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata, &v283);
  v108 = v252;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v96 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata, &v282);
  v109 = *(v251 + 48);
  v110 = v254;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v111 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v111, v112, v253);
  if (v76)
  {
    sub_1B8D9207C(v108, &qword_1EBABBD20, &qword_1B965A620);
    OUTLINED_FUNCTION_37_0(v110 + v109);
    v113 = v255;
    if (v76)
    {
      sub_1B8D9207C(v110, &qword_1EBABBD20, &qword_1B965A620);
      v115 = v218;
      v114 = v219;
      goto LABEL_57;
    }

LABEL_45:
    v118 = &qword_1EBABC220;
    v119 = &qword_1B965C720;
LABEL_46:
    v120 = v110;
LABEL_47:
    sub_1B8D9207C(v120, v118, v119);
    goto LABEL_17;
  }

  v116 = v250;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v110 + v109);
  v113 = v255;
  if (v117)
  {
    sub_1B8D9207C(v108, &qword_1EBABBD20, &qword_1B965A620);
    OUTLINED_FUNCTION_234_1();
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_16_10();
  v127 = v249;
  sub_1B8E46784();
  v128 = *v116 == *v127 && v116[1] == v127[1];
  if (!v128 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B8E46834();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v147, v148, v149);
    sub_1B8E46834();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v150, v151, v152);
    goto LABEL_17;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v129, v130, MEMORY[0x1E69AAC10]);
  v131 = sub_1B964C850();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v108);
  OUTLINED_FUNCTION_196();
  sub_1B8E46834();
  v132 = OUTLINED_FUNCTION_275();
  sub_1B8D9207C(v132, v133, &qword_1B965A620);
  v115 = v218;
  v114 = v219;
  if ((v131 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_57:
  v134 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  OUTLINED_FUNCTION_521(v115 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart, &v281);
  LODWORD(v134) = *(v115 + v134);
  v135 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  OUTLINED_FUNCTION_521(v114 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart, &v280);
  if (v134 != *(v114 + v135))
  {
    goto LABEL_17;
  }

  v136 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  OUTLINED_FUNCTION_521(v115 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount, &v279);
  LODWORD(v136) = *(v115 + v136);
  v137 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  OUTLINED_FUNCTION_521(v114 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount, &v278);
  if (v136 != *(v114 + v137))
  {
    goto LABEL_17;
  }

  v138 = (v115 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  OUTLINED_FUNCTION_521(v115 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent, &v277);
  v139 = *v138;
  v140 = v138[1];
  v141 = v219;
  v142 = (v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  OUTLINED_FUNCTION_521(v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent, &v276);
  v143 = v139 == *v142 && v140 == v142[1];
  if (!v143 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521(v218 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo, &v275);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v141 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo, &v274);
  v144 = *(v246 + 48);
  v110 = v248;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v145 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v145, v146, v247);
  if (v76)
  {
    sub_1B8D9207C(v113, &qword_1EBABBD28, &qword_1B965A628);
    OUTLINED_FUNCTION_37_0(v110 + v144);
    if (v76)
    {
      sub_1B8D9207C(v110, &qword_1EBABBD28, &qword_1B965A628);
      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v153 = v243;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v110 + v144);
  if (v154)
  {
    sub_1B8D9207C(v113, &qword_1EBABBD28, &qword_1B965A628);
    OUTLINED_FUNCTION_234_1();
LABEL_73:
    v118 = &qword_1EBABC218;
    v119 = &qword_1B965C718;
    goto LABEL_46;
  }

  sub_1B8E46784();
  v155 = static Kgqsapipb_IntentArgInfo.== infix(_:_:)(v153);
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v113);
  sub_1B8E46834();
  v156 = OUTLINED_FUNCTION_275();
  sub_1B8D9207C(v156, v157, &qword_1B965A628);
  if ((v155 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_76:
  v158 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v158, &v273);
  OUTLINED_FUNCTION_115_2();
  v159 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521(v159, &v272);
  OUTLINED_FUNCTION_224_1();
  v110 = v244;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v160 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v160, v161, v242);
  if (v76)
  {
    sub_1B8D9207C(v245, &qword_1EBABBD30, &qword_1B965A630);
    OUTLINED_FUNCTION_37_0(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v110);
    if (v76)
    {
      sub_1B8D9207C(v110, &qword_1EBABBD30, &qword_1B965A630);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v110);
  if (v162)
  {
    sub_1B8D9207C(v245, &qword_1EBABBD30, &qword_1B965A630);
    sub_1B8E46834();
    v110 = v244;
LABEL_84:
    v118 = &qword_1EBABC210;
    v119 = &qword_1B965C710;
    goto LABEL_46;
  }

  v163 = v244;
  sub_1B8E46784();
  v164 = OUTLINED_FUNCTION_275();
  v166 = static Kgqsapipb_RenderFeatures.== infix(_:_:)(v164, v165);
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v245);
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_180_2(v163);
  if ((v166 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_86:
  v167 = (v218 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  OUTLINED_FUNCTION_521(v218 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL, &v271);
  v168 = *v167;
  v169 = v167[1];
  v170 = (v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  OUTLINED_FUNCTION_521(v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL, &v270);
  v171 = v168 == *v170 && v169 == v170[1];
  if (!v171 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521(v218 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource, &v269);
  OUTLINED_FUNCTION_521(v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource, &v268);
  v172 = OUTLINED_FUNCTION_220_1();
  if (!sub_1B8D92198(v172, v173, v174))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521(v218 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType, &v267);
  OUTLINED_FUNCTION_521(v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType, &v266);
  v175 = OUTLINED_FUNCTION_220_1();
  if (!sub_1B8D92198(v175, v176, v177))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521(v218 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities, &v265);
  OUTLINED_FUNCTION_521(v219 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities, &v264);

  v178 = OUTLINED_FUNCTION_543();
  sub_1B8D7D760(v178, v179);
  v181 = v180;

  if ((v181 & 1) == 0)
  {
    goto LABEL_17;
  }

  v182 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v182, &v263);
  OUTLINED_FUNCTION_115_2();
  v183 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521(v183, &v262);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v184 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v184, v185, v236);
  if (v76)
  {
    sub_1B8D9207C(v235, &qword_1EBABBD38, &qword_1B965A638);
    OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v237, 1, v236);
    if (v76)
    {
      sub_1B8D9207C(v237, &qword_1EBABBD38, &qword_1B965A638);
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v186 = v237;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v186, 1, v236);
  if (v187)
  {
    sub_1B8D9207C(v235, &qword_1EBABBD38, &qword_1B965A638);
    sub_1B8E46834();
LABEL_102:
    v118 = &qword_1EBABC208;
    v119 = &qword_1B965C708;
    v120 = v237;
    goto LABEL_47;
  }

  v188 = v237;
  sub_1B8E46784();
  OUTLINED_FUNCTION_275();
  v189 = static Electionspb_ElectionsResponse.== infix(_:_:)();
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v235);
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_180_2(v188);
  if ((v189 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_104:
  v190 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v190, &v261);
  OUTLINED_FUNCTION_115_2();
  v191 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521(v191, &v260);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v192 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v192, v193, v231);
  if (!v76)
  {
    v194 = v234;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v194, 1, v231);
    if (!v195)
    {
      v196 = v234;
      sub_1B8E46784();
      v197 = OUTLINED_FUNCTION_275();
      v199 = static Nlgpb_NlgDialog.== infix(_:_:)(v197, v198);
      OUTLINED_FUNCTION_128();
      sub_1B8E46834();
      OUTLINED_FUNCTION_180_2(v230);
      OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_180_2(v196);
      if (v199)
      {
        goto LABEL_114;
      }

      goto LABEL_17;
    }

    sub_1B8D9207C(v230, &qword_1EBABBD40, &qword_1B965A640);
    sub_1B8E46834();
    goto LABEL_112;
  }

  sub_1B8D9207C(v230, &qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v234, 1, v231);
  if (!v76)
  {
LABEL_112:
    v118 = &qword_1EBABC200;
    v119 = &qword_1B965C700;
    v120 = v234;
    goto LABEL_47;
  }

  sub_1B8D9207C(v234, &qword_1EBABBD40, &qword_1B965A640);
LABEL_114:
  v200 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v200, &v259);
  OUTLINED_FUNCTION_115_2();
  v201 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521(v201, &v258);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v202 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v202, v203, v227);
  if (!v76)
  {
    v204 = v220;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v204, 1, v227);
    if (!v205)
    {
      OUTLINED_FUNCTION_23_6();
      v209 = v221;
      sub_1B8E46784();
      if (*(v224 + *(v227 + 20)) == *(v209 + *(v227 + 20)) || (, , v210 = OUTLINED_FUNCTION_543(), sub_1B8E5DB18(v210, v211), OUTLINED_FUNCTION_225_1(), , , (&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_18();
        sub_1B8CD1D90(v212, v213, MEMORY[0x1E69AAC10]);
        sub_1B964C850();

        sub_1B8E46834();
        OUTLINED_FUNCTION_180_2(v226);
        OUTLINED_FUNCTION_196();
        sub_1B8E46834();
        OUTLINED_FUNCTION_180_2(v220);
        goto LABEL_18;
      }

      sub_1B8E46834();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v214, v215, v216);
      sub_1B8E46834();
      OUTLINED_FUNCTION_176_2();
      goto LABEL_123;
    }

    sub_1B8D9207C(v226, &qword_1EBABBD48, &qword_1B965A648);
    sub_1B8E46834();
LABEL_122:
    v206 = &qword_1EBABC1F8;
    v207 = &qword_1B965C6F8;
    v208 = v220;
LABEL_123:
    sub_1B8D9207C(v208, v206, v207);
    goto LABEL_18;
  }

  sub_1B8D9207C(v226, &qword_1EBABBD48, &qword_1B965A648);
  OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v220, 1, v227);
  if (!v76)
  {
    goto LABEL_122;
  }

  sub_1B8D9207C(v220, &qword_1EBABBD48, &qword_1B965A648);
LABEL_18:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E46784()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E467DC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E46834()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E46964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1A8, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E469E4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E46A54(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E46AD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB78);
  __swift_project_value_buffer(v0, qword_1EBABBB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "KGQS";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WEB";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KNOSIS";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E46D00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB90);
  __swift_project_value_buffer(v0, qword_1EBABBB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 1;
  *v8 = "SINGLE_ENTITY";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "FOOD_NUTRITION_GENERIC_FACT";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FOOD_NUTRITION_SPECIFIC_NUTRIENT";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DICTIONARY";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ELECTION";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "COVID";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SOUND";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "EVENT";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PARENT_CHILD";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CHILD_ENTITY_HAS_LOCALIZED_CLAIMS";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "LOCALIZE_WITHIN_RENDER_LOCALIZATION";
  *(v28 + 1) = 35;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_DisplayableMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_DisplayableMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_DisplayableMetadata.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v6 = sub_1B8CD1D90(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B8E47378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1A0, type metadata accessor for Kgqsapipb_DisplayableMetadata, "q");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E473F8(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata, protocol conformance descriptor for Kgqsapipb_DisplayableMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E47468(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata, protocol conformance descriptor for Kgqsapipb_DisplayableMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E47500()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBBC0);
  __swift_project_value_buffer(v0, qword_1EBABBBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_PerfMetric.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_PerfMetric.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v0))
    {
      type metadata accessor for Kgqsapipb_PerfMetric(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_PerfMetric.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_PerfMetric(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v8 = sub_1B8CD1D90(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E4791C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC198, type metadata accessor for Kgqsapipb_PerfMetric, protocol conformance descriptor for Kgqsapipb_PerfMetric);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4799C(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric, ")");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E47A0C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric, ")");

  return sub_1B964C5D0();
}

uint64_t sub_1B8E47AA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBBD8);
  __swift_project_value_buffer(v0, qword_1EBABBBD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "wikidata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wikipedia";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parent";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attributes";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "features";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "additionalEntityInfo";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E47E4C(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8E47F00(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8E47FB4(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8E48054(v7, v8, v9, v10);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B8E48108(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E47E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_KGEntity(0);
  type metadata accessor for Kgqsapipb_Entity(0);
  sub_1B8CD1D90(&qword_1EBABBDC8, type metadata accessor for Kgqsapipb_Entity, protocol conformance descriptor for Kgqsapipb_Entity);
  return sub_1B964C580();
}

uint64_t sub_1B8E47F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_KGEntity(0);
  type metadata accessor for Kgqsapipb_Thing(0);
  sub_1B8CD1D90(&qword_1EBABBDC0, type metadata accessor for Kgqsapipb_Thing, protocol conformance descriptor for Kgqsapipb_Thing);
  return sub_1B964C580();
}

uint64_t sub_1B8E47FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_Claim(0);
  sub_1B8CD1D90(&qword_1EBABBDA0, type metadata accessor for Kgqsapipb_Claim, protocol conformance descriptor for Kgqsapipb_Claim);
  return sub_1B964C570();
}

uint64_t sub_1B8E48054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_KGEntity(0);
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures, protocol conformance descriptor for Kgqsapipb_EntityFeatures);
  return sub_1B964C580();
}

uint64_t sub_1B8E48108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_AttributeStore(0);
  sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore);
  sub_1B8CD1D90(&qword_1EBABBDB0, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore);
  return sub_1B964C3A0();
}

void Kgqsapipb_KGEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD60, &unk_1B965A660);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v25 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v24 = type metadata accessor for Kgqsapipb_EntityFeatures(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD58, &qword_1B965A658);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_231_1();
  v26 = type metadata accessor for Kgqsapipb_Thing(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD50, &qword_1B965A650);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_22_3();
  v16 = type metadata accessor for Kgqsapipb_Entity(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v18 = OUTLINED_FUNCTION_186_1();
  type metadata accessor for Kgqsapipb_KGEntity(v18);
  sub_1B8D92024();
  v19 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v19, v20, v16) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBABBD50, &qword_1B965A650);
    v21 = v1;
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBDC8, type metadata accessor for Kgqsapipb_Entity, protocol conformance descriptor for Kgqsapipb_Entity);
    sub_1B964C740();
    v21 = v1;
    sub_1B8E46834();
    if (v1)
    {
      goto LABEL_17;
    }
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v3, 1, v26) == 1)
  {
    sub_1B8D9207C(v3, &qword_1EBABBD58, &qword_1B965A658);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBDC0, type metadata accessor for Kgqsapipb_Thing, protocol conformance descriptor for Kgqsapipb_Thing);
    v1 = v21;
    sub_1B964C740();
    OUTLINED_FUNCTION_275();
    sub_1B8E46834();
    if (v21)
    {
      goto LABEL_17;
    }
  }

  if (*v4 != 1 || (v1 = v21, sub_1B964C670(), !v21))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for Kgqsapipb_Claim(0), OUTLINED_FUNCTION_131_2(), sub_1B8CD1D90(v22, v23, protocol conformance descriptor for Kgqsapipb_Claim), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_230_1(), sub_1B964C730(), (v21 = v1) == 0))
    {
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
      {
        sub_1B8D9207C(v25, &qword_1EBABBD60, &unk_1B965A660);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures, protocol conformance descriptor for Kgqsapipb_EntityFeatures);
        OUTLINED_FUNCTION_230_1();
        sub_1B964C740();
        v21 = v1;
        sub_1B8E46834();
        if (v1)
        {
          goto LABEL_17;
        }
      }

      if (!*(*(v4 + 16) + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_AttributeStore(0), sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore), sub_1B8CD1D90(&qword_1EBABBDB0, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore), sub_1B964C5E0(), !v21))
      {
        sub_1B964C290();
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_272_0();
}

void static Kgqsapipb_KGEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v66 = type metadata accessor for Kgqsapipb_EntityFeatures(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v63 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD60, &unk_1B965A660);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v64 = v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBDD0, &qword_1B965A680);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v67 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v71 = type metadata accessor for Kgqsapipb_Thing(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v68 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD58, &qword_1B965A658);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v69 = v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBDD8, &qword_1B965A688);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_185();
  v72 = v20;
  v21 = OUTLINED_FUNCTION_201();
  v22 = type metadata accessor for Kgqsapipb_Entity(v21);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD50, &qword_1B965A650);
  OUTLINED_FUNCTION_183(v27);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_231_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBDE0, &unk_1B965A690) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Kgqsapipb_KGEntity(v31);
  v32 = *(v29 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v33)
  {
    OUTLINED_FUNCTION_37_0(v0 + v32);
    if (v33)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD50, &qword_1B965A650);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v32);
  if (v33)
  {
    sub_1B8E46834();
LABEL_9:
    v34 = &qword_1EBABBDE0;
    v35 = &unk_1B965A690;
LABEL_10:
    v36 = v0;
LABEL_24:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_22_6();
  sub_1B8E46784();
  if (*(v1 + *(v22 + 20)) != *(v26 + *(v22 + 20)))
  {

    sub_1B8E6EBC8();
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      sub_1B8E46834();
      sub_1B8E46834();
      v34 = &qword_1EBABBD50;
      v35 = &qword_1B965A650;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v39, v40, MEMORY[0x1E69AAC10]);
  v41 = sub_1B964C850();
  sub_1B8E46834();
  sub_1B8E46834();
  sub_1B8D9207C(v0, &qword_1EBABBD50, &qword_1B965A650);
  if ((v41 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v42 = *(v70 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v43 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v43, v44, v71);
  if (v33)
  {
    OUTLINED_FUNCTION_178(v72 + v42, 1, v71);
    if (v33)
    {
      sub_1B8D9207C(v72, &qword_1EBABBD58, &qword_1B965A658);
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v72 + v42, 1, v71);
  if (v45)
  {
    sub_1B8E46834();
LABEL_22:
    v34 = &qword_1EBABBDD8;
    v35 = &qword_1B965A688;
LABEL_23:
    v36 = v72;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21_5();
  sub_1B8E46784();
  v46 = *(v71 + 20);
  v47 = *(v69 + v46);
  v48 = *(v68 + v46);
  if (v47 != v48 && !sub_1B8E8B8CC(v47, v48))
  {
    sub_1B8E46834();
    OUTLINED_FUNCTION_182();
    sub_1B8E46834();
    v34 = &qword_1EBABBD58;
    v35 = &qword_1B965A658;
    goto LABEL_23;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v49, v50, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_461();
  v51 = sub_1B964C850();
  sub_1B8E46834();
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  sub_1B8D9207C(v72, &qword_1EBABBD58, &qword_1B965A658);
  if ((v51 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  if (*v5 != *v3)
  {
    goto LABEL_25;
  }

  sub_1B8D7C6CC(*(v5 + 1), *(v3 + 1));
  if ((v52 & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = *(v65 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v54 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v54, v55, v66);
  if (!v33)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v67 + v53, 1, v66);
    if (!v59)
    {
      OUTLINED_FUNCTION_20_2();
      sub_1B8E46784();
      if (*v64 == *v63)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_18();
        sub_1B8CD1D90(v60, v61, MEMORY[0x1E69AAC10]);
        v62 = sub_1B964C850();
        sub_1B8E46834();
        OUTLINED_FUNCTION_217_0();
        sub_1B8D9207C(v67, &qword_1EBABBD60, &unk_1B965A660);
        if ((v62 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

      sub_1B8E46834();
      sub_1B8E46834();
      v34 = &qword_1EBABBD60;
      v35 = &unk_1B965A660;
      goto LABEL_44;
    }

    sub_1B8E46834();
LABEL_43:
    v34 = &qword_1EBABBDD0;
    v35 = &qword_1B965A680;
LABEL_44:
    v36 = v67;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_178(v67 + v53, 1, v66);
  if (!v33)
  {
    goto LABEL_43;
  }

  sub_1B8D9207C(v67, &qword_1EBABBD60, &unk_1B965A660);
LABEL_36:
  sub_1B8DB2224();
  if (v56)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_18();
    sub_1B8CD1D90(v57, v58, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

LABEL_25:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E4916C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC190, type metadata accessor for Kgqsapipb_KGEntity, protocol conformance descriptor for Kgqsapipb_KGEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E491EC(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity, protocol conformance descriptor for Kgqsapipb_KGEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4925C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity, protocol conformance descriptor for Kgqsapipb_KGEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E492DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBBF0);
  __swift_project_value_buffer(v0, qword_1EBABBBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SONGS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ALBUMS";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CONCERTS";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RELATED_ENTITIES";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TV_EXTRA_CONTENT";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RELEASED_ALBUMS_IN_LAST_60_DAYS";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E49608()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC08);
  __swift_project_value_buffer(v0, qword_1EBABBC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attributes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "debugInfo";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Kgqsapipb_AttributeStore.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8E498A8(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8E4E644();
    }
  }
}

uint64_t sub_1B8E498A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_AttributeStore(0);
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo, protocol conformance descriptor for Kgqsapipb_DebugInfo);
  return sub_1B964C580();
}

void Kgqsapipb_AttributeStore.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A78, &qword_1B96507A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_186_1();
  v6 = type metadata accessor for Kgqsapipb_DebugInfo(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  if (!*(*v0 + 16) || (type metadata accessor for Kgqsapipb_Claim(0), OUTLINED_FUNCTION_131_2(), sub_1B8CD1D90(v8, v9, protocol conformance descriptor for Kgqsapipb_Claim), OUTLINED_FUNCTION_231(), sub_1B964C730(), !v1))
  {
    type metadata accessor for Kgqsapipb_AttributeStore(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9A78, &qword_1B96507A0);
LABEL_6:
      OUTLINED_FUNCTION_491();
      sub_1B964C290();
      goto LABEL_7;
    }

    sub_1B8E46784();
    OUTLINED_FUNCTION_129_1();
    sub_1B8CD1D90(v10, v11, protocol conformance descriptor for Kgqsapipb_DebugInfo);
    sub_1B964C740();
    sub_1B8E46834();
    if (!v1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_272_0();
}

void static Kgqsapipb_AttributeStore.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A78, &qword_1B96507A0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A80, &qword_1B96507A8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  sub_1B8D7C6CC(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v27[1] = type metadata accessor for Kgqsapipb_AttributeStore(0);
  v14 = *(v9 + 48);
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v12);
  if (v15)
  {
    OUTLINED_FUNCTION_37_0(&v12[v14]);
    if (v15)
    {
      sub_1B8D9207C(v12, &qword_1EBAB9A78, &qword_1B96507A0);
LABEL_16:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_18();
      sub_1B8CD1D90(v25, v26, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v12[v14]);
  if (v15)
  {
    OUTLINED_FUNCTION_234_1();
LABEL_10:
    v16 = &qword_1EBAB9A80;
    v17 = &qword_1B96507A8;
LABEL_11:
    sub_1B8D9207C(v12, v16, v17);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1B8E46784();
  v18 = *(v5 + 20);
  v19 = *(v3 + v18);
  v20 = *(v2 + v18);
  if (v19 != v20)
  {

    v21 = sub_1B8E4D1E4(v19, v20);

    if (!v21)
    {
      sub_1B8E46834();
      sub_1B8E46834();
      v16 = &qword_1EBAB9A78;
      v17 = &qword_1B96507A0;
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v22, v23, MEMORY[0x1E69AAC10]);
  v24 = sub_1B964C850();
  sub_1B8E46834();
  sub_1B8E46834();
  sub_1B8D9207C(v12, &qword_1EBAB9A78, &qword_1B96507A0);
  if (v24)
  {
    goto LABEL_16;
  }

LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E49F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC188, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E49FF4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4A064(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore, protocol conformance descriptor for Kgqsapipb_AttributeStore);

  return sub_1B964C5D0();
}

uint64_t Kgqsapipb_EntityFeatures.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_EntityFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
  {
    type metadata accessor for Kgqsapipb_EntityFeatures(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_EntityFeatures.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v4 = sub_1B8CD1D90(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B8E4A308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC180, type metadata accessor for Kgqsapipb_EntityFeatures, protocol conformance descriptor for Kgqsapipb_EntityFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4A388(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures, protocol conformance descriptor for Kgqsapipb_EntityFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4A3F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures, protocol conformance descriptor for Kgqsapipb_EntityFeatures);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4A490()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC38);
  __swift_project_value_buffer(v0, qword_1EBABBC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "wikidataId";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "wikipediaId";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "thumbnailUrl";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ontologyPaths";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "entitySyn";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_EntityInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E4A854(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E4A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_OntologyPath(0);
  sub_1B8CD1D90(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_EntityInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
          {
            if (!*(*(v1 + 80) + 16) || (type metadata accessor for Kgqsapipb_OntologyPath(0), sub_1B8CD1D90(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v8 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
              {
                type metadata accessor for Kgqsapipb_EntityInfo(0);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_EntityInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7CD18(v2[10], v1[10]);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v2[11] == v1[11] && v2[12] == v1[12];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_EntityInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v16 = sub_1B8CD1D90(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t sub_1B8E4AC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC178, type metadata accessor for Kgqsapipb_EntityInfo, protocol conformance descriptor for Kgqsapipb_EntityInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4ACB4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo, protocol conformance descriptor for Kgqsapipb_EntityInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4AD24(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo, protocol conformance descriptor for Kgqsapipb_EntityInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4ADBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC50);
  __swift_project_value_buffer(v0, qword_1EBABBC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "code";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "description";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "messages";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "pattern";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "dbQueryPattern";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "encodedIntent";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "maxPopularityScore";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "queryEntities";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "fedPatterns";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "intentFeatures";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "canonResultId";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "quality";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "productionRules";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "referEntityIdx";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "encodedContext";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "encodedIntentProto";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "maxEntityScore";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "algorithm";
  *(v40 + 1) = 9;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "intentName";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E4B3EC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8E4B43C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = v1;
  *(v0 + 112) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures;
  v3 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID) = 0;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8E4B540(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v62 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = 0;
  v63 = (v1 + 56);
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = v5;
  *(v1 + 80) = 0;
  v64 = (v1 + 80);
  *(v1 + 96) = 0;
  v65 = (v1 + 96);
  *(v1 + 104) = v5;
  v66 = (v1 + 104);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 112) = v5;
  v67 = (v1 + 112);
  v6 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures;
  v7 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v68 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID) = 0;
  v8 = v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  v70 = v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  *v8 = 0;
  *(v8 + 8) = 1;
  v71 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules) = v5;
  v72 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx) = 0;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  v73 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  v74 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v75 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore) = 0;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  v76 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  v77 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  swift_beginAccess();
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v13;
  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v15;
  *(v1 + 40) = v16;

  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;

  swift_beginAccess();
  v19 = *(a1 + 56);
  v18 = *(a1 + 64);
  v20 = v63;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 64) = v18;

  swift_beginAccess();
  v21 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v21;

  swift_beginAccess();
  v23 = *(a1 + 80);
  v22 = *(a1 + 88);
  v24 = v64;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 88) = v22;

  swift_beginAccess();
  v25 = *(a1 + 96);
  v26 = v65;
  swift_beginAccess();
  *v26 = v25;
  swift_beginAccess();
  v27 = *(a1 + 104);
  v28 = v66;
  swift_beginAccess();
  *v28 = v27;

  swift_beginAccess();
  v29 = *(a1 + 112);
  v30 = v67;
  swift_beginAccess();
  *v30 = v29;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v68;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = v70;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  v37 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  swift_beginAccess();
  v38 = *(a1 + v37);
  v39 = v71;
  swift_beginAccess();
  *(v1 + v39) = v38;

  v40 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  swift_beginAccess();
  LODWORD(v40) = *(a1 + v40);
  v41 = v72;
  swift_beginAccess();
  *(v1 + v41) = v40;
  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  swift_beginAccess();
  v44 = *v42;
  v43 = v42[1];
  v45 = v73;
  swift_beginAccess();
  *v45 = v44;
  v45[1] = v43;

  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v74;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v75;
  swift_beginAccess();
  *(v1 + v52) = v51;
  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  v56 = v76;
  swift_beginAccess();
  *v56 = v55;
  v56[1] = v54;

  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];

  v60 = v77;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  return v1;
}

void *sub_1B8E4BCA0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures, &qword_1EBABBD68, &unk_1B965A670);

  return v0;
}

uint64_t sub_1B8E4BD90(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B8E4BE40()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = v18(v17);
    *(v6 + v14) = v16;
  }

  v2(v16, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8E4BEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E4C21C();
        continue;
      case 2:
        sub_1B8DC46F4(a2, a1);
        continue;
      case 3:
        sub_1B8E4C27C(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8E4C300();
        continue;
      case 5:
        sub_1B8E4C360(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B8E4C3E4();
        continue;
      case 7:
        sub_1B8DD5A0C(a2, a1, a3, a4);
        continue;
      case 8:
        sub_1B8E4C444(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B8E16C58(a2, a1, a3, a4);
        continue;
      case 10:
        sub_1B8E4C510(a2, a1, a3, a4);
        continue;
      case 11:
        v11 = MEMORY[0x1E69AACA8];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
        goto LABEL_19;
      case 12:
        sub_1B8E4C5EC(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality, sub_1B8E5335C, &type metadata for Kgqsapipb_DebugInfo.Quality);
        continue;
      case 13:
        v11 = MEMORY[0x1E69AACB8];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
        goto LABEL_19;
      case 14:
        sub_1B8E4C684();
        continue;
      case 15:
      case 16:
      case 18:
      case 19:
        sub_1B8E4C770();
        continue;
      case 17:
        v11 = MEMORY[0x1E69AACD0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
LABEL_19:
        sub_1B8E4C6E8(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E4C21C()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8E4C27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E4C300()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8E4C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E4C3E4()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8E4C444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_EntityInfo(0);
  sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo, protocol conformance descriptor for Kgqsapipb_EntityInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E4C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_IntentFeatures(0);
  sub_1B8CD1D90(&qword_1EBABB918, type metadata accessor for Kgqsapipb_IntentFeatures, protocol conformance descriptor for Kgqsapipb_IntentFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E4C5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  v9 = sub_1B964C420();
  return OUTLINED_FUNCTION_199_1(v9);
}

uint64_t sub_1B8E4C684()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v0 = sub_1B964C4A0();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8E4C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_134_2();
  v10 = v9;
  v12 = *v11;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v13 = a6(v10 + v12, v7, v6);
  return OUTLINED_FUNCTION_199_1(v13);
}

uint64_t sub_1B8E4C770()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8E4C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_145_2();
  v7(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E4C878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v45 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  MEMORY[0x1EEE9AC00](v45);
  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 64);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 72) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 88);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_27;
    }
  }

LABEL_27:
  swift_beginAccess();
  if (*(a1 + 96) == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    swift_beginAccess();
    v42 = *(a1 + 104);
    if (*(v42 + 16))
    {
      type metadata accessor for Kgqsapipb_EntityInfo(0);
      sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo, protocol conformance descriptor for Kgqsapipb_EntityInfo);

      sub_1B964C730();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (*(*(a1 + 112) + 16))
    {

      sub_1B964C6E0();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v9, 1, v45) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBABBD68, &unk_1B965A670);
    }

    else
    {
      sub_1B8E46784();
      sub_1B8CD1D90(&qword_1EBABB918, type metadata accessor for Kgqsapipb_IntentFeatures, protocol conformance descriptor for Kgqsapipb_IntentFeatures);
      sub_1B964C740();
      result = sub_1B8E46834();
      if (v4)
      {
        return result;
      }
    }

    v19 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
    swift_beginAccess();
    if (!*(a1 + v19) || (result = sub_1B964C6D0(), !v4))
    {
      v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality);
      swift_beginAccess();
      if (!*v20 || (v21 = *(v20 + 8), v43 = *v20, v44 = v21, sub_1B8E5335C(), result = sub_1B964C680(), !v4))
      {
        v22 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
        swift_beginAccess();
        if (!*(*(a1 + v22) + 16) || (, sub_1B964C6E0(), result = , !v4))
        {
          v23 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
          swift_beginAccess();
          if (!*(a1 + v23) || (result = sub_1B964C6C0(), !v4))
          {
            v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
            swift_beginAccess();
            v25 = *v24;
            v26 = v24[1];
            v27 = HIBYTE(v26) & 0xF;
            if ((v26 & 0x2000000000000000) == 0)
            {
              v27 = v25 & 0xFFFFFFFFFFFFLL;
            }

            if (!v27 || (, sub_1B964C700(), result = , !v5))
            {
              v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
              swift_beginAccess();
              v29 = *v28;
              v30 = v28[1];
              v31 = HIBYTE(v30) & 0xF;
              if ((v30 & 0x2000000000000000) == 0)
              {
                v31 = v29 & 0xFFFFFFFFFFFFLL;
              }

              if (!v31 || (, sub_1B964C700(), result = , !v5))
              {
                v32 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
                swift_beginAccess();
                if (*(a1 + v32) == 0.0 || (result = sub_1B964C6F0(), !v5))
                {
                  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
                  swift_beginAccess();
                  v34 = *v33;
                  v35 = v33[1];
                  v36 = HIBYTE(v35) & 0xF;
                  if ((v35 & 0x2000000000000000) == 0)
                  {
                    v36 = v34 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v36 || (, sub_1B964C700(), result = , !v5))
                  {
                    v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
                    result = swift_beginAccess();
                    v38 = *v37;
                    v39 = v37[1];
                    v40 = HIBYTE(v39) & 0xF;
                    if ((v39 & 0x2000000000000000) == 0)
                    {
                      v40 = v38 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v40)
                    {

                      sub_1B964C700();
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

  return result;
}

uint64_t sub_1B8E4D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_177_1();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v11, v12, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8E4D1E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC1E0, &qword_1B965C6F0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v73 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_181_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - v13;
  OUTLINED_FUNCTION_521(a1 + 16, v111);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v110);
  v17 = v16 == *(a2 + 16) && v15 == *(a2 + 24);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v109);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  OUTLINED_FUNCTION_521(a2 + 32, v108);
  v20 = v18 == *(a2 + 32) && v19 == *(a2 + 40);
  if (!v20 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v107);
  v21 = *(a1 + 48);
  OUTLINED_FUNCTION_521(a2 + 48, v106);
  if ((sub_1B8D6123C(v21, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 56, &v105);
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  OUTLINED_FUNCTION_521(a2 + 56, &v104);
  v24 = v22 == *(a2 + 56) && v23 == *(a2 + 64);
  if (!v24 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 72, &v103);
  v25 = *(a1 + 72);
  OUTLINED_FUNCTION_521(a2 + 72, &v102);
  if ((sub_1B8D6123C(v25, *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 80, &v101);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  OUTLINED_FUNCTION_521(a2 + 80, &v100);
  v28 = v26 == *(a2 + 80) && v27 == *(a2 + 88);
  if (!v28 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 96, &v99);
  v29 = *(a1 + 96);
  OUTLINED_FUNCTION_521(a2 + 96, &v98);
  if (v29 != *(a2 + 96))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 104, &v97);
  v30 = *(a1 + 104);
  OUTLINED_FUNCTION_521(a2 + 104, &v96);
  v31 = *(a2 + 104);

  sub_1B8D88B28(v30, v31);
  v72 = v32;

  if ((v72 & 1) == 0)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_521(a1 + 112, &v95);
  v33 = *(a1 + 112);
  OUTLINED_FUNCTION_521(a2 + 112, &v94);
  if ((sub_1B8D6123C(v33, *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures, &v93);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures, &v92);
  v34 = *(v7 + 48);
  v35 = v73;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v35, 1, v5);
  if (!v17)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v35 + v34, 1, v5);
    if (!v36)
    {
      sub_1B8E46784();
      v37 = static Kgqsapipb_IntentFeatures.== infix(_:_:)(v2);
      OUTLINED_FUNCTION_186();
      sub_1B8E46834();
      sub_1B8D9207C(v14, &qword_1EBABBD68, &unk_1B965A670);
      OUTLINED_FUNCTION_275();
      sub_1B8E46834();
      sub_1B8D9207C(v35, &qword_1EBABBD68, &unk_1B965A670);
      if (v37)
      {
        goto LABEL_36;
      }

LABEL_62:

      return 0;
    }

    sub_1B8D9207C(v14, &qword_1EBABBD68, &unk_1B965A670);
    sub_1B8E46834();
LABEL_34:
    sub_1B8D9207C(v35, &qword_1EBABC1E0, &qword_1B965C6F0);
    goto LABEL_62;
  }

  sub_1B8D9207C(v14, &qword_1EBABBD68, &unk_1B965A670);
  OUTLINED_FUNCTION_178(v35 + v34, 1, v5);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1B8D9207C(v35, &qword_1EBABBD68, &unk_1B965A670);
LABEL_36:
  v38 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID, &v91);
  v39 = *(a1 + v38);
  v40 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID, &v90);
  if (v39 != *(a2 + v40))
  {
    goto LABEL_62;
  }

  v41 = a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality, &v89);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = (a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality, &v88);
  if (!sub_1B8D92198(v42, v43, *v44))
  {
    goto LABEL_62;
  }

  v45 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules, &v87);
  v46 = *(a1 + v45);
  v47 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules, &v86);
  if ((sub_1B8D6123C(v46, *(a2 + v47)) & 1) == 0)
  {
    goto LABEL_62;
  }

  v48 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx, &v85);
  LODWORD(v48) = *(a1 + v48);
  v49 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx, &v84);
  if (v48 != *(a2 + v49))
  {
    goto LABEL_62;
  }

  v50 = a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext, &v83);
  v51 = *(v50 + 8);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext, &v82);
  OUTLINED_FUNCTION_219_1();
  if (!v17 || v51 != v52)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v54 = a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto, &v81);
  v55 = *(v54 + 8);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto, &v80);
  OUTLINED_FUNCTION_219_1();
  if (!v17 || v55 != v56)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v58 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore, &v79);
  v59 = *(a1 + v58);
  v60 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore, &v78);
  if (v59 != *(a2 + v60))
  {
    goto LABEL_62;
  }

  v61 = a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm, &v77);
  v62 = *(v61 + 8);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm, &v76);
  OUTLINED_FUNCTION_219_1();
  if (!v17 || v62 != v63)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName, &v75);
  v66 = *v65;
  v67 = v65[1];
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName, &v74);
  OUTLINED_FUNCTION_219_1();
  if (!v17 || v67 != v68)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B964C9F0();
    OUTLINED_FUNCTION_225_1();

    return (v66 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B8E4DA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC170, type metadata accessor for Kgqsapipb_DebugInfo, protocol conformance descriptor for Kgqsapipb_DebugInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4DA84(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo, protocol conformance descriptor for Kgqsapipb_DebugInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4DAF4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo, protocol conformance descriptor for Kgqsapipb_DebugInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4DB74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC70);
  __swift_project_value_buffer(v0, qword_1EBABBC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BAD";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MEDIUM";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GOOD";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E4DDE4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC88);
  __swift_project_value_buffer(v0, qword_1EBABBC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "canonResultId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "queryId";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGDebugContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t Kgqsapipb_KGDebugContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        type metadata accessor for Kgqsapipb_KGDebugContext(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_KGDebugContext.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (v2[2] != v1[2])
  {
    return 0;
  }

  v6 = v2[3] == v1[3] && v2[4] == v1[4];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_KGDebugContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v9 = sub_1B8CD1D90(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E4E284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC168, type metadata accessor for Kgqsapipb_KGDebugContext, protocol conformance descriptor for Kgqsapipb_KGDebugContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4E304(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBFE0, type metadata accessor for Kgqsapipb_KGDebugContext, protocol conformance descriptor for Kgqsapipb_KGDebugContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4E374(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBFE0, type metadata accessor for Kgqsapipb_KGDebugContext, protocol conformance descriptor for Kgqsapipb_KGDebugContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4E424(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v15 + 104))(v13, v14);
  return sub_1B964C760();
}

void Kgqsapipb_DebugInfoContainer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8E4E644();
    }
  }
}

void sub_1B8E4E644()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v2(0);
  v3 = OUTLINED_FUNCTION_128();
  sub_1B8CD1D90(v3, v4, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Kgqsapipb_DebugInfoContainer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Kgqsapipb_DebugInfo(0), OUTLINED_FUNCTION_129_1(), sub_1B8CD1D90(v2, v3, protocol conformance descriptor for Kgqsapipb_DebugInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Kgqsapipb_DebugInfoContainer(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_DebugInfoContainer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D7AE40(*v0, *v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_DebugInfoContainer(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v5 = sub_1B8CD1D90(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8E4E898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC160, type metadata accessor for Kgqsapipb_DebugInfoContainer, protocol conformance descriptor for Kgqsapipb_DebugInfoContainer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4E918(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBFF8, type metadata accessor for Kgqsapipb_DebugInfoContainer, protocol conformance descriptor for Kgqsapipb_DebugInfoContainer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4E988(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBFF8, type metadata accessor for Kgqsapipb_DebugInfoContainer, protocol conformance descriptor for Kgqsapipb_DebugInfoContainer);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4EA14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBCB8);
  __swift_project_value_buffer(v0, qword_1EBABBCB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "hasMapCoordinates";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "latitude";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "longitude";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isAnyDisputed";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "slideInTitle";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasInstantAnswer";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "answerType";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isSiriJrSnippetPresent";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_RenderFeatures.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 6:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E4EE4C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_RenderFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
  {
    if (*(v3 + 4) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), (v0 = v2) == 0))
    {
      if (*(v3 + 8) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), (v0 = v2) == 0))
      {
        if (*(v3 + 12) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v0 = v2) == 0))
          {
            if (*(v3 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
            {
              if (!*(v3 + 40) || (sub_1B8E5090C(), v2 = v0, result = sub_1B964C680(), !v0))
              {
                if (*(v3 + 49) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v2))
                {
                  type metadata accessor for Kgqsapipb_RenderFeatures(0);
                  return OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_RenderFeatures.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 32) != *(v2 + 32) || !sub_1B8D92198(*(v3 + 40), *(v3 + 48), *(v2 + 40)) || *(v3 + 49) != *(v2 + 49))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_RenderFeatures(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v12 = sub_1B8CD1D90(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8E4F1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC158, type metadata accessor for Kgqsapipb_RenderFeatures, protocol conformance descriptor for Kgqsapipb_RenderFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4F274(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures, protocol conformance descriptor for Kgqsapipb_RenderFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4F2E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures, protocol conformance descriptor for Kgqsapipb_RenderFeatures);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4F364()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBCD0);
  __swift_project_value_buffer(v0, qword_1EBABBCD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FOOD_NUTRITION_GENERIC_FACT";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FOOD_NUTRITION_SPECIFIC_NUTRIENT";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DICTIONARY";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ELECTION";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E4F624()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBCE8);
  __swift_project_value_buffer(v0, qword_1EBABBCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedName";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "placetype";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "containers";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_GeoEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E4F91C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}