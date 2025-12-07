uint64_t sub_1934917D0()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1 == 0x4E746E656D676573 && v0 == 0xEB00000000656D61;
  if (v2 || (sub_19393CA30() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x74657366666FLL && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_19393CA30();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_193491894(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x4E746E656D676573;
  }
}

uint64_t sub_1934918D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1934917D0();
  *a1 = result;
  return result;
}

uint64_t sub_19349190C()
{
  sub_193491AD4();
  v0 = OUTLINED_FUNCTION_31_8();

  return MEMORY[0x1EEE6BB70](v0);
}

uint64_t sub_193491944()
{
  sub_193491AD4();
  v0 = OUTLINED_FUNCTION_31_8();

  return MEMORY[0x1EEE6BB78](v0);
}

void sub_19349197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_26();
  v33[1] = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB20, &qword_193950B40);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v33 - v31;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_193491AD4();
  sub_19393CB50();
  sub_19393C9F0();
  if (!v23)
  {
    sub_19393CA00();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_27();
}

unint64_t sub_193491AD4()
{
  result = qword_1EAE46870;
  if (!qword_1EAE46870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE46870);
  }

  return result;
}

uint64_t sub_193491B28(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB28, &qword_193950B48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_193491AD4();
  sub_19393CB40();
  if (!v1)
  {
    v4 = sub_19393C9D0();
    sub_19393C9E0();
    v6 = OUTLINED_FUNCTION_18_10();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_193491CD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_193491B28(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

double static StreamResource.publisher(useCase:)@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 32))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_22_10();
  sub_1934763E8(v7, v8, v9, v10, 0, v11);
  v13 = type metadata accessor for _Publisher(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  *(a4 + 32) = OUTLINED_FUNCTION_2_19(v13);
  OUTLINED_FUNCTION_28_1();
  v14 = swift_allocObject();
  *&result = OUTLINED_FUNCTION_4_14(v14, v15, v16, v17, v18, v19, v20, v21, v22, v25, v23, v26, v27).n128_u64[0];
  return result;
}

double static StreamResource.publisher(useCase:bmOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 32))(a4, a5);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = a3;

  v12 = OUTLINED_FUNCTION_12_6();
  sub_1934763E8(v12, a1, a2, v13, a3, v14);
  v15 = OUTLINED_FUNCTION_34_1();
  v18 = type metadata accessor for _Publisher(v15, v16, AssociatedConformanceWitness, v17);
  *(a6 + 32) = OUTLINED_FUNCTION_2_19(v18);
  OUTLINED_FUNCTION_28_1();
  v19 = swift_allocObject();
  *&result = OUTLINED_FUNCTION_4_14(v19, v20, v21, v22, v23, v24, v25, v26, v27, v30, v28, v31, v32).n128_u64[0];
  return result;
}

uint64_t static StreamResource.source(user:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_19343CF40(a2, a3);
  v9 = [v8 sourceWithUser_];

  nullsub_1();
  v11 = v10;
  a4[3] = type metadata accessor for _Source(0, a2, a3, v12);
  result = swift_getWitnessTable();
  a4[4] = result;
  *a4 = v11;
  return result;
}

double static StreamResource.publisher(useCase:user:bmOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = (*(a6 + 32))(a5, a6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = a4;

  LOBYTE(v29) = 0;
  sub_1934763E8(v11, a1, a2, a3, a4, &v29);
  v16 = type metadata accessor for _Publisher(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  *(a7 + 32) = OUTLINED_FUNCTION_2_19(v16);
  OUTLINED_FUNCTION_28_1();
  v17 = swift_allocObject();
  *&result = OUTLINED_FUNCTION_4_14(v17, v18, v19, v20, v21, v22, v23, v24, v25, a1, v26, v29, v30).n128_u64[0];
  return result;
}

void static StreamResource._liveUpdates(useCase:scheduler:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v11 = sub_19393C770();
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v15 - v13;
  v15[2] = v4;
  v15[3] = v2;
  v16 = v0;
  v17 = v10;
  v18 = v8;
  v19 = v6;
  swift_checkMetadataState();
  sub_193492B3C(v14);
  sub_19393C7B0();
  OUTLINED_FUNCTION_116();
}

void sub_193492298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a1;
  v32 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v9 = sub_19393C7A0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = OUTLINED_FUNCTION_23_10();
  v16 = a7;
  v29 = a7;
  v18 = sub_19343CF40(v15, v17);
  v34 = v18;
  v35 = sub_19393C570();
  v19 = [v18 DSLPublisherWithUseCase_];
  v33 = [v19 subscribeOn_];

  v30 = *(v11 + 16);
  v30(v14, v36, v9);
  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 16) = v32;
  *(v20 + 24) = v16;
  v22 = *(v11 + 32);
  OUTLINED_FUNCTION_22_10();
  v22();
  v41 = sub_193497114;
  v42 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1934925F4;
  v40 = &block_descriptor_0;
  v31 = _Block_copy(&aBlock);

  v30(v14, v36, v9);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  OUTLINED_FUNCTION_22_10();
  v22();
  v41 = sub_1934972F4;
  v42 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_193492ADC;
  v40 = &block_descriptor_25;
  v25 = _Block_copy(&aBlock);

  v26 = v33;
  v27 = v31;
  v28 = [v33 sinkWithCompletion:v31 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v27);
}

void sub_1934925F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_19349265C()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_35_6();
  v44 = v3;
  sub_19393C760();
  OUTLINED_FUNCTION_0();
  v46 = v5;
  v47 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v38 - v7;
  OUTLINED_FUNCTION_35_6();
  v8 = sub_19393C860();
  OUTLINED_FUNCTION_0();
  v42 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  OUTLINED_FUNCTION_1_0();
  v43 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  swift_unknownObjectRetain();
  objc_opt_self();
  OUTLINED_FUNCTION_31_8();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v41 = v1;
    v23 = [v21 eventBodyData];
    if (v23)
    {
      v24 = v23;
      v39 = v20;
      v40 = v8;
      v25 = sub_19393BD40();
      v27 = v26;

      swift_getAssociatedConformanceWitness();
      v28 = OUTLINED_FUNCTION_35_6();
      type metadata accessor for EventWrapper(v28, v29, v30, v31);
      v32 = sub_193492A68(v25, v27, [v22 eventBodyDataVersion]);
      if (v32)
      {
        v33 = v32;
        (*((*MEMORY[0x1E69E7D40] & *v32) + 0xB8))(v22);
        if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
        {
          swift_unknownObjectRelease();
          sub_193446A6C(v25, v27);

          (*(v42 + 8))(v12, v40);
        }

        else
        {
          v35 = v43;
          v36 = v39;
          (*(v43 + 32))(v39, v12, AssociatedTypeWitness);
          (*(v35 + 16))(v17, v36, AssociatedTypeWitness);
          OUTLINED_FUNCTION_35_6();
          sub_19393C7A0();
          v37 = v45;
          sub_19393C780();
          swift_unknownObjectRelease();
          sub_193446A6C(v25, v27);

          (*(v46 + 8))(v37, v47);
          (*(v35 + 8))(v36, AssociatedTypeWitness);
        }

        OUTLINED_FUNCTION_116();
        return;
      }

      sub_193446A6C(v25, v27);
    }
  }

  OUTLINED_FUNCTION_116();

  swift_unknownObjectRelease();
}

uint64_t sub_193492A68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(OUTLINED_FUNCTION_21_7() + 168);
  sub_193450688(v3, a2);

  return v7(v3, a2, a3);
}

uint64_t sub_193492ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_193492B3C@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v4 = sub_19393C770();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_193492C08(int a1)
{
  v3 = qword_1EAE3AB48;
  OUTLINED_FUNCTION_20_4();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_193492CA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EAE3AB50);
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_19345012C(v6, v7);
}

id sub_193492D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = objc_allocWithZone(OUTLINED_FUNCTION_21_7());
  return sub_193492D98(v3, a2, v4);
}

id sub_193492D98(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = (v3 + qword_1EAE3AB50);
  *(v3 + qword_1EAE3AB50) = xmmword_193950B20;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  v12 = OUTLINED_FUNCTION_23_10();
  sub_193450688(v12, v13);
  sub_19345012C(v10, v11);
  *(v3 + qword_1EAE3AB48) = a3;
  v15 = type metadata accessor for EventWrapper(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v14);
  v20.receiver = v3;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  v17 = OUTLINED_FUNCTION_23_10();
  sub_193446A6C(v17, v18);
  return v16;
}

id sub_193492E9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  OUTLINED_FUNCTION_21_7();
  v7 = sub_19393BD40();
  v9 = v8;

  swift_getObjCClassMetadata();
  v10 = sub_193492A68(v7, v9, a4);
  sub_193446A6C(v7, v9);

  return v10;
}

void sub_193492F2C()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_8_12();
  v5 = v4;
  v6 = sub_19393C450();
  OUTLINED_FUNCTION_0();
  v61 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v60 = v9 - v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  (*(v5 + 136))();
  OUTLINED_FUNCTION_29_7();
  if (!v23 & v22)
  {
    sub_19393C440();
    v24 = sub_19393C430();
    v25 = sub_19393C800();
    if (OUTLINED_FUNCTION_25_10(v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_7(&dword_193432000, v26, v27, "Unable to unwrap event with nil data");
      OUTLINED_FUNCTION_6_5();
    }

    v28 = OUTLINED_FUNCTION_19_15();
    goto LABEL_11;
  }

  v58 = v20;
  v59 = v21;
  v30 = [v1 bookmark];
  if (!v30)
  {
    sub_19393C440();
    v46 = sub_19393C430();
    v47 = sub_19393C800();
    if (OUTLINED_FUNCTION_25_10(v47))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_7(&dword_193432000, v48, v49, "Unable to unwrap event with nil bookmark");
      OUTLINED_FUNCTION_6_5();
    }

    sub_19345012C(v58, v59);

    v28 = OUTLINED_FUNCTION_33_3();
LABEL_11:
    v29(v28, v6);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, *(v5 + 80));
    goto LABEL_12;
  }

  v31 = v30;
  v52 = v6;
  v57 = v3;
  v32 = *(v5 + 80);
  v33 = dynamic_cast_existential_1_unconditional(v32, v32, &protocol descriptor for StreamDataInternal);
  v54 = v34;
  v35 = v31;
  v36 = [v31 segmentName];
  v37 = sub_19393C580();
  v53 = v38;

  v56 = v35;
  v39 = [v35 offset];
  v55 = &v52;
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_12();
  v42 = (*(v41 + 112))();
  [v1 timestamp];
  sub_19393BD70();
  v62[3] = &type metadata for _StreamBookmark;
  v43 = sub_193495E3C();
  v62[0] = v37;
  v62[1] = v53;
  v62[4] = v43;
  v62[2] = v39;
  v45 = v58;
  v44 = v59;
  (*(v54 + 48))(v58, v59, v42, v19, v62, v33);
  (*(v15 + 8))(v19, v13);

  sub_19345012C(v45, v44);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v50 = v57;
  v51 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v50, v51 ^ 1u, 1, v32);
LABEL_12:
  OUTLINED_FUNCTION_116();
}

