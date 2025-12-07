uint64_t sub_19363DC70(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19363DCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19363DD68()
{
  v0 = OUTLINED_FUNCTION_222();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_1934487B4(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.clientTraceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0) + 20);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  sub_19344E6DC(v0 + v6, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
}

void static IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v39 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v38 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = *(v20 + 48);
  v40 = v0;
  sub_1934487B4(v0, &v38 - v21, &qword_1EAE3BCA0, &unk_19395C320);
  v41 = v2;
  sub_1934487B4(v2, &v22[v23], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v22);
  if (!v24)
  {
    sub_1934487B4(v22, v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v22[v23]);
    if (!v24)
    {
      v26 = v39;
      sub_19355A5F8(&v22[v23], v39);
      OUTLINED_FUNCTION_0_58();
      sub_19363D00C(v27, v28, &protocol conformance descriptor for AIML.UUID);
      v29 = sub_19393C550();
      sub_1934F8A10(v26);
      sub_1934F8A10(v13);
      sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    sub_1934F8A10(v13);
LABEL_9:
    v25 = v22;
LABEL_20:
    sub_19344E6DC(v25, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_31(&v22[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_11:
  v30 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0) + 20);
  v31 = *(v14 + 48);
  sub_1934487B4(v40 + v30, v18, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v41 + v30, v18 + v31, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v18);
  if (!v24)
  {
    v32 = v38;
    sub_1934487B4(v18, v38, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v18 + v31);
    if (!v33)
    {
      v34 = v39;
      sub_19355A5F8(v18 + v31, v39);
      OUTLINED_FUNCTION_0_58();
      v37 = sub_19363D00C(v35, v36, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_139(v37);
      sub_1934F8A10(v34);
      sub_1934F8A10(v32);
      sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_21;
    }

    sub_1934F8A10(v32);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v18 + v31);
  if (!v24)
  {
LABEL_19:
    v25 = v18;
    goto LABEL_20;
  }

  sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.hash(into:)()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  sub_1934487B4(v2, &v22 - v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_58();
    v16 = sub_19363D00C(v14, v15, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v16);
    sub_1934F8A10(v1);
  }

  v17 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
  sub_1934487B4(v2 + *(v17 + 20), v9, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v9);
  if (v13)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v9, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_58();
  v20 = sub_19363D00C(v18, v19, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_33(v20);
  return sub_1934F8A10(v1);
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowIFRequestTelemetryV0E13EventMetadataVAEycfC_0()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
}

void _s27IntelligencePlatformLibrary0A22FlowIFRequestTelemetryV0E13EventMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v32 = OUTLINED_FUNCTION_47(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_150();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v34 = OUTLINED_FUNCTION_47(v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &a9 - v36;
  v38 = *(v35 + 56);
  sub_1934487B4(v26, &a9 - v36, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v24, &v37[v38], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v37);
  if (!v39)
  {
    sub_1934487B4(v37, v20, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v37[v38]);
    if (!v39)
    {
      sub_19355A5F8(&v37[v38], v30);
      OUTLINED_FUNCTION_0_58();
      v42 = sub_19363D00C(v40, v41, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_139(v42);
      sub_1934F8A10(v30);
      sub_1934F8A10(v20);
      sub_19344E6DC(v37, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1934F8A10(v20);
LABEL_9:
    sub_19344E6DC(v37, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(&v37[v38]);
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v37, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowIFRequestTelemetryV0E13EventMetadataV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_150();
  sub_1934487B4(v1, v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_14_1(v2);
  if (v9)
  {
    return sub_19393CAD0();
  }

  sub_19355A5F8(v2, v6);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_58();
  sub_19363D00C(v10, v11, &protocol conformance descriptor for AIML.UUID);
  sub_19393C540();
  return sub_1934F8A10(v6);
}

unint64_t sub_19363E92C()
{
  result = qword_1EAE3F790;
  if (!qword_1EAE3F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F798, &qword_193975AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F790);
  }

  return result;
}

unint64_t sub_19363E994()
{
  result = qword_1EAE3F7A0;
  if (!qword_1EAE3F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7A0);
  }

  return result;
}

void sub_19363EB34(uint64_t a1)
{
  OUTLINED_FUNCTION_21_28(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_21_28(v2, qword_1ED506B58);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_21_28(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_21_28(v6, qword_1ED506AF8);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_21_28(v8, qword_1ED505DD0);
            if (v11 <= 0x3F)
            {
              OUTLINED_FUNCTION_21_28(v10, qword_1ED505CB8);
              if (v12 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_2();
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_19363ECB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_19363ED1C()
{
  sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED506AF0, &type metadata for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_5_45(v3, qword_1ED507908);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_19363EE28(uint64_t a1)
{
  OUTLINED_FUNCTION_5_45(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_19363EEA4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_45(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void OUTLINED_FUNCTION_21_28(uint64_t a1, unint64_t *a2)
{

  sub_19363ECB0(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1, uint64_t a2)
{

  return sub_1934487B4(a1, a2, v2, v3);
}

uint64_t sub_19363EF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511178);
  v4 = __swift_project_value_buffer(v3, qword_1ED511178);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.Transaction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:518400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_33 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511178);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B0, &qword_193975EC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.Transaction.attribute(_:)(void (*a1)(void))
{
  result = sub_19363F3B0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363F3EC(void (*a1)(void))
{
  result = sub_19363F3B0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363F454(uint64_t a1)
{
  result = sub_19363F47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19363F47C()
{
  result = qword_1ED503D38[0];
  if (!qword_1ED503D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED503D38);
  }

  return result;
}

_BYTE *_s11TransactionOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceTransaction.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_0_59();
  sub_193640D9C(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3F7B8, &qword_193975F38, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static WalletPaymentsCommerceTransaction.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3F7B8, &qword_193975F38, v31);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_0_59();
    sub_193640CE4(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceTransaction.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v33 = v3;
  v34 = v2;
  v32 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_1();
  v8 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  if (*sub_193644794() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    (*(v10 + 16))(v14, v16, v8);
    v17 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v17, v18);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v19, v20, v21, v22);
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v10 + 8))(v16, v8);
    if (!v0)
    {
      OUTLINED_FUNCTION_0_59();
      v24 = v33;
      sub_193640CE4(v1, v33, v25);
      v26 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
      v27 = *(v26 + 20);
      sub_19344E6DC(v24 + v27, &qword_1EAE3A9E8, &qword_19394F800);
      v28 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v29 + 16))(v24 + v27, v32, v28);
      __swift_storeEnumTagSinglePayload(v24 + v27, 0, 1, v28);
      v30 = *(v26 + 24);
      sub_19344E6DC(v24 + v30, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v34, v24 + v30);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v23 = v6;
    *(v23 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceTransaction.serialize()()
{
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  OUTLINED_FUNCTION_0_59();
  sub_193640D9C(v0, v1, v7);
  sub_1934470C8(v1, v2, v6);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v8, &qword_1EAE3F7B8, &qword_193975F38, v9);
  sub_19393C290();
  sub_19344E6DC(v6, &qword_1EAE3F7B8, &qword_193975F38);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceTransaction.columns.getter()
{
  v192 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x746E756F6D61, 0xE600000000000000, 2, 0, v1, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_12_24(v4);
  inited = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_3_47(inited, v6, v7, v8, v9, v10, v11, v12, xmmword_193950B10);
  OUTLINED_FUNCTION_6_42(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v23);
  OUTLINED_FUNCTION_31_27();
  result = sub_19343D150(v1, v24, 3, 0, v0, 0, 1);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_24(result);
  v25 = swift_initStackObject();
  v33 = OUTLINED_FUNCTION_3_47(v25, v26, v27, v28, v29, v30, v31, v32, v186);
  OUTLINED_FUNCTION_6_42(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v43 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v43);
  OUTLINED_FUNCTION_30_19();
  result = OUTLINED_FUNCTION_15_12(v1, v44);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_24(result);
  v45 = swift_initStackObject();
  v53 = OUTLINED_FUNCTION_3_47(v45, v46, v47, v48, v49, v50, v51, v52, v187);
  OUTLINED_FUNCTION_6_42(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  v63 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v63);
  v64 = OUTLINED_FUNCTION_22_29();
  result = OUTLINED_FUNCTION_15_12(v64, 0xEC00000065646F43);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_12_24(result);
  v65 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v75 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_42(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v85);
  result = OUTLINED_FUNCTION_15_12(0xD000000000000016, 0x8000000193A2ACF0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_12_24(result);
  v86 = swift_initStackObject();
  v94 = OUTLINED_FUNCTION_3_47(v86, v87, v88, v89, v90, v91, v92, v93, v188);
  OUTLINED_FUNCTION_6_42(v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v104 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v104);
  v105 = OUTLINED_FUNCTION_23_27();
  result = OUTLINED_FUNCTION_15_12(v105, 0xE800000000000000);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_24(result);
  v106 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v116 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_42(v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v126 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v126);
  v127 = OUTLINED_FUNCTION_49_1();
  result = OUTLINED_FUNCTION_14_32(v127, v128);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_24(result);
  v129 = swift_initStackObject();
  v137 = OUTLINED_FUNCTION_3_47(v129, v130, v131, v132, v133, v134, v135, v136, v189);
  OUTLINED_FUNCTION_6_42(v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  v147 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v147);
  v148 = OUTLINED_FUNCTION_18_4();
  result = OUTLINED_FUNCTION_14_32(v148 & 0xFFFFFFFFFFFFLL | 0x5474000000000000, 0xEB00000000657079);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_12_24(result);
  v149 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  v159 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_42(v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v169 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v169);
  v170 = OUTLINED_FUNCTION_49_1();
  result = OUTLINED_FUNCTION_14_32(v170, v171);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_12_24(result);
  v172 = swift_initStackObject();
  v180 = OUTLINED_FUNCTION_3_47(v172, v173, v174, v175, v176, v177, v178, v179, v190);
  *(v180 + 16) = v191;
  *(v180 + 32) = sub_19393C850();
  v181 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_32_23();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v182, v183, v184, v185, v180, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_12_24(result);
    return v192;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1936400CC()
{
  OUTLINED_FUNCTION_26();
  v80 = v0;
  v81 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v78 - v9;
  v10 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v19 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v23 = v6 == 0x746E756F6D61 && v4 == 0xE600000000000000;
  if (v23 || (OUTLINED_FUNCTION_59_0(0x746E756F6D61, 0xE600000000000000) & 1) != 0)
  {
    v24 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_33_18();
  v28 = v6 == 0x746E756F6D61 && v4 == v27;
  if (v28 || (OUTLINED_FUNCTION_59_0(0x746E756F6D61, v27) & 1) != 0)
  {
    v29 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
    sub_193448758(v80 + *(v29 + 32), v18, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      (*(v21 + 32))(v1, v18, v19);
      sub_1934948FC();
      (*(v21 + 8))(v1, v19);
      goto LABEL_19;
    }

    v30 = &qword_1EAE3A9E8;
    v31 = &qword_19394F800;
    v32 = v18;
LABEL_17:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_30_19();
  v35 = v6 == 0x746E756F6D61 && v4 == v34;
  if (v35 || (OUTLINED_FUNCTION_59_0(0x746E756F6D61, v34) & 1) != 0)
  {
    v24 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 36);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_22_29();
    v38 = v6 == v36 && v4 == v37;
    if (v38 || (OUTLINED_FUNCTION_59_0(v36, v37) & 1) != 0)
    {
      v24 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 40);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v40 = v6 == 0xD000000000000016 && v39 == v4;
      if (v40 || (OUTLINED_FUNCTION_59_0(0xD000000000000016, v39) & 1) != 0)
      {
        v24 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 44);
      }

      else
      {
        v41 = OUTLINED_FUNCTION_23_27();
        v42 = v6 == v41 && v4 == 0xE800000000000000;
        if (!v42 && (OUTLINED_FUNCTION_59_0(v41, 0xE800000000000000) & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          v44 = v6 == v43 && v4 == 0xE700000000000000;
          if (v44 || (OUTLINED_FUNCTION_59_0(v43, 0xE700000000000000) & 1) != 0)
          {
            v45 = (v80 + *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 52));
            v46 = v45[1];
            if (v46 != 1)
            {
              v82 = *v45;
              v83 = v46;
              v47 = *(v45 + 2);
              v84 = *(v45 + 1);
              v85 = v47;
              sub_193494798(&type metadata for WalletPaymentsCommerceTransaction.Account, &off_1F07DA318, v81);
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          v48 = OUTLINED_FUNCTION_20_31();
          v49 = v23 && v4 == 0xE800000000000000;
          if (!v49 && (OUTLINED_FUNCTION_59_0(v48, 0xE800000000000000) & 1) == 0)
          {
            OUTLINED_FUNCTION_38();
            v57 = v6 == 0xD000000000000011 && v56 == v4;
            if (v57 || (v58 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0(v58, v59) & 1) != 0))
            {
              type metadata accessor for WalletPaymentsCommerceTransaction(0);
              OUTLINED_FUNCTION_15_35();
              if (v61)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v62 = OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
              v64 = v6 == v62 && v4 == v63;
              if (v64 || (OUTLINED_FUNCTION_59_0(v62, v63) & 1) != 0)
              {
                type metadata accessor for WalletPaymentsCommerceTransaction(0);
                OUTLINED_FUNCTION_15_35();
                if (v65)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v67 = v6 == 0xD000000000000011 && v66 == v4;
                if (v67 || (v68 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0(v68, v69) & 1) != 0))
                {
                  type metadata accessor for WalletPaymentsCommerceTransaction(0);
                  OUTLINED_FUNCTION_15_35();
                  if (v70)
                  {
                    goto LABEL_18;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_32_23();
                  v72 = v6 == 0x746E756F6D61 && v4 == v71;
                  if (!v72 && (OUTLINED_FUNCTION_59_0(0x746E756F6D61, v71) & 1) == 0)
                  {
                    sub_19349AB64();
                    OUTLINED_FUNCTION_11();
                    swift_allocError();
                    v75 = v74;
                    *v74 = v6;
                    v74[1] = v4;
                    v74[5] = type metadata accessor for WalletPaymentsCommerceTransaction(0);
                    __swift_allocate_boxed_opaque_existential_1Tm(v75 + 2);
                    OUTLINED_FUNCTION_0_59();
                    sub_193640D9C(v80, v76, v77);
                    *(v75 + 48) = 1;
                    swift_willThrow();

                    goto LABEL_19;
                  }

                  type metadata accessor for WalletPaymentsCommerceTransaction(0);
                  OUTLINED_FUNCTION_15_35();
                  if (v73)
                  {
                    goto LABEL_18;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_5_46(v60);
            goto LABEL_9;
          }

          v50 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
          v51 = v79;
          sub_193448758(v80 + *(v50 + 56), v79, &qword_1EAE3F7C8, &qword_193975F40);
          if (__swift_getEnumTagSinglePayload(v51, 1, v10) != 1)
          {
            OUTLINED_FUNCTION_13_28();
            sub_193640CE4(v79, v14, v52);
            OUTLINED_FUNCTION_19_3();
            sub_193494798(v53, v54, v55);
            sub_193640D40(v14);
            goto LABEL_19;
          }

          v30 = &qword_1EAE3F7C8;
          v31 = &qword_193975F40;
          v32 = v79;
          goto LABEL_17;
        }

        v24 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 48);
      }
    }
  }

LABEL_7:
  v25 = (v80 + v24);
  v26 = *(v80 + v24 + 8);
  if (!v26)
  {
LABEL_18:
    v33 = v81;
    *v81 = 0u;
    *(v33 + 1) = 0u;
    goto LABEL_19;
  }

  v82 = *v25;
  v83 = v26;
LABEL_9:
  sub_1934948FC();
LABEL_19:
  OUTLINED_FUNCTION_27();
}

void sub_1936406FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_38();
  v18 = a1 == 0xD000000000000018 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_59_0(0xD000000000000018, v17) & 1) != 0)
  {
    v19 = v3[1];
    if (v19)
    {
      v20 = *v3;
LABEL_8:
      v40 = v20;
      v41 = v19;
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v21 = OUTLINED_FUNCTION_20_31();
  v23 = v18 && a2 == v22;
  if (v23 || (OUTLINED_FUNCTION_59_0(v21, v22) & 1) != 0)
  {
    v19 = v3[3];
    if (v19)
    {
      v20 = v3[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v24 = a1 == 0x4C5255626577 && a2 == 0xE600000000000000;
  if (!v24 && (OUTLINED_FUNCTION_59_0(0x4C5255626577, 0xE600000000000000) & 1) == 0)
  {
    v29 = a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL;
    if (v29 || (OUTLINED_FUNCTION_59_0(0x614E6E69616D6F64, 0xEA0000000000656DLL) & 1) != 0)
    {
      v30 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 28);
    }

    else
    {
      v32 = a1 == 0x686372654D626577 && a2 == 0xEF656D614E746E61;
      if (v32 || (OUTLINED_FUNCTION_59_0(0x686372654D626577, 0xEF656D614E746E61) & 1) != 0)
      {
        v30 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 32);
      }

      else
      {
        v33 = a1 == 0x6E6564496D616461 && a2 == 0xEE00726569666974;
        if (!v33 && (OUTLINED_FUNCTION_59_0(0x6E6564496D616461, 0xEE00726569666974) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v35 = v34;
          *v34 = a1;
          v34[1] = a2;
          v34[5] = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
          __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
          OUTLINED_FUNCTION_13_28();
          sub_193640D9C(v3, v36, v37);
          *(v35 + 48) = 1;
          swift_willThrow();

          return;
        }

        v30 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 36);
      }
    }

    v31 = (v3 + v30);
    v19 = *(v3 + v30 + 8);
    if (v19)
    {
      v20 = *v31;
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v25 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  sub_193448758(v3 + *(v25 + 24), v9, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_19344E6DC(v9, &qword_1EAE3ACA0, &qword_193972420);
LABEL_23:
    v26 = v39;
    *v39 = 0u;
    v26[1] = 0u;
    return;
  }

  v27 = OUTLINED_FUNCTION_19_3();
  v28(v27);
  sub_1934948FC();
  (*(v12 + 8))(v16, v10);
}

uint64_t sub_193640AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x7475746974736E69;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x7475746974736E69 && a2 == 0xEF656D614E6E6F69;
  if (v10 || (v11 = v3[2], v12 = v3[3], v13 = v3[4], v14 = v3[5], v22 = v13, result = OUTLINED_FUNCTION_67(0x7475746974736E69, 0xEF656D614E6E6F69), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x72756F467473616CLL;
  v15 = a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944;
  if (v15 || (result = OUTLINED_FUNCTION_67(0x72756F467473616CLL, 0xEE00737469676944), (result & 1) != 0))
  {
    if (v12)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v16 = a1 == 0xD000000000000011 && 0x8000000193A2AD70 == a2;
  if (v16 || (v17 = OUTLINED_FUNCTION_49_1(), result = OUTLINED_FUNCTION_67(v17, v18), (result & 1) != 0))
  {
    if (v14)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v20 = v19;
  *v19 = a1;
  v19[1] = a2;
  v19[5] = &type metadata for WalletPaymentsCommerceTransaction.Account;
  v21 = swift_allocObject();
  v20[2] = v21;
  v21[2] = v9;
  v21[3] = v8;
  v21[4] = v11;
  v21[5] = v12;
  v21[6] = v22;
  v21[7] = v14;
  *(v20 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_193640C90(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_193640CE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193640D40(uint64_t a1)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193640D9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t WalletPaymentsCommerceTransaction.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v13 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = v2[8];
  sub_19344B814();
  v18 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[13];
  sub_193644CC0(v6);
  v17 = v2[14];
  sub_193644DC4();
  v19 = a1 + v2[15];
  j__OUTLINED_FUNCTION_131(v19);
  v7 = a1 + v2[16];
  OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[17];
  j__OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[18];
  j__OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_193644794();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v13 = 0;
  v13[1] = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v10);

  *v18 = 0;
  v18[1] = 0;
  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  sub_193640C90(*v6, *(v6 + 1));
  *v6 = xmmword_1939526A0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  sub_19344E6DC(a1 + v17, &qword_1EAE3F7C8, &qword_193975F40);
  v11 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v17, 1, 1, v11);
  *v19 = 0;
  *(v19 + 4) = 256;
  *v7 = 0;
  *(v7 + 4) = 256;
  *v8 = 0;
  *(v8 + 4) = 256;
  *v9 = 0;
  *(v9 + 4) = 256;
  return result;
}

uint64_t static WalletPaymentsCommerceTransaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v145 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v146 = v133 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7D0, &qword_193975FB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v148 = v133 - v12;
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v133 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v133 - v26;
  v28 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v29 = v28[7];
  v30 = *(a2 + v29 + 8);
  if (*(a1 + v29 + 8))
  {
    if (!v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(a1 + v29);
    v33 = v33 && v31 == v32;
    if (!v33 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v143 = v4;
    v149 = a2;
    v34 = v28[8];
    v35 = *(v24 + 48);
    v144 = a1;
    sub_1934486F8(a1 + v34, v27, &qword_1EAE3A9E8, &qword_19394F800);
    v36 = v149 + v34;
    v37 = v149;
    sub_1934486F8(v36, &v27[v35], &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_31(v27);
    if (v33)
    {
      OUTLINED_FUNCTION_31(&v27[v35]);
      if (v33)
      {
        sub_19344E6DC(v27, &qword_1EAE3A9E8, &qword_19394F800);
        goto LABEL_23;
      }
    }

    else
    {
      sub_1934486F8(v27, v23, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_31(&v27[v35]);
      if (!v38)
      {
        (*(v15 + 32))(v19, &v27[v35], v13);
        OUTLINED_FUNCTION_9_54();
        sub_1936421C0(v43, v44, MEMORY[0x1E6969550]);
        v45 = sub_19393C550();
        v46 = *(v15 + 8);
        v46(v19, v13);
        v46(v23, v13);
        sub_19344E6DC(v27, &qword_1EAE3A9E8, &qword_19394F800);
        if ((v45 & 1) == 0)
        {
          return 0;
        }

LABEL_23:
        v47 = v144;
        OUTLINED_FUNCTION_5_47();
        if (v50)
        {
          if (!v48)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v49);
          v53 = v33 && v51 == v52;
          if (!v53 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v48)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5_47();
        if (v56)
        {
          if (!v54)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v55);
          v59 = v33 && v57 == v58;
          if (!v59 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v54)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5_47();
        if (v62)
        {
          if (!v60)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v61);
          v65 = v33 && v63 == v64;
          if (!v65 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v60)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5_47();
        if (v68)
        {
          if (!v66)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v67);
          v71 = v33 && v69 == v70;
          if (!v71 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v66)
        {
          return 0;
        }

        v72 = v28[13];
        v74 = *(v47 + v72);
        v73 = *(v47 + v72 + 8);
        v76 = *(v47 + v72 + 16);
        v75 = *(v47 + v72 + 24);
        v77 = *(v47 + v72 + 32);
        v78 = *(v47 + v72 + 40);
        v79 = (v37 + v72);
        v80 = *v79;
        v81 = v79[1];
        v82 = v79[2];
        v83 = v79[3];
        v85 = v79[4];
        v84 = v79[5];
        v140 = v85;
        v141 = v84;
        v142 = v80;
        if (v73 == 1)
        {
          v139 = v82;
          v138 = 1;
          OUTLINED_FUNCTION_27_22(v74, 1);
          if (v81 == 1)
          {
            sub_193641A34(v142, 1);
            OUTLINED_FUNCTION_13_29();
            sub_193640C90(v86, v87);
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_24_26();
          sub_193641A34(v93, v94);
        }

        else
        {
          v156 = v74;
          v157 = v73;
          v158 = v76;
          v159 = v75;
          v160 = v77;
          v161 = v78;
          if (v81 != 1)
          {
            v150 = v80;
            v151 = v81;
            v152 = v82;
            v153 = v83;
            v133[1] = v83;
            v154 = v140;
            v155 = v141;
            v134 = v74;
            v97 = v74;
            v98 = v73;
            v135 = v76;
            v133[2] = v75;
            v137 = v77;
            v136 = v78;
            sub_193641A34(v97, v73);
            sub_193641A34(v142, v81);
            v99 = v134;
            sub_193641A34(v134, v98);
            v100 = sub_193641C3C();
            v102 = OUTLINED_FUNCTION_19_36(v100, v101, &type metadata for WalletPaymentsCommerceTransaction.Account, v100);

            sub_193640C90(v99, v98);
            if ((v102 & 1) == 0)
            {
              return 0;
            }

LABEL_67:
            v103 = v28[14];
            v104 = v148;
            v105 = *(v147 + 48);
            sub_1934486F8(v47 + v103, v148, &qword_1EAE3F7C8, &qword_193975F40);
            sub_1934486F8(v37 + v103, v104 + v105, &qword_1EAE3F7C8, &qword_193975F40);
            if (__swift_getEnumTagSinglePayload(v104, 1, v143) == 1)
            {
              OUTLINED_FUNCTION_31(v104 + v105);
              if (!v33)
              {
                goto LABEL_74;
              }

              sub_19344E6DC(v104, &qword_1EAE3F7C8, &qword_193975F40);
            }

            else
            {
              v106 = v146;
              sub_1934486F8(v104, v146, &qword_1EAE3F7C8, &qword_193975F40);
              OUTLINED_FUNCTION_31(v104 + v105);
              if (v33)
              {
                sub_193640D40(v106);
LABEL_74:
                v39 = &qword_1EAE3F7D0;
                v40 = &qword_193975FB0;
                v41 = v104;
                goto LABEL_19;
              }

              v107 = v104 + v105;
              v108 = v145;
              sub_193641BD8(v107, v145);
              OUTLINED_FUNCTION_8_41();
              sub_1936421C0(v109, v110, &protocol conformance descriptor for WalletPaymentsCommerceTransaction.Merchant);
              v111 = sub_19393C550();
              sub_193640D40(v108);
              sub_193640D40(v106);
              sub_19344E6DC(v104, &qword_1EAE3F7C8, &qword_193975F40);
              if ((v111 & 1) == 0)
              {
                return 0;
              }
            }

            OUTLINED_FUNCTION_15_36();
            if (v113)
            {
              if ((v112 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v114)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              v115 = sub_193641B84();
              if ((OUTLINED_FUNCTION_19_36(v115, v116, &type metadata for WalletPaymentsCommerceTransaction.TransactionSource, v115) & 1) == 0)
              {
                return 0;
              }
            }

            OUTLINED_FUNCTION_15_36();
            if (v118)
            {
              if ((v117 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v119)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              v120 = sub_193641B30();
              if ((OUTLINED_FUNCTION_19_36(v120, v121, &type metadata for WalletPaymentsCommerceTransaction.AccountType, v120) & 1) == 0)
              {
                return 0;
              }
            }

            OUTLINED_FUNCTION_15_36();
            if (v123)
            {
              if ((v122 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v124)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              v125 = sub_193641ADC();
              if ((OUTLINED_FUNCTION_19_36(v125, v126, &type metadata for WalletPaymentsCommerceTransaction.TransactionStatus, v125) & 1) == 0)
              {
                return 0;
              }
            }

            v127 = v28[18];
            v128 = *(v144 + v127 + 9);
            v129 = *(v149 + v127 + 9);
            if (v128)
            {
              if ((v129 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v130)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              v131 = sub_193641A88();
              if ((OUTLINED_FUNCTION_19_36(v131, v132, &type metadata for WalletPaymentsCommerceTransaction.TransactionType, v131) & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          v88 = v82;
          OUTLINED_FUNCTION_27_22(v74, v73);
          v139 = v88;
          OUTLINED_FUNCTION_24_26();
          sub_193641A34(v89, v90);
          OUTLINED_FUNCTION_13_29();
          sub_193641A34(v91, v92);
        }

        OUTLINED_FUNCTION_13_29();
        sub_193640C90(v95, v96);
        sub_193640C90(v142, v81);
        return 0;
      }

      (*(v15 + 8))(v23, v13);
    }

    v39 = &qword_1EAE3B968;
    v40 = &qword_193972430;
    v41 = v27;
LABEL_19:
    sub_19344E6DC(v41, v39, v40);
    return 0;
  }

  if (!v30)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_193641A34(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_193641A88()
{
  result = qword_1EAE3F7D8;
  if (!qword_1EAE3F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7D8);
  }

  return result;
}

unint64_t sub_193641ADC()
{
  result = qword_1EAE3F7E0;
  if (!qword_1EAE3F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7E0);
  }

  return result;
}

unint64_t sub_193641B30()
{
  result = qword_1EAE3F7E8;
  if (!qword_1EAE3F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7E8);
  }

  return result;
}

unint64_t sub_193641B84()
{
  result = qword_1EAE3F7F0;
  if (!qword_1EAE3F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7F0);
  }

  return result;
}

uint64_t sub_193641BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_193641C3C()
{
  result = qword_1EAE3F800;
  if (!qword_1EAE3F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F800);
  }

  return result;
}

uint64_t WalletPaymentsCommerceTransaction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v40 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  v9 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v21 = *(v1 + v20[7] + 8);
  if (v21)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934486F8(v1 + v20[8], v19, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v19, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    sub_19393CAD0();
    OUTLINED_FUNCTION_9_54();
    sub_1936421C0(v22, v23, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_5_0();
  if (v21)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v21)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v21)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v21)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v24 = (v1 + v20[13]);
  v25 = v24[1];
  if (v25 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v26 = v24[5];
    v27 = v24[2];
    v43 = *v24;
    v44 = v25;
    v45 = v27;
    v39 = *(v24 + 3);
    v46 = v39;
    v47 = v26;
    sub_19393CAD0();
    sub_19364216C();

    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  v28 = v41;
  v29 = v42;
  sub_1934486F8(v2 + v20[14], v41, &qword_1EAE3F7C8, &qword_193975F40);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v30 = v40;
    sub_193641BD8(v28, v40);
    sub_19393CAD0();
    OUTLINED_FUNCTION_8_41();
    sub_1936421C0(v31, v32, &protocol conformance descriptor for WalletPaymentsCommerceTransaction.Merchant);
    sub_19393C540();
    sub_193640D40(v30);
  }

  OUTLINED_FUNCTION_100();
  if (v34)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v33);
    sub_193642208();
    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100();
  if (v34)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v35);
    sub_19364225C();
    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100();
  if (v34)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v36);
    sub_1936422B0();
    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100();
  if (v34)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_3_48(v37);
  sub_193642304();
  OUTLINED_FUNCTION_25_26();
  return sub_19393C540();
}

unint64_t sub_19364216C()
{
  result = qword_1EAE3F808;
  if (!qword_1EAE3F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F808);
  }

  return result;
}

uint64_t sub_1936421C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_193642208()
{
  result = qword_1EAE3F818;
  if (!qword_1EAE3F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F818);
  }

  return result;
}

unint64_t sub_19364225C()
{
  result = qword_1EAE3F820;
  if (!qword_1EAE3F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F820);
  }

  return result;
}

unint64_t sub_1936422B0()
{
  result = qword_1EAE3F828;
  if (!qword_1EAE3F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F828);
  }

  return result;
}

unint64_t sub_193642304()
{
  result = qword_1EAE3F830;
  if (!qword_1EAE3F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F830);
  }

  return result;
}

void WalletPaymentsCommerceTransaction.TransactionSource.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static WalletPaymentsCommerceTransaction.TransactionSource.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F870, &qword_193976138);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE3F870, &qword_193976138);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v15, v2 + 2, 1, v16, &qword_1EAE3F870, &qword_193976138);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v17, v2 + 3, 1, v18, &qword_1EAE3F870, &qword_193976138);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v19, v2 + 4, 1, v20, &qword_1EAE3F870, &qword_193976138);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t WalletPaymentsCommerceTransaction.TransactionSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  v1 = 0x7961507070416E49;
  if (*v0 != 1)
  {
    v1 = 0x656D796150626557;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t WalletPaymentsCommerceTransaction.TransactionSource.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 0xD000000000000014 && 0x8000000193A2AD90 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, 0x8000000193A2AD90) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0x7961507070416E49 && v1 == 0xEC000000746E656DLL;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x7961507070416E49, 0xEC000000746E656DLL) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x656D796150626557 && v1 == 0xEA0000000000746ELL)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x656D796150626557, 0xEA0000000000746ELL);

    v7 = 2;
    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.AccountType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x6E6E6F436B6E6142;
  }

  return 0x79617764616F7242;
}

void WalletPaymentsCommerceTransaction.AccountType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x79617764616F7242 ? (v5 = v0 == 0xE800000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x79617764616F7242, 0xE800000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x6E6E6F436B6E6142 && v0 == 0xEB00000000746365)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6E6E6F436B6E6142, 0xEB00000000746365);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t WalletPaymentsCommerceTransaction.TransactionStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x6465766F72707041;
  }

  return 0x676E69646E6550;
}

void WalletPaymentsCommerceTransaction.TransactionStatus.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x676E69646E6550 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x676E69646E6550, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x6465766F72707041 && v0 == 0xE800000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6465766F72707041, 0xE800000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

void WalletPaymentsCommerceTransaction.TransactionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t WalletPaymentsCommerceTransaction.TransactionType.rawValue.getter()
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

uint64_t WalletPaymentsCommerceTransaction.TransactionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x646E75666552;
  }

  return 0x6573616863727550;
}

void WalletPaymentsCommerceTransaction.TransactionType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x6573616863727550 ? (v5 = v0 == 0xE800000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x6573616863727550, 0xE800000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x646E75666552 && v0 == 0xE600000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x646E75666552, 0xE600000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

unint64_t sub_193642B20()
{
  result = qword_1EAE3F838;
  if (!qword_1EAE3F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F838);
  }

  return result;
}

unint64_t sub_193642B78()
{
  result = qword_1EAE3F840;
  if (!qword_1EAE3F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F840);
  }

  return result;
}

unint64_t sub_193642BD0()
{
  result = qword_1EAE3F848;
  if (!qword_1EAE3F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F848);
  }

  return result;
}

unint64_t sub_193642C28()
{
  result = qword_1EAE3F850;
  if (!qword_1EAE3F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F850);
  }

  return result;
}

void sub_193642C8C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB858);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v39, xmmword_1939526C0);
  *v1 = 1;
  *v0 = "amount";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  v9 = OUTLINED_FUNCTION_5_4(v7, "transactionDate");
  (v6)(v9);
  OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  OUTLINED_FUNCTION_39_7(v10);
  v12 = OUTLINED_FUNCTION_5_4(v11, "transactionID");
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_44(3 * v4);
  *v14 = 4;
  *v13 = "currencyCode";
  v13[1] = 12;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 5;
  v18 = OUTLINED_FUNCTION_5_4(v16, "transactionDescription");
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v4);
  *v20 = 6;
  *v19 = "timeZone";
  v19[1] = 8;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v6)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v23 = 7;
  v24 = OUTLINED_FUNCTION_5_4(v22, "account");
  (v6)(v24);
  v25 = OUTLINED_FUNCTION_44(7 * v4);
  *v26 = 8;
  *v25 = "merchant";
  v25[1] = 8;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v6)(v27);
  v28 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_5_4(v28, "transactionSource");
  (v6)(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v4);
  *v32 = 10;
  *v31 = "accountType";
  v31[1] = 11;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v6)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v35 = 11;
  *v34 = "transactionStatus";
  v34[1] = 17;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v6)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v38 = 12;
  *v37 = "transactionType";
  *(v37 + 8) = 15;
  *(v37 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193642FB4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
      case 3:
      case 4:
      case 5:
      case 6:
        type metadata accessor for WalletPaymentsCommerceTransaction(0);
        sub_19393C200();
        goto LABEL_15;
      case 2:
        v8 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        sub_1934976E4(v1 + *(v8 + 32), 26211, 0xE200000000000000, v3, v2);
        goto LABEL_15;
      case 7:
        v9 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v9 + 52));
        goto LABEL_11;
      case 8:
        type metadata accessor for WalletPaymentsCommerceTransaction(0);
        type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
LABEL_11:
        sub_193498018();
        goto LABEL_15;
      case 9:
        v11 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v11 + 60));
        goto LABEL_14;
      case 10:
        v7 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v7 + 64));
        goto LABEL_14;
      case 11:
        v10 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v10 + 68));
        goto LABEL_14;
      case 12:
        v6 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v6 + 72));
