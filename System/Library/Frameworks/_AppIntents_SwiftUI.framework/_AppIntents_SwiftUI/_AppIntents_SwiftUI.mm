uint64_t sub_1D4135BE0(uint64_t a1)
{
  result = sub_1D4166AD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D4135C70(uint64_t a1)
{
  result = sub_1D4166AD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(SEL *a1, unsigned int *a2, unsigned int *a3, void (*a4)(void))
{

  return sub_1D414695C(a1, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  *(v2 - 192) = v1;
  *(v2 - 184) = v0;

  return sub_1D41656D0();
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D41527F8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_6(unint64_t *a1)
{
  v2 = MEMORY[0x1E695A4B8];

  return sub_1D4136424(a1, v2);
}

uint64_t sub_1D4135EE4(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_20())
  {
    sub_1D4165F50();
  }

  else
  {
    sub_1D4165E50();
  }

  return sub_1D4165F80();
}

uint64_t sub_1D4135F3C(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_20())
  {
    sub_1D4165F50();
    sub_1D4165F80();
    sub_1D413D268();
  }

  else
  {
    sub_1D4165E50();
    sub_1D4165F80();
    sub_1D413D92C(&qword_1EC7C4368, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_1D4166A10();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_12_0()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_1D4166BB0();
}

uint64_t sub_1D41361D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{

  return sub_1D4166190();
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D4166BB0();
}

uint64_t OUTLINED_FUNCTION_4_4(unint64_t *a1)
{
  v2 = MEMORY[0x1E695A4B0];

  return sub_1D4136424(a1, v2);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1D4136424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D4165A20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_1D4165910();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D4165970();
}

void OUTLINED_FUNCTION_19_2()
{

  sub_1D413DBE4();
}

uint64_t sub_1D413653C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;

  return v3;
}

void OUTLINED_FUNCTION_13_4()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6EntityyQrqd__Sg0dE00dG0Rd__lF_0();
}

uint64_t OUTLINED_FUNCTION_21()
{
}

uint64_t OUTLINED_FUNCTION_20()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = *(v10 + 16);
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;

  return sub_1D4165910();
}

void OUTLINED_FUNCTION_10_6()
{

  JUMPOUT(0x1DA6D2650);
}

void sub_1D4136A7C()
{
  OUTLINED_FUNCTION_39();
  v69 = v2;
  v70 = v1;
  v4 = v3;
  v6 = v5;
  v67 = v7;
  v78 = v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v68 = (&v65 - v10);
  v11 = sub_1D4165A20();
  OUTLINED_FUNCTION_20_3();
  v13 = sub_1D413653C(v12, v0, MEMORY[0x1E695A4B0]);
  OUTLINED_FUNCTION_4_5();
  v16 = sub_1D413653C(v14, v0, v15);
  v75 = v6;
  v76 = v4;
  v81 = v6;
  v82 = v11;
  v71 = v13;
  v72 = v11;
  v83 = v4;
  v84 = v13;
  v65 = v16;
  v85 = v16;
  OUTLINED_FUNCTION_6_0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v73 = v18;
  v74 = v17;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  v26 = sub_1D41658E0();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_8();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C58, &qword_1D4168CC0);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_8();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v65 - v42;
  v44 = sub_1D41655E0();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
  sub_1D41371A4(v67, v25, &qword_1EC7C4C50, &qword_1D4168CB8);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1D4137AEC(v25, &qword_1EC7C4C50, &qword_1D4168CB8);
  }

  else
  {
    (*(v28 + 32))(v35, v25, v26);
    sub_1D41658C0();
    (*(v28 + 16))(v32, v35, v26);
    sub_1D41655C0();
    (*(v28 + 8))(v35, v26);
    sub_1D4137AEC(v43, &qword_1EC7C4C58, &qword_1D4168CC0);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
    sub_1D4137E44(v40, v43, &qword_1EC7C4C58, &qword_1D4168CC0);
  }

  v48 = v43;
  v66 = v43;
  v81 = v69;
  v50 = v75;
  v49 = v76;
  v51 = v71;
  v52 = v72;
  v69 = v21;
  v53 = v65;
  sub_1D4137BA4();
  sub_1D41371A4(v48, v40, &qword_1EC7C4C58, &qword_1D4168CC0);
  v54 = v68;
  *v68 = 0;
  v55 = v77;
  sub_1D41371A4(v40, v54 + *(v77 + 28), &qword_1EC7C4C58, &qword_1D4168CC0);
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_1ED9ACD78);
  }

  sub_1D4137AEC(v40, &qword_1EC7C4C58, &qword_1D4168CC0);
  v81 = v50;
  v82 = v52;
  v83 = v49;
  v84 = v51;
  v85 = v53;
  OUTLINED_FUNCTION_18_3();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_8();
  v61 = sub_1D41361D0(v57, v58, v59, v60);
  v79 = OpaqueTypeConformance2;
  v80 = v61;
  OUTLINED_FUNCTION_10();
  v62 = v74;
  WitnessTable = swift_getWitnessTable();
  v64 = v69;
  MEMORY[0x1DA6D1980](v54, v62, v55, WitnessTable);
  sub_1D4137AEC(v54, &qword_1EC7C4BD0, &unk_1D4168A90);
  (*(v73 + 8))(v64, v62);
  sub_1D4137AEC(v66, &qword_1EC7C4C58, &qword_1D4168CC0);
  OUTLINED_FUNCTION_28();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_4()
{
  v0[28] = v1;
  v0[29] = v3;
  v0[30] = v4;
  v0[31] = v2;

  return sub_1D4159C10(v5 - 144, (v0 + 37));
}

uint64_t OUTLINED_FUNCTION_31_2(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = v6;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v8;
  a4.n128_u64[0] = v9;

  return MEMORY[0x1EEDB4040](v4 - 152, a1, a2, a3, a4);
}

void _s7SwiftUI4ViewP012_AppIntents_aB0E19appEntityIdentifieryQr0dE00gH0VSgF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  sub_1D4165A20();
  sub_1D41371A4(v23, v27, &qword_1EC7C4C50, &qword_1D4168CB8);
  v28 = sub_1D41659F0();
  sub_1D4136A7C();

  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41371A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void sub_1D4137224(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1D4137290(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D4137320(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4137320(uint64_t a1)
{
  if (!qword_1ED9ACC90)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1D41667B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ACC90);
    }
  }
}

uint64_t sub_1D41373DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for AppViewModifier(255, *a1, a3, a4);
  OUTLINED_FUNCTION_9_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  sub_1D4166320();
  type metadata accessor for CGRect(255);
  v7 = type metadata accessor for AppViewAnchor(255, v4, v5, v6);
  type metadata accessor for AppViewPreferenceKey(255, v7, v8, v9);
  OUTLINED_FUNCTION_7_3();
  swift_getWitnessTable();
  sub_1D4166370();
  sub_1D4165F80();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_1D4166BB0();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D41375E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0700](a1, WitnessTable);
}

void View.appEntity<A>(_:state:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  (*(v9 + 16))(v0, v4, v2);
  OUTLINED_FUNCTION_13_4();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_28();
}

void _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6EntityyQrqd__Sg0dE00dG0Rd__lF_0()
{
  OUTLINED_FUNCTION_39();
  v26[5] = v0;
  v26[2] = v1;
  v26[3] = v2;
  v4 = v3;
  v6 = v5;
  v26[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_8();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  sub_1D4165A20();
  v22 = *(v14 + 16);
  v22(v21, v6, v12);
  v23 = sub_1D4165A10();
  v22(v18, v6, v12);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
  {
    (*(v14 + 8))(v18, v12);
    v24 = 1;
  }

  else
  {
    sub_1D4165670();
    (*(*(v4 - 8) + 8))(v18, v4);
    v24 = 0;
  }

  v25 = sub_1D41658E0();
  __swift_storeEnumTagSinglePayload(v11, v24, 1, v25);
  sub_1D4136A7C();

  sub_1D4137AEC(v11, &qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4137A28(uint64_t *a1)
{
  type metadata accessor for AppIntentIntelligenceProviderAudit(255, *a1, a1[1], a1[2]);
  OUTLINED_FUNCTION_15_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  sub_1D4166320();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C08, &qword_1D4168C28);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_3();
  sub_1D41361D0(v1, &qword_1EC7C4C08, &qword_1D4168C28, v2);
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t sub_1D4137AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D4137BA4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v18[2] = v10;
  v19 = v8;
  v20 = v6;
  v21 = v4;
  v22 = v2;
  v23 = v0;
  OUTLINED_FUNCTION_6_0();
  v18[1] = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v18 - v16;
  sub_1D4166650();
  v19 = v9;
  v20 = v7;
  v21 = v5;
  v22 = v3;
  v23 = v1;
  swift_getOpaqueTypeConformance2();
  sub_1D4137E94();
  (*(v14 + 8))(v17, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_28();
}

void View.appEntity<A>(entityType:identifier:state:)()
{
  OUTLINED_FUNCTION_39();
  v10[0] = v0;
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v10 - v8;
  (*(*(AssociatedTypeWitness - 8) + 16))(v10 - v8, v2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, AssociatedTypeWitness);
  _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6Entity_10identifierQrqd__m_2IDQyd__Sgt0dE00dG0Rd__lF_0();
  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4137E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void sub_1D4137E94()
{
  OUTLINED_FUNCTION_39();
  v23[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = type metadata accessor for AppIntentIntelligenceProviderAudit(0, v6, v4, v2);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v23 - v21;
  (*(v13 + 16))(v16, v10, v11);
  sub_1D4138354(v16, v22);
  MEMORY[0x1DA6D1980](v22, v8, v17, v23[0]);
  (*(v19 + 8))(v22, v17);
  OUTLINED_FUNCTION_28();
}

void _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6Entity_10identifierQrqd__m_2IDQyd__Sgt0dE00dG0Rd__lF_0()
{
  OUTLINED_FUNCTION_39();
  v40 = v0;
  v38 = v2;
  v39 = v1;
  v36[2] = v4;
  v37 = v3;
  v36[0] = v5;
  v36[1] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_8();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_8();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v36 - v29;
  v31 = sub_1D41658E0();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
  (*(v10 + 16))(v13, v37, v8);
  if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v8);
  }

  else
  {
    (*(v15 + 32))(v22, v13, AssociatedTypeWitness);
    (*(v15 + 16))(v19, v22, AssociatedTypeWitness);
    sub_1D41658D0();
    (*(v15 + 8))(v22, AssociatedTypeWitness);
    sub_1D4137AEC(v30, &qword_1EC7C4C50, &qword_1D4168CB8);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    sub_1D4137E44(v27, v30, &qword_1EC7C4C50, &qword_1D4168CB8);
  }

  sub_1D4165A20();
  sub_1D41371A4(v30, v27, &qword_1EC7C4C50, &qword_1D4168CB8);
  v35 = sub_1D41659F0();
  sub_1D4136A7C();

  sub_1D4137AEC(v30, &qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4138354@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1D4166AD0();
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 32);

  return v7(a3, a1, v5);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t sub_1D41383FC()
{
  result = sub_1D41384A0();
  qword_1ED9AD4A0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{
  v4 = *(v3 - 184);
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  return a1 + v2;
}

id OUTLINED_FUNCTION_2_7@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v5;
  v1[4] = v7;

  return v7;
}

uint64_t sub_1D41384A0()
{
  type metadata accessor for AppSwiftUIBridge();
  v0 = swift_allocObject();
  sub_1D4165720();
  sub_1D4165700();
  sub_1D4138620(&qword_1ED9ACD70, v1, type metadata accessor for AppSwiftUIBridge, &unk_1D41688C8);

  sub_1D4165710();

  if (qword_1ED9ACCE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D4165D70();
  __swift_project_value_buffer(v2, qword_1ED9AD488);
  v3 = sub_1D4165D50();
  v4 = sub_1D4166A60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4134000, v3, v4, "Instantiated AppSwiftUIBridge", v5, 2u);
    MEMORY[0x1DA6D2650](v5, -1, -1);
  }

  return v0;
}

uint64_t sub_1D4138620(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D413867C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_1D4165D70();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = *a3;
  if (*a3)
  {
    sub_1D4166970();
    result = *MEMORY[0x1E69AC200];
    if (*MEMORY[0x1E69AC200])
    {
      sub_1D4166970();
      return sub_1D4165D60();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D41387C8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v21 = v3;
  OUTLINED_FUNCTION_15_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  sub_1D4166320();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C08, &qword_1D4168C28);
  v4 = sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_8();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v22 = *(v2 + 16);
  v23 = *(v2 + 32);
  v24 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C10, &qword_1D4168C30);
  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1D41389D4();
  sub_1D4166840();
  sub_1D4166670();
  OUTLINED_FUNCTION_19_3();
  v17 = sub_1D41361D0(v15, &qword_1EC7C4C08, &qword_1D4168C28, v16);
  v25 = WitnessTable;
  v26 = v17;
  OUTLINED_FUNCTION_10();
  swift_getWitnessTable();
  v18 = *(v6 + 16);
  v18(v13, v10, v4);
  v19 = *(v6 + 8);
  v19(v10, v4);
  v18(v21, v13, v4);
  v19(v13, v4);
  OUTLINED_FUNCTION_28();
}

unint64_t sub_1D41389D4()
{
  result = qword_1ED9ACCA8;
  if (!qword_1ED9ACCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C10, &qword_1D4168C30);
    sub_1D4160434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCA8);
  }

  return result;
}

unint64_t sub_1D4138A58()
{
  result = qword_1ED9ACCB8;
  if (!qword_1ED9ACCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C20, &qword_1D4168C40);
    sub_1D4138B10();
    sub_1D41361D0(&qword_1ED9ACCD8, &qword_1EC7C4A88, &qword_1D4168690, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCB8);
  }

  return result;
}

unint64_t sub_1D4138B10()
{
  result = qword_1ED9ACCC0;
  if (!qword_1ED9ACCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C28, &qword_1D4168C48);
    sub_1D41604C0();
    sub_1D41361D0(&qword_1ED9ACC98, &qword_1EC7C4C48, &unk_1D4168C70, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCC0);
  }

  return result;
}

unint64_t sub_1D4138BC8()
{
  result = qword_1ED9ACCD0;
  if (!qword_1ED9ACCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C38, &qword_1D4168C58);
    sub_1D41361D0(&qword_1ED9ACF28, &unk_1EC7C4820, &qword_1D4168C60, MEMORY[0x1E697D658]);
    sub_1D41361D0(qword_1ED9ACF30, &qword_1EC7C4C40, &qword_1D4168C68, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCD0);
  }

  return result;
}