void sub_1934935E8()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_8_12();
  v1 = v0;
  v2 = sub_19393C450();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_19393C600();
  OUTLINED_FUNCTION_0();
  v49 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v48 = v16 - v15;
  v50 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  (*(v1 + 136))();
  OUTLINED_FUNCTION_29_7();
  if (!v26 & v25)
  {
    sub_19393C440();
    v27 = sub_19393C430();
    v28 = sub_19393C800();
    if (OUTLINED_FUNCTION_25_10(v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_7(&dword_193432000, v29, v30, "Failed to encode event as json with error: nil data");
      OUTLINED_FUNCTION_6_5();
    }

    (*(v4 + 8))(v11, v2);
  }

  else
  {
    v42 = v12;
    v43 = v8;
    v44 = v4;
    v45 = v2;
    v31 = v23;
    v32 = v24;
    v33 = dynamic_cast_existential_1_unconditional(*(v1 + 80), *(v1 + 80), &protocol descriptor for StreamDataInternal);
    v35 = v34;
    OUTLINED_FUNCTION_8_12();
    v37 = (*(v36 + 112))();
    sub_19393BD70();
    v51[3] = &type metadata for _StreamBookmark;
    v38 = sub_193495E3C();
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    v51[4] = v38;
    v51[2] = 0;
    v39 = *(v35 + 48);
    v52[3] = v33;
    v52[4] = v35;
    __swift_allocate_boxed_opaque_existential_1Tm(v52);
    v46 = v31;
    v47 = v32;
    v39(v31, v32, v37, v22, v51, v33, v35);
    (*(v18 + 8))(v22, v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    (*(*(v35 + 8) + 8))(v33);
    v40 = v48;
    sub_19393C5D0();
    sub_19393C590();
    OUTLINED_FUNCTION_32_3();

    sub_19345012C(v46, v47);
    (*(v49 + 8))(v40, v42);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_116();
}

id sub_193493B1C()
{
  v11[5] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_12();
  (*(v0 + 192))();
  OUTLINED_FUNCTION_29_7();
  if (!v2 & v1)
  {

    return sub_19393C510();
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
    v4 = objc_opt_self();
    OUTLINED_FUNCTION_13_0();
    v5 = sub_19393BD20();
    v11[0] = 0;
    v6 = [v4 JSONObjectWithData:v5 options:0 error:v11];

    v7 = v11[0];
    if (v6)
    {
      sub_19393C880();
      v8 = OUTLINED_FUNCTION_13_0();
      sub_19345012C(v8, v9);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB60, &qword_193950B78);
      swift_dynamicCast();
      return v11[0];
    }

    else
    {
      v10 = v7;
      sub_19393BCF0();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

id sub_193493CF4(void *a1)
{
  v1 = a1;
  sub_193493B1C();

  v2 = sub_19393C4F0();

  return v2;
}

void sub_193493DA8()
{
  OUTLINED_FUNCTION_26();
  v37[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_19393C600();
  v4 = OUTLINED_FUNCTION_47(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v5 = &v0[qword_1EAE3AB50];
  *&v0[qword_1EAE3AB50] = xmmword_193950B20;
  v6 = objc_opt_self();
  v7 = sub_19393C4F0();
  v37[0] = 0;
  v8 = [v6 dataWithJSONObject:v7 options:0 error:v37];

  v9 = v37[0];
  if (!v8)
  {
    v23 = v9;

    sub_19393BCF0();

    swift_willThrow();
    goto LABEL_7;
  }

  v35 = v0;
  v10 = sub_19393BD40();
  v12 = v11;

  sub_19393C5D0();
  v34 = v10;
  v13 = sub_19393C5A0();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    v33 = v2;
    v17 = *(v2 + 80);
    v18 = dynamic_cast_existential_1_unconditional(v17, v17, &protocol descriptor for StreamDataInternal);
    v20 = v19;
    v21 = v19[1];
    v22 = *(v21 + 16);
    v37[3] = v18;
    v37[4] = v19;
    __swift_allocate_boxed_opaque_existential_1Tm(v37);
    v22(v15, v16, v18, v21);
    if (!v1)
    {

      v25 = (v20[7])(v18, v20);
      v27 = v26;
      OUTLINED_FUNCTION_20_4();
      swift_beginAccess();
      v28 = *v5;
      v29 = *(v5 + 1);
      *v5 = v25;
      *(v5 + 1) = v27;
      sub_19345012C(v28, v29);
      v30 = (v20[4])(v18, v20);
      sub_193446A6C(v34, v12);
      *&v35[qword_1EAE3AB48] = v30;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v32 = type metadata accessor for EventWrapper(0, v17, *(v33 + 88), v31);
      v36.receiver = v35;
      v36.super_class = v32;
      objc_msgSendSuper2(&v36, sel_init);
LABEL_8:
      OUTLINED_FUNCTION_27();
      return;
    }

    sub_193446A6C(v34, v12);

    __swift_deallocate_boxed_opaque_existential_1(v37);
LABEL_7:
    sub_19345012C(*v5, *(v5 + 1));
    type metadata accessor for EventWrapper(0, *(v2 + 80), *(v2 + 88), v24);
    swift_deallocPartialClassInstance();
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1934941C4()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v39 = v5;
  v6 = *MEMORY[0x1E69E7D40] & *v0;
  sub_19393C450();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v8 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = v4 == 0x7A696C6169726573 && v2 == 0xE900000000000065;
  if (v13 || (OUTLINED_FUNCTION_24_8(0x7A696C6169726573, 0xE900000000000065) & 1) != 0 || (v4 == 1852797802 ? (v14 = v2 == 0xE400000000000000) : (v14 = 0), v14 || (OUTLINED_FUNCTION_24_8(1852797802, 0xE400000000000000) & 1) != 0 || (v4 == 0x746369446E6F736ALL ? (v15 = v2 == 0xEE007972616E6F69) : (v15 = 0), v15 || (OUTLINED_FUNCTION_24_8(0x746369446E6F736ALL, 0xEE007972616E6F69) & 1) != 0)))
  {
    v16 = sub_19393C570();
    v18 = type metadata accessor for EventWrapper(0, *(v6 + 80), *(v6 + 88), v17);
    v40.receiver = v0;
    v40.super_class = v18;
    v19 = objc_msgSendSuper2(&v40, sel_valueForKey_, v16);

    if (v19)
    {
      sub_19393C880();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v20 = v48;
    *v39 = v47;
    v39[1] = v20;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8_12();
  (*(v21 + 136))();
  OUTLINED_FUNCTION_29_7();
  if (!v13 & v24)
  {
    *v39 = 0u;
    v39[1] = 0u;
LABEL_20:
    OUTLINED_FUNCTION_116();
    return;
  }

  v38 = v22;
  v25 = *(v6 + 80);
  v26 = v23;
  v27 = dynamic_cast_existential_1_unconditional(v25, v25, &protocol descriptor for StreamDataInternal);
  v29 = v28;
  OUTLINED_FUNCTION_8_12();
  v31 = (*(v30 + 112))();
  sub_19393BD70();
  *(&v45 + 1) = &type metadata for _StreamBookmark;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  v46 = sub_193495E3C();
  *&v45 = 0;
  v37 = *(v29 + 48);
  *(&v48 + 1) = v27;
  v49 = v29;
  __swift_allocate_boxed_opaque_existential_1Tm(&v47);
  v37(v38, v26, v31, v12, &v44, v27, v29);
  v32 = OUTLINED_FUNCTION_33_3();
  v33(v32, v8);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  sub_193494798(v27, *(v29 + 16), &v42);
  if (v43)
  {
    sub_193495EE0(&v42, &v44);
    sub_19343CF00(0, &qword_1EAE3AB68, 0x1E69E58C0);
    swift_dynamicCast();
    v34 = sub_19393C570();
    v35 = [v41 valueForKey_];

    if (v35)
    {
      sub_19393C880();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_15();
    }

    else
    {
      OUTLINED_FUNCTION_5_15();
      v44 = 0u;
      v45 = 0u;
    }

    v36 = v45;
    *v39 = v44;
    v39[1] = v36;
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_20;
  }

  __break(1u);
}

id sub_193494798@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v8[3] = a1;
  v8[4] = a2;
  __swift_allocate_boxed_opaque_existential_1Tm(v8);
  OUTLINED_FUNCTION_9_10();
  (*(v4 + 16))();
  v5 = type metadata accessor for KeyValueCodingWrapper();
  v6 = objc_allocWithZone(v5);
  result = sub_193494A9C(v8);
  if (!result)
  {
    v5 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = result;
  a3[3] = v5;
  return result;
}

id sub_19349488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EventWrapper(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1934948FC()
{
  OUTLINED_FUNCTION_91_0();
  v1[3] = v0;
  __swift_allocate_boxed_opaque_existential_1Tm(v1);
  OUTLINED_FUNCTION_9_10();
  v3 = *(v2 + 16);

  return v3();
}

uint64_t sub_193494960@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB70, &qword_193950B80);
  v8 = sub_19345180C(sub_193494A10, 0, a1, v6, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB78, &qword_193950B88);
  a3[3] = result;
  *a3 = v8;
  return result;
}

id sub_193494A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1934970B0(a1, v5);
  v3 = objc_allocWithZone(type metadata accessor for KeyValueCodingWrapper());
  result = sub_193494A9C(v5);
  *a2 = result;
  return result;
}

id sub_193494A9C(uint64_t a1)
{
  sub_193496100();
  if (v7)
  {
    sub_193495F74(&v6, v8);
    sub_193495F74(v8, v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object);
    v5.receiver = v1;
    v5.super_class = type metadata accessor for KeyValueCodingWrapper();
    v3 = objc_msgSendSuper2(&v5, sel_init);
    sub_19344E680(a1, &qword_1EAE3AB80, &qword_193950B90);
  }

  else
  {
    sub_19344E680(a1, &qword_1EAE3AB80, &qword_193950B90);
    sub_19344E680(&v6, &qword_1EAE3AB80, &qword_193950B90);
    type metadata accessor for KeyValueCodingWrapper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

void sub_193494B94()
{
  OUTLINED_FUNCTION_117();
  v14 = sub_19393CB30();
  OUTLINED_FUNCTION_0();
  v13 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = (v0 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object);
  v7 = *(v0 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object + 24);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *(&v21 + 1) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(&v20);
  OUTLINED_FUNCTION_9_10();
  (*(v8 + 16))();
  sub_19393CB10();
  sub_19393CB20();
  sub_19393C970();

  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_19393C9C0();
    if (!v22)
    {
      break;
    }

    v18 = v20;
    sub_193495EE0(&v21, &v19);
    sub_193496100();
    if (v16)
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_193484F78(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_193484F78((v10 > 1), v11 + 1, 1, v9);
      }

      sub_19344E680(&v18, &qword_1EAE3AB90, &qword_193950B98);
      *(v9 + 2) = v11 + 1;
      v12 = &v9[16 * v11];
      *(v12 + 4) = v15;
      *(v12 + 5) = v16;
    }

    else
    {
      sub_19344E680(&v18, &qword_1EAE3AB90, &qword_193950B98);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  *&v20 = v9;

  sub_193496094(&v20);

  (*(v13 + 8))(v5, v14);
  OUTLINED_FUNCTION_116();
}

void sub_193494E34()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object + 24);
  v7 = *(v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object), v6);
  (*(v7 + 8))(v5, v3, v6, v7);
  OUTLINED_FUNCTION_116();
}

id sub_193495234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t, uint64_t))
{
  v6 = sub_19393C580();
  v8 = v7;
  v9 = a1;
  a4(v19, v6, v8);

  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_1_0();
    v11 = v10;
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_5_1();
    (*(v11 + 16))(v14 - v13);
    OUTLINED_FUNCTION_23_10();
    v15 = sub_19393CA20();
    v16 = OUTLINED_FUNCTION_23_10();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1934953C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KeyValueCodingWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_19349541C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v29 = v6;
  v7 = sub_19393C860();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  OUTLINED_FUNCTION_1_0();
  v28 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v32[0] = v5;
  v32[1] = v3;

  sub_19393C530();

  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    (*(v9 + 8))(v12, v7);
    v21 = v29;
    *v29 = 0u;
    *(v21 + 1) = 0u;
  }

  else
  {
    v23 = v28;
    v22 = v29;
    v24 = *(v28 + 32);
    v24(v20, v12, v1);
    (*(v23 + 16))(v17, v20, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB8, &qword_193950BC0);
    if (swift_dynamicCast())
    {
      sub_193495F74(v30, v32);
      v25 = v33;
      v26 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      sub_193494798(v25, v26, v22);
      (*(v23 + 8))(v20, v1);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v31 = 0;
      memset(v30, 0, sizeof(v30));
      sub_19344E680(v30, &qword_1EAE3AB80, &qword_193950B90);
      v22[3] = v1;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v22);
      v24(boxed_opaque_existential_1Tm, v20, v1);
    }
  }

  OUTLINED_FUNCTION_27();
}

id sub_1934956F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_19393C570();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_19393C4F0();

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8];

  return v9;
}

char *sub_1934957BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AC20, &qword_193950F68);
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
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1934958BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_193495980(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_19349618C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_193495980(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_193495A80(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_19393C920();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_193495A80(uint64_t a1, unint64_t a2)
{
  v3 = sub_193495ACC(a1, a2);
  sub_193495BE4(&unk_1F07BD2A8);
  return v3;
}

uint64_t sub_193495ACC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_19393C650())
  {
    result = sub_193495CC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_19393C8E0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_19393C920();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_193495BE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_193495D38(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_193495CC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE3AC28, &qword_193950F70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_193495D38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE3AC28, &qword_193950F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_193495E3C()
{
  result = qword_1EAE3A9B0;
  if (!qword_1EAE3A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9B0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193B18A90);
  }

  return result;
}

_OWORD *sub_193495EE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_193495F74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_193495F8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
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
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_193496094(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19349709C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1934966D4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_193496100()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9_10();
  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  return v0;
}

uint64_t sub_19349618C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1934961E8(uint64_t a1)
{
  *(a1 + 8) = sub_193496218();
  result = sub_19349626C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_193496218()
{
  result = qword_1ED502890;
  if (!qword_1ED502890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502890);
  }

  return result;
}

unint64_t sub_19349626C()
{
  result = qword_1EAE3A9B8;
  if (!qword_1EAE3A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9B8);
  }

  return result;
}

uint64_t sub_1934962C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_193496300(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1934963F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19349642C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_19349647C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for _StreamBookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1934965D0()
{
  result = qword_1EAE46A00[0];
  if (!qword_1EAE46A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAE46A00);
  }

  return result;
}

unint64_t sub_193496628()
{
  result = qword_1EAE46B10;
  if (!qword_1EAE46B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE46B10);
  }

  return result;
}

unint64_t sub_193496680()
{
  result = qword_1EAE46B18[0];
  if (!qword_1EAE46B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAE46B18);
  }

  return result;
}

uint64_t sub_1934966D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19393CA10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_19393C700();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_193496890(v7, v8, a1, v4);
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
    return sub_1934967C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1934967C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_19393CA30();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_193496890(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_19393CA30();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_19393CA30();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_19393CA30();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1934957BC(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1934957BC((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_193496EC4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_193496D98(&v89, *v83, a3);
}

uint64_t sub_193496D98(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_193497088(v5);
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
    sub_193496EC4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_193496EC4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_19393CA30() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_1934970B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_193497114(void *a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_34_1();
  v2 = sub_19393C7A0();
  OUTLINED_FUNCTION_47(v2);
  [a1 error];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_34_1();
  sub_19393C7A0();
  return sub_19393C790();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_18Tm()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_34_1();
  sub_19393C7A0();
  OUTLINED_FUNCTION_9_10();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1934972F4()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v0 = sub_19393C7A0();
  OUTLINED_FUNCTION_47(v0);

  sub_19349265C();
}

uint64_t OUTLINED_FUNCTION_39_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(v5 - 72) + 88);

  return type metadata accessor for EventWrapper(0, v4, v7, a4);
}

void sub_1934973F8()
{
  OUTLINED_FUNCTION_117();
  v36 = v2;
  v37 = v3;
  v35 = v4;
  OUTLINED_FUNCTION_91_0();
  v38 = v5;
  v39 = v6;
  v40 = v7;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v31 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v30 = v29 - v13;
  v33 = v1;
  v14 = sub_19393C730();
  v34 = v0;
  v32 = TupleTypeMetadata3;
  v15 = sub_19393C730();
  v42 = v14;
  if (v14 != v15)
  {
    v41 = 0;
LABEL_9:
    OUTLINED_FUNCTION_116();
    return;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v39;
    v29[1] = v39 - 8;
    v29[2] = v40 - 8;
    v29[0] = v38 - 8;
    v18 = v30;
    while (1)
    {
      v41 = v42 == v16;
      if (v42 == v16)
      {
        goto LABEL_9;
      }

      if (__OFADD__(v16, 1))
      {
        __break(1u);
        break;
      }

      v19 = v32;
      sub_19393C750();
      v20 = *(v19 + 48);
      v45 = *(v19 + 64);
      v46 = v20;
      v21 = v31;
      sub_19393C750();
      v22 = *(v19 + 48);
      v23 = *(v19 + 64);
      v24 = v40;
      v25 = v38;
      v47 = sub_19393CA40();
      v26 = *(v24 - 8);
      v43 = *(v26 + 8);
      v44 = v26 + 8;
      v43(v21 + v23, v24);
      v27 = *(*(v17 - 8) + 8);
      v27(v21 + v22, v17);
      v28 = *(*(v25 - 8) + 8);
      v28(v21, v25);
      v43(&v18[v45], v24);
      v27(&v18[v46], v17);
      v28(v18, v25);
      ++v16;
      if (v47)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

BOOL sub_1934977B8(uint64_t a1, unint64_t a2)
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

uint64_t sub_19349780C(uint64_t a1)
{
  sub_19393C210();
  if (!v1)
  {
    sub_19344E6DC(a1, &qword_1EAE3ACA0, &qword_193972420);
    sub_19393BD00();
  }
}

uint64_t sub_193497890(uint64_t a1)
{
  sub_19393C150();
  if (!v1 && !sub_1934977B8(0, 0xC000000000000000))
  {
    sub_193497A04(0, 0xC000000000000000, a1);
  }

  return sub_193446A6C(0, 0xC000000000000000);
}

uint64_t sub_193497918()
{
  OUTLINED_FUNCTION_91_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v7 = [v6 UUIDString];

  sub_19393C580();
  sub_19393BE10();

  return sub_19345461C(v5, v0);
}

uint64_t sub_193497A04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  switch(a2 >> 62)
  {
    case 1uLL:
      v13 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      v12 = a1;
      goto LABEL_7;
    case 2uLL:
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
LABEL_7:
      result = sub_193499330(v12, v13);
      break;
    case 3uLL:
      result = sub_193499174(0, 0, a3);
      break;
    default:
      v15 = a1;
      v16 = a2;
      v17 = BYTE2(a2);
      v18 = BYTE3(a2);
      v19 = BYTE4(a2);
      v20 = BYTE5(a2);
      v9 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
      v10 = [v9 UUIDString];

      sub_19393C580();
      sub_19393BE10();

      result = sub_19345461C(v8, a3);
      break;
  }

  return result;
}

uint64_t sub_193497C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v6;
      goto LABEL_7;
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
LABEL_7:
      result = sub_1934993B0(a1, v5);
      break;
    case 3uLL:
      result = sub_1934992B8(0, 0);
      break;
    default:
      v7 = a1;
      v8 = a2;
      v9 = BYTE2(a2);
      v10 = BYTE3(a2);
      v11 = BYTE4(a2);
      v12 = BYTE5(a2);
      result = sub_193497DF4(&v7);
      break;
  }

  return result;
}

uint64_t sub_193497D68(uint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_19393C110();
  if (!v1 && *(v10 + 16))
  {
    v3 = OUTLINED_FUNCTION_32_4();
    sub_193450688(v3, v4);
    v5 = OUTLINED_FUNCTION_32_4();
    sub_193497C1C(v5, v6, a1);
    v7 = OUTLINED_FUNCTION_32_4();
    sub_193446A6C(v7, v8);
  }
}

uint64_t sub_193497DF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v14 = [v13 UUIDString];

  sub_19393C580();
  sub_19393BE10();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_19344E6DC(v5, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v8 + 32))(v12, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAE0, &qword_19394FAE0);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19394FAC0;
  (*(v8 + 16))(v17 + v16, v12, v6);
  sub_193498C60(v17);
  return (*(v8 + 8))(v12, v6);
}

void sub_193498018()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v26 = v4;
  v8 = OUTLINED_FUNCTION_28_2(v5, v6, v7);
  OUTLINED_FUNCTION_0();
  v25 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  type metadata accessor for ProtobufMessageSerializer(255, v1, v3, v13);
  OUTLINED_FUNCTION_22_11();
  v14 = sub_19393C860();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v3);
  OUTLINED_FUNCTION_8_13();
  swift_getWitnessTable();
  sub_19393C240();
  if (!v0)
  {
    (*(v25 + 8))(v24[1], v8);
    v20 = 1;
    if (!__swift_getEnumTagSinglePayload(v19, 1, v3))
    {
      OUTLINED_FUNCTION_9_10();
      (*(v21 + 16))(v12, v19, v1);
      v20 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v20, 1, v1);
    v22 = OUTLINED_FUNCTION_32_4();
    v23(v22);
  }

  (*(v16 + 8))(v19, v14);
  OUTLINED_FUNCTION_27();
}

void sub_1934982A8()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v8 = OUTLINED_FUNCTION_28_2(v5, v6, v7);
  OUTLINED_FUNCTION_0();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v25 = 0;
  v26 = 1;
  type metadata accessor for ProtobufEnumSerializer(0, v1, v4, v14);
  OUTLINED_FUNCTION_7_7();
  swift_getWitnessTable();
  sub_19393C100();
  if (!v0)
  {
    v15 = v4;
    v17 = v23;
    v16 = v24;
    v27 = *(v23 + 8);
    v27(v24, v8);
    if (v26)
    {
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v1);
    }

    else
    {
      (*(v15 + 24))(v25, v1, v15);
      OUTLINED_FUNCTION_5_3(v2);
      if (v18)
      {
        (*(v15 + 16))(v1, v15);
        OUTLINED_FUNCTION_5_3(v2);
        if (!v18)
        {
          v27(v2, v8);
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_10();
        (*(v19 + 32))(v13, v2, v1);
      }

      OUTLINED_FUNCTION_29_8();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v1);
      (*(v17 + 32))(v24, v13, v8);
    }
  }

  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_27();
}