LABEL_14:
        sub_1934982A8();
LABEL_15:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936431FC()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_7(*v5, v4, 1);
    v2 = v1;
  }

  if (!v2)
  {
    v6 = OUTLINED_FUNCTION_79();
    sub_193643438(v6, v7, v8, v9, v10, v11, v12, v13, v59, v61);
    if (!v1)
    {
      OUTLINED_FUNCTION_16_4();
      if (v14)
      {
        OUTLINED_FUNCTION_2_7(*v15, v14, 3);
      }

      OUTLINED_FUNCTION_16_4();
      if (v16)
      {
        OUTLINED_FUNCTION_2_7(*v17, v16, 4);
      }

      OUTLINED_FUNCTION_16_4();
      if (v18)
      {
        OUTLINED_FUNCTION_2_7(*v19, v18, 5);
      }

      OUTLINED_FUNCTION_16_4();
      if (v20)
      {
        OUTLINED_FUNCTION_2_7(*v21, v20, 6);
      }

      v22 = v0 + *(v3 + 52);
      if (*(v22 + 8) != 1)
      {
        v60 = *v22;
        v62 = *(v22 + 8);
        v63 = *(v22 + 16);
        v64 = *(v22 + 32);
        OUTLINED_FUNCTION_78_1();
        sub_193447600();
      }

      v23 = OUTLINED_FUNCTION_79();
      sub_1936435E4(v23, v24, v25, v26, v27, v28, v29, v30, v60, v62, v63, *(&v63 + 1), v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70);
      OUTLINED_FUNCTION_238();
      if ((v31 & 1) == 0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v32, v33, v34, v35, v36, v37);
      }

      OUTLINED_FUNCTION_238();
      if ((v38 & 1) == 0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v39, v40, v41, v42, v43, v44);
      }

      OUTLINED_FUNCTION_238();
      if ((v45 & 1) == 0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v46, v47, v48, v49, v50, v51);
      }

      OUTLINED_FUNCTION_238();
      if ((v52 & 1) == 0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v53, v54, v55, v56, v57, v58);
      }
    }
  }
}