uint64_t sub_1D4138CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C18, &qword_1D4168C38);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1D4166AD0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = [objc_opt_self() isInternalInstall];
  if (qword_1ED9ACD80 != -1)
  {
    swift_once();
  }

  v14 = byte_1ED9ACBF8;
  (*(v10 + 16))(v12, a1, v9);
  v15 = 1;
  v16 = __swift_getEnumTagSinglePayload(v12, 1, a2) != 1;
  (*(v10 + 8))(v12, v9);
  if ((v16 & v13) == 1 && v14 != 0)
  {
    sub_1D4166280();
    sub_1D4166710();
    v18 = sub_1D41664E0();
    KeyPath = swift_getKeyPath();
    v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C38, &qword_1D4168C58) + 36)];
    *v20 = KeyPath;
    v20[1] = v18;
    LOBYTE(v18) = sub_1D41663B0();
    v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C30, &qword_1D4168C50) + 36)];
    *v21 = v18;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C28, &qword_1D4168C48) + 36)];
    sub_1D4166830();
    v23 = sub_1D41663B0();
    v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C48, &unk_1D4168C70) + 36)] = v23;
    v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C20, &qword_1D4168C40) + 36)];
    v25 = *(sub_1D4165FF0() + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_1D4166290();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #8.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A88, &qword_1D4168690) + 36)] = 256;
    v32 = &v8[*(v6 + 36)];
    *v32 = 0;
    *(v32 + 4) = 257;
    sub_1D4137E44(v8, a3, &qword_1EC7C4C18, &qword_1D4168C38);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v15, 1, v6);
}

uint64_t sub_1D4139058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166130();
  *a1 = result;
  return result;
}

uint64_t sub_1D4139094()
{
  result = sub_1D41390B8();
  byte_1ED9ACBF8 = result & 1;
  return result;
}

uint64_t sub_1D41390B8()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1D4166910();
  v4 = sub_1D4139228(0xD00000000000002ELL, 0x80000001D416CC60, v2, v3, v1);

  if (v4)
  {
    sub_1D4166AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1D4137AEC(v13, &qword_1EC7C4B18, &qword_1D4168CB0);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v10;
LABEL_9:
  v6 = [v0 standardUserDefaults];
  v7 = sub_1D41668E0();
  v8 = [v6 BOOLForKey_];

  return (v5 | v8) & 1;
}

id sub_1D4139228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D41668E0();
  v7 = sub_1D41668E0();

  v8 = [a5 objectForKey:v6 inDomain:v7];

  return v8;
}

uint64_t sub_1D41392A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D41392C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D4139398(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D41658F0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4139420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D41658F0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D41394C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166060();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D41394FC()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D413957C()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4139630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1D4166360();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1D4139684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1D4166360();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D4139724(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E0, &qword_1D4168120);
  OUTLINED_FUNCTION_0_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4139788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E0, &qword_1D4168120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D41397F4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 64) & ~*(v2 + 80)));
  v3 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D41398D8()
{
  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_13_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D41399DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SuggestedIntent(255, a1[1], a1[3], a4);
  sub_1D4165F80();
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D4139AB0()
{
  v1 = sub_1D4165A60();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4139B6C()
{
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_10_3();
  type metadata accessor for SuggestedIntent(v3, v4, v5, v6);
  OUTLINED_FUNCTION_9_3();
  v8 = *(v7 + 80);
  v9 = (v8 + 48) & ~v8;
  v11 = *(v10 + 64);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14();
  (*(v12 + 8))(v0 + v9, v2);
  v13 = v0 + v9 + *(v1 + 44);
  v14 = sub_1D4165A60();
  if (!OUTLINED_FUNCTION_11_3(v14))
  {
    OUTLINED_FUNCTION_14();
    (*(v15 + 8))(v13, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v11, v8 | 7);
}

uint64_t sub_1D4139CA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SuggestedIntent(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  sub_1D4166320();
  sub_1D4165F80();
  sub_1D4165F80();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D4139D98()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D4139E2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4139E64()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4139F28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4139F60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4139F9C()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.attributeSet.getter(v1, v2, v3);
  *v0 = result;
  return result;
}

uint64_t sub_1D4139FD0()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.searchString.getter(v1, v2, v3);
  *v0 = result;
  v0[1] = v5;
  return result;
}

uint64_t sub_1D413A004()
{
  sub_1D41599DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D413A050(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4AE8, &qword_1D4168810);
  sub_1D4165F80();
  sub_1D41361D0(&qword_1EC7C4AF0, &qword_1EC7C4AE8, &qword_1D4168810, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1D413A148(uint64_t *a1)
{
  sub_1D4165A20();
  OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  sub_1D41361D0(v1, &qword_1EC7C4BB8, &unk_1D4168A80, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  sub_1D41361D0(v3, &qword_1EC7C4BD0, &unk_1D4168A90, v4);
  return swift_getWitnessTable();
}

uint64_t sub_1D413A2E0(uint64_t *a1)
{
  sub_1D4165A20();
  OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BC0, &unk_1D4168CD0);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  sub_1D4165F80();
  sub_1D4165F80();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  sub_1D41361D0(v1, &qword_1EC7C4BB8, &unk_1D4168A80, v2);
  OUTLINED_FUNCTION_10_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  sub_1D41361D0(v3, &qword_1EC7C4BC0, &unk_1D4168CD0, v4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D413A50C()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_10_3();
  v6 = type metadata accessor for AppViewModifier(v2, v3, v4, v5);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = v0 + *(v6 + 28);
  if (!__swift_getEnumTagSinglePayload(v11 + v9, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v11 + v9, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v8 | 7);
}

uint64_t sub_1D413A600()
{
  sub_1D4165A20();
  OUTLINED_FUNCTION_21_3();
  sub_1D413653C(v1, v0, MEMORY[0x1E695A4B0]);
  OUTLINED_FUNCTION_4_5();
  sub_1D413653C(v2, v0, v3);
  OUTLINED_FUNCTION_10_9();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_12_5();
  v4 = sub_1D4165F80();
  OUTLINED_FUNCTION_29_2(v4, v5, v6, v7, v8, v9, v10, v11, v25, v27, v29, v31, v32, v33, v34, v35, v36, v37);
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v12, &qword_1EC7C4BB8, &unk_1D4168A80, v13);
  OUTLINED_FUNCTION_13_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_4();
  v16 = sub_1D41361D0(v14, &qword_1EC7C4BD0, &unk_1D4168A90, v15);
  return OUTLINED_FUNCTION_34_2(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28, v30);
}

uint64_t sub_1D413A758(uint64_t *a1)
{
  v4 = sub_1D4165AF0();
  OUTLINED_FUNCTION_22_2(v4, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D413A7C4()
{
  sub_1D4165AB0();
  OUTLINED_FUNCTION_6_7();
  sub_1D413653C(v1, v0, MEMORY[0x1E695A6A8]);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v2, v0, v3);
  OUTLINED_FUNCTION_11_7();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BF8, &unk_1D4168B90);
  OUTLINED_FUNCTION_12_5();
  v4 = sub_1D4165F80();
  OUTLINED_FUNCTION_28_2(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v12, &qword_1EC7C4BF8, &unk_1D4168B90, v13);
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t sub_1D413A8D0()
{
  sub_1D4165A20();
  OUTLINED_FUNCTION_21_3();
  sub_1D413653C(v1, v0, MEMORY[0x1E695A4B0]);
  OUTLINED_FUNCTION_4_5();
  sub_1D413653C(v2, v0, v3);
  OUTLINED_FUNCTION_10_9();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_12_5();
  v4 = sub_1D4165F80();
  OUTLINED_FUNCTION_29_2(v4, v5, v6, v7, v8, v9, v10, v11, v25, v27, v29, v31, v32, v33, v34, v35, v36, v37);
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v12, &qword_1EC7C4BB8, &unk_1D4168A80, v13);
  OUTLINED_FUNCTION_13_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_4();
  v16 = sub_1D41361D0(v14, &qword_1EC7C4BD0, &unk_1D4168A90, v15);
  return OUTLINED_FUNCTION_34_2(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28, v30);
}

uint64_t sub_1D413AA2C()
{
  sub_1D4165AB0();
  OUTLINED_FUNCTION_6_7();
  sub_1D413653C(v1, v0, MEMORY[0x1E695A6A8]);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v2, v0, v3);
  OUTLINED_FUNCTION_11_7();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BF8, &unk_1D4168B90);
  OUTLINED_FUNCTION_12_5();
  v4 = sub_1D4165F80();
  OUTLINED_FUNCTION_28_2(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v12, &qword_1EC7C4BF8, &unk_1D4168B90, v13);
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t sub_1D413AB7C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D413ABFC()
{
  swift_unknownObjectRelease();
  sub_1D4164188(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  if (*(v0 + 88))
  {
  }

  if (*(v0 + 128))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1D413AC84(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D00, &qword_1D4168F38);
  sub_1D4165F80();
  sub_1D41361D0(&qword_1EC7C4D08, &qword_1EC7C4D00, &qword_1D4168F38, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1D413AD30()
{
  sub_1D4164188(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D413ADAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166090();
  *a1 = result;
  return result;
}

uint64_t IntentParameter.requestConfirmation<A>(for:dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  *(v0 + 72) = *(v7 - 8);
  *(v0 + 80) = OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v8);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v6);
  v0[8] = OUTLINED_FUNCTION_19();
  v7 = sub_1D41659A0();
  v0[9] = v7;
  OUTLINED_FUNCTION_24(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1D413AE84()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 32))();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_34(v1);
  OUTLINED_FUNCTION_13_0();

  return IntentParameter.requestConfirmation<A>(for:dialog:view:)();
}

uint64_t sub_1D413AF1C(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 96) = v1;

  OUTLINED_FUNCTION_30();
  (*(*(v3 + 72) + 8))(*(v6 + 80), *(v3 + 48));
  if (!v1)
  {

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D413B09C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_23();

  return v0(0);
}

uint64_t sub_1D413B20C()
{
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  v4 = OUTLINED_FUNCTION_26();
  v0[14] = v4;
  sub_1D413B5AC(v4, v5, v6);
  OUTLINED_FUNCTION_27();
  sub_1D4165990();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1D413B324;
  v13 = OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEDB3400](v13);
}

uint64_t sub_1D413B324()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_30();
  v6 = *(v5 + 64);
  if (!v0)
  {
    *(v3 + 136) = v1 & 1;
  }

  sub_1D413B600(v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D413B44C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_25();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D413B4D8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_25();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D413B5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4448;
  if (!qword_1EC7C4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4448);
  }

  return result;
}

uint64_t sub_1D413B600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntentParameter.requestValue<A>(_:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  *(v0 + 72) = *(v7 - 8);
  *(v0 + 80) = OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v8);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v6);
  v0[8] = OUTLINED_FUNCTION_19();
  v7 = sub_1D41659A0();
  v0[9] = v7;
  OUTLINED_FUNCTION_24(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1D413B708()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 32))();
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_34(v1);
  OUTLINED_FUNCTION_31();

  return IntentParameter.requestValue<A>(_:view:)();
}

uint64_t sub_1D413B7A0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[9];
  v8 = v5[6];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v3 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D413B920()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D413BA8C()
{
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  v4 = OUTLINED_FUNCTION_26();
  v0[14] = v4;
  sub_1D413B5AC(v4, v5, v6);
  OUTLINED_FUNCTION_27();
  sub_1D4165990();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  v0[15] = v12;
  *v12 = v13;
  v12[1] = sub_1D413BBA4;
  v14 = OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEDB3398](v14);
}

uint64_t sub_1D413BBA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_1D413B600(v5);
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D413BCBC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_25();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D413BD44()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_25();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t IntentParameter.needsValueError<A>(_:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12();
  IntentParameter.needsValueError<A>(_:view:)();
  return (*(v7 + 8))(v11, a4);
}

void IntentParameter.needsValueError<A>(_:view:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = sub_1D41659A0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  (*(v18 + 16))(v17 - v16, v3, v1);
  v19 = sub_1D4166800();
  v22[4] = MEMORY[0x1E6981910];
  v22[5] = sub_1D413B5AC(v19, v20, v21);
  v22[1] = v19;

  sub_1D4165990();
  (*(v10 + 16))(v7, v14, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1D4165890();

  sub_1D413B600(v7);
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_28();
}

uint64_t IntentParameterContext.requestConfirmation<A>(for:dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(v1, v2, v3, v4, v5, v6, v7);
  *(v0 + 80) = v8;
  *(v0 + 88) = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v7);
  v0[9] = OUTLINED_FUNCTION_19();
  v8 = sub_1D41659A0();
  v0[10] = v8;
  OUTLINED_FUNCTION_24(v8);
  v0[11] = v9;
  v0[12] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1D413C170()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 32))();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33_0(v1);
  OUTLINED_FUNCTION_13_0();

  return IntentParameterContext.requestConfirmation<A>(for:dialog:view:)();
}

uint64_t sub_1D413C208()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_30();
  (*(*(v2 + 80) + 8))(*(v5 + 88), *(v2 + 56));
  if (!v0)
  {

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D413C388()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_23();

  return v0(0);
}

uint64_t sub_1D413C4FC()
{
  v1 = v0[10];
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  v4 = OUTLINED_FUNCTION_26();
  v0[15] = v4;
  sub_1D413B5AC(v4, v5, v6);
  OUTLINED_FUNCTION_27();
  sub_1D4165990();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1D413C618;
  v13 = OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEDB3BB0](v13);
}

uint64_t sub_1D413C618()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_30();
  v6 = *(v5 + 72);
  if (!v0)
  {
    *(v3 + 144) = v1 & 1;
  }

  sub_1D413B600(v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D413C740()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();

  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_25();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D413C7D8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();

  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_25();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t IntentParameterContext.requestValue<A>(dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(v1, v2, v3, v4, v5, v6, v7);
  *(v0 + 80) = v8;
  *(v0 + 88) = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v7);
  v0[9] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

uint64_t sub_1D413C904()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 32))();
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  *(v0 + 96) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_33_0(v1);
  OUTLINED_FUNCTION_31();

  return IntentParameterContext.requestValue<A>(dialog:view:)();
}

uint64_t sub_1D413C99C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[7];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v3 + 104) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D413CB1C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D413CC40()
{
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  v4 = sub_1D4166800();
  v0[12] = v4;
  sub_1D413B5AC(v4, v5, v6);

  sub_1D4165990();
  v7 = sub_1D41659A0();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  v0[13] = v8;
  *v8 = v9;
  v8[1] = sub_1D413CD68;
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEDB3BA0](v10);
}

uint64_t sub_1D413CD68()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_1D413B600(v5);
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D413CE80()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D413CEF0()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

void IntentParameterContext.needsValueError<A>(_:view:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8();
  IntentParameterContext.needsValueError<A>(_:view:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v26[1] = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = sub_1D41659A0();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  (*(v19 + 16))(v18 - v17, v4, v2);
  v20 = sub_1D4166800();
  v26[6] = MEMORY[0x1E6981910];
  v26[7] = sub_1D413B5AC(v20, v21, v22);
  v26[3] = v20;

  sub_1D4165990();
  (*(v11 + 16))(v8, v15, v9);
  v23 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v9);
  sub_1D41659D0();

  sub_1D413B600(v8);
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_28();
}

unint64_t sub_1D413D268()
{
  result = qword_1EC7C4450;
  if (!qword_1EC7C4450)
  {
    sub_1D4165F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4450);
  }

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

uint64_t sub_1D413D2D8(uint64_t a1, int a2)
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

uint64_t sub_1D413D2F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D413D3C8(uint64_t a1, uint64_t a2)
{
  sub_1D4166CD0();
  swift_getWitnessTable();
  sub_1D4165CC0();
  return sub_1D4166CF0();
}