void sub_193498544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, char *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(char *, char *))
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v43[2] = v34;
  v36 = v35(0, v30, v26);
  a10 = sub_19393C6F0();
  WitnessTable = swift_getWitnessTable();
  v38 = v25(&a10, v36, WitnessTable, v33, v29);
  if (!v21)
  {
    v43[1] = v43;
    v43[0] = a21;
    v43[3] = a10;
    MEMORY[0x1EEE9AC00](v38);
    v42[2] = v33;
    v42[3] = v31;
    v42[4] = v29;
    v42[5] = v27;
    v39 = sub_19393C740();
    OUTLINED_FUNCTION_9_21();
    v40 = swift_getWitnessTable();
    sub_19345180C(v43[0], v42, v39, v31, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);

    OUTLINED_FUNCTION_25_11();
    sub_19393C710();
  }

  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934986B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19393C860();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  (*(a3 + 24))(*a1, a2, a3);
  if (__swift_getEnumTagSinglePayload(v13, 1, a2) == 1)
  {
    (*(a3 + 16))(a2, a3);
    result = __swift_getEnumTagSinglePayload(v13, 1, a2);
    if (result != 1)
    {
      return (*(v10 + 8))(v13, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return (*(v15 + 32))(a4, v13, a2);
  }

  return result;
}

void sub_193498848()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v43 = *MEMORY[0x1E69E9840];
  v10 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v41 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v40 = v36 - v17;
  v37 = v9;
  v18 = *(v9 + 16);
  if (v18)
  {
    v36[0] = v7;
    v36[1] = v0;
    v36[2] = v5;
    v36[3] = v1;
    v36[4] = v3;
    v42 = MEMORY[0x1E69E7CC0];
    v19 = OUTLINED_FUNCTION_19_16();
    sub_193499430(v19, v20, v21);
    v22 = v42;
    v23 = v12 + 16;
    OUTLINED_FUNCTION_34_2();
    v25 = (v37 + v24);
    v37 = *(v23 + 56);
    v38 = v26;
    v27 = (v23 - 8);
    v39 = v23;
    do
    {
      v28 = v40;
      v29 = v38;
      v38(v40, v25, v10);
      v30 = v41;
      v29(v41, v28, v10);
      sub_19393BCD0();
      swift_allocObject();
      v31 = sub_19393BC90();
      v32 = *v27;
      (*v27)(v30, v10);
      v32(v28, v10);
      v42 = v22;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_193499430((v33 > 1), v34 + 1, 1);
        v22 = v42;
      }

      *(v22 + 16) = v34 + 1;
      v35 = v22 + 16 * v34;
      *(v35 + 32) = 0x1000000000;
      *(v35 + 40) = v31 | 0x4000000000000000;
      v25 += v37;
      --v18;
    }

    while (v18);
  }

  sub_19393C300();

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193498AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5();
  sub_19393C3C0();
}

uint64_t sub_193498BB4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v4 = OUTLINED_FUNCTION_23_14(v3);
  v5(v4);
  OUTLINED_FUNCTION_25_11();
  result = sub_19344CC50(v6, v7, v8);
  *a1 = result;
  return result;
}

uint64_t sub_193498C60(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_193498E14(result, 1, &qword_1EAE3AAE0, &qword_19394FAE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_19393BE60();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_193498E14(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(uint64_t))
{
  v13 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!result || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    result = sub_193498EAC(result, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = result;
  }

  return result;
}

uint64_t sub_193498EAC(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  sub_193498FB4(v15, v14, a5, a6, a7);
  v16 = OUTLINED_FUNCTION_22_11();
  a8(v16);
  OUTLINED_FUNCTION_34_2();
  if (v12)
  {
    sub_1934990A8(a4 + v17, v15, v8 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v8;
}

void *sub_193498FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_30(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1934990A8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_91_0();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_4_1(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_25_11();

    MEMORY[0x1EEE6BD00](v15, v16, v17, v18);
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_25_11();

    MEMORY[0x1EEE6BCF8](v11, v12, v13, v14);
  }
}

uint64_t sub_193499174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v13 = a1;
  v15 = WORD2(a2);
  v14 = a2;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v10 = [v9 UUIDString];

  sub_19393C580();
  sub_19393BE10();

  return sub_19345461C(v8, a3);
}

uint64_t sub_1934992B8(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  return sub_193497DF4(&v3);
}

uint64_t sub_193499330(uint64_t a1, uint64_t a2)
{
  result = sub_19393BCA0();
  if (!result || (result = sub_19393BCC0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_19393BCB0();
      return sub_193497918();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1934993B0(uint64_t a1, uint64_t a2)
{
  result = sub_19393BCA0();
  v5 = result;
  if (result)
  {
    result = sub_19393BCC0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v5 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_19393BCB0();
    return sub_193497DF4(v5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_193499430(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_193499478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_193499478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA8, &qword_193950F90);
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
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19349958C(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_19393C580();

  return v2;
}

void sub_1934995E0(double a1, uint64_t a2, void *a3)
{
  sub_19393C450();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_11_11(v6, v7, v8, v9, &associated type descriptor for StreamResource.EventType);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_14(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_6_10();
  v16(v15);
  sub_1934468E4();
  v18 = v17;
  [a3 sendEvent:v17 timestamp:a1];
}

void sub_19349985C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_19393C450();
  OUTLINED_FUNCTION_0();
  v22 = v8;
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_8_14(AssociatedConformanceWitness, v16, v17, v18);
  (*(v11 + 16))(v14, a1, AssociatedTypeWitness);
  sub_1934468E4();
  v20 = v19;
  v21 = sub_19393BDB0();
  [a3 sendEvent:v20 date:{v21, v22, v23}];
}

uint64_t sub_193499B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E0, &qword_193950B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193499BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *_s6DeviceOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193499D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED50FF98);
  v4 = __swift_project_value_buffer(v3, qword_1ED50FF98);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_193499F50(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_19349A010@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

id static Library.Streams.Device.Metadata.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x20000 maxStreamSize:10000 maxEventCount:*MEMORY[0x1E698F100]];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_1 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED50FF98);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB0, &qword_1939510E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
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

unint64_t static Library.Streams.Device.Metadata.attribute(_:)(void (*a1)(void))
{
  result = sub_19349A2D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19349A31C(void (*a1)(void))
{
  result = sub_19349A2D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19349A34C(uint64_t a1)
{
  result = sub_19349A374();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19349A374()
{
  result = qword_1ED506E40;
  if (!qword_1ED506E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E40);
  }

  return result;
}

_BYTE *_s8MetadataOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceMetadata.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for DeviceMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19349A660(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3ACB8, &qword_193951160, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3ACB8, &qword_193951160);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19349A660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceMetadata.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3ACB8, &qword_193951160, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19349A804(v8, a3);
  }

  return result;
}

uint64_t sub_19349A804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceMetadata.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
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
  if (*sub_19349C790() == a3)
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
      sub_19349A804(v11, v36);
      v29 = type metadata accessor for DeviceMetadata(0);
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

unint64_t sub_19349AB64()
{
  result = qword_1EAE3ACC8;
  if (!qword_1EAE3ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACC8);
  }

  return result;
}

uint64_t DeviceMetadata.serialize()()
{
  v1 = type metadata accessor for DeviceMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19349A660(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3ACB8, &qword_193951160, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3ACB8, &qword_193951160);
  return v11;
}

id static DeviceMetadata.columns.getter()
{
  v104 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(1701667182, 0xE400000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v22[2].n128_u64[0] = sub_19393C850();
  v32 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0x646C697562, 0xE500000000000000);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v43[2].n128_u64[0] = sub_19393C850();
  v53 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v54, v55, v56, v57, v43, 4, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v58 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v68[2].n128_u64[0] = sub_19393C850();
  v78 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A14140);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v79 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v89[2].n128_u64[0] = sub_19393C850();
  v99 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v100, v101, v102, v103, v89, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v104;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *sub_19349AFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_59_0(1701667182, 0xE400000000000000) & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata(0);
    v9 = result[7];
    goto LABEL_7;
  }

  v10 = a1 == 0x646C697562 && a2 == 0xE500000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0(0x646C697562, 0xE500000000000000) & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata(0);
    v9 = result[8];
    goto LABEL_7;
  }

  v11 = OUTLINED_FUNCTION_9_23();
  v12 = a1 == v11 && a2 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0(v11, 0xE800000000000000) & 1) != 0)
  {
    type metadata accessor for DeviceMetadata(0);
    return sub_1934948FC();
  }

  v13 = a1 == 0xD000000000000011 && 0x8000000193A14140 == a2;
  if (v13 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A14140) & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata(0);
    v9 = result[10];
LABEL_7:
    if (*(v3 + v9 + 8))
    {
      return sub_1934948FC();
    }

    goto LABEL_33;
  }

  v14 = a1 == 0xD00000000000001ELL && 0x8000000193A14160 == a2;
  if (v14 || (OUTLINED_FUNCTION_59_0(0xD00000000000001ELL, 0x8000000193A14160) & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata(0);
    if (*(v3 + result[11]) != 2)
    {
      return sub_1934948FC();
    }

LABEL_33:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = type metadata accessor for DeviceMetadata(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16 + 2);
  sub_19349A660(v3, boxed_opaque_existential_1Tm);
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t DeviceMetadata.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for DeviceMetadata(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = v2[11];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19349C790();
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
  v10 = a1 + v2[9];
  *v10 = 0;
  v10[8] = 0;
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v11) = 2;
  return result;
}

BOOL static DeviceMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceMetadata(0);
  OUTLINED_FUNCTION_3();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v13)
  {
    if (!v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v12);
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_24();
  sub_19349B4D4();
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v19)
  {
    if (!v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v18);
    v22 = v10 && v20 == v21;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v23 = *(v4 + 44);
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 != 2)
  {
    return v25 != 2 && ((v24 ^ v25) & 1) == 0;
  }

  return v25 == 2;
}

unint64_t sub_19349B4D4()
{
  result = qword_1EAE3ACD0;
  if (!qword_1EAE3ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACD0);
  }

  return result;
}

uint64_t DeviceMetadata.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for DeviceMetadata(0);
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

  OUTLINED_FUNCTION_9_24();
  sub_19349B640();
  sub_19393C540();
  if (*(v1 + v2[10] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v1 + v2[11]) != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

unint64_t sub_19349B640()
{
  result = qword_1EAE3ACD8;
  if (!qword_1EAE3ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACD8);
  }

  return result;
}

uint64_t DeviceMetadata.DevicePlatform.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    case 7:
      result = 7;
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

uint64_t DeviceMetadata.DevicePlatform.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193951218[result];
  }

  return result;
}

char *static DeviceMetadata.DevicePlatform.allCases.getter()
{
  v0 = sub_19349BCD4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_2_21(v1, v0);
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
    v0 = OUTLINED_FUNCTION_1_18(v1, v0);
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
    v0 = sub_19349BCD4((v1 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_2_21(v10, v0);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_1_18(v13, v0);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(&v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v15 = OUTLINED_FUNCTION_2_21(v16, v15);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(&v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v18 = OUTLINED_FUNCTION_1_18(v19, v18);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(&v18[16 * v17]);
  v23 = v2 + 8;
  if ((v2 + 8) > (v22 >> 1))
  {
    v21 = OUTLINED_FUNCTION_2_21(v22, v21);
  }

  *(v21 + 2) = v23;
  OUTLINED_FUNCTION_4(&v21[16 * v20]);
  if ((v2 + 9) > (v25 >> 1))
  {
    v24 = OUTLINED_FUNCTION_1_18(v25, v24);
  }

  *(v24 + 2) = v2 + 9;
  v26 = &v24[16 * v23];
  *(v26 + 4) = 7;
  v26[40] = 1;
  return v24;
}

uint64_t DeviceMetadata.DevicePlatform.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 1684099177;
  switch(*v0)
  {
    case 1:
    case 9:
      result = 0x656E6F685069;
      break;
    case 2:
      result = 0x746B73654463614DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_8_15();
      break;
    case 4:
      result = 22100;
      break;
    case 5:
      result = 0x6863746157;
      break;
    case 6:
      result = 0x646F50656D6F48;
      break;
    case 7:
      result = 0x6E6F69736956;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DeviceMetadata.DevicePlatform.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (!v6 && (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) == 0)
  {
    v10 = a1 == 1684099177 && a2 == 0xE400000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_9(1684099177, 0xE400000000000000) & 1) != 0)
    {
LABEL_12:

      v8 = 0;
LABEL_13:
      v9 = 1;
      goto LABEL_14;
    }

    v11 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
    if (!v11 && (OUTLINED_FUNCTION_0_9(0x656E6F685069, 0xE600000000000000) & 1) == 0)
    {
      v12 = a1 == 0x746B73654463614DLL && a2 == 0xEA0000000000706FLL;
      if (v12 || (OUTLINED_FUNCTION_0_9(0x746B73654463614DLL, 0xEA0000000000706FLL) & 1) != 0)
      {

        v9 = 1;
        v8 = 2;
        goto LABEL_14;
      }

      v13 = OUTLINED_FUNCTION_8_15();
      v15 = a1 == v13 && a2 == v14;
      if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
      {

        v9 = 1;
        v8 = 3;
        goto LABEL_14;
      }

      v16 = a1 == 22100 && a2 == 0xE200000000000000;
      if (v16 || (OUTLINED_FUNCTION_0_9(22100, 0xE200000000000000) & 1) != 0)
      {

        v9 = 1;
        v8 = 4;
        goto LABEL_14;
      }

      v17 = a1 == 0x6863746157 && a2 == 0xE500000000000000;
      if (v17 || (OUTLINED_FUNCTION_0_9(0x6863746157, 0xE500000000000000) & 1) != 0)
      {

        v9 = 1;
        v8 = 5;
        goto LABEL_14;
      }

      v18 = a1 == 0x646F50656D6F48 && a2 == 0xE700000000000000;
      if (v18 || (OUTLINED_FUNCTION_0_9(0x646F50656D6F48, 0xE700000000000000) & 1) != 0)
      {

        v9 = 1;
        v8 = 6;
        goto LABEL_14;
      }

      v19 = a1 == 0x6E6F69736956 && a2 == 0xE600000000000000;
      if (v19 || (OUTLINED_FUNCTION_0_9(0x6E6F69736956, 0xE600000000000000) & 1) != 0)
      {

        v9 = 1;
        v8 = 7;
        goto LABEL_14;
      }

      v20 = a1 == 0xD000000000000012 && 0x8000000193A14180 == a2;
      if (v20 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A14180) & 1) != 0)
      {
        goto LABEL_12;
      }

      if (a1 != 0xD000000000000014 || 0x8000000193A141A0 != a2)
      {
        v9 = OUTLINED_FUNCTION_0_9(0xD000000000000014, 0x8000000193A141A0);

        v8 = v9 & 1;
        goto LABEL_14;
      }
    }

    v8 = 1;
    goto LABEL_13;
  }

  v8 = 0;
  v9 = 0;
LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_19349BCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACE8, &qword_193951210);
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

unint64_t sub_19349BDD4()
{
  result = qword_1EAE3ACE0;
  if (!qword_1EAE3ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACE0);
  }

  return result;
}