void sub_193643438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v13, v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26[-v18];
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v26[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  sub_1934486F8(v12 + *(v25 + 32), v19, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v19, 1, v11) == 1)
  {
    sub_19344E6DC(v19, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v11);
    sub_193451F04(v24, 2, 26211, 0xE200000000000000, v10, a10);
    (*(v21 + 8))(v24, v11);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936435E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &a9 - v27;
  v29 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_37();
  v32 = type metadata accessor for WalletPaymentsCommerceTransaction(v31);
  sub_1934486F8(v25 + *(v32 + 56), v28, &qword_1EAE3F7C8, &qword_193975F40);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_19344E6DC(v28, &qword_1EAE3F7C8, &qword_193975F40);
  }

  else
  {
    sub_193641BD8(v28, v20);
    sub_193447600();
    sub_193640D40(v20);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936437A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB870);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "TransactionSourceUnknown";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_3_1(v1 + v4);
  OUTLINED_FUNCTION_69_6(v8);
  *v9 = "TransactionSourceContactlessInterface";
  *(v9 + 8) = 37;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "TransactionSourceInAppPayment";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_44(3 * v4);
  OUTLINED_FUNCTION_39_7(v12);
  *v13 = "TransactionSourceWebPayment";
  *(v13 + 8) = 27;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643998()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB888);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("AccountTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v8);
  *v9 = "AccountTypeBroadway";
  *(v9 + 8) = 19;
  *(v9 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  *v10 = "AccountTypeBankConnect";
  *(v10 + 8) = 22;
  *(v10 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643B40()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "TransactionStatusUnknown";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_3_1(v1 + v4);
  OUTLINED_FUNCTION_69_6(v8);
  *v9 = "TransactionStatusPending";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "TransactionStatusApproved";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643CF0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("TransactionTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v8);
  *v9 = "TransactionTypePurchase";
  *(v9 + 8) = 23;
  *(v9 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  *v10 = "TransactionTypeRefund";
  *(v10 + 8) = 21;
  *(v10 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643E98()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "merchantUniqueIdentifier";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  v10 = OUTLINED_FUNCTION_5_4(v8, "merchantName");
  (v7)(v10);
  OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  OUTLINED_FUNCTION_39_7(v11);
  *v12 = "webURL";
  v12[1] = 6;
  v13 = OUTLINED_FUNCTION_41(v12);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_44(3 * v4);
  *v15 = 4;
  v16 = OUTLINED_FUNCTION_5_4(v14, "domainName");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 5;
  v19 = OUTLINED_FUNCTION_5_4(v17, "webMerchantName");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_44(5 * v4);
  *v21 = 6;
  *v20 = "adamIdentifier";
  *(v20 + 8) = 14;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936440B0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        goto LABEL_7;
      case 3:
        v3 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
        v4 = OUTLINED_FUNCTION_160(*(v3 + 24));
        sub_19349780C(v4);
        goto LABEL_8;
      case 4:
      case 5:
      case 6:
        type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
LABEL_7:
        sub_19393C200();
LABEL_8:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936441A4()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = v0[1];
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v0, v3, 1);
    v2 = v1;
  }

  if (!v2)
  {
    v4 = v0[3];
    if (!v4 || (OUTLINED_FUNCTION_2_7(v0[2], v4, 2), !v1))
    {
      v5 = OUTLINED_FUNCTION_79();
      sub_193644294(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20);
      if (!v1)
      {
        type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
        OUTLINED_FUNCTION_16_4();
        if (v13)
        {
          OUTLINED_FUNCTION_2_7(*v14, v13, 4);
        }

        OUTLINED_FUNCTION_16_4();
        if (v15)
        {
          OUTLINED_FUNCTION_2_7(*v16, v15, 5);
        }

        OUTLINED_FUNCTION_16_4();
        if (v17)
        {
          OUTLINED_FUNCTION_2_7(*v18, v17, 6);
        }
      }
    }
  }
}

void sub_193644294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v14, v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - v19;
  sub_19393BD10();
  OUTLINED_FUNCTION_76();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_37();
  v25 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v24);
  sub_1934486F8(v13 + *(v25 + 24), v20, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v20, 1, v11) == 1)
  {
    sub_19344E6DC(v20, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    (*(v22 + 32))(v12, v20, v11);
    sub_19349881C(v12, 3, v10, a10);
    (*(v22 + 8))(v12, v11);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193644488()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("institutionName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  *v8 = "lastFourDigits";
  *(v8 + 8) = 14;
  *(v8 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  OUTLINED_FUNCTION_39_7(v10);
  *v11 = "accountIdentifier";
  *(v11 + 8) = 17;
  *(v11 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193644608()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_193644684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[3];
  v6 = v3[5];
  if (v3[1])
  {
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    if (v5)
    {
      result = sub_19393C3C0();
    }

    if (v6)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

uint64_t WalletPaymentsCommerceTransaction.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTransaction.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTransaction.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceTransaction.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceTransaction.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.amount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.transactionDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 32), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTransaction.transactionDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 32), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTransaction.transactionDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.transactionID.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.currencyCode.getter()
{
  type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.currencyCode.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceTransaction(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.currencyCode.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.transactionDescription.getter()
{
  type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.transactionDescription.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceTransaction(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.transactionDescription.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.timeZone.getter()
{
  type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.timeZone.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceTransaction(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.timeZone.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

double sub_193644CC0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.account.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTransaction(v2) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;

  return sub_193641A34(v4, v5);
}

__n128 WalletPaymentsCommerceTransaction.account.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 52);
  sub_193640C90(*v5, *(v5 + 8));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.account.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193644DC4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceTransaction.merchant.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 56), &qword_1EAE3F7C8, &qword_193975F40);
}

uint64_t WalletPaymentsCommerceTransaction.merchant.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 56), &qword_1EAE3F7C8, &qword_193975F40);
}

uint64_t WalletPaymentsCommerceTransaction.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.transactionSource.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 60));
}

uint64_t WalletPaymentsCommerceTransaction.transactionSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.accountType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 64));
}

uint64_t WalletPaymentsCommerceTransaction.accountType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.transactionStatus.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 68));
}

uint64_t WalletPaymentsCommerceTransaction.transactionStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.transactionType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 72));
}

uint64_t WalletPaymentsCommerceTransaction.transactionType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19364514C@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.TransactionSource.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193645174@<X0>(char **a1@<X8>)
{
  result = static WalletPaymentsCommerceTransaction.TransactionSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936451CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936452D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936453D4@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.AccountType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936453FC@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static WalletPaymentsCommerceTransaction.AccountType.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_1936454EC@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.TransactionStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193645514@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static WalletPaymentsCommerceTransaction.TransactionStatus.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_193645604@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.TransactionType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19364562C@<X0>(char **a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static WalletPaymentsCommerceTransaction.TransactionType.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_193645794@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIndentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_193645850;
}

uint64_t sub_193645850(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *v4 = v3;
    v4[1] = v2;
  }

  else
  {

    *v4 = v3;
    v4[1] = v2;
  }

  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.merchantName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t _s27IntelligencePlatformLibrary33WalletPaymentsCommerceTransactionV8MerchantV6webURL10Foundation0J0VSgvg_0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3ACA0, &qword_193972420);
}

uint64_t sub_1936459E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_193448804(a1, &v5 - v3, &qword_1EAE3ACA0, &qword_193972420);
  return WalletPaymentsCommerceTransaction.Merchant.webURL.setter();
}

uint64_t _s27IntelligencePlatformLibrary33WalletPaymentsCommerceTransactionV8MerchantV6webURL10Foundation0J0VSgvs_0()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3ACA0, &qword_193972420);
}

void (*WalletPaymentsCommerceTransaction.Merchant.originURL.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v4 = __swift_coroFrameAllocStub(*(*(v3 - 8) + 64));
  *(a1 + 8) = v4;
  v5 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 24);
  *(a1 + 16) = v5;
  sub_193448804(v1 + v5, v4, &qword_1EAE3ACA0, &qword_193972420);
  return sub_193645B7C;
}

void sub_193645B7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_19344542C(v1, *a1 + *(a1 + 16), &qword_1EAE3ACA0, &qword_193972420);

  free(v1);
}