uint64_t sub_1D413D440(uint64_t a1, id *a2)
{
  result = sub_1D41668F0();
  *a2 = 0;
  return result;
}

uint64_t sub_1D413D4BC(uint64_t a1, id *a2)
{
  v3 = sub_1D4166900();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D413D53C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D413D564(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D413D564(uint64_t a1)
{
  sub_1D4166910();
  v1 = sub_1D41668E0();

  return v1;
}

uint64_t sub_1D413D5A4(uint64_t a1)
{
  v1 = sub_1D4166910();
  v2 = MEMORY[0x1DA6D1C90](v1);

  return v2;
}

uint64_t sub_1D413D5E4(uint64_t a1, uint64_t a2)
{
  sub_1D4166910();
  sub_1D4166950();
}

uint64_t sub_1D413D640(uint64_t a1, uint64_t a2)
{
  sub_1D4166910();
  sub_1D4166CD0();
  sub_1D4166950();
  v2 = sub_1D4166CF0();

  return v2;
}

uint64_t sub_1D413D6B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D4166910();
  v4 = v3;
  if (v2 == sub_1D4166910() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D4166C20();
  }

  return v7 & 1;
}

uint64_t sub_1D413D738(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D4165CB0();
}

uint64_t sub_1D413D7B0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D41668E0();

  *a2 = v3;
  return result;
}

uint64_t sub_1D413D7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D413D824(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D413D828(uint64_t a1)
{
  v2 = sub_1D413D92C(&qword_1EC7C4490, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D41677E8);
  v3 = sub_1D413D92C(&qword_1EC7C4498, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D416773C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D413D92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = result;
  v8[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_26()
{

  return sub_1D4166800();
}

uint64_t OUTLINED_FUNCTION_27()
{
}

uint64_t OUTLINED_FUNCTION_37(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

void sub_1D413DBE4()
{
  OUTLINED_FUNCTION_39();
  v27 = v2;
  v28 = v1;
  v4 = v3;
  v6 = v5;
  v29 = v7;
  v8 = sub_1D4165910();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = *(v13 + 16);
  v18(&v27 - v19, v6, v4);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v28, v8);
    (*(v13 + 8))(v6, v4);
    v20 = 1;
    v21 = v29;
  }

  else
  {
    v18(v17, v6, v4);
    v22 = sub_1D4166800();
    v31 = MEMORY[0x1E6981910];
    v32 = sub_1D413B5AC(v22, v23, v24);
    v30 = v22;
    v25 = v28;
    (*(v10 + 16))(v0, v28, v8);
    v21 = v29;
    sub_1D4165980();
    (*(v10 + 8))(v25, v8);
    (*(v13 + 8))(v6, v4);
    v20 = 0;
  }

  v26 = sub_1D41659A0();
  __swift_storeEnumTagSinglePayload(v21, v20, 1, v26);
  OUTLINED_FUNCTION_28();
}

uint64_t IntentView.init(options:view:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  sub_1D4165910();
  OUTLINED_FUNCTION_5();
  (*(v10 + 32))(a4, a1);
  v11 = OUTLINED_FUNCTION_31_0();
  v14 = type metadata accessor for IntentView(v11, v12, a5, v13);
  v15 = *(*(a3 - 8) + 32);
  v16 = a4 + *(v14 + 36);

  return v15(v16, a2, a3);
}

uint64_t IntentView.init(options:view:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_1D4165910();
  OUTLINED_FUNCTION_2();
  v16 = v9;
  (*(v10 + 16))(a4, a1, v8);
  v11 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for IntentView(v11, v12, a3, v13);
  a2();
  v14 = *(v16 + 8);

  return v14(a1, v8);
}

void sub_1D413E030(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_44();
  v5 = sub_1D4165910();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  (*(v14 + 16))(v2, v3 + *(a1 + 36), v12);
  (*(v7 + 16))(v11, v3, v5);
  sub_1D413DBE4();
}

void static IntentResult.result<A>(view:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  sub_1D41659B0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_1();
  v8 = sub_1D4165910();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_33_1();
  v29 = v15;
  (*(v11 + 16))(v0, v4, v2);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_37_0();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  v20 = sub_1D413E43C();
  OUTLINED_FUNCTION_29_0(&v28, v21, v20);
  v22 = sub_1D41659A0();
  v25 = sub_1D413E4E8(v22, v23, v24);
  sub_1D413E53C(v25, v26, v27);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

unint64_t sub_1D413E3E4()
{
  result = qword_1EC7C44C0;
  if (!qword_1EC7C44C0)
  {
    sub_1D41659B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44C0);
  }

  return result;
}

unint64_t sub_1D413E43C()
{
  result = qword_1EC7C44D0;
  if (!qword_1EC7C44D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C44C8, &qword_1D4167940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D413E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C44D8;
  if (!qword_1EC7C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44D8);
  }

  return result;
}

unint64_t sub_1D413E53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C44E0;
  if (!qword_1EC7C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44E0);
  }

  return result;
}

uint64_t static IntentResult.result<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10();
  static IntentResult.result<A>(view:)();
  return (*(v5 + 8))(v9, a3);
}

void static IntentResult.result<A, B>(value:view:)()
{
  OUTLINED_FUNCTION_39();
  v41[1] = v2;
  v41[2] = v1;
  v4 = v3;
  v6 = v5;
  v41[0] = v7;
  v9 = v8;
  v41[3] = v10;
  v11 = sub_1D41659B0();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_1();
  v15 = sub_1D4165910();
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_11_0();
  v22 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v41 - v24;
  OUTLINED_FUNCTION_8_1();
  (*(v26 + 16))(v25, v9, v6);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v6);
  v42 = 1;
  (*(v18 + 16))(v0, v41[0], v4);
  sub_1D4165900();
  OUTLINED_FUNCTION_47();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  v34 = OUTLINED_FUNCTION_41(v30, v31, v32, v33);
  sub_1D413E53C(v34, v35, v36);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v25, v37, v38, v39, v40);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B, C>(value:opensIntent:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v72 = v24;
  v73 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v69 = v32;
  v70 = v33;
  v74 = v34;
  v67 = v35;
  v68 = a21;
  v36 = sub_1D41659B0();
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v71 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v41);
  v42 = sub_1D4165910();
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_0_1();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v48);
  v66[1] = v66 - v49;
  OUTLINED_FUNCTION_31_0();
  v50 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v50);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_1();
  v52 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_1();
  (*(v54 + 16))(v22, v67, v31);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v31);
  OUTLINED_FUNCTION_14();
  (*(v58 + 16))(v21, v69, v29);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v29);
  (*(v45 + 16))(v23, v70, v27);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41(v62, v63, v64, v65);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v63 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v62 = v30;
  v31 = sub_1D41659B0();
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_1();
  v35 = sub_1D4165910();
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_16_1();
  v44 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_8_1();
  (*(v46 + 16))(v21, v62, v29);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v29);
  v64[3] = v25;
  v64[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v64);
  OUTLINED_FUNCTION_14();
  (*(v50 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  (*(v38 + 16))(v22, v63, v27);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  v59 = OUTLINED_FUNCTION_41(v55, v56, v57, v58);
  sub_1D413E53C(v59, v60, v61);
  OUTLINED_FUNCTION_36();
  sub_1D413F020();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1D413F020()
{
  OUTLINED_FUNCTION_44();
  sub_1D41659B0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  return sub_1D4166B00();
}

void static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44 = v10;
  v45 = v11;
  v42 = v12;
  v43 = v13;
  v14 = sub_1D41659B0();
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30_0();
  v18 = sub_1D4165910();
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31_0();
  v25 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10_0();
  v27 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_1();
  (*(v29 + 16))(v1, v42, v9);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v9);
  OUTLINED_FUNCTION_14();
  (*(v33 + 16))(v3, v44, v7);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v7);
  (*(v21 + 16))(v0, v45, v5);
  sub_1D4165900();
  sub_1D413DBE4();
  v37 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v38 + 16))(v2, v43, v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_41(v39, v40, v41, v37);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v67 = v31;
  v68 = v32;
  v66 = v33;
  v34 = sub_1D41659B0();
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_1();
  v38 = sub_1D4165910();
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1_0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_11_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_10_0();
  v47 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_8_1();
  (*(v49 + 16))(v22, v66, v30);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v30);
  v69[3] = v26;
  v69[4] = a22;
  __swift_allocate_boxed_opaque_existential_1(v69);
  OUTLINED_FUNCTION_14();
  (*(v53 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  (*(v41 + 16))(v24, v68, v28);
  sub_1D4165900();
  sub_1D413DBE4();
  v58 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v59 + 16))(v23, v67, v58);
  OUTLINED_FUNCTION_18_0();
  v63 = OUTLINED_FUNCTION_41(v60, v61, v62, v58);
  sub_1D413E53C(v63, v64, v65);
  sub_1D413F020();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B, C>(value:opensIntent:dialog:content:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_1();
  v6();
  OUTLINED_FUNCTION_17_0();
  static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)();
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(value:dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_32_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  v13 = sub_1D4165910();
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  v18 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_8_1();
  (*(v20 + 16))(v3, v1, v0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v0);
  v24 = OUTLINED_FUNCTION_46();
  v25(v24);
  sub_1D4165900();
  OUTLINED_FUNCTION_40();
  v26 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v27 + 16))(v2, v38, v26);
  OUTLINED_FUNCTION_18_0();
  v31 = OUTLINED_FUNCTION_41(v28, v29, v30, v26);
  sub_1D413E53C(v31, v32, v33);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v3, v34, v35, v36, v37);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void sub_1D413FE14()
{
  OUTLINED_FUNCTION_39();
  v36 = v3;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v10 = v9;
  v11 = sub_1D41659B0();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_1();
  v15 = sub_1D4165910();
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_0();
  v22 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14();
  (*(v24 + 16))(v1, v10, v7);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
  (*(v18 + 16))(v2, v36, v5);
  sub_1D4165900();
  sub_1D413DBE4();
  v28 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v29 + 16))(v0, v37, v28);
  OUTLINED_FUNCTION_18_0();
  v33 = OUTLINED_FUNCTION_41(v30, v31, v32, v28);
  sub_1D413E53C(v33, v34, v35);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();

  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:view:)()
{
  OUTLINED_FUNCTION_39();
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v36 = v7;
  v8 = sub_1D41659B0();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_1();
  v12 = sub_1D4165910();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31_0();
  v19 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_14();
  (*(v21 + 16))(v0, v36, v6);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v6);
  (*(v15 + 16))(v1, v37, v4);
  sub_1D4165900();
  OUTLINED_FUNCTION_47();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  v29 = OUTLINED_FUNCTION_41(v25, v26, v27, v28);
  sub_1D413E4E8(v29, v30, v31);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v32, v0, v33, v34, v35);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v36 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  sub_1D41659B0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_1();
  v10 = sub_1D4165910();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_0_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_33_1();
  v42[3] = v4;
  v42[4] = v36;
  __swift_allocate_boxed_opaque_existential_1(v42);
  OUTLINED_FUNCTION_14();
  (*(v19 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v13 + 16))(v0, v37, v6);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  v28 = sub_1D413E43C();
  OUTLINED_FUNCTION_29_0(&v38, v29, v28);
  v30 = sub_1D41659A0();
  v35 = sub_1D413E4E8(v30, v31, v32);
  sub_1D413E53C(v35, v33, v34);
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void sub_1D41406EC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v7();
  OUTLINED_FUNCTION_38_0();
  v3();
  (*(v5 + 8))(v1, v0);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:content:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v6();
  static IntentResult.result<A, B>(opensIntent:view:)();
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_32_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  v13 = sub_1D4165910();
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  v18 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_8_1();
  (*(v20 + 16))(v3, v1, v0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v0);
  v24 = OUTLINED_FUNCTION_46();
  v25(v24);
  sub_1D4165900();
  OUTLINED_FUNCTION_40();
  v26 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v27 + 16))(v2, v38, v26);
  OUTLINED_FUNCTION_18_0();
  v31 = OUTLINED_FUNCTION_41(v28, v29, v30, v26);
  sub_1D413E4E8(v31, v32, v33);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v34, v3, v35, v36, v37);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v41 = v1;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v43 = v7;
  sub_1D41659B0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_1();
  v11 = sub_1D4165910();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_11_0();
  v49 = 1;
  v48[3] = v4;
  v48[4] = v41;
  __swift_allocate_boxed_opaque_existential_1(v48);
  OUTLINED_FUNCTION_8_1();
  (*(v23 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  (*(v14 + 16))(v18, v42, v6);
  sub_1D4165900();
  sub_1D413DBE4();
  v28 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v29 + 16))(v0, v43, v28);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  v33 = sub_1D413E43C();
  OUTLINED_FUNCTION_29_0(&v44, v34, v33);
  v35 = sub_1D41659A0();
  v40 = sub_1D413E4E8(v35, v36, v37);
  sub_1D413E53C(v40, v38, v39);
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void sub_1D4140EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_0();
  v26();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_38_0();
  a21();
  (*(v24 + 8))(v22, v21);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:dialog:content:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v5();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_38_0();
  static IntentResult.result<A, B>(opensIntent:dialog:view:)();
  (*(v3 + 8))(v1, v0);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A>(dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v23 = v1;
  sub_1D41659B0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_1();
  v5 = sub_1D4165910();
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_42();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_33_1();
  v10 = OUTLINED_FUNCTION_36();
  v11(v10);
  sub_1D4165900();
  sub_1D413DBE4();
  v12 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v0, v23, v12);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_37_0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  sub_1D4166B00();
  v17 = sub_1D41659A0();
  v22 = sub_1D413E4E8(v17, v18, v19);
  sub_1D413E53C(v22, v20, v21);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_44();
  sub_1D41659B0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_33_1();
  v13 = type metadata accessor for IntentView(0, v4, v2, v12);
  sub_1D413E030(v13);
  v14 = sub_1D4165760();
  OUTLINED_FUNCTION_5();
  (*(v15 + 16))(v0, v6, v14);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  OUTLINED_FUNCTION_37_0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_45();
  sub_1D4166B00();
  v19 = sub_1D41659A0();
  v24 = sub_1D413E4E8(v19, v20, v21);
  sub_1D413E53C(v24, v22, v23);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

uint64_t static IntentResult.result<A>(view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44();
  sub_1D41659B0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_1();
  v11 = type metadata accessor for IntentView(0, a2, a3, v10);
  sub_1D413E030(v11);
  v12 = sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_45();
  sub_1D4166B00();
  v16 = sub_1D41659A0();
  v22 = sub_1D413E4E8(v16, v17, v18);
  sub_1D413E53C(v22, v19, v20);
  OUTLINED_FUNCTION_20_0();
  return sub_1D4165970();
}

uint64_t static IntentResult.result<A>(dialog:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  v9();
  static IntentResult.result<A>(dialog:view:)();
  return (*(v7 + 8))(v4, a4);
}

uint64_t sub_1D41417A4(uint64_t a1)
{
  result = sub_1D4165910();
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

uint64_t sub_1D414182C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D4165910();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = ((a1 + v15) & ~v12);
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1D4141A44(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D4165910();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D4166B00();
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  *(v5 - 168) = a2;
  *(v5 - 160) = a4;
  *(v5 - 152) = a1;
  *(v5 - 144) = a3;
  *(v5 - 136) = a5;

  return sub_1D41659B0();
}

double OUTLINED_FUNCTION_37_0()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_1D4166AD0();
}