uint64_t sub_19349BE28()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8720);
  __swift_project_value_buffer(v2, qword_1EAEA8720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 1;
  *v0 = "name";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "build";
  v8[1] = 5;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 3;
  v13 = OUTLINED_FUNCTION_0_0(v11, "platform");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 4;
  v16 = OUTLINED_FUNCTION_0_0(v14, "supplementalBuild");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 5;
  *v17 = "rapidSecurityResponsePreReboot";
  *(v17 + 8) = 30;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

void sub_19349C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v6 = sub_19393C0E0();
    if (v5 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        v8 = *(type metadata accessor for DeviceMetadata(0) + 28);
        goto LABEL_10;
      case 2:
        v8 = *(type metadata accessor for DeviceMetadata(0) + 32);
        goto LABEL_10;
      case 3:
        sub_1934982A8();
        v10 = v3 + *(type metadata accessor for DeviceMetadata(0) + 36);
        *v10 = 0;
        *(v10 + 8) = 0;
        continue;
      case 4:
        v8 = *(type metadata accessor for DeviceMetadata(0) + 40);
LABEL_10:
        OUTLINED_FUNCTION_8_2(v8);
        sub_19393C200();
        goto LABEL_11;
      case 5:
        v9 = type metadata accessor for DeviceMetadata(0);
        OUTLINED_FUNCTION_8_2(*(v9 + 44));
        sub_19393C0F0();
LABEL_11:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_19349C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for DeviceMetadata(0);
  v9 = result;
  v10 = (v3 + *(result + 28));
  v11 = v10[1];
  if (v11)
  {
    result = OUTLINED_FUNCTION_4_7(*v10, v11, 1);
    v5 = v4;
  }

  if (!v5)
  {
    v12 = (v3 + v9[8]);
    v13 = v12[1];
    if (!v13 || (result = OUTLINED_FUNCTION_4_7(*v12, v13, 2), (v5 = v4) == 0))
    {
      v14 = (v3 + v9[9]);
      v15 = *v14;
      v16 = *(v14 + 8);
      v19 = *v14;
      v20 = v16;
      sub_19349B4D4();
      result = sub_19393C550();
      if ((result & 1) != 0 || (v19 = v15, v20 = v16, v4 = v5, result = sub_193447324(&v19, 3, a2, &type metadata for DeviceMetadata.DevicePlatform, a3, &off_1F07BD820), !v5))
      {
        v17 = (v3 + v9[10]);
        v18 = v17[1];
        if (!v18 || (result = OUTLINED_FUNCTION_4_7(*v17, v18, 4), !v4))
        {
          if (*(v3 + v9[11]) != 2)
          {
            return sub_19393C2E0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_19349C344(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = aDevicemetadata_0[0];

  return v1;
}

uint64_t sub_19349C3EC()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8738);
  __swift_project_value_buffer(v2, qword_1EAEA8738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193951270);
  *v1 = 0;
  *v0 = "DevicePlatformUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  v10 = OUTLINED_FUNCTION_0_0(v8, "DevicePlatformiPad");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "DevicePlatformiPhone";
  v11[1] = 20;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_0_0(v14, "DevicePlatformMacDesktop");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_0_0(v17, "DevicePlatformMacPortable");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v21 = 5;
  v22 = OUTLINED_FUNCTION_0_0(v20, "DevicePlatformTV");
  (v7)(v22);
  v23 = (v1 + 6 * v4);
  v24 = v23 + dword_1EAEA8770;
  *v23 = 6;
  v25 = OUTLINED_FUNCTION_0_0(v24, "DevicePlatformWatch");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  *v27 = 7;
  *v26 = "DevicePlatformHomePod";
  v26[1] = 21;
  v28 = OUTLINED_FUNCTION_1_3(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v30 = 8;
  *v29 = "DevicePlatformVision";
  *(v29 + 8) = 20;
  *(v29 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_19349C6F4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_19393C420();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_10();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t sub_19349C79C()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE00();

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t DeviceMetadata.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for DeviceMetadata(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for DeviceMetadata(uint64_t a1)
{
  result = qword_1ED50E4B0;
  if (!qword_1ED50E4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceMetadata.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for DeviceMetadata(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t DeviceMetadata.name.getter()
{
  type metadata accessor for DeviceMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceMetadata.name.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_5_16() + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DeviceMetadata.build.getter()
{
  type metadata accessor for DeviceMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceMetadata.build.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_5_16() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DeviceMetadata.platform.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for DeviceMetadata(v2);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t DeviceMetadata.platform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DeviceMetadata(0);
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DeviceMetadata.supplementalBuild.getter()
{
  type metadata accessor for DeviceMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceMetadata.supplementalBuild.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_5_16() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DeviceMetadata.rapidSecurityResponsePreReboot.setter(char a1)
{
  result = type metadata accessor for DeviceMetadata(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_19349CCF8@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceMetadata.DevicePlatform.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19349CD20@<X0>(char **a1@<X8>)
{
  result = static DeviceMetadata.DevicePlatform.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19349CD54()
{
  sub_19393CAB0();
  v0 = DeviceMetadata.DevicePlatform.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19349CE0C(uint64_t a1)
{
  sub_19393CAB0();
  v1 = DeviceMetadata.DevicePlatform.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t DeviceMetadata.hashValue.getter()
{
  sub_19393CAB0();
  DeviceMetadata.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19349CF20(uint64_t a1)
{
  sub_19393CAB0();
  DeviceMetadata.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19349CF60()
{
  result = qword_1EAE3AD10;
  if (!qword_1EAE3AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AD18, &qword_1939512F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AD10);
  }

  return result;
}

unint64_t sub_19349CFCC()
{
  result = qword_1EAE3AD20;
  if (!qword_1EAE3AD20)
  {
    type metadata accessor for DeviceMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AD20);
  }

  return result;
}

void sub_19349D050(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19349D140(uint64_t a1)
{
  if (!qword_1ED5082C0)
  {
    sub_19393BE00();
    v1 = sub_19393C860();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED5082C0);
    }
  }
}

void sub_19349D198(uint64_t a1)
{
  if (!qword_1ED5082B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AA08, &qword_193951470);
    v1 = sub_19393C860();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED5082B8);
    }
  }
}

void sub_19349D1FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *static ToolKitToolToolDefinition.Version1.fromSerializedBytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a3;
  v5 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_19393C0B0();
  sub_19393C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD28, &qword_1939514B8);
  v23 = a1;
  v24 = a2;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  (*(v7 + 16))(v11, v14, v5);
  sub_193450688(a1, a2);
  sub_19349DAF4(&qword_1EAE3A798, &qword_1EAE3AD28, &qword_1939514B8);
  v15 = v26;
  sub_19393C2A0();
  v16 = (v7 + 8);
  if (v15)
  {
    return (*v16)(v14, v5);
  }

  (*v16)(v14, v5);
  return memcpy(v19, v25, 0x278uLL);
}

uint64_t ToolKitToolToolDefinition.Version1.toSerializedBytes()()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v3, v0, sizeof(v3));
  sub_19349D51C(__dst, v2);
  sub_1934470C8(v3, &type metadata for ToolKitToolToolDefinition.Version1, __src);
  memcpy(v3, __src, sizeof(v3));
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3A798);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();
  memcpy(v2, v3, sizeof(v2));
  sub_19349D578(v2);
  return OUTLINED_FUNCTION_2_23();
}

uint64_t sub_19349D578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD28, &qword_1939514B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ToolKitToolTypeDefinition.Version1.toSerializedBytes()()
{
  OUTLINED_FUNCTION_7_10();
  sub_1934470C8(&v1, &type metadata for ToolKitToolTypeDefinition.Version1, &v2);
  v1 = v2;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3AD38);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();

  return OUTLINED_FUNCTION_2_23();
}

uint64_t sub_19349D6D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, void *a6@<X8>)
{
  v11 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_11();
  sub_19393C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(v13 + 16))(v17, v6, v11);
  sub_193450688(a1, a2);
  sub_19349DAF4(a5, a3, a4);
  sub_19393C2A0();
  v19 = OUTLINED_FUNCTION_5_7();
  result = v20(v19);
  if (!v24)
  {
    *a6 = v25;
  }

  return result;
}

uint64_t ToolKitToolTypedValue.toSerializedBytes()()
{
  OUTLINED_FUNCTION_7_10();
  sub_1934470C8(&v1, &type metadata for ToolKitToolTypedValue, &v2);
  v1 = v2;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3A7A0);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();

  return OUTLINED_FUNCTION_2_23();
}

double static ToolKitToolTypedValue.ID.fromSerializedBytes(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_11();
  sub_19393C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD48, &qword_1939514D0);
  (*(v8 + 16))(v12, v3, v6);
  sub_193450688(a1, a2);
  sub_19349DAF4(&qword_1EAE3AD50, &qword_1EAE3AD48, &qword_1939514D0);
  sub_19393C2A0();
  v14 = OUTLINED_FUNCTION_5_7();
  v15(v14);
  if (!v21)
  {
    result = *&v18;
    *a3 = v18;
    *(a3 + 16) = v19;
    *(a3 + 32) = v20;
  }

  return result;
}

uint64_t sub_19349DAF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ToolKitToolTypedValue.ID.toSerializedBytes()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  *&v5 = *v0;
  *(&v5 + 1) = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_193450268(v5, v1);
  sub_193437C90(v6);

  sub_1934470C8(&v5, &type metadata for ToolKitToolTypedValue.ID, v8);
  v5 = v8[0];
  v6 = v8[1];
  v7 = v9;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3AD50);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();
  v3 = v6;
  sub_19345012C(v5, *(&v5 + 1));
  sub_193444060(v3);

  return OUTLINED_FUNCTION_2_23();
}

uint64_t sub_19349DC38(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x6973736553776172 && a2 == 0xEC00000064496E6FLL;
  if (v5 || (OUTLINED_FUNCTION_59_0(0x6973736553776172, 0xEC00000064496E6FLL) & 1) != 0)
  {
    sub_19393BE60();
    return sub_1934948FC();
  }

  v6 = OUTLINED_FUNCTION_1_20() & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
  v7 = a1 == v6 && a2 == 0xE800000000000000;
  if (v7 || (OUTLINED_FUNCTION_59_0(v6, 0xE800000000000000) & 1) != 0 || ((v9 = OUTLINED_FUNCTION_1_20() & 0xFFFFFFFFFFFFLL | 0x6552000000000000, a1 == v9) ? (v11 = a2 == v10) : (v11 = 0), v11 || (OUTLINED_FUNCTION_59_0(v9, v10) & 1) != 0 || ((v12 = OUTLINED_FUNCTION_1_20() & 0xFFFFFFFFFFFFLL | 0x6553000000000000, a1 == v12) ? (v14 = a2 == v13) : (v14 = 0), v14 || (OUTLINED_FUNCTION_59_0(v12, v13) & 1) != 0)))
  {
    type metadata accessor for SageMetadata(0);
    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = type metadata accessor for SageMetadata(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16 + 2);
  sub_19349DDEC(v2, boxed_opaque_existential_1Tm);
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_19349DDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SageMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19349DE68()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8750);
  __swift_project_value_buffer(v0, qword_1EAEA8750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawSessionId";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *(*(sub_19393C400() - 8) + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v8 = "clientId";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = (v5 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "clientRequestId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = (v5 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "clientSessionId";
  *(v12 + 1) = 15;
  v12[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_19349E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v30 = "etion8";
  v31 = (v7 + 40);
  v32 = (v7 + 32);
  v34 = v16;
  v35 = v10;
  while (2)
  {
    result = sub_19393C0E0();
    if (v4 || (v20 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v5);
        sub_193497890(v18);
        v21 = v33;
        sub_193458F7C(v18, v16);
        OUTLINED_FUNCTION_9_14(v16);
        if (!v22)
        {
          sub_193458FEC(v18);
          (*v32)(v10, v16, v5);
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_7_11();
        result = OUTLINED_FUNCTION_9_14(v21);
        if (!v22)
        {
          sub_193458FEC(v18);
          (*v32)(v10, v21, v5);
          OUTLINED_FUNCTION_9_14(v16);
          if (!v22)
          {
            sub_193458FEC(v16);
          }

LABEL_32:
          (*v31)(v38, v10, v5);
          continue;
        }

        __break(1u);
        return result;
      case 2:
        OUTLINED_FUNCTION_1_21();
        v4 = 0;
        if (v37)
        {
          v27 = v36;
        }

        else
        {
          v27 = 0;
        }

        if (v37)
        {
          v28 = v37;
        }

        else
        {
          v28 = 0xE000000000000000;
        }

        v29 = (v38 + *(type metadata accessor for SageMetadata(0) + 20));

        *v29 = v27;
        v29[1] = v28;
        v16 = v34;
        v10 = v35;
        continue;
      case 3:
        OUTLINED_FUNCTION_1_21();
        v4 = 0;
        if (v37)
        {
          v23 = v36;
        }

        else
        {
          v23 = 0;
        }

        if (v37)
        {
          v24 = v37;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = *(type metadata accessor for SageMetadata(0) + 24);
        goto LABEL_24;
      case 4:
        OUTLINED_FUNCTION_1_21();
        v4 = 0;
        if (v37)
        {
          v23 = v36;
        }

        else
        {
          v23 = 0;
        }

        if (v37)
        {
          v24 = v37;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = *(type metadata accessor for SageMetadata(0) + 28);
LABEL_24:
        v26 = (v38 + v25);

        *v26 = v23;
        v26[1] = v24;
        v16 = v34;
        v10 = v35;
        continue;
      default:
        continue;
    }
  }
}

void sub_19349E428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19349E564(v3, a1, a2, a3);
  if (!v4)
  {
    v5 = type metadata accessor for SageMetadata(0);
    v6 = (v3 + v5[5]);
    v7 = *v6;
    v8 = v6[1];
    if (*v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 0xE000000000000000;
    }

    if (!v9 && (OUTLINED_FUNCTION_3_18() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7(v7, v8, 2);
    }

    v10 = (v3 + v5[6]);
    v11 = *v10;
    v12 = v10[1];
    if (*v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == 0xE000000000000000;
    }

    if (!v13 && (OUTLINED_FUNCTION_3_18() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7(v11, v12, 3);
    }

    v14 = (v3 + v5[7]);
    v15 = *v14;
    v16 = v14[1];
    if (*v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 == 0xE000000000000000;
    }

    if (!v17 && (sub_19393CA30() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7(v15, v16, 4);
    }
  }
}

void sub_19349E564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8);
  OUTLINED_FUNCTION_7_11();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_19344F8E0();
    v14 = sub_19393C550();
    v15 = *(v10 + 8);
    v15(v13, v8);
    v15(v7, v8);
    if ((v14 & 1) == 0)
    {
      sub_19344652C();
    }
  }
}

uint64_t sub_19349E730(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = aSagemetadata_3[0];

  return v1;
}

uint64_t sub_19349E774@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE46FB0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EAE46FB0);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEA8750);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SageMetadata.rawSessionId.getter()
{
  sub_19393BE60();
  v0 = OUTLINED_FUNCTION_13_0();

  return v1(v0);
}

uint64_t SageMetadata.rawSessionId.setter()
{
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  v3 = *(*(v2 - 8) + 40);

  return v3(v1, v0, v2);
}

uint64_t SageMetadata.clientId.getter()
{
  type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t type metadata accessor for SageMetadata(uint64_t a1)
{
  result = qword_1ED50E4C0;
  if (!qword_1ED50E4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SageMetadata.clientId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_12() + 20));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*SageMetadata.clientId.modify())()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for SageMetadata(v0);
  return nullsub_1;
}

uint64_t SageMetadata.clientRequestId.getter()
{
  type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageMetadata.clientRequestId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_12() + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*SageMetadata.clientRequestId.modify())()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for SageMetadata(v0);
  return nullsub_1;
}

uint64_t SageMetadata.clientSessionId.getter()
{
  type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageMetadata.clientSessionId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_12() + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*SageMetadata.clientSessionId.modify())()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for SageMetadata(v0);
  return nullsub_1;
}

int *SageMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  sub_19393BE10();
  v5 = sub_19393BE60();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_0();
    v8(v7);
    result = type metadata accessor for SageMetadata(0);
    v9 = (a1 + result[5]);
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v10 = (a1 + result[6]);
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v11 = (a1 + result[7]);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t static SageMetadata.== infix(_:_:)()
{
  if ((sub_19393BE40() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_1_9(v0[5]);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_9(v0[6]);
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_9(v0[7]);
  if (v3 && v7 == v8)
  {
    return 1;
  }

  return sub_19393CA30();
}

uint64_t SageMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_11();
  sub_19349EFC4(v0, v1, MEMORY[0x1E69695B8]);
  sub_19393C540();
  type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  OUTLINED_FUNCTION_2_24();

  return sub_19393C640();
}

uint64_t SageMetadata.hashValue.getter()
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_11();
  sub_19349EFC4(v0, v1, MEMORY[0x1E69695B8]);
  sub_19393C540();
  type metadata accessor for SageMetadata(0);
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_19349EECC(uint64_t a1)
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_11();
  sub_19349EFC4(v1, v2, MEMORY[0x1E69695B8]);
  sub_19393C540();
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  OUTLINED_FUNCTION_2_24();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_19349EFC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19349F038(uint64_t a1)
{
  result = sub_19393BE60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19349F0B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = a1 == 0xD00000000000001ELL && 0x8000000193A14310 == a2;
  if (v6 || (v7 = OUTLINED_FUNCTION_0_12(a1, 0x8000000193A14310), (v7 & 1) != 0))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v9 = a1 == 0xD00000000000001ELL && 0x8000000193A14330 == a2;
    if (v9 || (OUTLINED_FUNCTION_0_12(v7, 0x8000000193A14330)) && v5 < 0)
    {
      return sub_1934948FC();
    }
  }

  sub_19349AB64();
  swift_allocError();
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 40) = &type metadata for MonotonicTimestampValue;
  *(v10 + 16) = v5;
  *(v10 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_19349F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = a1 == 0x73736553746F6F62 && a2 == 0xEF444955556E6F69;
  if (v7 || (sub_19393CA30() & 1) != 0)
  {
    sub_19393BE60();
    return sub_1934948FC();
  }

  else
  {
    v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      type metadata accessor for MonotonicTimestamp(0);

      sub_193494798(&type metadata for MonotonicTimestampValue, &off_1F07BD948, a3);
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v11 = v10;
      *v10 = a1;
      v10[1] = a2;
      v10[5] = type metadata accessor for MonotonicTimestamp(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
      sub_19349F368(v3, boxed_opaque_existential_1Tm);
      *(v11 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_19349F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19349F418()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA8768);
  __swift_project_value_buffer(v2, &qword_1EAEA8768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  *v0 = "suspendingNanosecondsSinceBoot";
  *(v0 + 8) = 30;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_9_10();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = v1 + v4 + dword_1EAEA87A0;
  *(v1 + v4) = 2;
  *v8 = "continuousNanosecondsSinceBoot";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_19349F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v6 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_17(2, v8, v9, v10, v11, v12, v13, v14, v17, v18);
      v6 = 0;

      v16 = OUTLINED_FUNCTION_3_19();
      *(v16 + 16) = v5;
      *v3 = v16 | 0x8000000000000000;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17(1, v8, v9, v10, v11, v12, v13, v14, v17, v18);
      v6 = 0;

      v15 = OUTLINED_FUNCTION_3_19();
      *(v15 + 16) = v5;
      *v3 = v15;
    }
  }

  return result;
}

uint64_t sub_19349F6C8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8780);
  __swift_project_value_buffer(v2, qword_1EAEA8780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  *v0 = "bootSessionUUID";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_9_10();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = v1 + v4 + dword_1EAEA87B8;
  *(v1 + v4) = 2;
  *v8 = "value";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_19349F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v34 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v33 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v33 - v19;
  v33[1] = "etion8";
  v35 = (v9 + 40);
  v36 = (v9 + 32);
  v37 = v33 - v19;
  v38 = a1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v22 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v40 = 0xF000000000000007;
      sub_193498018();
      v25 = v40;
      v26 = v18;
      v27 = v7;
      v28 = a2;
      v29 = a3;
      v30 = v12;
      if ((~v40 & 0xF000000000000007) == 0)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = 0;
      }

      v31 = *(type metadata accessor for MonotonicTimestamp(0) + 20);
      v32 = v39;

      *(v32 + v31) = v25;
      v12 = v30;
      a3 = v29;
      a2 = v28;
      v7 = v27;
      v18 = v26;
      v20 = v37;
    }

    else if (result == 1)
    {
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v7);
      sub_193497890(v20);
      sub_193458F7C(v20, v18);
      OUTLINED_FUNCTION_9_14(v18);
      if (v23)
      {
        v24 = v34;
        OUTLINED_FUNCTION_7_11();
        result = OUTLINED_FUNCTION_9_14(v24);
        if (v23)
        {
          __break(1u);
          return result;
        }

        sub_193458FEC(v20);
        (*v36)(v12, v24, v7);
        OUTLINED_FUNCTION_9_14(v18);
        if (!v23)
        {
          sub_193458FEC(v18);
        }
      }

      else
      {
        sub_193458FEC(v20);
        (*v36)(v12, v18, v7);
      }

      (*v35)(v39, v12, v7);
    }
  }

  return result;
}