uint64_t sub_193645BE8(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_193645C38()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.domainName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webMerchantName.getter()
{
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webMerchantName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webMerchantName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193645D74(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_193645DC4()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.adamIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v1);
  v3 = v2[6];
  sub_19393BD10();
  OUTLINED_FUNCTION_165();
  v4 = (v0 + v2[7]);
  v5 = (v0 + v2[8]);
  v6 = (v0 + v2[9]);
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v3, &qword_1EAE3ACA0, &qword_193972420);
  result = OUTLINED_FUNCTION_165();
  *v4 = 0;
  v4[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t static WalletPaymentsCommerceTransaction.Merchant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_1();
  v2 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = v1[1];
  v16 = v0[1];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v1 == *v0 && v15 == v16;
    if (!v17 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v1[3];
  v19 = v0[3];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = v1[2] == v0[2] && v18 == v19;
    if (!v20 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v49 = v4;
  v48 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  v21 = *(v48 + 24);
  v22 = *(v11 + 48);
  sub_193448804(v1 + v21, v14, &qword_1EAE3ACA0, &qword_193972420);
  sub_193448804(v0 + v21, &v14[v22], &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_31(v14);
  if (!v17)
  {
    sub_193448804(v14, v10, &qword_1EAE3ACA0, &qword_193972420);
    OUTLINED_FUNCTION_31(&v14[v22]);
    if (!v23)
    {
      v25 = v49;
      (*(v49 + 32))(v7, &v14[v22], v2);
      OUTLINED_FUNCTION_11_32();
      sub_19364654C(v26, v27, MEMORY[0x1E6968FC8]);
      v28 = sub_19393C550();
      v29 = *(v25 + 8);
      v29(v7, v2);
      v29(v10, v2);
      sub_19344E6DC(v14, &qword_1EAE3ACA0, &qword_193972420);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    (*(v49 + 8))(v10, v2);
LABEL_27:
    sub_19344E6DC(v14, &qword_1EAE3F118, &qword_193972428);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v14[v22]);
  if (!v17)
  {
    goto LABEL_27;
  }

  sub_19344E6DC(v14, &qword_1EAE3ACA0, &qword_193972420);
LABEL_31:
  OUTLINED_FUNCTION_3();
  if (v32)
  {
    if (!v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v31);
    v35 = v17 && v33 == v34;
    if (!v35 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v38)
  {
    if (!v36)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v37);
    v41 = v17 && v39 == v40;
    if (!v41 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v44)
  {
    if (v42)
    {
      OUTLINED_FUNCTION_5(v43);
      v47 = v17 && v45 == v46;
      if (v47 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v42)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v10 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  sub_193448804(v0 + v10[6], v9, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v3 + 32))(v6, v9, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_11_32();
    sub_19364654C(v11, v12, MEMORY[0x1E6968FC0]);
    sub_19393C540();
    (*(v3 + 8))(v6, v1);
  }

  if (*(v0 + v10[7] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v10[8] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!*(v0 + v10[9] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_19364654C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WalletPaymentsCommerceTransaction.Account.institutionName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Account.lastFourDigits.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Account.accountIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTransaction.Account.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTransaction::Account *__return_ptr retstr)
{
  retstr->lastFourDigits = 0u;
  retstr->accountIdentifier = 0u;
  retstr->institutionName = 0u;
}

uint64_t static WalletPaymentsCommerceTransaction.Account.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      if (v5 == v10 && v7 == v12)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTransaction.Account.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393C640();
  if (!v3)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceTransaction.Account.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v3)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193646A18(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_19393CAB0();
  WalletPaymentsCommerceTransaction.Account.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t sub_193646A84(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193646AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_193646CC0(uint64_t a1)
{
  sub_193646EB0(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19349D1FC(319, &qword_1ED503EC0, &type metadata for WalletPaymentsCommerceTransaction.Account);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        sub_193646EB0(319, qword_1ED503CA0, type metadata accessor for WalletPaymentsCommerceTransaction.Merchant);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          sub_19349D1FC(319, &qword_1ED503CF0, &type metadata for WalletPaymentsCommerceTransaction.TransactionSource);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            sub_19349D1FC(319, &qword_1ED503CE0, &type metadata for WalletPaymentsCommerceTransaction.AccountType);
            OUTLINED_FUNCTION_4_0();
            if (!(!v3 & v2))
            {
              sub_19349D1FC(319, &qword_1ED503CE8, &type metadata for WalletPaymentsCommerceTransaction.TransactionStatus);
              OUTLINED_FUNCTION_4_0();
              if (!(!v3 & v2))
              {
                sub_19349D1FC(319, &qword_1ED503CF8, &type metadata for WalletPaymentsCommerceTransaction.TransactionType);
                OUTLINED_FUNCTION_4_0();
                if (!(!v3 & v2))
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_193646EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_193646F6C(uint64_t a1)
{
  sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_193646EB0(319, qword_1ED504400, MEMORY[0x1E6968FB0]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_193647030(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19364707C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_193647118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5111D8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5111D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.ExtractedOrder.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:*MEMORY[0x1E698F100]];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_34 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5111D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F0, &qword_193976840);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.ExtractedOrder.attribute(_:)(void (*a1)(void))
{
  result = sub_193647554(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193647590(void (*a1)(void))
{
  result = sub_193647554(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936475F8(uint64_t a1)
{
  result = sub_193647620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193647620()
{
  result = qword_1ED503D10;
  if (!qword_1ED503D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D10);
  }

  return result;
}

_BYTE *_s14ExtractedOrderOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceExtractedOrder.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_2_50();
  sub_19364939C(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3F8F8, &qword_1939768B8, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static WalletPaymentsCommerceExtractedOrder.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3F8F8, &qword_1939768B8, v31);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_10_40();
    sub_1936492E8(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceExtractedOrder.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  if (*sub_19364C84C() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    sub_19393C280();
    (*(v14 + 8))(v20, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_10_40();
      v26 = v35;
      sub_1936492E8(v1, v35, v27);
      v28 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v26 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v26 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v26 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v26 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v26 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v25 = v6;
    *(v25 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceExtractedOrder.serialize()()
{
  v3 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_2_50();
  sub_19364939C(v0, v1, v6);
  sub_1934470C8(v1, v3, v2);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE3F8F8, &qword_1939768B8, v8);
  sub_19393C290();
  sub_19344E6DC(v2, &qword_1EAE3F8F8, &qword_1939768B8);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceExtractedOrder.columns.getter()
{
  v116 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A28D80);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v31);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_32_19();
  result = OUTLINED_FUNCTION_3_5(v32, v33);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v34 = swift_initStackObject();
  v42 = OUTLINED_FUNCTION_2_4(v34, v35, v36, v37, v38, v39, v40, v41, v112);
  OUTLINED_FUNCTION_5_10(v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v52);
  v53 = OUTLINED_FUNCTION_18_26();
  result = OUTLINED_FUNCTION_3_5(v53 | 0x6D754E7200000000, 0xEB00000000726562);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v54 = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_2_4(v54, v55, v56, v57, v58, v59, v60, v61, v113);
  OUTLINED_FUNCTION_5_10(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v72 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v72);
  v73 = OUTLINED_FUNCTION_18_26();
  result = OUTLINED_FUNCTION_3_5(v73 | 0x7461447200000000, 0xE900000000000065);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v114;
  v74 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v84 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v84);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v85, v86, v87, v88, v0, 12, 0);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v89 = swift_initStackObject();
  v97 = OUTLINED_FUNCTION_2_4(v89, v90, v91, v92, v93, v94, v95, v96, v114);
  OUTLINED_FUNCTION_5_10(v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v107 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v107);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_42_5();
  result = sub_19343D150(v108, v109, 3, 0, v0, 0, 1);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v115;
  v110 = OUTLINED_FUNCTION_6_4();
  *(v110 + 16) = v115;
  *(v110 + 32) = sub_19393C850();
  v111 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000016, 0x8000000193A29920, 2, 0, v110, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v116;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1936481B0()
{
  OUTLINED_FUNCTION_26();
  v82 = v0;
  v83 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_55_3();
  sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v80 = v10;
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - v16;
  v18 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_38();
  v24 = v6 == 0xD000000000000013 && v23 == v4;
  if (v24 || (OUTLINED_FUNCTION_24_5(0xD000000000000013, v23) & 1) != 0)
  {
    v25 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_19();
  v28 = OUTLINED_FUNCTION_19_7() | 0x6564497200000000;
  v30 = v6 == v28 && v4 == v29;
  if (v30 || (OUTLINED_FUNCTION_24_5(v28, v29) & 1) != 0)
  {
    v25 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 32);
    goto LABEL_7;
  }

  v31 = OUTLINED_FUNCTION_19_7() | 0x6D754E7200000000;
  v33 = v6 == v31 && v4 == v32;
  if (v33 || (OUTLINED_FUNCTION_24_5(v31, v32) & 1) != 0)
  {
    v34 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 36);
    goto LABEL_22;
  }

  v38 = OUTLINED_FUNCTION_19_7() | 0x616D457200000000;
  v40 = v6 == v38 && v4 == v39;
  if (v40 || (OUTLINED_FUNCTION_24_5(v38, v39) & 1) != 0)
  {
    *&v85[0] = *(v82 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 40));
    v41 = &qword_1EAE3F910;
    v42 = &qword_1939768C8;
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
    goto LABEL_9;
  }

  v43 = OUTLINED_FUNCTION_19_7() | 0x7461447200000000;
  v45 = v6 == v43 && v4 == v44;
  if (!v45 && (OUTLINED_FUNCTION_24_5(v43, 0xE900000000000065) & 1) == 0)
  {
    v46 = v6 == 0x746E61686372656DLL && v4 == 0xE800000000000000;
    if (v46 || (OUTLINED_FUNCTION_24_5(0x746E61686372656DLL, 0xE800000000000000) & 1) != 0)
    {
      v47 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
      sub_193448758(v82 + *(v47 + 48), v17, &qword_1EAE3F1A0, &qword_193973038);
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
      {
        sub_1936492E8(v17, v22, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
        sub_193494798(v18, &off_1F07D8560, v83);
        sub_193649344(v22, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
        goto LABEL_47;
      }

      v48 = &qword_1EAE3F1A0;
      v49 = &qword_193973038;
      v50 = v17;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_38();
    v53 = v6 == 0xD000000000000014 && v52 == v4;
    if (v53 || (OUTLINED_FUNCTION_24_5(0xD000000000000014, v52) & 1) != 0)
    {
      *&v85[0] = *(v82 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 52));
      v41 = &unk_1EAE3F908;
      v42 = &unk_1939768C0;
      goto LABEL_31;
    }

    v54 = v6 == 0x72656D6F74737563 && v4 == 0xE800000000000000;
    if (v54 || (OUTLINED_FUNCTION_24_5(0x72656D6F74737563, 0xE800000000000000) & 1) != 0)
    {
      v55 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
      memcpy(v85, (v82 + *(v55 + 56)), 0x108uLL);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v85) == 1)
      {
        goto LABEL_46;
      }

      memcpy(v84, v85, sizeof(v84));
      v56 = &type metadata for WalletPaymentsCommerceTrackedOrder.Customer;
      v57 = &off_1F07D8580;
    }

    else
    {
      v58 = v6 == 0x746E656D796170 && v4 == 0xE700000000000000;
      if (!v58 && (OUTLINED_FUNCTION_24_5(0x746E656D796170, 0xE700000000000000) & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        v63 = v6 == 0xD000000000000011 && v62 == v4;
        if (v63 || (v64 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_24_5(v64, v65) & 1) != 0))
        {
          v66 = *(v82 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 64));
          if (v66 != 2)
          {
            LOBYTE(v85[0]) = v66 & 1;
            goto LABEL_9;
          }

          goto LABEL_46;
        }

        OUTLINED_FUNCTION_42_5();
        v67 = OUTLINED_FUNCTION_19_7() | 0x6470557200000000;
        v69 = v6 == v67 && v4 == v68;
        if (!v69 && (OUTLINED_FUNCTION_24_5(v67, v68) & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v74 = v6 == 0xD000000000000016 && v73 == v4;
          if (!v74 && (OUTLINED_FUNCTION_24_5(0xD000000000000016, v73) & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_11();
            swift_allocError();
            v76 = v75;
            *v75 = v6;
            v75[1] = v4;
            v75[5] = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
            __swift_allocate_boxed_opaque_existential_1Tm(v76 + 2);
            OUTLINED_FUNCTION_2_50();
            sub_19364939C(v82, v77, v78);
            *(v76 + 48) = 1;
            swift_willThrow();

            goto LABEL_47;
          }

          v25 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 72);
LABEL_7:
          v26 = (v82 + v25);
          v27 = *(v82 + v25 + 8);
          if (v27)
          {
            *&v85[0] = *v26;
            *(&v85[0] + 1) = v27;
LABEL_9:
            sub_1934948FC();
            goto LABEL_47;
          }

LABEL_46:
          v51 = v83;
          *v83 = 0u;
          *(v51 + 1) = 0u;
          goto LABEL_47;
        }

        v70 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        sub_193448758(v82 + *(v70 + 68), v1, &qword_1EAE3A9E8, &qword_19394F800);
        if (__swift_getEnumTagSinglePayload(v1, 1, v81) != 1)
        {
          v72 = v80;
          v71 = v81;
          (*(v80 + 32))(v13, v1, v81);
          sub_1934948FC();
          (*(v72 + 8))(v13, v71);
          goto LABEL_47;
        }

        v48 = &qword_1EAE3A9E8;
        v49 = &qword_19394F800;
        v50 = v1;
LABEL_45:
        sub_19344E6DC(v50, v48, v49);
        goto LABEL_46;
      }

      v59 = v82 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 60);
      v60 = *(v59 + 32);
      if (!v60)
      {
        goto LABEL_46;
      }

      v61 = *(v59 + 16);
      v85[0] = *v59;
      v85[1] = v61;
      *&v85[2] = v60;
      v56 = &type metadata for WalletPaymentsCommerceTrackedOrder.Payment;
      v57 = &off_1F07D85A0;
    }

    sub_193494798(v56, v57, v83);
    goto LABEL_47;
  }

  v34 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 44);
LABEL_22:
  v35 = (v82 + v34);
  v36 = *(v82 + v34 + 8);
  if (v36)
  {
    *&v85[0] = *v35;
    *(&v85[0] + 1) = v36;
    sub_1934948FC();
  }

  else
  {
    v37 = v83;
    *v83 = 0u;
    *(v37 + 1) = 0u;
  }

LABEL_47:
  OUTLINED_FUNCTION_27();
}

int *sub_1936488EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_1();
  v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = a1 == 0x74654D6C69616D65 && a2 == 0xED00006174616461;
  if (!v15 && (OUTLINED_FUNCTION_59_0(0x74654D6C69616D65, 0xED00006174616461) & 1) == 0)
  {
    v17 = a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065;
    if (v17 || (OUTLINED_FUNCTION_59_0(0x7079546C69616D65, 0xE900000000000065) & 1) != 0)
    {
      result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
      if (*(v3 + result[5] + 9))
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v19 = a1 == 0xD000000000000019 && v18 == a2;
      if (v19 || (OUTLINED_FUNCTION_59_0(0xD000000000000019, v18) & 1) != 0)
      {
        result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v20 = result[6];
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v22 = a1 == 0xD000000000000019 && v21 == a2;
        if (!v22 && (OUTLINED_FUNCTION_59_0(0xD000000000000019, v21) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v24 = v23;
          *v23 = a1;
          v23[1] = a2;
          v23[5] = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24 + 2);
          sub_19364939C(v3, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
          *(v24 + 48) = 1;
          swift_willThrow();
        }

        result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v20 = result[7];
      }

      if (!*(v3 + v20 + 8))
      {
        goto LABEL_8;
      }
    }

    return sub_1934948FC();
  }

  sub_193448758(v3, v4, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    result = sub_19344E6DC(v4, &qword_1EAE3EF88, &qword_193972100);
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_1936492E8(v4, v14, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
  sub_193494798(v10, &off_1F07D7AA8, a3);
  return sub_193649344(v14, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
}

void sub_193648C3C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55_3();
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v65 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_38();
  v17 = v5 == 0xD000000000000015 && v16 == v3;
  if (!v17 && (OUTLINED_FUNCTION_24_5(0xD000000000000015, v16) & 1) == 0)
  {
    v20 = v5 == 0x737574617473 && v3 == 0xE600000000000000;
    if (v20 || (OUTLINED_FUNCTION_24_5(0x737574617473, 0xE600000000000000) & 1) != 0)
    {
      if ((*(v0 + 25) & 1) == 0)
      {
        v21 = *(v0 + 24);
        v67[0] = *(v0 + 16);
        LOBYTE(v67[1]) = v21 & 1;
        goto LABEL_9;
      }
    }

    else
    {
      v22 = v5 == 0x676E696B63617274 && v3 == 0xEE007265626D754ELL;
      if (v22 || (OUTLINED_FUNCTION_24_5(0x676E696B63617274, 0xEE007265626D754ELL) & 1) != 0)
      {
        v18 = *(v0 + 40);
        if (v18)
        {
          v19 = *(v0 + 32);
          goto LABEL_8;
        }
      }

      else
      {
        v23 = v5 == 0x4E72656972726163 && v3 == 0xEB00000000656D61;
        if (v23 || (OUTLINED_FUNCTION_24_5(0x4E72656972726163, 0xEB00000000656D61) & 1) != 0)
        {
          v18 = *(v0 + 56);
          if (v18)
          {
            v19 = *(v0 + 48);
            goto LABEL_8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v25 = v5 == 0xD000000000000011 && v24 == v3;
          if (v25 || (v26 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_24_5(v26, v27) & 1) != 0))
          {
            v18 = *(v0 + 72);
            if (v18)
            {
              v19 = *(v0 + 64);
              goto LABEL_8;
            }
          }

          else
          {
            v28 = OUTLINED_FUNCTION_14();
            v30 = v5 == v28 && v3 == v29;
            if (v30 || (OUTLINED_FUNCTION_24_5(v28, v29), OUTLINED_FUNCTION_13_30(), (v32 & 1) != 0))
            {
              v18 = *(v0 + 88);
              if (v18)
              {
                v19 = *(v0 + 80);
                goto LABEL_8;
              }
            }

            else
            {
              v33 = v5 == v31 && v3 == 0xEC00000065746144;
              if (v33 || (OUTLINED_FUNCTION_24_5(v31, 0xEC00000065746144), OUTLINED_FUNCTION_13_30(), (v35 & 1) != 0))
              {
                v18 = *(v0 + 104);
                if (v18)
                {
                  v19 = *(v0 + 96);
                  goto LABEL_8;
                }
              }

              else
              {
                v36 = v5 == v34 && v3 == 0xEC000000656D6954;
                if (v36 || (v37 = OUTLINED_FUNCTION_14(), (OUTLINED_FUNCTION_24_5(v37, 0xEC000000656D6954) & 1) != 0))
                {
                  v18 = *(v0 + 120);
                  if (v18)
                  {
                    v19 = *(v0 + 112);
                    goto LABEL_8;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v39 = v5 == 0xD00000000000001ALL && v38 == v3;
                  if (v39 || (OUTLINED_FUNCTION_24_5(0xD00000000000001ALL, v38) & 1) != 0)
                  {
                    v18 = *(v0 + 136);
                    if (v18)
                    {
                      v19 = *(v0 + 128);
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v41 = v5 == 0xD00000000000001ALL && v40 == v3;
                    if (v41 || (OUTLINED_FUNCTION_24_5(0xD00000000000001ALL, v40) & 1) != 0)
                    {
                      v18 = *(v0 + 152);
                      if (v18)
                      {
                        v19 = *(v0 + 144);
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v43 = v5 == 0xD000000000000018 && v42 == v3;
                      if (v43 || (OUTLINED_FUNCTION_24_5(0xD000000000000018, v42) & 1) != 0)
                      {
                        v18 = *(v0 + 168);
                        if (v18)
                        {
                          v19 = *(v0 + 160);
                          goto LABEL_8;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v45 = v5 == 0xD000000000000018 && v44 == v3;
                        if (v45 || (OUTLINED_FUNCTION_24_5(0xD000000000000018, v44) & 1) != 0)
                        {
                          v18 = *(v0 + 184);
                          if (v18)
                          {
                            v19 = *(v0 + 176);
                            goto LABEL_8;
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_21_29();
                          v46 = v17 && v3 == 0xEC00000065746144;
                          if (v46 || (v47 = OUTLINED_FUNCTION_28_19(), (OUTLINED_FUNCTION_24_5(v47, 0xEC00000065746144) & 1) != 0))
                          {
                            v18 = *(v0 + 200);
                            if (v18)
                            {
                              v19 = *(v0 + 192);
                              goto LABEL_8;
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_21_29();
                            v48 = v17 && v3 == 0xEC000000656D6954;
                            if (v48 || (v49 = OUTLINED_FUNCTION_28_19(), (OUTLINED_FUNCTION_24_5(v49, 0xEC000000656D6954) & 1) != 0))
                            {
                              v18 = *(v0 + 216);
                              if (v18)
                              {
                                v19 = *(v0 + 208);
                                goto LABEL_8;
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              v51 = v5 == 0xD000000000000011 && v50 == v3;
                              if (v51 || (v52 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_24_5(v52, v53) & 1) != 0))
                              {
                                memcpy(v67, (v0 + 224), 0x108uLL);
                                if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v67) != 1)
                                {
                                  memcpy(v66, v67, sizeof(v66));
                                  sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient, &off_1F07D8570, v7);
                                  goto LABEL_17;
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                v55 = v5 == 0xD000000000000017 && v54 == v3;
                                if (!v55 && (OUTLINED_FUNCTION_24_5(0xD000000000000017, v54) & 1) == 0)
                                {
                                  OUTLINED_FUNCTION_13_30();
                                  if (v5 != v58 || v3 != v57)
                                  {
                                    v60 = OUTLINED_FUNCTION_14();
                                    if ((OUTLINED_FUNCTION_24_5(v60, v61) & 1) == 0)
                                    {
                                      sub_19349AB64();
                                      OUTLINED_FUNCTION_11();
                                      swift_allocError();
                                      v63 = v62;
                                      *v62 = v5;
                                      v62[1] = v3;
                                      v62[5] = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
                                      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v63 + 2);
                                      sub_19364939C(v0, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
                                      *(v63 + 48) = 1;
                                      swift_willThrow();

                                      goto LABEL_17;
                                    }
                                  }

                                  v67[0] = *(v0 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80));
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F910, &qword_1939768C8);
                                  goto LABEL_9;
                                }

                                v56 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
                                sub_193448758(v0 + *(v56 + 76), v1, &qword_1EAE3A9E8, &qword_19394F800);
                                if (__swift_getEnumTagSinglePayload(v1, 1, v10) != 1)
                                {
                                  (*(v65 + 32))(v15, v1, v10);
                                  sub_1934948FC();
                                  (*(v65 + 8))(v15, v10);
                                  goto LABEL_17;
                                }

                                sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
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
        }
      }
    }

LABEL_16:
    *v7 = 0u;
    *(v7 + 16) = 0u;
    goto LABEL_17;
  }

  v18 = *(v0 + 8);
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = *v0;
LABEL_8:
  v67[0] = v19;
  v67[1] = v18;
LABEL_9:
  sub_1934948FC();
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936492E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193649344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19364939C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t WalletPaymentsCommerceExtractedOrder.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19361FBBC(v4);
  v17 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = v2[12];
  sub_19364CD00();
  v9 = v2[14];
  sub_193610F78(a1 + v9);
  v10 = (a1 + v2[15]);
  sub_19344B5D8(v10);
  v19 = v2[16];
  OUTLINED_FUNCTION_7_9();
  v18 = v2[17];
  sub_19364FF1C();
  v20 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_19364C84C();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  v12 = a1 + v3;
  v13 = v11;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v11);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v17 = 0;
  v17[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;

  v14 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  *v7 = 0;
  v7[1] = 0;
  sub_19344E6DC(a1 + v8, &qword_1EAE3F1A0, &qword_193973038);
  v15 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v15);
  *(a1 + v2[13]) = v14;
  sub_193463B08(__src);
  memcpy(__dst, a1 + v9, 0x108uLL);
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  memcpy(a1 + v9, __src, 0x108uLL);
  sub_193613BF4(*v10, v10[1], v10[2], v10[3], v10[4]);
  v10[4] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(a1 + v19) = 2;
  sub_19344E6DC(a1 + v18, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v18, 1, 1, v13);

  *v20 = 0;
  v20[1] = 0;
  return result;
}

BOOL static WalletPaymentsCommerceExtractedOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v135 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v132 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v131 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v125 - v14;
  v15 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v125 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1C0, &qword_193973118);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_18_29();
  OUTLINED_FUNCTION_0_60();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v28);
    v32 = v32 && v30 == v31;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_60();
  if (v35)
  {
    if (!v33)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v34);
    v38 = v32 && v36 == v37;
    if (!v38 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_60();
  if (v41)
  {
    if (!v39)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v40);
    v44 = v32 && v42 == v43;
    if (!v44 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if ((sub_19364A6F4(*(a1 + v26[10]), *(a2 + v26[10])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_60();
  if (v47)
  {
    if (!v45)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v46);
    v50 = v32 && v48 == v49;
    if (!v50 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v130 = v26[12];
  v51 = *(v24 + 48);
  sub_1934486F8(a1 + v130, v2, &qword_1EAE3F1A0, &qword_193973038);
  v52 = a2 + v130;
  v130 = v51;
  sub_1934486F8(v52, v2 + v51, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_6_3(v2, 1, v15);
  if (v32)
  {
    OUTLINED_FUNCTION_6_3(v2 + v130, 1, v15);
    if (v32)
    {
      sub_19344E6DC(v2, &qword_1EAE3F1A0, &qword_193973038);
      goto LABEL_49;
    }

LABEL_46:
    v56 = &qword_1EAE3F1C0;
    v57 = &qword_193973118;
    v58 = v2;
LABEL_47:
    sub_19344E6DC(v58, v56, v57);
    return 0;
  }

  sub_1934486F8(v2, v23, &qword_1EAE3F1A0, &qword_193973038);
  v53 = v130;
  OUTLINED_FUNCTION_6_3(v2 + v130, 1, v15);
  if (v54)
  {
    OUTLINED_FUNCTION_6_43();
    sub_19364ACA0(v23, v55);
    goto LABEL_46;
  }

  sub_193616384(v2 + v53, v19);
  OUTLINED_FUNCTION_5_48();
  sub_19364AC58(v59, v60, &protocol conformance descriptor for WalletPaymentsCommerceTrackedOrder.Merchant);
  v61 = sub_19393C550();
  sub_19364ACA0(v19, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19364ACA0(v23, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19344E6DC(v2, &qword_1EAE3F1A0, &qword_193973038);
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  if ((sub_19364A8FC(*(a1 + v26[13]), *(a2 + v26[13])) & 1) == 0)
  {
    return 0;
  }

  v62 = v26[14];
  memcpy(v143, (a1 + v62), sizeof(v143));
  v63 = v26[14];
  memcpy(v144, (a2 + v63), sizeof(v144));
  memcpy(v142, (a1 + v62), 0x108uLL);
  memcpy(&v142[33], (a2 + v63), 0x108uLL);
  memcpy(v145, (a1 + v62), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v145) == 1)
  {
    memcpy(v140, &v142[33], 0x108uLL);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v140) == 1)
    {
      OUTLINED_FUNCTION_20_33(v141);
      OUTLINED_FUNCTION_19_37(v143, v139);
      OUTLINED_FUNCTION_19_37(v144, v139);
      sub_19344E6DC(v141, &qword_1EAE3F1A8, &qword_1939732B0);
      goto LABEL_58;
    }

    sub_1934486F8(v143, v141, &qword_1EAE3F1A8, &qword_1939732B0);
    sub_1934486F8(v144, v141, &qword_1EAE3F1A8, &qword_1939732B0);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_20_33(v141);
  OUTLINED_FUNCTION_20_33(v139);
  memcpy(v140, &v142[33], 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v140) == 1)
  {
    memcpy(v138, v139, sizeof(v138));
    OUTLINED_FUNCTION_13_31(v143);
    OUTLINED_FUNCTION_13_31(v144);
    OUTLINED_FUNCTION_13_31(v141);
    sub_1936162DC(v138);
LABEL_56:
    memcpy(v140, v142, sizeof(v140));
    v56 = &unk_1EAE3F1C8;
    v57 = &unk_193973120;
    v58 = v140;
    goto LABEL_47;
  }

  memcpy(v138, &v142[33], sizeof(v138));
  OUTLINED_FUNCTION_14_34(v143);
  OUTLINED_FUNCTION_14_34(v144);
  OUTLINED_FUNCTION_14_34(v141);
  sub_193616330();
  v64 = sub_19393C550();
  memcpy(v136, v138, sizeof(v136));
  sub_1936162DC(v136);
  memcpy(v137, v139, sizeof(v137));
  sub_1936162DC(v137);
  OUTLINED_FUNCTION_20_33(v138);
  sub_19344E6DC(v138, &qword_1EAE3F1A8, &qword_1939732B0);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v65 = v26[15];
  v66 = *(a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = *(a1 + v65 + 16);
  v69 = *(a1 + v65 + 24);
  v70 = *(a1 + v65 + 32);
  v71 = (a2 + v65);
  v72 = *v71;
  v73 = v71[1];
  v75 = v71[2];
  v74 = v71[3];
  v76 = v71[4];
  v130 = v68;
  if (!v70)
  {
    v125 = v72;
    v126 = 0;
    v128 = v66;
    v129 = v67;
    v127 = v69;
    sub_1936161E4(v66, v67, v68, v69, 0);
    if (!v76)
    {
      sub_1936161E4(v125, v73, v75, v74, 0);
      sub_193613BF4(v128, v129, v130, v127, 0);
      goto LABEL_68;
    }

    v85 = OUTLINED_FUNCTION_2_51();
    sub_1936161E4(v85, v86, v87, v88, v76);
    v90 = v129;
    v89 = v130;
    v92 = v127;
    v91 = v128;
    v93 = v126;
LABEL_65:
    sub_193613BF4(v91, v90, v89, v92, v93);
    v98 = OUTLINED_FUNCTION_2_51();
    sub_193613BF4(v98, v99, v100, v101, v76);
    return 0;
  }

  v142[0] = v66;
  v142[1] = v67;
  v142[2] = v68;
  v142[3] = v69;
  v142[4] = v70;
  if (!v76)
  {
    v91 = v66;
    v90 = v67;
    v92 = v69;
    v93 = v70;
    sub_1936161E4(v66, v67, v68, v69, v70);
    v94 = OUTLINED_FUNCTION_2_51();
    sub_1936161E4(v94, v95, v96, v97, 0);
    sub_1936161E4(v91, v90, v130, v92, v93);

    v89 = v130;
    goto LABEL_65;
  }

  v140[0] = v72;
  v140[1] = v73;
  v140[2] = v75;
  v140[3] = v74;
  v140[4] = v76;
  v128 = v66;
  v129 = v67;
  v125 = v76;
  v126 = v70;
  v127 = v69;
  v77 = v70;
  sub_1936161E4(v66, v67, v68, v69, v70);
  v78 = OUTLINED_FUNCTION_2_51();
  sub_1936161E4(v78, v79, v80, v81, v125);
  v82 = v128;
  v83 = v130;
  v84 = v127;
  sub_1936161E4(v128, v129, v130, v127, v77);
  sub_193616288();
  LODWORD(v125) = sub_19393C550();

  sub_193613BF4(v82, v129, v83, v84, v126);
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_68:
  v103 = v26[16];
  v104 = *(a1 + v103);
  v105 = *(a2 + v103);
  if (v104 == 2)
  {
    if (v105 != 2)
    {
      return 0;
    }
  }

  else if (v105 == 2 || ((v104 ^ v105) & 1) != 0)
  {
    return 0;
  }

  v106 = v26[17];
  v107 = *(v12 + 48);
  v108 = v134;
  OUTLINED_FUNCTION_19_37(a1 + v106, v134);
  OUTLINED_FUNCTION_19_37(a2 + v106, v108 + v107);
  v109 = v135;
  OUTLINED_FUNCTION_6_3(v108, 1, v135);
  if (v32)
  {
    OUTLINED_FUNCTION_6_3(v108 + v107, 1, v109);
    if (v32)
    {
      sub_19344E6DC(v108, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v110 = v133;
  sub_1934486F8(v108, v133, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v108 + v107, 1, v109);
  if (v111)
  {
    (*(v132 + 8))(v110, v109);
LABEL_81:
    v56 = &qword_1EAE3B968;
    v57 = &qword_193972430;
    v58 = v108;
    goto LABEL_47;
  }

  v112 = v132;
  v113 = v108 + v107;
  v114 = v131;
  (*(v132 + 32))(v131, v113, v109);
  OUTLINED_FUNCTION_4_46();
  sub_19364AC58(v115, v116, MEMORY[0x1E6969550]);
  v117 = sub_19393C550();
  v118 = *(v112 + 8);
  v118(v114, v109);
  v118(v133, v109);
  sub_19344E6DC(v108, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  OUTLINED_FUNCTION_0_60();
  if (v121)
  {
    if (v119)
    {
      OUTLINED_FUNCTION_5(v120);
      v124 = v32 && v122 == v123;
      if (v124 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v119;
}

uint64_t WalletPaymentsCommerceExtractedOrder.hash(into:)(uint64_t a1)
{
  v3 = v1;
  v39 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v36 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v35 - v11;
  v12 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_18_29();
  if (*(v1 + v19[7] + 8))
  {
    OUTLINED_FUNCTION_10_41();
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + v19[8] + 8))
  {
    OUTLINED_FUNCTION_10_41();
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + v19[9] + 8))
  {
    OUTLINED_FUNCTION_10_41();
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_19364AB04(a1, *(v1 + v19[10]), type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail, &qword_1EAE3F920, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail, &protocol conformance descriptor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
  if (*(v1 + v19[11] + 8))
  {
    OUTLINED_FUNCTION_10_41();
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_1934486F8(v1 + v19[12], v2, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_6_3(v2, 1, v12);
  if (v20)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    sub_193616384(v2, v16);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_5_48();
    sub_19364AC58(v21, v22, &protocol conformance descriptor for WalletPaymentsCommerceTrackedOrder.Merchant);
    sub_19393C540();
    OUTLINED_FUNCTION_6_43();
    sub_19364ACA0(v16, v23);
  }

  sub_19364AB04(a1, *(v1 + v19[13]), type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment, &qword_1EAE3F918, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment, &protocol conformance descriptor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
  v24 = v19[14];
  memcpy(v43, (v3 + v24), sizeof(v43));
  memcpy(v44, (v3 + v24), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v44) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v40, v43, sizeof(v40));
    OUTLINED_FUNCTION_94();
    memcpy(v41, v43, sizeof(v41));
    sub_193613DB4(v41, v42);
    sub_1936164E4();
    sub_19393C540();
    memcpy(v42, v40, sizeof(v42));
    sub_1936162DC(v42);
  }

  v25 = v3 + v19[15];
  v26 = *(v25 + 32);
  if (v26)
  {
    v27 = *(v25 + 24);
    v42[0] = *v25;
    v35 = *(v25 + 8);
    *&v42[1] = v35;
    v42[3] = v27;
    v42[4] = v26;
    OUTLINED_FUNCTION_94();
    sub_193616538();

    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v3 + v19[16]) != 2)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  v28 = v38;
  sub_1934486F8(v3 + v19[17], v38, &qword_1EAE3A9E8, &qword_19394F800);
  v29 = v39;
  OUTLINED_FUNCTION_6_3(v28, 1, v39);
  if (v20)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v31 = v36;
    v30 = v37;
    (*(v37 + 32))(v36, v28, v29);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_4_46();
    sub_19364AC58(v32, v33, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v30 + 8))(v31, v29);
  }

  if (!*(v3 + v19[18] + 8))
  {
    return OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_94();
  return sub_19393C640();
}

uint64_t sub_19364A6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_19364ABF8(v13, v10, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        sub_19364ABF8(v14, v7, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        sub_19364AC58(&qword_1EAE3F930, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail, &protocol conformance descriptor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        v16 = sub_19393C550();
        sub_19364ACA0(v7, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        sub_19364ACA0(v10, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_19364A8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_19364ABF8(v13, v10, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        sub_19364ABF8(v14, v7, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        sub_19364AC58(&qword_1EAE3F928, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment, &protocol conformance descriptor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        v16 = sub_19393C550();
        sub_19364ACA0(v7, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        sub_19364ACA0(v10, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_19364AB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v11 = *(a2 + 16);
  result = MEMORY[0x193B18030](v11);
  if (v11)
  {
    v13 = *(a3(0) - 8);
    v14 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    sub_19364AC58(a4, a5, a6);
    do
    {
      result = sub_19393C540();
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_19364ABF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19364AC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19364ACA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_19364ACF8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB900);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1939526C0;
  v5 = v40 + v0 + dword_1EAEAB938;
  *(v40 + v0) = 1;
  *v5 = "orderTypeIdentifier";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v40 + v0 + v4);
  *v9 = 2;
  *v8 = "orderIdentifier";
  v8[1] = 15;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v40 + v0 + 2 * v4);
  *v12 = 3;
  *v11 = "orderNumber";
  v11[1] = 11;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v40 + v0 + 3 * v4);
  *v15 = 4;
  *v14 = "orderEmails";
  v14[1] = 11;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v40 + v0 + 4 * v4);
  *v18 = 5;
  *v17 = "orderDate";
  v17[1] = 9;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v40 + v0 + 5 * v4);
  *v21 = 6;
  *v20 = "merchant";
  v20[1] = 8;
  v22 = OUTLINED_FUNCTION_41(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v40 + v0 + 6 * v4);
  *v24 = 7;
  *v23 = "shippingFulfillments";
  v23[1] = 20;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v40 + v0 + 7 * v4);
  *v27 = 8;
  *v26 = "customer";
  v26[1] = 8;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v40 + v0 + 8 * v4);
  *v30 = 9;
  *v29 = "payment";
  v29[1] = 7;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v40 + v0 + 9 * v4);
  *v33 = 10;
  *v32 = "isTrackedInWallet";
  v32[1] = 17;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v40 + v0 + 10 * v4);
  *v36 = 11;
  *v35 = "orderUpdateDate";
  v35[1] = 15;
  v37 = OUTLINED_FUNCTION_41(v35);
  (v7)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v40 + v0 + 11 * v4);
  *v39 = 12;
  *v38 = "trackedOrderIdentifier";
  *(v38 + 8) = 22;
  *(v38 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19364B064()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 28);
        goto LABEL_12;
      case 2:
        v6 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 32);
        goto LABEL_12;
      case 3:
        v6 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 36);
        goto LABEL_12;
      case 4:
        type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v8 = OUTLINED_FUNCTION_36_3();
        v12 = &off_1F07DA8D0;
        goto LABEL_15;
      case 5:
        v6 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 44);
        goto LABEL_12;
      case 6:
        type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
        OUTLINED_FUNCTION_36_3();
        goto LABEL_18;
      case 7:
        type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
        v8 = OUTLINED_FUNCTION_36_3();
        v12 = &off_1F07DA900;
LABEL_15:
        sub_193498238(v8, v9, v10, v11, v12);
        goto LABEL_19;
      case 8:
      case 9:
        type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
LABEL_18:
        sub_193498018();
        goto LABEL_19;
      case 10:
        v7 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        OUTLINED_FUNCTION_8_2(*(v7 + 64));
        sub_19393C0F0();
        goto LABEL_19;
      case 11:
        v13 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        sub_1934976E4(v1 + *(v13 + 68), 26211, 0xE200000000000000, v3, v2);
        goto LABEL_19;
      case 12:
        v6 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 72);
LABEL_12:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C200();
LABEL_19:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19364B260()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  v3 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_7(*v5, v4, 1);
    v2 = v0;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_16_4();
    if (!v6 || (OUTLINED_FUNCTION_2_7(*v7, v6, 2), (v2 = v0) == 0))
    {
      OUTLINED_FUNCTION_16_4();
      if (!v8 || (OUTLINED_FUNCTION_2_7(*v9, v8, 3), (v2 = v0) == 0))
      {
        if (!*(*(v1 + v3[10]) + 16) || (type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0), OUTLINED_FUNCTION_78_1(), sub_193451CFC(v10, v11, v12, v13, v14, v15), (v2 = v0) == 0))
        {
          OUTLINED_FUNCTION_16_4();
          if (!v16 || (OUTLINED_FUNCTION_2_7(*v17, v16, 5), (v2 = v0) == 0))
          {
            OUTLINED_FUNCTION_11_1();
            sub_19364B4C8();
            if (!v2)
            {
              if (*(*(v1 + v3[13]) + 16))
              {
                type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
                OUTLINED_FUNCTION_78_1();
                sub_193451CFC(v18, v19, v20, v21, v22, v23);
              }

              memcpy(__dst, (v1 + v3[14]), 0x108uLL);
              if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
              {
                memcpy(v29, __dst, sizeof(v29));
                OUTLINED_FUNCTION_78_1();
                sub_193447600();
              }

              v24 = v1 + v3[15];
              v25 = *(v24 + 32);
              if (v25)
              {
                v26 = *(v24 + 16);
                __dst[0] = *v24;
                __dst[1] = v26;
                *&__dst[2] = v25;
                OUTLINED_FUNCTION_78_1();
                sub_193447600();
              }

              if (*(v1 + v3[16]) != 2)
              {
                sub_19393C2E0();
              }

              OUTLINED_FUNCTION_11_1();
              sub_19364B604();
              OUTLINED_FUNCTION_16_4();
              if (v27)
              {
                OUTLINED_FUNCTION_2_7(*v28, v27, 12);
              }
            }
          }
        }
      }
    }
  }
}

void sub_19364B4C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v10 = OUTLINED_FUNCTION_15_9();
  v11 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v10);
  sub_193448758(v2 + *(v11 + 48), v0, &qword_1EAE3F1A0, &qword_193973038);
  if (__swift_getEnumTagSinglePayload(v0, 1, v8) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3F1A0, &qword_193973038);
  }

  else
  {
    sub_19364C798(v0, v1, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
    OUTLINED_FUNCTION_12_12(v1, 6);
    sub_19364C7F4(v1, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19364B604()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_42_7(*(v12 + 68));
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_243();
    v14(v13);
    OUTLINED_FUNCTION_231(v11, 11);
    v15 = OUTLINED_FUNCTION_78();
    v16(v15);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19364B7AC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB918);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v7, xmmword_19394FBC0);
  *v0 = "emailMetadata";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  *v10 = "emailType";
  v10[1] = 9;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = 3;
  *v13 = "spotlightUniqueIdentifier";
  v13[1] = 25;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v17 = 4;
  *v16 = "spotlightDomainIdentifier";
  *(v16 + 8) = 25;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19364B97C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        sub_193498018();
        goto LABEL_10;
      case 2:
        type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        sub_1934982A8();
        goto LABEL_10;
      case 3:
        v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 24);
        goto LABEL_8;
      case 4:
        v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 28);
LABEL_8:
        OUTLINED_FUNCTION_8_2(v3);
        sub_19393C200();
LABEL_10:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19364BA98()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_19364BB7C();
  if (!v0)
  {
    if ((*(v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 20) + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v2, v3, v4, v5, v6, v7);
    }

    OUTLINED_FUNCTION_16_4();
    if (v8)
    {
      OUTLINED_FUNCTION_2_7(*v9, v8, 3);
    }

    OUTLINED_FUNCTION_16_4();
    if (v10)
    {
      OUTLINED_FUNCTION_2_7(*v11, v10, 4);
    }
  }
}

void sub_19364BB7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  v7 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  sub_193448758(v1, v0, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3EF88, &qword_193972100);
  }

  else
  {
    sub_19364C798(v0, v11, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
    OUTLINED_FUNCTION_12_12(v11, 1);
    sub_19364C7F4(v11, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19364BD18()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB930);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v57, xmmword_193969E40);
  *v0 = "fulfillmentIdentifier";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v10 = 2;
  *v9 = "status";
  v9[1] = 6;
  v11 = OUTLINED_FUNCTION_1_3(v9);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v13 = 3;
  *v12 = "trackingNumber";
  v12[1] = 14;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v16 = 4;
  *v15 = "carrierName";
  v15[1] = 11;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v19 = 5;
  *v18 = "carrierIdentifier";
  v18[1] = 17;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 5 * v6);
  *v22 = 6;
  *v21 = "shippingMethod";
  v21[1] = 14;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 6 * v6);
  *v25 = 7;
  *v24 = "shippingDate";
  v24[1] = 12;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v1 + 7 * v6);
  *v28 = 8;
  *v27 = "shippingTime";
  v27[1] = 12;
  v29 = OUTLINED_FUNCTION_1_3(v27);
  (v8)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v1 + 8 * v6);
  *v31 = 9;
  *v30 = "estimatedDeliveryStartDate";
  v30[1] = 26;
  v32 = OUTLINED_FUNCTION_1_3(v30);
  (v8)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v1 + 9 * v6);
  *v34 = 10;
  *v33 = "estimatedDeliveryStartTime";
  v33[1] = 26;
  v35 = OUTLINED_FUNCTION_1_3(v33);
  (v8)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 10 * v6);
  *v37 = 11;
  *v36 = "estimatedDeliveryEndDate";
  v36[1] = 24;
  v38 = OUTLINED_FUNCTION_1_3(v36);
  (v8)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v1 + 11 * v6);
  *v40 = 12;
  *v39 = "estimatedDeliveryEndTime";
  v39[1] = 24;
  v41 = OUTLINED_FUNCTION_1_3(v39);
  (v8)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v1 + 12 * v6);
  *v43 = 13;
  *v42 = "deliveryDate";
  v42[1] = v44;
  v45 = OUTLINED_FUNCTION_1_3(v42);
  (v8)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v1 + 13 * v6);
  *v47 = 14;
  *v46 = "deliveryTime";
  v46[1] = 12;
  v48 = OUTLINED_FUNCTION_1_3(v46);
  (v8)(v48);
  v49 = OUTLINED_FUNCTION_3_1(v1 + 14 * v6);
  *v50 = 15;
  *v49 = "shippingRecipient";
  v49[1] = 17;
  v51 = OUTLINED_FUNCTION_1_3(v49);
  (v8)(v51);
  v52 = OUTLINED_FUNCTION_3_1(v1 + 15 * v6);
  *v53 = 16;
  *v52 = "fulfillmentCreationDate";
  v52[1] = 23;
  v54 = OUTLINED_FUNCTION_1_3(v52);
  (v8)(v54);
  v55 = OUTLINED_FUNCTION_3_1(v1 + 16 * v6);
  *v56 = 17;
  *v55 = "shippingEmails";
  *(v55 + 8) = 14;
  *(v55 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19364C164()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status;
  v8 = &off_1F07D8658;
  v9 = &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient;
  while (1)
  {
    v10 = sub_19393C0E0();
    if (v2 || (v11 & 1) != 0)
    {
      break;
    }

    switch(v10)
    {
      case 1:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        sub_19393C200();
        goto LABEL_10;
      case 2:
        sub_1934982A8();
        goto LABEL_10;
      case 15:
        sub_193498018();
        goto LABEL_10;
      case 16:
        v18 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
        sub_1934976E4(v0 + *(v18 + 76), 26211, 0xE200000000000000, v6, v4);
        goto LABEL_10;
      case 17:
        v12 = v9;
        v13 = v8;
        v14 = v7;
        v15 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80);
        v16 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v17 = v0 + v15;
        v7 = v14;
        v8 = v13;
        v9 = v12;
        sub_193498238(v17, v6, v16, v4, &off_1F07DA8D0);
LABEL_10:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19364C350()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  v3 = *(v1 + 8);
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v1, v3, 1);
    v2 = v0;
  }

  if (!v2)
  {
    if ((*(v1 + 25) & 1) != 0 || (v4 = *(v1 + 24), __dst[0] = *(v1 + 16), LOBYTE(__dst[1]) = v4 & 1, OUTLINED_FUNCTION_78_1(), sub_193447324(v5, v6, v7, v8, v9, v10), (v2 = v0) == 0))
    {
      v11 = *(v1 + 40);
      if (!v11 || (OUTLINED_FUNCTION_2_7(*(v1 + 32), v11, 3), (v2 = v0) == 0))
      {
        v12 = *(v1 + 56);
        if (!v12 || (OUTLINED_FUNCTION_2_7(*(v1 + 48), v12, 4), (v2 = v0) == 0))
        {
          v13 = *(v1 + 72);
          if (!v13 || (OUTLINED_FUNCTION_2_7(*(v1 + 64), v13, 5), (v2 = v0) == 0))
          {
            v14 = *(v1 + 88);
            if (!v14 || (OUTLINED_FUNCTION_2_7(*(v1 + 80), v14, 6), (v2 = v0) == 0))
            {
              v15 = *(v1 + 104);
              if (!v15 || (OUTLINED_FUNCTION_2_7(*(v1 + 96), v15, 7), (v2 = v0) == 0))
              {
                v16 = *(v1 + 120);
                if (!v16 || (OUTLINED_FUNCTION_2_7(*(v1 + 112), v16, 8), (v2 = v0) == 0))
                {
                  v17 = *(v1 + 136);
                  if (!v17 || (OUTLINED_FUNCTION_2_7(*(v1 + 128), v17, 9), (v2 = v0) == 0))
                  {
                    v18 = *(v1 + 152);
                    if (!v18 || (OUTLINED_FUNCTION_2_7(*(v1 + 144), v18, 10), (v2 = v0) == 0))
                    {
                      v19 = *(v1 + 168);
                      if (!v19 || (OUTLINED_FUNCTION_2_7(*(v1 + 160), v19, 11), (v2 = v0) == 0))
                      {
                        v20 = *(v1 + 184);
                        if (!v20 || (OUTLINED_FUNCTION_2_7(*(v1 + 176), v20, 12), (v2 = v0) == 0))
                        {
                          v21 = *(v1 + 200);
                          if (!v21 || (OUTLINED_FUNCTION_2_7(*(v1 + 192), v21, 13), (v2 = v0) == 0))
                          {
                            v22 = *(v1 + 216);
                            if (!v22 || (OUTLINED_FUNCTION_2_7(*(v1 + 208), v22, 14), (v2 = v0) == 0))
                            {
                              memcpy(__dst, (v1 + 224), sizeof(__dst));
                              if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v29, __dst, sizeof(v29)), OUTLINED_FUNCTION_78_1(), sub_193447600(), (v2 = v0) == 0))
                              {
                                OUTLINED_FUNCTION_11_1();
                                sub_19364C5F0();
                                if (!v2)
                                {
                                  if (*(*(v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80)) + 16))
                                  {
                                    type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
                                    OUTLINED_FUNCTION_78_1();
                                    sub_193451CFC(v23, v24, v25, v26, v27, v28);
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
            }
          }
        }
      }
    }
  }
}

void sub_19364C5F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  OUTLINED_FUNCTION_42_7(*(v12 + 76));
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_243();
    v14(v13);
    OUTLINED_FUNCTION_231(v11, 16);
    v15 = OUTLINED_FUNCTION_78();
    v16(v15);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19364C798(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_19364C7F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t WalletPaymentsCommerceExtractedOrder.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceExtractedOrder.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceExtractedOrder.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceExtractedOrder.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceExtractedOrder.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderTypeIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderNumber.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderNumber.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderNumber.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderEmails.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderEmails.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 40);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderEmails.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderDate.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderDate.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19364CD00()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceExtractedOrder.merchant.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 48), &qword_1EAE3F1A0, &qword_193973038);
}

uint64_t WalletPaymentsCommerceExtractedOrder.merchant.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 48), &qword_1EAE3F1A0, &qword_193973038);
}

uint64_t WalletPaymentsCommerceExtractedOrder.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.shippingFulfillments.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
}

uint64_t WalletPaymentsCommerceExtractedOrder.shippingFulfillments.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 52);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.shippingFulfillments.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.customer.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 56);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x108uLL);
  return sub_193448804(__dst, &v5, &qword_1EAE3F1A8, &qword_1939732B0);
}

void *WalletPaymentsCommerceExtractedOrder.customer.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 56);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  return memcpy((v1 + v3), v0, 0x108uLL);
}

uint64_t WalletPaymentsCommerceExtractedOrder.customer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.payment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;

  return sub_1936161E4(v4, v5, v6, v7, v8);
}

__n128 WalletPaymentsCommerceExtractedOrder.payment.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 60));
  sub_193613BF4(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.payment.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.isTrackedInWallet.setter(char a1)
{
  result = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.isTrackedInWallet.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderUpdateDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 68), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderUpdateDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 68), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.trackedOrderIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.trackedOrderIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.trackedOrderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.emailType.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.emailType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v6 = v1 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.emailType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightUniqueIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightUniqueIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightUniqueIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19364D4D4(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19364D524()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightDomainIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v7 = v0 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = (v0 + v6[6]);
  v9 = (v0 + v6[7]);
  sub_19344E6DC(v0, &qword_1EAE3EF88, &qword_193972100);
  v10 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t static WalletPaymentsCommerceExtractedOrder.ExtractedEmail.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EFB0, &unk_193976980);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = *(v13 + 56);
  sub_193448804(v1, &v40 - v14, &qword_1EAE3EF88, &qword_193972100);
  sub_193448804(v0, &v15[v16], &qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_31(v15);
  if (!v17)
  {
    sub_193448804(v15, v10, &qword_1EAE3EF88, &qword_193972100);
    OUTLINED_FUNCTION_31(&v15[v16]);
    if (!v17)
    {
      sub_193605C0C(&v15[v16], v6);
      OUTLINED_FUNCTION_14_35();
      sub_19364DB90(v19, v20, &protocol conformance descriptor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
      v21 = sub_19393C550();
      sub_19364FEC8();
      sub_19364FEC8();
      sub_19344E6DC(v15, &qword_1EAE3EF88, &qword_193972100);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_11_33();
    sub_19364FEC8();
LABEL_9:
    sub_19344E6DC(v15, &qword_1EAE3EFB0, &unk_193976980);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v15[v16]);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v15, &qword_1EAE3EF88, &qword_193972100);
LABEL_13:
  v22 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 20);
  v23 = (v1 + v22);
  v24 = *(v1 + v22 + 9);
  v25 = (v0 + v22);
  v26 = *(v0 + v22 + 9);
  if (v24)
  {
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v27 = *v25;
    v28 = *(v25 + 8);
    v29 = *(v23 + 8);
    v42 = *v23;
    v43 = v29;
    if (v26)
    {
      return 0;
    }

    v40 = v27;
    v41 = v28 & 1;
    sub_193605BB8();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    v34 = *v32 == *v33 && v30 == v31;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v35)
  {
    if (v36)
    {
      v39 = *v37 == *v38 && v35 == v36;
      if (v39 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v36)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_193448804(v1, &v18 - v10, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_193605C0C(v11, v7);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_14_35();
    sub_19364DB90(v12, v13, &protocol conformance descriptor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
    sub_19393C540();
    OUTLINED_FUNCTION_11_33();
    sub_19364FEC8();
  }

  v14 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v15 = v1 + v14[5];
  if (*(v15 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *(v15 + 8);
    v18 = *v15;
    v19 = v16 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193606214();
    sub_19393C540();
  }

  if (*(v1 + v14[6] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!*(v1 + v14[7] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_19364DB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.carrierIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingMethod.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryStartDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryStartTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryEndDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryEndTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.deliveryDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.deliveryTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 224), 0x108uLL);
  memcpy(a1, (v1 + 224), 0x108uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F2D0, &unk_1939732B8);
}

void *WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingRecipient.setter(const void *a1)
{
  memcpy(v4, (v1 + 224), 0x108uLL);
  sub_19344E6DC(v4, &qword_1EAE3F2D0, &unk_1939732B8);
  return memcpy((v1 + 224), a1, 0x108uLL);
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentCreationDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 76), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentCreationDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 76), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentCreationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingEmails.getter()
{
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingEmails.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v2) + 80);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingEmails.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  sub_193463B08(v5);
  memcpy((a1 + 224), v5, 0x108uLL);
  v2 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  v3 = *(v2 + 76);
  sub_19393BE00();
  OUTLINED_FUNCTION_35_23();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  bzero((a1 + 32), 0xC0uLL);
  memcpy(__dst, (a1 + 224), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2D0, &unk_1939732B8);
  memcpy((a1 + 224), v5, 0x108uLL);
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  result = OUTLINED_FUNCTION_35_23();
  *(a1 + *(v2 + 80)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_23_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  v19 = *(a1 + 8);
  v20 = *(a2 + 8);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_141;
    }

    v21 = *a1 == *a2 && v19 == v20;
    if (!v21 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v20)
  {
    goto LABEL_141;
  }

  v22 = *(a2 + 25);
  if (*(a1 + 25))
  {
    if ((*(a2 + 25) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v23 = *(a2 + 16);
    v24 = *(a2 + 24);
    v25 = *(a1 + 24);
    v103[0] = *(a1 + 16);
    LOWORD(v103[1]) = v25;
    if (v22)
    {
      goto LABEL_141;
    }

    v101[0] = v23;
    LOBYTE(v101[1]) = v24 & 1;
    sub_19361F208();
    if ((sub_19393C550() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  v26 = *(a1 + 40);
  v27 = *(a2 + 40);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_141;
    }

    v28 = *(a1 + 32) == *(a2 + 32) && v26 == v27;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v27)
  {
    goto LABEL_141;
  }

  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  if (v29)
  {
    if (!v30)
    {
      goto LABEL_141;
    }

    v31 = *(a1 + 48) == *(a2 + 48) && v29 == v30;
    if (!v31 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v30)
  {
    goto LABEL_141;
  }

  v32 = *(a1 + 72);
  v33 = *(a2 + 72);
  if (v32)
  {
    if (!v33)
    {
      goto LABEL_141;
    }

    v34 = *(a1 + 64) == *(a2 + 64) && v32 == v33;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v33)
  {
    goto LABEL_141;
  }

  v35 = *(a1 + 88);
  v36 = *(a2 + 88);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_141;
    }

    v37 = *(a1 + 80) == *(a2 + 80) && v35 == v36;
    if (!v37 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v36)
  {
    goto LABEL_141;
  }

  v38 = *(a1 + 104);
  v39 = *(a2 + 104);
  if (v38)
  {
    if (!v39)
    {
      goto LABEL_141;
    }

    v40 = *(a1 + 96) == *(a2 + 96) && v38 == v39;
    if (!v40 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v39)
  {
    goto LABEL_141;
  }

  v41 = *(a1 + 120);
  v42 = *(a2 + 120);
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_141;
    }

    v43 = *(a1 + 112) == *(a2 + 112) && v41 == v42;
    if (!v43 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v42)
  {
    goto LABEL_141;
  }

  v44 = *(a1 + 136);
  v45 = *(a2 + 136);
  if (v44)
  {
    if (!v45)
    {
      goto LABEL_141;
    }

    v46 = *(a1 + 128) == *(a2 + 128) && v44 == v45;
    if (!v46 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v45)
  {
    goto LABEL_141;
  }

  v47 = *(a1 + 152);
  v48 = *(a2 + 152);
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_141;
    }

    v49 = *(a1 + 144) == *(a2 + 144) && v47 == v48;
    if (!v49 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v48)
  {
    goto LABEL_141;
  }

  v50 = *(a1 + 168);
  v51 = *(a2 + 168);
  if (v50)
  {
    if (!v51)
    {
      goto LABEL_141;
    }

    v52 = *(a1 + 160) == *(a2 + 160) && v50 == v51;
    if (!v52 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v51)
  {
    goto LABEL_141;
  }

  v53 = *(a1 + 184);
  v54 = *(a2 + 184);
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_141;
    }

    v55 = *(a1 + 176) == *(a2 + 176) && v53 == v54;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v54)
  {
    goto LABEL_141;
  }

  v56 = *(a1 + 200);
  v57 = *(a2 + 200);
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_141;
    }

    v58 = *(a1 + 192) == *(a2 + 192) && v56 == v57;
    if (!v58 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v57)
  {
    goto LABEL_141;
  }

  v59 = *(a1 + 216);
  v60 = *(a2 + 216);
  if (v59)
  {
    if (!v60)
    {
      goto LABEL_141;
    }

    v61 = *(a1 + 208) == *(a2 + 208) && v59 == v60;
    if (!v61 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v60)
  {
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_31_28(v104);
  memcpy(v105, (a2 + 224), sizeof(v105));
  OUTLINED_FUNCTION_31_28(v103);
  memcpy(&v103[33], (a2 + 224), 0x108uLL);
  OUTLINED_FUNCTION_31_28(v106);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v106) == 1)
  {
    memcpy(v101, &v103[33], 0x108uLL);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v101) == 1)
    {
      OUTLINED_FUNCTION_36_21(v102);
      sub_193448804(v104, v100, &qword_1EAE3F2D0, &unk_1939732B8);
      sub_193448804(v105, v100, &qword_1EAE3F2D0, &unk_1939732B8);
      sub_19344E6DC(v102, &qword_1EAE3F2D0, &unk_1939732B8);
LABEL_131:
      v95 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
      v85 = *(v15 + 48);
      v86 = *(v95 + 76);
      sub_193448804(a1 + v86, v18, &qword_1EAE3A9E8, &qword_19394F800);
      v96 = v85;
      sub_193448804(a2 + v86, &v18[v85], &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_13_25(v18);
      if (v21)
      {
        OUTLINED_FUNCTION_13_25(&v18[v96]);
        if (v21)
        {
          sub_19344E6DC(v18, &qword_1EAE3A9E8, &qword_19394F800);
          goto LABEL_144;
        }
      }

      else
      {
        sub_193448804(v18, v14, &qword_1EAE3A9E8, &qword_19394F800);
        OUTLINED_FUNCTION_13_25(&v18[v96]);
        if (!v87)
        {
          (*(v6 + 32))(v10, &v18[v96], v2);
          OUTLINED_FUNCTION_10_42();
          sub_19364DB90(v90, v91, MEMORY[0x1E6969550]);
          v92 = sub_19393C550();
          v93 = *(v6 + 8);
          v93(v10, v2);
          v93(v14, v2);
          sub_19344E6DC(v18, &qword_1EAE3A9E8, &qword_19394F800);
          if ((v92 & 1) == 0)
          {
            goto LABEL_141;
          }

LABEL_144:
          v88 = sub_19364A6F4(*(a1 + *(v95 + 80)), *(a2 + *(v95 + 80)));
          return v88 & 1;
        }

        (*(v6 + 8))(v14, v2);
      }

      v71 = &qword_1EAE3B968;
      v72 = &qword_193972430;
      v73 = v18;
      goto LABEL_140;
    }

    sub_193448804(v104, v102, &qword_1EAE3F2D0, &unk_1939732B8);
    sub_193448804(v105, v102, &qword_1EAE3F2D0, &unk_1939732B8);
LABEL_129:
    memcpy(v101, v103, sizeof(v101));
    v71 = &unk_1EAE3F2D8;
    v72 = &unk_1939732C8;
    v73 = v101;
LABEL_140:
    sub_19344E6DC(v73, v71, v72);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_36_21(v102);
  OUTLINED_FUNCTION_36_21(v100);
  memcpy(v101, &v103[33], 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v101) == 1)
  {
    memcpy(v99, v100, sizeof(v99));
    OUTLINED_FUNCTION_23_28();
    sub_193448804(v62, v63, v64, &unk_1939732B8);
    OUTLINED_FUNCTION_23_28();
    sub_193448804(v65, v66, v67, &unk_1939732B8);
    OUTLINED_FUNCTION_23_28();
    sub_193448804(v68, v69, v70, &unk_1939732B8);
    sub_19361B978(v99);
    goto LABEL_129;
  }

  memcpy(v99, &v103[33], sizeof(v99));
  OUTLINED_FUNCTION_23_28();
  sub_193448804(v74, v75, v76, v77);
  OUTLINED_FUNCTION_23_28();
  sub_193448804(v78, v79, v80, &unk_1939732B8);
  OUTLINED_FUNCTION_23_28();
  sub_193448804(v81, v82, v83, &unk_1939732B8);
  sub_19361F2F0();
  v84 = sub_19393C550();
  memcpy(v97, v99, sizeof(v97));
  sub_19361B978(v97);
  memcpy(v98, v100, sizeof(v98));
  sub_19361B978(v98);
  OUTLINED_FUNCTION_36_21(v99);
  sub_19344E6DC(v99, &qword_1EAE3F2D0, &unk_1939732B8);
  if (v84)
  {
    goto LABEL_131;
  }

LABEL_141:
  v88 = 0;
  return v88 & 1;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.hash(into:)(uint64_t a1)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_23_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 25) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v14 = *(v1 + 24);
    v24 = *(v1 + 16);
    v25 = v14 & 1;
    OUTLINED_FUNCTION_94();
    sub_19364F2F0();
    sub_19393C540();
  }

  if (*(v1 + 40))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 72))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 88))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 104))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 120))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 152))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 168))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 184))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 200))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 216))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_31_28(v23);
  OUTLINED_FUNCTION_31_28(&v24);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(&v24) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v20, v23, sizeof(v20));
    OUTLINED_FUNCTION_94();
    memcpy(v21, v23, sizeof(v21));
    sub_193613D58(v21, v22);
    sub_19364F344();
    sub_19393C540();
    memcpy(v22, v20, sizeof(v22));
    sub_19361B978(v22);
  }

  v15 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  sub_193448804(v1 + *(v15 + 76), v13, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v13);
  if (v16)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v2);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_10_42();
    sub_19364DB90(v17, v18, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v5 + 8))(v9, v2);
  }

  return sub_19364F49C(a1, *(v1 + *(v15 + 80)));
}