void OUTLINED_FUNCTION_40()
{

  sub_1D413DBE4();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return sub_1D41659A0();
}

id sub_1D4141EB8()
{
  result = [objc_allocWithZone(MEMORY[0x1E6964E90]) init];
  qword_1EC7C4398 = result;
  return result;
}

id static CSSearchableItemAttributeSetKey.defaultValue.getter()
{
  if (qword_1EC7C4390 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7C4398;

  return v1;
}

id sub_1D4141F48@<X0>(void *a1@<X8>)
{
  result = static CSSearchableItemAttributeSetKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4141F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D41439C8(&qword_1EC7C4598, sub_1D4143A10, MEMORY[0x1E69E81C0]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t DisplayLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](v1);
  return sub_1D4166CF0();
}

uint64_t sub_1D4142098()
{
  v1 = *v0;
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](v1);
  return sub_1D4166CF0();
}

uint64_t sub_1D4142110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4142780(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.attributeSet.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D41421B0(a1, a2, a3);
  sub_1D4166180();
  return v4;
}

unint64_t sub_1D41421B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4388;
  if (!qword_1EC7C4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4388);
  }

  return result;
}

void (*EnvironmentValues.attributeSet.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_1D41421B0(a1, a2, a3);
  sub_1D4166180();
  return sub_1D41422A0;
}

void sub_1D41422A0(void **a1, char a2)
{
  v2 = *a1;
  a1[1] = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_1_1(v2, &type metadata for CSSearchableItemAttributeSetKey);
    v4 = *a1;
  }

  else
  {
    OUTLINED_FUNCTION_1_1(a1, &type metadata for CSSearchableItemAttributeSetKey);
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void *EnvironmentValues.displayLocation.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1D4142398(x0_0, a2, a3);

  return sub_1D4166180();
}

unint64_t sub_1D4142398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C43A0;
  if (!qword_1EC7C43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C43A0);
  }

  return result;
}

uint64_t (*EnvironmentValues.displayLocation.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  a1[1] = sub_1D4142398(a1, a2, a3);
  sub_1D4166180();
  return sub_1D414248C;
}

uint64_t EnvironmentValues.searchString.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D4142500(a1, a2, a3);
  sub_1D4166180();
  return v4;
}

unint64_t sub_1D4142500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C43B0;
  if (!qword_1EC7C43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C43B0);
  }

  return result;
}

void (*EnvironmentValues.searchString.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1D4142500(v3, v4, v5);
  sub_1D4166180();
  v6 = v3[3];
  *v3 = v3[2];
  v3[1] = v6;
  return sub_1D4142614;
}

void sub_1D4142614(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    OUTLINED_FUNCTION_1_1(v5, &type metadata for SearchString);
  }

  else
  {
    OUTLINED_FUNCTION_1_1(v3, &type metadata for SearchString);
  }

  free(v2);
}

uint64_t ViewCodableError.hashValue.getter()
{
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](0);
  return sub_1D4166CF0();
}

uint64_t sub_1D414273C()
{
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](0);
  return sub_1D4166CF0();
}

unint64_t sub_1D4142780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4570;
  if (!qword_1EC7C4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4570);
  }

  return result;
}

unint64_t sub_1D41427D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4578;
  if (!qword_1EC7C4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4578);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisplayLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D41429F4(unsigned int *a1, int a2)
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

_BYTE *sub_1D4142A44(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for SharedIndexedViewFormatDecodable(uint64_t a1)
{
  result = qword_1EC7C4370;
  if (!qword_1EC7C4370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4142B6C(uint64_t a1)
{
  result = sub_1D41658F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_1D4142C04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D4142C44(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D4142CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  result = sub_1D4166B90();
  if (v7)
  {
    v10[3] = a2;
    v11 = *(a3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    v9 = *(a2 - 8);
    (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
    sub_1D4165810();
    return (*(v9 + 8))(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4142D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1D4165850();
  OUTLINED_FUNCTION_0();
  v37 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4588, &qword_1D4167CB8);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v44 = 0;
  v45 = 0;
  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D41439C8(&qword_1EC7C43C8, MEMORY[0x1E695A0C0], MEMORY[0x1E695A0C8]);
  v15 = v38;
  sub_1D4166D00();
  if (!v15)
  {
    v35 = v8;
    v38 = v12;
    v16 = v37;
    v17 = *(v37 + 104);
    v17(v10, *MEMORY[0x1E695A0B8], v3);
    sub_1D4166BD0();
    v18 = v10;
    v19 = *(v16 + 8);
    v19(v18, v3);
    v20 = v35;
    v17(v35, *MEMORY[0x1E695A0B0], v3);
    v21 = v20;
    sub_1D4166BE0();
    v23 = v22;
    v24 = (v19)(v21, v3);
    if (v23)
    {
      v27 = sub_1D4166B40();

      if (v27)
      {
        v24 = dynamic_cast_existential_1_conditional(v27, v27, &protocol descriptor for SharedIndexedView);
        if (v24)
        {
          v28 = v24;
          v29 = v25;
          __swift_mutable_project_boxed_opaque_existential_1(v42, v42[3]);
          v40 = v28;
          v41 = v29;
          __swift_allocate_boxed_opaque_existential_1(&v39);
          sub_1D4166C10();
          v30 = OUTLINED_FUNCTION_3_0();
          v31(v30);
          sub_1D4143978(&v39, v43);
          __swift_destroy_boxed_opaque_existential_1(v42);
          sub_1D4143990(v43, v36);
          __swift_destroy_boxed_opaque_existential_1(v46);
          return sub_1D4143750(v43);
        }
      }
    }

    sub_1D4143840(v24, v25, v26);
    swift_allocError();
    swift_willThrow();
    v32 = OUTLINED_FUNCTION_3_0();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_1D41431CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v39 = sub_1D41658F0();
  OUTLINED_FUNCTION_0();
  v36 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4165B00();
  OUTLINED_FUNCTION_0();
  v49 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4580, &qword_1D4167CB0);
  OUTLINED_FUNCTION_0();
  v42 = v14;
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = type metadata accessor for SharedIndexedViewFormatDecodable(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D41439C8(&qword_1EC7C43B8, MEMORY[0x1E695A6E8], MEMORY[0x1E695A6F0]);
  v41 = v16;
  v20 = v44;
  sub_1D4166D00();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v17;
  v35 = v19;
  v44 = a1;
  v21 = *(v49 + 104);
  v22 = v40;
  v23 = v21(v40, *MEMORY[0x1E695A6D8], v6);
  sub_1D41436FC(v23, v24, v25);
  sub_1D4166BF0();
  v26 = *(v49 + 8);
  v49 += 8;
  v26(v22, v6);
  v27 = v46;
  v28 = v35;
  *v35 = v45;
  *(v28 + 16) = v27;
  *(v28 + 32) = v47;
  *(v28 + 48) = v48;
  v21(v11, *MEMORY[0x1E695A6E0], v6);
  sub_1D41439C8(&qword_1EC7C43C0, MEMORY[0x1E695A1F0], MEMORY[0x1E695A1F8]);
  v30 = v38;
  v29 = v39;
  sub_1D4166BF0();
  v26(v11, v6);
  v31 = OUTLINED_FUNCTION_2_4();
  v32(v31);
  (*(v36 + 32))(v28 + *(v34 + 20), v30, v29);
  sub_1D4143780(v28, v37);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1D41437E4(v28);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

unint64_t sub_1D41436FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C43A8;
  if (!qword_1EC7C43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C43A8);
  }

  return result;
}

uint64_t sub_1D4143780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedIndexedViewFormatDecodable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D41437E4(uint64_t a1)
{
  v2 = type metadata accessor for SharedIndexedViewFormatDecodable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4143840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4590;
  if (!qword_1EC7C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4590);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA6D2650);
  }

  return result;
}

uint64_t sub_1D4143978(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D41439C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D4143A10()
{
  result = qword_1EC7C45A0;
  if (!qword_1EC7C45A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7C45A0);
  }

  return result;
}

void sub_1D4143A5C()
{
  if (qword_1ED9ACCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D4165D70();
  __swift_project_value_buffer(v0, qword_1ED9AD488);
  oslog = sub_1D4165D50();
  v1 = sub_1D4166A90();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D4134000, oslog, v1, "Failed to encode Snippet View archive", v2, 2u);
    MEMORY[0x1DA6D2650](v2, -1, -1);
  }
}

uint64_t sub_1D4143B44()
{

  sub_1D4137AEC(v0 + OBJC_IVAR____TtC19_AppIntents_SwiftUIP33_8EF1C795494728D1541BB13B3B95327124AppViewArchivingDelegate_defaultImageType, &qword_1EC7C45A8, &qword_1D4167CF8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4143BC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4618, &qword_1D4167E80);
  v1 = sub_1D4165D30();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D4167CC0;
  sub_1D4165D20();
  sub_1D4165CF0();
  sub_1D4165D10();
  sub_1D4165D00();
  *(v0 + 16) = sub_1D4146AD4(v2);
  v3 = OBJC_IVAR____TtC19_AppIntents_SwiftUIP33_8EF1C795494728D1541BB13B3B95327124AppViewArchivingDelegate_defaultImageType;
  sub_1D4165CF0();
  __swift_storeEnumTagSinglePayload(v0 + v3, 0, 1, v1);
  return v0;
}

uint64_t sub_1D4143D68()
{
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](0);
  return sub_1D4166CF0();
}

uint64_t AnyView.archiveDataWithSnippetEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_1D4166020();
  OUTLINED_FUNCTION_22(v4);
  v3[11] = swift_task_alloc();
  v5 = sub_1D4166170();
  OUTLINED_FUNCTION_22(v5);
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45A8, &qword_1D4167CF8);
  OUTLINED_FUNCTION_22(v6);
  v3[13] = swift_task_alloc();
  sub_1D4166A20();
  v3[14] = sub_1D4166A10();
  v8 = sub_1D4166A00();
  v3[15] = v8;
  v3[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D4143ED4, v8, v7);
}

uint64_t sub_1D4143ED4()
{
  v1 = v0[13];
  v2 = v0[8];
  type metadata accessor for AppViewArchivingDelegate(0);
  swift_allocObject();
  v3 = sub_1D4143BC0();
  v0[17] = v3;
  v0[6] = sub_1D4166800();
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45B0, &unk_1D4167D00);
  swift_allocObject();

  v0[18] = sub_1D4166260();
  sub_1D4166230();
  sub_1D4166240();

  sub_1D4166220();
  sub_1D4147124(v3 + OBJC_IVAR____TtC19_AppIntents_SwiftUIP33_8EF1C795494728D1541BB13B3B95327124AppViewArchivingDelegate_defaultImageType, v1, &qword_1EC7C45A8, &qword_1D4167CF8);
  sub_1D4166210();
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1D41440AC;

  return v6();
}

uint64_t sub_1D41440AC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D41441D4, v4, v3);
}

uint64_t sub_1D41441D4()
{
  v1 = v0[20];

  if (v1)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v0[18];
      v8 = v0[10];
      [v5 size];
      v10 = v9;
      v12 = v11;
      sub_1D4166250();
      swift_unknownObjectRetain();
      sub_1D4144514(v6);
      sub_1D41661E0();
      sub_1D4166010();
      v13 = sub_1D41661D0();
      sub_1D41660E0();
      v13(v0 + 2, 0);
      v14 = swift_task_alloc();
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v10;
      v14[5] = v12;
      v15 = sub_1D4166200();
      v19 = v18;
      swift_unknownObjectRelease();

      v20 = v0[1];

      return v20(v15, v19);
    }

    v2 = swift_unknownObjectRelease();
  }

  sub_1D41444C0(v2, v3, v4);
  swift_allocError();
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t type metadata accessor for AppViewArchivingDelegate(uint64_t a1)
{
  result = qword_1EC7C45C8;
  if (!qword_1EC7C45C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D41444C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C45C0;
  if (!qword_1EC7C45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C45C0);
  }

  return result;
}

void sub_1D4144514(void *a1)
{
  v3 = sub_1D4165DF0();
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_2();
  v61 = v5;
  OUTLINED_FUNCTION_8_2();
  v6 = sub_1D41662A0();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_2();
  v60 = v8;
  OUTLINED_FUNCTION_8_2();
  v9 = sub_1D4165DD0();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_2();
  v59 = v11;
  OUTLINED_FUNCTION_8_2();
  v12 = sub_1D4165F70();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_2();
  v58 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4608, &qword_1D4167E70);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = sub_1D4165F60();
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4610, &qword_1D4167E78);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = sub_1D4165CA0();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v58 - v32;
  sub_1D4166160();
  v34 = [a1 locale];
  if (v34)
  {
    v35 = v34;
    sub_1D4165C80();

    v36 = *(v27 + 32);
    v36(v24, v31, v25);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    v36(v33, v24, v25);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
    sub_1D4165C90();
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      sub_1D4137AEC(v24, &qword_1EC7C4610, &qword_1D4167E78);
    }
  }

  OUTLINED_FUNCTION_15_1();
  sub_1D4166150();
  sub_1D41468C8(v1);
  sub_1D4166080();
  OUTLINED_FUNCTION_11_1();
  sub_1D414695C(v37, v38, v39, v40, v18);
  v41 = sub_1D4165F90();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v41);
  sub_1D41660C0();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_17_1(v42, v43, v44, v45);
  OUTLINED_FUNCTION_15_1();
  sub_1D41660B0();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_17_1(v46, v47, v48, v49);
  OUTLINED_FUNCTION_15_1();
  sub_1D4166030();
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_17_1(v50, v51, v52, v53);
  OUTLINED_FUNCTION_15_1();
  sub_1D41660D0();
  [a1 displayScale];
  sub_1D4166050();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_17_1(v54, v55, v56, v57);
  OUTLINED_FUNCTION_15_1();
  sub_1D4166040();
  [a1 accessibilityDifferentiateWithoutColor];
  sub_1D4166120();
  [a1 accessibilityInvertColors];
  sub_1D41660F0();
  [a1 accessibilityReduceMotion];
  sub_1D4166100();
  [a1 accessibilityReduceTransparency];
  sub_1D4166110();
}

uint64_t sub_1D41449CC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45E8, &qword_1D4167E60);
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45F0, &qword_1D4167E68);
  sub_1D41469F4();
  sub_1D4166610();
  swift_getOpaqueTypeConformance2();
  sub_1D4166800();
  sub_1D4166270();
  sub_1D41661F0();
  return sub_1D4166250();
}

uint64_t sub_1D4144B18(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4144BC4;

  return AnyView.archiveDataWithSnippetEnvironment(_:)(a1, a2, v6);
}

uint64_t sub_1D4144BC4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_1D4144CDC(uint64_t a1)
{
  sub_1D4144D7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D4144D7C(uint64_t a1)
{
  if (!qword_1EC7C45D8)
  {
    sub_1D4165D30();
    v1 = sub_1D4166AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7C45D8);
    }
  }
}

_BYTE *sub_1D4144DD4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D4144E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C45E0;
  if (!qword_1EC7C45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C45E0);
  }

  return result;
}