uint64_t sub_19349FBB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_13_5();
}

uint64_t sub_19349FC30@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_19393C420();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_9_10();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t MonotonicTimestampValue.hashValue.getter()
{
  sub_19393CAB0();
  MonotonicTimestampValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19349FD38(uint64_t a1)
{
  sub_19393CAB0();
  MonotonicTimestampValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t MonotonicTimestamp.bootSessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393BE60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MonotonicTimestamp.bootSessionUUID.setter()
{
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  v3 = *(*(v2 - 8) + 40);

  return v3(v1, v0, v2);
}

uint64_t MonotonicTimestamp.value.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for MonotonicTimestamp(0) + 20));
}

uint64_t MonotonicTimestamp.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for MonotonicTimestamp(0) + 20);

  *(v1 + v3) = v2;
  return result;
}

void (*MonotonicTimestamp.value.modify())()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MonotonicTimestamp(v0);
  return nullsub_1;
}

uint64_t MonotonicTimestamp.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_13();
  sub_1934A012C(v0, v1, MEMORY[0x1E69695B8]);
  sub_19393C540();
  type metadata accessor for MonotonicTimestamp(0);
  return MonotonicTimestampValue.hash(into:)();
}

uint64_t MonotonicTimestamp.hashValue.getter()
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_13();
  sub_1934A012C(v0, v1, MEMORY[0x1E69695B8]);
  sub_19393C540();
  v2 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_3_20(v2);
  return sub_19393CB00();
}

uint64_t sub_1934A0058(uint64_t a1)
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_13();
  sub_1934A012C(v1, v2, MEMORY[0x1E69695B8]);
  v3 = sub_19393C540();
  OUTLINED_FUNCTION_3_20(v3);
  return sub_19393CB00();
}

uint64_t sub_1934A012C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1934A0174(uint64_t a1, unsigned int a2)
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

void *sub_1934A01C8(void *result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1934A0240(uint64_t a1)
{
  result = sub_19393BE60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s16GenerativeModelsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s19GenerativeFunctionsOwst(_BYTE *result, int a2, int a3)
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

unint64_t static Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation.attribute(_:)(void (*a1)(void))
{
  result = sub_1934A0544(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934A057C(void (*a1)(void))
{
  result = sub_1934A0544(a1);
  if (!v1)
  {
  }

  return result;
}

_BYTE *_s15InstrumentationOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeFunctionsInstrumentationEvent.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_10_9();
  sub_19344A4A0(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3ADA0, &qword_193951890, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static GenerativeFunctionsInstrumentationEvent.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3ADA0, &qword_193951890, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1934A0974(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934A0974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GenerativeFunctionsInstrumentationEvent.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  if (*sub_193443894() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v19, v22, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v23, v24, v25, v26);
    sub_19393C280();
    (*(v15 + 8))(v22, v13);
    if (!v0)
    {
      v28 = v36;
      sub_1934A0974(v12, v36);
      v29 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = v5;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934A0D04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_105();
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (OUTLINED_FUNCTION_59_0(v7, v8) & 1) != 0)
  {
    type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    v10 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
    v11 = &off_1F07BE078;
LABEL_7:
    sub_193494798(v10, v11, a3);
    return;
  }

  v12 = a1 == OUTLINED_FUNCTION_96_6() && a2 == 0xE900000000000065;
  if (v12 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_59_0(v13, v14) & 1) != 0))
  {
    v15 = (v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 32));
    v17 = *v15;
    v16 = v15[1];
    v42[0] = v17;
    v42[1] = v16;
LABEL_14:
    sub_1934948FC();
    return;
  }

  v18 = OUTLINED_FUNCTION_115_1();
  v19 = a1 == v18 && a2 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_59_0(v18, 0xE700000000000000) & 1) != 0)
  {
    v20 = v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 36);
    if ((*(v20 + 9) & 1) == 0)
    {
      v21 = *(v20 + 8);
      v42[0] = *v20;
      LOBYTE(v42[1]) = v21 & 1;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v22 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v22 || (OUTLINED_FUNCTION_59_0(0x6D617473656D6974, 0xE900000000000070) & 1) != 0)
  {
    type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    v10 = type metadata accessor for MonotonicTimestamp(0);
    v11 = &off_1F07BD958;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v24 = a1 == 0xD000000000000016 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_59_0(0xD000000000000016, v23) & 1) != 0)
  {
    v42[0] = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 44));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_84_1();
  v25 = OUTLINED_FUNCTION_111_3();
  v27 = a1 == v25 && a2 == v26;
  if (v27 || (OUTLINED_FUNCTION_59_0(v25, v26) & 1) != 0)
  {
    v42[0] = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 48));
    goto LABEL_14;
  }

  v28 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v28 || (OUTLINED_FUNCTION_59_0(0x617461646174656DLL, 0xE800000000000000) & 1) != 0)
  {
    v29 = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 52));
    if ((~v29 & 0xF000000000000007) != 0)
    {
      v42[0] = v29;
      v10 = &type metadata for GenerativeFunctionsInstrumentationMetadata;
      v11 = &off_1F07BE0A8;
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v30 = OUTLINED_FUNCTION_97() & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
  v31 = a1 == v30 && a2 == 0xE500000000000000;
  if (v31 || (OUTLINED_FUNCTION_59_0(v30, 0xE500000000000000) & 1) != 0)
  {
    v32 = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 56));
    if ((~v32 & 0xF000000000000007) != 0)
    {
      v42[0] = v32;
      v10 = &type metadata for GenerativeFunctionsInstrumentationError;
      v11 = &off_1F07BE238;
      goto LABEL_7;
    }

LABEL_21:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_38();
  v34 = a1 == 0xD000000000000014 && v33 == a2;
  if (v34 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, v33) & 1) != 0)
  {
    v42[0] = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 60));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA8, &qword_193951898);
    goto LABEL_14;
  }

  v35 = a1 == 0x6669746E6564695FLL && a2 == 0xEE00746553726569;
  if (v35 || (OUTLINED_FUNCTION_59_0(0x6669746E6564695FLL, 0xEE00746553726569) & 1) != 0)
  {
    v36 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 64);
    memcpy(__dst, (v3 + v36), sizeof(__dst));
    memcpy(__src, (v3 + v36), sizeof(__src));
    sub_19344FABC(__dst, v42);
    sub_193494798(&type metadata for GenerativeFunctionsInstrumentationEvent.IdentifierSet, &off_1F07BE098, a3);
    memcpy(v42, __src, sizeof(v42));
    sub_1934500D8(v42);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    OUTLINED_FUNCTION_106_0();
    *v37 = a1;
    v37[1] = a2;
    a3[5] = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    __swift_allocate_boxed_opaque_existential_1Tm(a3 + 2);
    OUTLINED_FUNCTION_10_9();
    sub_19344A4A0(v3, v38, v39);
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }
}