unint64_t sub_19364F2F0()
{
  result = qword_1EAE3F968;
  if (!qword_1EAE3F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F968);
  }

  return result;
}

unint64_t sub_19364F344()
{
  result = qword_1EAE3F970;
  if (!qword_1EAE3F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F970);
  }

  return result;
}

uint64_t sub_19364F3EC(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19364F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19364F49C(uint64_t a1, uint64_t a2)
{
  v20 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  MEMORY[0x1EEE9AC00](v20);
  v17 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  result = MEMORY[0x193B18030](v11);
  if (v11)
  {
    v13 = &v10[v7[5]];
    v19 = &v10[v7[6]];
    v14 = &v10[v7[7]];
    v15 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = *(v8 + 72);
    do
    {
      sub_19364FE64(v15, v10);
      sub_193448804(v10, v6, &qword_1EAE3EF88, &qword_193972100);
      if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_193605C0C(v6, v17);
        sub_19393CAD0();
        sub_19364DB90(&qword_1EAE3F018, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata, &protocol conformance descriptor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
        sub_19393C540();
        sub_19364FEC8();
      }

      if (v13[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v16 = v13[8];
        v21 = *v13;
        v22 = v16 & 1;
        sub_19393CAD0();
        sub_193606214();
        sub_19393C540();
      }

      if (*(v19 + 1))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (*(v14 + 1))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      result = sub_19364FEC8();
      v15 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_19364F90C()
{
  OUTLINED_FUNCTION_13_32();
  sub_19364FB58(319, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v4 & v3))
  {
    sub_19349D198(319);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    OUTLINED_FUNCTION_12_28();
    sub_19364FB58(319, v9, v10, MEMORY[0x1E69E62F8]);
    if (v11 > 0x3F)
    {
      return v5;
    }

    sub_19364FB58(319, &qword_1ED5037A0, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant, MEMORY[0x1E69E6720]);
    if (v12 > 0x3F)
    {
      return v5;
    }

    sub_19364FB58(319, &qword_1ED5034C8, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
    if (v13 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED5037A8, &type metadata for WalletPaymentsCommerceTrackedOrder.Customer);
    if (v14 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, qword_1ED5037B0, &type metadata for WalletPaymentsCommerceTrackedOrder.Payment);
    if (v15 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v16 > 0x3F)
    {
      return v5;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_19364FB58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_19364FBE4()
{
  sub_19364FB58(319, qword_1ED503A70, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED503AC8, &type metadata for WalletPaymentsCommerceOrderEmail.EmailType);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19364FCF0()
{
  sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D1FC(319, &qword_1ED503870, &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, qword_1ED503878, &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        OUTLINED_FUNCTION_13_32();
        sub_19364FB58(319, v5, v6, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          OUTLINED_FUNCTION_12_28();
          sub_19364FB58(319, v7, v8, MEMORY[0x1E69E62F8]);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_19364FE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19364FEC8()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *OUTLINED_FUNCTION_36_21(void *a1)
{

  return memcpy(a1, (v1 + 1872), 0x108uLL);
}

_BYTE *_s22GeneratedImageFeaturesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193650000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511238);
  v4 = __swift_project_value_buffer(v3, qword_1ED511238);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.UserInteraction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_35 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511238);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F980, &qword_193976C58);
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

unint64_t static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.UserInteraction.attribute(_:)(void (*a1)(void))
{
  result = sub_193650410(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193650458(void (*a1)(void))
{
  result = sub_193650410(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193650488(uint64_t a1)
{
  result = sub_1936504B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936504B0()
{
  result = qword_1ED504EC0;
  if (!qword_1ED504EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED504EC0);
  }

  return result;
}

_BYTE *_s15UserInteractionOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GeneratedImageUserInteraction.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1936507A8(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3F988, &qword_193976CD0, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1936507A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageUserInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GeneratedImageUserInteraction.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3F988, &qword_193976CD0, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_19365093C(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19365093C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageUserInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GeneratedImageUserInteraction.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
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
  if (*sub_193655284() == v5)
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
      sub_19365093C(v12, v35);
      v28 = type metadata accessor for GeneratedImageUserInteraction(0);
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
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t GeneratedImageUserInteraction.serialize()()
{
  v1 = type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936507A8(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3F988, &qword_193976CD0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3F988, &qword_193976CD0);
  return v11;
}

id static GeneratedImageUserInteraction.columns.getter()
{
  v339 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v327);
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v50);
  OUTLINED_FUNCTION_23_29();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v51, v52, v53, v54, v55, 2, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v56 = swift_initStackObject();
  v64 = OUTLINED_FUNCTION_2_4(v56, v57, v58, v59, v60, v61, v62, v63, v328);
  OUTLINED_FUNCTION_5_10(v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v74 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v74);
  v75 = OUTLINED_FUNCTION_105();
  result = sub_19343D150(v75, 0xEA00000000007265, 6, 0, v0, 14, 3);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  v76 = swift_initStackObject();
  v84 = OUTLINED_FUNCTION_2_4(v76, v77, v78, v79, v80, v81, v82, v83, v329);
  OUTLINED_FUNCTION_5_10(v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v94 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v94);
  result = OUTLINED_FUNCTION_3_5(0x6369706F74, 0xE500000000000000);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v95 = swift_initStackObject();
  v103 = OUTLINED_FUNCTION_2_4(v95, v96, v97, v98, v99, v100, v101, v102, v330);
  OUTLINED_FUNCTION_5_10(v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
  v113 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v113);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v114, v115, v116, v117, v118, 2, 0);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  v119 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  v129 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
  v139 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v139);
  v140 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_3_5(v140, v141);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v142 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  v162 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v162);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A2B250);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_2(result);
  v163 = swift_initStackObject();
  v171 = OUTLINED_FUNCTION_2_4(v163, v164, v165, v166, v167, v168, v169, v170, v331);
  OUTLINED_FUNCTION_5_10(v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  v181 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v181);
  OUTLINED_FUNCTION_25_27();
  OUTLINED_FUNCTION_24_27();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v182, v183, v184, v185, v186, 4, 0);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_2(result);
  v187 = swift_initStackObject();
  v195 = OUTLINED_FUNCTION_2_4(v187, v188, v189, v190, v191, v192, v193, v194, v332);
  OUTLINED_FUNCTION_5_10(v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
  v205 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v205);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v206, v207, v208, v209, v210, 4, 0);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_2(result);
  v211 = swift_initStackObject();
  v219 = OUTLINED_FUNCTION_2_4(v211, v212, v213, v214, v215, v216, v217, v218, v333);
  OUTLINED_FUNCTION_5_10(v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
  v229 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v229);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v230, v231, v232, v233, v234, 4, 0);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_7_2(result);
  v235 = swift_initStackObject();
  v243 = OUTLINED_FUNCTION_2_4(v235, v236, v237, v238, v239, v240, v241, v242, v334);
  OUTLINED_FUNCTION_5_10(v243, v244, v245, v246, v247, v248, v249, v250, v251, v252);
  v253 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v253);
  result = OUTLINED_FUNCTION_3_5(0x656C797473, 0xE500000000000000);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_2(result);
  v254 = swift_initStackObject();
  v262 = OUTLINED_FUNCTION_2_4(v254, v255, v256, v257, v258, v259, v260, v261, v335);
  OUTLINED_FUNCTION_5_10(v262, v263, v264, v265, v266, v267, v268, v269, v270, v271);
  v272 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v272);
  result = OUTLINED_FUNCTION_3_5(1919508840, 0xE400000000000000);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_7_2(result);
  v273 = swift_initStackObject();
  v281 = OUTLINED_FUNCTION_2_4(v273, v274, v275, v276, v277, v278, v279, v280, v336);
  OUTLINED_FUNCTION_5_10(v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
  v291 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v291);
  v292 = OUTLINED_FUNCTION_19_38();
  result = OUTLINED_FUNCTION_3_5(v292, 0xEA00000000007269);
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_7_2(result);
  v293 = swift_initStackObject();
  v301 = OUTLINED_FUNCTION_2_4(v293, v294, v295, v296, v297, v298, v299, v300, v337);
  OUTLINED_FUNCTION_5_10(v301, v302, v303, v304, v305, v306, v307, v308, v309, v310);
  v311 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v311);
  v312 = OUTLINED_FUNCTION_18_30();
  result = OUTLINED_FUNCTION_3_5(v312, 0xEB00000000736569);
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_7_2(result);
  v313 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v313, v314, v315, v316, v317, v318, v319, v320, v321, v322);
  v323 = OUTLINED_FUNCTION_6_4();
  *(v323 + 16) = v338;
  *(v323 + 32) = sub_19393C850();
  v324 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v325 = OUTLINED_FUNCTION_31_6();
  result = sub_19343D150(v325, v326, 2, 0, v323, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v339;
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_1936513F4()
{
  OUTLINED_FUNCTION_26();
  v86 = v0;
  v87 = v1;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v82 - v7;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v83 = v10;
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  v17 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v85 = v5;
  v24 = v5 == 0x6D617473656D6974 && v3 == 0xE900000000000070;
  if (v24 || (OUTLINED_FUNCTION_14_36(0x6D617473656D6974, 0xE900000000000070) & 1) != 0)
  {
    v25 = type metadata accessor for GeneratedImageUserInteraction(0);
    sub_1934486F8(v86 + *(v25 + 28), v16, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      (*(v19 + 32))(v23, v16, v17);
      sub_1934948FC();
      (*(v19 + 8))(v23, v17);
      goto LABEL_20;
    }

    v26 = &qword_1EAE3A9E8;
    v27 = &qword_19394F800;
    v28 = v16;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_16_2();
  v31 = v24 && v3 == 0xE600000000000000;
  if (v31 || (OUTLINED_FUNCTION_14_36(v30, 0xE600000000000000) & 1) != 0)
  {
    v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 32);
LABEL_17:
    v33 = (v86 + v32);
    v34 = *(v86 + v32 + 8);
    if (!v34)
    {
      goto LABEL_9;
    }

    v88 = *v33;
    v89 = v34;
LABEL_19:
    sub_1934948FC();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23_29();
  OUTLINED_FUNCTION_16_2();
  v37 = v24 && v3 == v36;
  if (v37 || (OUTLINED_FUNCTION_14_36(v35, v36) & 1) != 0)
  {
    v38 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 36);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_16_2();
  v41 = v24 && v3 == 0xEA00000000007265;
  if (!v41 && (OUTLINED_FUNCTION_14_36(v40, 0xEA00000000007265) & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v46 = v24 && v3 == 0xE500000000000000;
    if (v46 || (OUTLINED_FUNCTION_11_34(v45, 0xE500000000000000) & 1) != 0)
    {
      v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 44);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_16_2();
    v48 = v24 && v3 == 0xE500000000000000;
    if (!v48 && (OUTLINED_FUNCTION_11_34(v47, 0xE500000000000000) & 1) == 0)
    {
      OUTLINED_FUNCTION_21_30();
      v50 = v24 && v49 == v3;
      if (v50 || (v51 = OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_14_36(v51, v52) & 1) != 0))
      {
        v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 52);
      }

      else
      {
        OUTLINED_FUNCTION_16_2();
        v55 = v24 && v54 == v3;
        if (v55 || (OUTLINED_FUNCTION_14_36(v53, v54) & 1) != 0)
        {
          v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 56);
        }

        else
        {
          OUTLINED_FUNCTION_24_27();
          OUTLINED_FUNCTION_25_27();
          OUTLINED_FUNCTION_16_2();
          v58 = v24 && v3 == v57;
          if (v58 || (OUTLINED_FUNCTION_11_34(v56, v57) & 1) != 0)
          {
            v59 = type metadata accessor for GeneratedImageUserInteraction(0);
            OUTLINED_FUNCTION_6_45(*(v59 + 60));
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_16_2();
          v61 = v24 && v3 == 0xE600000000000000;
          if (v61 || (OUTLINED_FUNCTION_11_34(v60, 0xE600000000000000) & 1) != 0)
          {
            v62 = type metadata accessor for GeneratedImageUserInteraction(0);
            OUTLINED_FUNCTION_6_45(*(v62 + 64));
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_22_6();
          OUTLINED_FUNCTION_16_2();
          v64 = v24 && v3 == 0xE700000000000000;
          if (v64 || (OUTLINED_FUNCTION_11_34(v63, 0xE700000000000000) & 1) != 0)
          {
            v65 = type metadata accessor for GeneratedImageUserInteraction(0);
            OUTLINED_FUNCTION_6_45(*(v65 + 68));
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_16_2();
          v67 = v24 && v3 == 0xE500000000000000;
          if (v67 || (OUTLINED_FUNCTION_11_34(v66, 0xE500000000000000) & 1) != 0)
          {
            v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 72);
          }

          else
          {
            v68 = v85 == 1919508840 && v3 == 0xE400000000000000;
            if (v68 || (OUTLINED_FUNCTION_11_34(1919508840, 0xE400000000000000) & 1) != 0)
            {
              v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 76);
            }

            else
            {
              OUTLINED_FUNCTION_19_38();
              OUTLINED_FUNCTION_16_2();
              v71 = v24 && v3 == v70;
              if (v71 || (OUTLINED_FUNCTION_11_34(v69, v70) & 1) != 0)
              {
                v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 80);
              }

              else
              {
                OUTLINED_FUNCTION_18_30();
                OUTLINED_FUNCTION_16_2();
                v74 = v24 && v3 == v73;
                if (v74 || (OUTLINED_FUNCTION_11_34(v72, v73) & 1) != 0)
                {
                  v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 84);
                }

                else
                {
                  OUTLINED_FUNCTION_21_30();
                  if (!v24 || v75 != v3)
                  {
                    v77 = OUTLINED_FUNCTION_31_6();
                    if ((OUTLINED_FUNCTION_11_34(v77, v78) & 1) == 0)
                    {
                      sub_19349AB64();
                      swift_allocError();
                      v80 = v79;
                      *v79 = v85;
                      v79[1] = v3;
                      v79[5] = type metadata accessor for GeneratedImageUserInteraction(0);
                      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v80 + 2);
                      sub_1936507A8(v86, boxed_opaque_existential_1Tm);
                      *(v80 + 48) = 1;
                      swift_willThrow();

                      goto LABEL_20;
                    }
                  }

                  v32 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 88);
                }
              }
            }
          }
        }
      }

      goto LABEL_17;
    }

    v38 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 48);
LABEL_27:
    v39 = v86 + v38;
    if (*(v39 + 4))
    {
      goto LABEL_9;
    }

    LODWORD(v88) = *v39;
    goto LABEL_19;
  }

  v42 = type metadata accessor for GeneratedImageUserInteraction(0);
  sub_1934486F8(v86 + *(v42 + 40), v8, &qword_1EAE3AA88, &qword_19394F9C0);
  v43 = v84;
  if (__swift_getEnumTagSinglePayload(v8, 1, v84) != 1)
  {
    v44 = v83;
    (*(v83 + 32))(v13, v8, v43);
    sub_1934948FC();
    (*(v44 + 8))(v13, v43);
    goto LABEL_20;
  }

  v26 = &qword_1EAE3AA88;
  v27 = &qword_19394F9C0;
  v28 = v8;
LABEL_8:
  sub_19344E6DC(v28, v26, v27);
LABEL_9:
  v29 = v87;
  *v87 = 0u;
  v29[1] = 0u;
LABEL_20:
  OUTLINED_FUNCTION_27();
}