uint64_t sub_1D4144ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4638, &qword_1D4167EF8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v52 - v6;
  v8 = sub_1D4165FF0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4640, &qword_1D4167F00);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4648, &qword_1D4167F08);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v52 - v18;
  if (qword_1EC7C43D0 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    KeyPath = swift_getKeyPath();
    v52[1] = v4;
    v21 = KeyPath;
    v24 = sub_1D4146F24(KeyPath, v22, v23);
    v52[0] = v14;
    v25 = v24;
    v52[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4650, &qword_1D4167F10);
    OUTLINED_FUNCTION_5();
    (*(v26 + 16))(v13, v53);
    v27 = &v13[*(v10 + 36)];
    *v27 = v21;
    *(v27 + 1) = &unk_1F4F854D8;
    *(v27 + 2) = v25;
    v53 = a2;
    v28 = *(v8 + 20);
    v29 = *MEMORY[0x1E697F468];
    sub_1D4166290();
    OUTLINED_FUNCTION_5();
    (*(v30 + 104))(&v2[v28], v29);
    __asm { FMOV            V0.2D, #27.0 }

    *v2 = _Q0;
    v36 = sub_1D4146E40();
    OUTLINED_FUNCTION_5_1();
    v39 = sub_1D4147238(v37, v38, MEMORY[0x1E697EAD0]);
    sub_1D41665F0();
    sub_1D4146F78(v2);
    sub_1D4137AEC(v13, &qword_1EC7C4640, &qword_1D4167F00);
    v40 = v52[0];
    (*(v16 + 16))(v7, v19, v52[0]);
    swift_storeEnumTagMultiPayload();
    v54 = v10;
    v55 = v8;
    v56 = v36;
    v57 = v39;
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_4_0();
    sub_1D41361D0(v41, &qword_1EC7C4650, &qword_1D4167F10, v42);
    sub_1D4166310();
    return (*(v16 + 8))(v19, v40);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4650, &qword_1D4167F10);
    OUTLINED_FUNCTION_5();
    (*(v45 + 16))(v7, v53, v44);
    swift_storeEnumTagMultiPayload();
    v46 = sub_1D4146E40();
    OUTLINED_FUNCTION_5_1();
    v49 = sub_1D4147238(v47, v48, MEMORY[0x1E697EAD0]);
    v54 = v10;
    v55 = v8;
    v56 = v46;
    v57 = v49;
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_4_0();
    sub_1D41361D0(v50, &qword_1EC7C4650, &qword_1D4167F10, v51);
    return sub_1D4166310();
  }
}

uint64_t sub_1D414536C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  v107 = a4;
  v106 = a3;
  v103 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4608, &qword_1D4167E70);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v98 - v8;
  OUTLINED_FUNCTION_8_2();
  v109 = sub_1D4165F90();
  OUTLINED_FUNCTION_0();
  v99 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_2();
  v98 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4698, &qword_1D4167FE0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v98 - v14;
  OUTLINED_FUNCTION_8_2();
  sub_1D4166410();
  OUTLINED_FUNCTION_0();
  v104 = v16;
  v105 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_2();
  v102 = v17;
  OUTLINED_FUNCTION_8_2();
  v111 = sub_1D41662B0();
  OUTLINED_FUNCTION_0();
  v114 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_2();
  v110 = v20;
  OUTLINED_FUNCTION_8_2();
  v21 = sub_1D4166500();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v98 - v28;
  v30 = *(v23 + 16);
  v112 = a1;
  v30(&v98 - v28, a1, v21);
  v31 = *(v23 + 88);
  v32 = v31(v29, v21);
  v33 = *MEMORY[0x1E6980EE8];
  if (v32 == *MEMORY[0x1E6980EE8])
  {
    v34 = 40.0;
  }

  else
  {
    v34 = 24.0;
    v35 = v32 == *MEMORY[0x1E6980F00] || v32 == *MEMORY[0x1E6980F08];
    if (!v35 && v32 != *MEMORY[0x1E6980F10] && v32 != *MEMORY[0x1E6980F38])
    {
      v34 = 22.0;
      if (v32 != *MEMORY[0x1E6980EF0])
      {
        v34 = 20.0;
        if (v32 != *MEMORY[0x1E6980EF8])
        {
          v34 = 17.0;
          v38 = v32 == *MEMORY[0x1E6980F18] || v32 == *MEMORY[0x1E6980F30];
          v39 = v38 || v32 == *MEMORY[0x1E6980F20];
          if (!v39 && v32 != *MEMORY[0x1E6980F28])
          {
            (*(v23 + 8))(v29, v21);
            v34 = 20.0;
          }
        }
      }
    }
  }

  v30(v27, v112, v21);
  v41 = v31(v27, v21);
  v35 = v41 == v33;
  v42 = v114;
  v43 = v105;
  v44 = v101;
  if (v35)
  {
    goto LABEL_28;
  }

  if (v41 == *MEMORY[0x1E6980F00] || v41 == *MEMORY[0x1E6980F08] || v41 == *MEMORY[0x1E6980F10])
  {
    goto LABEL_37;
  }

  if (v41 == *MEMORY[0x1E6980F38])
  {
LABEL_28:
    sub_1D41664B0();
LABEL_38:
    v48 = v45;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x1E6980EF0] || v41 == *MEMORY[0x1E6980EF8] || v41 == *MEMORY[0x1E6980F18] || v41 == *MEMORY[0x1E6980F30] || v41 == *MEMORY[0x1E6980F20] || v41 == *MEMORY[0x1E6980F28])
  {
LABEL_37:
    sub_1D41664A0();
    goto LABEL_38;
  }

  sub_1D41664A0();
  v48 = v97;
  (*(v23 + 8))(v27, v21);
LABEL_39:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46A0, &qword_1D4167FE8);
  inited = swift_initStackObject();
  v50 = MEMORY[0x1E6965788];
  *(inited + 16) = xmmword_1D4167CD0;
  v51 = *v50;
  v52 = MEMORY[0x1E69E6810];
  *(inited + 32) = v51;
  *(inited + 40) = 3;
  v53 = *MEMORY[0x1E6965848];
  *(inited + 64) = v52;
  *(inited + 72) = v53;
  v54 = v51;
  v55 = v53;
  v56 = v110;
  sub_1D41664C0();
  v57 = sub_1D4145CD0(v56);
  v58 = *(v42 + 8);
  v114 = v42 + 8;
  v100 = v58;
  v58(v56, v111);
  v59 = MEMORY[0x1E69E7DE0];
  *(inited + 80) = v34 + v57;
  v60 = *MEMORY[0x1E6965898];
  *(inited + 104) = v59;
  *(inited + 112) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46A8, &qword_1D4167FF0);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1D4167CE0;
  v62 = *MEMORY[0x1E69658E0];
  *(v61 + 32) = *MEMORY[0x1E69658E0];
  sub_1D4147124(v103, v44, &qword_1EC7C4698, &qword_1D4167FE0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v43) == 1)
  {
    v63 = v104;
    v64 = v102;
    (*(v104 + 104))(v102, *MEMORY[0x1E6980E20], v43);
    v65 = v44;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v43);
    v67 = v62;
    v68 = v60;
    if (EnumTagSinglePayload != 1)
    {
      sub_1D4137AEC(v65, &qword_1EC7C4698, &qword_1D4167FE0);
    }
  }

  else
  {
    v63 = v104;
    v64 = v102;
    (*(v104 + 32))(v102, v44, v43);
    v69 = v62;
    v70 = v60;
  }

  v71 = v64;
  v72 = sub_1D4145EEC();
  (*(v63 + 8))(v71, v43);
  type metadata accessor for CFString(0);
  *(v61 + 40) = v72;
  v73 = *MEMORY[0x1E6965970];
  *(v61 + 64) = v74;
  *(v61 + 72) = v73;
  if ((v107 & 1) == 0)
  {
    v48 = *&v106;
  }

  v75 = v73;
  v76 = sub_1D41460D4(v48);
  *(v61 + 104) = MEMORY[0x1E69E7DE0];
  *(v61 + 80) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46B0, &qword_1D4167FF8);
  sub_1D4147184();
  v77 = sub_1D41668B0();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46C0, &qword_1D4168000);
  *(inited + 120) = v77;
  sub_1D4147238(&qword_1EC7C44A8, type metadata accessor for CFString, &unk_1D41678E4);
  v78 = sub_1D41668B0();
  v79 = v108;
  sub_1D41664D0();
  v80 = v109;
  if (__swift_getEnumTagSinglePayload(v79, 1, v109) == 1)
  {
    sub_1D4137AEC(v79, &qword_1EC7C4608, &qword_1D4167E70);
  }

  else
  {
    v81 = v98;
    v82 = v99;
    (*(v99 + 32))(v98, v79, v80);
    v83 = *MEMORY[0x1E69657F0];
    v84 = sub_1D41461F8();
    v118 = MEMORY[0x1E69E6530];
    *&v117 = v84;
    sub_1D4147280(&v117, v116);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v78;
    sub_1D4147290(v116, v83, isUniquelyReferenced_nonNull_native);

    (*(v82 + 8))(v81, v80);
  }

  v86 = sub_1D414632C();
  v87 = v110;
  sub_1D41664C0();
  v88 = sub_1D41465CC();
  v100(v87, v111);
  v89 = sub_1D4166890();

  v90 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v90;
}