void sub_1934A115C()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_105();
  v7 = *v0;
  v6 = v0[1];
  v8 = v2 == v3 && v4 == v5;
  if (v8 || (v9 = v4, v11 = v0[2], v10 = v0[3], (OUTLINED_FUNCTION_92_1(v3, 0xEA00000000007265) & 1) != 0) || ((v12 = OUTLINED_FUNCTION_112_2(), v2 == v12) ? (v13 = v9 == 0xE700000000000000) : (v13 = 0), v13 || (OUTLINED_FUNCTION_92_1(v12, 0xE700000000000000) & 1) != 0))
  {
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v15 = v14;
    *v14 = v2;
    v14[1] = v9;
    v14[5] = &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion;
    OUTLINED_FUNCTION_95();
    v16 = swift_allocObject();
    v15[2] = v16;
    v16[2] = v7;
    v16[3] = v6;
    v16[4] = v11;
    v16[5] = v10;
    OUTLINED_FUNCTION_90_3();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1934A129C()
{
  OUTLINED_FUNCTION_26();
  v122 = v0;
  v123 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6();
  v118 = v7 - v8;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v116 - v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v116 - v12;
  OUTLINED_FUNCTION_47_3();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v116 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v116 - v17;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v120 = v20;
  v121 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v116 = (v21 - v22);
  OUTLINED_FUNCTION_47_3();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v116 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v116 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v116 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v116 - v33;
  OUTLINED_FUNCTION_38();
  v36 = v5 == 0xD000000000000017 && v35 == v3;
  if (v36 || (OUTLINED_FUNCTION_24_5(0xD000000000000017, v35) & 1) != 0)
  {
    v37 = v122;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_21();
  v42 = v5 == v41 && v40 == v3;
  if (v42 || (OUTLINED_FUNCTION_24_5(0xD000000000000017, v40) & 1) != 0)
  {
    v38 = v122[3];
    if (v38)
    {
      v39 = v122[2];
      goto LABEL_9;
    }

LABEL_47:
    v60 = v123;
    *v123 = 0u;
    *(v60 + 1) = 0u;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_3_21();
  v45 = v44 + 4;
  v46 = v5 == v44 + 4 && v43 == v3;
  if (v46 || (OUTLINED_FUNCTION_24_5(v44 + 4, v43) & 1) != 0)
  {
    v38 = v122[5];
    if (v38)
    {
      v39 = v122[4];
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v49 = v5 == v48 - 1 && v47 == v3;
  if (v49 || (OUTLINED_FUNCTION_24_5(v48 - 1, v47) & 1) != 0)
  {
    v38 = v122[7];
    if (v38)
    {
      v39 = v122[6];
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v52 = v5 == v51 + 8 && v50 == v3;
  if (v52 || (OUTLINED_FUNCTION_24_5(v51 + 8, v50) & 1) != 0)
  {
    v38 = v122[9];
    if (v38)
    {
      v39 = v122[8];
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v55 = v5 == v54 + 10 && v53 == v3;
  if (v55 || (OUTLINED_FUNCTION_24_5(v54 + 10, v53) & 1) != 0)
  {
    v56 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
    v57 = OUTLINED_FUNCTION_83_4(*(v56 + 36));
    sub_193458F7C(v57, v18);
    v58 = v121;
    if (__swift_getEnumTagSinglePayload(v18, 1, v121) != 1)
    {
      OUTLINED_FUNCTION_75_6();
      v61(v34, v18, v58);
      sub_1934948FC();
      (*(v32 + 1))(v34, v58);
      goto LABEL_48;
    }

    v59 = v18;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_3_21();
  v64 = v5 == v63 + 7 && v62 == v3;
  if (v64 || (OUTLINED_FUNCTION_24_5(v63 + 7, v62) & 1) != 0)
  {
    v65 = v122 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 40);
    if ((v65[8] & 1) == 0)
    {
      v124 = *v65;
      goto LABEL_10;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v68 = v5 == v67 - 6 && v66 == v3;
  if (!v68 && (OUTLINED_FUNCTION_24_5(v67 - 6, v66) & 1) == 0)
  {
    OUTLINED_FUNCTION_3_21();
    v72 = v5 == v71 + 5 && v70 == v3;
    if (v72 || (OUTLINED_FUNCTION_24_5(v71 + 5, v70) & 1) != 0)
    {
      v69 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 48);
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_3_21();
    v75 = v5 == v74 + 15 && v73 == v3;
    if (v75 || (OUTLINED_FUNCTION_24_5(v74 + 15, v73) & 1) != 0)
    {
      v76 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v77 = OUTLINED_FUNCTION_83_4(*(v76 + 52));
      sub_193458F7C(v77, v16);
      OUTLINED_FUNCTION_65_4(v16);
      if (!v36)
      {
        v79 = v120;
        v78 = v121;
        (*(v120 + 32))(v32, v16, v121);
        sub_1934948FC();
        (*(v79 + 8))(v32, v78);
        goto LABEL_48;
      }

      v59 = v16;
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_3_21();
    v82 = v5 == v81 + 2 && v80 == v3;
    if (v82 || (OUTLINED_FUNCTION_24_5(v81 + 2, v80) & 1) != 0)
    {
      v83 = (v122 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 56));
      v84 = v83[1];
      if (v84)
      {
        v86 = v83[2];
        v85 = v83[3];
        v124 = *v83;
        v125 = v84;
        v126 = v86;
        v127 = v85;
        sub_193494798(&type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion, &off_1F07BE068, v123);
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_21();
    v89 = v88 + 6;
    v90 = v5 == v88 + 6 && v87 == v3;
    if (v90 || (OUTLINED_FUNCTION_24_5(v88 + 6, v87) & 1) != 0)
    {
      v91 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v92 = OUTLINED_FUNCTION_83_4(*(v91 + 60));
      v93 = v119;
      sub_193458F7C(v92, v119);
      OUTLINED_FUNCTION_65_4(v93);
      if (!v36)
      {
        v94 = v120;
        v95 = v121;
        (*(v120 + 32))(v29, v119, v121);
        sub_1934948FC();
        (*(v94 + 8))(v29, v95);
        goto LABEL_48;
      }

      v59 = v119;
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_38();
    v97 = v5 == v89 && v96 == v3;
    if (v97 || (OUTLINED_FUNCTION_24_5(0xD00000000000001DLL, v96) & 1) != 0)
    {
      v98 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v99 = OUTLINED_FUNCTION_83_4(*(v98 + 64));
      v100 = v117;
      sub_193458F7C(v99, v117);
      OUTLINED_FUNCTION_65_4(v100);
      if (!v36)
      {
        OUTLINED_FUNCTION_75_6();
        v102 = v26;
        v103 = v117;
LABEL_109:
        v110 = v121;
        v101(v102, v103, v121);
        sub_1934948FC();
        (*(v89 + 8))(v26, v110);
        goto LABEL_48;
      }

      v59 = v117;
    }

    else
    {
      OUTLINED_FUNCTION_3_21();
      v106 = v5 == v105 + 14 && v104 == v3;
      if (!v106 && (OUTLINED_FUNCTION_24_5(v105 + 14, v104) & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        v112 = v5 == v45 && v111 == v3;
        if (!v112 && (OUTLINED_FUNCTION_24_5(0xD00000000000001BLL, v111) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v114 = v113;
          *v113 = v5;
          v113[1] = v3;
          v113[5] = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v114 + 2);
          sub_19344A4A0(v122, boxed_opaque_existential_1Tm, type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers);
          *(v114 + 48) = 1;
          swift_willThrow();

          goto LABEL_48;
        }

        v69 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 72);
        goto LABEL_63;
      }

      v107 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v108 = OUTLINED_FUNCTION_83_4(*(v107 + 68));
      v109 = v118;
      sub_193458F7C(v108, v118);
      OUTLINED_FUNCTION_65_4(v109);
      if (!v36)
      {
        OUTLINED_FUNCTION_75_6();
        v26 = v116;
        v102 = v116;
        v103 = v118;
        goto LABEL_109;
      }

      v59 = v118;
    }

LABEL_46:
    sub_19344E6DC(v59, &qword_1EAE3AA88, &qword_19394F9C0);
    goto LABEL_47;
  }

  v69 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 44);
LABEL_63:
  v37 = (v122 + v69);
LABEL_7:
  v38 = v37[1];
  if (!v38)
  {
    goto LABEL_47;
  }

  v39 = *v37;
LABEL_9:
  v124 = v39;
  v125 = v38;
LABEL_10:
  sub_1934948FC();
LABEL_48:
  OUTLINED_FUNCTION_27();
}

void sub_1934A1B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_102_3();
  v25 = *(v3 + 48);
  v9 = a1 == v8 && a2 == v7;
  if (v9 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v10 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v11 = v22;
LABEL_8:
      v21[0] = v11;
      v21[1] = v10;
LABEL_9:
      sub_1934948FC();
      return;
    }
  }

  else
  {
    v12 = a1 == 0x656D796F6C706564 && a2 == 0xEC0000006449746ELL;
    if (v12 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if ((BYTE4(v23) & 1) == 0)
      {
        LODWORD(v21[0]) = v23;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
      if (v13 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v10 = v24;
        if (v24)
        {
          v11 = *(&v23 + 1);
          goto LABEL_8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_79_5(0x6D7461657274);
        if (!v9 || a2 != v14)
        {
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_11();
            v16 = swift_allocError();
            OUTLINED_FUNCTION_9_3(v16, v17);
            *(v18 + 40) = &type metadata for GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo;
            OUTLINED_FUNCTION_98_2();
            v19 = swift_allocObject();
            *(v3 + 16) = v19;
            *(v19 + 64) = v25;
            v20 = v24;
            *(v19 + 32) = v23;
            *(v19 + 48) = v20;
            *(v19 + 16) = v22;
            OUTLINED_FUNCTION_26_0();

            sub_1934A82B0(&v22, v21);
            return;
          }
        }

        v10 = v25;
        if (v25)
        {
          v11 = *(&v24 + 1);
          goto LABEL_8;
        }
      }
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
}

uint64_t sub_1934A1D1C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  OUTLINED_FUNCTION_8_17();
  v4 = v4 && v3 == v0;
  if (v4 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[0];
LABEL_7:
    v48[0] = v5;
    v6 = &qword_1EAE3ABB0;
    v7 = &qword_193950BB8;
LABEL_8:
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_52_2(v8, v8, v9, v10, v11, v12, v13, v14, v48[0]);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_8_17();
  v17 = v4 && v16 == v0;
  if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[1];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v19 = v1 == 0xD00000000000001CLL && v18 == v0;
  if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[2];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v21 = v1 == 0xD000000000000017 && v20 == v0;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[3];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v23 = v1 == 0xD000000000000020 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[4];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v25 = v1 == 0xD000000000000022 && v24 == v0;
  if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v48[0] = __dst[5];
    v6 = &qword_1EAE3ADC0;
    v7 = &qword_1939518B0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v27 = v1 == 0xD00000000000001FLL && v26 == v0;
  if (v27 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v48[0] = __dst[6];
    v6 = &unk_1EAE3ADB8;
    v7 = &unk_1939518A8;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v29 = v1 == 0xD000000000000012 && v28 == v0;
  if (v29 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[7];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_89_6();
  v32 = v1 == v31 + 5 && v30 == v0;
  if (v32 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_89_6();
  v35 = v1 == v34 + 2 && v33 == v0;
  if (v35 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v48[0] = __dst[9];
    v6 = &qword_1EAE3ADB0;
    v7 = &qword_1939518A0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_89_6();
  v38 = v1 == v37 + 6 && v36 == v0;
  if (v38 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[10];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_17();
  v40 = v4 && v39 == v0;
  if (v40 || (OUTLINED_FUNCTION_89_6(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[11];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v42 = v1 == 0xD00000000000001CLL && v41 == v0;
  if (v42 || (OUTLINED_FUNCTION_89_6(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[12];
    goto LABEL_7;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v43 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v43, v44);
  *(v45 + 40) = &type metadata for GenerativeFunctionsInstrumentationEvent.IdentifierSet;
  v46 = swift_allocObject();
  v47 = OUTLINED_FUNCTION_28_3(v46);
  memcpy(v47, __dst, 0x68uLL);
  OUTLINED_FUNCTION_26_0();

  return sub_19344FABC(__dst, v48);
}

id sub_1934A20DC()
{
  OUTLINED_FUNCTION_7_12();
  v4 = OUTLINED_FUNCTION_114_1();
  v6 = *v0;
  v7 = v2 == v4 && v1 == v5;
  if (v7 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v6 >> 60))
    {
      v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.GenericError;
      v9 = &off_1F07BE0B8;
      return sub_193494798(v8, v9, v3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v11 = v2 == 0xD000000000000010 && v10 == v1;
    if (v11 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v6 >> 60 == 1)
      {
        v12 = OUTLINED_FUNCTION_12_8();
        v14 = memcpy(v12, v13, 0x59uLL);
        v22 = OUTLINED_FUNCTION_44_5(v14, v15, v16, v17, v18, v19, v20, v21, v149);
        memcpy(v22, v23, 0x59uLL);
        v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest;
        v9 = &off_1F07BE0C8;
        return sub_193494798(v8, v9, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v26 = v2 == 0xD000000000000011 && v25 == v1;
      if (v26 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v6 >> 60 == 2)
        {
          v27 = OUTLINED_FUNCTION_12_8();
          v29 = memcpy(v27, v28, 0x299uLL);
          v37 = OUTLINED_FUNCTION_44_5(v29, v30, v31, v32, v33, v34, v35, v36, v149);
          memcpy(v37, v38, 0x299uLL);
          v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest;
          v9 = &off_1F07BE0D8;
          return sub_193494798(v8, v9, v3);
        }
      }

      else
      {
        v40 = v2 == (OUTLINED_FUNCTION_108_6() | 0x7163417400000000) && v1 == v39;
        if (v40 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (v6 >> 60 == 3)
          {
            v41 = OUTLINED_FUNCTION_12_8();
            v43 = memcpy(v41, v42, 0x4AuLL);
            v51 = OUTLINED_FUNCTION_44_5(v43, v44, v45, v46, v47, v48, v49, v50, v149);
            memcpy(v51, v52, 0x4AuLL);
            v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire;
            v9 = &off_1F07BE108;
            return sub_193494798(v8, v9, v3);
          }
        }

        else
        {
          v54 = v2 == (OUTLINED_FUNCTION_108_6() | 0x6C65527400000000) && v1 == v53;
          if (v54 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (v6 >> 60 == 4)
            {
              v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease;
              v9 = &off_1F07BE128;
              return sub_193494798(v8, v9, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v56 = v2 == 0xD000000000000013 && v55 == v1;
            if (v56 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              if (v6 >> 60 == 5)
              {
                v57 = OUTLINED_FUNCTION_12_8();
                v59 = memcpy(v57, v58, 0x142uLL);
                v67 = OUTLINED_FUNCTION_44_5(v59, v60, v61, v62, v63, v64, v65, v66, v149);
                memcpy(v67, v68, 0x142uLL);
                v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics;
                v9 = &off_1F07BE198;
                return sub_193494798(v8, v9, v3);
              }
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v70 = v2 == 0xD000000000000014 && v69 == v1;
              if (v70 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
              {
                if (v6 >> 60 == 6)
                {
                  v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication;
                  v9 = &off_1F07BE158;
                  return sub_193494798(v8, v9, v3);
                }
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v72 = v2 == 0xD000000000000018 && v71 == v1;
                if (v72 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                {
                  if (v6 >> 60 == 7)
                  {
                    v73 = OUTLINED_FUNCTION_12_8();
                    v75 = memcpy(v73, v74, 0x6AuLL);
                    v83 = OUTLINED_FUNCTION_44_5(v75, v76, v77, v78, v79, v80, v81, v82, v149);
                    memcpy(v83, v84, 0x6AuLL);
                    v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent;
                    v9 = &off_1F07BE1D8;
                    return sub_193494798(v8, v9, v3);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v86 = v2 == 0xD000000000000012 && v85 == v1;
                  if (v86 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (v6 >> 60 == 8)
                    {
                      v87 = OUTLINED_FUNCTION_12_8();
                      v89 = memcpy(v87, v88, 0x189uLL);
                      v97 = OUTLINED_FUNCTION_44_5(v89, v90, v91, v92, v93, v94, v95, v96, v149);
                      memcpy(v97, v98, 0x189uLL);
                      v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent;
                      v9 = &off_1F07BE1E8;
                      return sub_193494798(v8, v9, v3);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v100 = v2 == 0xD000000000000013 && v99 == v1;
                    if (v100 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      if (v6 >> 60 == 9)
                      {
                        v101 = OUTLINED_FUNCTION_12_8();
                        v103 = memcpy(v101, v102, 0x119uLL);
                        v111 = OUTLINED_FUNCTION_44_5(v103, v104, v105, v106, v107, v108, v109, v110, v149);
                        memcpy(v111, v112, 0x119uLL);
                        v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ClassificationEvent;
                        v9 = &off_1F07BE1F8;
                        return sub_193494798(v8, v9, v3);
                      }
                    }

                    else
                    {
                      v114 = v2 == (OUTLINED_FUNCTION_108_6() | 0x6172547400000000) && v1 == v113;
                      if (v114 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (v6 >> 60 == 10)
                        {
                          v115 = OUTLINED_FUNCTION_12_8();
                          v117 = memcpy(v115, v116, 0x72uLL);
                          v125 = OUTLINED_FUNCTION_44_5(v117, v118, v119, v120, v121, v122, v123, v124, v149);
                          memcpy(v125, v126, 0x72uLL);
                          v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition;
                          v9 = &off_1F07BE138;
                          return sub_193494798(v8, v9, v3);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v128 = v2 == 0xD000000000000012 && v127 == v1;
                        if (v128 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          if (v6 >> 60 == 11)
                          {
                            v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus;
                            v9 = &off_1F07BE208;
                            return sub_193494798(v8, v9, v3);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          if (v2 != 0xD00000000000001CLL || v129 != v1)
                          {
                            OUTLINED_FUNCTION_0_14();
                            if ((sub_19393CA30() & 1) == 0)
                            {
                              OUTLINED_FUNCTION_38();
                              if (v2 == 0xD000000000000013 && v131 == v1)
                              {
                                if (v6 >> 60 != 13)
                                {
                                  goto LABEL_101;
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_66_3();
                                OUTLINED_FUNCTION_0_14();
                                if ((sub_19393CA30() & 1) == 0 || (v6 & 0xF000000000000000) != 0xD000000000000000)
                                {
                                  goto LABEL_101;
                                }
                              }

                              v133 = OUTLINED_FUNCTION_12_8();
                              v135 = memcpy(v133, v134, 0x42uLL);
                              v143 = OUTLINED_FUNCTION_44_5(v135, v136, v137, v138, v139, v140, v141, v142, v149);
                              memcpy(v143, v144, 0x42uLL);
                              v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest;
                              v9 = &off_1F07BE228;
                              return sub_193494798(v8, v9, v3);
                            }
                          }

                          if (v6 >> 60 == 12)
                          {
                            v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition;
                            v9 = &off_1F07BE218;
                            return sub_193494798(v8, v9, v3);
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

LABEL_101:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v145 = swift_allocError();
  OUTLINED_FUNCTION_64(v145, v146);
  *(v147 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata;
  *(v147 + 16) = v6;
  OUTLINED_FUNCTION_23_2(v148, v147);
}

void sub_1934A275C()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, 0x59uLL);
  v10 = v1 == 0x666C616865426E6FLL && v0 == 0xED0000444950664FLL;
  if (v10 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v11 = __dst[0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v3 = 0xD00000000000001ALL;
  v14 = v1 == 0xD00000000000001ALL && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = __dst[3];
    if (!__dst[3])
    {
      goto LABEL_7;
    }

    v16 = __dst[2];
    goto LABEL_17;
  }

  v3 = OUTLINED_FUNCTION_50_5();
  v18 = v10 && v0 == v17;
  if (v18 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      goto LABEL_7;
    }

    v11 = __dst[4];
LABEL_9:
    v32[0] = v11;
    v12 = MEMORY[0x1E69E7360];
LABEL_18:
    OUTLINED_FUNCTION_52_2(v3, v12, v4, v5, v6, v7, v8, v9, v32[0]);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v3 = 0xD000000000000019;
  v20 = v1 == 0xD000000000000019 && v19 == v0;
  if (v20 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = __dst[7];
    if (!__dst[7])
    {
      goto LABEL_7;
    }

    v16 = __dst[6];
LABEL_17:
    v32[0] = v16;
    v32[1] = v15;
    v12 = MEMORY[0x1E69E6158];
    goto LABEL_18;
  }

  v21 = v1 == 0x5474736575716572 && v0 == 0xEB00000000657079;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[9] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_17();
  v23 = v10 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v24 = BYTE2(__dst[9]);
LABEL_46:
    if (v24 == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v32[0]) = v24 & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_18;
  }

  v25 = v1 == (OUTLINED_FUNCTION_108_6() & 0xFFFF0000FFFFFFFFLL | 0x737400000000) && v0 == 0xE600000000000000;
  if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v32[0] = __dst[10];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADB0, &qword_1939518A0);
    v12 = v3;
    goto LABEL_18;
  }

  v3 = 0x657265666E497369;
  v26 = v1 == 0x657265666E497369 && v0 == 0xEB0000000065636ELL;
  if (v26 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v24 = LOBYTE(__dst[11]);
    goto LABEL_46;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v27 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v27, v28);
  *(v29 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest;
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_28_3(v30);
  memcpy(v31, __dst, 0x59uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A830C(__dst, v32);
}

void sub_1934A2A58()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v1, 0x299uLL);
  v8 = v5 == 0x5474736575716572 && v3 == 0xEB00000000657079;
  if (!v8)
  {
    OUTLINED_FUNCTION_0_14();
    if ((sub_19393CA30() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v10 = v5 == 0xD000000000000010 && v9 == v3;
      if (v10 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[3])
        {
          goto LABEL_7;
        }

        v11 = __dst[2];
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_38();
      v13 = v5 == 0xD000000000000011 && v12 == v3;
      if (v13 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[5])
        {
          goto LABEL_7;
        }

        v11 = __dst[4];
        goto LABEL_16;
      }

      v15 = v5 == (OUTLINED_FUNCTION_97() | 0x7274537200000000) && v3 == v14;
      if (v15 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (!__dst[7])
        {
          goto LABEL_7;
        }

        __src[0] = __dst[6];
        __src[1] = __dst[7];
      }

      else
      {
        OUTLINED_FUNCTION_8_17();
        v17 = v8 && v16 == v3;
        if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (__dst[9])
          {
            goto LABEL_7;
          }

          v11 = __dst[8];
LABEL_16:
          __src[0] = v11;
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_117_3();
        if (v5 != (OUTLINED_FUNCTION_97() | 0x7079547200000000) || v3 != v18)
        {
          OUTLINED_FUNCTION_59_1();
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0)
          {
            OUTLINED_FUNCTION_38();
            v21 = v5 == 0xD000000000000013 && v20 == v3;
            if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              memcpy(__src, (v1 + 96), 0x142uLL);
              if (sub_1934A83E0(__src) == 1)
              {
                goto LABEL_7;
              }

              memcpy(v39, __src, sizeof(v39));
              v22 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics;
              v23 = &off_1F07BE198;
            }

            else
            {
              OUTLINED_FUNCTION_38();
              if (v5 != 0xD00000000000001ALL || v24 != v3)
              {
                OUTLINED_FUNCTION_0_14();
                if ((sub_19393CA30() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  v27 = v5 == 0xD000000000000011 && v26 == v3;
                  if (v27 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    __src[0] = __dst[77];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADC8, &qword_1939518B8);
                    goto LABEL_17;
                  }

                  OUTLINED_FUNCTION_38();
                  v29 = v5 == 0xD00000000000001DLL && v28 == v3;
                  if (v29 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[79])
                    {
                      goto LABEL_7;
                    }

                    v11 = __dst[78];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v31 = v5 == 0xD000000000000024 && v30 == v3;
                    if (v31 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      if (__dst[81])
                      {
                        goto LABEL_7;
                      }

                      v11 = __dst[80];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      if (v5 != 0xD000000000000011 || v32 != v3)
                      {
                        OUTLINED_FUNCTION_49_1();
                        OUTLINED_FUNCTION_0_14();
                        if ((sub_19393CA30() & 1) == 0)
                        {
                          sub_19349AB64();
                          OUTLINED_FUNCTION_11();
                          v34 = swift_allocError();
                          OUTLINED_FUNCTION_9_3(v34, v35);
                          *(v36 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest;
                          v37 = swift_allocObject();
                          v38 = OUTLINED_FUNCTION_28_3(v37);
                          memcpy(v38, __dst, 0x299uLL);
                          OUTLINED_FUNCTION_26_0();

                          sub_1934A8368(__dst, __src);
                          goto LABEL_18;
                        }
                      }

                      if (__dst[83])
                      {
                        goto LABEL_7;
                      }

                      v11 = __dst[82];
                    }
                  }

                  goto LABEL_16;
                }
              }

              memcpy(__src, (v1 + 424), 0xBAuLL);
              if (sub_1934A83C4(__src) == 1)
              {
                goto LABEL_7;
              }

              memcpy(v39, __src, 0xB9uLL);
              v22 = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics;
              v23 = &off_1F07BE0E8;
            }

            sub_193494798(v22, v23, v7);
            goto LABEL_18;
          }
        }

        if ((__dst[11] & 0x100) != 0)
        {
          goto LABEL_7;
        }

        __src[0] = __dst[10];
        LOBYTE(__src[1]) = __dst[11] & 1;
      }

LABEL_17:
      sub_1934948FC();
      goto LABEL_18;
    }
  }

  if ((__dst[1] & 0x100) == 0)
  {
    __src[0] = __dst[0];
    LOBYTE(__src[1]) = __dst[1] & 1;
    goto LABEL_17;
  }

LABEL_7:
  OUTLINED_FUNCTION_36_4();
LABEL_18:
  OUTLINED_FUNCTION_27();
}

void sub_1934A2EE0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD00000000000001BLL && v7 == a2;
  if (v8 || (v9 = v6, v61 = v2[2], v62 = *(v2 + 24), v59 = v2[4], v60 = *(v2 + 40), v57 = v2[6], v58 = *(v2 + 56), v55 = v2[8], v56 = *(v2 + 72), v53 = v2[10], v54 = *(v2 + 88), v51 = v2[12], v52 = *(v2 + 104), v49 = v2[14], v50 = *(v2 + 120), v47 = v2[16], v48 = *(v2 + 136), v45 = v2[18], v46 = *(v2 + 152), v43 = v2[20], v44 = *(v2 + 168), v41 = v2[22], v42 = *(v2 + 184), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v11 = v9 == 0xD00000000000001CLL && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v62)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v13 = v9 == 0xD00000000000001DLL && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_6_13(), v40 = v14, (sub_19393CA30() & 1) != 0))
  {
    if (v60)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v16 = v9 == 0xD000000000000018 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v58)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v18 = v9 == 0xD000000000000017 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v56)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v20 = v9 == 0xD000000000000016 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_113_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v54)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v22 = v9 == 0xD000000000000016 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_113_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v52)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v24 = v9 == 0xD000000000000016 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_113_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v50)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v26 = v9 == 0xD00000000000001BLL && v25 == a2;
  if (v26 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v48)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v28 = v9 == 0xD00000000000001CLL && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v46)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v30 = v9 == v40 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v44)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_58_3();
  v32 = v8 && a2 == v31;
  if (v32 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v42)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v34 = v33;
  *v33 = v9;
  v33[1] = a2;
  v33[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics;
  v35 = swift_allocObject();
  v34[2] = v35;
  *(v35 + 16) = v4;
  *(v35 + 24) = v5;
  *(v35 + 28) = *(v2 + 3);
  *(v35 + 25) = *(v2 + 9);
  *(v35 + 32) = v61;
  *(v35 + 40) = v62;
  v36 = OUTLINED_FUNCTION_34_3(v35);
  *(v36 + 48) = v59;
  *(v36 + 56) = v60;
  *(v36 + 60) = *(v2 + 11);
  *(v36 + 57) = *(v2 + 41);
  *(v36 + 64) = v57;
  *(v36 + 72) = v58;
  *(v36 + 73) = *(v2 + 57);
  *(v36 + 76) = *(v2 + 15);
  *(v36 + 80) = v55;
  v37 = OUTLINED_FUNCTION_81_1(v36, v56);
  *(v37 + 96) = v53;
  *(v37 + 104) = v54;
  *(v37 + 105) = *(v2 + 89);
  *(v37 + 108) = *(v2 + 23);
  *(v37 + 112) = v51;
  *(v37 + 120) = v52;
  *(v37 + 124) = *(v2 + 27);
  *(v37 + 121) = *(v2 + 105);
  *(v37 + 128) = v49;
  *(v37 + 136) = v50;
  *(v37 + 140) = *(v2 + 31);
  *(v37 + 137) = *(v2 + 121);
  *(v37 + 144) = v47;
  *(v37 + 152) = v48;
  *(v37 + 156) = *(v2 + 35);
  *(v37 + 153) = *(v2 + 137);
  *(v37 + 160) = v45;
  *(v37 + 168) = v46;
  v38 = *(v2 + 153);
  *(v37 + 172) = *(v2 + 39);
  *(v37 + 169) = v38;
  *(v37 + 176) = v43;
  *(v37 + 184) = v44;
  v39 = *(v2 + 169);
  *(v37 + 188) = *(v2 + 43);
  *(v37 + 185) = v39;
  *(v37 + 192) = v41;
  *(v37 + 200) = v42;
  OUTLINED_FUNCTION_90_3();
  swift_willThrow();
}

void sub_1934A34B8()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, 0x41uLL);
  v9 = v1 == 0x7465737361 && v0 == 0xE500000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v33[1] = __dst[1];
      v33[2] = __dst[2];
      v33[3] = __dst[3];
      OUTLINED_FUNCTION_52_2(v3, &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion, &off_1F07BE068, v4, v5, v6, v7, v8, __dst[0]);
      sub_193494798(v10, v11, v12);
      return;
    }

    goto LABEL_14;
  }

  v13 = OUTLINED_FUNCTION_21_8();
  v21 = v1 == v13 && v0 == v20;
  if (v21 || (OUTLINED_FUNCTION_0_14(), v13 = sub_19393CA30(), (v13 & 1) != 0))
  {
    if (__dst[5])
    {
LABEL_14:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v22 = __dst[4];
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_88_2();
  v25 = v9 && v0 == v24;
  if (v25 || (OUTLINED_FUNCTION_0_14(), v13 = sub_19393CA30(), (v13 & 1) != 0))
  {
    if (__dst[7])
    {
      goto LABEL_14;
    }

    v22 = __dst[6];
LABEL_16:
    v33[0] = v22;
    v23 = MEMORY[0x1E69E76D8];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v13, v23, v14, v15, v16, v17, v18, v19, v33[0]);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_87_1();
  v27 = v9 && v0 == v26;
  if (v27 || (OUTLINED_FUNCTION_0_14(), v13 = sub_19393CA30(), (v13 & 1) != 0))
  {
    if (__dst[8])
    {
      goto LABEL_14;
    }

    LODWORD(v33[0]) = HIDWORD(__dst[7]);
    v23 = MEMORY[0x1E69E6448];
    goto LABEL_17;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v28, v29);
  *(v30 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo;
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_28_3(v31);
  memcpy(v32, __dst, 0x41uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A8404(__dst, v33);
}

void sub_1934A369C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_70_2();
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  v10 = a1 == v5 && v6 == 0xE600000000000000;
  if (v10 || (v11 = v6, v33 = v2[2], v12 = *(v2 + 24), v30 = v2[4], v31 = *(v2 + 40), v32 = *(v2 + 41), v25 = v2[6], v26 = v2[7], v27 = v2[8], v28 = *(v2 + 72), v29 = *(v2 + 73), (OUTLINED_FUNCTION_59_0(v5, 0xE600000000000000) & 1) != 0))
  {
    if (v9)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_15_18();
  v15 = v10 && v11 == v14;
  if (v15 || (OUTLINED_FUNCTION_59_0(v13, v14) & 1) != 0)
  {
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v16 = OUTLINED_FUNCTION_71_3();
  v17 = a1 == v16 && v11 == 0xE600000000000000;
  if (v17 || (OUTLINED_FUNCTION_59_0(v16, 0xE600000000000000) & 1) != 0)
  {
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v18 = a1 == 0xD000000000000013 && 0x8000000193A14C10 == v11;
  if (v18 || (v19 = OUTLINED_FUNCTION_66_3(), (OUTLINED_FUNCTION_59_0(v19, v20) & 1) != 0))
  {
    if (v29)
    {
      goto LABEL_7;
    }

    sub_193494798(&type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.ANEHintClientMetric, &off_1F07BE118, a2);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    OUTLINED_FUNCTION_106_0();
    *v21 = a1;
    v21[1] = v11;
    v21[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire;
    v22 = swift_allocObject();
    a2[2] = v22;
    *(v22 + 16) = v7;
    *(v22 + 24) = v8;
    *(v22 + 25) = v9;
    v23 = OUTLINED_FUNCTION_39_9(v22);
    *(v23 + 32) = v33;
    *(v23 + 40) = v12;
    v24 = OUTLINED_FUNCTION_34_3(v23);
    *(v24 + 48) = v30;
    *(v24 + 56) = v31;
    *(v24 + 57) = v32;
    *(v24 + 62) = *(v2 + 23);
    *(v24 + 58) = *(v2 + 42);
    *(v24 + 64) = v25;
    *(v24 + 72) = v26;
    *(v24 + 80) = v27;
    *(v24 + 88) = v28;
    *(v24 + 89) = v29;
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }
}

void sub_1934A3A70()
{
  OUTLINED_FUNCTION_57_0();
  v3 = OUTLINED_FUNCTION_70_2();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = v2 == v3 && v4 == 0xE600000000000000;
  if (v8 || (v9 = v4, v23 = v0[2], v10 = *(v0 + 24), v20 = v0[4], v21 = *(v0 + 40), v22 = *(v0 + 41), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_18();
  v12 = v8 && v9 == v11;
  if (v12 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = v2 == OUTLINED_FUNCTION_71_3() && v9 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v14 = swift_allocError();
  OUTLINED_FUNCTION_73_1(v14, v15);
  *(v16 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease;
  v17 = swift_allocObject();
  *(v1 + 16) = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v6;
  *(v17 + 25) = v7;
  v18 = OUTLINED_FUNCTION_39_9(v17);
  *(v18 + 32) = v23;
  *(v18 + 40) = v10;
  v19 = OUTLINED_FUNCTION_34_3(v18);
  *(v19 + 48) = v20;
  *(v19 + 56) = v21;
  *(v19 + 57) = v22;
  OUTLINED_FUNCTION_90_3();
  swift_willThrow();
}

void sub_1934A3C58()
{
  OUTLINED_FUNCTION_57_0();
  v3 = OUTLINED_FUNCTION_71_3();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = v2 == v3 && v4 == 0xE600000000000000;
  if (v8 || (v9 = v4, v38 = v0[2], v39 = *(v0 + 24), v40 = *(v0 + 25), v35 = v0[4], v36 = *(v0 + 40), v37 = *(v0 + 41), v32 = v0[6], v33 = *(v0 + 56), v34 = *(v0 + 57), v30 = v0[8], v31 = *(v0 + 72), v24 = v0[10], v25 = v0[11], v26 = v0[12], v27 = v0[13], v28 = *(v0 + 112), v29 = *(v0 + 113), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  v10 = v2 == OUTLINED_FUNCTION_70_2() && v9 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v40)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_117_3();
  v12 = v2 == OUTLINED_FUNCTION_99_2() && v9 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_1(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v37)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = v2 == 0x65746174536F74 && v9 == 0xE700000000000000;
  if (v13 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_18();
  v15 = v8 && v9 == v14;
  if (v15 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v16 = v2 == 0xD000000000000010 && 0x8000000193A14C30 == v9;
  if (v16 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v29)
    {
      goto LABEL_7;
    }

    sub_193494798(&type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo, &off_1F07BE148, v1);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_73_1(v17, v18);
    *(v19 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition;
    v20 = swift_allocObject();
    v1[2] = v20;
    *(v20 + 16) = v5;
    *(v20 + 24) = v6;
    *(v20 + 25) = v7;
    v21 = OUTLINED_FUNCTION_39_9(v20);
    *(v21 + 32) = v38;
    *(v21 + 40) = v39;
    *(v21 + 41) = v40;
    *(v21 + 46) = *(v0 + 15);
    *(v21 + 42) = *(v0 + 26);
    *(v21 + 48) = v35;
    *(v21 + 56) = v36;
    *(v21 + 57) = v37;
    v22 = *(v0 + 42);
    *(v21 + 62) = *(v0 + 23);
    *(v21 + 58) = v22;
    *(v21 + 64) = v32;
    *(v21 + 72) = v33;
    *(v21 + 73) = v34;
    *(v21 + 74) = *(v0 + 58);
    *(v21 + 78) = *(v0 + 31);
    *(v21 + 80) = v30;
    v23 = OUTLINED_FUNCTION_81_1(v21, v31);
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    *(v23 + 112) = v26;
    *(v23 + 120) = v27;
    *(v23 + 128) = v28;
    *(v23 + 129) = v29;
    OUTLINED_FUNCTION_90_3();
    swift_willThrow();
  }
}

void sub_1934A4028()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_8();
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = v2 == v5 && v6 == v7;
  if (!v10)
  {
    v11 = v6;
    v12 = v0[2];
    v13 = *(v0 + 24);
    v21 = *(v0 + 7);
    v14 = *(v0 + 32);
    if ((OUTLINED_FUNCTION_31_9(v5, 0xEA00000000007365) & 1) == 0)
    {
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_88_2();
      v16 = v10 && v11 == v15;
      if (v16 || (OUTLINED_FUNCTION_31_9(v12, v15) & 1) != 0)
      {
        if (v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_87_1();
        v18 = v10 && v11 == v17;
        if (!v18 && (OUTLINED_FUNCTION_31_9(v12, v17) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          OUTLINED_FUNCTION_106_0();
          *v19 = v2;
          v19[1] = v11;
          v19[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo;
          v20 = swift_allocObject();
          *(v4 + 16) = v20;
          *(v20 + 16) = v8;
          *(v20 + 24) = v9;
          *(v20 + 32) = v12;
          *(v20 + 40) = v13;
          *(v20 + 44) = v21;
          *(v20 + 48) = v14;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }

        if (v14)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1934A41BC(uint64_t a1)
{
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_102_3();
  v39 = *(v1 + 48);
  v6 = a1 == v5 && v3 == v4;
  if (v6 || (v7 = v3, OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v36))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_46_1();
    v14 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator;
    v15 = &off_1F07BE168;
    goto LABEL_9;
  }

  v19 = a1 == 0x656D6F6374756FLL && v7 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v37))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_46_1();
    v14 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome;
    v15 = &off_1F07BE178;
    goto LABEL_9;
  }

  v20 = a1 == 0x6F697463656A6572 && v7 == 0xEF6E6F736165526ELL;
  if (v20 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v38))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_46_1();
    v14 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason;
    v15 = &off_1F07BE188;
LABEL_9:
    OUTLINED_FUNCTION_77_2(v8, v14, v15, v9, v10, v11, v12, v13, v34, v35[0]);
    sub_193494798(v16, v17, v18);
    return;
  }

  v21 = a1 == 0x7341797465666173 && v7 == 0xEC00000073746573;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADB0, &qword_1939518A0);
    OUTLINED_FUNCTION_77_2(v22, v22, v23, v24, v25, v26, v27, v28, v34, v39);
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v29, v30);
    *(v31 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication;
    OUTLINED_FUNCTION_98_2();
    v32 = swift_allocObject();
    *(v1 + 16) = v32;
    *(v32 + 64) = v39;
    v33 = v38;
    *(v32 + 32) = v37;
    *(v32 + 48) = v33;
    *(v32 + 16) = v36;
    OUTLINED_FUNCTION_26_0();

    sub_1934A8460(&v36, v35);
  }
}

void sub_1934A4410()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_41_6();
  v5 = v1 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_55_4(v3, v4) & 1) != 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v6, v7);
    OUTLINED_FUNCTION_16_8(v8, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator);
  }

  OUTLINED_FUNCTION_93_1();
}

void sub_1934A44DC()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_41_6();
  v5 = v1 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_55_4(v3, v4) & 1) != 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v6, v7);
    OUTLINED_FUNCTION_16_8(v8, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome);
  }

  OUTLINED_FUNCTION_93_1();
}

void sub_1934A45B4()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_22_4();
  v3 = v3 && v2 == v0;
  if (v3 || (v4 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_55_4(v4, v5) & 1) != 0))
  {
    if (v1)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v6, v7);
    OUTLINED_FUNCTION_16_8(v8, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason);
  }

  OUTLINED_FUNCTION_93_1();
}

void sub_1934A4688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, 0x142uLL);
  OUTLINED_FUNCTION_38();
  v9 = a1 == 0xD000000000000012 && v8 == a2;
  if (v9 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[1])
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v10 = __dst[0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_117_3();
  v12 = a1 == 0x7461526E656B6F74 && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_1(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[3])
    {
      goto LABEL_7;
    }

    v10 = __dst[2];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v14 = a1 == 0xD000000000000016 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[5])
    {
      goto LABEL_7;
    }

    v10 = __dst[4];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v16 = a1 == 0xD000000000000013 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[7])
    {
      goto LABEL_7;
    }

    v10 = __dst[6];
LABEL_9:
    __src[0] = v10;
LABEL_10:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v18 = a1 == 0xD000000000000011 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[9])
    {
      goto LABEL_7;
    }

    v19 = __dst[8];
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_38();
  v21 = a1 == 0xD000000000000010 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[11])
    {
      goto LABEL_7;
    }

    v19 = __dst[10];
LABEL_39:
    __src[0] = v19;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v23 = a1 == 0xD000000000000018 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    memcpy(__src, (v4 + 96), 0x90uLL);
    if (sub_1934A8518(__src) == 1)
    {
      goto LABEL_7;
    }

    memcpy(v31, __src, sizeof(v31));
    v24 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo;
    v25 = &off_1F07BE1A8;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v27 = a1 == 0xD00000000000001ALL && v26 == a2;
  if (v27 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[40] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    memcpy(__src, (v4 + 240), 0x51uLL);
    v24 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics;
    v25 = &off_1F07BE1C8;
LABEL_54:
    sub_193494798(v24, v25, a3);
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  *v28 = a1;
  v28[1] = a2;
  v28[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics;
  v29 = swift_allocObject();
  v30 = OUTLINED_FUNCTION_28_3(v29);
  memcpy(v30, __dst, 0x142uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A84BC(__dst, __src);
}

void sub_1934A49D0()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v9 = v1 == 0x65646F4D65736162 && v0 == 0xE90000000000006CLL;
  if (v9 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[0] + 1) == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v25[0] = __dst[0];
    v10 = __dst[1];
    goto LABEL_9;
  }

  v3 = 0x72657470616461;
  v14 = v1 == 0x72657470616461 && v0 == 0xE700000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[2] + 1) == 1)
    {
      goto LABEL_7;
    }

    v25[0] = __dst[2];
    v10 = __dst[3];
    goto LABEL_9;
  }

  v3 = 0x646F4D7466617264;
  v15 = v1 == 0x646F4D7466617264 && v0 == 0xEA00000000006C65;
  if (v15 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[4] + 1) == 1)
    {
      goto LABEL_7;
    }

    v25[0] = __dst[4];
    v10 = __dst[5];
    goto LABEL_9;
  }

  v3 = 0x657A696E656B6F74;
  v16 = v1 == 0x657A696E656B6F74 && v0 == 0xE900000000000072;
  if (v16 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[6] + 1) == 1)
    {
      goto LABEL_7;
    }

    v25[0] = __dst[6];
    v10 = __dst[7];
LABEL_9:
    v25[1] = v10;
    OUTLINED_FUNCTION_52_2(v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo, &off_1F07BE1B8, v4, v5, v6, v7, v8, *&v25[0]);
    sub_193494798(v11, v12, v13);
    return;
  }

  v18 = 0x56736F64756F6C63;
  v19 = v1 == 0x56736F64756F6C63 && v0 == 0xEE006E6F69737265;
  if (v19 || (OUTLINED_FUNCTION_0_14(), v18 = sub_19393CA30(), (v18 & 1) != 0))
  {
    if (!*(&__dst[8] + 1))
    {
      goto LABEL_7;
    }

    *(&v25[0] + 1) = *(&__dst[8] + 1);
    OUTLINED_FUNCTION_52_2(v18, MEMORY[0x1E69E6158], v17, v4, v5, v6, v7, v8, *&__dst[8]);
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v20, v21);
    *(v22 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo;
    v23 = swift_allocObject();
    v24 = OUTLINED_FUNCTION_28_3(v23);
    memcpy(v24, __dst, 0x90uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1934A853C(__dst, v25);
  }
}

void sub_1934A4DC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_57_0();
  v6 = *v2;
  v7 = *(v2 + 4);
  OUTLINED_FUNCTION_38();
  v9 = v4 == 0xD000000000000021 && v8 == a2;
  if (v9 || (v10 = *(v2 + 12), v40 = *(v2 + 20), v41 = v2[2], v38 = *(v2 + 28), v39 = v2[4], v36 = *(v2 + 36), v37 = v2[6], v33 = *(v2 + 5), v34 = *(v2 + 48), v35 = v2[8], v31 = *(v2 + 7), v32 = *(v2 + 64), v29 = *(v2 + 9), v30 = *(v2 + 80), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v12 = v4 == 0xD00000000000001CLL && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v14 = v4 == 0xD00000000000001DLL && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v40)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v16 = v4 == 0xD000000000000015 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v38)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v18 = v4 == 0xD000000000000016 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v36)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v20 = v4 == 0xD000000000000025 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v22 = v4 == 0xD000000000000026 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_58_3();
  v24 = v9 && a2 == v23;
  if (v24 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v30)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v25 = swift_allocError();
  OUTLINED_FUNCTION_73_1(v25, v26);
  *(v27 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics;
  v28 = swift_allocObject();
  *(v3 + 16) = v28;
  *(v28 + 16) = v6;
  *(v28 + 20) = v7;
  *(v28 + 23) = *(v2 + 7);
  *(v28 + 21) = *(v2 + 5);
  *(v28 + 24) = v41;
  *(v28 + 28) = v10;
  *(v28 + 31) = *(v2 + 15);
  *(v28 + 29) = *(v2 + 13);
  *(v28 + 32) = v39;
  *(v28 + 36) = v40;
  *(v28 + 39) = *(v2 + 23);
  *(v28 + 37) = *(v2 + 21);
  *(v28 + 40) = v37;
  *(v28 + 44) = v38;
  *(v28 + 45) = *(v2 + 29);
  *(v28 + 47) = *(v2 + 31);
  *(v28 + 48) = v35;
  *(v28 + 52) = v36;
  *(v28 + 53) = *(v2 + 37);
  *(v28 + 55) = *(v2 + 39);
  *(v28 + 56) = v33;
  *(v28 + 64) = v34;
  *(v28 + 65) = *(v2 + 49);
  *(v28 + 68) = v2[13];
  *(v28 + 72) = v31;
  *(v28 + 80) = v32;
  *(v28 + 84) = v2[17];
  *(v28 + 81) = *(v2 + 65);
  *(v28 + 88) = v29;
  *(v28 + 96) = v30;
  OUTLINED_FUNCTION_90_3();
  swift_willThrow();
}

void sub_1934A51AC()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x6AuLL);
  OUTLINED_FUNCTION_38();
  v4 = v1 == 0xD000000000000010 && v3 == v0;
  if (v4 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v14 = v1 == 0xD00000000000001FLL && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v34[0] = __dst[2];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v12 = v5;
LABEL_15:
    OUTLINED_FUNCTION_52_2(v5, v12, v6, v7, v8, v9, v10, v11, v34[0]);
    sub_1934948FC();
    return;
  }

  v5 = 0x666C616865426E6FLL;
  v15 = v1 == 0x666C616865426E6FLL && v0 == 0xED0000444950664FLL;
  if (v15 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    if (__dst[4])
    {
      goto LABEL_7;
    }

    v16 = __dst[3];
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v5 = 0xD00000000000001ALL;
  v18 = v1 == 0xD00000000000001ALL && v17 == v0;
  if (v18 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    v19 = __dst[6];
    if (!__dst[6])
    {
      goto LABEL_7;
    }

    v20 = __dst[5];
    goto LABEL_31;
  }

  v5 = OUTLINED_FUNCTION_50_5();
  v22 = v4 && v0 == v21;
  if (v22 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    if (__dst[8])
    {
      goto LABEL_7;
    }

    v16 = __dst[7];
LABEL_23:
    v34[0] = v16;
    v12 = MEMORY[0x1E69E7360];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v5 = 0xD000000000000019;
  v24 = v1 == 0xD000000000000019 && v23 == v0;
  if (v24 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    v19 = __dst[10];
    if (!__dst[10])
    {
      goto LABEL_7;
    }

    v20 = __dst[9];
LABEL_31:
    v34[0] = v20;
    v34[1] = v19;
    v12 = MEMORY[0x1E69E6158];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v5 = 0xD000000000000015;
  v26 = v1 == 0xD000000000000015 && v25 == v0;
  if (v26 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    if (LOBYTE(__dst[11]) == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v34[0]) = __dst[11] & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v28 = v1 == 0xD000000000000012 && v27 == v0;
  if (v28 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[13] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult;
    goto LABEL_15;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v29 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v29, v30);
  *(v31 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent;
  v32 = swift_allocObject();
  v33 = OUTLINED_FUNCTION_28_3(v32);
  memcpy(v33, __dst, 0x6AuLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A85D4(__dst, v34);
}

void sub_1934A54A8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x189uLL);
  v3 = v1 == 0x6E654C7475706E69 && v0 == 0xEB00000000687467;
  if (!v3)
  {
    OUTLINED_FUNCTION_0_14();
    if ((sub_19393CA30() & 1) == 0)
    {
      OUTLINED_FUNCTION_79_5(0x6B6F5478616DLL);
      v5 = v3 && v0 == 0xEE006874676E654CLL;
      if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[3])
        {
          goto LABEL_7;
        }

        v4 = __dst[2];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v7 = v1 == 0xD000000000000015 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[5])
        {
          goto LABEL_7;
        }

        v4 = __dst[4];
        goto LABEL_9;
      }

      v8 = v1 == 0x654C74757074756FLL && v0 == 0xEC0000006874676ELL;
      if (v8 || (OUTLINED_FUNCTION_74_2(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[7])
        {
          goto LABEL_7;
        }

        v4 = __dst[6];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v10 = v1 == 0xD000000000000010 && v9 == v0;
      if (v10 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[9])
        {
          goto LABEL_7;
        }

        v4 = __dst[8];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v12 = v1 == 0xD00000000000001DLL && v11 == v0;
      if (v12 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[11])
        {
          goto LABEL_7;
        }

        v4 = __dst[10];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v14 = v1 == 0xD000000000000010 && v13 == v0;
      if (v14 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE1(__dst[11]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v17 = v1 == 0xD000000000000011 && v16 == v0;
      if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[13])
        {
          goto LABEL_7;
        }

        v4 = __dst[12];
        goto LABEL_9;
      }

      v18 = v1 == 0x73656C797473 && v0 == 0xE600000000000000;
      if (v18 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v76[0] = __dst[14];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADD0, &qword_1939518C0);
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_38();
      v20 = v1 == 0xD000000000000010 && v19 == v0;
      if (v20 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = LOBYTE(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v22 = v1 == 0xD000000000000012 && v21 == v0;
      if (v22 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE1(__dst[15]);
        goto LABEL_53;
      }

      v23 = v1 == 0x537475706E497369 && v0 == 0xEB00000000656661;
      if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE2(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_84_1();
      v25 = v1 == 0x72616D6D75537369 && v0 == v24;
      if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE3(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v27 = v1 == 0xD000000000000010 && v26 == v0;
      if (v27 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE4(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v29 = v1 == 0xD00000000000001BLL && v28 == v0;
      if (v29 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE5(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v31 = v1 == 0xD000000000000011 && v30 == v0;
      if (v31 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE6(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v33 = v1 == 0xD000000000000014 && v32 == v0;
      if (v33 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[17])
        {
          goto LABEL_7;
        }

        v34 = __dst[16];
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v36 = v1 == 0xD000000000000018 && v35 == v0;
        if (v36 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (__dst[19])
          {
            goto LABEL_7;
          }

          v34 = __dst[18];
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v38 = v1 == 0xD000000000000010 && v37 == v0;
          if (v38 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (__dst[21])
            {
              goto LABEL_7;
            }

            v34 = __dst[20];
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v40 = v1 == 0xD000000000000015 && v39 == v0;
            if (v40 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              if (__dst[23])
              {
                goto LABEL_7;
              }

              v34 = __dst[22];
            }

            else
            {
              OUTLINED_FUNCTION_38();
              if (v1 != 0xD000000000000027 || v41 != v0)
              {
                OUTLINED_FUNCTION_0_14();
                if ((sub_19393CA30() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  v44 = v1 == 0xD000000000000018 && v43 == v0;
                  if (v44 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    v15 = BYTE1(__dst[25]);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v46 = v1 == 0xD000000000000012 && v45 == v0;
                    if (v46 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      v15 = BYTE2(__dst[25]);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_103_3();
                      v48 = v1 == 0x7361487475706E69 && v0 == v47;
                      if (v48 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        v15 = BYTE3(__dst[25]);
                      }

                      else
                      {
                        v49 = v1 == 0x7361487475706E69 && v0 == 0xEB000000004C5255;
                        if (v49 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          v15 = BYTE4(__dst[25]);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_101_3();
                          v51 = v1 == 0x7361487475706E69 && v0 == v50;
                          if (v51 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                          {
                            v15 = BYTE5(__dst[25]);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_80_4();
                            v52 = v3 && v0 == 0xEA00000000006874;
                            if (v52 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[27])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[26];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_79_5(0x4C656C746974);
                            v53 = v3 && v0 == 0xEB00000000687467;
                            if (v53 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[29])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[28];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_86_3();
                            v54 = v3 && v0 == 0xEE006874676E654CLL;
                            if (v54 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[31])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[30];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_32_9();
                            v56 = v3 && v0 == v55;
                            if (v56 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[33])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[32];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_78_4();
                            v57 = v3 && v0 == 0xEC0000006874676ELL;
                            if (v57 || (OUTLINED_FUNCTION_74_2(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[35])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[34];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_38();
                            v59 = v1 == 0xD000000000000010 && v58 == v0;
                            if (v59 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[37])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[36];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_38();
                            v61 = v1 == 0xD000000000000011 && v60 == v0;
                            if (v61 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[39])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[38];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_38();
                            v63 = v1 == 0xD000000000000010 && v62 == v0;
                            if (v63 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (!__dst[41])
                              {
                                goto LABEL_7;
                              }

                              v76[0] = __dst[40];
                              v76[1] = __dst[41];
                              goto LABEL_10;
                            }

                            v64 = v1 == 0x6B6E7568436D756ELL && v0 == 0xE900000000000073;
                            if (v64 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[43])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[42];
                              goto LABEL_9;
                            }

                            v65 = v1 == 0x69727465526D756ELL && v0 == 0xEA00000000007365;
                            if (v65 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[45])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[44];
                              goto LABEL_9;
                            }

                            v66 = v1 == 0x6143534D476D756ELL && v0 == 0xEB00000000736C6CLL;
                            if (v66 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[47])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[46];
                              goto LABEL_9;
                            }

                            v67 = v1 == 0x6767697254636366 && v0 == 0xEC00000064657265;
                            if (v67 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              v15 = BYTE1(__dst[47]);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              if (v1 != 0xD000000000000019 || v68 != v0)
                              {
                                OUTLINED_FUNCTION_0_14();
                                if ((sub_19393CA30() & 1) == 0)
                                {
                                  if (v1 != 0x7079546C65646F6DLL || v0 != 0xE900000000000065)
                                  {
                                    OUTLINED_FUNCTION_59_1();
                                    OUTLINED_FUNCTION_0_14();
                                    if ((sub_19393CA30() & 1) == 0)
                                    {
                                      sub_19349AB64();
                                      OUTLINED_FUNCTION_11();
                                      v71 = swift_allocError();
                                      OUTLINED_FUNCTION_9_3(v71, v72);
                                      *(v73 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent;
                                      v74 = swift_allocObject();
                                      v75 = OUTLINED_FUNCTION_28_3(v74);
                                      memcpy(v75, __dst, 0x189uLL);
                                      OUTLINED_FUNCTION_26_0();

                                      sub_1934A8630(__dst, v76);
                                      goto LABEL_11;
                                    }
                                  }

                                  if (__dst[49])
                                  {
                                    goto LABEL_7;
                                  }

                                  v4 = __dst[48];
                                  goto LABEL_9;
                                }
                              }

                              v15 = BYTE2(__dst[47]);
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_53:
                  if (v15 == 2)
                  {
                    goto LABEL_7;
                  }

                  LOBYTE(v76[0]) = v15 & 1;
LABEL_10:
                  sub_1934948FC();
                  goto LABEL_11;
                }
              }

              if (__dst[25])
              {
                goto LABEL_7;
              }

              v34 = __dst[24];
            }
          }
        }
      }

      v76[0] = v34;
      goto LABEL_10;
    }
  }

  if ((__dst[1] & 1) == 0)
  {
    v4 = __dst[0];
LABEL_9:
    v76[0] = v4;
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_36_4();
LABEL_11:
  OUTLINED_FUNCTION_27();
}