double sub_1D4145CD0(uint64_t a1)
{
  v2 = sub_1D41662B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = -3.0;
  if (v6 != *MEMORY[0x1E697F658])
  {
    result = -2.0;
    if (v6 != *MEMORY[0x1E697F690])
    {
      result = -1.0;
      if (v6 != *MEMORY[0x1E697F698])
      {
        result = 0.0;
        if (v6 != *MEMORY[0x1E697F680])
        {
          result = 2.0;
          if (v6 != *MEMORY[0x1E697F650])
          {
            result = 4.0;
            if (v6 != *MEMORY[0x1E697F660])
            {
              result = 6.0;
              if (v6 != *MEMORY[0x1E697F630])
              {
                result = 10.0;
                if (v6 != *MEMORY[0x1E697F670])
                {
                  result = 14.0;
                  if (v6 != *MEMORY[0x1E697F668])
                  {
                    result = 18.0;
                    if (v6 != *MEMORY[0x1E697F678])
                    {
                      result = 22.0;
                      if (v6 != *MEMORY[0x1E697F640])
                      {
                        result = 26.0;
                        if (v6 != *MEMORY[0x1E697F648])
                        {
                          (*(v3 + 8))(v5, v2, 26.0);
                          return 0.0;
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

  return result;
}

id sub_1D4145EEC()
{
  v1 = v0;
  v2 = sub_1D4166410();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x1E6980E20])
  {
    result = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E6980E10])
  {
    result = *MEMORY[0x1E69658D0];
    if (*MEMORY[0x1E69658D0])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x1E6980E28])
  {
    goto LABEL_10;
  }

  result = *MEMORY[0x1E69658C8];
  if (!*MEMORY[0x1E69658C8])
  {
    __break(1u);
LABEL_10:
    if (result == *MEMORY[0x1E6980E08])
    {
      result = *MEMORY[0x1E69658C0];
      if (*MEMORY[0x1E69658C0])
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (*MEMORY[0x1E69658B8])
    {
      v7 = *(v3 + 8);
      v8 = *MEMORY[0x1E69658B8];
      v7(v5, v2);
      return v8;
    }

    __break(1u);
    return result;
  }

LABEL_12:

  return result;
}

double sub_1D41460D4(double a1)
{
  sub_1D4166460();
  if (sub_1D4166430())
  {
    v1 = MEMORY[0x1E6965930];
  }

  else
  {
    sub_1D4166470();
    if (sub_1D4166430())
    {
      v1 = MEMORY[0x1E6965940];
    }

    else
    {
      sub_1D4166440();
      if (sub_1D4166430())
      {
        v1 = MEMORY[0x1E6965938];
      }

      else
      {
        sub_1D41664B0();
        if (sub_1D4166430())
        {
          v1 = MEMORY[0x1E6965960];
        }

        else
        {
          sub_1D4166490();
          if (sub_1D4166430())
          {
            v1 = MEMORY[0x1E6965950];
          }

          else
          {
            sub_1D41664A0();
            v2 = sub_1D4166430();
            v1 = MEMORY[0x1E6965958];
            if ((v2 & 1) == 0)
            {
              sub_1D4166480();
              if (sub_1D4166430())
              {
                v1 = MEMORY[0x1E6965948];
              }

              else
              {
                sub_1D4166450();
                if (sub_1D4166430())
                {
                  v1 = MEMORY[0x1E6965968];
                }

                else
                {
                  sub_1D4166420();
                  if (sub_1D4166430())
                  {
                    v1 = MEMORY[0x1E6965978];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v1;
}

uint64_t sub_1D41461F8()
{
  v1 = v0;
  v2 = sub_1D4165F90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x1E697E9F8])
  {
    if (v6 == *MEMORY[0x1E697E9F0])
    {
      return 1;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return result;
}

id sub_1D414632C()
{
  v1 = v0;
  v2 = sub_1D4166500();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E6980EE8])
  {
    v7 = MEMORY[0x1E6965B20];
  }

  else if (v6 == *MEMORY[0x1E6980F00])
  {
    v7 = MEMORY[0x1E6965B28];
  }

  else if (v6 == *MEMORY[0x1E6980F08])
  {
    v7 = MEMORY[0x1E6965B30];
  }

  else if (v6 == *MEMORY[0x1E6980F10])
  {
    v7 = MEMORY[0x1E6965B38];
  }

  else if (v6 == *MEMORY[0x1E6980F38])
  {
    v7 = MEMORY[0x1E6965AE0];
  }

  else if (v6 == *MEMORY[0x1E6980EF0])
  {
    v7 = MEMORY[0x1E6965B18];
  }

  else if (v6 == *MEMORY[0x1E6980EF8])
  {
    v7 = MEMORY[0x1E6965AB0];
  }

  else if (v6 == *MEMORY[0x1E6980F18])
  {
    v7 = MEMORY[0x1E6965AB8];
  }

  else if (v6 == *MEMORY[0x1E6980F30])
  {
    v7 = MEMORY[0x1E6965AD0];
  }

  else if (v6 == *MEMORY[0x1E6980F20])
  {
    v7 = MEMORY[0x1E6965AC0];
  }

  else
  {
    if (v6 != *MEMORY[0x1E6980F28])
    {
      v10 = *(v3 + 8);
      v11 = *MEMORY[0x1E6965AB0];
      v10(v5, v2);
      return v11;
    }

    v7 = MEMORY[0x1E6965AC8];
  }

  v8 = *v7;

  return v8;
}

id sub_1D41465CC()
{
  v1 = v0;
  v2 = sub_1D41662B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E697F658])
  {
    v7 = MEMORY[0x1E69656D0];
  }

  else if (v6 == *MEMORY[0x1E697F690])
  {
    v7 = MEMORY[0x1E69656C0];
  }

  else if (v6 == *MEMORY[0x1E697F698])
  {
    v7 = MEMORY[0x1E69656B8];
  }

  else if (v6 == *MEMORY[0x1E697F680])
  {
    v7 = MEMORY[0x1E69656B0];
  }

  else if (v6 == *MEMORY[0x1E697F650])
  {
    v7 = MEMORY[0x1E69656C8];
  }

  else if (v6 == *MEMORY[0x1E697F660])
  {
    v7 = MEMORY[0x1E69656D8];
  }

  else if (v6 == *MEMORY[0x1E697F630])
  {
    v7 = MEMORY[0x1E69656E0];
  }

  else if (v6 == *MEMORY[0x1E697F670])
  {
    v7 = MEMORY[0x1E6965690];
  }

  else if (v6 == *MEMORY[0x1E697F668])
  {
    v7 = MEMORY[0x1E6965688];
  }

  else if (v6 == *MEMORY[0x1E697F678])
  {
    v7 = MEMORY[0x1E6965698];
  }

  else if (v6 == *MEMORY[0x1E697F640])
  {
    v7 = MEMORY[0x1E69656A0];
  }

  else
  {
    if (v6 != *MEMORY[0x1E697F648])
    {
      v10 = *(v3 + 8);
      v11 = *MEMORY[0x1E69656B0];
      v10(v5, v2);
      return v11;
    }

    v7 = MEMORY[0x1E69656A8];
  }

  v8 = *v7;

  return v8;
}

uint64_t sub_1D41468C8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 dynamicTypeSize];
  if (v3 > 0xB)
  {
    v4 = MEMORY[0x1E697E6E8];
  }

  else
  {
    v4 = qword_1E8465AB8[v3];
  }

  v5 = *v4;
  sub_1D4165F60();
  OUTLINED_FUNCTION_5();
  v8 = *(v7 + 104);

  return v8(a1, v5, v6);
}

uint64_t sub_1D414695C@<X0>(SEL *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if ([v5 *a1] == 1)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  v11 = *v10;
  a4(0);
  OUTLINED_FUNCTION_5();
  v14 = *(v13 + 104);

  return v14(a5, v11, v12);
}

unint64_t sub_1D41469F4()
{
  result = qword_1EC7C45F8;
  if (!qword_1EC7C45F8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C45F0, &qword_1D4167E68);
    sub_1D4146A80(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C45F8);
  }

  return result;
}

unint64_t sub_1D4146A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4600;
  if (!qword_1EC7C4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4600);
  }

  return result;
}

uint64_t sub_1D4146AD4(uint64_t a1)
{
  v2 = sub_1D4165D30();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4620, &qword_1D4167E88);
  result = sub_1D4166B10();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1D4147238(&qword_1EC7C4628, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
    v14 = sub_1D41668C0();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1D4147238(&qword_1EC7C4630, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v21 = sub_1D41668D0();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1D4146E40()
{
  result = qword_1EC7C4658;
  if (!qword_1EC7C4658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4640, &qword_1D4167F00);
    sub_1D41361D0(&qword_1EC7C4660, &qword_1EC7C4650, &qword_1D4167F10, MEMORY[0x1E697FDF8]);
    sub_1D41361D0(&qword_1EC7C4668, &qword_1EC7C4670, &qword_1D4167F18, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4658);
  }

  return result;
}

unint64_t sub_1D4146F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4680;
  if (!qword_1EC7C4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4680);
  }

  return result;
}

uint64_t sub_1D4146F78(uint64_t a1)
{
  v2 = sub_1D4165FF0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4146FE0()
{
  result = qword_1EC7C4688;
  if (!qword_1EC7C4688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4690, &qword_1D4167F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4640, &qword_1D4167F00);
    sub_1D4165FF0();
    sub_1D4146E40();
    sub_1D4147238(&qword_1EC7C4678, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    swift_getOpaqueTypeConformance2();
    sub_1D41361D0(&qword_1EC7C4660, &qword_1EC7C4650, &qword_1D4167F10, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4688);
  }

  return result;
}

uint64_t sub_1D4147124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1D4147184()
{
  result = qword_1EC7C46B8;
  if (!qword_1EC7C46B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C46B0, &qword_1D4167FF8);
    sub_1D4147238(&qword_1EC7C44A8, type metadata accessor for CFString, &unk_1D41678E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C46B8);
  }

  return result;
}

uint64_t sub_1D4147238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1D4147280(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_1D4147290(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D415A698(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46C8, &qword_1D4168008);
  if ((sub_1D4166BA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1D415A698(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for CFString(0);
    result = sub_1D4166C30();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1D4147280(a1, v14);
  }

  else
  {
    sub_1D41473C8(v9, a2, a1, v13);

    return a2;
  }
}

_OWORD *sub_1D41473C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D4147280(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t Toggle.init<A>(isOn:intent:label:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24[3] = a1;
  v25 = a9;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1D41656D0();
  sub_1D414766C();
  if (swift_dynamicCast())
  {
    v19 = v28;
    (*(v15 + 16))(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a6);
    v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = a5;
    *(v21 + 3) = a6;
    *(v21 + 4) = a7;
    *(v21 + 5) = a8;
    (*(v15 + 32))(&v21[v20], v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
    v22 = v19;
    sub_1D41667F0();

    return (*(v15 + 8))(a2, a6);
  }

  else
  {
    result = sub_1D4166BB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D414766C()
{
  result = qword_1ED9ACC00[0];
  if (!qword_1ED9ACC00[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED9ACC00);
  }

  return result;
}

uint64_t sub_1D41476B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  sub_1D4166A20();
  v16 = sub_1D4166A10();
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = a4;
  *(v18 + 7) = a5;
  (*(v10 + 32))(&v18[v17], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1D415326C();
}

uint64_t sub_1D41478CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4147968, v10, v9);
}

uint64_t sub_1D4147968()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1D41530BC(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t Toggle<>.init<A>(_:isOn:intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a8;
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v22, v23);
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  Toggle.init<A>(isOn:intent:label:)(a5, v21, sub_1D4147BD8, v27, MEMORY[0x1E6981148], a7, MEMORY[0x1E6981138], v26, a9);

  return (*(v18 + 8))(a6, a7);
}

uint64_t sub_1D4147B40@<X0>(uint64_t a5@<X8>)
{

  result = sub_1D4166540();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t Toggle<>.init<A, B>(_:isOn:intent:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v20, v21, v22);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a1;
  Toggle.init<A>(isOn:intent:label:)(a2, v20, sub_1D4147E40, v24, MEMORY[0x1E6981148], a5, MEMORY[0x1E6981138], a7, a8);
  (*(v17 + 8))(a3, a5);
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_1D4147D64@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1D4166560();
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v10;
  return result;
}

uint64_t sub_1D4147E50(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D4147F60;

  return sub_1D41478CC(a1, v9, v10, v1 + v8, v4, v5, v6, v7);
}

uint64_t sub_1D4147F60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WrappedLabelStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WrappedLabelStyle(uint64_t result, int a2, int a3)
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

uint64_t sub_1D41480E0@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = *(type metadata accessor for WrappedLabelStyleView(0) + 28);
  sub_1D4166360();
  OUTLINED_FUNCTION_0_3();
  result = (*(v11 + 16))(a2 + v10, a1);
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  return result;
}

uint64_t type metadata accessor for WrappedLabelStyleView(uint64_t a1)
{
  result = qword_1ED9ACA78;
  if (!qword_1ED9ACA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D41481EC(uint64_t a1)
{
  result = sub_1D4166360();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D414828C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D41661B0();
  v4 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D8, &qword_1D4168118);
  return sub_1D41482E0(a1 + *(v5 + 44));
}

uint64_t sub_1D41482E0@<X0>(uint64_t a2@<X8>)
{
  v50 = a2;
  v2 = sub_1D4166340();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E0, &qword_1D4168120);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v49 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E8, &qword_1D4168128);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F0, &qword_1D4168130);
  v12 = MEMORY[0x1EEE9AC00](v43);
  v44 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v42 - v17;
  v42[1] = *(type metadata accessor for WrappedLabelStyleView(0) + 28);
  sub_1D4166330();
  sub_1D4166840();
  sub_1D4165E30();
  v19 = &v11[*(v9 + 44)];
  v20 = v52;
  *v19 = v51;
  *(v19 + 1) = v20;
  *(v19 + 2) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F8, &qword_1D4168138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4167CD0;
  v22 = sub_1D41663E0();
  *(inited + 32) = v22;
  v23 = sub_1D41663C0();
  *(inited + 33) = v23;
  v24 = sub_1D41663D0();
  *(inited + 34) = v24;
  v25 = sub_1D41663F0();
  sub_1D41663F0();
  if (sub_1D41663F0() != v22)
  {
    v25 = sub_1D41663F0();
  }

  sub_1D41663F0();
  if (sub_1D41663F0() != v23)
  {
    v25 = sub_1D41663F0();
  }

  sub_1D41663F0();
  if (sub_1D41663F0() != v24)
  {
    v25 = sub_1D41663F0();
  }

  sub_1D4165DC0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1D4148828(v11, v16, &qword_1EC7C46E8, &qword_1D4168128);
  v34 = &v16[*(v43 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_1D4148828(v16, v18, &qword_1EC7C46F0, &qword_1D4168130);
  v35 = v46;
  sub_1D4166350();
  sub_1D4148884(&qword_1ED9ACA58, MEMORY[0x1E697C8A8], MEMORY[0x1E697C8A0]);
  v36 = v48;
  sub_1D4166600();
  (*(v47 + 8))(v35, v36);
  *&v7[*(v45 + 36)] = 256;
  v37 = v44;
  sub_1D41488CC(v18, v44);
  v38 = v49;
  sub_1D4139724(v7, v49);
  v39 = v50;
  sub_1D41488CC(v37, v50);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4700, &qword_1D4168140);
  sub_1D4139724(v38, v39 + *(v40 + 48));
  sub_1D4139788(v7);
  sub_1D414893C(v18);
  sub_1D4139788(v38);
  return sub_1D414893C(v37);
}

uint64_t sub_1D4148828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_3();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4148884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D41488CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F0, &qword_1D4168130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D414893C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F0, &qword_1D4168130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D41489A4()
{
  result = qword_1ED9ACA48;
  if (!qword_1ED9ACA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC7C4708, &qword_1D4168148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA48);
  }

  return result;
}

double sub_1D4148A08()
{
  result = 1.47881614e-270;
  qword_1EC7C5F40 = 0x7E90000FFFFFFFFLL;
  return result;
}

void View.accessibilityAction<A, B>(intent:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v36 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_11_2();
  v35 = v29;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v30 = OUTLINED_FUNCTION_22_1();
    v31(v30);
    v32 = swift_allocObject();
    v32[2] = v27;
    v32[3] = v25;
    v32[4] = v23;
    v32[5] = v36;
    v32[6] = v35;
    v32[7] = a21;
    v33 = OUTLINED_FUNCTION_39_1(v32);
    v34(v33);
    sub_1D4166620();

    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_1D4166BB0();
    __break(1u);
  }
}

uint64_t sub_1D4148C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  sub_1D4166A20();
  v18 = sub_1D4166A10();
  v19 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  *(v20 + 6) = a4;
  *(v20 + 7) = a5;
  v22 = v25;
  *(v20 + 8) = v24;
  *(v20 + 9) = v22;
  (*(v12 + 32))(&v20[v19], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1D415326C();
}

uint64_t sub_1D4148E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = v11;
  v6[2] = a4;
  sub_1D4166A20();
  v6[5] = sub_1D4166A10();
  v8 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v8, v7);
}

uint64_t sub_1D4148F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v10, v9);
}

uint64_t sub_1D414911C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D41491A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v12;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v9, v8);
}

void ModifiedContent<>.accessibilityAction<A>(_:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D414A504();
}

{
  sub_1D414A504();
}

uint64_t sub_1D41492BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v9, v8);
}

uint64_t sub_1D414947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4147968, v9, v8);
}

uint64_t sub_1D414958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v12;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v9, v8);
}

void sub_1D4149684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, void *, uint64_t, void *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v42 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v41 = v30;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_11_2();
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v32 = OUTLINED_FUNCTION_22_1();
    v33(v32);
    v34 = swift_allocObject();
    v34[2] = v29;
    v34[3] = v27;
    v34[4] = v25;
    v34[5] = v23;
    v35 = OUTLINED_FUNCTION_39_1(v34);
    v36(v35);
    a21(v41, v43, v42, v34, v29, v25);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v37, v38, v39, v40, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D4149880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  v57 = v25;
  v58 = v24;
  v54 = v27;
  v55 = v26;
  v29 = v28;
  v31 = v30;
  v56 = v32;
  v52 = v33;
  v53 = v34;
  v51[1] = v35;
  OUTLINED_FUNCTION_2();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v51 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41656D0();
  sub_1D414766C();
  if (swift_dynamicCast())
  {
    v51[0] = a24;
    v42 = v59;
    (*(v37 + 16))(v51 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v29);
    v43 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v44 = swift_allocObject();
    v45 = v57;
    *(v44 + 2) = v57;
    *(v44 + 3) = v29;
    v46 = v54;
    *(v44 + 4) = v54;
    *(v44 + 5) = a21;
    (*(v37 + 32))(&v44[v43], v41, v29);
    (v51[0])(v53, v55, v52 & 1, v56, v42, a23, v44, v45, v46);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v47, v48, v49, v50, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D4149AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t, void *))
{
  OUTLINED_FUNCTION_39();
  v63 = v25;
  v62 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_2();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_30_1();
  v61 = v40;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {

    OUTLINED_FUNCTION_36_0();
    v45 = OUTLINED_FUNCTION_42_0(v36, v34, v32 & 1, v30, v41, v42, v43, v44, v64, a23);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = OUTLINED_FUNCTION_29_1();
    v53(v52);
    v54 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v63;
    *(v55 + 24) = v28;
    *(v55 + 32) = v62;
    *(v55 + 40) = v61;
    (*(v38 + 32))(v55 + v54, v24, v28);
    a24(v45, v47, v49 & 1, v51, v62, v60, v55, v63, v62);
    sub_1D414911C(v45, v47, v49 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v56, v57, v58, v59, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D4149CEC()
{
  OUTLINED_FUNCTION_39();
  v26[0] = v1;
  v26[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v15, v17, v18, v16);
  v19 = OUTLINED_FUNCTION_29_1();
  v20(v19);
  sub_1D4166A20();
  v21 = sub_1D4166A10();
  v22 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v21;
  *(v23 + 3) = v24;
  *(v23 + 4) = v8;
  *(v23 + 5) = v6;
  v25 = v26[0];
  *(v23 + 6) = v4;
  *(v23 + 7) = v25;
  (*(v10 + 32))(&v23[v22], v0, v6);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  v3 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1D4149F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v71 = v24;
  v72 = v23;
  v26 = v25;
  v69 = v28;
  v70 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v67 = v35;
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_37_1();
  v40 = v39;
  OUTLINED_FUNCTION_2();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v63 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v46;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v65 = a22;
    v66 = a23;
    v64 = v73;
    (*(v42 + 16))(v45, v67, v32);
    v47 = sub_1D4166560();
    v67 = v48;
    v50 = v49;
    v63 = v51;
    (*(v37 + 16))(v40, v34, v30);
    v52 = (*(v37 + 80) + 64) & ~*(v37 + 80);
    v53 = swift_allocObject();
    v54 = v71;
    *(v53 + 2) = v71;
    *(v53 + 3) = v32;
    v55 = v70;
    *(v53 + 4) = v30;
    *(v53 + 5) = v55;
    v56 = v68;
    *(v53 + 6) = v26;
    *(v53 + 7) = v56;
    (*(v37 + 32))(&v53[v52], v40, v30);
    v57 = v67;
    v58 = v64;
    v66(v47, v67, v50 & 1, v63, v64, v65, v53, v54, v55);
    sub_1D414911C(v47, v57, v50 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v59, v60, v61, v62, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D414A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v54 = v21;
  v55 = v22;
  v53 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  v35 = *(v34 + 64);
  v52 = a21;
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v52 - v40;
  v42 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v41, v43, v44, v42);
  (*(v33 + 16))(v37, v31, v25);
  sub_1D4166A20();
  v45 = sub_1D4166A10();
  v46 = (*(v33 + 80) + 80) & ~*(v33 + 80);
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 2) = v45;
  *(v47 + 3) = v48;
  *(v47 + 4) = v29;
  *(v47 + 5) = v27;
  v49 = v53;
  v50 = v54;
  *(v47 + 6) = v25;
  *(v47 + 7) = v49;
  v51 = v55;
  *(v47 + 8) = v50;
  *(v47 + 9) = v51;
  (*(v33 + 32))(&v47[v46], v37, v25);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 64) & ~*(v2 + 80)));
  v3 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1D414A504()
{
  OUTLINED_FUNCTION_39();
  v21 = v0;
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_2();
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v10 = OUTLINED_FUNCTION_22_1();
    v11(v10);
    v12 = swift_allocObject();
    v12[2] = *(v8 + 16);
    v12[3] = v6;
    v12[4] = v4;
    v13 = OUTLINED_FUNCTION_39_1(v12);
    v14(v13);
    v21(v19, v22, v20, v12, v8);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v15, v16, v17, v18, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D414A6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, void *, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v46 = v23;
  v25 = v24;
  v27 = v26;
  v44 = v28;
  v45 = v29;
  v42 = v30;
  v43 = v31;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_11_2();
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v33 = OUTLINED_FUNCTION_22_1();
    v34(v33);
    v35 = swift_allocObject();
    v35[2] = *(v46 + 16);
    v35[3] = v27;
    v35[4] = v25;
    v36 = OUTLINED_FUNCTION_39_1(v35);
    v37(v36);
    a23(v43, v44, v42 & 1, v45, v47, a22, v35, v46);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v38, v39, v40, v41, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D414A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v61 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_2();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31_1();
  v60 = v40;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {

    OUTLINED_FUNCTION_36_0();
    v45 = OUTLINED_FUNCTION_42_0(v36, v34, v32 & 1, v30, v41, v42, v43, v44, v58, v62);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    (*(v38 + 16))(v23, v28, v26);
    v52 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = *(v61 + 16);
    *(v53 + 24) = v26;
    *(v53 + 32) = v60;
    (*(v38 + 32))(v53 + v52, v23, v26);
    a23(v45, v47, v49 & 1, v51, v59, a22, v53, v61);
    sub_1D414911C(v45, v47, v49 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v54, v55, v56, v57, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D414AB24()
{
  OUTLINED_FUNCTION_39();
  v24[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v17 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v16, v18, v19, v17);
  (*(v11 + 16))(v0, v9, v5);
  sub_1D4166A20();
  v20 = sub_1D4166A10();
  v21 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 2) = v20;
  *(v22 + 3) = v23;
  *(v22 + 4) = v7;
  *(v22 + 5) = v5;
  *(v22 + 6) = v3;
  (*(v11 + 32))(&v22[v21], v0, v5);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_14Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
  v3 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1D414AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v67 = v23;
  v68 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v64 = v30;
  v66 = v31;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_37_1();
  v36 = v35;
  OUTLINED_FUNCTION_2();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v42;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v62 = a21;
    v63 = a22;
    v61 = v69;
    (*(v38 + 16))(v41, v64, v29);
    v43 = sub_1D4166560();
    v64 = v44;
    v46 = v45;
    v60 = v47;
    v48 = OUTLINED_FUNCTION_29_1();
    v49(v48);
    v50 = (*(v33 + 80) + 56) & ~*(v33 + 80);
    v51 = swift_allocObject();
    v52 = v67;
    *(v51 + 2) = *(v67 + 16);
    *(v51 + 3) = v29;
    *(v51 + 4) = v27;
    *(v51 + 5) = v25;
    *(v51 + 6) = v65;
    (*(v33 + 32))(&v51[v50], v36, v27);
    v53 = v64;
    v54 = v61;
    v63(v43, v64, v46 & 1, v60, v61, v62, v51, v52);
    sub_1D414911C(v43, v53, v46 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1("Fatal error", v55, v56, v57, v58, "_AppIntents_SwiftUI/AccessibilityAction+AppIntents.swift");
    __break(1u);
  }
}

void sub_1D414B020()
{
  OUTLINED_FUNCTION_39();
  v31 = v0;
  v32 = v1;
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v20 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v19, v21, v22, v20);
  (*(v12 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v4);
  sub_1D4166A20();
  v23 = sub_1D4166A10();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v23;
  *(v25 + 3) = v26;
  *(v25 + 4) = v8;
  *(v25 + 5) = v6;
  v28 = v30;
  v27 = v31;
  *(v25 + 6) = v4;
  *(v25 + 7) = v28;
  *(v25 + 8) = v27;
  (*(v12 + 32))(&v25[v24], &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_23Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 56) & ~*(v2 + 80)));
  v3 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D414B2C0()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_23_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7(v0);
  *v1 = v2;
  v1[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1();

  return sub_1D414958C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D414B3B0(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414B464(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414B518(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414B5CC(uint64_t a1)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_23_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  v2[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_34_1();

  return sub_1D41491A0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414B6AC(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D414B760(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D414B814(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_52Tm()
{
  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_13_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D414B96C(uint64_t a1)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_23_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  v2[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1();

  return sub_1D414958C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414BA5C(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_32_1();

  return sub_1D414947C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414BB10(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_56Tm()
{
  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_13_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D414BC68(uint64_t a1)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_68Tm()
{
  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_13_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D414BDC0(uint64_t a1)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_23_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  v2[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_34_1();

  return sub_1D41491A0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D414BEA0(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D414BF54(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_72Tm()
{
  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_13_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D414C0AC(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D414C160(uint64_t a1)
{
  OUTLINED_FUNCTION_41_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7(v1);
  *v2 = v3;
  v2[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_34_1();

  return sub_1D4148E34(v4, v5, v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1D4166540();
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t View.suggestedIntent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SuggestedIntent(0, v14, v16, v15);
  OUTLINED_FUNCTION_2();
  v19 = v18;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v24 - v21;
  (*(v10 + 16))(v13, a1, a3);
  sub_1D414C558(v13, a3, a5, v22);
  MEMORY[0x1DA6D1980](v22, a2, v17, v24);
  return (*(v19 + 8))(v22, v17);
}

uint64_t sub_1D414C558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = OUTLINED_FUNCTION_10_3();
  type metadata accessor for SuggestedIntent(v12, v13, a3, v14);
  v15 = sub_1D4165A60();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  sub_1D414CD0C(v11);
  OUTLINED_FUNCTION_14();
  return (*(v16 + 32))(a4, a1, a2);
}

void sub_1D414C644(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D414CC64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D414C6CC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D4165A60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = *(v6 + 64) + v16;
  v18 = v14 + 7;
  if (v13 >= a2)
  {
LABEL_33:
    if (v7 >= v12)
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }

    else
    {
      v28 = (a1 + v17) & ~v16;
      if (v11 < 0x7FFFFFFE)
      {
        v30 = *((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
        if (v30 >= 0xFFFFFFFF)
        {
          LODWORD(v30) = -1;
        }

        if ((v30 + 1) >= 2)
        {
          return v30;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, v10, v15);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    result = 4;
    if (v21 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v21 < 0x100)
    {
      v23 = 1;
    }

    if (v21 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    switch(v24)
    {
      case 1:
        v25 = *(a1 + v19);
        if (!v25)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 2:
        v25 = *(a1 + v19);
        if (!v25)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v25 = *(a1 + v19);
        if (!v25)
        {
          goto LABEL_33;
        }

LABEL_30:
        v26 = v25 - 1;
        if (v20)
        {
          v26 = 0;
          v27 = *a1;
        }

        else
        {
          v27 = 0;
        }

        result = v13 + (v27 | v26) + 1;
        break;
      default:
        goto LABEL_33;
    }
  }

  return result;
}

void sub_1D414C918(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1D4165A60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = *(v8 + 64) + v16;
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8;
  if (((v18 + 7) & 0xFFFFFFF8) + (v17 & ~(*(v11 + 80) & 0xF8 | 7)) == -8)
  {
    v20 = a3 - v15 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v15 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= v15)
  {
    v26 = v10;
    switch(v23)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 3:
LABEL_70:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v9 >= v14)
        {
          v30 = a1;
          v31 = a2;
          v12 = v9;
          v26 = v7;
        }

        else
        {
          v27 = ((a1 + v17) & ~v16);
          if (v14 < a2)
          {
            v28 = (v18 + 7) & 0xFFFFFFF8;
            if (v28 != -8)
            {
              v29 = ~v14 + a2;
              bzero(v27, (v28 + 8));
LABEL_45:
              *v27 = v29;
            }

            return;
          }

          if (v13 < 0x7FFFFFFE)
          {
            v34 = (&v27[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v34 = 0;
              *v34 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v34 = a2;
            }

            return;
          }

          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v32 = ~(-1 << (8 * v18));
            }

            else
            {
              v32 = -1;
            }

            if (v18)
            {
              v29 = v32 & (~v13 + a2);
              if (v18 <= 3)
              {
                v33 = v18;
              }

              else
              {
                v33 = 4;
              }

              bzero(v27, v18);
              switch(v33)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  goto LABEL_45;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v31 = (a2 + 1);
          v30 = v27;
        }

        __swift_storeEnumTagSinglePayload(v30, v31, v12, v26);
        break;
    }
  }

  else
  {
    if (((v18 + 7) & 0xFFFFFFF8) + (v17 & ~(*(v11 + 80) & 0xF8 | 7)) == -8)
    {
      v24 = a2 - v15;
    }

    else
    {
      v24 = 1;
    }

    if (((v18 + 7) & 0xFFFFFFF8) + (v17 & ~(*(v11 + 80) & 0xF8 | 7)) != -8)
    {
      v25 = ~v15 + a2;
      bzero(a1, ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v19) = v24;
        break;
      case 2:
        *(a1 + v19) = v24;
        break;
      case 3:
        goto LABEL_70;
      case 4:
        *(a1 + v19) = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1D414CC64(uint64_t a1)
{
  if (!qword_1EC7C4790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4798, qword_1D4168298);
    v1 = sub_1D4166790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7C4790);
    }
  }
}

uint64_t sub_1D414CD0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  sub_1D414E718(a1, &v5 - v3, &qword_1EC7C4798, qword_1D4168298);
  sub_1D4166760();
  return sub_1D414E5B4(a1, &qword_1EC7C4798, qword_1D4168298);
}

uint64_t sub_1D414CE18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  sub_1D414E718(a1, &v6 - v4, &qword_1EC7C4798, qword_1D4168298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300);
  sub_1D4166780();
  return sub_1D414E5B4(a1, &qword_1EC7C4798, qword_1D4168298);
}

uint64_t sub_1D414CEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v47 = a3;
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v36 = v8;
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  v37 = sub_1D4166320();
  v41 = sub_1D4165F80();
  OUTLINED_FUNCTION_2();
  v45 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v34 - v12;
  v44 = sub_1D4165F80();
  OUTLINED_FUNCTION_2();
  v46 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v40 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v34 - v17;
  v38 = *(v6 + 16);
  v34 = v9;
  v38(v9, v3, a2);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  *(v19 + 16) = v21;
  *(v19 + 24) = v20;
  v35 = *(v6 + 32);
  v35(v19 + v18, v9, a2);
  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1D4166690();

  v23 = v34;
  v38(v34, v39, a2);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  v35(v24 + v18, v23, a2);
  v25 = MEMORY[0x1E69805D0];
  v51 = WitnessTable;
  v52 = MEMORY[0x1E69805D0];
  v26 = v41;
  v27 = swift_getWitnessTable();
  v28 = v40;
  v29 = v48;
  sub_1D41665D0();

  (*(v45 + 8))(v29, v26);
  v49 = v27;
  v50 = v25;
  v30 = v44;
  swift_getWitnessTable();
  v31 = v42;
  sub_1D41605A4();
  v32 = *(v46 + 8);
  v32(v28, v30);
  sub_1D41605A4();
  return (v32)(v31, v30);
}

uint64_t sub_1D414D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SuggestedIntent(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A8, &qword_1D4168310);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D4168270;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 0xD000000000000028;
  *(v14 + 40) = 0x80000001D416C8F0;
  sub_1D4166CC0();

  v15 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  (*(v8 + 16))(v10, a1, v7);
  sub_1D4166A20();
  v16 = sub_1D4166A10();
  v17 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v8 + 32))(&v18[v17], v10, v7);
  sub_1D414D904(0, 0, v13, &unk_1D4168330, v18);
}

uint64_t sub_1D414D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  v6[5] = swift_task_alloc();
  sub_1D4166A20();
  v6[6] = sub_1D4166A10();
  v8 = sub_1D4166A00();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D414D624, v8, v7);
}

uint64_t sub_1D414D624()
{
  OUTLINED_FUNCTION_6();
  sub_1D4165A90();
  v0[9] = sub_1D4165A80();
  v1 = OUTLINED_FUNCTION_12_3();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1D414D6D4;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return v7(v2, v4, v5, v3);
}

uint64_t sub_1D414D6D4()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v2[11] = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D414D894;
  }

  else
  {

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D414D7E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D414D7E4()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  v4 = sub_1D4165A60();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  type metadata accessor for SuggestedIntent(0, v2, v3, v5);
  sub_1D414CE18(v1);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_1D414D894()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D414D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1D414E718(a3, v21 - v9, &qword_1EC7C46D0, &qword_1D4168010);
  v11 = sub_1D4166A50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D414E5B4(v10, &qword_1EC7C46D0, &qword_1D4168010);
  }

  else
  {
    sub_1D4166A40();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1D4166A00();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1D4166940() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1D414E5B4(a3, &qword_1EC7C46D0, &qword_1D4168010);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D414E5B4(a3, &qword_1EC7C46D0, &qword_1D4168010);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D414DB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = sub_1D4165A60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A8, &qword_1D4168310);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D4168270;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 32) = 0xD00000000000002ALL;
  *(v18 + 40) = 0x80000001D416C8C0;
  sub_1D4166CC0();

  type metadata accessor for SuggestedIntent(0, a2, a3, v19);
  sub_1D414CDCC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_1D414E5B4(v10, &qword_1EC7C4798, qword_1D4168298);
  }

  v21 = *(v12 + 32);
  v21(v17, v10, v11);
  v22 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v22);
  (*(v12 + 16))(v15, v17, v11);
  sub_1D4166A20();
  v23 = sub_1D4166A10();
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  v21((v25 + v24), v15, v11);
  sub_1D414D904(0, 0, v7, &unk_1D4168320, v25);

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1D414DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D4166A20();
  v4[3] = sub_1D4166A10();
  v6 = sub_1D4166A00();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D414DF6C, v6, v5);
}

uint64_t sub_1D414DF6C()
{
  OUTLINED_FUNCTION_6();
  sub_1D4165A90();
  v0[6] = sub_1D4165A80();
  v1 = OUTLINED_FUNCTION_12_3();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1D414E018;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1D414E018()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v2[8] = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_1D414E184;
  }

  else
  {

    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_1D414E128;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D414E128()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D414E184()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t objectdestroyTm()
{
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_10_3();
  type metadata accessor for SuggestedIntent(v3, v4, v5, v6);
  OUTLINED_FUNCTION_9_3();
  v8 = *(v7 + 80);
  v10 = *(v9 + 64);
  v11 = (v8 + 32) & ~v8;
  OUTLINED_FUNCTION_14();
  (*(v12 + 8))(v0 + v11, v2);
  v13 = v0 + v11 + *(v1 + 44);
  v14 = sub_1D4165A60();
  if (!OUTLINED_FUNCTION_11_3(v14))
  {
    OUTLINED_FUNCTION_14();
    (*(v15 + 8))(v13, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v10, v8 | 7);
}

uint64_t sub_1D414E354(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_10_3();
  v7 = type metadata accessor for SuggestedIntent(v4, v5, v3, v6);
  OUTLINED_FUNCTION_22(v7);
  v9 = v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v2, v3);
}

uint64_t sub_1D414E3E4(uint64_t a1)
{
  v4 = sub_1D4165A60();
  OUTLINED_FUNCTION_22(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D414E4D0;

  return sub_1D414DED4(a1, v7, v8, v1 + v6);
}

uint64_t sub_1D414E4D0()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1D414E5B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D414E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = type metadata accessor for SuggestedIntent(0, v7, v8, a4);
  OUTLINED_FUNCTION_22(v9);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1D414E77C;

  return sub_1D414D550(a1, v12, v13, v4 + v11, v7, v8);
}

uint64_t sub_1D414E718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t AppIntent.requestConfirmation<A>(conditions:actionName:dialog:showDialogAsPrompt:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_6();
  *(v11 + 80) = a10;
  *(v11 + 88) = v10;
  *(v11 + 64) = v12;
  *(v11 + 72) = a9;
  *(v11 + 48) = v13;
  *(v11 + 56) = v14;
  *(v11 + 208) = v15;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  *(v11 + 16) = v18;
  *(v11 + 24) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47B0, &qword_1D4168358);
  *(v11 + 96) = v20;
  OUTLINED_FUNCTION_24(v20);
  *(v11 + 104) = v21;
  *(v11 + 112) = OUTLINED_FUNCTION_19();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47B8, &qword_1D4168360);
  *(v11 + 120) = v22;
  OUTLINED_FUNCTION_24(v22);
  *(v11 + 128) = v23;
  *(v11 + 136) = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v24);
  *(v11 + 144) = OUTLINED_FUNCTION_19();
  v25 = sub_1D4165760();
  *(v11 + 152) = v25;
  OUTLINED_FUNCTION_24(v25);
  *(v11 + 160) = v26;
  *(v11 + 168) = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1D414E924()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_1D414F00C(*(v0 + 32), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 64);
    sub_1D414F5DC(*(v0 + 144), &qword_1EC7C44B8, &unk_1D4167930);
    v4 = OUTLINED_FUNCTION_21_2();
    sub_1D414F168(v4, v3, v5);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    v7 = sub_1D414F24C(&qword_1EC7C47C0, &qword_1EC7C47B0, &qword_1D4168358);
    *v6 = v0;
    v6[1] = sub_1D414ED40;
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 136);
    v17 = *(v0 + 64);
    v18 = *(v0 + 16);
    (*(*(v0 + 160) + 32))(v15, *(v0 + 144), *(v0 + 152));
    sub_1D414F07C(v18, v15, v17, v16);
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    v7 = sub_1D414F24C(&qword_1EC7C47C8, &qword_1EC7C47B8, &qword_1D4168360);
    *v19 = v0;
    v19[1] = sub_1D414EB50;
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);
    v14 = *(v0 + 208);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
  }

  return MEMORY[0x1EEDB2D68](v8, v12, v14, v13, v11, v9, v10, v7);
}

uint64_t sub_1D414EB50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414ECA8()
{
  OUTLINED_FUNCTION_9();
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_3_2();

  return v1();
}

uint64_t sub_1D414ED40()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v3 + 200) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414EEEC()
{
  OUTLINED_FUNCTION_9();
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1D414EF88()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D414F00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D414F07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17();
  sub_1D414FF84(a1, a2, v16, a5, x8_0);
  return (*(v12 + 8))(v16, a5);
}

uint64_t sub_1D414F168@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15();
  sub_1D414FCEC(a1, v14, a4, x8_0);
  return (*(v10 + 8))(v14, a4);
}

uint64_t sub_1D414F24C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppIntent.requestChoice<A>(between:dialog:content:)()
{
  OUTLINED_FUNCTION_6();
  v9 = OUTLINED_FUNCTION_10_4(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v0[12] = OUTLINED_FUNCTION_19();
  v0[13] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v10);
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1D414F350()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13_3();
  v0();
  OUTLINED_FUNCTION_21_2();
  sub_1D413DBDC();
  OUTLINED_FUNCTION_19_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_3(v2);

  return MEMORY[0x1EEDB2CE0](v4);
}

uint64_t sub_1D414F400()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1D414F5DC(v6, &qword_1EC7C4440, &qword_1D41675E0);
  if (!v0)
  {

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414F56C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D414F5DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AppIntent.requestChoice<A>(between:dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[7] = v2;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = v10;
  v11 = sub_1D4165910();
  OUTLINED_FUNCTION_22(v11);
  v1[11] = OUTLINED_FUNCTION_19();
  v1[12] = *(v3 - 8);
  v1[13] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v12);
  v1[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414F740()
{
  OUTLINED_FUNCTION_9_0();
  (*(v0[12] + 16))(v0[13], v0[5], v0[7]);
  sub_1D413DBDC();
  sub_1D413DBE4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_3(v1);
  *v2 = v3;
  v2[1] = sub_1D414F844;
  v4 = v0[2];

  return MEMORY[0x1EEDB2CE0](v4);
}

uint64_t sub_1D414F844()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1D414F5DC(v6, &qword_1EC7C4440, &qword_1D41675E0);
  if (!v0)
  {

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414F9B0()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t AppIntent._requestChoice<A>(between:dialog:content:)()
{
  OUTLINED_FUNCTION_6();
  v9 = OUTLINED_FUNCTION_10_4(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v0[12] = OUTLINED_FUNCTION_19();
  v0[13] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v10);
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1D414FAD0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13_3();
  v0();
  OUTLINED_FUNCTION_21_2();
  sub_1D413DBDC();
  OUTLINED_FUNCTION_19_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_3(v2);

  return MEMORY[0x1EEDB2CF8](v4);
}

uint64_t sub_1D414FB80()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1D414F5DC(v6, &qword_1EC7C4440, &qword_1D41675E0);
  if (!v0)
  {

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a1;
  v42 = a4;
  v6 = sub_1D41659B0();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_23_2();
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  v47 = 1;
  v46 = 1;
  (*(v18 + 16))(v22, v40, a3);
  OUTLINED_FUNCTION_21_2();
  sub_1D413DBDC();
  sub_1D413DBE4();
  v27 = sub_1D4165760();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v27);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v8 + 16))(v12, v41, v6);
  v28 = sub_1D41659A0();
  v31 = sub_1D413E4E8(v28, v29, v30);
  sub_1D413E53C(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_18_2();
  return OUTLINED_FUNCTION_24_2(v34, v35, v26, v36, v37);
}

uint64_t sub_1D414FF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a2;
  v42 = a1;
  v43 = a5;
  v7 = sub_1D41659B0();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_23_2();
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  v48 = 1;
  v47 = 1;
  (*(v19 + 16))(v23, v40, a4);
  sub_1D413DBDC();
  sub_1D413DBE4();
  v28 = sub_1D4165760();
  (*(*(v28 - 8) + 16))(v5, v41, v28);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v28);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  (*(v9 + 16))(v13, v42, v7);
  v29 = sub_1D41659A0();
  v39 = sub_1D413E4E8(v29, v30, v31);
  sub_1D413E53C(v39, v32, v33);
  v34 = OUTLINED_FUNCTION_18_2();
  return OUTLINED_FUNCTION_24_2(v34, v35, v27, v36, v37);
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D4165970();
}

uint64_t PlaybackButton.init<A>(interval:state:intent:systemImage:alignment:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47D0, &qword_1D4168380);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_3_3();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    sub_1D4150864(a1, v2, &qword_1EC7C47D0, &qword_1D4168380);
    v9 = OUTLINED_FUNCTION_9_4();
    v10(v9);
    v11 = OUTLINED_FUNCTION_5_2();
    v12(v11);
    v13 = swift_allocObject();
    v14 = OUTLINED_FUNCTION_2_5(v13);
    v15(v14);
    OUTLINED_FUNCTION_4_2();
    sub_1D4165F20();
    v16 = OUTLINED_FUNCTION_11_5();
    v17(v16);
    (*(v6 + 8))(a2, v4);
    return sub_1D414F5DC(a1, &qword_1EC7C47D0, &qword_1D4168380);
  }

  else
  {
    result = OUTLINED_FUNCTION_7_2();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4150558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D4166A20();
  v6[5] = sub_1D4166A10();
  v8 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4147968, v8, v7);
}

uint64_t PlaybackButton.init<A>(interval:state:intent:playSystemImage:pauseSystemImage:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47D8, &qword_1D4168388);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_3_3();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    sub_1D4150864(a1, v2, &qword_1EC7C47D8, &qword_1D4168388);
    v9 = OUTLINED_FUNCTION_9_4();
    v10(v9);
    v11 = OUTLINED_FUNCTION_5_2();
    v12(v11);
    v13 = swift_allocObject();
    v14 = OUTLINED_FUNCTION_2_5(v13);
    v15(v14);
    OUTLINED_FUNCTION_4_2();
    sub_1D4165F30();
    v16 = OUTLINED_FUNCTION_11_5();
    v17(v16);
    (*(v6 + 8))(a2, v4);
    return sub_1D414F5DC(a1, &qword_1EC7C47D8, &qword_1D4168388);
  }

  else
  {
    result = OUTLINED_FUNCTION_7_2();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4150864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D41508CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v9 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_1D4166A20();
  v17 = sub_1D4166A10();
  v18 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v9 + 32))(&v19[v18], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D415326C();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D4150B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D4166A20();
  v6[5] = sub_1D4166A10();
  v8 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v8, v7);
}

uint64_t sub_1D4150C1C()
{
  OUTLINED_FUNCTION_10_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_3(v1);

  return sub_1D4150B80(v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4150DA4()
{
  OUTLINED_FUNCTION_10_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_3(v1);

  return sub_1D4150558(v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return MEMORY[0x1EEDD9D10](0);
}

void sub_1D4150EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v68 = a6;
  v66 = a4;
  v69 = a3;
  v67 = a2;
  v73 = sub_1D4165C70();
  v9 = *(v73 - 8);
  v10 = MEMORY[0x1EEE9AC00](v73);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v62 - v13;
  v14 = sub_1D4166AD0();
  v64 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - v16;
  v72 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_1D41657E0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41657C0();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v26 = &qword_1EC7C47E0;
    v27 = &qword_1D41683C8;
    v28 = v21;
LABEL_10:
    sub_1D414F5DC(v28, v26, v27);
LABEL_11:
    v48 = v73;
    if (qword_1EC7C43D8 != -1)
    {
      swift_once();
    }

    v49 = sub_1D4165D70();
    __swift_project_value_buffer(v49, qword_1EC7C5F48);
    (*(v9 + 16))(v12, a1, v48);
    v50 = sub_1D4165D50();
    v51 = sub_1D4166A90();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v76[0] = v53;
      *v52 = 136446210;
      sub_1D4152F2C();
      v54 = sub_1D4166C00();
      v56 = v55;
      (*(v9 + 8))(v12, v48);
      v57 = sub_1D41529BC(v54, v56, v76);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_1D4134000, v50, v51, "[Scene:%{public}s] could not find context", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA6D2650](v53, -1, -1);
      MEMORY[0x1DA6D2650](v52, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v48);
    }

    return;
  }

  v29 = (*(v23 + 32))(v25, v21, v22);
  sub_1D4152904(v29, v30, v31);
  sub_1D41657F0();
  if (!*&v75[0])
  {
    (*(v23 + 8))(v25, v22);
    v26 = &unk_1EC7C47F0;
    v27 = &unk_1D41683D0;
    v28 = v75;
    goto LABEL_10;
  }

  v63 = v23;
  v76[0] = v75[0];
  v76[1] = v75[1];
  v76[2] = v75[2];
  sub_1D4152F84(v76, v75);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47F8, &qword_1D41683D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D414F5DC(v76, &qword_1EC7C4808, &qword_1D41683E0);
    (*(v63 + 8))(v25, v22);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, a5);
    (*(v64 + 8))(v17, v14);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v17, 0, 1, a5);
  (*(v72 + 32))(v71, v17, a5);
  if (qword_1EC7C43D8 != -1)
  {
    swift_once();
  }

  v32 = sub_1D4165D70();
  __swift_project_value_buffer(v32, qword_1EC7C5F48);
  v33 = v65;
  v34 = v73;
  (*(v9 + 16))(v65, a1, v73);
  v35 = sub_1D4165D50();
  v36 = sub_1D4166A90();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v33;
    v38 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v75[0] = v64;
    *v38 = 136446466;
    sub_1D4152F2C();
    v39 = sub_1D4166C00();
    v40 = v34;
    v42 = v41;
    (*(v9 + 8))(v37, v40);
    v43 = sub_1D41529BC(v39, v42, v75);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v74 = a5;
    swift_getMetatypeMetadata();
    v44 = sub_1D4166930();
    v46 = sub_1D41529BC(v44, v45, v75);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_1D4134000, v35, v36, "[Scene:%{public}s] calling handler for %s", v38, 0x16u);
    v47 = v64;
    swift_arrayDestroy();
    MEMORY[0x1DA6D2650](v47, -1, -1);
    MEMORY[0x1DA6D2650](v38, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v33, v34);
  }

  v58 = sub_1D4166A20();
  MEMORY[0x1EEE9AC00](v58);
  *(&v62 - 8) = v66;
  *(&v62 - 7) = a5;
  v59 = v70;
  v60 = v71;
  *(&v62 - 6) = v68;
  *(&v62 - 5) = v59;
  v61 = v69;
  *(&v62 - 4) = v67;
  *(&v62 - 3) = v61;
  *(&v62 - 2) = v60;
  sub_1D415179C(sub_1D4153054, (&v62 - 10), "_AppIntents_SwiftUI/Scene+AppIntents.swift", 42, 2u);
  sub_1D414F5DC(v76, &qword_1EC7C4808, &qword_1D41683E0);
  (*(v63 + 8))(v25, v22);
  (*(v72 + 8))(v60, a5);
}